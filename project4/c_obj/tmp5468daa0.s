	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__497
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
# BB#1:                                 # %__489
	jmp	.LBB0_2
.LBB0_2:                                # %__490
                                        # =>This Inner Loop Header: Depth=1
	movl	$10, %eax
	movl	-16(%ebp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_9
# BB#3:                                 # %__496
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_4
.LBB0_4:                                # %__495
                                        #   in Loop: Header=BB0_2 Depth=1
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
# BB#5:                                 # %__494
                                        #   in Loop: Header=BB0_2 Depth=1
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
# BB#6:                                 # %__493
                                        #   in Loop: Header=BB0_2 Depth=1
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
# BB#7:                                 # %__492
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
	movl	%ecx, -40(%ebp)         # 4-byte Spill
# BB#8:                                 # %__491
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-12(%ebp), %eax
	movl	-40(%ebp), %ecx         # 4-byte Reload
	imull	(%ecx), %eax
	movl	-24(%ebp), %edx         # 4-byte Reload
	imull	(%edx), %eax
	movl	-32(%ebp), %esi         # 4-byte Reload
	addl	(%esi), %eax
	movl	-36(%ebp), %edi         # 4-byte Reload
	movl	(%edi), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -16(%ebp)
	jmp	.LBB0_2
.LBB0_9:                                # %__488
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
