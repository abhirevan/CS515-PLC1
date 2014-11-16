	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__460
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
	movl	%eax, %ecx
	addl	$0, %ecx
	movl	%ecx, -4(%ebp)
	addl	$0, %eax
	movl	%eax, -8(%ebp)
.LBB0_1:                                # %__456
                                        # =>This Inner Loop Header: Depth=1
	movl	$100, %eax
	movl	-8(%ebp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_5
# BB#2:                                 # %__459
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_3
.LBB0_3:                                # %__458
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, %eax
	movl	-8(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -8(%ebp)
# BB#4:                                 # %__457
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%ebp), %eax
	addl	-4(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB0_1
.LBB0_5:                                # %__450
	xorl	%eax, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
	movl	%ecx, -12(%ebp)         # 4-byte Spill
.LBB0_6:                                # %__451
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-8(%ebp), %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_11
# BB#7:                                 # %__455
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                # %__454
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$1, %eax
	movl	-8(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -8(%ebp)
# BB#9:                                 # %__453
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$1000, %eax             # imm = 0x3E8
	movl	-4(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -4(%ebp)
# BB#10:                                # %__452
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$50, %eax
	movl	-12(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
	jmp	.LBB0_6
.LBB0_11:                               # %__449
	movl	$0, %eax
	movl	-4(%ebp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_15
# BB#12:                                # %__445
	movl	$100, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
	movl	%ecx, -16(%ebp)         # 4-byte Spill
# BB#13:                                # %__444
	movl	$1, %eax
	movl	-16(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
# BB#14:                                # %__443
	movl	$1, %eax
	movl	-16(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
	jmp	.LBB0_18
.LBB0_15:                               # %__448
	jmp	.LBB0_16
.LBB0_16:                               # %__447
	movl	-4(%ebp), %eax
	addl	-8(%ebp), %eax
	movl	%eax, -8(%ebp)
# BB#17:                                # %__446
	movl	$100, %eax
	addl	$0, %eax
	movl	%eax, -4(%ebp)
.LBB0_18:                               # %__442
	movl	$1, %eax
	movl	-8(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -8(%ebp)
# BB#19:                                # %__441
	movl	-8(%ebp), %eax
	addl	-4(%ebp), %eax
	movl	%ebp, %esp
	popl	%ebp
	ret
.Ltmp5:
	.size	program, .Ltmp5-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
