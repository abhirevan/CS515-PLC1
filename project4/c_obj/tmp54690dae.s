	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__214
	pushl	%ebp
.Ltmp3:
	.cfi_def_cfa_offset 8
.Ltmp4:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
.Ltmp5:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	subl	$20, %esp
.Ltmp6:
	.cfi_offset %ebx, -12
	movl	$3, %eax
	addl	$0, %eax
	movl	%eax, -8(%ebp)
# BB#1:                                 # %__215
	movl	$100, %eax
	movl	-8(%ebp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_9
# BB#2:                                 # %__217
	movl	$1, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	-8(%ebp), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
	movl	%ecx, -12(%ebp)         # 4-byte Spill
# BB#3:                                 # %__218
	movl	$1, %eax
	movl	-12(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	cmpl	%eax, %edx
	setg	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	cmpl	$0, %eax
	je	.LBB0_5
# BB#4:                                 # %__220
	movl	$1, %eax
	movl	-12(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
	jmp	.LBB0_6
.LBB0_5:                                # %__222
	movl	$1, %eax
	movl	-12(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
	jmp	.LBB0_7
.LBB0_6:                                # %__221
	jmp	.LBB0_8
.LBB0_7:                                # %__223
	jmp	.LBB0_8
.LBB0_8:                                # %__224
	jmp	.LBB0_9
.LBB0_9:                                # %__216
	movl	-8(%ebp), %eax
	leal	-4(%ebp), %esp
	popl	%ebx
	popl	%ebp
	ret
.Ltmp7:
	.size	program, .Ltmp7-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
