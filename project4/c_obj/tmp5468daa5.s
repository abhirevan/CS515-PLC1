	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__591
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
	subl	$32, %esp
.Ltmp6:
	.cfi_offset %esi, -16
.Ltmp7:
	.cfi_offset %ebx, -12
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -12(%ebp)
# BB#1:                                 # %__568
	jmp	.LBB0_2
.LBB0_2:                                # %__569
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
                                        #         Child Loop BB0_18 Depth 4
                                        #         Child Loop BB0_13 Depth 4
	movl	$100, %eax
	movl	-12(%ebp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_24
# BB#3:                                 # %__590
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
	movl	%ecx, -16(%ebp)         # 4-byte Spill
# BB#4:                                 # %__589
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$10, %eax
	movl	-12(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -12(%ebp)
.LBB0_5:                                # %__570
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
                                        #         Child Loop BB0_18 Depth 4
                                        #         Child Loop BB0_13 Depth 4
	movl	$100, %eax
	movl	-16(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	cmpl	%eax, %edx
	setl	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	cmpl	$0, %eax
	je	.LBB0_2
# BB#6:                                 # %__588
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	-16(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	movl	%ecx, (%edx)
	movl	%edx, -20(%ebp)         # 4-byte Spill
# BB#7:                                 # %__572
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_8
.LBB0_8:                                # %__573
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_18 Depth 4
                                        #         Child Loop BB0_13 Depth 4
	movl	$900, %eax              # imm = 0x384
	movl	-20(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	imull	$4294967295, %eax, %eax # imm = 0xFFFFFFFF
	cmpl	%eax, %edx
	setg	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	cmpl	$0, %eax
	je	.LBB0_23
# BB#9:                                 # %__587
                                        #   in Loop: Header=BB0_8 Depth=3
	jmp	.LBB0_10
.LBB0_10:                               # %__586
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	$100, %eax
	movl	-20(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
# BB#11:                                # %__585
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	$1, %eax
	movl	-20(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	andl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB0_16
# BB#12:                                # %__577
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	%esp, %eax
	movl	%eax, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	$100, -16(%eax)
	xorl	%eax, %eax
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	movl	%eax, (%edx)
	movl	%ecx, -24(%ebp)         # 4-byte Spill
	movl	%edx, -28(%ebp)         # 4-byte Spill
.LBB0_13:                               # %__574
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        #       Parent Loop BB0_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-28(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	movl	-24(%ebp), %edx         # 4-byte Reload
	cmpl	(%edx), %ecx
	setl	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_8
# BB#14:                                # %__576
                                        #   in Loop: Header=BB0_13 Depth=4
	jmp	.LBB0_15
.LBB0_15:                               # %__575
                                        #   in Loop: Header=BB0_13 Depth=4
	movl	$5, %eax
	movl	-28(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
	jmp	.LBB0_13
.LBB0_16:                               # %__584
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	$100, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
	movl	%ecx, -32(%ebp)         # 4-byte Spill
# BB#17:                                # %__578
                                        #   in Loop: Header=BB0_8 Depth=3
	jmp	.LBB0_18
.LBB0_18:                               # %__579
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        #       Parent Loop BB0_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	$100, %eax
	movl	-32(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	imull	$4294967295, %eax, %eax # imm = 0xFFFFFFFF
	cmpl	%eax, %edx
	setg	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	cmpl	$0, %eax
	je	.LBB0_8
# BB#19:                                # %__583
                                        #   in Loop: Header=BB0_18 Depth=4
	jmp	.LBB0_20
.LBB0_20:                               # %__582
                                        #   in Loop: Header=BB0_18 Depth=4
	movl	$1, %eax
	movl	-32(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
# BB#21:                                # %__581
                                        #   in Loop: Header=BB0_18 Depth=4
	movl	$1, %eax
	movl	-32(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
# BB#22:                                # %__580
                                        #   in Loop: Header=BB0_18 Depth=4
	movl	$1, %eax
	movl	-32(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
	jmp	.LBB0_18
.LBB0_23:                               # %__571
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	$1, %eax
	movl	$18, %ecx
	movl	-16(%ebp), %edx         # 4-byte Reload
	movl	(%edx), %esi
	addl	$0, %ecx
	addl	$0, %eax
	imull	%eax, %ecx
	addl	%ecx, %esi
	movl	%esi, (%edx)
	jmp	.LBB0_5
.LBB0_24:                               # %__567
	movl	-12(%ebp), %eax
	leal	-8(%ebp), %esp
	popl	%esi
	popl	%ebx
	popl	%ebp
	ret
.Ltmp8:
	.size	program, .Ltmp8-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits