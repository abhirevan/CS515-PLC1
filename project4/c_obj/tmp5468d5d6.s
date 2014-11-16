	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__581
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$0, %eax
	movl	$1, %ecx
	addl	$0, %ecx
	addl	$0, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
# BB#1:                                 # %__582
	jmp	.LBB0_2
.LBB0_2:                                # %__584
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_5 Depth 2
	movl	$40, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_23
# BB#3:                                 # %__586
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$20, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_12
# BB#4:                                 # %__588
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                # %__590
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$20, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_20
# BB#6:                                 # %__592
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	$0, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_8
# BB#7:                                 # %__594
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	$1, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_9
.LBB0_8:                                # %__596
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	$2, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_10
.LBB0_9:                                # %__595
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_11
.LBB0_10:                               # %__597
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_11
.LBB0_11:                               # %__598
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_5
.LBB0_12:                               # %__599
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               # %__601
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$40, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_21
# BB#14:                                # %__603
                                        #   in Loop: Header=BB0_13 Depth=2
	movl	$0, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_16
# BB#15:                                # %__605
                                        #   in Loop: Header=BB0_13 Depth=2
	movl	$3, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_17
.LBB0_16:                               # %__607
                                        #   in Loop: Header=BB0_13 Depth=2
	movl	$4, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_18
.LBB0_17:                               # %__606
                                        #   in Loop: Header=BB0_13 Depth=2
	jmp	.LBB0_19
.LBB0_18:                               # %__608
                                        #   in Loop: Header=BB0_13 Depth=2
	jmp	.LBB0_19
.LBB0_19:                               # %__609
                                        #   in Loop: Header=BB0_13 Depth=2
	jmp	.LBB0_13
.LBB0_20:                               # %__591
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_22
.LBB0_21:                               # %__602
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_22
.LBB0_22:                               # %__610
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_2
.LBB0_23:                               # %__585
	movl	4(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
