	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__879
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
# BB#1:                                 # %__880
	jmp	.LBB0_2
.LBB0_2:                                # %__882
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
                                        #         Child Loop BB0_19 Depth 4
                                        #         Child Loop BB0_13 Depth 4
	movl	$100, %eax
	movl	-12(%ebp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_31
# BB#3:                                 # %__884
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$0, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -16(%ebp)         # 4-byte Spill
# BB#4:                                 # %__886
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$10, %eax
	movl	-12(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -12(%ebp)
.LBB0_5:                                # %__887
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
                                        #         Child Loop BB0_19 Depth 4
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
	je	.LBB0_30
# BB#6:                                 # %__889
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	%esp, %eax
	addl	$-16, %eax
	movl	%eax, %esp
	movl	-16(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	%edx, (%eax)
	movl	%eax, -20(%ebp)         # 4-byte Spill
# BB#7:                                 # %__892
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_8
.LBB0_8:                                # %__894
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_19 Depth 4
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
	je	.LBB0_28
# BB#9:                                 # %__896
                                        #   in Loop: Header=BB0_8 Depth=3
	jmp	.LBB0_10
.LBB0_10:                               # %__898
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	$100, %eax
	movl	-20(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
# BB#11:                                # %__899
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	$1, %eax
	movl	-20(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	andl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB0_17
# BB#12:                                # %__901
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
.LBB0_13:                               # %__903
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
	je	.LBB0_25
# BB#14:                                # %__905
                                        #   in Loop: Header=BB0_13 Depth=4
	jmp	.LBB0_15
.LBB0_15:                               # %__908
                                        #   in Loop: Header=BB0_13 Depth=4
	movl	$5, %eax
	movl	-28(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
# BB#16:                                # %__909
                                        #   in Loop: Header=BB0_13 Depth=4
	jmp	.LBB0_13
.LBB0_17:                               # %__910
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	$100, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -32(%ebp)         # 4-byte Spill
# BB#18:                                # %__912
                                        #   in Loop: Header=BB0_8 Depth=3
	jmp	.LBB0_19
.LBB0_19:                               # %__914
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
	je	.LBB0_26
# BB#20:                                # %__916
                                        #   in Loop: Header=BB0_19 Depth=4
	jmp	.LBB0_21
.LBB0_21:                               # %__918
                                        #   in Loop: Header=BB0_19 Depth=4
	movl	$1, %eax
	movl	-32(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
# BB#22:                                # %__919
                                        #   in Loop: Header=BB0_19 Depth=4
	movl	$1, %eax
	movl	-32(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
# BB#23:                                # %__920
                                        #   in Loop: Header=BB0_19 Depth=4
	movl	$1, %eax
	movl	-32(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
# BB#24:                                # %__921
                                        #   in Loop: Header=BB0_19 Depth=4
	jmp	.LBB0_19
.LBB0_25:                               # %__906
                                        #   in Loop: Header=BB0_8 Depth=3
	jmp	.LBB0_27
.LBB0_26:                               # %__915
                                        #   in Loop: Header=BB0_8 Depth=3
	jmp	.LBB0_27
.LBB0_27:                               # %__922
                                        #   in Loop: Header=BB0_8 Depth=3
	jmp	.LBB0_8
.LBB0_28:                               # %__895
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
# BB#29:                                # %__923
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_5
.LBB0_30:                               # %__890
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_2
.LBB0_31:                               # %__883
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