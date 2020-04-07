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
	.file	"MainComTask.c"
	.text
.Ltext0:
	.section	.rodata.vMainCommunicationTask.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"success: %d\000"
	.align	2
.LC1:
	.ascii	"Handshake Completed\000"
	.align	2
.LC2:
	.ascii	"NEW Command in\000"
	.align	2
.LC3:
	.ascii	"MESSAGE WAS: TYPE_CONFIRM\000"
	.align	2
.LC4:
	.ascii	"MESSAGE WAS: TYPE_PING\000"
	.align	2
.LC5:
	.ascii	"MESSAGE WAS: TYPE_ORDER x: %d,Y:%d\000"
	.align	2
.LC6:
	.ascii	"MESSAGE WAS: TYPE_PAUSE\000"
	.align	2
.LC7:
	.ascii	"MESSAGE WAS: TYPE_UNPAUSE\000"
	.align	2
.LC8:
	.ascii	"MESSAGE WAS: TYPE_FINISH\000"
	.align	2
.LC9:
	.ascii	"message:case default No type %d\000"
	.align	2
.LC10:
	.ascii	"xPoseMutex not available!\000"
	.section	.text.vMainCommunicationTask,"ax",%progbits
	.align	1
	.global	vMainCommunicationTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vMainCommunicationTask, %function
vMainCommunicationTask:
.LVL0:
.LFB267:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\software\\MainComTask.c"
	.loc 1 27 48 view -0
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 27 48 is_stmt 0 view .LVU1
	push	{r4, r5, r6, lr}
.LCFI0:
	sub	sp, sp, #48
