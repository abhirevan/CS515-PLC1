	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__621
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
.LBB0_1:                                # %__622
                                        # =>This Inner Loop Header: Depth=1
	movl	$100, %eax
	movl	-8(%ebp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_6
# BB#2:                                 # %__623
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_3
.LBB0_3:                                # %__625
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, %eax
	movl	-8(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -8(%ebp)
# BB#4:                                 # %__626
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%ebp), %eax
	addl	-4(%ebp), %eax
	movl	%eax, -8(%ebp)
# BB#5:                                 # %__627
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_6:                                # %__624
	movl	$0, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -12(%ebp)         # 4-byte Spill
.LBB0_7:                                # %__628
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-8(%ebp), %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_13
# BB#8:                                 # %__630
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                # %__631
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	$1, %eax
	movl	-8(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -8(%ebp)
# BB#10:                                # %__632
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	$1000, %eax             # imm = 0x3E8
	movl	-4(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -4(%ebp)
# BB#11:                                # %__633
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	$50, %eax
	movl	-12(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
# BB#12:                                # %__634
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_7
.LBB0_13:                               # %__629
	movl	$0, %eax
	movl	-4(%ebp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_17
# BB#14:                                # %__636
	movl	$100, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -16(%ebp)         # 4-byte Spill
# BB#15:                                # %__637
	movl	$1, %eax
	movl	-16(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
# BB#16:                                # %__638
	movl	$1, %eax
	movl	-16(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
	jmp	.LBB0_20
.LBB0_17:                               # %__640
	jmp	.LBB0_18
.LBB0_18:                               # %__641
	movl	-4(%ebp), %eax
	addl	-8(%ebp), %eax
	movl	%eax, -8(%ebp)
# BB#19:                                # %__642
	movl	$100, %eax
	addl	$0, %eax
	movl	%eax, -4(%ebp)
	jmp	.LBB0_21
.LBB0_20:                               # %__639
	jmp	.LBB0_22
.LBB0_21:                               # %__643
	jmp	.LBB0_22
.LBB0_22:                               # %__644
	movl	$1, %eax
	movl	-8(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -8(%ebp)
# BB#23:                                # %__645
	movl	-8(%ebp), %eax
	addl	-4(%ebp), %eax
	movl	%ebp, %esp
	popl	%ebp
	ret
.Ltmp5:
	.size	program, .Ltmp5-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
