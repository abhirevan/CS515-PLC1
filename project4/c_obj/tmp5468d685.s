	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__439
	pushl	%ebp
.Ltmp3:
	.cfi_def_cfa_offset 8
.Ltmp4:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
.Ltmp5:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%esi
	subl	$16, %esp
.Ltmp6:
	.cfi_offset %esi, -16
.Ltmp7:
	.cfi_offset %ebx, -12
	movl	$0, %eax
	movl	$1, %ecx
	movl	%eax, %edx
	addl	$0, %edx
	movl	%ecx, %esi
	addl	$0, %esi
	addl	%esi, %edx
	movl	-12(%ebp), %esi
	addl	$0, %ecx
	addl	%ecx, %esi
	addl	$0, %eax
	movl	%edx, -12(%ebp)
	movl	%esi, -16(%ebp)
	movl	%eax, -20(%ebp)
# BB#1:                                 # %__440
# BB#2:                                 # %__442
	movl	$0, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -24(%ebp)         # 4-byte Spill
.LBB0_3:                                # %__444
                                        # =>This Inner Loop Header: Depth=1
	movl	$100, %eax
	movl	-24(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	cmpl	%eax, %edx
	setl	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	cmpl	$0, %eax
	je	.LBB0_11
# BB#4:                                 # %__446
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %eax
	movl	-24(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
# BB#5:                                 # %__447
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %eax
	movl	-16(%ebp), %ecx
	movl	-12(%ebp), %edx
	addl	$0, %eax
	addl	%eax, %edx
	cmpl	%edx, %ecx
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	cmpl	$0, %eax
	je	.LBB0_7
# BB#6:                                 # %__449
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %eax
	movl	-20(%ebp), %ecx
	addl	$0, %eax
	subl	%eax, %ecx
	movl	%ecx, -20(%ebp)
	jmp	.LBB0_8
.LBB0_7:                                # %__451
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %eax
	movl	-20(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -20(%ebp)
	jmp	.LBB0_9
.LBB0_8:                                # %__450
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_10
.LBB0_9:                                # %__452
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               # %__453
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_11:                               # %__445
	movl	-20(%ebp), %eax
	leal	-8(%ebp), %esp
	popl	%esi
	popl	%ebx
	popl	%ebp
	ret
.Ltmp8:
	.size	program, .Ltmp8-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
