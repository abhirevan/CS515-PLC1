	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__835
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
.LBB0_1:                                # %__836
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_7 Depth 3
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
	je	.LBB0_30
# BB#2:                                 # %__838
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -16(%ebp)         # 4-byte Spill
# BB#3:                                 # %__841
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$10, %eax
	movl	-12(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -12(%ebp)
# BB#4:                                 # %__842
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                # %__844
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_7 Depth 3
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
	je	.LBB0_29
# BB#6:                                 # %__846
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	%esp, %eax
	addl	$-16, %eax
	movl	%eax, %esp
	movl	-16(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	%edx, (%eax)
	movl	%eax, -20(%ebp)         # 4-byte Spill
.LBB0_7:                                # %__848
                                        #   Parent Loop BB0_1 Depth=1
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
	je	.LBB0_27
# BB#8:                                 # %__850
                                        #   in Loop: Header=BB0_7 Depth=3
	jmp	.LBB0_9
.LBB0_9:                                # %__853
                                        #   in Loop: Header=BB0_7 Depth=3
	movl	$100, %eax
	movl	-20(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
# BB#10:                                # %__854
                                        #   in Loop: Header=BB0_7 Depth=3
	movl	$1, %eax
	movl	-20(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	andl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB0_17
# BB#11:                                # %__856
                                        #   in Loop: Header=BB0_7 Depth=3
	movl	$100, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -24(%ebp)         # 4-byte Spill
# BB#12:                                # %__858
                                        #   in Loop: Header=BB0_7 Depth=3
	movl	$0, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -28(%ebp)         # 4-byte Spill
.LBB0_13:                               # %__860
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        #       Parent Loop BB0_7 Depth=3
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
# BB#14:                                # %__862
                                        #   in Loop: Header=BB0_13 Depth=4
	movl	$5, %eax
	movl	-28(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
# BB#15:                                # %__863
                                        #   in Loop: Header=BB0_13 Depth=4
	jmp	.LBB0_16
.LBB0_16:                               # %__865
                                        #   in Loop: Header=BB0_13 Depth=4
	jmp	.LBB0_13
.LBB0_17:                               # %__866
                                        #   in Loop: Header=BB0_7 Depth=3
	movl	$100, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -32(%ebp)         # 4-byte Spill
.LBB0_18:                               # %__868
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        #       Parent Loop BB0_7 Depth=3
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
# BB#19:                                # %__870
                                        #   in Loop: Header=BB0_18 Depth=4
	jmp	.LBB0_20
.LBB0_20:                               # %__873
                                        #   in Loop: Header=BB0_18 Depth=4
	movl	$1, %eax
	movl	-32(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
# BB#21:                                # %__874
                                        #   in Loop: Header=BB0_18 Depth=4
	movl	$1, %eax
	movl	-32(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
# BB#22:                                # %__875
                                        #   in Loop: Header=BB0_18 Depth=4
	movl	$1, %eax
	movl	-32(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
# BB#23:                                # %__876
                                        #   in Loop: Header=BB0_18 Depth=4
	jmp	.LBB0_18
.LBB0_24:                               # %__861
                                        #   in Loop: Header=BB0_7 Depth=3
	jmp	.LBB0_26
.LBB0_25:                               # %__871
                                        #   in Loop: Header=BB0_7 Depth=3
	jmp	.LBB0_26
.LBB0_26:                               # %__877
                                        #   in Loop: Header=BB0_7 Depth=3
	jmp	.LBB0_7
.LBB0_27:                               # %__851
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
# BB#28:                                # %__878
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_5
.LBB0_29:                               # %__845
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_30:                               # %__839
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
