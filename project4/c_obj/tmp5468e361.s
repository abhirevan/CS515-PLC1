	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__755
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
# BB#1:                                 # %__756
	jmp	.LBB0_2
.LBB0_2:                                # %__757
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #       Child Loop BB0_8 Depth 3
                                        #         Child Loop BB0_18 Depth 4
                                        #         Child Loop BB0_12 Depth 4
	movl	$100, %eax
	movl	-12(%ebp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_31
# BB#3:                                 # %__759
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$0, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -16(%ebp)         # 4-byte Spill
.LBB0_4:                                # %__760
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
                                        #         Child Loop BB0_18 Depth 4
                                        #         Child Loop BB0_12 Depth 4
	movl	$100, %eax
	movl	-16(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	cmpl	%eax, %edx
	setl	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	cmpl	$0, %eax
	je	.LBB0_29
# BB#5:                                 # %__761
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	%esp, %eax
	addl	$-16, %eax
	movl	%eax, %esp
	movl	-16(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	%edx, (%eax)
	movl	%eax, -20(%ebp)         # 4-byte Spill
# BB#6:                                 # %__763
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	$1, %eax
	movl	$18, %ecx
	movl	-16(%ebp), %edx         # 4-byte Reload
	movl	(%edx), %esi
	addl	$0, %ecx
	addl	$0, %eax
	imull	%eax, %ecx
	addl	%ecx, %esi
	movl	%esi, (%edx)
# BB#7:                                 # %__764
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_8
.LBB0_8:                                # %__765
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_18 Depth 4
                                        #         Child Loop BB0_12 Depth 4
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
	je	.LBB0_28
# BB#9:                                 # %__767
                                        #   in Loop: Header=BB0_8 Depth=3
	jmp	.LBB0_10
.LBB0_10:                               # %__768
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	$1, %eax
	movl	-20(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	andl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB0_16
# BB#11:                                # %__770
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	$0, %eax
	movl	$100, %ecx
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	movl	%esp, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	addl	$0, %ecx
	addl	$0, %eax
	movl	%ecx, (%edx)
	movl	%eax, (%esi)
	movl	%edx, -24(%ebp)         # 4-byte Spill
	movl	%esi, -28(%ebp)         # 4-byte Spill
.LBB0_12:                               # %__771
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
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
	je	.LBB0_24
# BB#13:                                # %__772
                                        #   in Loop: Header=BB0_12 Depth=4
	jmp	.LBB0_14
.LBB0_14:                               # %__774
                                        #   in Loop: Header=BB0_12 Depth=4
	movl	$5, %eax
	movl	-28(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
# BB#15:                                # %__775
                                        #   in Loop: Header=BB0_12 Depth=4
	jmp	.LBB0_12
.LBB0_16:                               # %__776
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	$100, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -32(%ebp)         # 4-byte Spill
# BB#17:                                # %__777
                                        #   in Loop: Header=BB0_8 Depth=3
	jmp	.LBB0_18
.LBB0_18:                               # %__778
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
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
	je	.LBB0_25
# BB#19:                                # %__780
                                        #   in Loop: Header=BB0_18 Depth=4
	jmp	.LBB0_20
.LBB0_20:                               # %__781
                                        #   in Loop: Header=BB0_18 Depth=4
	movl	$1, %eax
	movl	-32(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
# BB#21:                                # %__782
                                        #   in Loop: Header=BB0_18 Depth=4
	movl	$1, %eax
	movl	-32(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
# BB#22:                                # %__783
                                        #   in Loop: Header=BB0_18 Depth=4
	movl	$1, %eax
	movl	-32(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
# BB#23:                                # %__784
                                        #   in Loop: Header=BB0_18 Depth=4
	jmp	.LBB0_18
.LBB0_24:                               # %__773
                                        #   in Loop: Header=BB0_8 Depth=3
	jmp	.LBB0_26
.LBB0_25:                               # %__779
                                        #   in Loop: Header=BB0_8 Depth=3
	jmp	.LBB0_26
.LBB0_26:                               # %__785
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	$100, %eax
	movl	-20(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
# BB#27:                                # %__786
                                        #   in Loop: Header=BB0_8 Depth=3
	jmp	.LBB0_8
.LBB0_28:                               # %__766
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_4
.LBB0_29:                               # %__762
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$10, %eax
	movl	-12(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -12(%ebp)
# BB#30:                                # %__787
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_2
.LBB0_31:                               # %__758
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
