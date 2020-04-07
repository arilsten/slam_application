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
	.file	"nrf_sdh_freertos.c"
	.text
.Ltext0:
	.section	.text.softdevice_task,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	softdevice_task, %function
softdevice_task:
.LVL0:
.LFB202:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\softdevice\\common\\nrf_sdh_freertos.c"
	.loc 1 76 1 view -0
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 76 1 is_stmt 0 view .LVU1
	push	{r3, lr}
.LCFI0:
	.loc 1 77 5 is_stmt 1 view .LVU2
	.loc 1 77 280 view .LVU3
	.loc 1 79 5 view .LVU4
	.loc 1 79 21 is_stmt 0 view .LVU5
	ldr	r3, .L5
	ldr	r3, [r3]
	.loc 1 79 8 view .LVU6
	cbz	r3, .L3
	.loc 1 81 9 is_stmt 1 view .LVU7
	blx	r3
.LVL1:
.L3:
	.loc 1 84 5 discriminator 1 view .LVU8
	.loc 1 86 9 discriminator 1 view .LVU9
	bl	nrf_sdh_evts_poll
.LVL2:
	.loc 1 87 9 discriminator 1 view .LVU10
	movs	r0, #0
	bl	vTaskSuspend
.LVL3:
	.loc 1 84 11 discriminator 1 view .LVU11
	b	.L3
.L6:
	.align	2
.L5:
	.word	.LANCHOR0
.LFE202:
	.size	softdevice_task, .-softdevice_task
	.section	.text.SWI2_EGU2_IRQHandler,"ax",%progbits
	.align	1
	.global	SWI2_EGU2_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SWI2_EGU2_IRQHandler, %function
SWI2_EGU2_IRQHandler:
.LFB201:
	.loc 1 62 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI1:
	.loc 1 63 6 view .LVU13
	.loc 1 65 6 view .LVU14
	.loc 1 65 23 is_stmt 0 view .LVU15
	ldr	r3, .L11
	ldr	r0, [r3]
	bl	xTaskResumeFromISR
.LVL4:
	.loc 1 67 6 is_stmt 1 view .LVU16
	.loc 1 67 8 is_stmt 0 view .LVU17
	cmp	r0, #1
	beq	.L10
.L7:
	.loc 1 71 1 view .LVU18
	pop	{r3, pc}
