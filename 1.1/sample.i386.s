	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 0
	.globl	_f                              ## -- Begin function f
	.p2align	4, 0x90
_f:                                     ## @f
	.cfi_startproc
## %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	movl	12(%ebp), %eax
	movl	8(%ebp), %eax
	movl	8(%ebp), %eax
	addl	12(%ebp), %eax
	popl	%ebp
	retl
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$36, %esp
	.cfi_offset %esi, -12
	calll	L1$pb
L1$pb:
	popl	%eax
	movl	%eax, -20(%ebp)                 ## 4-byte Spill
	movl	$0, -8(%ebp)
	movl	$1, -12(%ebp)
	movl	$2, -16(%ebp)
	movl	-12(%ebp), %ecx
	movl	-16(%ebp), %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_f
	movl	%eax, %edx
	movl	-20(%ebp), %eax                 ## 4-byte Reload
	leal	L_.str-L1$pb(%eax), %esi
	movl	-12(%ebp), %ecx
	movl	-16(%ebp), %eax
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 12(%esp)
	calll	_printf
	xorl	%eax, %eax
	addl	$36, %esp
	popl	%esi
	popl	%ebp
	retl
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%x = %x + %x \n"

.subsections_via_symbols
