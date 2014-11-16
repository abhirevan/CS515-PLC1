	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__660
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
	movl	-12(%ebp), %ecx
	movl	%eax, -12(%ebp)
	movl	%ecx, -16(%ebp)
# BB#1:                                 # %__661
	movl	$1, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	addl	$0, %eax
	imull	$4294967295, %eax, %eax # imm = 0xFFFFFFFF
	movl	-16(%ebp), %esi
	movl	%eax, (%ecx)
	movl	%esi, (%edx)
	movl	%edx, -20(%ebp)         # 4-byte Spill
# BB#2:                                 # %__662
	movl	$2, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	addl	$0, %eax
	movl	-20(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, (%ecx)
	movl	%edi, (%edx)
	movl	%edx, -24(%ebp)         # 4-byte Spill
	movl	%ecx, -28(%ebp)         # 4-byte Spill
# BB#3:                                 # %__663
	movl	$3, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	addl	$0, %eax
	movl	-24(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, (%ecx)
	movl	%edi, (%edx)
	movl	%edx, -32(%ebp)         # 4-byte Spill
	movl	%ecx, -36(%ebp)         # 4-byte Spill
# BB#4:                                 # %__664
	movl	$1, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -40(%ebp)         # 4-byte Spill
# BB#5:                                 # %__665
	movl	-12(%ebp), %eax
	movl	-40(%ebp), %ecx         # 4-byte Reload
	addl	(%ecx), %eax
	movl	-28(%ebp), %edx         # 4-byte Reload
	addl	(%edx), %eax
	movl	-36(%ebp), %esi         # 4-byte Reload
	addl	(%esi), %eax
	movl	-32(%ebp), %edi         # 4-byte Reload
	addl	(%edi), %eax
	movl	%eax, -16(%ebp)
# BB#6:                                 # %__666
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
