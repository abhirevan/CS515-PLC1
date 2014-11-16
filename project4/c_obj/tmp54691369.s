	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__511
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$0, %eax
	movl	$31, %ecx
	addl	$0, %ecx
	movl	%ecx, 4(%esp)
	addl	$0, %eax
	movl	%eax, (%esp)
# BB#1:                                 # %__512
	jmp	.LBB0_2
.LBB0_2:                                # %__513
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_5 Depth 2
	movl	$40, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_26
# BB#3:                                 # %__515
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$20, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_13
# BB#4:                                 # %__517
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                # %__518
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
	je	.LBB0_22
# BB#6:                                 # %__520
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
# BB#7:                                 # %__522
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	$1, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_9
.LBB0_8:                                # %__524
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	$2, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_10
.LBB0_9:                                # %__523
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_11
.LBB0_10:                               # %__525
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_11
.LBB0_11:                               # %__526
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_12
.LBB0_12:                               # %__527
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_5
.LBB0_13:                               # %__528
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               # %__529
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
	je	.LBB0_23
# BB#15:                                # %__531
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$0, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_17
# BB#16:                                # %__533
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$3, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_18
.LBB0_17:                               # %__535
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$4, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_19
.LBB0_18:                               # %__534
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_20
.LBB0_19:                               # %__536
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_20
.LBB0_20:                               # %__537
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_21
.LBB0_21:                               # %__538
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_14
.LBB0_22:                               # %__519
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_24
.LBB0_23:                               # %__530
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_24
.LBB0_24:                               # %__539
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_25
.LBB0_25:                               # %__540
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_2
.LBB0_26:                               # %__514
	movl	4(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
