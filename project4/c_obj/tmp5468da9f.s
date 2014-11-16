	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__487
	pushl	%ebp
.Ltmp3:
	.cfi_def_cfa_offset 8
.Ltmp4:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
.Ltmp5:
	.cfi_def_cfa_register %ebp
	pushl	%edi
	pushl	%esi
	subl	$32, %esp
.Ltmp6:
	.cfi_offset %esi, -16
.Ltmp7:
	.cfi_offset %edi, -12
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
# BB#1:                                 # %__486
	movl	%esp, %eax
	movl	%eax, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	$-1, -16(%eax)
	movl	-16(%ebp), %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
	movl	%ecx, -20(%ebp)         # 4-byte Spill
# BB#2:                                 # %__485
	movl	%esp, %eax
	movl	%eax, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	$2, -16(%eax)
	movl	-20(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %edx
	movl	%esp, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	movl	%edx, (%esi)
	movl	%ecx, -24(%ebp)         # 4-byte Spill
	movl	%esi, -28(%ebp)         # 4-byte Spill
# BB#3:                                 # %__484
	movl	%esp, %eax
	movl	%eax, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	$3, -16(%eax)
	movl	-28(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %edx
	movl	%esp, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	movl	%edx, (%esi)
	movl	%ecx, -32(%ebp)         # 4-byte Spill
	movl	%esi, -36(%ebp)         # 4-byte Spill
# BB#4:                                 # %__483
	movl	$1, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
	movl	%ecx, -40(%ebp)         # 4-byte Spill
# BB#5:                                 # %__482
	movl	-12(%ebp), %eax
	movl	-40(%ebp), %ecx         # 4-byte Reload
	addl	(%ecx), %eax
	movl	-24(%ebp), %edx         # 4-byte Reload
	addl	(%edx), %eax
	movl	-32(%ebp), %esi         # 4-byte Reload
	addl	(%esi), %eax
	movl	-36(%ebp), %edi         # 4-byte Reload
	addl	(%edi), %eax
	movl	%eax, -16(%ebp)
# BB#6:                                 # %__481
	movl	-16(%ebp), %eax
	leal	-8(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.Ltmp8:
	.size	program, .Ltmp8-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
