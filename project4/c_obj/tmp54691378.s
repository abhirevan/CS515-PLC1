	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__724
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
# BB#1:                                 # %__725
	movl	$2, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	(%ecx), %eax
	movl	%eax, (%edx)
# BB#2:                                 # %__726
	movl	$4, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	(%ecx), %eax
	movl	%eax, (%edx)
# BB#3:                                 # %__727
	movl	$6, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	(%ecx), %eax
	movl	%eax, (%edx)
# BB#4:                                 # %__728
	movl	$8, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	(%ecx), %eax
	movl	%eax, (%edx)
# BB#5:                                 # %__729
	movl	$3, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	(%ecx), %eax
	movl	%eax, (%edx)
# BB#6:                                 # %__730
	movl	$5, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	(%ecx), %eax
	movl	%eax, (%edx)
# BB#7:                                 # %__731
	movl	$7, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	(%ecx), %eax
	movl	%eax, (%edx)
# BB#8:                                 # %__732
	movl	$9, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	(%ecx), %eax
	movl	%eax, (%edx)
# BB#9:                                 # %__733
	movl	-8(%ebp), %eax
	movl	%ebp, %esp
	popl	%ebp
	ret
.Ltmp5:
	.size	program, .Ltmp5-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
