	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 1
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"EstimatorTask.c"
	.text
.Ltext0:
	.global	__aeabi_i2d
	.global	__aeabi_ddiv
	.global	__aeabi_d2f
	.global	__aeabi_f2d
	.global	__aeabi_dmul
	.global	__aeabi_dcmpgt
	.section	.rodata.vMainPoseEstimatorTask.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"cal F:%i S:%i\000"
	.section	.text.vMainPoseEstimatorTask,"ax",%progbits
	.align	1
	.global	vMainPoseEstimatorTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vMainPoseEstimatorTask, %function
vMainPoseEstimatorTask:
.LVL0:
.LFB212:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\software\\EstimatorTask.c"
	.loc 1 32 49 view -0
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 32 49 is_stmt 0 view .LVU1
	push	{r4, r5, r6, r7, lr}
.LCFI0:
	vpush.64	{d8, d9, d10, d11, d12}
.LCFI1:
	sub	sp, sp, #60
.LCFI2:
	.loc 1 33 5 is_stmt 1 view .LVU2
.LVL1:
	.loc 1 34 5 view .LVU3
	.loc 1 35 5 view .LVU4
	.loc 1 36 5 view .LVU5
	.loc 1 37 5 view .LVU6
	.loc 1 38 5 view .LVU7
	.loc 1 40 5 view .LVU8
	.loc 1 41 5 view .LVU9
	.loc 1 42 5 view .LVU10
	.loc 1 50 5 view .LVU11
	.loc 1 53 5 view .LVU12
	.loc 1 53 32 is_stmt 0 view .LVU13
	bl	xTaskGetTickCount
