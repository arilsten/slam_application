/************************************************************************/
// File:            SensorTowerTask.c                                   //
// Author:																//
// Purpose:                                                             //
//                                                                      //
/************************************************************************/

#include "defines.h"
#include "freeRTOS.h"
#include "ir.h"
#include "math.h"
#include "nrf_log.h"
#include "queue.h"
#include "semphr.h"
#include "server_communication.h"
#include "servo.h"
#include "timers.h"
#include "i2c.h"
#include "functions.h"
#include "SensorTowerTask.h"
#include "globals.h"
#include <stdlib.h>

int newMsgCounter = 0;
int time = 0;

void vMainSensorTowerTask(void *pvParameters) {
    int count = 0;
    bool newServer = false;          // Changes between old and new message-style

    /* Task init */
    float thetahat = 0;
    int16_t xhat = 0;
    int16_t yhat = 0;
    uint8_t servoDirection = moveCounterClockwise;
    uint8_t servoStep = 0;
    uint8_t servoResolution = 1;                    //Is servoResolution used to turn the servoangle on or to 0? Look like it
    uint8_t robotMovement = moveStop;
    uint8_t idleCounter = 0;
    int16_t previous_left = 0;
    int16_t previous_right = 0;

    int16_t waypoint[2] = {0};
    uint8_t msgType;
	
    // Initialize the xLastWakeTime variable with the current time.
    TickType_t xLastWakeTime;

    uint8_t incr = 0;
    while (true) {
        if ((gHandshook == true) && (gPaused == false)) {
            // xLastWakeTime variable with the current time.
            xLastWakeTime = xTaskGetTickCount();
            // Set scanning resolution depending on which movement the robot is executing.
            if (xQueueReceive(scanStatusQ, &robotMovement, 150) == pdTRUE) {
                // Set servo step length according to movement,
                // Note that the iterations are skipped while robot is rotating (see further downbelow)
                switch (robotMovement) {
                case moveStop:
                    servoStep *= servoResolution;
                    servoResolution = 1;
                    idleCounter = 1;
                    break;
                case moveForward:
                case moveBackward:
                    servoResolution = 5;
                    servoStep /= servoResolution;      
                    idleCounter = 0;
                    break;
                case moveClockwise:
                case moveCounterClockwise:
                    // Iterations are frozen while rotating, see further down
                    idleCounter = 0;
                    break;
                default:
                    idleCounter = 0;
                    break;
                }
            }
            vServo_setAngle(servoStep * servoResolution);
            vTaskDelayUntil(&xLastWakeTime, 200); // Wait total of 200 ms for servo to reach set point
            taskYIELD();

            uint8_t sensor[4];
            int16_t sensor16[4];
            if(USEBLUETOOTH){
                sensor[0] = (IrAnalogToMM(ir_read_blocking(distSensFwd), distSensFwd)/10);          //Saves distance in cm?
                sensor[1] = (IrAnalogToMM(ir_read_blocking(distSensLeft), distSensLeft)/10);
                sensor[2] = (IrAnalogToMM(ir_read_blocking(distSensRear), distSensRear)/10);
                sensor[3] = (IrAnalogToMM(ir_read_blocking(distSensRight), distSensRight)/10);
           
            }else{
                sensor16[0] = IrAnalogToMM(ir_read_blocking(distSensFwd), distSensFwd);              //Saves distance in mm?
                sensor16[1] = IrAnalogToMM(ir_read_blocking(distSensLeft), distSensLeft);
                sensor16[2] = IrAnalogToMM(ir_read_blocking(distSensRear), distSensRear);
                sensor16[3] = IrAnalogToMM(ir_read_blocking(distSensRight), distSensRight);
            }
         
            //NRF_LOG_INFO("F:%d L:%d R:%d B%d theta:%d", forwardSensor, leftSensor, rightSensor, rearSensor, (int)(thetahat * RAD2DEG));
            xSemaphoreTake(xPoseMutex, 40);
            thetahat = gTheta_hat;
            xhat = gX_hat;
            yhat = gY_hat;
            xSemaphoreGive(xPoseMutex);

            /*
            count++;
            if(count > 1000){
                NRF_LOG_INFO("S-gT: %i", (int)((gTheta_hat)*RAD2DEG));
                count = 0;
            }
            */
			
			

            // Experimental
            if ((idleCounter > 10) && (robotMovement == moveStop)) {
                // If the robot stands idle for 1 second, send 'status:idle' in case the server missed it.
                send_idle();
                idleCounter = 1; //TODO IDLE FUNCTION
            } else if ((idleCounter >= 1) && (robotMovement == moveStop)) {
                idleCounter++;
            }

            // Send updates to server
            // Java server
            if(USEBLUETOOTH){                                                                    // distSensFwd, distSensLeft, distSensRear, distSensRight
                send_update(xhat / 10, yhat / 10, thetahat * RAD2DEG, servoStep * servoResolution, sensor[0], sensor[1],  sensor[2], sensor[3]);
            }

            /*
            int oldtime = time;
            time = (xTaskGetTickCount()/1000);
            if (oldtime != time){
                NRF_LOG_INFO("Ticks: %i", (int)time);
            }
            */
            
            
            // C++ server
            if(!USEBLUETOOTH){
                int8_t* sendData;
                if(newServer){
                    
                    sendData = getPoseMessage(xhat, yhat, thetahat, servoStep, sensor16);
                    i2cSendNOADDR(I2C_DEVICE_DONGLE, sendData, 23);     // Message from Feb 2020 contains 23 bytes
                }else{
                    sendOldPoseMessage(xhat, yhat, thetahat, servoStep, sensor16);
                }
            
				
				
				/* THE RECEIVING AND SENDING OF MESSAGES SHOULD MAYBE BE MOVED TO ANOTHER TASK */
				
                newMsgCounter++;
                if(newMsgCounter > 20){
					/*
                    int16_t oldwaypoint[2];
					int16_t initialPos[2];
                    
                    uint8_t message[5];
                    i2cReciveNOADDR(I2C_DEVICE_DONGLE, &message, 5);
                    oldwaypoint[0] = waypoint[0];
					oldwaypoint[1] = waypoint[1];
					waypoint[0] = *((int16_t*)&message[1]);
					waypoint[1] = *((int16_t*)&message[3]);
					
					if(oldwaypoint[0] != waypoint[0] || oldwaypoint[1] != waypoint[1]){  //Setter nytt setpoint kun hvis de nye er ulike de gamle
						struct sCartesian Setpoint = {(waypoint[0])/10, (waypoint[1])/10}; // Gets waypoints in cm, converts to mm
						xQueueSend(poseControllerQ, &Setpoint, 100);
						NRF_LOG_INFO("SEND SETPOINT FROM");
					}
					*/
				
					
					
					
					/*
					switch(message[0]){
  
                        case INITIAL_POSE:
                            //Set robot-position to what server decides
							initialPos[0] = *((int16_t*)&message[1]);
							initialPos[1] = *((int16_t*)&message[3]);
							//FIXME: Set startposition

                        break;

                        case WAYPOINT:
                            //Set target-point to what server decides
							oldwaypoint[0] = waypoint[0];
							oldwaypoint[1] = waypoint[1];
							waypoint[0] = *((int16_t*)&message[1]);
							waypoint[1] = *((int16_t*)&message[3]);
							if(oldwaypoint[0] != waypoint[0] || oldwaypoint[1] != waypoint[1]){  //Setter nytt setpoint kun hvis de nye er ulike de gamle
								struct sCartesian Setpoint = {(waypoint[0])/10, (waypoint[1])/10}; // Gets waypoints in mm, converts to cm
								xQueueSend(poseControllerQ, &Setpoint, 100);
								NRF_LOG_INFO("SEND SETPOINT FROM");
							}	
							break;

                        default:
                            NRF_LOG_INFO("Got a message Im not programmed to execute...");

                    }*/

                
           

                    
                    newMsgCounter = 0;
                 }
            } //end if(!USEBLUETOOTH)
          

            
            // Low level anti collision

            /* NO ANTICOLLITION AT CURRENT TIME
            uint8_t objectX;
            if ((servoStep*servoResolution) <= 30) objectX = forwardSensor;    // * cos(servoStep*5);
            else if((servoStep*servoResolution) >= 60) objectX = rightSensor;  // * cos(270 + servoStep*5);
            else objectX = 0;
            

			
            if ((objectX > 0) && (objectX < 25)){
                // Stop controller
                struct sCartesian Setpoint = {xhat/10, yhat/10};
                display_text_on_line(5,"COLISION "); //FOR DEBUG
                xQueueSend(poseControllerQ, &Setpoint, 100);
            }
            */

            // Iterate in a increasing/decreasign manner and depending on the robots movement
            if ((servoStep * servoResolution <= 90) && (servoDirection == moveCounterClockwise) && (robotMovement < moveClockwise)) {
                servoStep++;
            } else if ((servoStep * servoResolution > 0) && (servoDirection == moveClockwise) && (robotMovement < moveClockwise)) {
                servoStep--;
            }

            if ((servoStep * servoResolution >= 90) && (servoDirection == moveCounterClockwise)) {
                servoDirection = moveClockwise;
            } else if ((servoStep * servoResolution <= 0) && (servoDirection == moveClockwise)) {
                servoDirection = moveCounterClockwise;
            }
        }

        else { // Disconnected or unconfirmed
            vServo_setAngle(0);
            // Reset servo incrementation
            servoDirection = moveCounterClockwise;
            servoStep = 0;
            idleCounter = 0;
            vTaskDelay(100);
        }
    } // While end
}