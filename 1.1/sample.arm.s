	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 0
	.syntax unified
	.globl	_f                              @ -- Begin function f
	.p2align	2
	.code	32                              @ @f
_f:
@ %bb.0:
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	add	r0, r0, r1
	add	sp, sp, #8
	bx	lr
                                        @ -- End function
	.globl	_main                           @ -- Begin function main
	.p2align	2
	.code	32                              @ @main
_main:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #16
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	str	r0, [r7, #-4]
	mov	r0, #1
	str	r0, [sp, #8]
	mov	r0, #2
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	bl	_f
	mov	r1, r0
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	ldr	r0, LCPI1_0
LPC1_0:
	add	r0, pc, r0
	bl	_printf
                                        @ kill: def $r1 killed $r0
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r7
	pop	{r7, lr}
	bx	lr
	.p2align	2
@ %bb.1:
	.data_region
LCPI1_0:
	.long	L_.str-(LPC1_0+8)
	.end_data_region
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"%x = %x + %x \n"

.subsections_via_symbols