.LVL2:
	.loc 1 53 16 view .LVU14
	str	r0, [sp, #52]
	.loc 1 54 5 is_stmt 1 view .LVU15
.LVL3:
	.loc 1 55 5 view .LVU16
	.loc 1 56 5 view .LVU17
	movs	r1, #8
	movs	r0, #7
.LVL4:
	.loc 1 56 5 is_stmt 0 view .LVU18
	bl	kf_init
.LVL5:
	.loc 1 37 11 view .LVU19
	vldr.32	s21, .L22+32
	.loc 1 36 11 view .LVU20
	vmov.f32	s23, s21
	.loc 1 35 11 view .LVU21
	vmov.f32	s22, s21
	b	.L2
.LVL6:
.L19:
.LBB2:
	.loc 1 82 17 is_stmt 1 view .LVU22
	bl	IMU_read
.LVL7:
	.loc 1 83 17 view .LVU23
	.loc 1 83 24 is_stmt 0 view .LVU24
	bl	IMU_getGyro
.LVL8:
	ldr	r3, .L22+36
	vstr.32	s0, [r3]
	vstr.32	s1, [r3, #4]
	vstr.32	s2, [r3, #8]
	.loc 1 84 17 is_stmt 1 view .LVU25
	.loc 1 84 25 is_stmt 0 view .LVU26
	bl	IMU_getAccel
.LVL9:
	ldr	r3, .L22+40
	vstr.32	s2, [r3, #8]
	.loc 1 85 17 is_stmt 1 view .LVU27
	.loc 1 85 25 is_stmt 0 view .LVU28
	vsub.f32	s0, s0, s22
	vstr.32	s0, [r3]
	.loc 1 86 17 is_stmt 1 view .LVU29
	.loc 1 86 25 is_stmt 0 view .LVU30
	vsub.f32	s1, s1, s23
	vstr.32	s1, [r3, #4]
	.loc 1 87 17 is_stmt 1 view .LVU31
	.loc 1 87 24 is_stmt 0 view .LVU32
	bl	fIMU_readFloatGyroZ
.LVL10:
	.loc 1 87 22 view .LVU33
	vsub.f32	s15, s0, s21
	vmov	r5, s15
.LVL11:
	.loc 1 91 17 is_stmt 1 view .LVU34
	movs	r0, #10
	bl	vTaskDelay
.LVL12:
	b	.L4
.LVL13:
.L5:
	.loc 1 127 15 view .LVU35
	.loc 1 127 18 is_stmt 0 view .LVU36
	vsub.f32	s15, s15, s19
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL14:
	vmov	d0, r0, r1
	bl	fabs
.LVL15:
	vmov	r4, r5, d0
	.loc 1 127 39 view .LVU37
	ldr	r0, [sp, #44]	@ float
	bl	__aeabi_f2d
.LVL16:
	.loc 1 127 37 view .LVU38
	adr	r3, .L22
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL17:
	mov	r2, r0
	mov	r3, r1
	.loc 1 127 17 view .LVU39
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmpgt
.LVL18:
	cmp	r0, #0
	beq	.L17
	.loc 1 127 45 is_stmt 1 discriminator 1 view .LVU40
	vmov.f32	s0, #1.0e+0
	bl	kf_setEncoderVar
.LVL19:
.L6:
	.loc 1 136 11 view .LVU41
	add	r0, sp, #24
	bl	kf_step
.LVL20:
	.loc 1 137 11 view .LVU42
	.loc 1 137 22 is_stmt 0 view .LVU43
	bl	kalmanGetState
.LVL21:
	ldr	r4, .L22+44
	vstr.32	s0, [r4]
	vstr.32	s1, [r4, #4]
	mov	r0, r4
	adds	r0, r0, #8
	vstr.32	s2, [r0]
	.loc 1 173 9 is_stmt 1 view .LVU44
	bl	vFunc_Inf2pi
.LVL22:
	.loc 1 174 9 view .LVU45
	ldr	r5, .L22+48
.LVL23:
	.loc 1 174 9 is_stmt 0 view .LVU46
	movs	r1, #15
	ldr	r0, [r5]
	bl	xQueueSemaphoreTake
.LVL24:
	.loc 1 184 9 is_stmt 1 view .LVU47
	.loc 1 184 32 is_stmt 0 view .LVU48
	vldr.32	s15, [r4]
	.loc 1 184 34 view .LVU49
	vldr.32	s14, .L22+52
	vmul.f32	s15, s15, s14
	.loc 1 184 18 view .LVU50
	vcvt.s32.f32	s15, s15
	.loc 1 184 16 view .LVU51
	ldr	r3, .L22+56
	vmov	r2, s15	@ int
	strh	r2, [r3]	@ movhi
	.loc 1 185 9 is_stmt 1 view .LVU52
	.loc 1 185 32 is_stmt 0 view .LVU53
	vldr.32	s15, [r4, #4]
	.loc 1 185 34 view .LVU54
	vmul.f32	s15, s15, s14
	.loc 1 185 18 view .LVU55
	vcvt.s32.f32	s15, s15
	.loc 1 185 16 view .LVU56
	ldr	r3, .L22+60
	vmov	r2, s15	@ int
	strh	r2, [r3]	@ movhi
	.loc 1 186 9 is_stmt 1 view .LVU57
	.loc 1 186 15 is_stmt 0 view .LVU58
	ldr	r3, .L22+64
	vstr.32	s17, [r3]
	.loc 1 187 9 is_stmt 1 view .LVU59
	.loc 1 187 16 is_stmt 0 view .LVU60
	ldr	r3, .L22+68
	vstr.32	s16, [r3]
	.loc 1 188 9 is_stmt 1 view .LVU61
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, [r5]
	bl	xQueueGenericSend
.LVL25:
	.loc 1 196 9 view .LVU62
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, .L22+72
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL26:
.L2:
	.loc 1 196 9 is_stmt 0 view .LVU63
.LBE2:
	.loc 1 57 5 is_stmt 1 view .LVU64
	.loc 1 58 9 view .LVU65
	.loc 1 60 9 view .LVU66
	movs	r1, #40
	add	r0, sp, #52
	bl	vTaskDelayUntil
.LVL27:
	.loc 1 61 9 view .LVU67
	.loc 1 61 13 is_stmt 0 view .LVU68
	ldr	r3, .L22+76
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 61 12 view .LVU69
	cmp	r3, #0
	beq	.L3
.LBB3:
	.loc 1 62 13 is_stmt 1 view .LVU70
.LVL28:
	.loc 1 63 13 view .LVU71
	.loc 1 64 13 view .LVU72
	.loc 1 65 13 view .LVU73
	.loc 1 69 13 view .LVU74
	ldr	r4, .L22+80
	movs	r1, #15
	ldr	r0, [r4]
	bl	xQueueSemaphoreTake
.LVL29:
	.loc 1 70 13 view .LVU75
	.loc 1 70 28 is_stmt 0 view .LVU76
	ldr	r3, .L22+84
	ldrsh	r6, [r3]
.LVL30:
	.loc 1 71 13 is_stmt 1 view .LVU77
	.loc 1 71 29 is_stmt 0 view .LVU78
	ldr	r3, .L22+88
	ldrsh	r5, [r3]
.LVL31:
	.loc 1 72 13 is_stmt 1 view .LVU79
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, [r4]
	bl	xQueueGenericSend
.LVL32:
	.loc 1 74 13 view .LVU80
	.loc 1 74 50 is_stmt 0 view .LVU81
	movs	r4, #250
	.loc 1 74 57 view .LVU82
	mul	r0, r4, r6
	bl	__aeabi_i2d
.LVL33:
	movs	r2, #0
	ldr	r3, .L22+92
	bl	__aeabi_ddiv
.LVL34:
	.loc 1 74 19 view .LVU83
	bl	__aeabi_d2f
.LVL35:
	vmov	s17, r0
.LVL36:
	.loc 1 75 13 is_stmt 1 view .LVU84
	.loc 1 75 59 is_stmt 0 view .LVU85
	mul	r0, r4, r5
.LVL37:
	.loc 1 75 59 view .LVU86
	bl	__aeabi_i2d
.LVL38:
	movs	r2, #0
	ldr	r3, .L22+92
	bl	__aeabi_ddiv
.LVL39:
	.loc 1 75 19 view .LVU87
	bl	__aeabi_d2f
.LVL40:
	vmov	s16, r0
.LVL41:
	.loc 1 76 13 is_stmt 1 view .LVU88
	.loc 1 76 29 is_stmt 0 view .LVU89
	vadd.f32	s18, s17, s16
	.loc 1 76 20 view .LVU90
	vmov.f32	s15, #5.0e-1
	vmul.f32	s18, s18, s15
.LVL42:
	.loc 1 77 13 is_stmt 1 view .LVU91
	.loc 1 78 13 view .LVU92
	.loc 1 78 30 is_stmt 0 view .LVU93
	vsub.f32	s14, s16, s17
	.loc 1 78 20 view .LVU94
	vldr.32	s15, .L22+96
	vdiv.f32	s24, s14, s15
.LVL43:
	.loc 1 81 13 is_stmt 1 view .LVU95
	.loc 1 81 17 is_stmt 0 view .LVU96
	bl	IMU_newData
.LVL44:
	.loc 1 81 16 view .LVU97
	cmp	r0, #0
	bne	.L19
	.loc 1 95 22 view .LVU98
	movs	r5, #0
.LVL45:
.L4:
	.loc 1 101 11 is_stmt 1 view .LVU99
	.loc 1 101 28 is_stmt 0 view .LVU100
	ldr	r4, .L22+100
	ldr	r0, [r4]	@ float
	bl	__aeabi_f2d
.LVL46:
	vmov	d0, r0, r1
	bl	cos
.LVL47:
	vmov	r0, r1, d0
	.loc 1 101 17 view .LVU101
	bl	__aeabi_d2f
.LVL48:
	vmov	s20, r0
.LVL49:
	.loc 1 102 11 is_stmt 1 view .LVU102
	.loc 1 102 28 is_stmt 0 view .LVU103
	ldr	r0, [r4]	@ float
.LVL50:
	.loc 1 102 28 view .LVU104
	bl	__aeabi_f2d
.LVL51:
	vmov	d0, r0, r1
	bl	sin
.LVL52:
	vmov	r0, r1, d0
	.loc 1 102 17 view .LVU105
	bl	__aeabi_d2f
.LVL53:
	vmov	s19, r0
.LVL54:
	.loc 1 110 11 is_stmt 1 view .LVU106
	.loc 1 110 22 is_stmt 0 view .LVU107
	vmul.f32	s15, s18, s20
	vmov	r0, s15
.LVL55:
	.loc 1 110 22 view .LVU108
	bl	__aeabi_f2d
.LVL56:
	.loc 1 110 31 view .LVU109
	adr	r3, .L22+8
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL57:
	bl	__aeabi_d2f
.LVL58:
	.loc 1 110 15 view .LVU110
	str	r0, [sp, #24]	@ float
	.loc 1 111 11 is_stmt 1 view .LVU111
	.loc 1 111 21 is_stmt 0 view .LVU112
	ldr	r3, .L22+40
	vldr.32	s25, [r3]
	.loc 1 111 23 view .LVU113
	vmul.f32	s15, s25, s20
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL59:
	.loc 1 111 32 view .LVU114
	adr	r3, .L22+16
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL60:
	bl	__aeabi_d2f
.LVL61:
	.loc 1 111 15 view .LVU115
	str	r0, [sp, #28]	@ float
	.loc 1 113 11 is_stmt 1 view .LVU116
	.loc 1 113 22 is_stmt 0 view .LVU117
	vmul.f32	s15, s18, s19
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL62:
	.loc 1 113 31 view .LVU118
	adr	r3, .L22+8
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL63:
	bl	__aeabi_d2f
.LVL64:
	.loc 1 113 15 view .LVU119
	str	r0, [sp, #32]	@ float
	.loc 1 114 11 is_stmt 1 view .LVU120
	.loc 1 114 23 is_stmt 0 view .LVU121
	vmul.f32	s15, s25, s19
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL65:
	.loc 1 114 32 view .LVU122
	adr	r3, .L22+16
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL66:
	bl	__aeabi_d2f
.LVL67:
	.loc 1 114 15 view .LVU123
	str	r0, [sp, #36]	@ float
	.loc 1 116 11 is_stmt 1 view .LVU124
	.loc 1 116 15 is_stmt 0 view .LVU125
	vmov.f32	s19, #2.5e+1
.LVL68:
	.loc 1 116 15 view .LVU126
	vmul.f32	s19, s24, s19
	vstr.32	s19, [sp, #40]
	.loc 1 117 11 is_stmt 1 view .LVU127
	.loc 1 117 20 is_stmt 0 view .LVU128
	mov	r0, r5	@ float
	bl	__aeabi_f2d
.LVL69:
	adr	r3, .L22+24
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL70:
	.loc 1 117 20 view .LVU129
	movs	r2, #0
	ldr	r3, .L22+104
	bl	__aeabi_ddiv
.LVL71:
	bl	__aeabi_d2f
.LVL72:
	vmov	s15, r0
	.loc 1 117 15 view .LVU130
	str	r0, [sp, #44]	@ float
	.loc 1 118 11 is_stmt 1 view .LVU131
	.loc 1 118 15 is_stmt 0 view .LVU132
	movs	r3, #0
	str	r3, [sp, #48]	@ float
	.loc 1 120 11 is_stmt 1 view .LVU133
	.loc 1 120 13 is_stmt 0 view .LVU134
	vcmp.f32	s18, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L5
	.loc 1 122 15 is_stmt 1 view .LVU135
	.loc 1 122 19 is_stmt 0 view .LVU136
	str	r3, [sp, #28]	@ float
	.loc 1 123 15 is_stmt 1 view .LVU137
	.loc 1 123 19 is_stmt 0 view .LVU138
	str	r3, [sp, #36]	@ float
	.loc 1 124 15 is_stmt 1 view .LVU139
	.loc 1 124 39 is_stmt 0 view .LVU140
	vldr.32	s14, .L22+52
	vdiv.f32	s15, s25, s14
	.loc 1 124 28 view .LVU141
	vadd.f32	s22, s22, s15
.LVL73:
	.loc 1 124 28 view .LVU142
	b	.L6
.L17:
	.loc 1 128 21 is_stmt 1 view .LVU143
	vldr.32	s0, .L22+108
	bl	kf_setEncoderVar
.LVL74:
	b	.L6
.LVL75:
.L3:
	.loc 1 128 21 is_stmt 0 view .LVU144
.LBE3:
	.loc 1 199 4 is_stmt 1 view .LVU145
	.loc 1 199 8 is_stmt 0 view .LVU146
	ldr	r3, .L22+112
	ldrsb	r3, [r3]
	.loc 1 199 7 view .LVU147
	cmp	r3, #0
	beq	.L2
.LBB4:
	.loc 1 201 5 is_stmt 1 view .LVU148
	.loc 1 202 5 view .LVU149
	.loc 1 203 5 view .LVU150
.LVL76:
	.loc 1 204 5 view .LVU151
	.loc 1 205 5 view .LVU152
	.loc 1 206 5 view .LVU153
	.loc 1 207 5 view .LVU154
	.loc 1 208 5 view .LVU155
	.loc 1 210 5 view .LVU156
	movs	r0, #150
	bl	vTaskDelay
.LVL77:
	.loc 1 212 5 view .LVU157
	.loc 1 208 9 is_stmt 0 view .LVU158
	movs	r5, #0
	.loc 1 207 9 view .LVU159
	mov	r4, r5
	.loc 1 206 11 view .LVU160
	vldr.32	s16, .L22+32
	.loc 1 205 11 view .LVU161
	vmov.f32	s17, s16
	.loc 1 204 11 view .LVU162
	vmov.f32	s18, s16
	.loc 1 212 12 view .LVU163
	mov	r6, r5
	.loc 1 212 5 view .LVU164
	b	.L10
.LVL78:
.L21:
	.loc 1 212 31 is_stmt 1 discriminator 2 view .LVU165
	.loc 1 212 32 is_stmt 0 discriminator 2 view .LVU166
	adds	r6, r6, #1
.LVL79:
	.loc 1 212 32 discriminator 2 view .LVU167
	uxth	r6, r6
.LVL80:
.L10:
	.loc 1 212 17 is_stmt 1 discriminator 1 view .LVU168
	.loc 1 212 5 is_stmt 0 discriminator 1 view .LVU169
	cmp	r6, #300
	bhi	.L20
	.loc 1 213 6 is_stmt 1 view .LVU170
	bl	IMU_read
.LVL81:
	.loc 1 214 6 view .LVU171
	.loc 1 214 13 is_stmt 0 view .LVU172
	bl	IMU_getGyro
.LVL82:
	ldr	r7, .L22+36
	vstr.32	s0, [r7]
	vstr.32	s1, [r7, #4]
	vstr.32	s2, [r7, #8]
	.loc 1 215 6 is_stmt 1 view .LVU173
	.loc 1 215 14 is_stmt 0 view .LVU174
	bl	IMU_getAccel
.LVL83:
	ldr	r3, .L22+40
	vstr.32	s0, [r3]
	vstr.32	s1, [r3, #4]
	vstr.32	s2, [r3, #8]
	.loc 1 216 6 is_stmt 1 view .LVU175
	.loc 1 216 19 is_stmt 0 view .LVU176
	vldr.32	s15, [r7, #8]
	.loc 1 216 12 view .LVU177
	vadd.f32	s18, s18, s15
.LVL84:
	.loc 1 217 6 is_stmt 1 view .LVU178
	.loc 1 217 14 is_stmt 0 view .LVU179
	vadd.f32	s17, s17, s0
.LVL85:
	.loc 1 218 6 is_stmt 1 view .LVU180
	.loc 1 218 14 is_stmt 0 view .LVU181
	vadd.f32	s16, s16, s1
.LVL86:
	.loc 1 220 6 is_stmt 1 view .LVU182
	movs	r0, #40
	bl	vTaskDelay
.LVL87:
	.loc 1 221 6 view .LVU183
	mov	r3, r5
	mov	r2, r4
	ldr	r1, .L22+116
	add	r0, sp, #4
	bl	sprintf
.LVL88:
	.loc 1 222 6 view .LVU184
	add	r1, sp, #4
	movs	r0, #4
	bl	display_text_on_line
.LVL89:
	.loc 1 223 6 view .LVU185
	.loc 1 223 13 is_stmt 0 view .LVU186
	adds	r5, r5, #1
.LVL90:
	.loc 1 225 6 is_stmt 1 view .LVU187
.L11:
	.loc 1 225 12 view .LVU188
	.loc 1 225 14 is_stmt 0 view .LVU189
	bl	IMU_newData
.LVL91:
	.loc 1 225 12 view .LVU190
	cmp	r0, #0
	bne	.L21
	.loc 1 226 7 is_stmt 1 view .LVU191
	movs	r0, #20
	bl	vTaskDelay
.LVL92:
	.loc 1 227 7 view .LVU192
	.loc 1 227 12 is_stmt 0 view .LVU193
	adds	r4, r4, #1
.LVL93:
	.loc 1 228 7 is_stmt 1 view .LVU194
	mov	r3, r5
	mov	r2, r4
	ldr	r1, .L22+116
	add	r0, sp, #4
	bl	sprintf
.LVL94:
	.loc 1 229 7 view .LVU195
	add	r1, sp, #4
	movs	r0, #4
	bl	display_text_on_line
.LVL95:
	b	.L11
.L23:
	.align	3
.L22:
	.word	-1717986918
	.word	1070176665
	.word	-1717986918
	.word	1067030937
	.word	1202590843
	.word	1072724705
	.word	1413754136
	.word	1074340347
	.word	0
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	xPoseMutex
	.word	1148846080
	.word	gX_hat
	.word	gY_hat
	.word	gLeft
	.word	gRight
	.word	xControllerBSem
	.word	gHandshook
	.word	xTickMutex
	.word	gLeftWheelTicks
	.word	gRightWheelTicks
	.word	1084407808
	.word	1129775104
	.word	gTheta_hat
	.word	1080459264
	.word	1022739087
	.word	.LANCHOR3
	.word	.LC0
.L20:
	.loc 1 232 5 view .LVU196
	.loc 1 232 26 is_stmt 0 view .LVU197
	vmov	s15, r6	@ int
	vcvt.f32.u32	s15, s15
	.loc 1 232 16 view .LVU198
	vdiv.f32	s21, s18, s15
.LVL96:
	.loc 1 233 5 is_stmt 1 view .LVU199
	.loc 1 233 18 is_stmt 0 view .LVU200
	vdiv.f32	s22, s17, s15
.LVL97:
	.loc 1 234 5 is_stmt 1 view .LVU201
	.loc 1 234 18 is_stmt 0 view .LVU202
	vdiv.f32	s23, s16, s15
.LVL98:
	.loc 1 235 5 is_stmt 1 view .LVU203
	.loc 1 235 19 is_stmt 0 view .LVU204
	ldr	r3, .L24
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 237 5 is_stmt 1 view .LVU205
	.loc 1 237 8 is_stmt 0 view .LVU206
	ldr	r3, .L24+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 237 7 view .LVU207
	cmp	r3, #0
	bne	.L2
	.loc 1 238 6 is_stmt 1 view .LVU208
	.loc 1 238 17 is_stmt 0 view .LVU209
	ldr	r3, .L24+8
	movs	r2, #1
	strb	r2, [r3]
	b	.L2
.L25:
	.align	2
.L24:
	.word	.LANCHOR3
	.word	USEBLUETOOTH
	.word	gHandshook
.LBE4:
.LFE212:
	.size	vMainPoseEstimatorTask, .-vMainPoseEstimatorTask
	.global	kf_state
	.global	accel
	.global	gyro
	.global	gyroBiasGuard
	.section	.bss.accel,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	accel, %object
	.size	accel, 12
accel:
	.space	12
	.section	.bss.gyro,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	gyro, %object
	.size	gyro, 12
gyro:
	.space	12
	.section	.bss.kf_state,"aw",%nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	kf_state, %object
	.size	kf_state, 12
kf_state:
	.space	12
	.section	.data.gyroBiasGuard,"aw"
	.set	.LANCHOR3,. + 0
	.type	gyroBiasGuard, %object
	.size	gyroBiasGuard, 1
gyroBiasGuard:
	.byte	1
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.byte	0x4
	.4byte	.LCFI0-.LFB212
	.byte	0xe
	.uleb128 0x14
	.byte	0x84
	.uleb128 0x5
	.byte	0x85
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x87
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x3c
	.byte	0x5
	.uleb128 0x50
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x51
	.uleb128 0xe
	.byte	0x5
	.uleb128 0x52
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x53
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x54
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x55
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x56
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x57
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x58
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x59
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x78
	.align	2
.LEFDE0:
	.text
.Letext0:
	.file 2 "../../../../../../external/thedotfactory_fonts/nrf_font.h"
	.file 3 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
	.section	.debug_types,"G",%progbits,wt.6d34a0415199c3c2,comdat
	.4byte	0xab
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x6d
	.byte	0x34
	.byte	0xa0
	.byte	0x41
	.byte	0x51
	.byte	0x99
	.byte	0xc3
	.byte	0xc2
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0x2
	.byte	0x30
	.byte	0x9
	.4byte	0x75
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x2
	.byte	0x32
	.byte	0xd
	.4byte	0x75
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x33
	.byte	0xd
	.4byte	0x75
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x34
	.byte	0xd
	.4byte	0x75
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x35
	.byte	0xd
	.4byte	0x75
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x36
	.byte	0x1c
	.4byte	0x81
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x37
	.byte	0x15
	.4byte	0x87
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x8d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x94
	.uleb128 0x5
	.byte	0x4
	.4byte	0x99
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x7
	.4byte	0x9e
	.uleb128 0x7
	.4byte	0x75
	.uleb128 0x8
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2b
	.byte	0x2
	.byte	0x45
	.byte	0xc6
	.byte	0x59
	.byte	0x45
	.byte	0x56
	.byte	0x1c
	.byte	0x14
	.byte	0x2e
	.byte	0
	.section	.debug_types,"G",%progbits,wt.45c65945561c142e,comdat
	.4byte	0x64
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x45
	.byte	0xc6
	.byte	0x59
	.byte	0x45
	.byte	0x56
	.byte	0x1c
	.byte	0x14
	.byte	0x2e
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x2
	.byte	0x27
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x29
	.byte	0xd
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2a
	.byte	0xe
	.4byte	0x4d
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x59
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x60
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.byte	0
	.file 4 "../../../../../../components/libraries/gfx/nrf_lcd.h"
	.file 5 "../../../../../../components/libraries/util/sdk_errors.h"
	.section	.debug_types,"G",%progbits,wt.bfa29850fc615d03,comdat
	.4byte	0x15f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xbf
	.byte	0xa2
	.byte	0x98
	.byte	0x50
	.byte	0xfc
	.byte	0x61
	.byte	0x5d
	.byte	0x3
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x20
	.byte	0x4
	.byte	0x51
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x56
	.byte	0x13
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x5b
	.byte	0xd
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x64
	.byte	0xd
	.4byte	0x9b
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x6f
	.byte	0xd
	.4byte	0xa1
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x78
	.byte	0xd
	.4byte	0x95
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7f
	.byte	0xd
	.4byte	0xa7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x86
	.byte	0xd
	.4byte	0xad
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x8b
	.byte	0x10
	.4byte	0xb3
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd4
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf3
	.uleb128 0x5
	.byte	0x4
	.4byte	0xfe
	.uleb128 0x5
	.byte	0x4
	.4byte	0x109
	.uleb128 0x9
	.4byte	0x119
	.uleb128 0xa
	.uleb128 0xb
	.4byte	0xd4
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0xc
	.4byte	0x131
	.byte	0
	.uleb128 0xb
	.4byte	0xf3
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0xc
	.4byte	0x131
	.byte	0
	.uleb128 0xb
	.4byte	0xfe
	.uleb128 0xc
	.4byte	0x13d
	.byte	0
	.uleb128 0xb
	.4byte	0x109
	.uleb128 0xc
	.4byte	0x14d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x4a
	.byte	0x2
	.byte	0xa9
	.byte	0x11
	.byte	0x20
	.byte	0xd2
	.byte	0x41
	.byte	0xb4
	.byte	0x7d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x9e
	.byte	0x12
	.4byte	0x131
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x154
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x15b
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0x3f
	.byte	0x2
	.byte	0x95
	.byte	0xe6
	.byte	0x1d
	.byte	0x40
	.byte	0x34
	.byte	0x40
	.byte	0x28
	.byte	0x22
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.byte	0
	.file 6 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
	.section	.debug_types,"G",%progbits,wt.a91120d241b47d93,comdat
	.4byte	0x8b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xa9
	.byte	0x11
	.byte	0x20
	.byte	0xd2
	.byte	0x41
	.byte	0xb4
	.byte	0x7d
	.byte	0x93
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.byte	0x44
	.byte	0x9
	.4byte	0x5b
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x4
	.byte	0x46
	.byte	0x16
	.4byte	0x5b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x4
	.byte	0x47
	.byte	0xe
	.4byte	0x6b
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x4
	.byte	0x48
	.byte	0xe
	.4byte	0x6b
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x4
	.byte	0x49
	.byte	0x18
	.4byte	0x77
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x6
	.byte	0xb1
	.byte	0x3
	.byte	0xb8
	.byte	0xed
	.byte	0x3
	.byte	0xbe
	.byte	0x52
	.byte	0x53
	.byte	0xe3
	.byte	0xdc
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x87
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0x3f
	.byte	0x2
	.byte	0x95
	.byte	0xe6
	.byte	0x1d
	.byte	0x40
	.byte	0x34
	.byte	0x40
	.byte	0x28
	.byte	0x22
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.byte	0
	.section	.debug_types,"G",%progbits,wt.95e61d4034402822,comdat
	.4byte	0x48
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x95
	.byte	0xe6
	.byte	0x1d
	.byte	0x40
	.byte	0x34
	.byte	0x40
	.byte	0x28
	.byte	0x22
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x44
	.byte	0x4
	.byte	0x3a
	.byte	0xd
	.4byte	0x44
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0
	.section	.debug_types,"G",%progbits,wt.b8ed03be5253e3dc,comdat
	.4byte	0x42
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xb8
	.byte	0xed
	.byte	0x3
	.byte	0xbe
	.byte	0x52
	.byte	0x53
	.byte	0xe3
	.byte	0xdc
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x3e
	.byte	0x6
	.byte	0xad
	.byte	0x1
	.4byte	0x3e
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0
	.file 7 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\software\\kalmanFilter.h"
	.section	.debug_types,"G",%progbits,wt.427da6c4a449f5e8,comdat
	.4byte	0x4e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x42
	.byte	0x7d
	.byte	0xa6
	.byte	0xc4
	.byte	0xa4
	.byte	0x49
	.byte	0xf5
	.byte	0xe8
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0x7
	.byte	0xd
	.byte	0x9
	.4byte	0x4a
	.uleb128 0xf
	.ascii	"x\000"
	.byte	0x7
	.byte	0xe
	.byte	0x7
	.4byte	0x4a
	.byte	0
	.uleb128 0xf
	.ascii	"y\000"
	.byte	0x7
	.byte	0xf
	.byte	0x7
	.4byte	0x4a
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x7
	.byte	0x10
	.byte	0x7
	.4byte	0x4a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.4byte	.LASF39
	.byte	0
	.file 8 "../../../../../../components/libraries/experimental_log/nrf_log_types.h"
	.section	.debug_types,"G",%progbits,wt.e9e82ee25d8076ca,comdat
	.4byte	0x51
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xe9
	.byte	0xe8
	.byte	0x2e
	.byte	0xe2
	.byte	0x5d
	.byte	0x80
	.byte	0x76
	.byte	0xca
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x8
	.byte	0x4c
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x8
	.byte	0x4e
	.byte	0xe
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x8
	.byte	0x4f
	.byte	0xe
	.4byte	0x41
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x4d
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.byte	0
	.file 9 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
	.section	.debug_types,"G",%progbits,wt.23144061f65d3274,comdat
	.4byte	0x6b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x23
	.byte	0x14
	.byte	0x40
	.byte	0x61
	.byte	0xf6
	.byte	0x5d
	.byte	0x32
	.byte	0x74
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0x9
	.byte	0x6d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x9
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x9
	.byte	0x70
	.byte	0x15
	.4byte	0x46
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.4byte	0x4b
	.uleb128 0x10
	.4byte	0x5b
	.uleb128 0x11
	.4byte	0x46
	.4byte	0x5b
	.uleb128 0x12
	.4byte	0x67
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.byte	0
	.file 10 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
	.section	.debug_types,"G",%progbits,wt.1839347164335ef6,comdat
	.4byte	0x86
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x18
	.byte	0x39
	.byte	0x34
	.byte	0x71
	.byte	0x64
	.byte	0x33
	.byte	0x5e
	.byte	0xf6
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x8
	.byte	0xa
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0xa
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0xa
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0xa
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x61
	.uleb128 0x16
	.4byte	0x70
	.4byte	0x70
	.uleb128 0xc
	.4byte	0x76
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.4byte	0x82
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF47
	.byte	0
	.section	.debug_types,"G",%progbits,wt.67b2e44cb9c485aa,comdat
	.4byte	0x67
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x67
	.byte	0xb2
	.byte	0xe4
	.byte	0x4c
	.byte	0xb9
	.byte	0xc4
	.byte	0x85
	.byte	0xaa
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x18
	.4byte	.LASF49
	.byte	0x14
	.byte	0xa
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0xa
	.byte	0xdd
	.byte	0x19
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x48
	.4byte	0x48
	.uleb128 0x12
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x55
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0x7
	.4byte	0x5a
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0xa
	.byte	0xd8
	.byte	0x3
	.byte	0x81
	.byte	0x86
	.byte	0xc6
	.byte	0xc4
	.byte	0x3e
	.byte	0x1e
	.byte	0x78
	.byte	0xec
	.byte	0
	.section	.debug_types,"G",%progbits,wt.8186c6c43e1e78ec,comdat
	.4byte	0x93
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x81
	.byte	0x86
	.byte	0xc6
	.byte	0xc4
	.byte	0x3e
	.byte	0x1e
	.byte	0x78
	.byte	0xec
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0xa
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0xa
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0xa
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0xa
	.byte	0xd7
	.byte	0x21
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x60
	.uleb128 0x5
	.byte	0x4
	.4byte	0x65
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x7
	.4byte	0x6f
	.uleb128 0x7
	.4byte	0x76
	.uleb128 0x7
	.4byte	0x86
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF47
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0xa
	.byte	0xae
	.byte	0x3
	.byte	0xc0
	.byte	0x1a
	.byte	0x87
	.byte	0x40
	.byte	0x88
	.byte	0xa8
	.byte	0x2d
	.byte	0x75
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0xa
	.byte	0xd2
	.byte	0x3
	.byte	0x45
	.byte	0x5f
	.byte	0xe6
	.byte	0xc4
	.byte	0x49
	.byte	0x92
	.byte	0xc0
	.byte	0x69
	.byte	0
	.section	.debug_types,"G",%progbits,wt.455fe6c44992c069,comdat
	.4byte	0x16a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x45
	.byte	0x5f
	.byte	0xe6
	.byte	0xc4
	.byte	0x49
	.byte	0x92
	.byte	0xc0
	.byte	0x69
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x20
	.byte	0xa
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0xa
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0xa
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0xa
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0xa
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0xa
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xa
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xa
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xa
	.byte	0xd1
	.byte	0x9
	.4byte	0xad
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd6
	.uleb128 0x5
	.byte	0x4
	.4byte	0xea
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x112
	.uleb128 0x16
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0xc
	.4byte	0x130
	.uleb128 0xc
	.4byte	0x130
	.byte	0
	.uleb128 0x16
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0xc
	.4byte	0x130
	.byte	0
	.uleb128 0x16
	.4byte	0x130
	.4byte	0xea
	.uleb128 0xc
	.4byte	0x137
	.uleb128 0xc
	.4byte	0x130
	.byte	0
	.uleb128 0x16
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0xc
	.4byte	0x137
	.byte	0
	.uleb128 0x16
	.4byte	0x130
	.4byte	0x112
	.uleb128 0xc
	.4byte	0x13e
	.uleb128 0xc
	.4byte	0x144
	.uleb128 0xc
	.4byte	0x14b
	.byte	0
	.uleb128 0x16
	.4byte	0x130
	.4byte	0x130
	.uleb128 0xc
	.4byte	0x155
	.uleb128 0xc
	.4byte	0x15b
	.uleb128 0xc
	.4byte	0x144
	.uleb128 0xc
	.4byte	0x14b
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF64
	.uleb128 0x5
	.byte	0x4
	.4byte	0x161
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0x19
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x144
	.uleb128 0x5
	.byte	0x4
	.4byte	0x168
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF47
	.uleb128 0x7
	.4byte	0x161
	.byte	0
	.section	.debug_types,"G",%progbits,wt.c01a874088a82d75,comdat
	.4byte	0x1d6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xc0
	.byte	0x1a
	.byte	0x87
	.byte	0x40
	.byte	0x88
	.byte	0xa8
	.byte	0x2d
	.byte	0x75
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x58
	.byte	0xa
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xa
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xa
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xa
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xa
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0xa
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xa
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0xa
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xa
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xa
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0xa
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0xa
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0xa
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xa
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0xa
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0xa
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0xa
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0xa
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0xa
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0xa
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0xa
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0xa
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0xa
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0xa
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0xa
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0xa
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0xa
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0xa
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0xa
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0xa
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0xa
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0xa
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0xa
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF47
	.uleb128 0x7
	.4byte	0x1cd
	.byte	0
	.section	.debug_types,"G",%progbits,wt.43a13c2b4d789e4a,comdat
	.4byte	0x50
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x8
	.byte	0xa
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF98
	.byte	0xa
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0xa
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF64
	.byte	0
	.file 11 "../../../drivers/MPU6050.h"
	.section	.debug_types,"G",%progbits,wt.19672b919b6a58e3,comdat
	.4byte	0x4c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x19
	.byte	0x67
	.byte	0x2b
	.byte	0x91
	.byte	0x9b
	.byte	0x6a
	.byte	0x58
	.byte	0xe3
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0xb
	.byte	0xd
	.byte	0x9
	.4byte	0x48
	.uleb128 0xf
	.ascii	"x\000"
	.byte	0xb
	.byte	0xe
	.byte	0x8
	.4byte	0x48
	.byte	0
	.uleb128 0xf
	.ascii	"y\000"
	.byte	0xb
	.byte	0xf
	.byte	0x8
	.4byte	0x48
	.byte	0x4
	.uleb128 0xf
	.ascii	"z\000"
	.byte	0xb
	.byte	0x10
	.byte	0x8
	.4byte	0x48
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.4byte	.LASF39
	.byte	0
	.file 12 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 13 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 14 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 15 "../../../../../../components/libraries/util/app_util.h"
	.file 16 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
	.file 17 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
	.file 18 "../../../../../../external/freertos/source/include/queue.h"
	.file 19 "../../../../../../external/freertos/source/include/semphr.h"
	.file 20 "../../../../../../external/freertos/source/include/task.h"
	.file 21 "../../../../../../components/libraries/gfx/nrf_gfx.h"
	.file 22 "../../../drivers/display.h"
	.file 23 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\software\\globals.h"
	.file 24 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h"
	.file 25 "../../../drivers/functions.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xb66
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1a
	.4byte	.LASF233
	.byte	0xc
	.4byte	.LASF234
	.4byte	.LASF235
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.4byte	.LASF39
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0x3
	.byte	0x2f
	.byte	0x15
	.4byte	0x3c
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF101
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x4f
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x7
	.4byte	0x4f
	.uleb128 0x4
	.4byte	.LASF102
	.byte	0x3
	.byte	0x35
	.byte	0x16
	.4byte	0x67
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF103
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x7a
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0x3
	.byte	0x37
	.byte	0x14
	.4byte	0x92
	.uleb128 0x10
	.4byte	0x81
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0xa5
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF105
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF106
	.uleb128 0x8
	.4byte	.LASF107
	.byte	0xb
	.byte	0x11
	.byte	0x3
	.byte	0x19
	.byte	0x67
	.byte	0x2b
	.byte	0x91
	.byte	0x9b
	.byte	0x6a
	.byte	0x58
	.byte	0xe3
	.uleb128 0x1b
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF64
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF47
	.uleb128 0x7
	.4byte	0xd3
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0xa
	.byte	0xd2
	.byte	0x3
	.byte	0x45
	.byte	0x5f
	.byte	0xe6
	.byte	0xc4
	.byte	0x49
	.byte	0x92
	.byte	0xc0
	.byte	0x69
	.uleb128 0x7
	.4byte	0xdf
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0xa
	.byte	0xd8
	.byte	0x3
	.byte	0x81
	.byte	0x86
	.byte	0xc6
	.byte	0xc4
	.byte	0x3e
	.byte	0x1e
	.byte	0x78
	.byte	0xec
	.uleb128 0x7
	.4byte	0xf4
	.uleb128 0x1c
	.4byte	.LASF108
	.byte	0xa
	.2byte	0x106
	.byte	0x1a
	.byte	0x67
	.byte	0xb2
	.byte	0xe4
	.byte	0x4c
	.byte	0xb9
	.byte	0xc4
	.byte	0x85
	.byte	0xaa
	.uleb128 0x1d
	.4byte	.LASF109
	.byte	0xa
	.2byte	0x10d
	.byte	0x1d
	.4byte	0x104
	.uleb128 0x1d
	.4byte	.LASF110
	.byte	0xa
	.2byte	0x110
	.byte	0x25
	.4byte	0xef
	.uleb128 0x1d
	.4byte	.LASF111
	.byte	0xa
	.2byte	0x111
	.byte	0x25
	.4byte	0xef
	.uleb128 0x11
	.4byte	0x56
	.4byte	0x151
	.uleb128 0x12
	.4byte	0xa5
	.byte	0x7f
	.byte	0
	.uleb128 0x7
	.4byte	0x141
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0xa
	.2byte	0x113
	.byte	0x1c
	.4byte	0x151
	.uleb128 0x11
	.4byte	0xda
	.4byte	0x16e
	.uleb128 0x1e
	.byte	0
	.uleb128 0x7
	.4byte	0x163
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0xa
	.2byte	0x115
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF114
	.byte	0xa
	.2byte	0x116
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF115
	.byte	0xa
	.2byte	0x117
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF116
	.byte	0xa
	.2byte	0x118
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF117
	.byte	0xa
	.2byte	0x11a
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF118
	.byte	0xa
	.2byte	0x11b
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF119
	.byte	0xa
	.2byte	0x11c
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF120
	.byte	0xa
	.2byte	0x11d
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0xa
	.2byte	0x11e
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF122
	.byte	0xa
	.2byte	0x11f
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x16
	.4byte	0x92
	.4byte	0x204
	.uleb128 0xc
	.4byte	0x204
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x20f
	.uleb128 0x1f
	.4byte	.LASF132
	.uleb128 0x7
	.4byte	0x20a
	.uleb128 0x1d
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x135
	.byte	0xe
	.4byte	0x221
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1f5
	.uleb128 0x16
	.4byte	0x92
	.4byte	0x236
	.uleb128 0xc
	.4byte	0x236
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x20a
	.uleb128 0x1d
	.4byte	.LASF124
	.byte	0xa
	.2byte	0x136
	.byte	0xe
	.4byte	0x249
	.uleb128 0x5
	.byte	0x4
	.4byte	0x227
	.uleb128 0x20
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x153
	.byte	0x3
	.byte	0x18
	.byte	0x39
	.byte	0x34
	.byte	0x71
	.byte	0x64
	.byte	0x33
	.byte	0x5e
	.byte	0xf6
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0xa
	.2byte	0x157
	.byte	0x1f
	.4byte	0x26d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x24f
	.uleb128 0x1d
	.4byte	.LASF127
	.byte	0xc
	.2byte	0x744
	.byte	0x19
	.4byte	0x8d
	.uleb128 0x21
	.4byte	.LASF128
	.byte	0xd
	.byte	0x21
	.byte	0x11
	.4byte	0x99
	.uleb128 0x8
	.4byte	.LASF129
	.byte	0x9
	.byte	0x71
	.byte	0x3
	.byte	0x23
	.byte	0x14
	.byte	0x40
	.byte	0x61
	.byte	0xf6
	.byte	0x5d
	.byte	0x32
	.byte	0x74
	.uleb128 0x21
	.4byte	.LASF130
	.byte	0x9
	.byte	0x75
	.byte	0x19
	.4byte	0x28c
	.uleb128 0x15
	.4byte	.LASF131
	.byte	0xe
	.2byte	0x317
	.byte	0x1b
	.4byte	0x2b5
	.uleb128 0x1f
	.4byte	.LASF133
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0xe
	.2byte	0x31b
	.byte	0xe
	.4byte	0x2c7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2a8
	.uleb128 0x1d
	.4byte	.LASF135
	.byte	0xe
	.2byte	0x31c
	.byte	0xe
	.4byte	0x2c7
	.uleb128 0x1d
	.4byte	.LASF136
	.byte	0xe
	.2byte	0x31d
	.byte	0xe
	.4byte	0x2c7
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF137
	.uleb128 0x21
	.4byte	.LASF138
	.byte	0xf
	.byte	0x53
	.byte	0x11
	.4byte	0x99
	.uleb128 0x21
	.4byte	.LASF139
	.byte	0xf
	.byte	0x54
	.byte	0x11
	.4byte	0x99
	.uleb128 0x21
	.4byte	.LASF140
	.byte	0xf
	.byte	0x72
	.byte	0x13
	.4byte	0x312
	.uleb128 0x5
	.byte	0x4
	.4byte	0x99
	.uleb128 0x21
	.4byte	.LASF141
	.byte	0xf
	.byte	0x73
	.byte	0x11
	.4byte	0x99
	.uleb128 0x4
	.4byte	.LASF142
	.byte	0x10
	.byte	0x39
	.byte	0xe
	.4byte	0xcc
	.uleb128 0x4
	.4byte	.LASF143
	.byte	0x10
	.byte	0x40
	.byte	0x16
	.4byte	0x99
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.4byte	.LASF144
	.uleb128 0x8
	.4byte	.LASF145
	.byte	0x8
	.byte	0x50
	.byte	0x3
	.byte	0xe9
	.byte	0xe8
	.byte	0x2e
	.byte	0xe2
	.byte	0x5d
	.byte	0x80
	.byte	0x76
	.byte	0xca
	.uleb128 0x1d
	.4byte	.LASF146
	.byte	0x11
	.2byte	0x124
	.byte	0x2e
	.4byte	0x343
	.uleb128 0x4
	.4byte	.LASF147
	.byte	0x12
	.byte	0x2f
	.byte	0x10
	.4byte	0xca
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0x13
	.byte	0x26
	.byte	0x17
	.4byte	0x360
	.uleb128 0x4
	.4byte	.LASF149
	.byte	0x14
	.byte	0x3e
	.byte	0x10
	.4byte	0xca
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x7
	.byte	0x11
	.byte	0x2
	.byte	0x42
	.byte	0x7d
	.byte	0xa6
	.byte	0xc4
	.byte	0xa4
	.byte	0x49
	.byte	0xf5
	.byte	0xe8
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x4a
	.byte	0x2
	.byte	0xa9
	.byte	0x11
	.byte	0x20
	.byte	0xd2
	.byte	0x41
	.byte	0xb4
	.byte	0x7d
	.byte	0x93
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0x8
	.4byte	.LASF150
	.byte	0x4
	.byte	0x8c
	.byte	0x2
	.byte	0xbf
	.byte	0xa2
	.byte	0x98
	.byte	0x50
	.byte	0xfc
	.byte	0x61
	.byte	0x5d
	.byte	0x3
	.uleb128 0x7
	.4byte	0x3ab
	.uleb128 0x8
	.4byte	.LASF151
	.byte	0x2
	.byte	0x38
	.byte	0x2
	.byte	0x6d
	.byte	0x34
	.byte	0xa0
	.byte	0x41
	.byte	0x51
	.byte	0x99
	.byte	0xc3
	.byte	0xc2
	.uleb128 0x4
	.4byte	.LASF152
	.byte	0x15
	.byte	0x92
	.byte	0x13
	.4byte	0x3c0
	.uleb128 0x7
	.4byte	0x3d0
	.uleb128 0x21
	.4byte	.LASF153
	.byte	0x16
	.byte	0x13
	.byte	0x22
	.4byte	0x3dc
	.uleb128 0x21
	.4byte	.LASF154
	.byte	0x16
	.byte	0x14
	.byte	0x16
	.4byte	0x360
	.uleb128 0x22
	.4byte	.LASF188
	.byte	0x16
	.byte	0x3a
	.byte	0x11
	.4byte	0x394
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x3f
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF155
	.byte	0x16
	.byte	0x42
	.byte	0x18
	.4byte	0x3bb
	.uleb128 0x21
	.4byte	.LASF156
	.byte	0x17
	.byte	0x11
	.byte	0x15
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF157
	.byte	0x17
	.byte	0x12
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF158
	.byte	0x17
	.byte	0x13
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF159
	.byte	0x17
	.byte	0x14
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF160
	.byte	0x17
	.byte	0x15
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF161
	.byte	0x17
	.byte	0x16
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF162
	.byte	0x17
	.byte	0x17
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF163
	.byte	0x17
	.byte	0x18
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF164
	.byte	0x17
	.byte	0x1b
	.byte	0x1a
	.4byte	0x36c
	.uleb128 0x21
	.4byte	.LASF165
	.byte	0x17
	.byte	0x1c
	.byte	0x1a
	.4byte	0x36c
	.uleb128 0x21
	.4byte	.LASF166
	.byte	0x17
	.byte	0x1d
	.byte	0x1a
	.4byte	0x36c
	.uleb128 0x21
	.4byte	.LASF167
	.byte	0x17
	.byte	0x1e
	.byte	0x1a
	.4byte	0x36c
	.uleb128 0x21
	.4byte	.LASF168
	.byte	0x17
	.byte	0x1f
	.byte	0x1a
	.4byte	0x36c
	.uleb128 0x21
	.4byte	.LASF169
	.byte	0x17
	.byte	0x20
	.byte	0x1a
	.4byte	0x36c
	.uleb128 0x21
	.4byte	.LASF170
	.byte	0x17
	.byte	0x24
	.byte	0x16
	.4byte	0x360
	.uleb128 0x21
	.4byte	.LASF171
	.byte	0x17
	.byte	0x25
	.byte	0x16
	.4byte	0x360
	.uleb128 0x21
	.4byte	.LASF172
	.byte	0x17
	.byte	0x26
	.byte	0x16
	.4byte	0x360
	.uleb128 0x21
	.4byte	.LASF173
	.byte	0x17
	.byte	0x29
	.byte	0x10
	.4byte	0x43
	.uleb128 0x21
	.4byte	.LASF174
	.byte	0x17
	.byte	0x2a
	.byte	0x10
	.4byte	0x43
	.uleb128 0x21
	.4byte	.LASF175
	.byte	0x17
	.byte	0x2c
	.byte	0x10
	.4byte	0x43
	.uleb128 0x21
	.4byte	.LASF176
	.byte	0x17
	.byte	0x2f
	.byte	0xe
	.4byte	0x29
	.uleb128 0x21
	.4byte	.LASF177
	.byte	0x17
	.byte	0x30
	.byte	0x10
	.4byte	0x5b
	.uleb128 0x21
	.4byte	.LASF178
	.byte	0x17
	.byte	0x31
	.byte	0x10
	.4byte	0x5b
	.uleb128 0x21
	.4byte	.LASF179
	.byte	0x17
	.byte	0x32
	.byte	0xe
	.4byte	0x29
	.uleb128 0x21
	.4byte	.LASF180
	.byte	0x17
	.byte	0x33
	.byte	0xe
	.4byte	0x29
	.uleb128 0x21
	.4byte	.LASF181
	.byte	0x17
	.byte	0x36
	.byte	0x10
	.4byte	0x5b
	.uleb128 0x21
	.4byte	.LASF182
	.byte	0x17
	.byte	0x37
	.byte	0x10
	.4byte	0x5b
	.uleb128 0x23
	.4byte	.LASF183
	.byte	0x1
	.byte	0x19
	.byte	0x8
	.4byte	0x30
	.uleb128 0x5
	.byte	0x3
	.4byte	gyroBiasGuard
	.uleb128 0x23
	.4byte	.LASF184
	.byte	0x1
	.byte	0x1a
	.byte	0xf
	.4byte	0xba
	.uleb128 0x5
	.byte	0x3
	.4byte	gyro
	.uleb128 0x23
	.4byte	.LASF185
	.byte	0x1
	.byte	0x1b
	.byte	0xf
	.4byte	0xba
	.uleb128 0x5
	.byte	0x3
	.4byte	accel
	.uleb128 0x23
	.4byte	.LASF186
	.byte	0x1
	.byte	0x1c
	.byte	0x7
	.4byte	0x384
	.uleb128 0x5
	.byte	0x3
	.4byte	kf_state
	.uleb128 0x24
	.4byte	.LASF236
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa51
	.uleb128 0x25
	.4byte	.LASF237
	.byte	0x1
	.byte	0x20
	.byte	0x23
	.4byte	0xca
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x26
	.4byte	.LASF187
	.byte	0x1
	.byte	0x21
	.byte	0x9
	.4byte	0x92
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x22
	.4byte	.LASF189
	.byte	0x1
	.byte	0x22
	.byte	0xb
	.4byte	0x29
	.byte	0x4
	.4byte	0x3d23d70a
	.uleb128 0x26
	.4byte	.LASF190
	.byte	0x1
	.byte	0x23
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x26
	.4byte	.LASF191
	.byte	0x1
	.byte	0x24
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x26
	.4byte	.LASF192
	.byte	0x1
	.byte	0x25
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x22
	.4byte	.LASF193
	.byte	0x1
	.byte	0x26
	.byte	0xb
	.4byte	0x29
	.byte	0x4
	.4byte	0
	.uleb128 0x27
	.4byte	.LASF194
	.byte	0x1
	.byte	0x28
	.byte	0x9
	.4byte	0x92
	.byte	0
	.uleb128 0x27
	.4byte	.LASF195
	.byte	0x1
	.byte	0x29
	.byte	0x9
	.4byte	0x92
	.byte	0
	.uleb128 0x27
	.4byte	.LASF196
	.byte	0x1
	.byte	0x2a
	.byte	0x9
	.4byte	0x92
	.byte	0
	.uleb128 0x26
	.4byte	.LASF197
	.byte	0x1
	.byte	0x32
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x28
	.4byte	.LASF198
	.byte	0x1
	.byte	0x35
	.byte	0x10
	.4byte	0x330
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.4byte	.LASF199
	.byte	0x1
	.byte	0x36
	.byte	0x10
	.4byte	0x330
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x29
	.ascii	"Z\000"
	.byte	0x1
	.byte	0x37
	.byte	0xb
	.4byte	0xa51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0
	.4byte	0x893
	.uleb128 0x26
	.4byte	.LASF200
	.byte	0x1
	.byte	0x3e
	.byte	0x15
	.4byte	0x5b
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x26
	.4byte	.LASF201
	.byte	0x1
	.byte	0x3f
	.byte	0x15
	.4byte	0x5b
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x26
	.4byte	.LASF202
	.byte	0x1
	.byte	0x40
	.byte	0x13
	.4byte	0x29
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x26
	.4byte	.LASF203
	.byte	0x1
	.byte	0x41
	.byte	0x13
	.4byte	0x29
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x26
	.4byte	.LASF204
	.byte	0x1
	.byte	0x4a
	.byte	0x13
	.4byte	0x29
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x26
	.4byte	.LASF205
	.byte	0x1
	.byte	0x4b
	.byte	0x13
	.4byte	0x29
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x26
	.4byte	.LASF206
	.byte	0x1
	.byte	0x65
	.byte	0x11
	.4byte	0x29
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x26
	.4byte	.LASF207
	.byte	0x1
	.byte	0x66
	.byte	0x11
	.4byte	0x29
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x2b
	.4byte	.LVL7
	.4byte	0xa71
	.uleb128 0x2b
	.4byte	.LVL8
	.4byte	0xa7d
	.uleb128 0x2b
	.4byte	.LVL9
	.4byte	0xa89
	.uleb128 0x2b
	.4byte	.LVL10
	.4byte	0xa95
	.uleb128 0x2c
	.4byte	.LVL12
	.4byte	0xaa1
	.4byte	0x78f
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL15
	.4byte	0xaae
	.uleb128 0x2c
	.4byte	.LVL19
	.4byte	0xabb
	.4byte	0x7b2
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f800000
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL20
	.4byte	0xac7
	.4byte	0x7c7
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL21
	.4byte	0xad3
	.uleb128 0x2c
	.4byte	.LVL22
	.4byte	0xadf
	.4byte	0x7e4
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL24
	.4byte	0xaeb
	.4byte	0x7f7
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL25
	.4byte	0xaf8
	.4byte	0x814
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL26
	.4byte	0xaf8
	.4byte	0x831
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL29
	.4byte	0xaeb
	.4byte	0x844
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL32
	.4byte	0xaf8
	.4byte	0x861
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL44
	.4byte	0xb05
	.uleb128 0x2b
	.4byte	.LVL47
	.4byte	0xb11
	.uleb128 0x2b
	.4byte	.LVL52
	.4byte	0xb1e
	.uleb128 0x2e
	.4byte	.LVL74
	.4byte	0xabb
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3cf5c28f
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xa18
	.uleb128 0x28
	.4byte	.LASF208
	.byte	0x1
	.byte	0xc9
	.byte	0xa
	.4byte	0xa61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x30
	.ascii	"i\000"
	.byte	0x1
	.byte	0xca
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x31
	.4byte	.LASF209
	.byte	0x1
	.byte	0xcb
	.byte	0xe
	.4byte	0x6e
	.2byte	0x12c
	.uleb128 0x26
	.4byte	.LASF210
	.byte	0x1
	.byte	0xcc
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x26
	.4byte	.LASF211
	.byte	0x1
	.byte	0xcd
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x26
	.4byte	.LASF212
	.byte	0x1
	.byte	0xce
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x26
	.4byte	.LASF213
	.byte	0x1
	.byte	0xcf
	.byte	0x9
	.4byte	0x92
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x26
	.4byte	.LASF214
	.byte	0x1
	.byte	0xd0
	.byte	0x9
	.4byte	0x92
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x2c
	.4byte	.LVL77
	.4byte	0xaa1
	.4byte	0x948
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x96
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL81
	.4byte	0xa71
	.uleb128 0x2b
	.4byte	.LVL82
	.4byte	0xa7d
	.uleb128 0x2b
	.4byte	.LVL83
	.4byte	0xa89
	.uleb128 0x2c
	.4byte	.LVL87
	.4byte	0xaa1
	.4byte	0x977
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL88
	.4byte	0xb2b
	.4byte	0x9a1
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL89
	.4byte	0xb37
	.4byte	0x9bb
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL91
	.4byte	0xb05
	.uleb128 0x2c
	.4byte	.LVL92
	.4byte	0xaa1
	.4byte	0x9d7
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL94
	.4byte	0xb2b
	.4byte	0xa01
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL95
	.4byte	0xb37
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL2
	.4byte	0xb43
	.uleb128 0x2c
	.4byte	.LVL5
	.4byte	0xb50
	.4byte	0xa39
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL27
	.4byte	0xb5c
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x29
	.4byte	0xa61
	.uleb128 0x12
	.4byte	0xa5
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.4byte	0xd3
	.4byte	0xa71
	.uleb128 0x12
	.4byte	0xa5
	.byte	0x13
	.byte	0
	.uleb128 0x32
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0xb
	.byte	0x19
	.byte	0x6
	.uleb128 0x32
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0xb
	.byte	0x22
	.byte	0xf
	.uleb128 0x32
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0xb
	.byte	0x23
	.byte	0xf
	.uleb128 0x32
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0xb
	.byte	0x21
	.byte	0x7
	.uleb128 0x33
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0x14
	.2byte	0x2ee
	.byte	0x6
	.uleb128 0x33
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0x18
	.2byte	0x3c8
	.byte	0x8
	.uleb128 0x32
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0x7
	.byte	0x1b
	.byte	0x6
	.uleb128 0x32
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0x7
	.byte	0x15
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0x7
	.byte	0x17
	.byte	0x7
	.uleb128 0x32
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0x19
	.byte	0xe
	.byte	0x6
	.uleb128 0x33
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0x12
	.2byte	0x589
	.byte	0xc
	.uleb128 0x33
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0x12
	.2byte	0x289
	.byte	0xc
	.uleb128 0x32
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0xb
	.byte	0x1a
	.byte	0x5
	.uleb128 0x34
	.ascii	"cos\000"
	.ascii	"cos\000"
	.byte	0x18
	.2byte	0x125
	.byte	0x8
	.uleb128 0x34
	.ascii	"sin\000"
	.ascii	"sin\000"
	.byte	0x18
	.2byte	0x144
	.byte	0x8
	.uleb128 0x32
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0xe
	.byte	0x87
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0x16
	.byte	0x66
	.byte	0x6
	.uleb128 0x33
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0x14
	.2byte	0x53f
	.byte	0xc
	.uleb128 0x32
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0x7
	.byte	0x13
	.byte	0x6
	.uleb128 0x33
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0x14
	.2byte	0x329
	.byte	0x6
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x41
	.byte	0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x2134
	.uleb128 0x19
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2-1
	.4byte	.LFE212
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU3
	.uleb128 .LVU22
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU5
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL6
	.4byte	.LFE212
	.2byte	0x2
	.byte	0x90
	.uleb128 0x56
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU6
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL6
	.4byte	.LFE212
	.2byte	0x2
	.byte	0x90
	.uleb128 0x57
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU7
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL6
	.4byte	.LFE212
	.2byte	0x2
	.byte	0x90
	.uleb128 0x55
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU12
	.uleb128 .LVU22
	.uleb128 .LVU34
	.uleb128 .LVU46
	.uleb128 .LVU99
	.uleb128 .LVU144
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL11
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL45
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU16
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU19
.LLST6:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU22
	.uleb128 .LVU63
	.uleb128 .LVU71
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU144
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU22
	.uleb128 .LVU34
	.uleb128 .LVU72
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU99
.LLST8:
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU22
	.uleb128 .LVU63
	.uleb128 .LVU73
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU144
.LLST9:
	.4byte	.LVL6
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	.LVL28
	.4byte	.LVL42
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL42
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU22
	.uleb128 .LVU63
	.uleb128 .LVU74
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU144
.LLST10:
	.4byte	.LVL6
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.4byte	.LVL28
	.4byte	.LVL43
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL43
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU22
	.uleb128 .LVU63
	.uleb128 .LVU84
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU144
.LLST11:
	.4byte	.LVL6
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL37
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU22
	.uleb128 .LVU63
	.uleb128 .LVU88
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU144
.LLST12:
	.4byte	.LVL6
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL41
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL44-1
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU35
	.uleb128 .LVU63
	.uleb128 .LVU102
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 .LVU144
.LLST13:
	.4byte	.LVL13
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x54
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x90
	.uleb128 0x54
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU106
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU126
.LLST14:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL55
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x90
	.uleb128 0x53
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU158
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 .LVU167
	.uleb128 .LVU168
	.uleb128 0
.LLST15:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL80
	.4byte	.LFE212
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU152
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 0
.LLST16:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL78
	.4byte	.LFE212
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU153
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 0
.LLST17:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL78
	.4byte	.LFE212
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU154
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 0
.LLST18:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL78
	.4byte	.LFE212
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU155
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 0
.LLST19:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LFE212
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU156
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 0
.LLST20:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LFE212
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x88
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xb6a
	.4byte	0x3f9
	.ascii	"m_lcd_cb\000"
	.4byte	0x55e
	.ascii	"gyroBiasGuard\000"
	.4byte	0x570
	.ascii	"gyro\000"
	.4byte	0x582
	.ascii	"accel\000"
	.4byte	0x594
	.ascii	"kf_state\000"
	.4byte	0x570
	.ascii	"gyro\000"
	.4byte	0x582
	.ascii	"accel\000"
	.4byte	0x594
	.ascii	"kf_state\000"
	.4byte	0x5a6
	.ascii	"vMainPoseEstimatorTask\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x2ac
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xb6a
	.4byte	0x3c
	.ascii	"signed char\000"
	.4byte	0x30
	.ascii	"int8_t\000"
	.4byte	0x4f
	.ascii	"unsigned char\000"
	.4byte	0x43
	.ascii	"uint8_t\000"
	.4byte	0x67
	.ascii	"short int\000"
	.4byte	0x5b
	.ascii	"int16_t\000"
	.4byte	0x7a
	.ascii	"short unsigned int\000"
	.4byte	0x6e
	.ascii	"uint16_t\000"
	.4byte	0x92
	.ascii	"int\000"
	.4byte	0x81
	.ascii	"int32_t\000"
	.4byte	0xa5
	.ascii	"unsigned int\000"
	.4byte	0x99
	.ascii	"uint32_t\000"
	.4byte	0xac
	.ascii	"long long int\000"
	.4byte	0xb3
	.ascii	"long long unsigned int\000"
	.4byte	0x29
	.ascii	"float\000"
	.4byte	0xba
	.ascii	"IMU_reading_t\000"
	.4byte	0xcc
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xd3
	.ascii	"char\000"
	.4byte	0xdf
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xf4
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x24f
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x28c
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x2a8
	.ascii	"FILE\000"
	.4byte	0x2e7
	.ascii	"long unsigned int\000"
	.4byte	0x324
	.ascii	"BaseType_t\000"
	.4byte	0x330
	.ascii	"TickType_t\000"
	.4byte	0x33c
	.ascii	"double\000"
	.4byte	0x343
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
	.4byte	0x360
	.ascii	"QueueHandle_t\000"
	.4byte	0x36c
	.ascii	"SemaphoreHandle_t\000"
	.4byte	0x378
	.ascii	"TaskHandle_t\000"
	.4byte	0x384
	.ascii	"state\000"
	.4byte	0x394
	.ascii	"lcd_cb_t\000"
	.4byte	0x3a4
	.ascii	"_Bool\000"
	.4byte	0x3ab
	.ascii	"nrf_lcd_t\000"
	.4byte	0x3c0
	.ascii	"FONT_INFO\000"
	.4byte	0x3d0
	.ascii	"nrf_gfx_font_desc_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LFB212
	.4byte	.LFE212
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x3
	.uleb128 0x8
	.uleb128 0xb
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.file 26 "../../../drivers/defines.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x1a
	.byte	0x4
	.file 27 "../../../../../../external/freertos/source/include/freeRTOS.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x1b
	.file 28 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x1c
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.file 29 "../../../config/FreeRTOSConfig.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x1d
	.file 30 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x1e
	.file 31 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x1f
	.file 32 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x20
	.byte	0x3
	.uleb128 0x92
	.uleb128 0xc
	.file 33 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x21
	.file 34 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x22
	.byte	0x4
	.byte	0x4
	.file 35 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x23
	.byte	0x4
	.file 36 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x24
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.file 37 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x25
	.byte	0x4
	.file 38 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x26
	.byte	0x4
	.file 39 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x27
	.byte	0x4
	.file 40 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x28
	.byte	0x4
	.byte	0x4
	.file 41 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x29
	.byte	0x4
	.file 42 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x2a
	.byte	0x4
	.file 43 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x2b
	.byte	0x4
	.byte	0x4
	.file 44 "../../../../../../components/libraries/util/app_util_platform.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x2c
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x28
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x9
	.byte	0x4
	.file 45 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x2d
	.byte	0x4
	.file 46 "../../../../../../components/libraries/util/app_error.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xe
	.byte	0x4
	.file 47 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x2f
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x5
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x2a
	.byte	0x4
	.byte	0x4
	.file 48 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x30
	.byte	0x4
	.file 49 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x31
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb1
	.uleb128 0x2d
	.byte	0x4
	.file 50 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h"
	.byte	0x3
	.uleb128 0xd6
	.uleb128 0x32
	.file 51 "../../../systemView/SEGGER_SYSVIEW.h"
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x33
	.file 52 "../../../systemView/SEGGER.h"
	.byte	0x3
	.uleb128 0x4a
	.uleb128 0x34
	.file 53 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h"
	.byte	0x3
	.uleb128 0x43
	.uleb128 0x35
	.byte	0x4
	.file 54 "../../../systemView/Global.h"
	.byte	0x3
	.uleb128 0x44
	.uleb128 0x36
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 55 "../../../../../../external/freertos/source/include/projdefs.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x37
	.byte	0x4
	.file 56 "../../../../../../external/freertos/source/include/portable.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x38
	.file 57 "../../../../../../external/freertos/source/include/deprecated_definitions.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x39
	.byte	0x4
	.file 58 "../../../../../../external/freertos/portable/GCC/nrf52/portmacro.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x3a
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 59 "../../../../../../external/freertos/source/include/mpu_wrappers.h"
	.byte	0x3
	.uleb128 0x5c
	.uleb128 0x3b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x19
	.byte	0x4
	.file 60 "../../../drivers/mag3110.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x3c
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x18
	.byte	0x4
	.file 61 "../../../../../../components/libraries/experimental_log/nrf_log.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x3d
	.file 62 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x3e
	.file 63 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x3f
	.byte	0x4
	.file 64 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x40
	.byte	0x4
	.file 65 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x41
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0xf
	.byte	0x4
	.file 66 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x42
	.byte	0x4
	.byte	0x4
	.file 67 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x43
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x30
	.byte	0x4
	.byte	0x4
	.file 68 "../../../../../../components/libraries/strerror/nrf_strerror.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x44
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0x11
	.file 69 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x45
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x12
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.file 70 "../../../../../../external/freertos/source/include/timers.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x46
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x14
	.file 71 "../../../../../../external/freertos/source/include/list.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x47
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 72 "../../../drivers/microsd.h"
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x48
	.byte	0x4
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x16
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x4
	.file 73 "../../../../../../modules/nrfx/nrfx.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x49
	.file 74 "../../../../../../integration/nrfx/nrfx_config.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x4a
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x6
	.file 75 "../../../../../../modules/nrfx/mdk/nrf_peripherals.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x4b
	.file 76 "../../../../../../modules/nrfx/mdk/nrf52832_peripherals.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x4c
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 77 "../../../../../../integration/nrfx/nrfx_glue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x4d
	.file 78 "../../../../../../integration/nrfx/legacy/apply_old_config.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x4e
	.byte	0x4
	.file 79 "../../../../../../modules/nrfx/soc/nrfx_irqs.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x4f
	.file 80 "../../../../../../modules/nrfx/soc/nrfx_irqs_nrf52832.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x50
	.byte	0x4
	.byte	0x4
	.file 81 "../../../../../../modules/nrfx/soc/nrfx_coredep.h"
	.byte	0x3
	.uleb128 0xcc
	.uleb128 0x51
	.byte	0x4
	.file 82 "../../../../../../components/libraries/util/sdk_resources.h"
	.byte	0x3
	.uleb128 0xf1
	.uleb128 0x52
	.file 83 "../../../../../../components/softdevice/s132/headers/nrf_sd_def.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x53
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 84 "../../../../../../modules/nrfx/drivers/nrfx_errors.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x54
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.file 85 "../../../drivers/oled.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x55
	.byte	0x4
	.file 86 "../../../../../../external/freertos/source/include/FreeRTOS.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x56
	.byte	0x4
	.byte	0x4
	.file 87 "../../../communication/server_communication.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x57
	.byte	0x4
	.file 88 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\software\\EstimatorTask.h"
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x58
	.byte	0x4
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x17
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF210:
	.ascii	"gyroF\000"
.LASF187:
	.ascii	"count\000"
.LASF41:
	.ascii	"padding\000"
.LASF192:
	.ascii	"gyroOffset\000"
.LASF141:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF119:
	.ascii	"__RAL_data_utf8_space\000"
.LASF96:
	.ascii	"date_time_format\000"
.LASF114:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF45:
	.ascii	"next\000"
.LASF110:
	.ascii	"__RAL_codeset_ascii\000"
.LASF46:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF9:
	.ascii	"widthBits\000"
.LASF86:
	.ascii	"int_n_sep_by_space\000"
.LASF7:
	.ascii	"FONT_CHAR_INFO\000"
.LASF77:
	.ascii	"p_cs_precedes\000"
.LASF203:
	.ascii	"dTheta\000"
.LASF234:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam_applicationLeithe\\software\\EstimatorTask"
	.ascii	".c\000"
.LASF121:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF173:
	.ascii	"gHandshook\000"
.LASF223:
	.ascii	"kalmanGetState\000"
.LASF226:
	.ascii	"xQueueGenericSend\000"
.LASF202:
	.ascii	"dRobot\000"
.LASF106:
	.ascii	"long long unsigned int\000"
.LASF233:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF5:
	.ascii	"data\000"
.LASF49:
	.ascii	"__locale_s\000"
.LASF124:
	.ascii	"__user_get_time_of_day\000"
.LASF140:
	.ascii	"_vectors\000"
.LASF147:
	.ascii	"QueueHandle_t\000"
.LASF127:
	.ascii	"ITM_RxBuffer\000"
.LASF193:
	.ascii	"compassOffset\000"
.LASF184:
	.ascii	"gyro\000"
.LASF216:
	.ascii	"IMU_getGyro\000"
.LASF153:
	.ascii	"orkney_8ptFontInfo\000"
.LASF68:
	.ascii	"int_curr_symbol\000"
.LASF188:
	.ascii	"m_lcd_cb\000"
.LASF92:
	.ascii	"abbrev_month_names\000"
.LASF102:
	.ascii	"int16_t\000"
.LASF105:
	.ascii	"long long int\000"
.LASF101:
	.ascii	"signed char\000"
.LASF108:
	.ascii	"__RAL_global_locale\000"
.LASF40:
	.ascii	"module_id\000"
.LASF53:
	.ascii	"codeset\000"
.LASF219:
	.ascii	"vTaskDelay\000"
.LASF151:
	.ascii	"FONT_INFO\000"
.LASF60:
	.ascii	"__towupper\000"
.LASF162:
	.ascii	"sensor_tower_task\000"
.LASF225:
	.ascii	"xQueueSemaphoreTake\000"
.LASF27:
	.ascii	"state\000"
.LASF64:
	.ascii	"long int\000"
.LASF179:
	.ascii	"gLeft\000"
.LASF54:
	.ascii	"__RAL_locale_data_t\000"
.LASF118:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF149:
	.ascii	"TaskHandle_t\000"
.LASF134:
	.ascii	"stdin\000"
.LASF58:
	.ascii	"__tolower\000"
.LASF79:
	.ascii	"n_cs_precedes\000"
.LASF11:
	.ascii	"uint16_t\000"
.LASF214:
	.ascii	"sucsess\000"
.LASF144:
	.ascii	"double\000"
.LASF142:
	.ascii	"BaseType_t\000"
.LASF56:
	.ascii	"__isctype\000"
.LASF83:
	.ascii	"int_p_cs_precedes\000"
.LASF163:
	.ascii	"arq_task\000"
.LASF208:
	.ascii	"str4\000"
.LASF90:
	.ascii	"abbrev_day_names\000"
.LASF218:
	.ascii	"fIMU_readFloatGyroZ\000"
.LASF99:
	.ascii	"__wchar\000"
.LASF2:
	.ascii	"endChar\000"
.LASF175:
	.ascii	"USEBLUETOOTH\000"
.LASF157:
	.ascii	"handle_user_task\000"
.LASF66:
	.ascii	"thousands_sep\000"
.LASF93:
	.ascii	"am_pm_indicator\000"
.LASF72:
	.ascii	"mon_grouping\000"
.LASF59:
	.ascii	"__iswctype\000"
.LASF82:
	.ascii	"n_sign_posn\000"
.LASF200:
	.ascii	"leftWheelTicks\000"
.LASF21:
	.ascii	"lcd_cb_t\000"
.LASF94:
	.ascii	"date_format\000"
.LASF204:
	.ascii	"dLeft\000"
.LASF3:
	.ascii	"spacePixels\000"
.LASF26:
	.ascii	"unsigned int\000"
.LASF85:
	.ascii	"int_p_sep_by_space\000"
.LASF128:
	.ascii	"SystemCoreClock\000"
.LASF198:
	.ascii	"xLastWakeTime\000"
.LASF117:
	.ascii	"__RAL_data_utf8_period\000"
.LASF0:
	.ascii	"height\000"
.LASF67:
	.ascii	"grouping\000"
.LASF137:
	.ascii	"long unsigned int\000"
.LASF4:
	.ascii	"charInfo\000"
.LASF61:
	.ascii	"__towlower\000"
.LASF177:
	.ascii	"gX_hat\000"
.LASF122:
	.ascii	"__RAL_data_empty_string\000"
.LASF237:
	.ascii	"pvParameters\000"
.LASF160:
	.ascii	"pose_controller_task\000"
.LASF50:
	.ascii	"__category\000"
.LASF171:
	.ascii	"scanStatusQ\000"
.LASF145:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF139:
	.ascii	"__StackLimit\000"
.LASF28:
	.ascii	"width\000"
.LASF129:
	.ascii	"nrf_nvic_state_t\000"
.LASF158:
	.ascii	"handle_microsd_task\000"
.LASF172:
	.ascii	"queue_microsd\000"
.LASF12:
	.ascii	"short unsigned int\000"
.LASF213:
	.ascii	"fails\000"
.LASF201:
	.ascii	"rightWheelTicks\000"
.LASF19:
	.ascii	"lcd_display_invert\000"
.LASF191:
	.ascii	"accelYoffset\000"
.LASF52:
	.ascii	"name\000"
.LASF221:
	.ascii	"kf_setEncoderVar\000"
.LASF24:
	.ascii	"nrf_lcd_rotation_t\000"
.LASF231:
	.ascii	"kf_init\000"
.LASF227:
	.ascii	"IMU_newData\000"
.LASF89:
	.ascii	"day_names\000"
.LASF31:
	.ascii	"NRF_LCD_ROTATE_0\000"
.LASF217:
	.ascii	"IMU_getAccel\000"
.LASF197:
	.ascii	"gyrZ\000"
.LASF235:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_applicationLeithe\\\\pca10040\\\\s"
	.ascii	"132\\\\ses\000"
.LASF1:
	.ascii	"startChar\000"
.LASF132:
	.ascii	"timeval\000"
.LASF37:
	.ascii	"NRFX_DRV_STATE_POWERED_ON\000"
.LASF135:
	.ascii	"stdout\000"
.LASF199:
	.ascii	"xLastWakeTime2\000"
.LASF206:
	.ascii	"cosTheta\000"
.LASF224:
	.ascii	"vFunc_Inf2pi\000"
.LASF161:
	.ascii	"communication_task\000"
.LASF51:
	.ascii	"__RAL_locale_t\000"
.LASF95:
	.ascii	"time_format\000"
.LASF166:
	.ascii	"xTickMutex\000"
.LASF57:
	.ascii	"__toupper\000"
.LASF209:
	.ascii	"samples\000"
.LASF194:
	.ascii	"KFcounter\000"
.LASF81:
	.ascii	"p_sign_posn\000"
.LASF22:
	.ascii	"ret_code_t\000"
.LASF15:
	.ascii	"lcd_pixel_draw\000"
.LASF112:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF69:
	.ascii	"currency_symbol\000"
.LASF167:
	.ascii	"xControllerBSem\000"
.LASF44:
	.ascii	"decode\000"
.LASF143:
	.ascii	"TickType_t\000"
.LASF20:
	.ascii	"p_lcd_cb\000"
.LASF195:
	.ascii	"KFheading\000"
.LASF34:
	.ascii	"NRF_LCD_ROTATE_270\000"
.LASF63:
	.ascii	"__mbtowc\000"
.LASF130:
	.ascii	"nrf_nvic_state\000"
.LASF185:
	.ascii	"accel\000"
.LASF109:
	.ascii	"__RAL_c_locale\000"
.LASF196:
	.ascii	"time\000"
.LASF126:
	.ascii	"__RAL_error_decoder_head\000"
.LASF236:
	.ascii	"vMainPoseEstimatorTask\000"
.LASF165:
	.ascii	"xPoseMutex\000"
.LASF123:
	.ascii	"__user_set_time_of_day\000"
.LASF84:
	.ascii	"int_n_cs_precedes\000"
.LASF180:
	.ascii	"gRight\000"
.LASF39:
	.ascii	"float\000"
.LASF207:
	.ascii	"sinTheta\000"
.LASF98:
	.ascii	"__state\000"
.LASF14:
	.ascii	"lcd_uninit\000"
.LASF155:
	.ascii	"m_nrf_lcd\000"
.LASF16:
	.ascii	"lcd_rect_draw\000"
.LASF189:
	.ascii	"period_in_S\000"
.LASF138:
	.ascii	"__StackTop\000"
.LASF164:
	.ascii	"xScanLock\000"
.LASF25:
	.ascii	"_Bool\000"
.LASF104:
	.ascii	"int32_t\000"
.LASF8:
	.ascii	"unsigned char\000"
.LASF228:
	.ascii	"sprintf\000"
.LASF113:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF150:
	.ascii	"nrf_lcd_t\000"
.LASF76:
	.ascii	"frac_digits\000"
.LASF103:
	.ascii	"short int\000"
.LASF42:
	.ascii	"__irq_masks\000"
.LASF43:
	.ascii	"__cr_flag\000"
.LASF48:
	.ascii	"__RAL_error_decoder_s\000"
.LASF107:
	.ascii	"IMU_reading_t\000"
.LASF176:
	.ascii	"gTheta_hat\000"
.LASF131:
	.ascii	"FILE\000"
.LASF18:
	.ascii	"lcd_rotation_set\000"
.LASF30:
	.ascii	"nrfx_drv_state_t\000"
.LASF222:
	.ascii	"kf_step\000"
.LASF71:
	.ascii	"mon_thousands_sep\000"
.LASF229:
	.ascii	"display_text_on_line\000"
.LASF181:
	.ascii	"gRightWheelTicks\000"
.LASF186:
	.ascii	"kf_state\000"
.LASF23:
	.ascii	"uint32_t\000"
.LASF174:
	.ascii	"gPaused\000"
.LASF87:
	.ascii	"int_p_sign_posn\000"
.LASF33:
	.ascii	"NRF_LCD_ROTATE_180\000"
.LASF148:
	.ascii	"SemaphoreHandle_t\000"
.LASF47:
	.ascii	"char\000"
.LASF170:
	.ascii	"poseControllerQ\000"
.LASF78:
	.ascii	"p_sep_by_space\000"
.LASF183:
	.ascii	"gyroBiasGuard\000"
.LASF230:
	.ascii	"xTaskGetTickCount\000"
.LASF146:
	.ascii	"m_nrf_log_app_logs_data_dynamic\000"
.LASF38:
	.ascii	"heading\000"
.LASF10:
	.ascii	"offset\000"
.LASF32:
	.ascii	"NRF_LCD_ROTATE_90\000"
.LASF74:
	.ascii	"negative_sign\000"
.LASF55:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF220:
	.ascii	"fabs\000"
.LASF232:
	.ascii	"vTaskDelayUntil\000"
.LASF100:
	.ascii	"int8_t\000"
.LASF182:
	.ascii	"gLeftWheelTicks\000"
.LASF88:
	.ascii	"int_n_sign_posn\000"
.LASF159:
	.ascii	"pose_estimator_task\000"
.LASF136:
	.ascii	"stderr\000"
.LASF115:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF156:
	.ascii	"handle_display_task\000"
.LASF190:
	.ascii	"accelXoffset\000"
.LASF125:
	.ascii	"__RAL_error_decoder_t\000"
.LASF97:
	.ascii	"__mbstate_s\000"
.LASF6:
	.ascii	"uint8_t\000"
.LASF91:
	.ascii	"month_names\000"
.LASF17:
	.ascii	"lcd_display\000"
.LASF111:
	.ascii	"__RAL_codeset_utf8\000"
.LASF75:
	.ascii	"int_frac_digits\000"
.LASF205:
	.ascii	"dRight\000"
.LASF215:
	.ascii	"IMU_read\000"
.LASF168:
	.ascii	"xCommandReadyBSem\000"
.LASF169:
	.ascii	"mutex_spi\000"
.LASF36:
	.ascii	"NRFX_DRV_STATE_INITIALIZED\000"
.LASF35:
	.ascii	"NRFX_DRV_STATE_UNINITIALIZED\000"
.LASF154:
	.ascii	"queue_display\000"
.LASF29:
	.ascii	"rotation\000"
.LASF80:
	.ascii	"n_sep_by_space\000"
.LASF133:
	.ascii	"__RAL_FILE\000"
.LASF152:
	.ascii	"nrf_gfx_font_desc_t\000"
.LASF211:
	.ascii	"accelFX\000"
.LASF212:
	.ascii	"accelFY\000"
.LASF120:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF13:
	.ascii	"lcd_init\000"
.LASF116:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF70:
	.ascii	"mon_decimal_point\000"
.LASF73:
	.ascii	"positive_sign\000"
.LASF62:
	.ascii	"__wctomb\000"
.LASF65:
	.ascii	"decimal_point\000"
.LASF178:
	.ascii	"gY_hat\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
