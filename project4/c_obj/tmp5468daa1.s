	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__512
	pushl	%ebp
.Ltmp3:
	.cfi_def_cfa_offset 8
.Ltmp4:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
.Ltmp5:
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$36, %esp
.Ltmp6:
	.cfi_offset %esi, -12
	movl	$0, %eax
	movl	%eax, %ecx
	addl	$0, %ecx
	movl	%ecx, -8(%ebp)
	addl	$0, %eax
	movl	%eax, -12(%ebp)
# BB#1:                                 # %__511
	movl	-8(%ebp), %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
	movl	%ecx, -16(%ebp)         # 4-byte Spill
# BB#2:                                 # %__510
	movl	$9, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
	movl	%ecx, -20(%ebp)         # 4-byte Spill
# BB#3:                                 # %__509
	movl	-12(%ebp), %eax
	movl	-20(%ebp), %ecx         # 4-byte Reload
	addl	(%ecx), %eax
	movl	%eax, -12(%ebp)
# BB#4:                                 # %__508
	movl	-12(%ebp), %eax
	addl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
# BB#5:                                 # %__507
	movl	-12(%ebp), %eax
	movl	%esp, %ecx
	movl	%ecx, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	movl	%eax, -16(%ecx)
	movl	$100, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
	movl	%edx, -24(%ebp)         # 4-byte Spill
	movl	%ecx, -28(%ebp)         # 4-byte Spill
# BB#6:                                 # %__506
	movl	-12(%ebp), %eax
	movl	-28(%ebp), %ecx         # 4-byte Reload
	addl	(%ecx), %eax
	movl	%eax, -12(%ebp)
# BB#7:                                 # %__505
	movl	-24(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	movl	%esp, %edx
	movl	%edx, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	movl	%ecx, -16(%edx)
	movl	$100, %ecx
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	movl	%ecx, (%edx)
	movl	%esi, -32(%ebp)         # 4-byte Spill
	movl	%edx, -36(%ebp)         # 4-byte Spill
# BB#8:                                 # %__504
	movl	-36(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	movl	-24(%ebp), %edx         # 4-byte Reload
	addl	(%edx), %ecx
	movl	-32(%ebp), %esi         # 4-byte Reload
	movl	%ecx, (%esi)
# BB#9:                                 # %__503
	movl	-12(%ebp), %eax
	movl	-24(%ebp), %ecx         # 4-byte Reload
	addl	(%ecx), %eax
	movl	%eax, -12(%ebp)
# BB#10:                                # %__502
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %ecx         # 4-byte Reload
	addl	(%ecx), %eax
	addl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
# BB#11:                                # %__501
	movl	-12(%ebp), %eax
	addl	$94, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
	movl	%ecx, -40(%ebp)         # 4-byte Spill
# BB#12:                                # %__500
	movl	$94, %eax
	movl	-40(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, -12(%ebp)
# BB#13:                                # %__499
	movl	-8(%ebp), %eax
	addl	-12(%ebp), %eax
	movl	-16(%ebp), %ecx         # 4-byte Reload
	addl	(%ecx), %eax
	movl	%eax, -12(%ebp)
# BB#14:                                # %__498
	movl	-12(%ebp), %eax
	leal	-4(%ebp), %esp
	popl	%esi
	popl	%ebp
	ret
.Ltmp7:
	.size	program, .Ltmp7-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