.L10:
	.loc 1 69 10 is_stmt 1 view .LVU19
	.loc 1 69 13 is_stmt 0 view .LVU20
	cmp	r0, #0
	beq	.L7
	.loc 1 69 58 is_stmt 1 discriminator 1 view .LVU21
	.loc 1 69 63 discriminator 1 view .LVU22
	.loc 1 69 113 is_stmt 0 discriminator 1 view .LVU23
	ldr	r3, .L11+4
	mov	r2, #268435456
	str	r2, [r3, #4]
	.loc 1 69 129 is_stmt 1 discriminator 1 view .LVU24
.LBB8:
.LBI8:
	.file 2 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.loc 2 404 51 discriminator 1 view .LVU25
.LBB9:
	.loc 2 406 3 discriminator 1 view .LVU26
	.syntax unified
@ 406 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	sev
@ 0 "" 2
	.thumb
	.syntax unified
.LBE9:
.LBE8:
	.loc 1 69 138 discriminator 1 view .LVU27
.LBB10:
.LBI10:
	.loc 2 427 51 discriminator 1 view .LVU28
.LBB11:
	.loc 2 429 3 discriminator 1 view .LVU29
	.syntax unified
@ 429 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	dsb 0xF
@ 0 "" 2
	.thumb
	.syntax unified
.LBE11:
.LBE10:
	.loc 1 69 147 discriminator 1 view .LVU30
.LBB12:
.LBI12:
	.loc 2 416 51 discriminator 1 view .LVU31
.LBB13:
	.loc 2 418 3 discriminator 1 view .LVU32
	.syntax unified
@ 418 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	isb 0xF
@ 0 "" 2
	.thumb
	.syntax unified
.LBE13:
.LBE12:
	.loc 1 69 163 discriminator 1 view .LVU33
	.loc 1 71 1 is_stmt 0 discriminator 1 view .LVU34
	b	.L7
.L12:
	.align	2
.L11:
	.word	.LANCHOR1
	.word	-536810240
.LFE201:
	.size	SWI2_EGU2_IRQHandler, .-SWI2_EGU2_IRQHandler
	.section	.rodata.nrf_sdh_freertos_init.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"BLE\000"
	.align	2
.LC1:
	.ascii	"SoftDevice task not created.\000"
	.align	2
.LC2:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\components\\softdevice"
	.ascii	"\\common\\nrf_sdh_freertos.c\000"
	.section	.text.nrf_sdh_freertos_init,"ax",%progbits
	.align	1
	.global	nrf_sdh_freertos_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_sdh_freertos_init, %function
nrf_sdh_freertos_init:
.LVL5:
.LFB203:
	.loc 1 93 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 93 1 is_stmt 0 view .LVU36
	push	{lr}
.LCFI2:
	sub	sp, sp, #12
.LCFI3:
	mov	r3, r1
	.loc 1 94 5 is_stmt 1 view .LVU37
	.loc 1 94 285 view .LVU38
	.loc 1 96 5 view .LVU39
	.loc 1 96 17 is_stmt 0 view .LVU40
	ldr	r2, .L17
	str	r0, [r2]
	.loc 1 98 5 is_stmt 1 view .LVU41
	.loc 1 98 28 is_stmt 0 view .LVU42
	ldr	r2, .L17+4
	str	r2, [sp, #4]
	movs	r2, #2
	str	r2, [sp]
	mov	r2, #256
	ldr	r1, .L17+8
.LVL6:
	.loc 1 98 28 view .LVU43
	ldr	r0, .L17+12
.LVL7:
	.loc 1 98 28 view .LVU44
	bl	xTaskCreate
.LVL8:
	.loc 1 104 5 is_stmt 1 view .LVU45
	.loc 1 104 8 is_stmt 0 view .LVU46
	cmp	r0, #1
	bne	.L16
.LVL9:
.L13:
	.loc 1 109 1 view .LVU47
	add	sp, sp, #12
.LCFI4:
	@ sp needed
	ldr	pc, [sp], #4
.LVL10:
.L16:
.LCFI5:
	.loc 1 106 9 is_stmt 1 discriminator 3 view .LVU48
	.loc 1 106 84 discriminator 3 view .LVU49
	.loc 1 106 140 discriminator 3 view .LVU50
	.loc 1 106 235 is_stmt 0 discriminator 3 view .LVU51
	ldr	r3, .L17+16
	ldrh	r0, [r3]
.LVL11:
	.loc 1 106 246 discriminator 3 view .LVU52
	lsls	r0, r0, #16
	.loc 1 106 140 discriminator 3 view .LVU53
	ldr	r1, .L17+20
	orr	r0, r0, #1
	bl	nrf_log_frontend_std_0
.LVL12:
	.loc 1 106 290 is_stmt 1 discriminator 3 view .LVU54
	.loc 1 107 9 discriminator 3 view .LVU55
	.loc 1 107 14 discriminator 3 view .LVU56
	ldr	r2, .L17+24
	movs	r1, #107
	movs	r0, #4
	bl	app_error_handler
.LVL13:
	.loc 1 107 155 discriminator 3 view .LVU57
	.loc 1 109 1 is_stmt 0 discriminator 3 view .LVU58
	b	.L13
.L18:
	.align	2
.L17:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LC0
	.word	softdevice_task
	.word	.LANCHOR2
	.word	.LC1
	.word	.LC2
.LFE203:
	.size	nrf_sdh_freertos_init, .-nrf_sdh_freertos_init
	.global	m_nrf_log_nrf_sdh_freertos_logs_data_dynamic
	.global	m_nrf_log_nrf_sdh_freertos_logs_data_const
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC3:
	.ascii	"nrf_sdh_freertos\000"
	.section	.bss.m_softdevice_task,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	m_softdevice_task, %object
	.size	m_softdevice_task, 4
m_softdevice_task:
	.space	4
	.section	.bss.m_task_hook,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	m_task_hook, %object
	.size	m_task_hook, 4
m_task_hook:
	.space	4
	.section	.log_const_data_nrf_sdh_freertos,"a"
	.align	2
	.type	m_nrf_log_nrf_sdh_freertos_logs_data_const, %object
	.size	m_nrf_log_nrf_sdh_freertos_logs_data_const, 8
m_nrf_log_nrf_sdh_freertos_logs_data_const:
	.word	.LC3
	.byte	0
	.byte	0
	.byte	3
	.byte	3
	.section	.log_dynamic_data_nrf_sdh_freertos,"aw"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	m_nrf_log_nrf_sdh_freertos_logs_data_dynamic, %object
	.size	m_nrf_log_nrf_sdh_freertos_logs_data_dynamic, 4
m_nrf_log_nrf_sdh_freertos_logs_data_dynamic:
	.space	4
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
	.4byte	.LFB202
	.4byte	.LFE202-.LFB202
	.byte	0x4
	.4byte	.LCFI0-.LFB202
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.byte	0x4
	.4byte	.LCFI1-.LFB201
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB203
	.4byte	.LFE203-.LFB203
	.byte	0x4
	.4byte	.LCFI2-.LFB203
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xa
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xb
	.align	2
.LEFDE4:
	.text
.Letext0:
	.file 3 "../../../../../../components/libraries/experimental_log/nrf_log_types.h"
	.file 4 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
	.section	.debug_types,"G",%progbits,wt.669d46b2e6065b04,comdat
	.4byte	0x9a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x66
	.byte	0x9d
	.byte	0x46
	.byte	0xb2
	.byte	0xe6
	.byte	0x6
	.byte	0x5b
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x3
	.byte	0x58
	.byte	0x9
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x3
	.byte	0x5a
	.byte	0x12
	.4byte	0x68
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x3
	.byte	0x5b
	.byte	0xd
	.4byte	0x6e
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x3
	.byte	0x5c
	.byte	0xd
	.4byte	0x6e
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x5d
	.byte	0x18
	.4byte	0x7a
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x5e
	.byte	0x18
	.4byte	0x7a
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x8a
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x8f
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x3
	.byte	0x38
	.byte	0x3
	.byte	0xba
	.byte	0xfe
	.byte	0x51
	.byte	0x8d
	.byte	0x47
	.byte	0x78
	.byte	0xea
	.byte	0x9e
	.uleb128 0x7
	.4byte	0x96
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0
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
	.byte	0x3
	.byte	0x4c
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x4e
	.byte	0xe
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x4f
	.byte	0xe
	.4byte	0x41
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x4
	.byte	0x36
	.byte	0x18
	.4byte	0x4d
	.uleb128 0x8
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
	.uleb128 0x9
	.byte	0x7
	.byte	0x1
	.4byte	0x50
	.byte	0x3
	.byte	0x31
	.byte	0x1
	.4byte	0x50
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0
	.file 5 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
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
	.byte	0x5
	.byte	0x6d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
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
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.byte	0
	.file 6 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.section	.debug_types,"G",%progbits,wt.1a6b2b7b737fbd2c,comdat
	.4byte	0x1f8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1a
	.byte	0x6b
	.byte	0x2b
	.byte	0x7b
	.byte	0x73
	.byte	0x7f
	.byte	0xbd
	.byte	0x2c
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x8c
	.byte	0x6
	.2byte	0x1e5
	.byte	0x9
	.4byte	0x14e
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x1e7
	.byte	0x1b
	.4byte	0x14e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x1e8
	.byte	0x15
	.4byte	0x153
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x1e9
	.byte	0x15
	.4byte	0x153
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x1ea
	.byte	0x15
	.4byte	0x153
	.byte	0xc
	.uleb128 0x10
	.ascii	"SCR\000"
	.byte	0x6
	.2byte	0x1eb
	.byte	0x15
	.4byte	0x153
	.byte	0x10
	.uleb128 0x10
	.ascii	"CCR\000"
	.byte	0x6
	.2byte	0x1ec
	.byte	0x15
	.4byte	0x153
	.byte	0x14
	.uleb128 0x10
	.ascii	"SHP\000"
	.byte	0x6
	.2byte	0x1ed
	.byte	0x14
	.4byte	0x158
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x1ee
	.byte	0x15
	.4byte	0x153
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x1ef
	.byte	0x15
	.4byte	0x153
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x1f0
	.byte	0x15
	.4byte	0x153
	.byte	0x2c
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x1f1
	.byte	0x15
	.4byte	0x153
	.byte	0x30
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x1f2
	.byte	0x15
	.4byte	0x153
	.byte	0x34
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x1f3
	.byte	0x15
	.4byte	0x153
	.byte	0x38
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x1f4
	.byte	0x15
	.4byte	0x153
	.byte	0x3c
	.uleb128 0x10
	.ascii	"PFR\000"
	.byte	0x6
	.2byte	0x1f5
	.byte	0x1b
	.4byte	0x15d
	.byte	0x40
	.uleb128 0x10
	.ascii	"DFR\000"
	.byte	0x6
	.2byte	0x1f6
	.byte	0x1b
	.4byte	0x14e
	.byte	0x48
	.uleb128 0x10
	.ascii	"ADR\000"
	.byte	0x6
	.2byte	0x1f7
	.byte	0x1b
	.4byte	0x14e
	.byte	0x4c
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x1f8
	.byte	0x1b
	.4byte	0x162
	.byte	0x50
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x1f9
	.byte	0x1b
	.4byte	0x167
	.byte	0x60
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x1fa
	.byte	0x12
	.4byte	0x16c
	.byte	0x74
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x1fb
	.byte	0x15
	.4byte	0x153
	.byte	0x88
	.byte	0
	.uleb128 0xb
	.4byte	0x17c
	.uleb128 0xb
	.4byte	0x181
	.uleb128 0xb
	.4byte	0x18d
	.uleb128 0xb
	.4byte	0x19d
	.uleb128 0xb
	.4byte	0x1a2
	.uleb128 0xb
	.4byte	0x1a7
	.uleb128 0xc
	.4byte	0x181
	.4byte	0x17c
	.uleb128 0xd
	.4byte	0x1ac
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0x181
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x1ac
	.uleb128 0xc
	.4byte	0x1b3
	.4byte	0x19d
	.uleb128 0xd
	.4byte	0x1ac
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.4byte	0x1b8
	.uleb128 0x7
	.4byte	0x1c8
	.uleb128 0x7
	.4byte	0x1d8
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0xb
	.4byte	0x1e8
	.uleb128 0xc
	.4byte	0x14e
	.4byte	0x1c8
	.uleb128 0xd
	.4byte	0x1ac
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	0x14e
	.4byte	0x1d8
	.uleb128 0xd
	.4byte	0x1ac
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	0x14e
	.4byte	0x1e8
	.uleb128 0xd
	.4byte	0x1ac
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x1f4
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0
	.file 7 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
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
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x8
	.byte	0x7
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x7
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x7
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x7
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x4
	.byte	0x4
	.4byte	0x61
	.uleb128 0x13
	.4byte	0x70
	.4byte	0x70
	.uleb128 0x14
	.4byte	0x76
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.4byte	0x82
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
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
	.uleb128 0x16
	.4byte	.LASF42
	.byte	0x14
	.byte	0x7
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x7
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
	.uleb128 0x4
	.byte	0x4
	.4byte	0x55
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0x7
	.4byte	0x5a
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x7
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
	.byte	0x7
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x7
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x7
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x7
	.byte	0xd7
	.byte	0x21
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x60
	.uleb128 0x4
	.byte	0x4
	.4byte	0x65
	.uleb128 0x4
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x7
	.4byte	0x6f
	.uleb128 0x7
	.4byte	0x76
	.uleb128 0x7
	.4byte	0x86
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x7
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
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x7
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
	.byte	0x7
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x7
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x7
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x7
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x7
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x7
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x7
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x7
	.byte	0xd1
	.byte	0x9
	.4byte	0xad
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x4
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x4
	.byte	0x4
	.4byte	0xd6
	.uleb128 0x4
	.byte	0x4
	.4byte	0xea
	.uleb128 0x4
	.byte	0x4
	.4byte	0xf9
	.uleb128 0x4
	.byte	0x4
	.4byte	0x112
	.uleb128 0x13
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0x14
	.4byte	0x130
	.uleb128 0x14
	.4byte	0x130
	.byte	0
	.uleb128 0x13
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0x14
	.4byte	0x130
	.byte	0
	.uleb128 0x13
	.4byte	0x130
	.4byte	0xea
	.uleb128 0x14
	.4byte	0x137
	.uleb128 0x14
	.4byte	0x130
	.byte	0
	.uleb128 0x13
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0x14
	.4byte	0x137
	.byte	0
	.uleb128 0x13
	.4byte	0x130
	.4byte	0x112
	.uleb128 0x14
	.4byte	0x13e
	.uleb128 0x14
	.4byte	0x144
	.uleb128 0x14
	.4byte	0x14b
	.byte	0
	.uleb128 0x13
	.4byte	0x130
	.4byte	0x130
	.uleb128 0x14
	.4byte	0x155
	.uleb128 0x14
	.4byte	0x15b
	.uleb128 0x14
	.4byte	0x144
	.uleb128 0x14
	.4byte	0x14b
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF58
	.uleb128 0x4
	.byte	0x4
	.4byte	0x161
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0x17
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.uleb128 0x4
	.byte	0x4
	.4byte	0x144
	.uleb128 0x4
	.byte	0x4
	.4byte	0x168
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
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
	.byte	0x7
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x7
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x7
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x7
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x7
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x7
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x7
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x7
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x7
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x7
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x7
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x7
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x7
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x7
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x7
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x7
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x7
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x7
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x7
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x7
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x7
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x7
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x7
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x7
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x7
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x7
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x7
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x7
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x7
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x7
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x7
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x7
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0x7
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
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
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x8
	.byte	0x7
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0x7
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x7
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF58
	.byte	0
	.file 8 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\softdevice\\common\\nrf_sdh_freertos.h"
	.file 9 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 10 "../../../../../../components/libraries/util/app_util.h"
	.file 11 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 12 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
	.file 13 "../../../../../../external/freertos/source/include/task.h"
	.file 14 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
	.file 15 "../../../../../../components/libraries/util/app_error.h"
	.file 16 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\softdevice\\common\\nrf_sdh.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x5b2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF160
	.byte	0xc
	.4byte	.LASF161
	.4byte	.LASF162
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x5
	.4byte	.LASF94
	.byte	0x8
	.byte	0x36
	.byte	0x10
	.4byte	0x35
	.uleb128 0x4
	.byte	0x4
	.4byte	0x3b
	.uleb128 0x19
	.4byte	0x46
	.uleb128 0x14
	.4byte	0x46
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF95
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x5b
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x7
	.4byte	0x5b
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF96
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	.LASF97
	.byte	0x4
	.byte	0x37
	.byte	0x14
	.4byte	0x86
	.uleb128 0xb
	.4byte	0x75
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x99
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF98
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF99
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF58
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x7
	.4byte	0xb5
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x7
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
	.4byte	0xc1
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x7
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
	.4byte	0xd6
	.uleb128 0x1b
	.4byte	.LASF100
	.byte	0x7
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
	.uleb128 0x1c
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x10d
	.byte	0x1d
	.4byte	0xe6
	.uleb128 0x1c
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x110
	.byte	0x25
	.4byte	0xd1
	.uleb128 0x1c
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x111
	.byte	0x25
	.4byte	0xd1
	.uleb128 0xc
	.4byte	0x62
	.4byte	0x133
	.uleb128 0xd
	.4byte	0x99
	.byte	0x7f
	.byte	0
	.uleb128 0x7
	.4byte	0x123
	.uleb128 0x1c
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x113
	.byte	0x1c
	.4byte	0x133
	.uleb128 0xc
	.4byte	0xbc
	.4byte	0x150
	.uleb128 0x1d
	.byte	0
	.uleb128 0x7
	.4byte	0x145
	.uleb128 0x1c
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x115
	.byte	0x13
	.4byte	0x150
	.uleb128 0x1c
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x116
	.byte	0x13
	.4byte	0x150
	.uleb128 0x1c
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x117
	.byte	0x13
	.4byte	0x150
	.uleb128 0x1c
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x118
	.byte	0x13
	.4byte	0x150
	.uleb128 0x1c
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x11a
	.byte	0x13
	.4byte	0x150
	.uleb128 0x1c
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x11b
	.byte	0x13
	.4byte	0x150
	.uleb128 0x1c
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x11c
	.byte	0x13
	.4byte	0x150
	.uleb128 0x1c
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x11d
	.byte	0x13
	.4byte	0x150
	.uleb128 0x1c
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x11e
	.byte	0x13
	.4byte	0x150
	.uleb128 0x1c
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x11f
	.byte	0x13
	.4byte	0x150
	.uleb128 0x13
	.4byte	0x86
	.4byte	0x1e6
	.uleb128 0x14
	.4byte	0x1e6
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1f1
	.uleb128 0x1e
	.4byte	.LASF130
	.uleb128 0x7
	.4byte	0x1ec
	.uleb128 0x1c
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x135
	.byte	0xe
	.4byte	0x203
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1d7
	.uleb128 0x13
	.4byte	0x86
	.4byte	0x218
	.uleb128 0x14
	.4byte	0x218
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1ec
	.uleb128 0x1c
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x136
	.byte	0xe
	.4byte	0x22b
	.uleb128 0x4
	.byte	0x4
	.4byte	0x209
	.uleb128 0x1f
	.4byte	.LASF117
	.byte	0x7
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
	.uleb128 0x1c
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x157
	.byte	0x1f
	.4byte	0x24f
	.uleb128 0x4
	.byte	0x4
	.4byte	0x231
	.uleb128 0x1f
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x1fc
	.byte	0x3
	.byte	0x1a
	.byte	0x6b
	.byte	0x2b
	.byte	0x7b
	.byte	0x73
	.byte	0x7f
	.byte	0xbd
	.byte	0x2c
	.uleb128 0x1c
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x744
	.byte	0x19
	.4byte	0x81
	.uleb128 0x20
	.4byte	.LASF121
	.byte	0x9
	.byte	0x21
	.byte	0x11
	.4byte	0x8d
	.uleb128 0x20
	.4byte	.LASF122
	.byte	0xa
	.byte	0x53
	.byte	0x11
	.4byte	0x8d
	.uleb128 0x20
	.4byte	.LASF123
	.byte	0xa
	.byte	0x54
	.byte	0x11
	.4byte	0x8d
	.uleb128 0x20
	.4byte	.LASF124
	.byte	0xa
	.byte	0x72
	.byte	0x13
	.4byte	0x2a3
	.uleb128 0x4
	.byte	0x4
	.4byte	0x8d
	.uleb128 0x20
	.4byte	.LASF125
	.byte	0xa
	.byte	0x73
	.byte	0x11
	.4byte	0x8d
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.4byte	.LASF126
	.uleb128 0x6
	.4byte	.LASF127
	.byte	0x5
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
	.uleb128 0x20
	.4byte	.LASF128
	.byte	0x5
	.byte	0x75
	.byte	0x19
	.4byte	0x2bc
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0xb
	.2byte	0x317
	.byte	0x1b
	.4byte	0x2e5
	.uleb128 0x1e
	.4byte	.LASF131
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0xb
	.2byte	0x31b
	.byte	0xe
	.4byte	0x2f7
	.uleb128 0x4
	.byte	0x4
	.4byte	0x2d8
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0xb
	.2byte	0x31c
	.byte	0xe
	.4byte	0x2f7
	.uleb128 0x1c
	.4byte	.LASF134
	.byte	0xb
	.2byte	0x31d
	.byte	0xe
	.4byte	0x2f7
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF135
	.uleb128 0x5
	.4byte	.LASF136
	.byte	0xc
	.byte	0x39
	.byte	0xe
	.4byte	0xae
	.uleb128 0x5
	.4byte	.LASF137
	.byte	0xd
	.byte	0x3e
	.byte	0x10
	.4byte	0x46
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x3
	.byte	0x38
	.byte	0x3
	.byte	0xba
	.byte	0xfe
	.byte	0x51
	.byte	0x8d
	.byte	0x47
	.byte	0x78
	.byte	0xea
	.byte	0x9e
	.uleb128 0x6
	.4byte	.LASF138
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
	.uleb128 0x6
	.4byte	.LASF139
	.byte	0x3
	.byte	0x5f
	.byte	0x3
	.byte	0x66
	.byte	0x9d
	.byte	0x46
	.byte	0xb2
	.byte	0xe6
	.byte	0x6
	.byte	0x5b
	.byte	0x4
	.uleb128 0x7
	.4byte	0x356
	.uleb128 0x1c
	.4byte	.LASF140
	.byte	0xe
	.2byte	0x124
	.byte	0x2e
	.4byte	0x346
	.uleb128 0x21
	.4byte	.LASF141
	.byte	0x1
	.byte	0x34
	.byte	0x23
	.4byte	0x366
	.uleb128 0x5
	.byte	0x3
	.4byte	m_nrf_log_nrf_sdh_freertos_logs_data_const
	.uleb128 0x22
	.4byte	0x36b
	.byte	0x1
	.byte	0x34
	.2byte	0x175
	.uleb128 0x5
	.byte	0x3
	.4byte	m_nrf_log_nrf_sdh_freertos_logs_data_dynamic
	.uleb128 0x23
	.4byte	.LASF142
	.byte	0x1
	.byte	0x39
	.byte	0x15
	.4byte	0x32a
	.uleb128 0x5
	.byte	0x3
	.4byte	m_softdevice_task
	.uleb128 0x23
	.4byte	.LASF143
	.byte	0x1
	.byte	0x3a
	.byte	0x25
	.4byte	0x29
	.uleb128 0x5
	.byte	0x3
	.4byte	m_task_hook
	.uleb128 0x24
	.4byte	.LASF148
	.byte	0x1
	.byte	0x5c
	.byte	0x6
	.4byte	.LFB203
	.4byte	.LFE203-.LFB203
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x483
	.uleb128 0x25
	.4byte	.LASF144
	.byte	0x1
	.byte	0x5c
	.byte	0x39
	.4byte	0x29
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x25
	.4byte	.LASF145
	.byte	0x1
	.byte	0x5c
	.byte	0x49
	.4byte	0x46
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x26
	.4byte	.LASF146
	.byte	0x1
	.byte	0x62
	.byte	0x10
	.4byte	0x31e
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x27
	.4byte	.LVL8
	.4byte	0x568
	.4byte	0x44d
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	softdevice_task
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.uleb128 0x27
	.4byte	.LVL12
	.4byte	0x575
	.4byte	0x464
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x29
	.4byte	.LVL13
	.4byte	0x582
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x6b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF163
	.byte	0x1
	.byte	0x4b
	.byte	0xd
	.4byte	.LFB202
	.4byte	.LFE202-.LFB202
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d7
	.uleb128 0x25
	.4byte	.LASF147
	.byte	0x1
	.byte	0x4b
	.byte	0x24
	.4byte	0x46
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2b
	.4byte	.LVL1
	.4byte	0x4be
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL2
	.4byte	0x58e
	.uleb128 0x29
	.4byte	.LVL3
	.4byte	0x59b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF149
	.byte	0x1
	.byte	0x3d
	.byte	0x7
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54a
	.uleb128 0x26
	.4byte	.LASF150
	.byte	0x1
	.byte	0x3f
	.byte	0x11
	.4byte	0x31e
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2d
	.4byte	0x55e
	.4byte	.LBI8
	.byte	.LVU25
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x45
	.byte	0x81
	.uleb128 0x2d
	.4byte	0x54a
	.4byte	.LBI10
	.byte	.LVU28
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x45
	.byte	0x8a
	.uleb128 0x2d
	.4byte	0x554
	.4byte	.LBI12
	.byte	.LVU31
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x45
	.byte	0x93
	.uleb128 0x2c
	.4byte	.LVL4
	.4byte	0x5a8
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF151
	.byte	0x2
	.2byte	0x1ab
	.byte	0x33
	.byte	0x3
	.uleb128 0x2e
	.4byte	.LASF152
	.byte	0x2
	.2byte	0x1a0
	.byte	0x33
	.byte	0x3
	.uleb128 0x2e
	.4byte	.LASF153
	.byte	0x2
	.2byte	0x194
	.byte	0x33
	.byte	0x3
	.uleb128 0x2f
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xd
	.2byte	0x142
	.byte	0xd
	.uleb128 0x2f
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0xe
	.2byte	0x1ab
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0xf
	.byte	0x6f
	.byte	0x6
	.uleb128 0x2f
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0x10
	.2byte	0x128
	.byte	0x6
	.uleb128 0x2f
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0xd
	.2byte	0x420
	.byte	0x6
	.uleb128 0x2f
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0xd
	.2byte	0x46e
	.byte	0xc
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x5
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2117
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
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS2:
	.uleb128 0
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x5
	.byte	0x3
	.4byte	m_task_hook
	.4byte	.LVL8-1
	.4byte	.LFE203
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-1
	.4byte	.LFE203
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU45
	.uleb128 .LVU47
	.uleb128 .LVU48
	.uleb128 .LVU52
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-1
	.4byte	.LFE202
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU16
	.uleb128 0
.LLST1:
	.4byte	.LVL4
	.4byte	.LFE201
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x1f5
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x5b6
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
	.4byte	0x378
	.ascii	"m_nrf_log_nrf_sdh_freertos_logs_data_const\000"
	.4byte	0x38a
	.ascii	"m_nrf_log_nrf_sdh_freertos_logs_data_dynamic\000"
	.4byte	0x399
	.ascii	"m_softdevice_task\000"
	.4byte	0x3ab
	.ascii	"m_task_hook\000"
	.4byte	0x399
	.ascii	"m_softdevice_task\000"
	.4byte	0x3ab
	.ascii	"m_task_hook\000"
	.4byte	0x38a
	.ascii	"m_nrf_log_nrf_sdh_freertos_logs_data_dynamic\000"
	.4byte	0x3bd
	.ascii	"nrf_sdh_freertos_init\000"
	.4byte	0x483
	.ascii	"softdevice_task\000"
	.4byte	0x4d7
	.ascii	"SWI2_EGU2_IRQHandler\000"
	.4byte	0x54a
	.ascii	"__DSB\000"
	.4byte	0x554
	.ascii	"__ISB\000"
	.4byte	0x55e
	.ascii	"__SEV\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x244
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x5b6
	.4byte	0x29
	.ascii	"nrf_sdh_freertos_task_hook_t\000"
	.4byte	0x48
	.ascii	"signed char\000"
	.4byte	0x5b
	.ascii	"unsigned char\000"
	.4byte	0x4f
	.ascii	"uint8_t\000"
	.4byte	0x67
	.ascii	"short int\000"
	.4byte	0x6e
	.ascii	"short unsigned int\000"
	.4byte	0x86
	.ascii	"int\000"
	.4byte	0x75
	.ascii	"int32_t\000"
	.4byte	0x99
	.ascii	"unsigned int\000"
	.4byte	0x8d
	.ascii	"uint32_t\000"
	.4byte	0xa0
	.ascii	"long long int\000"
	.4byte	0xa7
	.ascii	"long long unsigned int\000"
	.4byte	0xae
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xb5
	.ascii	"char\000"
	.4byte	0xc1
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xd6
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x231
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x255
	.ascii	"SCB_Type\000"
	.4byte	0x2b5
	.ascii	"_Bool\000"
	.4byte	0x2bc
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x2d8
	.ascii	"FILE\000"
	.4byte	0x317
	.ascii	"long unsigned int\000"
	.4byte	0x31e
	.ascii	"BaseType_t\000"
	.4byte	0x32a
	.ascii	"TaskHandle_t\000"
	.4byte	0x336
	.ascii	"nrf_log_severity_t\000"
	.4byte	0x346
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
	.4byte	0x356
	.ascii	"nrf_log_module_const_data_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB202
	.4byte	.LFE202-.LFB202
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.4byte	.LFB203
	.4byte	.LFE203-.LFB203
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB202
	.4byte	.LFE202
	.4byte	.LFB201
	.4byte	.LFE201
	.4byte	.LFB203
	.4byte	.LFE203
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
	.uleb128 0x29
	.uleb128 0x8
	.byte	0x4
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x10
	.file 17 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x11
	.byte	0x4
	.file 18 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x12
	.byte	0x4
	.file 19 "../../../../../../components/libraries/util/sdk_errors.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x13
	.byte	0x3
	.uleb128 0x48
	.uleb128 0x4
	.byte	0x4
	.file 20 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.file 21 "../../../../../../components/libraries/experimental_section_vars/nrf_section_iter.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x15
	.file 22 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x16
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.file 23 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x17
	.file 24 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x18
	.byte	0x4
	.byte	0x4
	.file 25 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x19
	.file 26 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x1a
	.file 27 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x1b
	.byte	0x3
	.uleb128 0x92
	.uleb128 0x6
	.file 28 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x1c
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.file 29 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x1d
	.byte	0x4
	.file 30 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x1e
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.file 31 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x1f
	.byte	0x4
	.file 32 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x20
	.byte	0x4
	.file 33 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x21
	.byte	0x4
	.file 34 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x22
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x22
	.byte	0x4
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x18
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 35 "../../../../../../external/freertos/source/include/FreeRTOS.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x23
	.file 36 "../../../config/FreeRTOSConfig.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x24
	.file 37 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x25
	.file 38 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x26
	.byte	0x4
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x14
	.byte	0x4
	.file 39 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x27
	.byte	0x4
	.byte	0x4
	.file 40 "../../../../../../components/libraries/util/app_util_platform.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x28
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x19
	.byte	0x4
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0xf
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x13
	.byte	0x4
	.file 41 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x29
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 42 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h"
	.byte	0x3
	.uleb128 0xd6
	.uleb128 0x2a
	.file 43 "../../../systemView/SEGGER_SYSVIEW.h"
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x2b
	.file 44 "../../../systemView/SEGGER.h"
	.byte	0x3
	.uleb128 0x4a
	.uleb128 0x2c
	.file 45 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h"
	.byte	0x3
	.uleb128 0x43
	.uleb128 0x2d
	.byte	0x4
	.file 46 "../../../systemView/Global.h"
	.byte	0x3
	.uleb128 0x44
	.uleb128 0x2e
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 47 "../../../../../../external/freertos/source/include/projdefs.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x2f
	.byte	0x4
	.file 48 "../../../../../../external/freertos/source/include/portable.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x30
	.file 49 "../../../../../../external/freertos/source/include/deprecated_definitions.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x31
	.byte	0x4
	.file 50 "../../../../../../external/freertos/portable/GCC/nrf52/portmacro.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x32
	.byte	0x3
	.uleb128 0x21
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.file 51 "../../../../../../external/freertos/source/include/mpu_wrappers.h"
	.byte	0x3
	.uleb128 0x5c
	.uleb128 0x33
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0xd
	.file 52 "../../../../../../external/freertos/source/include/list.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x34
	.byte	0x4
	.byte	0x4
	.file 53 "../../../../../../external/freertos/source/include/queue.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x35
	.byte	0x4
	.file 54 "../../../../../../external/freertos/source/include/semphr.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x36
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x35
	.byte	0x4
	.byte	0x4
	.file 55 "../../../../../../components/libraries/experimental_log/nrf_log.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x37
	.file 56 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x38
	.file 57 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x39
	.byte	0x4
	.file 58 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x3a
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0xa
	.byte	0x4
	.file 59 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x3b
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x17
	.byte	0x4
	.file 60 "../../../../../../components/libraries/strerror/nrf_strerror.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x3c
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0xe
	.file 61 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x3d
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
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF16:
	.ascii	"NRF_LOG_SEVERITY_INFO\000"
.LASF2:
	.ascii	"debug_color_id\000"
.LASF125:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF111:
	.ascii	"__RAL_data_utf8_space\000"
.LASF90:
	.ascii	"date_time_format\000"
.LASF106:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF14:
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
.LASF102:
	.ascii	"__RAL_codeset_ascii\000"
.LASF40:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF142:
	.ascii	"m_softdevice_task\000"
.LASF80:
	.ascii	"int_n_sep_by_space\000"
.LASF71:
	.ascii	"p_cs_precedes\000"
.LASF113:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF156:
	.ascii	"app_error_handler\000"
.LASF149:
	.ascii	"SWI2_EGU2_IRQHandler\000"
.LASF99:
	.ascii	"long long unsigned int\000"
.LASF160:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF161:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\components\\softdevice"
	.ascii	"\\common\\nrf_sdh_freertos.c\000"
.LASF42:
	.ascii	"__locale_s\000"
.LASF116:
	.ascii	"__user_get_time_of_day\000"
.LASF124:
	.ascii	"_vectors\000"
.LASF120:
	.ascii	"ITM_RxBuffer\000"
.LASF88:
	.ascii	"date_format\000"
.LASF39:
	.ascii	"next\000"
.LASF62:
	.ascii	"int_curr_symbol\000"
.LASF86:
	.ascii	"abbrev_month_names\000"
.LASF35:
	.ascii	"ISAR\000"
.LASF98:
	.ascii	"long long int\000"
.LASF95:
	.ascii	"signed char\000"
.LASF0:
	.ascii	"p_module_name\000"
.LASF100:
	.ascii	"__RAL_global_locale\000"
.LASF9:
	.ascii	"module_id\000"
.LASF47:
	.ascii	"codeset\000"
.LASF163:
	.ascii	"softdevice_task\000"
.LASF54:
	.ascii	"__towupper\000"
.LASF58:
	.ascii	"long int\000"
.LASF4:
	.ascii	"initial_lvl\000"
.LASF110:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF137:
	.ascii	"TaskHandle_t\000"
.LASF132:
	.ascii	"stdin\000"
.LASF141:
	.ascii	"m_nrf_log_nrf_sdh_freertos_logs_data_const\000"
.LASF15:
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
.LASF11:
	.ascii	"uint16_t\000"
.LASF136:
	.ascii	"BaseType_t\000"
.LASF162:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_application-master\\\\pca10040\\\\"
	.ascii	"s132\\\\ses\000"
.LASF77:
	.ascii	"int_p_cs_precedes\000"
.LASF19:
	.ascii	"__irq_masks\000"
.LASF84:
	.ascii	"abbrev_day_names\000"
.LASF93:
	.ascii	"__wchar\000"
.LASF32:
	.ascii	"BFAR\000"
.LASF143:
	.ascii	"m_task_hook\000"
.LASF140:
	.ascii	"m_nrf_log_nrf_sdh_freertos_logs_data_dynamic\000"
.LASF119:
	.ascii	"SCB_Type\000"
.LASF53:
	.ascii	"__iswctype\000"
.LASF76:
	.ascii	"n_sign_posn\000"
.LASF66:
	.ascii	"mon_grouping\000"
.LASF13:
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
.LASF10:
	.ascii	"padding\000"
.LASF147:
	.ascii	"pvParameter\000"
.LASF22:
	.ascii	"unsigned int\000"
.LASF79:
	.ascii	"int_p_sep_by_space\000"
.LASF121:
	.ascii	"SystemCoreClock\000"
.LASF87:
	.ascii	"am_pm_indicator\000"
.LASF109:
	.ascii	"__RAL_data_utf8_period\000"
.LASF61:
	.ascii	"grouping\000"
.LASF135:
	.ascii	"long unsigned int\000"
.LASF55:
	.ascii	"__towlower\000"
.LASF114:
	.ascii	"__RAL_data_empty_string\000"
.LASF60:
	.ascii	"thousands_sep\000"
.LASF43:
	.ascii	"__category\000"
.LASF138:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF123:
	.ascii	"__StackLimit\000"
.LASF51:
	.ascii	"__toupper\000"
.LASF127:
	.ascii	"nrf_nvic_state_t\000"
.LASF46:
	.ascii	"data\000"
.LASF68:
	.ascii	"negative_sign\000"
.LASF12:
	.ascii	"short unsigned int\000"
.LASF45:
	.ascii	"name\000"
.LASF150:
	.ascii	"xYieldRequired\000"
.LASF24:
	.ascii	"ICSR\000"
.LASF26:
	.ascii	"AIRCR\000"
.LASF30:
	.ascii	"DFSR\000"
.LASF31:
	.ascii	"MMFAR\000"
.LASF83:
	.ascii	"day_names\000"
.LASF20:
	.ascii	"__cr_flag\000"
.LASF34:
	.ascii	"MMFR\000"
.LASF130:
	.ascii	"timeval\000"
.LASF133:
	.ascii	"stdout\000"
.LASF151:
	.ascii	"__DSB\000"
.LASF44:
	.ascii	"__RAL_locale_t\000"
.LASF89:
	.ascii	"time_format\000"
.LASF67:
	.ascii	"positive_sign\000"
.LASF75:
	.ascii	"p_sign_posn\000"
.LASF17:
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
.LASF104:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF145:
	.ascii	"p_context\000"
.LASF28:
	.ascii	"CFSR\000"
.LASF154:
	.ascii	"xTaskCreate\000"
.LASF38:
	.ascii	"decode\000"
.LASF57:
	.ascii	"__mbtowc\000"
.LASF128:
	.ascii	"nrf_nvic_state\000"
.LASF152:
	.ascii	"__ISB\000"
.LASF101:
	.ascii	"__RAL_c_locale\000"
.LASF52:
	.ascii	"__tolower\000"
.LASF115:
	.ascii	"__user_set_time_of_day\000"
.LASF78:
	.ascii	"int_n_cs_precedes\000"
.LASF23:
	.ascii	"CPUID\000"
.LASF103:
	.ascii	"__RAL_codeset_utf8\000"
.LASF37:
	.ascii	"CPACR\000"
.LASF36:
	.ascii	"RESERVED0\000"
.LASF92:
	.ascii	"__state\000"
.LASF122:
	.ascii	"__StackTop\000"
.LASF126:
	.ascii	"_Bool\000"
.LASF97:
	.ascii	"int32_t\000"
.LASF7:
	.ascii	"unsigned char\000"
.LASF27:
	.ascii	"SHCSR\000"
.LASF105:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF3:
	.ascii	"compiled_lvl\000"
.LASF70:
	.ascii	"frac_digits\000"
.LASF18:
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
.LASF96:
	.ascii	"short int\000"
.LASF157:
	.ascii	"nrf_sdh_evts_poll\000"
.LASF118:
	.ascii	"__RAL_error_decoder_head\000"
.LASF155:
	.ascii	"nrf_log_frontend_std_0\000"
.LASF91:
	.ascii	"__mbstate_s\000"
.LASF129:
	.ascii	"FILE\000"
.LASF159:
	.ascii	"xTaskResumeFromISR\000"
.LASF65:
	.ascii	"mon_thousands_sep\000"
.LASF144:
	.ascii	"hook_fn\000"
.LASF48:
	.ascii	"__RAL_locale_data_t\000"
.LASF21:
	.ascii	"uint32_t\000"
.LASF33:
	.ascii	"AFSR\000"
.LASF146:
	.ascii	"xReturned\000"
.LASF81:
	.ascii	"int_p_sign_posn\000"
.LASF63:
	.ascii	"currency_symbol\000"
.LASF8:
	.ascii	"char\000"
.LASF72:
	.ascii	"p_sep_by_space\000"
.LASF94:
	.ascii	"nrf_sdh_freertos_task_hook_t\000"
.LASF49:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF82:
	.ascii	"int_n_sign_posn\000"
.LASF134:
	.ascii	"stderr\000"
.LASF158:
	.ascii	"vTaskSuspend\000"
.LASF107:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF50:
	.ascii	"__isctype\000"
.LASF41:
	.ascii	"__RAL_error_decoder_s\000"
.LASF117:
	.ascii	"__RAL_error_decoder_t\000"
.LASF73:
	.ascii	"n_cs_precedes\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF139:
	.ascii	"nrf_log_module_const_data_t\000"
.LASF69:
	.ascii	"int_frac_digits\000"
.LASF85:
	.ascii	"month_names\000"
.LASF148:
	.ascii	"nrf_sdh_freertos_init\000"
.LASF153:
	.ascii	"__SEV\000"
.LASF6:
	.ascii	"nrf_log_severity_t\000"
.LASF74:
	.ascii	"n_sep_by_space\000"
.LASF131:
	.ascii	"__RAL_FILE\000"
.LASF112:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF108:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF29:
	.ascii	"HFSR\000"
.LASF64:
	.ascii	"mon_decimal_point\000"
.LASF25:
	.ascii	"VTOR\000"
.LASF56:
	.ascii	"__wctomb\000"
.LASF1:
	.ascii	"info_color_id\000"
.LASF59:
	.ascii	"decimal_point\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
