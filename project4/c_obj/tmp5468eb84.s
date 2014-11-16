	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__702
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
# BB#1:                                 # %__703
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
# BB#2:                                 # %__704
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
# BB#3:                                 # %__705
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
# BB#4:                                 # %__706
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
# BB#5:                                 # %__707
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
# BB#6:                                 # %__708
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
# BB#7:                                 # %__709
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
# BB#8:                                 # %__710
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
# BB#9:                                 # %__711
	movl	-12(%ebp), %eax
	leal	-4(%ebp), %esp
	popl	%esi
	popl	%ebp
	ret
.Ltmp7:
	.size	program, .Ltmp7-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
