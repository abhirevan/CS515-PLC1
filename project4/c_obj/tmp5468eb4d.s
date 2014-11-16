	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__39
	pushl	%ebp
.Ltmp2:
	.cfi_def_cfa_offset 8
.Ltmp3:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
.Ltmp4:
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	movl	$0, %eax
	movl	$1, %ecx
	addl	$0, %ecx
	addl	$0, %eax
	movl	%ecx, -4(%ebp)
	movl	%eax, -8(%ebp)
# BB#1:                                 # %__40
	movl	$4, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -12(%ebp)         # 4-byte Spill
# BB#2:                                 # %__41
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %ecx         # 4-byte Reload
	addl	(%ecx), %eax
	movl	%eax, -8(%ebp)
# BB#3:                                 # %__42
	movl	-8(%ebp), %eax
	addl	-4(%ebp), %eax
	movl	%eax, -8(%ebp)
# BB#4:                                 # %__43
	movl	-8(%ebp), %eax
	movl	%ebp, %esp
	popl	%ebp
	ret
.Ltmp5:
	.size	program, .Ltmp5-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
