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
	.section	.rodata.vMainPoseEstimatorTask.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"\011 Before gyrZ: -%i\000"
	.align	2
.LC1:
	.ascii	"\011 Before gyrZ: %i\000"
	.global	__aeabi_f2d
	.global	__aeabi_dcmplt
	.global	__aeabi_dcmpgt
	.align	2
.LC2:
	.ascii	"\011 After gyrZ: -%i\000"
	.align	2
.LC3:
	.ascii	"\011 After gyrZ: %i\000"
	.align	2
.LC4:
	.ascii	"\011 gyrZ: -%i\000"
	.align	2
.LC5:
	.ascii	"\011 gyrZ: %i\000"
	.align	2
.LC6:
	.ascii	"gO: -%i\000"
	.align	2
.LC7:
	.ascii	"gO: %i\000"
	.align	2
.LC8:
	.ascii	"IMU Has no new data\000"
	.global	__aeabi_dmul
	.align	2
.LC9:
	.ascii	"X: -%i\000"
	.align	2
.LC10:
	.ascii	"X: %i\000"
	.align	2
.LC11:
	.ascii	"Y: -%i\000"
	.align	2
.LC12:
	.ascii	"Y: %i\000"
	.global	__aeabi_d2uiz
	.align	2
.LC13:
	.ascii	"Hdn: -%i\000"
	.align	2
.LC14:
	.ascii	"Hdn: %i\000"
	.align	2
.LC15:
	.ascii	"cal F:%i S:%i\000"
	.align	2
.LC16:
	.ascii	"aFX: %i aFY: %i gF: %i\000"
	.align	2
.LC17:
	.ascii	"aX: %i aY: %i g: %i\000"
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
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application\\software\\EstimatorTask.c"
	.loc 1 32 49 view -0
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 32 49 is_stmt 0 view .LVU1
	push	{r4, r5, r6, r7, r8, lr}
.LCFI0:
	vpush.64	{d8, d9, d10, d11, d12, d13}
.LCFI1:
	sub	sp, sp, #64
.LCFI2:
	.loc 1 33 2 is_stmt 1 view .LVU2
.LVL1:
	.loc 1 34 2 view .LVU3
	.loc 1 35 2 view .LVU4
	.loc 1 36 2 view .LVU5
	.loc 1 37 2 view .LVU6
	.loc 1 38 2 view .LVU7
	.loc 1 40 2 view .LVU8
	.loc 1 41 2 view .LVU9
	.loc 1 42 2 view .LVU10
	.loc 1 50 2 view .LVU11
	.loc 1 53 2 view .LVU12
	.loc 1 53 29 is_stmt 0 view .LVU13
	bl	xTaskGetTickCount