.LCFI1:
	.loc 1 28 5 is_stmt 1 view .LVU2
	.loc 1 28 23 is_stmt 0 view .LVU3
	movs	r3, #0
	str	r3, [sp, #40]	@ float
	str	r3, [sp, #44]	@ float
	.loc 1 30 5 is_stmt 1 view .LVU4
	.loc 1 30 8 is_stmt 0 view .LVU5
	ldr	r3, .L23
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 30 7 view .LVU6
	cmp	r3, #0
	beq	.L2
.LBB2:
	.loc 1 31 3 is_stmt 1 view .LVU7
	.loc 1 32 3 view .LVU8
	bl	server_communication_init
.LVL1:
	.loc 1 33 3 view .LVU9
	ldr	r3, .L23+4
	ldr	r0, [r3]
	bl	vTaskResume
.LVL2:
	.loc 1 35 3 view .LVU10
	.loc 1 37 3 view .LVU11
	.loc 1 35 11 is_stmt 0 view .LVU12
	movs	r4, #0
	.loc 1 37 9 view .LVU13
	b	.L3
.LVL3:
.L4:
	.loc 1 38 4 is_stmt 1 view .LVU14
	.loc 1 38 14 is_stmt 0 view .LVU15
	bl	server_connect
.LVL4:
	mov	r4, r0
.LVL5:
	.loc 1 39 4 is_stmt 1 view .LVU16
	mov	r0, #1000
	bl	vTaskDelay
.LVL6:
.L3:
	.loc 1 37 9 view .LVU17
	cmp	r4, #0
	beq	.L4
	.loc 1 42 3 discriminator 3 view .LVU18
	.loc 1 42 76 discriminator 3 view .LVU19
	.loc 1 42 131 discriminator 3 view .LVU20
	.loc 1 42 212 is_stmt 0 discriminator 3 view .LVU21
	ldr	r5, .L23+8
	ldrh	r0, [r5]
	.loc 1 42 223 discriminator 3 view .LVU22
	lsls	r0, r0, #16
	.loc 1 42 131 discriminator 3 view .LVU23
	mov	r2, r4
	ldr	r1, .L23+12
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL7:
	.loc 1 42 271 is_stmt 1 discriminator 3 view .LVU24
	.loc 1 43 3 discriminator 3 view .LVU25
	movs	r0, #200
	bl	vTaskDelay
.LVL8:
	.loc 1 44 3 discriminator 3 view .LVU26
	bl	send_handshake
.LVL9:
	.loc 1 45 3 discriminator 3 view .LVU27
	.loc 1 45 76 discriminator 3 view .LVU28
	.loc 1 45 131 discriminator 3 view .LVU29
	.loc 1 45 212 is_stmt 0 discriminator 3 view .LVU30
	ldrh	r0, [r5]
	.loc 1 45 223 discriminator 3 view .LVU31
	lsls	r0, r0, #16
	.loc 1 45 131 discriminator 3 view .LVU32
	ldr	r1, .L23+16
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL10:
	b	.L6
.LVL11:
.L11:
	.loc 1 58 6 is_stmt 1 discriminator 3 view .LVU33
	.loc 1 58 79 discriminator 3 view .LVU34
	.loc 1 58 134 discriminator 3 view .LVU35
	.loc 1 58 215 is_stmt 0 discriminator 3 view .LVU36
	ldr	r3, .L23+8
	ldrh	r0, [r3]
	.loc 1 58 226 discriminator 3 view .LVU37
	lsls	r0, r0, #16
	.loc 1 58 134 discriminator 3 view .LVU38
	ldr	r1, .L23+20
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL12:
	.loc 1 58 267 is_stmt 1 discriminator 3 view .LVU39
	.loc 1 60 6 discriminator 3 view .LVU40
	.loc 1 60 17 is_stmt 0 discriminator 3 view .LVU41
	ldr	r3, .L23+24
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 63 6 is_stmt 1 discriminator 3 view .LVU42
.L6:
	.loc 1 45 258 discriminator 5 view .LVU43
	.loc 1 46 3 discriminator 5 view .LVU44
	.loc 1 48 4 discriminator 5 view .LVU45
	.loc 1 48 8 is_stmt 0 discriminator 5 view .LVU46
	mov	r1, #-1
	ldr	r3, .L23+28
	ldr	r0, [r3]
	bl	xQueueSemaphoreTake
.LVL13:
	.loc 1 48 7 discriminator 5 view .LVU47
	cmp	r0, #1
	bne	.L6
	.loc 1 49 5 is_stmt 1 discriminator 3 view .LVU48
	.loc 1 49 78 discriminator 3 view .LVU49
	.loc 1 49 133 discriminator 3 view .LVU50
	.loc 1 49 214 is_stmt 0 discriminator 3 view .LVU51
	ldr	r3, .L23+8
	ldrh	r0, [r3]
	.loc 1 49 225 discriminator 3 view .LVU52
	lsls	r0, r0, #16
	.loc 1 49 133 discriminator 3 view .LVU53
	ldr	r1, .L23+32
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL14:
	.loc 1 49 255 is_stmt 1 discriminator 3 view .LVU54
	.loc 1 53 5 discriminator 3 view .LVU55
	.loc 1 53 16 is_stmt 0 discriminator 3 view .LVU56
	add	r4, sp, #12
	ldr	r5, .L23+36
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2}
	stmia	r4!, {r0, r1}
	strh	r2, [r4]	@ movhi
	.loc 1 56 5 is_stmt 1 discriminator 3 view .LVU57
	.loc 1 56 23 is_stmt 0 discriminator 3 view .LVU58
	ldrb	r2, [sp, #12]	@ zero_extendqisi2
	subs	r3, r2, #2
	cmp	r3, #6
	bhi	.L7
	adr	r1, .L9
	ldr	pc, [r1, r3, lsl #2]
	.p2align 2
.L9:
	.word	.L14+1
	.word	.L7+1
	.word	.L13+1
	.word	.L12+1
	.word	.L11+1
	.word	.L10+1
	.word	.L8+1
	.p2align 1
.L8:
	.loc 1 66 6 is_stmt 1 discriminator 3 view .LVU59
	.loc 1 66 79 discriminator 3 view .LVU60
	.loc 1 66 134 discriminator 3 view .LVU61
	.loc 1 66 215 is_stmt 0 discriminator 3 view .LVU62
	ldr	r3, .L23+8
	ldrh	r0, [r3]
	.loc 1 66 226 discriminator 3 view .LVU63
	lsls	r0, r0, #16
	.loc 1 66 134 discriminator 3 view .LVU64
	ldr	r1, .L23+40
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL15:
	.loc 1 66 264 is_stmt 1 discriminator 3 view .LVU65
	.loc 1 67 6 discriminator 3 view .LVU66
	bl	send_ping_response
.LVL16:
	.loc 1 68 6 discriminator 3 view .LVU67
	b	.L6
.L14:
	.loc 1 71 6 discriminator 3 view .LVU68
	.loc 1 71 79 discriminator 3 view .LVU69
	.loc 1 71 134 discriminator 3 view .LVU70
	.loc 1 71 215 is_stmt 0 discriminator 3 view .LVU71
	ldr	r3, .L23+8
	ldrh	r0, [r3]
	.loc 1 71 226 discriminator 3 view .LVU72
	lsls	r0, r0, #16
	.loc 1 71 307 discriminator 3 view .LVU73
	ldrsh	r5, [sp, #13]	@ unaligned
	.loc 1 71 347 discriminator 3 view .LVU74
	ldrsh	r4, [sp, #15]	@ unaligned
	.loc 1 71 134 discriminator 3 view .LVU75
	mov	r3, r4
	mov	r2, r5
	ldr	r1, .L23+44
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_2
.LVL17:
	.loc 1 71 356 is_stmt 1 discriminator 3 view .LVU76
	.loc 1 72 6 discriminator 3 view .LVU77
	.loc 1 72 17 is_stmt 0 discriminator 3 view .LVU78
	vmov	s15, r5	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [sp, #40]
	.loc 1 73 6 is_stmt 1 discriminator 3 view .LVU79
	.loc 1 73 17 is_stmt 0 discriminator 3 view .LVU80
	vmov	s15, r4	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [sp, #44]
	.loc 1 75 6 is_stmt 1 discriminator 3 view .LVU81
	movs	r3, #0
	movs	r2, #100
	add	r1, sp, #40
	ldr	r0, .L23+48
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL18:
	.loc 1 76 6 discriminator 3 view .LVU82
	b	.L6
.L13:
	.loc 1 79 6 discriminator 3 view .LVU83
	.loc 1 79 79 discriminator 3 view .LVU84
	.loc 1 79 134 discriminator 3 view .LVU85
	.loc 1 79 215 is_stmt 0 discriminator 3 view .LVU86
	ldr	r3, .L23+8
	ldrh	r0, [r3]
	.loc 1 79 226 discriminator 3 view .LVU87
	lsls	r0, r0, #16
	.loc 1 79 134 discriminator 3 view .LVU88
	ldr	r1, .L23+52
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL19:
	.loc 1 79 265 is_stmt 1 discriminator 3 view .LVU89
	.loc 1 82 6 discriminator 3 view .LVU90
	.loc 1 82 14 is_stmt 0 discriminator 3 view .LVU91
	ldr	r3, .L23+56
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 85 6 is_stmt 1 discriminator 3 view .LVU92
	.loc 1 85 17 is_stmt 0 discriminator 3 view .LVU93
	movs	r3, #0
	str	r3, [sp, #40]	@ float
	.loc 1 86 6 is_stmt 1 discriminator 3 view .LVU94
	.loc 1 86 17 is_stmt 0 discriminator 3 view .LVU95
	str	r3, [sp, #44]	@ float
	.loc 1 87 6 is_stmt 1 discriminator 3 view .LVU96
	movs	r3, #0
	movs	r2, #100
	add	r1, sp, #40
	ldr	r0, .L23+48
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL20:
	.loc 1 88 6 discriminator 3 view .LVU97
	b	.L6
.L12:
	.loc 1 91 6 discriminator 3 view .LVU98
	.loc 1 91 79 discriminator 3 view .LVU99
	.loc 1 91 134 discriminator 3 view .LVU100
	.loc 1 91 215 is_stmt 0 discriminator 3 view .LVU101
	ldr	r3, .L23+8
	ldrh	r0, [r3]
	.loc 1 91 226 discriminator 3 view .LVU102
	lsls	r0, r0, #16
	.loc 1 91 134 discriminator 3 view .LVU103
	ldr	r1, .L23+60
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL21:
	.loc 1 91 267 is_stmt 1 discriminator 3 view .LVU104
	.loc 1 93 6 discriminator 3 view .LVU105
	.loc 1 93 14 is_stmt 0 discriminator 3 view .LVU106
	ldr	r3, .L23+56
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 95 6 is_stmt 1 discriminator 3 view .LVU107
	b	.L6
.L10:
	.loc 1 98 6 discriminator 3 view .LVU108
	.loc 1 98 79 discriminator 3 view .LVU109
	.loc 1 98 134 discriminator 3 view .LVU110
	.loc 1 98 215 is_stmt 0 discriminator 3 view .LVU111
	ldr	r3, .L23+8
	ldrh	r0, [r3]
	.loc 1 98 226 discriminator 3 view .LVU112
	lsls	r0, r0, #16
	.loc 1 98 134 discriminator 3 view .LVU113
	ldr	r1, .L23+64
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL22:
	.loc 1 98 266 is_stmt 1 discriminator 3 view .LVU114
	.loc 1 100 6 discriminator 3 view .LVU115
	.loc 1 100 17 is_stmt 0 discriminator 3 view .LVU116
	ldr	r3, .L23+24
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 102 6 is_stmt 1 discriminator 3 view .LVU117
	b	.L6
.L7:
	.loc 1 105 6 discriminator 3 view .LVU118
	.loc 1 105 79 discriminator 3 view .LVU119
	.loc 1 105 134 discriminator 3 view .LVU120
	.loc 1 105 215 is_stmt 0 discriminator 3 view .LVU121
	ldr	r3, .L23+8
	ldrh	r0, [r3]
	.loc 1 105 226 discriminator 3 view .LVU122
	lsls	r0, r0, #16
	.loc 1 105 134 discriminator 3 view .LVU123
	ldr	r1, .L23+68
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL23:
	b	.L6
.L16:
	.loc 1 105 134 discriminator 3 view .LVU124
.LBE2:
.LBB3:
	.loc 1 122 6 is_stmt 1 view .LVU125
	.loc 1 122 9 is_stmt 0 view .LVU126
	movs	r1, #20
	ldr	r3, .L23+72
	ldr	r0, [r3]
	bl	xQueueSemaphoreTake
.LVL24:
	.loc 1 122 8 view .LVU127
	cmp	r0, #1
	beq	.L22
	.loc 1 128 7 is_stmt 1 discriminator 3 view .LVU128
	.loc 1 128 86 discriminator 3 view .LVU129
	.loc 1 128 144 discriminator 3 view .LVU130
	.loc 1 128 228 is_stmt 0 discriminator 3 view .LVU131
	ldr	r3, .L23+8
	ldrh	r0, [r3]
	.loc 1 128 239 discriminator 3 view .LVU132
	lsls	r0, r0, #16
	.loc 1 128 144 discriminator 3 view .LVU133
	ldr	r1, .L23+76
	orr	r0, r0, #2
	bl	nrf_log_frontend_std_0
.LVL25:
	b	.L18
.L22:
	.loc 1 123 7 is_stmt 1 view .LVU134
	.loc 1 123 16 is_stmt 0 view .LVU135
	ldrsh	r2, [sp, #5]	@ unaligned
	.loc 1 123 14 view .LVU136
	ldr	r3, .L23+80
	strh	r2, [r3]	@ movhi
	.loc 1 124 7 is_stmt 1 view .LVU137
	.loc 1 124 16 is_stmt 0 view .LVU138
	ldrsh	r2, [sp, #7]	@ unaligned
	.loc 1 124 14 view .LVU139
	ldr	r3, .L23+84
	strh	r2, [r3]	@ movhi
	.loc 1 126 7 is_stmt 1 view .LVU140
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, .L23+72
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL26:
	b	.L18
.L20:
.LBB4:
	.loc 1 143 7 view .LVU141
	.loc 1 143 25 is_stmt 0 view .LVU142
	ldr	r3, .L23+88
	smull	r1, r2, r3, r4
	asrs	r4, r4, #31
	rsb	r4, r4, r2, asr #2
	sxth	r4, r4
	vmov	s15, r4	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [sp, #12]
	smull	r2, r3, r3, r5
	asrs	r5, r5, #31
	rsb	r5, r5, r3, asr #2
	sxth	r5, r5
	vmov	s15, r5	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [sp, #16]
	.loc 1 144 7 is_stmt 1 view .LVU143
	movs	r3, #0
	movs	r2, #100
	add	r1, sp, #12
	ldr	r0, .L23+48
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL27:
.L18:
.LBE4:
	.loc 1 153 326 discriminator 5 view .LVU144
	.loc 1 156 4 discriminator 5 view .LVU145
	.loc 1 156 12 is_stmt 0 discriminator 5 view .LVU146
	ldr	r3, .L23+92
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 157 4 is_stmt 1 discriminator 5 view .LVU147
	movs	r0, #100
	bl	vTaskDelay
.LVL28:
.LBE3:
	.loc 1 111 8 discriminator 5 view .LVU148
.L2:
	.loc 1 111 3 view .LVU149
.LBB5:
	.loc 1 112 4 view .LVU150
	.loc 1 112 11 is_stmt 0 view .LVU151
	ldr	r2, .L23+92
	ldrb	r3, [r2]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r2]
	.loc 1 113 4 is_stmt 1 view .LVU152
	.loc 1 113 12 is_stmt 0 view .LVU153
	movs	r3, #0
	str	r3, [sp, #4]
	strb	r3, [sp, #8]
	.loc 1 114 4 is_stmt 1 view .LVU154
	.loc 1 115 4 view .LVU155
	.loc 1 116 4 view .LVU156
	.loc 1 117 4 view .LVU157
	movs	r2, #5
	add	r1, sp, #4
	movs	r0, #114
	bl	i2cReciveNOADDR
.LVL29:
	.loc 1 119 4 view .LVU158
	.loc 1 119 18 is_stmt 0 view .LVU159
	ldrb	r3, [sp, #4]	@ zero_extendqisi2
	.loc 1 119 4 view .LVU160
	cmp	r3, #1
	beq	.L16
	cmp	r3, #114
	bne	.L18
	.loc 1 133 6 is_stmt 1 view .LVU161
	.loc 1 134 6 view .LVU162
	.loc 1 135 6 view .LVU163
	.loc 1 135 20 is_stmt 0 view .LVU164
	ldrsh	r4, [sp, #5]	@ unaligned
	.loc 1 136 6 is_stmt 1 view .LVU165
	.loc 1 136 20 is_stmt 0 view .LVU166
	ldrsh	r5, [sp, #7]	@ unaligned
	.loc 1 137 6 is_stmt 1 view .LVU167
	ldr	r6, .L23+96
	movs	r1, #20
	ldr	r0, [r6]
	bl	xQueueSemaphoreTake
.LVL30:
	.loc 1 138 6 view .LVU168
	movs	r2, #4
	ldr	r1, .L23+100
	mov	r0, sp
	bl	memcpy
.LVL31:
	.loc 1 139 6 view .LVU169
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, [r6]
	bl	xQueueGenericSend
.LVL32:
	.loc 1 142 6 view .LVU170
	.loc 1 142 8 is_stmt 0 view .LVU171
	cmp	r4, #0
	bne	.L20
	.loc 1 142 39 discriminator 1 view .LVU172
	cmp	r5, #0
	beq	.L18
	b	.L20
.L24:
	.align	2
.L23:
	.word	USEBLUETOOTH
	.word	arq_task
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC0
	.word	.LC1
	.word	.LC3
	.word	gHandshook
	.word	xCommandReadyBSem
	.word	.LC2
	.word	.LANCHOR0
	.word	.LC4
	.word	.LC5
	.word	poseControllerQ
	.word	.LC6
	.word	gPaused
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	xPoseMutex
	.word	.LC10
	.word	gX_hat
	.word	gY_hat
	.word	1717986919
	.word	.LANCHOR1
	.word	xCollisionMutex
	.word	.LANCHOR2
.LBE5:
.LFE267:
	.size	vMainCommunicationTask, .-vMainCommunicationTask
	.global	counter
	.global	message_in
	.global	collisionAngles
	.section	.bss.counter,"aw",%nobits
	.set	.LANCHOR1,. + 0
	.type	counter, %object
	.size	counter, 1
counter:
	.space	1
	.section	.bss.message_in,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	message_in, %object
	.size	message_in, 26
message_in:
	.space	26
	.section	.data.collisionAngles,"aw"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	collisionAngles, %object
	.size	collisionAngles, 4
collisionAngles:
	.ascii	"\220\000"
	.space	2
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
	.4byte	.LFB267
	.4byte	.LFE267-.LFB267
	.byte	0x4
	.4byte	.LCFI0-.LFB267
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x4
	.byte	0x85
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x40
	.align	2
.LEFDE0:
	.text
.Letext0:
	.file 2 "../../../../../../modules/nrfx/hal/nrf_twi.h"
	.section	.debug_types,"G",%progbits,wt.7d73537074c8c646,comdat
	.4byte	0x4b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x7d
	.byte	0x73
	.byte	0x53
	.byte	0x70
	.byte	0x74
	.byte	0xc8
	.byte	0xc6
	.byte	0x46
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x47
	.byte	0x2
	.byte	0x84
	.byte	0x1
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF0
	.4byte	0x1980000
	.uleb128 0x3
	.4byte	.LASF1
	.4byte	0x4000000
	.uleb128 0x3
	.4byte	.LASF2
	.4byte	0x6680000
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.byte	0
	.file 3 "../../../../../../components/libraries/experimental_log/nrf_log_types.h"
	.file 4 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.byte	0x4c
	.byte	0x9
	.4byte	0x41
	.uleb128 0x6
	.4byte	.LASF4
	.byte	0x3
	.byte	0x4e
	.byte	0xe
	.4byte	0x41
	.byte	0
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4f
	.byte	0xe
	.4byte	0x41
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x36
	.byte	0x18
	.4byte	0x4d
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0
	.section	.debug_types,"G",%progbits,wt.bafe518d4778ea9e,comdat
	.4byte	0x54
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xba
	.byte	0xfe
	.byte	0x51
	.byte	0x8d
	.byte	0x47
	.byte	0x78
	.byte	0xea
	.byte	0x9e
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x7
	.byte	0x1
	.4byte	0x50
	.byte	0x3
	.byte	0x31
	.byte	0x1
	.4byte	0x50
	.uleb128 0x8
	.4byte	.LASF8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF9
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF10
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.file 5 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\software\\globals.h"
	.section	.debug_types,"G",%progbits,wt.983716c4a1013425,comdat
	.4byte	0x45
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x98
	.byte	0x37
	.byte	0x16
	.byte	0xc4
	.byte	0xa1
	.byte	0x1
	.byte	0x34
	.byte	0x25
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x8
	.byte	0x5
	.byte	0x41
	.byte	0x8
	.4byte	0x41
	.uleb128 0xa
	.ascii	"x\000"
	.byte	0x5
	.byte	0x42
	.byte	0xb
	.4byte	0x41
	.byte	0
	.uleb128 0xa
	.ascii	"y\000"
	.byte	0x5
	.byte	0x43
	.byte	0xb
	.4byte	0x41
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF15
	.byte	0
	.file 6 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
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
	.uleb128 0x5
	.byte	0xc
	.byte	0x6
	.byte	0x6d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x6
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x6
	.byte	0x70
	.byte	0x15
	.4byte	0x46
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0x4b
	.uleb128 0xb
	.4byte	0x5b
	.uleb128 0xc
	.4byte	0x46
	.4byte	0x5b
	.uleb128 0xd
	.4byte	0x67
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.byte	0
	.file 7 "../../../communication/server_communication.h"
	.section	.debug_types,"G",%progbits,wt.5752a6060baf580c,comdat
	.4byte	0x55
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x57
	.byte	0x52
	.byte	0xa6
	.byte	0x6
	.byte	0xb
	.byte	0xaf
	.byte	0x58
	.byte	0xc
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x1a
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.4byte	0x45
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x7
	.byte	0x43
	.byte	0xb
	.4byte	0x45
	.byte	0
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x7
	.byte	0x44
	.byte	0x11
	.byte	0xad
	.byte	0xc6
	.byte	0xcd
	.byte	0xd5
	.byte	0x62
	.byte	0xf1
	.byte	0xf8
	.byte	0x22
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x51
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.section	.debug_types,"G",%progbits,wt.adc6cdd562f1f822,comdat
	.4byte	0x7c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xad
	.byte	0xc6
	.byte	0xcd
	.byte	0xd5
	.byte	0x62
	.byte	0xf1
	.byte	0xf8
	.byte	0x22
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x19
	.byte	0x7
	.byte	0x3c
	.byte	0x7
	.4byte	0x4f
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x7
	.byte	0x3d
	.byte	0x14
	.4byte	0x4f
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x7
	.byte	0x3e
	.byte	0x17
	.4byte	0x5f
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x7
	.byte	0x3f
	.byte	0x13
	.4byte	0x6f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x7
	.byte	0x35
	.byte	0x1b
	.byte	0x80
	.byte	0x59
	.byte	0x5b
	.byte	0x36
	.byte	0x77
	.byte	0xbd
	.byte	0x2e
	.byte	0xe3
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x7
	.byte	0x2a
	.byte	0x1b
	.byte	0x83
	.byte	0x9f
	.byte	0xbb
	.byte	0x7b
	.byte	0x1b
	.byte	0xf7
	.byte	0xa0
	.byte	0x6b
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x7
	.byte	0x3a
	.byte	0x1b
	.byte	0x4d
	.byte	0xfb
	.byte	0xa4
	.byte	0xe0
	.byte	0x51
	.byte	0xbf
	.byte	0xd8
	.byte	0xe6
	.byte	0
	.section	.debug_types,"G",%progbits,wt.4dfba4e051bfd8e6,comdat
	.4byte	0x4d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x4d
	.byte	0xfb
	.byte	0xa4
	.byte	0xe0
	.byte	0x51
	.byte	0xbf
	.byte	0xd8
	.byte	0xe6
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.4byte	0x3d
	.uleb128 0xa
	.ascii	"x\000"
	.byte	0x7
	.byte	0x38
	.byte	0xb
	.4byte	0x3d
	.byte	0
	.uleb128 0xa
	.ascii	"y\000"
	.byte	0x7
	.byte	0x39
	.byte	0xb
	.4byte	0x3d
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.byte	0x35
	.byte	0x16
	.4byte	0x49
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF31
	.byte	0
	.section	.debug_types,"G",%progbits,wt.80595b3677bd2ee3,comdat
	.4byte	0xae
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x80
	.byte	0x59
	.byte	0x5b
	.byte	0x36
	.byte	0x77
	.byte	0xbd
	.byte	0x2e
	.byte	0xe3
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0xc
	.byte	0x7
	.byte	0x2c
	.byte	0x9
	.4byte	0x8b
	.uleb128 0xa
	.ascii	"x\000"
	.byte	0x7
	.byte	0x2d
	.byte	0xb
	.4byte	0x8b
	.byte	0
	.uleb128 0xa
	.ascii	"y\000"
	.byte	0x7
	.byte	0x2e
	.byte	0xb
	.4byte	0x8b
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x7
	.byte	0x2f
	.byte	0xb
	.4byte	0x8b
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x7
	.byte	0x30
	.byte	0xb
	.4byte	0x8b
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x7
	.byte	0x31
	.byte	0xb
	.4byte	0x97
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x7
	.byte	0x32
	.byte	0xb
	.4byte	0x97
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x7
	.byte	0x33
	.byte	0xb
	.4byte	0x97
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x7
	.byte	0x34
	.byte	0xb
	.4byte	0x97
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.byte	0x35
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0xaa
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF31
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.section	.debug_types,"G",%progbits,wt.839fbb7b1bf7a06b,comdat
	.4byte	0x131
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x83
	.byte	0x9f
	.byte	0xbb
	.byte	0x7b
	.byte	0x1b
	.byte	0xf7
	.byte	0xa0
	.byte	0x6b
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x19
	.byte	0x7
	.byte	0x19
	.byte	0x9
	.4byte	0xf7
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x7
	.byte	0x1a
	.byte	0xb
	.4byte	0xf7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x7
	.byte	0x1b
	.byte	0xb
	.4byte	0x103
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x7
	.byte	0x1c
	.byte	0xc
	.4byte	0x113
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x7
	.byte	0x1d
	.byte	0xc
	.4byte	0x113
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x7
	.byte	0x1e
	.byte	0xb
	.4byte	0xf7
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x7
	.byte	0x1f
	.byte	0xb
	.4byte	0xf7
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x7
	.byte	0x20
	.byte	0xb
	.4byte	0xf7
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x7
	.byte	0x21
	.byte	0xb
	.4byte	0xf7
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x7
	.byte	0x22
	.byte	0xb
	.4byte	0xf7
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x7
	.byte	0x23
	.byte	0xb
	.4byte	0xf7
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x7
	.byte	0x24
	.byte	0xb
	.4byte	0xf7
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x7
	.byte	0x25
	.byte	0xc
	.4byte	0x113
	.byte	0xf
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x7
	.byte	0x26
	.byte	0xc
	.4byte	0x113
	.byte	0x11
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x7
	.byte	0x27
	.byte	0xc
	.4byte	0x113
	.byte	0x13
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x7
	.byte	0x28
	.byte	0xc
	.4byte	0x113
	.byte	0x15
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x7
	.byte	0x29
	.byte	0xc
	.4byte	0x113
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x11f
	.uleb128 0xc
	.4byte	0xf7
	.4byte	0x113
	.uleb128 0xd
	.4byte	0x126
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x36
	.byte	0x18
	.4byte	0x12d
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0
	.file 8 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
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
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x8
	.byte	0x8
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0x8
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x8
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x8
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0x15
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x15
	.byte	0x4
	.4byte	0x61
	.uleb128 0x16
	.4byte	0x70
	.4byte	0x70
	.uleb128 0x17
	.4byte	0x76
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x19
	.4byte	0x82
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF58
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
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x14
	.byte	0x8
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x8
	.byte	0xdd
	.byte	0x19
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x48
	.4byte	0x48
	.uleb128 0xd
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x55
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x19
	.4byte	0x5a
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x8
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
	.uleb128 0x5
	.byte	0xc
	.byte	0x8
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x8
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x8
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x8
	.byte	0xd7
	.byte	0x21
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x60
	.uleb128 0x15
	.byte	0x4
	.4byte	0x65
	.uleb128 0x15
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x19
	.4byte	0x6f
	.uleb128 0x19
	.4byte	0x76
	.uleb128 0x19
	.4byte	0x86
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF58
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x8
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
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x8
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
	.uleb128 0x5
	.byte	0x20
	.byte	0x8
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x8
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x8
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0x8
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF69
	.byte	0x8
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF70
	.byte	0x8
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0x8
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0x8
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF73
	.byte	0x8
	.byte	0xd1
	.byte	0x9
	.4byte	0xad
	.byte	0x1c
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x15
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x15
	.byte	0x4
	.4byte	0xd6
	.uleb128 0x15
	.byte	0x4
	.4byte	0xea
	.uleb128 0x15
	.byte	0x4
	.4byte	0xf9
	.uleb128 0x15
	.byte	0x4
	.4byte	0x112
	.uleb128 0x16
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0x17
	.4byte	0x130
	.uleb128 0x17
	.4byte	0x130
	.byte	0
	.uleb128 0x16
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0x17
	.4byte	0x130
	.byte	0
	.uleb128 0x16
	.4byte	0x130
	.4byte	0xea
	.uleb128 0x17
	.4byte	0x137
	.uleb128 0x17
	.4byte	0x130
	.byte	0
	.uleb128 0x16
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0x17
	.4byte	0x137
	.byte	0
	.uleb128 0x16
	.4byte	0x130
	.4byte	0x112
	.uleb128 0x17
	.4byte	0x13e
	.uleb128 0x17
	.4byte	0x144
	.uleb128 0x17
	.4byte	0x14b
	.byte	0
	.uleb128 0x16
	.4byte	0x130
	.4byte	0x130
	.uleb128 0x17
	.4byte	0x155
	.uleb128 0x17
	.4byte	0x15b
	.uleb128 0x17
	.4byte	0x144
	.uleb128 0x17
	.4byte	0x14b
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF74
	.uleb128 0x15
	.byte	0x4
	.4byte	0x161
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x1a
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.uleb128 0x15
	.byte	0x4
	.4byte	0x144
	.uleb128 0x15
	.byte	0x4
	.4byte	0x168
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF58
	.uleb128 0x19
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
	.uleb128 0x5
	.byte	0x58
	.byte	0x8
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x6
	.4byte	.LASF75
	.byte	0x8
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF76
	.byte	0x8
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF77
	.byte	0x8
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF78
	.byte	0x8
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF79
	.byte	0x8
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF80
	.byte	0x8
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF81
	.byte	0x8
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF82
	.byte	0x8
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF83
	.byte	0x8
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF84
	.byte	0x8
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF85
	.byte	0x8
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF86
	.byte	0x8
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x6
	.4byte	.LASF87
	.byte	0x8
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x6
	.4byte	.LASF88
	.byte	0x8
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x6
	.4byte	.LASF89
	.byte	0x8
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF90
	.byte	0x8
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x8
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x6
	.4byte	.LASF92
	.byte	0x8
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0x8
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0x8
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x6
	.4byte	.LASF95
	.byte	0x8
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x6
	.4byte	.LASF96
	.byte	0x8
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0x8
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0x8
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x6
	.4byte	.LASF99
	.byte	0x8
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x6
	.4byte	.LASF100
	.byte	0x8
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x6
	.4byte	.LASF101
	.byte	0x8
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x6
	.4byte	.LASF102
	.byte	0x8
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x6
	.4byte	.LASF103
	.byte	0x8
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF104
	.byte	0x8
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0x8
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x6
	.4byte	.LASF106
	.byte	0x8
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF58
	.uleb128 0x19
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
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x8
	.byte	0x8
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x6
	.4byte	.LASF108
	.byte	0x8
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x6
	.4byte	.LASF109
	.byte	0x8
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF74
	.byte	0
	.file 9 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 10 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\software\\MainComTask.h"
	.file 11 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 12 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 13 "../../../../../../components/libraries/util/app_util.h"
	.file 14 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
	.file 15 "../../../../../../external/freertos/source/include/task.h"
	.file 16 "../../../../../../external/freertos/source/include/queue.h"
	.file 17 "../../../../../../external/freertos/source/include/semphr.h"
	.file 18 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
	.file 19 "../../../drivers/i2c.h"
	.file 20 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x922
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF209
	.byte	0xc
	.4byte	.LASF210
	.4byte	.LASF211
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x7
	.4byte	.LASF110
	.byte	0x4
	.byte	0x2f
	.byte	0x15
	.4byte	0x35
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF111
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x48
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x19
	.4byte	0x48
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.byte	0x35
	.byte	0x16
	.4byte	0x60
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF31
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x7
	.4byte	.LASF112
	.byte	0x4
	.byte	0x37
	.byte	0x14
	.4byte	0x7f
	.uleb128 0xb
	.4byte	0x6e
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x92
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF113
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF114
	.uleb128 0x1c
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF74
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF58
	.uleb128 0x19
	.4byte	0xb0
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x8
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
	.uleb128 0x19
	.4byte	0xbc
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x8
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
	.uleb128 0x19
	.4byte	0xd1
	.uleb128 0x1d
	.4byte	.LASF115
	.byte	0x8
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
	.uleb128 0x1e
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x10d
	.byte	0x1d
	.4byte	0xe1
	.uleb128 0x1e
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x110
	.byte	0x25
	.4byte	0xcc
	.uleb128 0x1e
	.4byte	.LASF118
	.byte	0x8
	.2byte	0x111
	.byte	0x25
	.4byte	0xcc
	.uleb128 0xc
	.4byte	0x4f
	.4byte	0x12e
	.uleb128 0xd
	.4byte	0x92
	.byte	0x7f
	.byte	0
	.uleb128 0x19
	.4byte	0x11e
	.uleb128 0x1e
	.4byte	.LASF119
	.byte	0x8
	.2byte	0x113
	.byte	0x1c
	.4byte	0x12e
	.uleb128 0xc
	.4byte	0xb7
	.4byte	0x14b
	.uleb128 0x1f
	.byte	0
	.uleb128 0x19
	.4byte	0x140
	.uleb128 0x1e
	.4byte	.LASF120
	.byte	0x8
	.2byte	0x115
	.byte	0x13
	.4byte	0x14b
	.uleb128 0x1e
	.4byte	.LASF121
	.byte	0x8
	.2byte	0x116
	.byte	0x13
	.4byte	0x14b
	.uleb128 0x1e
	.4byte	.LASF122
	.byte	0x8
	.2byte	0x117
	.byte	0x13
	.4byte	0x14b
	.uleb128 0x1e
	.4byte	.LASF123
	.byte	0x8
	.2byte	0x118
	.byte	0x13
	.4byte	0x14b
	.uleb128 0x1e
	.4byte	.LASF124
	.byte	0x8
	.2byte	0x11a
	.byte	0x13
	.4byte	0x14b
	.uleb128 0x1e
	.4byte	.LASF125
	.byte	0x8
	.2byte	0x11b
	.byte	0x13
	.4byte	0x14b
	.uleb128 0x1e
	.4byte	.LASF126
	.byte	0x8
	.2byte	0x11c
	.byte	0x13
	.4byte	0x14b
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0x8
	.2byte	0x11d
	.byte	0x13
	.4byte	0x14b
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0x8
	.2byte	0x11e
	.byte	0x13
	.4byte	0x14b
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0x8
	.2byte	0x11f
	.byte	0x13
	.4byte	0x14b
	.uleb128 0x16
	.4byte	0x7f
	.4byte	0x1e1
	.uleb128 0x17
	.4byte	0x1e1
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x1ec
	.uleb128 0x20
	.4byte	.LASF135
	.uleb128 0x19
	.4byte	0x1e7
	.uleb128 0x1e
	.4byte	.LASF130
	.byte	0x8
	.2byte	0x135
	.byte	0xe
	.4byte	0x1fe
	.uleb128 0x15
	.byte	0x4
	.4byte	0x1d2
	.uleb128 0x16
	.4byte	0x7f
	.4byte	0x213
	.uleb128 0x17
	.4byte	0x213
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x1e7
	.uleb128 0x1e
	.4byte	.LASF131
	.byte	0x8
	.2byte	0x136
	.byte	0xe
	.4byte	0x226
	.uleb128 0x15
	.byte	0x4
	.4byte	0x204
	.uleb128 0x21
	.4byte	.LASF132
	.byte	0x8
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
	.uleb128 0x1e
	.4byte	.LASF133
	.byte	0x8
	.2byte	0x157
	.byte	0x1f
	.4byte	0x24a
	.uleb128 0x15
	.byte	0x4
	.4byte	0x22c
	.uleb128 0x14
	.4byte	.LASF134
	.byte	0x9
	.2byte	0x317
	.byte	0x1b
	.4byte	0x25d
	.uleb128 0x20
	.4byte	.LASF136
	.uleb128 0x1e
	.4byte	.LASF137
	.byte	0x9
	.2byte	0x31b
	.byte	0xe
	.4byte	0x26f
	.uleb128 0x15
	.byte	0x4
	.4byte	0x250
	.uleb128 0x1e
	.4byte	.LASF138
	.byte	0x9
	.2byte	0x31c
	.byte	0xe
	.4byte	0x26f
	.uleb128 0x1e
	.4byte	.LASF139
	.byte	0x9
	.2byte	0x31d
	.byte	0xe
	.4byte	0x26f
	.uleb128 0xc
	.4byte	0x29
	.4byte	0x29f
	.uleb128 0xd
	.4byte	0x92
	.byte	0x3
	.byte	0
	.uleb128 0x22
	.4byte	.LASF140
	.byte	0xa
	.byte	0xe
	.byte	0xf
	.4byte	0x28f
	.uleb128 0x11
	.4byte	.LASF141
	.byte	0x7
	.byte	0x45
	.byte	0x1b
	.byte	0x57
	.byte	0x52
	.byte	0xa6
	.byte	0x6
	.byte	0xb
	.byte	0xaf
	.byte	0x58
	.byte	0xc
	.uleb128 0x1e
	.4byte	.LASF142
	.byte	0xb
	.2byte	0x744
	.byte	0x19
	.4byte	0x7a
	.uleb128 0x22
	.4byte	.LASF143
	.byte	0xc
	.byte	0x21
	.byte	0x11
	.4byte	0x86
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0x6
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
	.uleb128 0x22
	.4byte	.LASF145
	.byte	0x6
	.byte	0x75
	.byte	0x19
	.4byte	0x2d4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF146
	.uleb128 0x22
	.4byte	.LASF147
	.byte	0xd
	.byte	0x53
	.byte	0x11
	.4byte	0x86
	.uleb128 0x22
	.4byte	.LASF148
	.byte	0xd
	.byte	0x54
	.byte	0x11
	.4byte	0x86
	.uleb128 0x22
	.4byte	.LASF149
	.byte	0xd
	.byte	0x72
	.byte	0x13
	.4byte	0x31b
	.uleb128 0x15
	.byte	0x4
	.4byte	0x86
	.uleb128 0x22
	.4byte	.LASF150
	.byte	0xd
	.byte	0x73
	.byte	0x11
	.4byte	0x86
	.uleb128 0x7
	.4byte	.LASF151
	.byte	0xe
	.byte	0x39
	.byte	0xe
	.4byte	0xa9
	.uleb128 0x7
	.4byte	.LASF152
	.byte	0xe
	.byte	0x40
	.byte	0x16
	.4byte	0x86
	.uleb128 0x7
	.4byte	.LASF153
	.byte	0xf
	.byte	0x3e
	.byte	0x10
	.4byte	0xa7
	.uleb128 0x7
	.4byte	.LASF154
	.byte	0x10
	.byte	0x2f
	.byte	0x10
	.4byte	0xa7
	.uleb128 0x7
	.4byte	.LASF155
	.byte	0x11
	.byte	0x26
	.byte	0x17
	.4byte	0x351
	.uleb128 0x22
	.4byte	.LASF156
	.byte	0x5
	.byte	0x11
	.byte	0x15
	.4byte	0x345
	.uleb128 0x22
	.4byte	.LASF157
	.byte	0x5
	.byte	0x12
	.byte	0x5
	.4byte	0x345
	.uleb128 0x22
	.4byte	.LASF158
	.byte	0x5
	.byte	0x13
	.byte	0x5
	.4byte	0x345
	.uleb128 0x22
	.4byte	.LASF159
	.byte	0x5
	.byte	0x14
	.byte	0x5
	.4byte	0x345
	.uleb128 0x22
	.4byte	.LASF160
	.byte	0x5
	.byte	0x15
	.byte	0x5
	.4byte	0x345
	.uleb128 0x22
	.4byte	.LASF161
	.byte	0x5
	.byte	0x16
	.byte	0x5
	.4byte	0x345
	.uleb128 0x22
	.4byte	.LASF162
	.byte	0x5
	.byte	0x17
	.byte	0x5
	.4byte	0x345
	.uleb128 0x22
	.4byte	.LASF163
	.byte	0x5
	.byte	0x18
	.byte	0x5
	.4byte	0x345
	.uleb128 0x22
	.4byte	.LASF164
	.byte	0x5
	.byte	0x1b
	.byte	0x1a
	.4byte	0x35d
	.uleb128 0x22
	.4byte	.LASF165
	.byte	0x5
	.byte	0x1c
	.byte	0x1a
	.4byte	0x35d
	.uleb128 0x22
	.4byte	.LASF166
	.byte	0x5
	.byte	0x1d
	.byte	0x1a
	.4byte	0x35d
	.uleb128 0x22
	.4byte	.LASF167
	.byte	0x5
	.byte	0x1e
	.byte	0x1a
	.4byte	0x35d
	.uleb128 0x22
	.4byte	.LASF168
	.byte	0x5
	.byte	0x1f
	.byte	0x1a
	.4byte	0x35d
	.uleb128 0x22
	.4byte	.LASF169
	.byte	0x5
	.byte	0x20
	.byte	0x1a
	.4byte	0x35d
	.uleb128 0x22
	.4byte	.LASF170
	.byte	0x5
	.byte	0x21
	.byte	0x1a
	.4byte	0x35d
	.uleb128 0x22
	.4byte	.LASF171
	.byte	0x5
	.byte	0x25
	.byte	0x16
	.4byte	0x351
	.uleb128 0x22
	.4byte	.LASF172
	.byte	0x5
	.byte	0x26
	.byte	0x16
	.4byte	0x351
	.uleb128 0x22
	.4byte	.LASF173
	.byte	0x5
	.byte	0x27
	.byte	0x16
	.4byte	0x351
	.uleb128 0x22
	.4byte	.LASF174
	.byte	0x5
	.byte	0x2a
	.byte	0x10
	.4byte	0x3c
	.uleb128 0x22
	.4byte	.LASF175
	.byte	0x5
	.byte	0x2b
	.byte	0x10
	.4byte	0x3c
	.uleb128 0x22
	.4byte	.LASF176
	.byte	0x5
	.byte	0x2d
	.byte	0x10
	.4byte	0x3c
	.uleb128 0x22
	.4byte	.LASF177
	.byte	0x5
	.byte	0x30
	.byte	0xe
	.4byte	0x471
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x22
	.4byte	.LASF178
	.byte	0x5
	.byte	0x31
	.byte	0x10
	.4byte	0x54
	.uleb128 0x22
	.4byte	.LASF179
	.byte	0x5
	.byte	0x32
	.byte	0x10
	.4byte	0x54
	.uleb128 0x22
	.4byte	.LASF180
	.byte	0x5
	.byte	0x33
	.byte	0xe
	.4byte	0x471
	.uleb128 0x22
	.4byte	.LASF181
	.byte	0x5
	.byte	0x34
	.byte	0xe
	.4byte	0x471
	.uleb128 0x22
	.4byte	.LASF182
	.byte	0x5
	.byte	0x37
	.byte	0x10
	.4byte	0x54
	.uleb128 0x22
	.4byte	.LASF183
	.byte	0x5
	.byte	0x38
	.byte	0x10
	.4byte	0x54
	.uleb128 0x11
	.4byte	.LASF184
	.byte	0x3
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
	.uleb128 0x1e
	.4byte	.LASF185
	.byte	0x12
	.2byte	0x124
	.byte	0x2e
	.4byte	0x4c0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF186
	.uleb128 0x23
	.4byte	0x29f
	.byte	0x1
	.byte	0x14
	.byte	0x8
	.uleb128 0x5
	.byte	0x3
	.4byte	collisionAngles
	.uleb128 0x24
	.4byte	.LASF187
	.byte	0x1
	.byte	0x16
	.byte	0xb
	.4byte	0x2ab
	.uleb128 0x5
	.byte	0x3
	.4byte	message_in
	.uleb128 0x24
	.4byte	.LASF188
	.byte	0x1
	.byte	0x18
	.byte	0x9
	.4byte	0x3c
	.uleb128 0x5
	.byte	0x3
	.4byte	counter
	.uleb128 0x25
	.4byte	.LASF212
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	.LFB267
	.4byte	.LFE267-.LFB267
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x859
	.uleb128 0x26
	.4byte	.LASF213
	.byte	0x1
	.byte	0x1b
	.byte	0x23
	.4byte	0xa7
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x27
	.4byte	.LASF189
	.byte	0x1
	.byte	0x1c
	.byte	0x17
	.4byte	0x91c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x71c
	.uleb128 0x27
	.4byte	.LASF190
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.4byte	0x2ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.4byte	.LASF191
	.byte	0x1
	.byte	0x23
	.byte	0xb
	.4byte	0x3c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2a
	.4byte	.LVL1
	.4byte	0x879
	.uleb128 0x2a
	.4byte	.LVL2
	.4byte	0x885
	.uleb128 0x2a
	.4byte	.LVL4
	.4byte	0x892
	.uleb128 0x2b
	.4byte	.LVL6
	.4byte	0x89e
	.4byte	0x5af
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL7
	.4byte	0x8ab
	.4byte	0x5cc
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL8
	.4byte	0x89e
	.4byte	0x5e0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL9
	.4byte	0x8b8
	.uleb128 0x2b
	.4byte	.LVL10
	.4byte	0x8c4
	.4byte	0x600
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL12
	.4byte	0x8c4
	.4byte	0x617
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL13
	.4byte	0x8d1
	.4byte	0x62b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL14
	.4byte	0x8c4
	.4byte	0x642
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL15
	.4byte	0x8c4
	.4byte	0x659
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL16
	.4byte	0x8de
	.uleb128 0x2b
	.4byte	.LVL17
	.4byte	0x8ea
	.4byte	0x685
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL18
	.4byte	0x8f7
	.4byte	0x6a4
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL19
	.4byte	0x8c4
	.4byte	0x6bb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL20
	.4byte	0x8f7
	.4byte	0x6da
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL21
	.4byte	0x8c4
	.4byte	0x6f1
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL22
	.4byte	0x8c4
	.4byte	0x708
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL23
	.4byte	0x8ab
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x27
	.4byte	.LASF21
	.byte	0x1
	.byte	0x71
	.byte	0xc
	.4byte	0x859
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.4byte	.LASF192
	.byte	0x1
	.byte	0x72
	.byte	0xc
	.4byte	0x869
	.uleb128 0x2f
	.4byte	.LASF193
	.byte	0x1
	.byte	0x73
	.byte	0xc
	.4byte	0x869
	.uleb128 0x27
	.4byte	.LASF194
	.byte	0x1
	.byte	0x74
	.byte	0xb
	.4byte	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x78f
	.uleb128 0x27
	.4byte	.LASF195
	.byte	0x1
	.byte	0x8f
	.byte	0x19
	.4byte	0x91c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.4byte	.LVL27
	.4byte	0x8f7
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL24
	.4byte	0x8d1
	.4byte	0x7a2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL25
	.4byte	0x8c4
	.4byte	0x7b9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL26
	.4byte	0x8f7
	.4byte	0x7d6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL28
	.4byte	0x89e
	.4byte	0x7ea
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL29
	.4byte	0x904
	.4byte	0x809
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL30
	.4byte	0x8d1
	.4byte	0x81c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL31
	.4byte	0x910
	.4byte	0x83e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL32
	.4byte	0x8f7
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x3c
	.4byte	0x869
	.uleb128 0xd
	.4byte	0x92
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	0x54
	.4byte	0x879
	.uleb128 0xd
	.4byte	0x92
	.byte	0x1
	.byte	0
	.uleb128 0x30
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0x7
	.byte	0x47
	.byte	0x6
	.uleb128 0x31
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0xf
	.2byte	0x451
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0x7
	.byte	0x48
	.byte	0x9
	.uleb128 0x31
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0xf
	.2byte	0x2ee
	.byte	0x6
	.uleb128 0x31
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0x12
	.2byte	0x1b4
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0x7
	.byte	0x49
	.byte	0x9
	.uleb128 0x31
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0x12
	.2byte	0x1ab
	.byte	0x6
	.uleb128 0x31
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0x10
	.2byte	0x589
	.byte	0xc
	.uleb128 0x30
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0x7
	.byte	0x4c
	.byte	0x6
	.uleb128 0x31
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0x12
	.2byte	0x1bf
	.byte	0x6
	.uleb128 0x31
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0x10
	.2byte	0x289
	.byte	0xc
	.uleb128 0x30
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0x13
	.byte	0x8
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0x14
	.byte	0x5a
	.byte	0x7
	.uleb128 0x32
	.byte	0x98
	.byte	0x37
	.byte	0x16
	.byte	0xc4
	.byte	0xa1
	.byte	0x1
	.byte	0x34
	.byte	0x25
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x20
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x17
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
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x13
	.byte	0
	.uleb128 0x69
	.uleb128 0x20
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-1
	.4byte	.LFE267
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU11
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU33
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x14e
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x926
	.4byte	0x2b
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
	.4byte	0x31
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
	.4byte	0x37
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
	.4byte	0x3d
	.ascii	"NRF_LOG_SEVERITY_INFO\000"
	.4byte	0x43
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
	.4byte	0x49
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
	.4byte	0x2b
	.ascii	"NRF_TWI_FREQ_100K\000"
	.4byte	0x34
	.ascii	"NRF_TWI_FREQ_250K\000"
	.4byte	0x3d
	.ascii	"NRF_TWI_FREQ_400K\000"
	.4byte	0x4e4
	.ascii	"collisionAngles\000"
	.4byte	0x4f2
	.ascii	"message_in\000"
	.4byte	0x504
	.ascii	"counter\000"
	.4byte	0x4f2
	.ascii	"message_in\000"
	.4byte	0x516
	.ascii	"vMainCommunicationTask\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x260
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x926
	.4byte	0x35
	.ascii	"signed char\000"
	.4byte	0x29
	.ascii	"int8_t\000"
	.4byte	0x48
	.ascii	"unsigned char\000"
	.4byte	0x3c
	.ascii	"uint8_t\000"
	.4byte	0x60
	.ascii	"short int\000"
	.4byte	0x54
	.ascii	"int16_t\000"
	.4byte	0x67
	.ascii	"short unsigned int\000"
	.4byte	0x7f
	.ascii	"int\000"
	.4byte	0x6e
	.ascii	"int32_t\000"
	.4byte	0x92
	.ascii	"unsigned int\000"
	.4byte	0x86
	.ascii	"uint32_t\000"
	.4byte	0x99
	.ascii	"long long int\000"
	.4byte	0xa0
	.ascii	"long long unsigned int\000"
	.4byte	0xa9
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xb0
	.ascii	"char\000"
	.4byte	0xbc
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xd1
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x22c
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x250
	.ascii	"FILE\000"
	.4byte	0xb
	.ascii	"Message\000"
	.4byte	0x2ab
	.ascii	"message_t\000"
	.4byte	0x2d4
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x2f0
	.ascii	"long unsigned int\000"
	.4byte	0x32d
	.ascii	"BaseType_t\000"
	.4byte	0x339
	.ascii	"TickType_t\000"
	.4byte	0x345
	.ascii	"TaskHandle_t\000"
	.4byte	0x351
	.ascii	"QueueHandle_t\000"
	.4byte	0x35d
	.ascii	"SemaphoreHandle_t\000"
	.4byte	0x471
	.ascii	"float\000"
	.4byte	0xb
	.ascii	"sCartesian\000"
	.4byte	0x4c0
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
	.4byte	0x4dd
	.ascii	"_Bool\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB267
	.4byte	.LFE267-.LFB267
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LFB267
	.4byte	.LFE267
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x9
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xa
	.file 21 "../../../drivers/defines.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x7
	.byte	0x4
	.file 22 "../../../../../../external/freertos/source/include/FreeRTOS.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x16
	.file 23 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x17
	.byte	0x4
	.file 24 "../../../config/FreeRTOSConfig.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x18
	.file 25 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x19
	.file 26 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x1a
	.file 27 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x1b
	.byte	0x3
	.uleb128 0x92
	.uleb128 0xb
	.file 28 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x1c
	.file 29 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x1d
	.byte	0x4
	.byte	0x4
	.file 30 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x1e
	.byte	0x4
	.file 31 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.file 32 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x20
	.byte	0x4
	.file 33 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x21
	.byte	0x4
	.file 34 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x22
	.byte	0x4
	.file 35 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x23
	.byte	0x4
	.byte	0x4
	.file 36 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x24
	.byte	0x4
	.file 37 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x25
	.byte	0x4
	.file 38 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x26
	.byte	0x4
	.byte	0x4
	.file 39 "../../../../../../components/libraries/util/app_util_platform.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x27
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x23
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x6
	.byte	0x4
	.file 40 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x28
	.byte	0x4
	.file 41 "../../../../../../components/libraries/util/app_error.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x29
	.file 42 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x2a
	.byte	0x4
	.file 43 "../../../../../../components/libraries/util/sdk_errors.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x2b
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x25
	.byte	0x4
	.byte	0x4
	.file 44 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x2c
	.byte	0x4
	.file 45 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x2d
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb1
	.uleb128 0x28
	.byte	0x4
	.file 46 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h"
	.byte	0x3
	.uleb128 0xd6
	.uleb128 0x2e
	.file 47 "../../../systemView/SEGGER_SYSVIEW.h"
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x2f
	.file 48 "../../../systemView/SEGGER.h"
	.byte	0x3
	.uleb128 0x4a
	.uleb128 0x30
	.file 49 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h"
	.byte	0x3
	.uleb128 0x43
	.uleb128 0x31
	.byte	0x4
	.file 50 "../../../systemView/Global.h"
	.byte	0x3
	.uleb128 0x44
	.uleb128 0x32
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 51 "../../../../../../external/freertos/source/include/projdefs.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x33
	.byte	0x4
	.file 52 "../../../../../../external/freertos/source/include/portable.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x34
	.file 53 "../../../../../../external/freertos/source/include/deprecated_definitions.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x35
	.byte	0x4
	.file 54 "../../../../../../external/freertos/portable/GCC/nrf52/portmacro.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x36
	.byte	0x3
	.uleb128 0x21
	.uleb128 0xe
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 55 "../../../../../../external/freertos/source/include/mpu_wrappers.h"
	.byte	0x3
	.uleb128 0x5c
	.uleb128 0x37
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xf
	.file 56 "../../../../../../external/freertos/source/include/list.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x38
	.byte	0x4
	.byte	0x4
	.file 57 "../../../communication/arq.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x39
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x5
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x11
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x10
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 58 "../../../../../../components/libraries/experimental_log/nrf_log.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x3a
	.file 59 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x3b
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x14
	.byte	0x4
	.file 60 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x3c
	.byte	0x4
	.file 61 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x3d
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0xd
	.byte	0x4
	.file 62 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x3e
	.byte	0x4
	.byte	0x4
	.file 63 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x3f
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x2c
	.byte	0x4
	.byte	0x4
	.file 64 "../../../../../../components/libraries/strerror/nrf_strerror.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x40
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x2b
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0x12
	.file 65 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x41
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x13
	.file 66 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x42
	.file 67 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x43
	.file 68 "../../../../../../modules/nrfx/nrfx.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x44
	.file 69 "../../../../../../integration/nrfx/nrfx_config.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x45
	.byte	0x4
	.file 70 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x46
	.file 71 "../../../../../../modules/nrfx/mdk/nrf_peripherals.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x47
	.file 72 "../../../../../../modules/nrfx/mdk/nrf52832_peripherals.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x48
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 73 "../../../../../../integration/nrfx/nrfx_glue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x49
	.file 74 "../../../../../../integration/nrfx/legacy/apply_old_config.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x4a
	.byte	0x4
	.file 75 "../../../../../../modules/nrfx/soc/nrfx_irqs.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x4b
	.file 76 "../../../../../../modules/nrfx/soc/nrfx_irqs_nrf52832.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x4c
	.byte	0x4
	.byte	0x4
	.file 77 "../../../../../../modules/nrfx/soc/nrfx_coredep.h"
	.byte	0x3
	.uleb128 0xcc
	.uleb128 0x4d
	.byte	0x4
	.file 78 "../../../../../../components/libraries/util/sdk_resources.h"
	.byte	0x3
	.uleb128 0xf1
	.uleb128 0x4e
	.file 79 "../../../../../../components/softdevice/s132/headers/nrf_sd_def.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x4f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 80 "../../../../../../modules/nrfx/drivers/nrfx_errors.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x50
	.byte	0x4
	.byte	0x4
	.file 81 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x51
	.file 82 "../../../../../../modules/nrfx/hal/nrf_twim.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x52
	.byte	0x4
	.byte	0x4
	.file 83 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x53
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 84 "../../../../../../components/libraries/queue/nrf_queue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x54
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF79:
	.ascii	"currency_symbol\000"
.LASF11:
	.ascii	"NRF_LOG_SEVERITY_INFO\000"
.LASF5:
	.ascii	"padding\000"
.LASF44:
	.ascii	"axel_offset\000"
.LASF45:
	.ascii	"sensor_offset1\000"
.LASF46:
	.ascii	"sensor_offset2\000"
.LASF150:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF126:
	.ascii	"__RAL_data_utf8_space\000"
.LASF106:
	.ascii	"date_time_format\000"
.LASF121:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF9:
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
.LASF117:
	.ascii	"__RAL_codeset_ascii\000"
.LASF57:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF87:
	.ascii	"p_cs_precedes\000"
.LASF157:
	.ascii	"handle_user_task\000"
.LASF128:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF174:
	.ascii	"gHandshook\000"
.LASF190:
	.ascii	"command_in\000"
.LASF206:
	.ascii	"xQueueGenericSend\000"
.LASF114:
	.ascii	"long long unsigned int\000"
.LASF209:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF62:
	.ascii	"data\000"
.LASF25:
	.ascii	"order\000"
.LASF59:
	.ascii	"__locale_s\000"
.LASF131:
	.ascii	"__user_get_time_of_day\000"
.LASF149:
	.ascii	"_vectors\000"
.LASF154:
	.ascii	"QueueHandle_t\000"
.LASF142:
	.ascii	"ITM_RxBuffer\000"
.LASF104:
	.ascii	"date_format\000"
.LASF56:
	.ascii	"next\000"
.LASF78:
	.ascii	"int_curr_symbol\000"
.LASF42:
	.ascii	"tower_offset_x\000"
.LASF43:
	.ascii	"tower_offset_y\000"
.LASF102:
	.ascii	"abbrev_month_names\000"
.LASF30:
	.ascii	"int16_t\000"
.LASF55:
	.ascii	"decode\000"
.LASF113:
	.ascii	"long long int\000"
.LASF111:
	.ascii	"signed char\000"
.LASF115:
	.ascii	"__RAL_global_locale\000"
.LASF4:
	.ascii	"module_id\000"
.LASF63:
	.ascii	"codeset\000"
.LASF199:
	.ascii	"vTaskDelay\000"
.LASF72:
	.ascii	"__wctomb\000"
.LASF70:
	.ascii	"__towupper\000"
.LASF193:
	.ascii	"waypoint\000"
.LASF162:
	.ascii	"sensor_tower_task\000"
.LASF85:
	.ascii	"int_frac_digits\000"
.LASF205:
	.ascii	"nrf_log_frontend_std_2\000"
.LASF74:
	.ascii	"long int\000"
.LASF180:
	.ascii	"gLeft\000"
.LASF64:
	.ascii	"__RAL_locale_data_t\000"
.LASF125:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF153:
	.ascii	"TaskHandle_t\000"
.LASF137:
	.ascii	"stdin\000"
.LASF10:
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
.LASF7:
	.ascii	"uint16_t\000"
.LASF171:
	.ascii	"poseControllerQ\000"
.LASF151:
	.ascii	"BaseType_t\000"
.LASF211:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_application-master\\\\pca10040\\\\"
	.ascii	"s132\\\\ses\000"
.LASF93:
	.ascii	"int_p_cs_precedes\000"
.LASF163:
	.ascii	"arq_task\000"
.LASF17:
	.ascii	"__irq_masks\000"
.LASF100:
	.ascii	"abbrev_day_names\000"
.LASF109:
	.ascii	"__wchar\000"
.LASF176:
	.ascii	"USEBLUETOOTH\000"
.LASF76:
	.ascii	"thousands_sep\000"
.LASF82:
	.ascii	"mon_grouping\000"
.LASF69:
	.ascii	"__iswctype\000"
.LASF92:
	.ascii	"n_sign_posn\000"
.LASF8:
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
.LASF192:
	.ascii	"oldwaypoint\000"
.LASF3:
	.ascii	"unsigned int\000"
.LASF95:
	.ascii	"int_p_sep_by_space\000"
.LASF143:
	.ascii	"SystemCoreClock\000"
.LASF103:
	.ascii	"am_pm_indicator\000"
.LASF124:
	.ascii	"__RAL_data_utf8_period\000"
.LASF77:
	.ascii	"grouping\000"
.LASF146:
	.ascii	"long unsigned int\000"
.LASF71:
	.ascii	"__towlower\000"
.LASF178:
	.ascii	"gX_hat\000"
.LASF129:
	.ascii	"__RAL_data_empty_string\000"
.LASF213:
	.ascii	"pvParameters\000"
.LASF160:
	.ascii	"pose_controller_task\000"
.LASF39:
	.ascii	"name\000"
.LASF172:
	.ascii	"scanStatusQ\000"
.LASF184:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF148:
	.ascii	"__StackLimit\000"
.LASF40:
	.ascii	"width\000"
.LASF144:
	.ascii	"nrf_nvic_state_t\000"
.LASF158:
	.ascii	"handle_microsd_task\000"
.LASF173:
	.ascii	"queue_microsd\000"
.LASF198:
	.ascii	"server_connect\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF20:
	.ascii	"type\000"
.LASF197:
	.ascii	"vTaskResume\000"
.LASF208:
	.ascii	"memcpy\000"
.LASF175:
	.ascii	"gPaused\000"
.LASF99:
	.ascii	"day_names\000"
.LASF47:
	.ascii	"sensor_offset3\000"
.LASF195:
	.ascii	"target\000"
.LASF48:
	.ascii	"sensor_offset4\000"
.LASF18:
	.ascii	"__cr_flag\000"
.LASF135:
	.ascii	"timeval\000"
.LASF138:
	.ascii	"stdout\000"
.LASF33:
	.ascii	"tower_angle\000"
.LASF161:
	.ascii	"communication_task\000"
.LASF61:
	.ascii	"__RAL_locale_t\000"
.LASF105:
	.ascii	"time_format\000"
.LASF166:
	.ascii	"xTickMutex\000"
.LASF67:
	.ascii	"__toupper\000"
.LASF91:
	.ascii	"p_sign_posn\000"
.LASF12:
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
.LASF119:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF38:
	.ascii	"name_length\000"
.LASF167:
	.ascii	"xControllerBSem\000"
.LASF212:
	.ascii	"vMainCommunicationTask\000"
.LASF152:
	.ascii	"TickType_t\000"
.LASF2:
	.ascii	"NRF_TWI_FREQ_400K\000"
.LASF187:
	.ascii	"message_in\000"
.LASF73:
	.ascii	"__mbtowc\000"
.LASF145:
	.ascii	"nrf_nvic_state\000"
.LASF21:
	.ascii	"message\000"
.LASF116:
	.ascii	"__RAL_c_locale\000"
.LASF68:
	.ascii	"__tolower\000"
.LASF24:
	.ascii	"handshake\000"
.LASF165:
	.ascii	"xPoseMutex\000"
.LASF130:
	.ascii	"__user_set_time_of_day\000"
.LASF94:
	.ascii	"int_n_cs_precedes\000"
.LASF181:
	.ascii	"gRight\000"
.LASF118:
	.ascii	"__RAL_codeset_utf8\000"
.LASF60:
	.ascii	"__category\000"
.LASF23:
	.ascii	"update\000"
.LASF108:
	.ascii	"__state\000"
.LASF34:
	.ascii	"sensor1\000"
.LASF35:
	.ascii	"sensor2\000"
.LASF36:
	.ascii	"sensor3\000"
.LASF37:
	.ascii	"sensor4\000"
.LASF147:
	.ascii	"__StackTop\000"
.LASF164:
	.ascii	"xScanLock\000"
.LASF186:
	.ascii	"_Bool\000"
.LASF112:
	.ascii	"int32_t\000"
.LASF14:
	.ascii	"unsigned char\000"
.LASF120:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF86:
	.ascii	"frac_digits\000"
.LASF31:
	.ascii	"short int\000"
.LASF188:
	.ascii	"counter\000"
.LASF28:
	.ascii	"order_message_t\000"
.LASF133:
	.ascii	"__RAL_error_decoder_head\000"
.LASF202:
	.ascii	"nrf_log_frontend_std_0\000"
.LASF200:
	.ascii	"nrf_log_frontend_std_1\000"
.LASF177:
	.ascii	"gTheta_hat\000"
.LASF107:
	.ascii	"__mbstate_s\000"
.LASF134:
	.ascii	"FILE\000"
.LASF189:
	.ascii	"Setpoint\000"
.LASF140:
	.ascii	"collisionAngles\000"
.LASF81:
	.ascii	"mon_thousands_sep\000"
.LASF182:
	.ascii	"gRightWheelTicks\000"
.LASF83:
	.ascii	"positive_sign\000"
.LASF19:
	.ascii	"uint32_t\000"
.LASF210:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam_application-master\\software\\MainComTask."
	.ascii	"c\000"
.LASF194:
	.ascii	"collAngles\000"
.LASF204:
	.ascii	"send_ping_response\000"
.LASF26:
	.ascii	"update_message_t\000"
.LASF97:
	.ascii	"int_p_sign_posn\000"
.LASF41:
	.ascii	"length\000"
.LASF155:
	.ascii	"SemaphoreHandle_t\000"
.LASF58:
	.ascii	"char\000"
.LASF66:
	.ascii	"__isctype\000"
.LASF88:
	.ascii	"p_sep_by_space\000"
.LASF29:
	.ascii	"Message\000"
.LASF201:
	.ascii	"send_handshake\000"
.LASF207:
	.ascii	"i2cReciveNOADDR\000"
.LASF185:
	.ascii	"m_nrf_log_app_logs_data_dynamic\000"
.LASF32:
	.ascii	"heading\000"
.LASF170:
	.ascii	"xCollisionMutex\000"
.LASF13:
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
.LASF84:
	.ascii	"negative_sign\000"
.LASF65:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF16:
	.ascii	"sCartesian\000"
.LASF49:
	.ascii	"sensor_heading1\000"
.LASF50:
	.ascii	"sensor_heading2\000"
.LASF51:
	.ascii	"sensor_heading3\000"
.LASF52:
	.ascii	"sensor_heading4\000"
.LASF110:
	.ascii	"int8_t\000"
.LASF183:
	.ascii	"gLeftWheelTicks\000"
.LASF141:
	.ascii	"message_t\000"
.LASF98:
	.ascii	"int_n_sign_posn\000"
.LASF159:
	.ascii	"pose_estimator_task\000"
.LASF139:
	.ascii	"stderr\000"
.LASF0:
	.ascii	"NRF_TWI_FREQ_100K\000"
.LASF122:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF156:
	.ascii	"handle_display_task\000"
.LASF54:
	.ascii	"__RAL_error_decoder_s\000"
.LASF132:
	.ascii	"__RAL_error_decoder_t\000"
.LASF89:
	.ascii	"n_cs_precedes\000"
.LASF22:
	.ascii	"uint8_t\000"
.LASF203:
	.ascii	"xQueueSemaphoreTake\000"
.LASF15:
	.ascii	"float\000"
.LASF101:
	.ascii	"month_names\000"
.LASF168:
	.ascii	"xCommandReadyBSem\000"
.LASF169:
	.ascii	"mutex_spi\000"
.LASF96:
	.ascii	"int_n_sep_by_space\000"
.LASF90:
	.ascii	"n_sep_by_space\000"
.LASF136:
	.ascii	"__RAL_FILE\000"
.LASF127:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF53:
	.ascii	"deadline\000"
.LASF123:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF80:
	.ascii	"mon_decimal_point\000"
.LASF1:
	.ascii	"NRF_TWI_FREQ_250K\000"
.LASF75:
	.ascii	"decimal_point\000"
.LASF196:
	.ascii	"server_communication_init\000"
.LASF179:
	.ascii	"gY_hat\000"
.LASF191:
	.ascii	"success\000"
.LASF27:
	.ascii	"handshake_message_t\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
