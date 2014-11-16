	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__542
	pushl	%ebp
.Ltmp2:
	.cfi_def_cfa_offset 8
.Ltmp3:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
.Ltmp4:
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, -8(%ebp)
# BB#1:                                 # %__541
	movl	%esp, %eax
	movl	%eax, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	$2, -16(%eax)
	movl	$2, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
# BB#2:                                 # %__540
	movl	%esp, %eax
	movl	%eax, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	$4, -16(%eax)
	movl	$4, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
# BB#3:                                 # %__539
	movl	%esp, %eax
	movl	%eax, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	$6, -16(%eax)
	movl	$6, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
# BB#4:                                 # %__538
	movl	%esp, %eax
	movl	%eax, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	$8, -16(%eax)
	movl	$8, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
# BB#5:                                 # %__537
	movl	%esp, %eax
	movl	%eax, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	$3, -16(%eax)
	movl	$3, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
# BB#6:                                 # %__536
	movl	%esp, %eax
	movl	%eax, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	$5, -16(%eax)
	movl	$5, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
# BB#7:                                 # %__535
	movl	%esp, %eax
	movl	%eax, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	$7, -16(%eax)
	movl	$7, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
# BB#8:                                 # %__534
	movl	%esp, %eax
	movl	%eax, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	$9, -16(%eax)
	movl	$9, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
# BB#9:                                 # %__533
	movl	-8(%ebp), %eax
	movl	%ebp, %esp
	popl	%ebp
	ret
.Ltmp5:
	.size	program, .Ltmp5-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
