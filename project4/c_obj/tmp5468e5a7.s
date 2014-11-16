	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__713
	pushl	%ebp
.Ltmp3:
	.cfi_def_cfa_offset 8
.Ltmp4:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
.Ltmp5:
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$20, %esp
.Ltmp6:
	.cfi_offset %esi, -12
	movl	$1, %eax
	addl	$0, %eax
	movl	-8(%ebp), %ecx
	movl	%eax, -8(%ebp)
	movl	%ecx, -12(%ebp)
# BB#1:                                 # %__714
	movl	$2, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	addl	$0, %eax
	movl	(%ecx), %esi
	movl	%eax, (%ecx)
	movl	%esi, (%edx)
# BB#2:                                 # %__715
	movl	$4, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	addl	$0, %eax
	movl	(%ecx), %esi
	movl	%eax, (%ecx)
	movl	%esi, (%edx)
# BB#3:                                 # %__716
	movl	$6, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	addl	$0, %eax
	movl	(%ecx), %esi
	movl	%eax, (%ecx)
	movl	%esi, (%edx)
# BB#4:                                 # %__717
	movl	$8, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	addl	$0, %eax
	movl	(%ecx), %esi
	movl	%eax, (%ecx)
	movl	%esi, (%edx)
# BB#5:                                 # %__718
	movl	$3, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	addl	$0, %eax
	movl	(%ecx), %esi
	movl	%eax, (%ecx)
	movl	%esi, (%edx)
# BB#6:                                 # %__719
	movl	$5, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	addl	$0, %eax
	movl	(%ecx), %esi
	movl	%eax, (%ecx)
	movl	%esi, (%edx)
# BB#7:                                 # %__720
	movl	$7, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	addl	$0, %eax
	movl	(%ecx), %esi
	movl	%eax, (%ecx)
	movl	%esi, (%edx)
# BB#8:                                 # %__721
	movl	$9, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	addl	$0, %eax
	movl	(%ecx), %esi
	movl	%eax, (%ecx)
	movl	%esi, (%edx)
# BB#9:                                 # %__722
	movl	-12(%ebp), %eax
	leal	-4(%ebp), %esp
	popl	%esi
	popl	%ebp
	ret
.Ltmp7:
	.size	program, .Ltmp7-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