.LVL2:
	.loc 1 53 13 view .LVU14
	str	r0, [sp, #60]
	.loc 1 54 2 is_stmt 1 view .LVU15
.LVL3:
	.loc 1 55 2 view .LVU16
	.loc 1 56 2 view .LVU17
	movs	r1, #8
	movs	r0, #7
.LVL4:
	.loc 1 56 2 is_stmt 0 view .LVU18
	bl	kf_init
.LVL5:
	.loc 1 37 8 view .LVU19
	vldr.32	s19, .L66+12
	.loc 1 36 8 view .LVU20
	vmov.f32	s23, s19
	.loc 1 35 8 view .LVU21
	vmov.f32	s22, s19
	.loc 1 33 6 view .LVU22
	mov	r8, #0
	b	.L2
.LVL6:
.L63:
.LBB2:
	.loc 1 92 6 is_stmt 1 discriminator 3 view .LVU23
	.loc 1 92 79 discriminator 3 view .LVU24
	.loc 1 92 134 discriminator 3 view .LVU25
	.loc 1 92 215 is_stmt 0 discriminator 3 view .LVU26
	ldr	r3, .L66
	ldrh	r0, [r3]
	.loc 1 92 226 discriminator 3 view .LVU27
	lsls	r0, r0, #16
	.loc 1 92 272 discriminator 3 view .LVU28
	vldr.32	s15, .L66+4
	vmul.f32	s15, s20, s15
	.loc 1 92 134 discriminator 3 view .LVU29
	vcvt.u32.f32	s15, s15
	vmov	r2, s15	@ int
	ldr	r1, .L66+8
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL7:
	.loc 1 92 285 is_stmt 1 discriminator 3 view .LVU30
	b	.L7
.L67:
	.align	2
.L66:
	.word	m_nrf_log_app_logs_data_dynamic
	.word	-998637568
	.word	.LC0
	.word	0
.LVL8:
.L38:
	.loc 1 102 10 is_stmt 0 view .LVU31
	vldr.32	s20, .L66+12
.LVL9:
.L8:
	.loc 1 105 4 is_stmt 1 view .LVU32
	.loc 1 105 6 is_stmt 0 view .LVU33
	vcmpe.f32	s20, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L57
	.loc 1 109 5 is_stmt 1 discriminator 3 view .LVU34
	.loc 1 109 78 discriminator 3 view .LVU35
	.loc 1 109 133 discriminator 3 view .LVU36
	.loc 1 109 214 is_stmt 0 discriminator 3 view .LVU37
	ldr	r3, .L68+24
	ldrh	r0, [r3]
	.loc 1 109 225 discriminator 3 view .LVU38
	lsls	r0, r0, #16
	.loc 1 109 269 discriminator 3 view .LVU39
	vldr.32	s15, .L68+28
	vmul.f32	s15, s20, s15
	.loc 1 109 133 discriminator 3 view .LVU40
	vcvt.u32.f32	s15, s15
	vmov	r2, s15	@ int
	ldr	r1, .L68+32
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL10:
.L11:
	.loc 1 109 281 is_stmt 1 discriminator 5 view .LVU41
	.loc 1 113 4 discriminator 5 view .LVU42
	.loc 1 113 13 is_stmt 0 discriminator 5 view .LVU43
	ldr	r2, .L68+36
	smull	r3, r2, r2, r8
	asr	r3, r8, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	.loc 1 113 6 discriminator 5 view .LVU44
	cmp	r8, r3, lsl #2
	bne	.L12
	.loc 1 114 5 is_stmt 1 view .LVU45
	.loc 1 114 7 is_stmt 0 view .LVU46
	vcmpe.f32	s20, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L58
	.loc 1 118 6 is_stmt 1 discriminator 3 view .LVU47
	.loc 1 118 79 discriminator 3 view .LVU48
	.loc 1 118 134 discriminator 3 view .LVU49
	.loc 1 118 215 is_stmt 0 discriminator 3 view .LVU50
	ldr	r3, .L68+24
	ldrh	r0, [r3]
	.loc 1 118 226 discriminator 3 view .LVU51
	lsls	r0, r0, #16
	.loc 1 118 264 discriminator 3 view .LVU52
	vldr.32	s15, .L68+28
	vmul.f32	s15, s20, s15
	.loc 1 118 134 discriminator 3 view .LVU53
	vcvt.u32.f32	s15, s15
	vmov	r2, s15	@ int
	ldr	r1, .L68+40
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL11:
.L15:
	.loc 1 118 276 is_stmt 1 discriminator 5 view .LVU54
	.loc 1 121 5 discriminator 5 view .LVU55
	.loc 1 121 7 is_stmt 0 discriminator 5 view .LVU56
	vcmpe.f32	s19, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L59
	.loc 1 125 6 is_stmt 1 discriminator 3 view .LVU57
	.loc 1 125 79 discriminator 3 view .LVU58
	.loc 1 125 134 discriminator 3 view .LVU59
	.loc 1 125 215 is_stmt 0 discriminator 3 view .LVU60
	ldr	r3, .L68+24
	ldrh	r0, [r3]
	.loc 1 125 226 discriminator 3 view .LVU61
	lsls	r0, r0, #16
	.loc 1 125 265 discriminator 3 view .LVU62
	vldr.32	s15, .L68+28
	vmul.f32	s15, s19, s15
	.loc 1 125 134 discriminator 3 view .LVU63
	vcvt.u32.f32	s15, s15
	vmov	r2, s15	@ int
	ldr	r1, .L68+44
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL12:
.L12:
	.loc 1 125 277 is_stmt 1 discriminator 5 view .LVU64
	.loc 1 132 4 discriminator 5 view .LVU65
	movs	r0, #10
	bl	vTaskDelay
.LVL13:
.L18:
	.loc 1 142 4 view .LVU66
	.loc 1 142 21 is_stmt 0 view .LVU67
	ldr	r4, .L68+48
	ldr	r0, [r4]	@ float
	bl	__aeabi_f2d
.LVL14:
	vmov	d0, r0, r1
	bl	cos
.LVL15:
	vmov	r0, r1, d0
	.loc 1 142 10 view .LVU68
	bl	__aeabi_d2f
.LVL16:
	vmov	s24, r0
.LVL17:
	.loc 1 143 4 is_stmt 1 view .LVU69
	.loc 1 143 21 is_stmt 0 view .LVU70
	ldr	r0, [r4]	@ float
.LVL18:
	.loc 1 143 21 view .LVU71
	bl	__aeabi_f2d
.LVL19:
	vmov	d0, r0, r1
	bl	sin
.LVL20:
	vmov	r0, r1, d0
	.loc 1 143 10 view .LVU72
	bl	__aeabi_d2f
.LVL21:
	vmov	s21, r0
.LVL22:
	.loc 1 151 4 is_stmt 1 view .LVU73
	.loc 1 151 15 is_stmt 0 view .LVU74
	vmul.f32	s15, s18, s24
	vmov	r0, s15
.LVL23:
	.loc 1 151 15 view .LVU75
	bl	__aeabi_f2d
.LVL24:
	.loc 1 151 24 view .LVU76
	adr	r3, .L68
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL25:
	bl	__aeabi_d2f
.LVL26:
	.loc 1 151 8 view .LVU77
	str	r0, [sp, #32]	@ float
	.loc 1 152 4 is_stmt 1 view .LVU78
	.loc 1 152 14 is_stmt 0 view .LVU79
	ldr	r3, .L68+52
	vldr.32	s26, [r3]
	.loc 1 152 16 view .LVU80
	vmul.f32	s15, s26, s24
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL27:
	.loc 1 152 25 view .LVU81
	adr	r3, .L68+8
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL28:
	bl	__aeabi_d2f
.LVL29:
	.loc 1 152 8 view .LVU82
	str	r0, [sp, #36]	@ float
	.loc 1 154 4 is_stmt 1 view .LVU83
	.loc 1 154 15 is_stmt 0 view .LVU84
	vmul.f32	s15, s18, s21
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL30:
	.loc 1 154 24 view .LVU85
	adr	r3, .L68
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL31:
	bl	__aeabi_d2f
.LVL32:
	.loc 1 154 8 view .LVU86
	str	r0, [sp, #40]	@ float
	.loc 1 155 4 is_stmt 1 view .LVU87
	.loc 1 155 16 is_stmt 0 view .LVU88
	vmul.f32	s15, s26, s21
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL33:
	.loc 1 155 25 view .LVU89
	adr	r3, .L68+8
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL34:
	bl	__aeabi_d2f
.LVL35:
	.loc 1 155 8 view .LVU90
	str	r0, [sp, #44]	@ float
	.loc 1 157 4 is_stmt 1 view .LVU91
	.loc 1 157 8 is_stmt 0 view .LVU92
	vmov.f32	s21, #2.5e+1
.LVL36:
	.loc 1 157 8 view .LVU93
	vmul.f32	s21, s25, s21
	vstr.32	s21, [sp, #48]
	.loc 1 158 4 is_stmt 1 view .LVU94
	.loc 1 158 13 is_stmt 0 view .LVU95
	vmov	r0, s20
	bl	__aeabi_f2d
.LVL37:
	adr	r3, .L68+16
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL38:
	.loc 1 158 13 view .LVU96
	movs	r2, #0
	ldr	r3, .L68+56
	bl	__aeabi_ddiv
.LVL39:
	bl	__aeabi_d2f
.LVL40:
	vmov	s15, r0
	.loc 1 158 8 view .LVU97
	str	r0, [sp, #52]	@ float
	.loc 1 159 4 is_stmt 1 view .LVU98
	.loc 1 159 8 is_stmt 0 view .LVU99
	movs	r3, #0
	str	r3, [sp, #56]	@ float
	.loc 1 161 4 is_stmt 1 view .LVU100
	.loc 1 161 6 is_stmt 0 view .LVU101
	vcmp.f32	s18, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L19
	.loc 1 163 5 is_stmt 1 view .LVU102
	.loc 1 163 9 is_stmt 0 view .LVU103
	str	r3, [sp, #36]	@ float
	.loc 1 164 5 is_stmt 1 view .LVU104
	.loc 1 164 9 is_stmt 0 view .LVU105
	str	r3, [sp, #44]	@ float
	.loc 1 165 5 is_stmt 1 view .LVU106
	.loc 1 165 29 is_stmt 0 view .LVU107
	vldr.32	s14, .L68+28
	vdiv.f32	s15, s26, s14
	.loc 1 165 18 view .LVU108
	vadd.f32	s22, s22, s15
.LVL41:
.L20:
	.loc 1 173 4 is_stmt 1 view .LVU109
	add	r0, sp, #32
	bl	kf_step
.LVL42:
	.loc 1 174 4 view .LVU110
	.loc 1 174 15 is_stmt 0 view .LVU111
	bl	kalmanGetState
.LVL43:
	ldr	r3, .L68+60
	vstr.32	s0, [r3]
	vstr.32	s1, [r3, #4]
	vstr.32	s2, [r3, #8]
	.loc 1 176 4 is_stmt 1 view .LVU112
	.loc 1 176 6 is_stmt 0 view .LVU113
	cmp	r8, #200
	ble	.L23
	.loc 1 177 5 is_stmt 1 view .LVU114
	.loc 1 177 7 is_stmt 0 view .LVU115
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L60
	.loc 1 181 6 is_stmt 1 discriminator 3 view .LVU116
	.loc 1 181 79 discriminator 3 view .LVU117
	.loc 1 181 134 discriminator 3 view .LVU118
	.loc 1 181 215 is_stmt 0 discriminator 3 view .LVU119
	ldr	r3, .L68+24
	ldrh	r0, [r3]
	.loc 1 181 226 discriminator 3 view .LVU120
	lsls	r0, r0, #16
	.loc 1 181 264 discriminator 3 view .LVU121
	vldr.32	s14, .L68+28
	vmul.f32	s15, s0, s14
	.loc 1 181 134 discriminator 3 view .LVU122
	vcvt.u32.f32	s15, s15
	vmov	r2, s15	@ int
	ldr	r1, .L68+64
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL44:
.L26:
	.loc 1 181 276 is_stmt 1 discriminator 5 view .LVU123
	.loc 1 184 5 discriminator 5 view .LVU124
	.loc 1 184 16 is_stmt 0 discriminator 5 view .LVU125
	ldr	r3, .L68+60
	vldr.32	s15, [r3, #4]
	.loc 1 184 7 discriminator 5 view .LVU126
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L61
	.loc 1 188 6 is_stmt 1 discriminator 3 view .LVU127
	.loc 1 188 79 discriminator 3 view .LVU128
	.loc 1 188 134 discriminator 3 view .LVU129
	.loc 1 188 215 is_stmt 0 discriminator 3 view .LVU130
	ldr	r3, .L68+24
	ldrh	r0, [r3]
	.loc 1 188 226 discriminator 3 view .LVU131
	lsls	r0, r0, #16
	.loc 1 188 264 discriminator 3 view .LVU132
	vldr.32	s14, .L68+28
	vmul.f32	s15, s15, s14
	.loc 1 188 134 discriminator 3 view .LVU133
	vcvt.u32.f32	s15, s15
	vmov	r2, s15	@ int
	ldr	r1, .L68+68
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL45:
.L29:
	.loc 1 188 276 is_stmt 1 discriminator 5 view .LVU134
	.loc 1 191 5 discriminator 5 view .LVU135
	.loc 1 191 16 is_stmt 0 discriminator 5 view .LVU136
	ldr	r3, .L68+60
	vldr.32	s15, [r3, #8]
	.loc 1 191 7 discriminator 5 view .LVU137
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L62
	.loc 1 195 6 is_stmt 1 discriminator 3 view .LVU138
	.loc 1 195 79 discriminator 3 view .LVU139
	.loc 1 195 134 discriminator 3 view .LVU140
	.loc 1 195 215 is_stmt 0 discriminator 3 view .LVU141
	ldr	r3, .L68+24
	ldrh	r4, [r3]
	.loc 1 195 226 discriminator 3 view .LVU142
	lsls	r4, r4, #16
	.loc 1 195 182 discriminator 3 view .LVU143
	orr	r4, r4, #3
	.loc 1 195 264 discriminator 3 view .LVU144
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL46:
	.loc 1 195 272 discriminator 3 view .LVU145
	movs	r2, #0
	ldr	r3, .L68+56
	bl	__aeabi_dmul
.LVL47:
	.loc 1 195 279 discriminator 3 view .LVU146
	adr	r3, .L68+16
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
.LVL48:
	.loc 1 195 134 discriminator 3 view .LVU147
	bl	__aeabi_d2uiz
.LVL49:
	mov	r2, r0
	ldr	r1, .L68+72
	mov	r0, r4
	bl	nrf_log_frontend_std_1
.LVL50:
	.loc 1 197 11 discriminator 3 view .LVU148
	mov	r8, #0
.LVL51:
.L23:
	.loc 1 233 4 is_stmt 1 view .LVU149
	ldr	r4, .L68+60
	add	r0, r4, #8
	bl	vFunc_Inf2pi
.LVL52:
	.loc 1 234 4 view .LVU150
	ldr	r5, .L68+76
	movs	r1, #15
	ldr	r0, [r5]
	bl	xQueueSemaphoreTake
.LVL53:
	.loc 1 235 4 view .LVU151
	.loc 1 235 25 is_stmt 0 view .LVU152
	ldr	r2, [r4, #8]	@ float
	.loc 1 235 15 view .LVU153
	ldr	r3, .L68+48
	str	r2, [r3]	@ float
	.loc 1 244 4 is_stmt 1 view .LVU154
	.loc 1 244 27 is_stmt 0 view .LVU155
	vldr.32	s15, [r4]
	.loc 1 244 29 view .LVU156
	vldr.32	s14, .L68+28
	vmul.f32	s15, s15, s14
	.loc 1 244 13 view .LVU157
	vcvt.s32.f32	s15, s15
	.loc 1 244 11 view .LVU158
	ldr	r3, .L68+80
	vmov	r2, s15	@ int
	strh	r2, [r3]	@ movhi
	.loc 1 245 4 is_stmt 1 view .LVU159
	.loc 1 245 27 is_stmt 0 view .LVU160
	vldr.32	s15, [r4, #4]
	.loc 1 245 29 view .LVU161
	vmul.f32	s15, s15, s14
	.loc 1 245 13 view .LVU162
	vcvt.s32.f32	s15, s15
	.loc 1 245 11 view .LVU163
	ldr	r3, .L68+84
	vmov	r2, s15	@ int
	strh	r2, [r3]	@ movhi
	.loc 1 246 4 is_stmt 1 view .LVU164
	.loc 1 246 10 is_stmt 0 view .LVU165
	ldr	r3, .L68+88
	vstr.32	s17, [r3]
	.loc 1 247 4 is_stmt 1 view .LVU166
	.loc 1 247 11 is_stmt 0 view .LVU167
	ldr	r3, .L68+92
	vstr.32	s16, [r3]
	.loc 1 248 4 is_stmt 1 view .LVU168
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, [r5]
	bl	xQueueGenericSend
.LVL54:
	.loc 1 256 4 view .LVU169
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, .L68+96
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL55:
.L2:
	.loc 1 256 4 is_stmt 0 view .LVU170
.LBE2:
	.loc 1 58 2 is_stmt 1 view .LVU171
	.loc 1 59 3 view .LVU172
	.loc 1 59 8 is_stmt 0 view .LVU173
	add	r8, r8, #1
.LVL56:
	.loc 1 61 3 is_stmt 1 view .LVU174
	movs	r1, #40
	add	r0, sp, #60
	bl	vTaskDelayUntil
.LVL57:
	.loc 1 62 3 view .LVU175
	.loc 1 62 7 is_stmt 0 view .LVU176
	ldr	r3, .L68+100
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 62 6 view .LVU177
	cmp	r3, #0
	beq	.L3
.LBB3:
	.loc 1 63 3 is_stmt 1 view .LVU178
.LVL58:
	.loc 1 64 3 view .LVU179
	.loc 1 65 3 view .LVU180
	.loc 1 66 3 view .LVU181
	.loc 1 70 3 view .LVU182
	ldr	r4, .L68+104
	movs	r1, #15
	ldr	r0, [r4]
	bl	xQueueSemaphoreTake
.LVL59:
	.loc 1 71 3 view .LVU183
	.loc 1 71 18 is_stmt 0 view .LVU184
	ldr	r3, .L68+108
	ldrsh	r6, [r3]
.LVL60:
	.loc 1 72 3 is_stmt 1 view .LVU185
	.loc 1 72 19 is_stmt 0 view .LVU186
	ldr	r3, .L68+112
	ldrsh	r5, [r3]
.LVL61:
	.loc 1 73 3 is_stmt 1 view .LVU187
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, [r4]
	bl	xQueueGenericSend
.LVL62:
	.loc 1 75 3 view .LVU188
	.loc 1 75 40 is_stmt 0 view .LVU189
	movs	r4, #250
	.loc 1 75 47 view .LVU190
	mul	r0, r4, r6
	bl	__aeabi_i2d
.LVL63:
	movs	r2, #0
	ldr	r3, .L68+116
	bl	__aeabi_ddiv
.LVL64:
	.loc 1 75 9 view .LVU191
	bl	__aeabi_d2f
.LVL65:
	vmov	s17, r0
.LVL66:
	.loc 1 76 3 is_stmt 1 view .LVU192
	.loc 1 76 49 is_stmt 0 view .LVU193
	mul	r0, r4, r5
.LVL67:
	.loc 1 76 49 view .LVU194
	bl	__aeabi_i2d
.LVL68:
	movs	r2, #0
	ldr	r3, .L68+116
	bl	__aeabi_ddiv
.LVL69:
	.loc 1 76 9 view .LVU195
	bl	__aeabi_d2f
.LVL70:
	vmov	s16, r0
.LVL71:
	.loc 1 77 3 is_stmt 1 view .LVU196
	.loc 1 77 19 is_stmt 0 view .LVU197
	vadd.f32	s18, s17, s16
	.loc 1 77 10 view .LVU198
	vmov.f32	s15, #5.0e-1
	vmul.f32	s18, s18, s15
.LVL72:
	.loc 1 78 3 is_stmt 1 view .LVU199
	.loc 1 79 3 view .LVU200
	.loc 1 79 20 is_stmt 0 view .LVU201
	vsub.f32	s14, s16, s17
	.loc 1 79 10 view .LVU202
	vldr.32	s15, .L68+120
	vdiv.f32	s25, s14, s15
.LVL73:
	.loc 1 82 3 is_stmt 1 view .LVU203
	.loc 1 82 7 is_stmt 0 view .LVU204
	bl	IMU_newData
.LVL74:
	b	.L69
.L70:
	.align	3
.L68:
	.word	-1717986918
	.word	1067030937
	.word	1202590843
	.word	1072724705
	.word	1413754136
	.word	1074340347
	.word	m_nrf_log_app_logs_data_dynamic
	.word	1148846080
	.word	.LC3
	.word	1717986919
	.word	.LC5
	.word	.LC7
	.word	gTheta_hat
	.word	.LANCHOR1
	.word	1080459264
	.word	.LANCHOR2
	.word	.LC10
	.word	.LC12
	.word	.LC14
	.word	xPoseMutex
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
.L69:
.LVL75:
	.loc 1 82 6 view .LVU205
	cmp	r0, #0
	beq	.L4
	.loc 1 83 4 is_stmt 1 view .LVU206
	bl	IMU_read
.LVL76:
	.loc 1 84 4 view .LVU207
	.loc 1 84 11 is_stmt 0 view .LVU208
	bl	IMU_getGyro
.LVL77:
	ldr	r4, .L71+32
	vstr.32	s0, [r4]
	vstr.32	s1, [r4, #4]
	vstr.32	s2, [r4, #8]
	.loc 1 85 4 is_stmt 1 view .LVU209
	.loc 1 85 12 is_stmt 0 view .LVU210
	bl	IMU_getAccel
.LVL78:
	ldr	r3, .L71+36
	vstr.32	s2, [r3, #8]
	.loc 1 86 4 is_stmt 1 view .LVU211
	.loc 1 86 12 is_stmt 0 view .LVU212
	vsub.f32	s0, s0, s22
	vstr.32	s0, [r3]
	.loc 1 87 4 is_stmt 1 view .LVU213
	.loc 1 87 12 is_stmt 0 view .LVU214
	vsub.f32	s1, s1, s23
	vstr.32	s1, [r3, #4]
	.loc 1 89 4 is_stmt 1 view .LVU215
	.loc 1 89 15 is_stmt 0 view .LVU216
	vldr.32	s20, [r4, #8]
	.loc 1 89 9 view .LVU217
	vsub.f32	s20, s20, s19
.LVL79:
	.loc 1 91 4 is_stmt 1 view .LVU218
	.loc 1 91 6 is_stmt 0 view .LVU219
	vcmpe.f32	s20, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L63
	.loc 1 95 5 is_stmt 1 discriminator 3 view .LVU220
	.loc 1 95 78 discriminator 3 view .LVU221
	.loc 1 95 133 discriminator 3 view .LVU222
	.loc 1 95 214 is_stmt 0 discriminator 3 view .LVU223
	ldr	r3, .L71+40
	ldrh	r0, [r3]
	.loc 1 95 225 discriminator 3 view .LVU224
	lsls	r0, r0, #16
	.loc 1 95 270 discriminator 3 view .LVU225
	vldr.32	s15, .L71+44
	vmul.f32	s15, s20, s15
	.loc 1 95 133 discriminator 3 view .LVU226
	vcvt.u32.f32	s15, s15
	vmov	r2, s15	@ int
	ldr	r1, .L71+48
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL80:
.L7:
	.loc 1 95 282 is_stmt 1 discriminator 5 view .LVU227
	.loc 1 98 4 discriminator 5 view .LVU228
	.loc 1 98 19 is_stmt 0 discriminator 5 view .LVU229
	vldr.32	s15, .L71+52
	vmul.f32	s15, s20, s15
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL81:
	mov	r4, r0
	mov	r5, r1
.LVL82:
	.loc 1 98 6 discriminator 5 view .LVU230
	adr	r3, .L71
	ldrd	r2, [r3]
	bl	__aeabi_dcmplt
.LVL83:
	cmp	r0, #0
	bne	.L38
	.loc 1 98 26 discriminator 1 view .LVU231
	adr	r3, .L71+8
	ldrd	r2, [r3]
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmpgt
.LVL84:
	cmp	r0, #0
	beq	.L8
	.loc 1 102 10 view .LVU232
	vldr.32	s20, .L71+56
.LVL85:
	.loc 1 102 10 view .LVU233
	b	.L8
.LVL86:
.L57:
	.loc 1 106 5 is_stmt 1 discriminator 3 view .LVU234
	.loc 1 106 78 discriminator 3 view .LVU235
	.loc 1 106 133 discriminator 3 view .LVU236
	.loc 1 106 214 is_stmt 0 discriminator 3 view .LVU237
	ldr	r3, .L71+40
	ldrh	r0, [r3]
	.loc 1 106 225 discriminator 3 view .LVU238
	lsls	r0, r0, #16
	.loc 1 106 270 discriminator 3 view .LVU239
	vldr.32	s15, .L71+60
	vmul.f32	s15, s20, s15
	.loc 1 106 133 discriminator 3 view .LVU240
	vcvt.u32.f32	s15, s15
	vmov	r2, s15	@ int
	ldr	r1, .L71+64
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL87:
	.loc 1 106 283 is_stmt 1 discriminator 3 view .LVU241
	b	.L11
.L58:
	.loc 1 115 6 discriminator 3 view .LVU242
	.loc 1 115 79 discriminator 3 view .LVU243
	.loc 1 115 134 discriminator 3 view .LVU244
	.loc 1 115 215 is_stmt 0 discriminator 3 view .LVU245
	ldr	r3, .L71+40
	ldrh	r0, [r3]
	.loc 1 115 226 discriminator 3 view .LVU246
	lsls	r0, r0, #16
	.loc 1 115 265 discriminator 3 view .LVU247
	vldr.32	s15, .L71+60
	vmul.f32	s15, s20, s15
	.loc 1 115 134 discriminator 3 view .LVU248
	vcvt.u32.f32	s15, s15
	vmov	r2, s15	@ int
	ldr	r1, .L71+68
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL88:
	.loc 1 115 278 is_stmt 1 discriminator 3 view .LVU249
	b	.L15
.L59:
	.loc 1 122 6 discriminator 3 view .LVU250
	.loc 1 122 79 discriminator 3 view .LVU251
	.loc 1 122 134 discriminator 3 view .LVU252
	.loc 1 122 215 is_stmt 0 discriminator 3 view .LVU253
	ldr	r3, .L71+40
	ldrh	r0, [r3]
	.loc 1 122 226 discriminator 3 view .LVU254
	lsls	r0, r0, #16
	.loc 1 122 266 discriminator 3 view .LVU255
	vldr.32	s15, .L71+60
	vmul.f32	s15, s19, s15
	.loc 1 122 134 discriminator 3 view .LVU256
	vcvt.u32.f32	s15, s15
	vmov	r2, s15	@ int
	ldr	r1, .L71+72
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL89:
	.loc 1 122 279 is_stmt 1 discriminator 3 view .LVU257
	b	.L12
.LVL90:
.L4:
	.loc 1 135 5 discriminator 3 view .LVU258
	.loc 1 135 78 discriminator 3 view .LVU259
	.loc 1 135 133 discriminator 3 view .LVU260
	.loc 1 135 214 is_stmt 0 discriminator 3 view .LVU261
	ldr	r3, .L71+40
	ldrh	r0, [r3]
	.loc 1 135 225 discriminator 3 view .LVU262
	lsls	r0, r0, #16
	.loc 1 135 133 discriminator 3 view .LVU263
	ldr	r1, .L71+76
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL91:
	.loc 1 135 260 is_stmt 1 discriminator 3 view .LVU264
	.loc 1 136 5 discriminator 3 view .LVU265
	.loc 1 136 10 is_stmt 0 discriminator 3 view .LVU266
	vldr.32	s20, .L71+56
	b	.L18
.LVL92:
.L19:
	.loc 1 169 5 is_stmt 1 view .LVU267
	.loc 1 169 8 is_stmt 0 view .LVU268
	vsub.f32	s15, s15, s21
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL93:
	vmov	d0, r0, r1
	bl	fabs
.LVL94:
	vmov	r4, r5, d0
	.loc 1 169 29 view .LVU269
	ldr	r0, [sp, #52]	@ float
	bl	__aeabi_f2d
.LVL95:
	.loc 1 169 27 view .LVU270
	adr	r3, .L71+16
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL96:
	mov	r2, r0
	mov	r3, r1
	.loc 1 169 7 view .LVU271
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmpgt
.LVL97:
	cbz	r0, .L52
	.loc 1 169 35 is_stmt 1 discriminator 1 view .LVU272
	vmov.f32	s0, #1.0e+0
	bl	kf_setEncoderVar
.LVL98:
	b	.L20
.L52:
	.loc 1 170 11 view .LVU273
	vldr.32	s0, .L71+80
	bl	kf_setEncoderVar
.LVL99:
	b	.L20
.L60:
	.loc 1 178 6 discriminator 3 view .LVU274
	.loc 1 178 79 discriminator 3 view .LVU275
	.loc 1 178 134 discriminator 3 view .LVU276
	.loc 1 178 215 is_stmt 0 discriminator 3 view .LVU277
	ldr	r3, .L71+40
	ldrh	r0, [r3]
	.loc 1 178 226 discriminator 3 view .LVU278
	lsls	r0, r0, #16
	.loc 1 178 265 discriminator 3 view .LVU279
	vldr.32	s14, .L71+60
	vmul.f32	s15, s0, s14
	.loc 1 178 134 discriminator 3 view .LVU280
	vcvt.u32.f32	s15, s15
	vmov	r2, s15	@ int
	ldr	r1, .L71+84
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL100:
	.loc 1 178 278 is_stmt 1 discriminator 3 view .LVU281
	b	.L26
.L61:
	.loc 1 185 6 discriminator 3 view .LVU282
	.loc 1 185 79 discriminator 3 view .LVU283
	.loc 1 185 134 discriminator 3 view .LVU284
	.loc 1 185 215 is_stmt 0 discriminator 3 view .LVU285
	ldr	r3, .L71+40
	ldrh	r0, [r3]
	.loc 1 185 226 discriminator 3 view .LVU286
	lsls	r0, r0, #16
	.loc 1 185 265 discriminator 3 view .LVU287
	vldr.32	s14, .L71+60
	vmul.f32	s15, s15, s14
	.loc 1 185 134 discriminator 3 view .LVU288
	vcvt.u32.f32	s15, s15
	vmov	r2, s15	@ int
	ldr	r1, .L71+88
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL101:
	.loc 1 185 278 is_stmt 1 discriminator 3 view .LVU289
	b	.L29
.L62:
	.loc 1 192 6 discriminator 3 view .LVU290
	.loc 1 192 79 discriminator 3 view .LVU291
	.loc 1 192 134 discriminator 3 view .LVU292
	.loc 1 192 215 is_stmt 0 discriminator 3 view .LVU293
	ldr	r3, .L71+40
	ldrh	r4, [r3]
	.loc 1 192 226 discriminator 3 view .LVU294
	lsls	r4, r4, #16
	.loc 1 192 182 discriminator 3 view .LVU295
	orr	r4, r4, #3
	.loc 1 192 265 discriminator 3 view .LVU296
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL102:
	.loc 1 192 273 discriminator 3 view .LVU297
	movs	r2, #0
	ldr	r3, .L71+92
	bl	__aeabi_dmul
.LVL103:
	.loc 1 192 281 discriminator 3 view .LVU298
	adr	r3, .L71+24
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
.LVL104:
	.loc 1 192 134 discriminator 3 view .LVU299
	bl	__aeabi_d2uiz
.LVL105:
	mov	r2, r0
	ldr	r1, .L71+96
	mov	r0, r4
	bl	nrf_log_frontend_std_1
.LVL106:
	.loc 1 192 12 is_stmt 1 discriminator 3 view .LVU300
	.loc 1 197 11 is_stmt 0 discriminator 3 view .LVU301
	mov	r8, #0
.LVL107:
	.loc 1 197 11 discriminator 3 view .LVU302
	b	.L23
.LVL108:
.L3:
	.loc 1 197 11 discriminator 3 view .LVU303
.LBE3:
	.loc 1 259 4 is_stmt 1 view .LVU304
	.loc 1 259 8 is_stmt 0 view .LVU305
	ldr	r3, .L71+100
	ldrsb	r3, [r3]
	.loc 1 259 7 view .LVU306
	cmp	r3, #0
	beq	.L2
.LBB4:
	.loc 1 261 5 is_stmt 1 view .LVU307
	.loc 1 262 5 view .LVU308
	.loc 1 263 5 view .LVU309
.LVL109:
	.loc 1 264 5 view .LVU310
	.loc 1 265 5 view .LVU311
	.loc 1 266 5 view .LVU312
	.loc 1 267 5 view .LVU313
	.loc 1 268 5 view .LVU314
	.loc 1 270 5 view .LVU315
	movs	r0, #150
	bl	vTaskDelay
.LVL110:
	.loc 1 272 5 view .LVU316
	.loc 1 268 9 is_stmt 0 view .LVU317
	movs	r5, #0
	.loc 1 267 9 view .LVU318
	mov	r4, r5
	.loc 1 266 11 view .LVU319
	vldr.32	s16, .L71+56
	.loc 1 265 11 view .LVU320
	vmov.f32	s17, s16
	.loc 1 264 11 view .LVU321
	vmov.f32	s18, s16
	.loc 1 272 12 view .LVU322
	mov	r6, r5
	.loc 1 272 5 view .LVU323
	b	.L33
.LVL111:
.L65:
	.loc 1 272 31 is_stmt 1 discriminator 2 view .LVU324
	.loc 1 272 32 is_stmt 0 discriminator 2 view .LVU325
	adds	r6, r6, #1
.LVL112:
	.loc 1 272 32 discriminator 2 view .LVU326
	uxth	r6, r6
.LVL113:
.L33:
	.loc 1 272 17 is_stmt 1 discriminator 1 view .LVU327
	.loc 1 272 5 is_stmt 0 discriminator 1 view .LVU328
	cmp	r6, #300
	bhi	.L64
	.loc 1 273 5 is_stmt 1 view .LVU329
	bl	IMU_read
.LVL114:
	.loc 1 274 5 view .LVU330
	.loc 1 274 12 is_stmt 0 view .LVU331
	bl	IMU_getGyro
.LVL115:
	ldr	r7, .L71+32
	vstr.32	s0, [r7]
	vstr.32	s1, [r7, #4]
	vstr.32	s2, [r7, #8]
	.loc 1 275 5 is_stmt 1 view .LVU332
	.loc 1 275 13 is_stmt 0 view .LVU333
	bl	IMU_getAccel
.LVL116:
	ldr	r3, .L71+36
	vstr.32	s0, [r3]
	vstr.32	s1, [r3, #4]
	vstr.32	s2, [r3, #8]
	.loc 1 276 5 is_stmt 1 view .LVU334
	.loc 1 276 18 is_stmt 0 view .LVU335
	vldr.32	s15, [r7, #8]
	.loc 1 276 11 view .LVU336
	vadd.f32	s18, s18, s15
.LVL117:
	.loc 1 277 5 is_stmt 1 view .LVU337
	.loc 1 277 13 is_stmt 0 view .LVU338
	vadd.f32	s17, s17, s0
.LVL118:
	.loc 1 278 5 is_stmt 1 view .LVU339
	.loc 1 278 13 is_stmt 0 view .LVU340
	vadd.f32	s16, s16, s1
.LVL119:
	.loc 1 280 5 is_stmt 1 view .LVU341
	movs	r0, #40
	bl	vTaskDelay
.LVL120:
	.loc 1 281 5 view .LVU342
	mov	r3, r5
	mov	r2, r4
	ldr	r1, .L71+104
	add	r0, sp, #12
	bl	sprintf
.LVL121:
	.loc 1 282 5 view .LVU343
	add	r1, sp, #12
	movs	r0, #4
	bl	display_text_on_line
.LVL122:
	.loc 1 283 5 view .LVU344
	.loc 1 283 12 is_stmt 0 view .LVU345
	adds	r5, r5, #1
.LVL123:
	.loc 1 285 5 is_stmt 1 view .LVU346
.L34:
	.loc 1 285 11 view .LVU347
	.loc 1 285 13 is_stmt 0 view .LVU348
	bl	IMU_newData
.LVL124:
	.loc 1 285 11 view .LVU349
	cmp	r0, #0
	bne	.L65
	.loc 1 286 5 is_stmt 1 view .LVU350
	movs	r0, #20
	bl	vTaskDelay
.LVL125:
	.loc 1 287 5 view .LVU351
	.loc 1 287 10 is_stmt 0 view .LVU352
	adds	r4, r4, #1
.LVL126:
	.loc 1 288 5 is_stmt 1 view .LVU353
	mov	r3, r5
	mov	r2, r4
	ldr	r1, .L71+104
	add	r0, sp, #12
	bl	sprintf
.LVL127:
	.loc 1 289 5 view .LVU354
	add	r1, sp, #12
	movs	r0, #4
	bl	display_text_on_line
.LVL128:
	b	.L34
.L64:
	.loc 1 292 5 discriminator 3 view .LVU355
	.loc 1 292 78 discriminator 3 view .LVU356
	.loc 1 292 133 discriminator 3 view .LVU357
	.loc 1 292 214 is_stmt 0 discriminator 3 view .LVU358
	ldr	r4, .L71+40
.LVL129:
	.loc 1 292 214 discriminator 3 view .LVU359
	ldrh	r0, [r4]
	.loc 1 292 225 discriminator 3 view .LVU360
	lsls	r0, r0, #16
	.loc 1 292 133 discriminator 3 view .LVU361
	vcvt.u32.f32	s19, s19
.LVL130:
	.loc 1 292 133 discriminator 3 view .LVU362
	vstr.32	s19, [sp]	@ int
	vcvt.u32.f32	s15, s17
	vmov	r3, s15	@ int
	vcvt.u32.f32	s15, s18
	vmov	r2, s15	@ int
	ldr	r1, .L71+108
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_3
.LVL131:
	.loc 1 292 327 is_stmt 1 discriminator 3 view .LVU363
	.loc 1 293 5 discriminator 3 view .LVU364
	.loc 1 293 26 is_stmt 0 discriminator 3 view .LVU365
	vmov	s15, r6	@ int
	vcvt.f32.u32	s15, s15
	.loc 1 293 16 discriminator 3 view .LVU366
	vdiv.f32	s19, s18, s15
.LVL132:
	.loc 1 294 5 is_stmt 1 discriminator 3 view .LVU367
	.loc 1 294 18 is_stmt 0 discriminator 3 view .LVU368
	vdiv.f32	s22, s17, s15
.LVL133:
	.loc 1 295 5 is_stmt 1 discriminator 3 view .LVU369
	.loc 1 295 18 is_stmt 0 discriminator 3 view .LVU370
	vdiv.f32	s23, s16, s15
.LVL134:
	.loc 1 296 5 is_stmt 1 discriminator 3 view .LVU371
	.loc 1 296 19 is_stmt 0 discriminator 3 view .LVU372
	ldr	r3, .L71+100
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 298 5 is_stmt 1 discriminator 3 view .LVU373
	.loc 1 298 78 discriminator 3 view .LVU374
	.loc 1 298 133 discriminator 3 view .LVU375
	.loc 1 298 214 is_stmt 0 discriminator 3 view .LVU376
	ldrh	r0, [r4]
	.loc 1 298 225 discriminator 3 view .LVU377
	lsls	r0, r0, #16
	.loc 1 298 133 discriminator 3 view .LVU378
	vcvt.u32.f32	s15, s19
	vstr.32	s15, [sp]	@ int
	vcvt.u32.f32	s15, s23
	vmov	r3, s15	@ int
	vcvt.u32.f32	s15, s22
	vmov	r2, s15	@ int
	ldr	r1, .L71+112
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_3
.LVL135:
	.loc 1 298 336 is_stmt 1 discriminator 3 view .LVU379
	.loc 1 300 5 discriminator 3 view .LVU380
	.loc 1 300 8 is_stmt 0 discriminator 3 view .LVU381
	ldr	r3, .L71+116
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 300 7 discriminator 3 view .LVU382
	cmp	r3, #0
	bne	.L2
	.loc 1 301 6 is_stmt 1 view .LVU383
	.loc 1 301 17 is_stmt 0 view .LVU384
	ldr	r3, .L71+120
	movs	r2, #1
	strb	r2, [r3]
	b	.L2
.L72:
	.align	3
.L71:
	.word	-1717986918
	.word	-1078355559
	.word	-1717986918
	.word	1069128089
	.word	-1717986918
	.word	1070176665
	.word	1413754136
	.word	1074340347
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	m_nrf_log_app_logs_data_dynamic
	.word	1148846080
	.word	.LC1
	.word	1120403456
	.word	0
	.word	-998637568
	.word	.LC2
	.word	.LC4
	.word	.LC6
	.word	.LC8
	.word	1022739087
	.word	.LC9
	.word	.LC11
	.word	-1067024384
	.word	.LC13
	.word	.LANCHOR3
	.word	.LC15
	.word	.LC16
	.word	.LC17
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
	.uleb128 0x18
	.byte	0x84
	.uleb128 0x6
	.byte	0x85
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.byte	0x88
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x48
	.byte	0x5
	.uleb128 0x50
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x51
	.uleb128 0x11
	.byte	0x5
	.uleb128 0x52
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x53
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x54
	.uleb128 0xe
	.byte	0x5
	.uleb128 0x55
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x56
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x58
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x59
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x5a
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x5b
	.uleb128 0x7
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x88
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
	.file 7 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application\\software\\kalmanFilter.h"
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
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x50
	.byte	0x8
	.byte	0x31
	.byte	0x1
	.4byte	0x50
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
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
	.4byte	.LASF48
	.byte	0x9
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
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
	.4byte	.LASF54
	.byte	0x8
	.byte	0xa
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0xa
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0xa
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.4byte	.LASF52
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
	.4byte	.LASF53
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
	.4byte	.LASF55
	.byte	0x14
	.byte	0xa
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF56
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
	.4byte	.LASF57
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
	.4byte	.LASF58
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
	.4byte	.LASF59
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
	.4byte	.LASF53
	.uleb128 0x8
	.4byte	.LASF60
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
	.4byte	.LASF61
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
	.4byte	.LASF62
	.byte	0xa
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xa
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xa
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xa
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xa
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xa
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xa
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF69
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
	.4byte	.LASF70
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
	.4byte	.LASF53
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
	.4byte	.LASF71
	.byte	0xa
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xa
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xa
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0xa
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0xa
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0xa
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xa
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0xa
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0xa
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0xa
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0xa
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0xa
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0xa
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0xa
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0xa
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0xa
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0xa
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0xa
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0xa
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0xa
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0xa
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0xa
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0xa
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0xa
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0xa
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0xa
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0xa
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF98
	.byte	0xa
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0xa
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0xa
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0xa
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF102
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
	.4byte	.LASF53
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
	.4byte	.LASF103
	.byte	0x8
	.byte	0xa
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0xa
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF105
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
	.4byte	.LASF70
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
	.file 23 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application\\software\\globals.h"
	.file 24 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h"
	.file 25 "../../../drivers/functions.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xde1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1a
	.4byte	.LASF241
	.byte	0xc
	.4byte	.LASF242
	.4byte	.LASF243
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.4byte	.LASF39
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0x3
	.byte	0x2f
	.byte	0x15
	.4byte	0x43
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF107
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x56
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x7
	.4byte	0x56
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0x3
	.byte	0x35
	.byte	0x16
	.4byte	0x6e
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF109
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x81
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0x3
	.byte	0x37
	.byte	0x14
	.4byte	0x99
	.uleb128 0x10
	.4byte	0x88
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x30
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF111
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF112
	.uleb128 0x8
	.4byte	.LASF113
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
	.4byte	.LASF70
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF53
	.uleb128 0x7
	.4byte	0xd3
	.uleb128 0x8
	.4byte	.LASF61
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
	.4byte	.LASF57
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
	.4byte	.LASF114
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
	.4byte	.LASF115
	.byte	0xa
	.2byte	0x10d
	.byte	0x1d
	.4byte	0x104
	.uleb128 0x1d
	.4byte	.LASF116
	.byte	0xa
	.2byte	0x110
	.byte	0x25
	.4byte	0xef
	.uleb128 0x1d
	.4byte	.LASF117
	.byte	0xa
	.2byte	0x111
	.byte	0x25
	.4byte	0xef
	.uleb128 0x11
	.4byte	0x5d
	.4byte	0x151
	.uleb128 0x12
	.4byte	0x30
	.byte	0x7f
	.byte	0
	.uleb128 0x7
	.4byte	0x141
	.uleb128 0x1d
	.4byte	.LASF118
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
	.4byte	.LASF119
	.byte	0xa
	.2byte	0x115
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF120
	.byte	0xa
	.2byte	0x116
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0xa
	.2byte	0x117
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF122
	.byte	0xa
	.2byte	0x118
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x11a
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF124
	.byte	0xa
	.2byte	0x11b
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x11c
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0xa
	.2byte	0x11d
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF127
	.byte	0xa
	.2byte	0x11e
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF128
	.byte	0xa
	.2byte	0x11f
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x16
	.4byte	0x99
	.4byte	0x204
	.uleb128 0xc
	.4byte	0x204
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x20f
	.uleb128 0x1f
	.4byte	.LASF138
	.uleb128 0x7
	.4byte	0x20a
	.uleb128 0x1d
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x135
	.byte	0xe
	.4byte	0x221
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1f5
	.uleb128 0x16
	.4byte	0x99
	.4byte	0x236
	.uleb128 0xc
	.4byte	0x236
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x20a
	.uleb128 0x1d
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x136
	.byte	0xe
	.4byte	0x249
	.uleb128 0x5
	.byte	0x4
	.4byte	0x227
	.uleb128 0x20
	.4byte	.LASF131
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
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x157
	.byte	0x1f
	.4byte	0x26d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x24f
	.uleb128 0x1d
	.4byte	.LASF133
	.byte	0xc
	.2byte	0x744
	.byte	0x19
	.4byte	0x94
	.uleb128 0x21
	.4byte	.LASF134
	.byte	0xd
	.byte	0x21
	.byte	0x11
	.4byte	0xa0
	.uleb128 0x8
	.4byte	.LASF135
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
	.4byte	.LASF136
	.byte	0x9
	.byte	0x75
	.byte	0x19
	.4byte	0x28c
	.uleb128 0x15
	.4byte	.LASF137
	.byte	0xe
	.2byte	0x317
	.byte	0x1b
	.4byte	0x2b5
	.uleb128 0x1f
	.4byte	.LASF139
	.uleb128 0x1d
	.4byte	.LASF140
	.byte	0xe
	.2byte	0x31b
	.byte	0xe
	.4byte	0x2c7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2a8
	.uleb128 0x1d
	.4byte	.LASF141
	.byte	0xe
	.2byte	0x31c
	.byte	0xe
	.4byte	0x2c7
	.uleb128 0x1d
	.4byte	.LASF142
	.byte	0xe
	.2byte	0x31d
	.byte	0xe
	.4byte	0x2c7
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF143
	.uleb128 0x21
	.4byte	.LASF144
	.byte	0xf
	.byte	0x53
	.byte	0x11
	.4byte	0xa0
	.uleb128 0x21
	.4byte	.LASF145
	.byte	0xf
	.byte	0x54
	.byte	0x11
	.4byte	0xa0
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0xf
	.byte	0x72
	.byte	0x13
	.4byte	0x312
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x21
	.4byte	.LASF147
	.byte	0xf
	.byte	0x73
	.byte	0x11
	.4byte	0xa0
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0x10
	.byte	0x39
	.byte	0xe
	.4byte	0xcc
	.uleb128 0x4
	.4byte	.LASF149
	.byte	0x10
	.byte	0x40
	.byte	0x16
	.4byte	0xa0
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.4byte	.LASF150
	.uleb128 0x8
	.4byte	.LASF151
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
	.4byte	.LASF152
	.byte	0x11
	.2byte	0x124
	.byte	0x2e
	.4byte	0x343
	.uleb128 0x4
	.4byte	.LASF153
	.byte	0x12
	.byte	0x2f
	.byte	0x10
	.4byte	0xca
	.uleb128 0x4
	.4byte	.LASF154
	.byte	0x13
	.byte	0x26
	.byte	0x17
	.4byte	0x360
	.uleb128 0x4
	.4byte	.LASF155
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
	.4byte	.LASF156
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
	.4byte	.LASF157
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
	.4byte	.LASF158
	.byte	0x15
	.byte	0x92
	.byte	0x13
	.4byte	0x3c0
	.uleb128 0x7
	.4byte	0x3d0
	.uleb128 0x21
	.4byte	.LASF159
	.byte	0x16
	.byte	0x13
	.byte	0x22
	.4byte	0x3dc
	.uleb128 0x21
	.4byte	.LASF160
	.byte	0x16
	.byte	0x14
	.byte	0x16
	.4byte	0x360
	.uleb128 0x22
	.4byte	.LASF194
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
	.4byte	.LASF161
	.byte	0x16
	.byte	0x42
	.byte	0x18
	.4byte	0x3bb
	.uleb128 0x21
	.4byte	.LASF162
	.byte	0x17
	.byte	0x11
	.byte	0x15
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF163
	.byte	0x17
	.byte	0x12
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF164
	.byte	0x17
	.byte	0x13
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF165
	.byte	0x17
	.byte	0x14
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF166
	.byte	0x17
	.byte	0x15
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF167
	.byte	0x17
	.byte	0x16
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF168
	.byte	0x17
	.byte	0x17
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF169
	.byte	0x17
	.byte	0x18
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF170
	.byte	0x17
	.byte	0x1b
	.byte	0x1a
	.4byte	0x36c
	.uleb128 0x21
	.4byte	.LASF171
	.byte	0x17
	.byte	0x1c
	.byte	0x1a
	.4byte	0x36c
	.uleb128 0x21
	.4byte	.LASF172
	.byte	0x17
	.byte	0x1d
	.byte	0x1a
	.4byte	0x36c
	.uleb128 0x21
	.4byte	.LASF173
	.byte	0x17
	.byte	0x1e
	.byte	0x1a
	.4byte	0x36c
	.uleb128 0x21
	.4byte	.LASF174
	.byte	0x17
	.byte	0x1f
	.byte	0x1a
	.4byte	0x36c
	.uleb128 0x21
	.4byte	.LASF175
	.byte	0x17
	.byte	0x20
	.byte	0x1a
	.4byte	0x36c
	.uleb128 0x21
	.4byte	.LASF176
	.byte	0x17
	.byte	0x24
	.byte	0x16
	.4byte	0x360
	.uleb128 0x21
	.4byte	.LASF177
	.byte	0x17
	.byte	0x25
	.byte	0x16
	.4byte	0x360
	.uleb128 0x21
	.4byte	.LASF178
	.byte	0x17
	.byte	0x26
	.byte	0x16
	.4byte	0x360
	.uleb128 0x21
	.4byte	.LASF179
	.byte	0x17
	.byte	0x29
	.byte	0x10
	.4byte	0x4a
	.uleb128 0x21
	.4byte	.LASF180
	.byte	0x17
	.byte	0x2a
	.byte	0x10
	.4byte	0x4a
	.uleb128 0x21
	.4byte	.LASF181
	.byte	0x17
	.byte	0x2c
	.byte	0x10
	.4byte	0x4a
	.uleb128 0x21
	.4byte	.LASF182
	.byte	0x17
	.byte	0x2f
	.byte	0xe
	.4byte	0x29
	.uleb128 0x21
	.4byte	.LASF183
	.byte	0x17
	.byte	0x30
	.byte	0x10
	.4byte	0x62
	.uleb128 0x21
	.4byte	.LASF184
	.byte	0x17
	.byte	0x31
	.byte	0x10
	.4byte	0x62
	.uleb128 0x21
	.4byte	.LASF185
	.byte	0x17
	.byte	0x32
	.byte	0xe
	.4byte	0x29
	.uleb128 0x21
	.4byte	.LASF186
	.byte	0x17
	.byte	0x33
	.byte	0xe
	.4byte	0x29
	.uleb128 0x21
	.4byte	.LASF187
	.byte	0x17
	.byte	0x36
	.byte	0x10
	.4byte	0x62
	.uleb128 0x21
	.4byte	.LASF188
	.byte	0x17
	.byte	0x37
	.byte	0x10
	.4byte	0x62
	.uleb128 0x23
	.4byte	.LASF189
	.byte	0x1
	.byte	0x19
	.byte	0x8
	.4byte	0x37
	.uleb128 0x5
	.byte	0x3
	.4byte	gyroBiasGuard
	.uleb128 0x23
	.4byte	.LASF190
	.byte	0x1
	.byte	0x1a
	.byte	0xf
	.4byte	0xba
	.uleb128 0x5
	.byte	0x3
	.4byte	gyro
	.uleb128 0x23
	.4byte	.LASF191
	.byte	0x1
	.byte	0x1b
	.byte	0xf
	.4byte	0xba
	.uleb128 0x5
	.byte	0x3
	.4byte	accel
	.uleb128 0x23
	.4byte	.LASF192
	.byte	0x1
	.byte	0x1c
	.byte	0x7
	.4byte	0x384
	.uleb128 0x5
	.byte	0x3
	.4byte	kf_state
	.uleb128 0x24
	.4byte	.LASF244
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb1
	.uleb128 0x25
	.4byte	.LASF245
	.byte	0x1
	.byte	0x20
	.byte	0x23
	.4byte	0xca
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x26
	.4byte	.LASF193
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	0x99
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x22
	.4byte	.LASF195
	.byte	0x1
	.byte	0x22
	.byte	0x8
	.4byte	0x29
	.byte	0x4
	.4byte	0x3d23d70a
	.uleb128 0x26
	.4byte	.LASF196
	.byte	0x1
	.byte	0x23
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x26
	.4byte	.LASF197
	.byte	0x1
	.byte	0x24
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x26
	.4byte	.LASF198
	.byte	0x1
	.byte	0x25
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x22
	.4byte	.LASF199
	.byte	0x1
	.byte	0x26
	.byte	0x8
	.4byte	0x29
	.byte	0x4
	.4byte	0
	.uleb128 0x27
	.4byte	.LASF200
	.byte	0x1
	.byte	0x28
	.byte	0x6
	.4byte	0x99
	.byte	0
	.uleb128 0x27
	.4byte	.LASF201
	.byte	0x1
	.byte	0x29
	.byte	0x6
	.4byte	0x99
	.byte	0
	.uleb128 0x27
	.4byte	.LASF202
	.byte	0x1
	.byte	0x2a
	.byte	0x6
	.4byte	0x99
	.byte	0
	.uleb128 0x26
	.4byte	.LASF203
	.byte	0x1
	.byte	0x32
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x28
	.4byte	.LASF204
	.byte	0x1
	.byte	0x35
	.byte	0xd
	.4byte	0x330
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.4byte	.LASF205
	.byte	0x1
	.byte	0x36
	.byte	0xd
	.4byte	0x330
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x29
	.ascii	"Z\000"
	.byte	0x1
	.byte	0x37
	.byte	0x8
	.4byte	0xcb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0
	.4byte	0xa87
	.uleb128 0x26
	.4byte	.LASF206
	.byte	0x1
	.byte	0x3f
	.byte	0xb
	.4byte	0x62
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x26
	.4byte	.LASF207
	.byte	0x1
	.byte	0x40
	.byte	0xb
	.4byte	0x62
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x26
	.4byte	.LASF208
	.byte	0x1
	.byte	0x41
	.byte	0x9
	.4byte	0x29
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x26
	.4byte	.LASF209
	.byte	0x1
	.byte	0x42
	.byte	0x9
	.4byte	0x29
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x26
	.4byte	.LASF210
	.byte	0x1
	.byte	0x4b
	.byte	0x9
	.4byte	0x29
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x26
	.4byte	.LASF211
	.byte	0x1
	.byte	0x4c
	.byte	0x9
	.4byte	0x29
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x26
	.4byte	.LASF212
	.byte	0x1
	.byte	0x8e
	.byte	0xa
	.4byte	0x29
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x26
	.4byte	.LASF213
	.byte	0x1
	.byte	0x8f
	.byte	0xa
	.4byte	0x29
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x2b
	.4byte	.LVL7
	.4byte	0xcd1
	.4byte	0x782
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0xf5
	.uleb128 0x54
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0xc47a0000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL10
	.4byte	0xcd1
	.4byte	0x7ac
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0xf5
	.uleb128 0x54
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x447a0000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL11
	.4byte	0xcd1
	.4byte	0x7d6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0xf5
	.uleb128 0x54
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x447a0000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL12
	.4byte	0xcd1
	.4byte	0x800
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0xf5
	.uleb128 0x53
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x447a0000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL13
	.4byte	0xcde
	.4byte	0x813
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL15
	.4byte	0xceb
	.uleb128 0x2d
	.4byte	.LVL20
	.4byte	0xcf8
	.uleb128 0x2b
	.4byte	.LVL42
	.4byte	0xd05
	.4byte	0x83a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL43
	.4byte	0xd11
	.uleb128 0x2b
	.4byte	.LVL44
	.4byte	0xcd1
	.4byte	0x85a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL45
	.4byte	0xcd1
	.4byte	0x871
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL50
	.4byte	0xcd1
	.4byte	0x88e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL52
	.4byte	0xd1d
	.4byte	0x8a2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL53
	.4byte	0xd29
	.4byte	0x8b5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL54
	.4byte	0xd36
	.4byte	0x8d2
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
	.4byte	.LVL55
	.4byte	0xd36
	.4byte	0x8ef
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
	.4byte	.LVL59
	.4byte	0xd29
	.4byte	0x902
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL62
	.4byte	0xd36
	.4byte	0x91f
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
	.uleb128 0x2d
	.4byte	.LVL74
	.4byte	0xd43
	.uleb128 0x2d
	.4byte	.LVL76
	.4byte	0xd4f
	.uleb128 0x2d
	.4byte	.LVL77
	.4byte	0xd5b
	.uleb128 0x2d
	.4byte	.LVL78
	.4byte	0xd67
	.uleb128 0x2b
	.4byte	.LVL80
	.4byte	0xcd1
	.4byte	0x96d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0xf5
	.uleb128 0x54
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x447a0000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL87
	.4byte	0xcd1
	.4byte	0x997
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0xf5
	.uleb128 0x54
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0xc47a0000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL88
	.4byte	0xcd1
	.4byte	0x9c1
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0xf5
	.uleb128 0x54
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0xc47a0000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL89
	.4byte	0xcd1
	.4byte	0x9eb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0xf5
	.uleb128 0x53
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0xc47a0000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL91
	.4byte	0xd73
	.4byte	0xa02
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL94
	.4byte	0xd80
	.uleb128 0x2b
	.4byte	.LVL98
	.4byte	0xd8d
	.4byte	0xa25
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f800000
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL99
	.4byte	0xd8d
	.4byte	0xa3f
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3cf5c28f
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL100
	.4byte	0xcd1
	.4byte	0xa56
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL101
	.4byte	0xcd1
	.4byte	0xa6d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL106
	.4byte	0xcd1
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xc78
	.uleb128 0x30
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x105
	.byte	0xa
	.4byte	0xcc1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x31
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x106
	.byte	0xe
	.4byte	0x75
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x32
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x107
	.byte	0xe
	.4byte	0x75
	.2byte	0x12c
	.uleb128 0x33
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x108
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x33
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x109
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x33
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x10a
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x33
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x10b
	.byte	0x9
	.4byte	0x99
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x33
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x10c
	.byte	0x9
	.4byte	0x99
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x2b
	.4byte	.LVL110
	.4byte	0xcde
	.4byte	0xb44
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x96
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL114
	.4byte	0xd4f
	.uleb128 0x2d
	.4byte	.LVL115
	.4byte	0xd5b
	.uleb128 0x2d
	.4byte	.LVL116
	.4byte	0xd67
	.uleb128 0x2b
	.4byte	.LVL120
	.4byte	0xcde
	.4byte	0xb73
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL121
	.4byte	0xd99
	.4byte	0xb9d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL122
	.4byte	0xda5
	.4byte	0xbb7
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL124
	.4byte	0xd43
	.uleb128 0x2b
	.4byte	.LVL125
	.4byte	0xcde
	.4byte	0xbd3
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL127
	.4byte	0xd99
	.4byte	0xbfd
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL128
	.4byte	0xda5
	.4byte	0xc17
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL131
	.4byte	0xdb1
	.4byte	0xc48
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x52
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x51
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x53
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL135
	.4byte	0xdb1
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x56
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x57
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x53
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL2
	.4byte	0xdbe
	.uleb128 0x2b
	.4byte	.LVL5
	.4byte	0xdcb
	.4byte	0xc99
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL57
	.4byte	0xdd7
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x29
	.4byte	0xcc1
	.uleb128 0x12
	.4byte	0x30
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.4byte	0xd3
	.4byte	0xcd1
	.uleb128 0x12
	.4byte	0x30
	.byte	0x13
	.byte	0
	.uleb128 0x34
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0x11
	.2byte	0x1b4
	.byte	0x6
	.uleb128 0x34
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0x14
	.2byte	0x2ee
	.byte	0x6
	.uleb128 0x35
	.ascii	"cos\000"
	.ascii	"cos\000"
	.byte	0x18
	.2byte	0x125
	.byte	0x8
	.uleb128 0x35
	.ascii	"sin\000"
	.ascii	"sin\000"
	.byte	0x18
	.2byte	0x144
	.byte	0x8
	.uleb128 0x36
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0x7
	.byte	0x15
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0x7
	.byte	0x17
	.byte	0x7
	.uleb128 0x36
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0x19
	.byte	0xe
	.byte	0x6
	.uleb128 0x34
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0x12
	.2byte	0x589
	.byte	0xc
	.uleb128 0x34
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0x12
	.2byte	0x289
	.byte	0xc
	.uleb128 0x36
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0xb
	.byte	0x1a
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0xb
	.byte	0x19
	.byte	0x6
	.uleb128 0x36
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0xb
	.byte	0x22
	.byte	0xf
	.uleb128 0x36
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0xb
	.byte	0x23
	.byte	0xf
	.uleb128 0x34
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0x11
	.2byte	0x1ab
	.byte	0x6
	.uleb128 0x34
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0x18
	.2byte	0x3c8
	.byte	0x8
	.uleb128 0x36
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0x7
	.byte	0x1b
	.byte	0x6
	.uleb128 0x36
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0xe
	.byte	0x87
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0x16
	.byte	0x66
	.byte	0x6
	.uleb128 0x34
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0x11
	.2byte	0x1cb
	.byte	0x6
	.uleb128 0x34
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0x14
	.2byte	0x53f
	.byte	0xc
	.uleb128 0x36
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0x7
	.byte	0x13
	.byte	0x6
	.uleb128 0x34
	.4byte	.LASF240
	.4byte	.LASF240
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x32
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU302
	.uleb128 .LVU303
	.uleb128 0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL108
	.4byte	.LFE212
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU5
	.uleb128 .LVU23
	.uleb128 .LVU23
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
	.uleb128 .LVU23
	.uleb128 .LVU23
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
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU362
	.uleb128 .LVU367
	.uleb128 0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL6
	.4byte	.LVL130
	.2byte	0x2
	.byte	0x90
	.uleb128 0x53
	.4byte	.LVL132
	.4byte	.LFE212
	.2byte	0x2
	.byte	0x90
	.uleb128 0x53
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU12
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU170
	.uleb128 .LVU218
	.uleb128 .LVU233
	.uleb128 .LVU234
	.uleb128 .LVU258
	.uleb128 .LVU266
	.uleb128 .LVU267
	.uleb128 .LVU267
	.uleb128 .LVU303
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL6
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x90
	.uleb128 0x54
	.4byte	.LVL79
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x90
	.uleb128 0x54
	.4byte	.LVL86
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x90
	.uleb128 0x54
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL92
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x90
	.uleb128 0x54
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
	.sleb128 -76
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU23
	.uleb128 .LVU170
	.uleb128 .LVU179
	.uleb128 .LVU185
	.uleb128 .LVU185
	.uleb128 .LVU303
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU23
	.uleb128 .LVU31
	.uleb128 .LVU180
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU230
	.uleb128 .LVU258
	.uleb128 .LVU267
.LLST8:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU23
	.uleb128 .LVU170
	.uleb128 .LVU181
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 .LVU303
.LLST9:
	.4byte	.LVL6
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	.LVL58
	.4byte	.LVL72
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL72
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU23
	.uleb128 .LVU170
	.uleb128 .LVU182
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 .LVU303
.LLST10:
	.4byte	.LVL6
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x90
	.uleb128 0x59
	.4byte	.LVL58
	.4byte	.LVL73
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL73
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x90
	.uleb128 0x59
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU23
	.uleb128 .LVU170
	.uleb128 .LVU192
	.uleb128 .LVU194
	.uleb128 .LVU194
	.uleb128 .LVU303
.LLST11:
	.4byte	.LVL6
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL67
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU23
	.uleb128 .LVU170
	.uleb128 .LVU196
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 .LVU303
.LLST12:
	.4byte	.LVL6
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL71
	.4byte	.LVL75-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL75-1
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU69
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU170
	.uleb128 .LVU267
	.uleb128 .LVU303
.LLST13:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.4byte	.LVL92
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU73
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU93
.LLST14:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x90
	.uleb128 0x55
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU317
	.uleb128 .LVU324
	.uleb128 .LVU324
	.uleb128 .LVU326
	.uleb128 .LVU327
	.uleb128 0
.LLST15:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL113
	.4byte	.LFE212
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU311
	.uleb128 .LVU324
	.uleb128 .LVU324
	.uleb128 0
.LLST16:
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL111
	.4byte	.LFE212
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU312
	.uleb128 .LVU324
	.uleb128 .LVU324
	.uleb128 0
.LLST17:
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL111
	.4byte	.LFE212
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU313
	.uleb128 .LVU324
	.uleb128 .LVU324
	.uleb128 0
.LLST18:
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL111
	.4byte	.LFE212
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU314
	.uleb128 .LVU324
	.uleb128 .LVU324
	.uleb128 .LVU359
.LLST19:
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU315
	.uleb128 .LVU324
	.uleb128 .LVU324
	.uleb128 0
.LLST20:
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LFE212
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x12d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xde5
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
	.4byte	0xde5
	.4byte	0x43
	.ascii	"signed char\000"
	.4byte	0x37
	.ascii	"int8_t\000"
	.4byte	0x56
	.ascii	"unsigned char\000"
	.4byte	0x4a
	.ascii	"uint8_t\000"
	.4byte	0x6e
	.ascii	"short int\000"
	.4byte	0x62
	.ascii	"int16_t\000"
	.4byte	0x81
	.ascii	"short unsigned int\000"
	.4byte	0x75
	.ascii	"uint16_t\000"
	.4byte	0x99
	.ascii	"int\000"
	.4byte	0x88
	.ascii	"int32_t\000"
	.4byte	0x30
	.ascii	"unsigned int\000"
	.4byte	0xa0
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
	.file 88 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application\\software\\EstimatorTask.h"
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
.LASF216:
	.ascii	"gyroF\000"
.LASF193:
	.ascii	"count\000"
.LASF45:
	.ascii	"NRF_LOG_SEVERITY_INFO\000"
.LASF41:
	.ascii	"padding\000"
.LASF198:
	.ascii	"gyroOffset\000"
.LASF147:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF125:
	.ascii	"__RAL_data_utf8_space\000"
.LASF102:
	.ascii	"date_time_format\000"
.LASF120:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF51:
	.ascii	"next\000"
.LASF43:
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
.LASF116:
	.ascii	"__RAL_codeset_ascii\000"
.LASF52:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF9:
	.ascii	"widthBits\000"
.LASF92:
	.ascii	"int_n_sep_by_space\000"
.LASF7:
	.ascii	"FONT_CHAR_INFO\000"
.LASF243:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_application\\\\pca10040\\\\s132\\\\"
	.ascii	"ses\000"
.LASF83:
	.ascii	"p_cs_precedes\000"
.LASF209:
	.ascii	"dTheta\000"
.LASF163:
	.ascii	"handle_user_task\000"
.LASF127:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF179:
	.ascii	"gHandshook\000"
.LASF224:
	.ascii	"kalmanGetState\000"
.LASF227:
	.ascii	"xQueueGenericSend\000"
.LASF208:
	.ascii	"dRobot\000"
.LASF112:
	.ascii	"long long unsigned int\000"
.LASF241:
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
.LASF55:
	.ascii	"__locale_s\000"
.LASF130:
	.ascii	"__user_get_time_of_day\000"
.LASF146:
	.ascii	"_vectors\000"
.LASF153:
	.ascii	"QueueHandle_t\000"
.LASF133:
	.ascii	"ITM_RxBuffer\000"
.LASF199:
	.ascii	"compassOffset\000"
.LASF190:
	.ascii	"gyro\000"
.LASF230:
	.ascii	"IMU_getGyro\000"
.LASF159:
	.ascii	"orkney_8ptFontInfo\000"
.LASF74:
	.ascii	"int_curr_symbol\000"
.LASF194:
	.ascii	"m_lcd_cb\000"
.LASF98:
	.ascii	"abbrev_month_names\000"
.LASF108:
	.ascii	"int16_t\000"
.LASF111:
	.ascii	"long long int\000"
.LASF107:
	.ascii	"signed char\000"
.LASF114:
	.ascii	"__RAL_global_locale\000"
.LASF40:
	.ascii	"module_id\000"
.LASF59:
	.ascii	"codeset\000"
.LASF222:
	.ascii	"vTaskDelay\000"
.LASF157:
	.ascii	"FONT_INFO\000"
.LASF66:
	.ascii	"__towupper\000"
.LASF242:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam_application\\software\\EstimatorTask.c\000"
.LASF168:
	.ascii	"sensor_tower_task\000"
.LASF226:
	.ascii	"xQueueSemaphoreTake\000"
.LASF27:
	.ascii	"state\000"
.LASF70:
	.ascii	"long int\000"
.LASF185:
	.ascii	"gLeft\000"
.LASF60:
	.ascii	"__RAL_locale_data_t\000"
.LASF124:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF155:
	.ascii	"TaskHandle_t\000"
.LASF140:
	.ascii	"stdin\000"
.LASF64:
	.ascii	"__tolower\000"
.LASF44:
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
.LASF11:
	.ascii	"uint16_t\000"
.LASF220:
	.ascii	"sucsess\000"
.LASF150:
	.ascii	"double\000"
.LASF148:
	.ascii	"BaseType_t\000"
.LASF62:
	.ascii	"__isctype\000"
.LASF89:
	.ascii	"int_p_cs_precedes\000"
.LASF169:
	.ascii	"arq_task\000"
.LASF214:
	.ascii	"str4\000"
.LASF96:
	.ascii	"abbrev_day_names\000"
.LASF80:
	.ascii	"negative_sign\000"
.LASF105:
	.ascii	"__wchar\000"
.LASF2:
	.ascii	"endChar\000"
.LASF181:
	.ascii	"USEBLUETOOTH\000"
.LASF24:
	.ascii	"nrf_lcd_rotation_t\000"
.LASF72:
	.ascii	"thousands_sep\000"
.LASF99:
	.ascii	"am_pm_indicator\000"
.LASF78:
	.ascii	"mon_grouping\000"
.LASF65:
	.ascii	"__iswctype\000"
.LASF88:
	.ascii	"n_sign_posn\000"
.LASF206:
	.ascii	"leftWheelTicks\000"
.LASF42:
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
.LASF21:
	.ascii	"lcd_cb_t\000"
.LASF100:
	.ascii	"date_format\000"
.LASF210:
	.ascii	"dLeft\000"
.LASF3:
	.ascii	"spacePixels\000"
.LASF26:
	.ascii	"unsigned int\000"
.LASF91:
	.ascii	"int_p_sep_by_space\000"
.LASF134:
	.ascii	"SystemCoreClock\000"
.LASF204:
	.ascii	"xLastWakeTime\000"
.LASF123:
	.ascii	"__RAL_data_utf8_period\000"
.LASF0:
	.ascii	"height\000"
.LASF73:
	.ascii	"grouping\000"
.LASF143:
	.ascii	"long unsigned int\000"
.LASF4:
	.ascii	"charInfo\000"
.LASF67:
	.ascii	"__towlower\000"
.LASF183:
	.ascii	"gX_hat\000"
.LASF128:
	.ascii	"__RAL_data_empty_string\000"
.LASF245:
	.ascii	"pvParameters\000"
.LASF166:
	.ascii	"pose_controller_task\000"
.LASF56:
	.ascii	"__category\000"
.LASF177:
	.ascii	"scanStatusQ\000"
.LASF151:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF145:
	.ascii	"__StackLimit\000"
.LASF28:
	.ascii	"width\000"
.LASF135:
	.ascii	"nrf_nvic_state_t\000"
.LASF164:
	.ascii	"handle_microsd_task\000"
.LASF178:
	.ascii	"queue_microsd\000"
.LASF12:
	.ascii	"short unsigned int\000"
.LASF219:
	.ascii	"fails\000"
.LASF207:
	.ascii	"rightWheelTicks\000"
.LASF19:
	.ascii	"lcd_display_invert\000"
.LASF197:
	.ascii	"accelYoffset\000"
.LASF58:
	.ascii	"name\000"
.LASF234:
	.ascii	"kf_setEncoderVar\000"
.LASF225:
	.ascii	"vFunc_Inf2pi\000"
.LASF239:
	.ascii	"kf_init\000"
.LASF228:
	.ascii	"IMU_newData\000"
.LASF95:
	.ascii	"day_names\000"
.LASF31:
	.ascii	"NRF_LCD_ROTATE_0\000"
.LASF231:
	.ascii	"IMU_getAccel\000"
.LASF203:
	.ascii	"gyrZ\000"
.LASF235:
	.ascii	"sprintf\000"
.LASF1:
	.ascii	"startChar\000"
.LASF138:
	.ascii	"timeval\000"
.LASF37:
	.ascii	"NRFX_DRV_STATE_POWERED_ON\000"
.LASF141:
	.ascii	"stdout\000"
.LASF205:
	.ascii	"xLastWakeTime2\000"
.LASF212:
	.ascii	"cosTheta\000"
.LASF167:
	.ascii	"communication_task\000"
.LASF57:
	.ascii	"__RAL_locale_t\000"
.LASF101:
	.ascii	"time_format\000"
.LASF172:
	.ascii	"xTickMutex\000"
.LASF63:
	.ascii	"__toupper\000"
.LASF215:
	.ascii	"samples\000"
.LASF200:
	.ascii	"KFcounter\000"
.LASF87:
	.ascii	"p_sign_posn\000"
.LASF22:
	.ascii	"ret_code_t\000"
.LASF15:
	.ascii	"lcd_pixel_draw\000"
.LASF118:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF75:
	.ascii	"currency_symbol\000"
.LASF173:
	.ascii	"xControllerBSem\000"
.LASF50:
	.ascii	"decode\000"
.LASF149:
	.ascii	"TickType_t\000"
.LASF20:
	.ascii	"p_lcd_cb\000"
.LASF201:
	.ascii	"KFheading\000"
.LASF34:
	.ascii	"NRF_LCD_ROTATE_270\000"
.LASF69:
	.ascii	"__mbtowc\000"
.LASF136:
	.ascii	"nrf_nvic_state\000"
.LASF191:
	.ascii	"accel\000"
.LASF115:
	.ascii	"__RAL_c_locale\000"
.LASF202:
	.ascii	"time\000"
.LASF132:
	.ascii	"__RAL_error_decoder_head\000"
.LASF244:
	.ascii	"vMainPoseEstimatorTask\000"
.LASF171:
	.ascii	"xPoseMutex\000"
.LASF129:
	.ascii	"__user_set_time_of_day\000"
.LASF90:
	.ascii	"int_n_cs_precedes\000"
.LASF186:
	.ascii	"gRight\000"
.LASF39:
	.ascii	"float\000"
.LASF213:
	.ascii	"sinTheta\000"
.LASF104:
	.ascii	"__state\000"
.LASF14:
	.ascii	"lcd_uninit\000"
.LASF161:
	.ascii	"m_nrf_lcd\000"
.LASF16:
	.ascii	"lcd_rect_draw\000"
.LASF195:
	.ascii	"period_in_S\000"
.LASF144:
	.ascii	"__StackTop\000"
.LASF170:
	.ascii	"xScanLock\000"
.LASF25:
	.ascii	"_Bool\000"
.LASF110:
	.ascii	"int32_t\000"
.LASF8:
	.ascii	"unsigned char\000"
.LASF119:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF156:
	.ascii	"nrf_lcd_t\000"
.LASF82:
	.ascii	"frac_digits\000"
.LASF47:
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
.LASF109:
	.ascii	"short int\000"
.LASF48:
	.ascii	"__irq_masks\000"
.LASF49:
	.ascii	"__cr_flag\000"
.LASF54:
	.ascii	"__RAL_error_decoder_s\000"
.LASF113:
	.ascii	"IMU_reading_t\000"
.LASF232:
	.ascii	"nrf_log_frontend_std_0\000"
.LASF221:
	.ascii	"nrf_log_frontend_std_1\000"
.LASF182:
	.ascii	"gTheta_hat\000"
.LASF237:
	.ascii	"nrf_log_frontend_std_3\000"
.LASF103:
	.ascii	"__mbstate_s\000"
.LASF137:
	.ascii	"FILE\000"
.LASF18:
	.ascii	"lcd_rotation_set\000"
.LASF30:
	.ascii	"nrfx_drv_state_t\000"
.LASF223:
	.ascii	"kf_step\000"
.LASF77:
	.ascii	"mon_thousands_sep\000"
.LASF236:
	.ascii	"display_text_on_line\000"
.LASF187:
	.ascii	"gRightWheelTicks\000"
.LASF192:
	.ascii	"kf_state\000"
.LASF23:
	.ascii	"uint32_t\000"
.LASF180:
	.ascii	"gPaused\000"
.LASF93:
	.ascii	"int_p_sign_posn\000"
.LASF33:
	.ascii	"NRF_LCD_ROTATE_180\000"
.LASF154:
	.ascii	"SemaphoreHandle_t\000"
.LASF53:
	.ascii	"char\000"
.LASF176:
	.ascii	"poseControllerQ\000"
.LASF84:
	.ascii	"p_sep_by_space\000"
.LASF189:
	.ascii	"gyroBiasGuard\000"
.LASF238:
	.ascii	"xTaskGetTickCount\000"
.LASF152:
	.ascii	"m_nrf_log_app_logs_data_dynamic\000"
.LASF38:
	.ascii	"heading\000"
.LASF10:
	.ascii	"offset\000"
.LASF32:
	.ascii	"NRF_LCD_ROTATE_90\000"
.LASF46:
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
.LASF61:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF233:
	.ascii	"fabs\000"
.LASF240:
	.ascii	"vTaskDelayUntil\000"
.LASF106:
	.ascii	"int8_t\000"
.LASF188:
	.ascii	"gLeftWheelTicks\000"
.LASF94:
	.ascii	"int_n_sign_posn\000"
.LASF165:
	.ascii	"pose_estimator_task\000"
.LASF142:
	.ascii	"stderr\000"
.LASF121:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF162:
	.ascii	"handle_display_task\000"
.LASF196:
	.ascii	"accelXoffset\000"
.LASF131:
	.ascii	"__RAL_error_decoder_t\000"
.LASF85:
	.ascii	"n_cs_precedes\000"
.LASF6:
	.ascii	"uint8_t\000"
.LASF97:
	.ascii	"month_names\000"
.LASF17:
	.ascii	"lcd_display\000"
.LASF117:
	.ascii	"__RAL_codeset_utf8\000"
.LASF81:
	.ascii	"int_frac_digits\000"
.LASF211:
	.ascii	"dRight\000"
.LASF229:
	.ascii	"IMU_read\000"
.LASF174:
	.ascii	"xCommandReadyBSem\000"
.LASF175:
	.ascii	"mutex_spi\000"
.LASF36:
	.ascii	"NRFX_DRV_STATE_INITIALIZED\000"
.LASF35:
	.ascii	"NRFX_DRV_STATE_UNINITIALIZED\000"
.LASF160:
	.ascii	"queue_display\000"
.LASF29:
	.ascii	"rotation\000"
.LASF86:
	.ascii	"n_sep_by_space\000"
.LASF139:
	.ascii	"__RAL_FILE\000"
.LASF158:
	.ascii	"nrf_gfx_font_desc_t\000"
.LASF217:
	.ascii	"accelFX\000"
.LASF218:
	.ascii	"accelFY\000"
.LASF126:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF13:
	.ascii	"lcd_init\000"
.LASF122:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF76:
	.ascii	"mon_decimal_point\000"
.LASF79:
	.ascii	"positive_sign\000"
.LASF68:
	.ascii	"__wctomb\000"
.LASF71:
	.ascii	"decimal_point\000"
.LASF184:
	.ascii	"gY_hat\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
