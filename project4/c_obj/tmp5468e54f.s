	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__458
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$0, %eax
	movl	$10, %ecx
	addl	$0, %ecx
	addl	$0, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
.LBB0_1:                                # %__459
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_3 Depth 2
	movl	$40, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_20
# BB#2:                                 # %__460
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$20, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_10
.LBB0_3:                                # %__463
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$20, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_17
# BB#4:                                 # %__464
                                        #   in Loop: Header=BB0_3 Depth=2
	movl	$0, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_6
# BB#5:                                 # %__467
                                        #   in Loop: Header=BB0_3 Depth=2
	movl	$1, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_7
.LBB0_6:                                # %__469
                                        #   in Loop: Header=BB0_3 Depth=2
	movl	$2, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_8
.LBB0_7:                                # %__468
                                        #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_9
.LBB0_8:                                # %__470
                                        #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_9
.LBB0_9:                                # %__471
                                        #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_3
.LBB0_10:                               # %__472
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$40, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_18
# BB#11:                                # %__473
                                        #   in Loop: Header=BB0_10 Depth=2
	movl	$0, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_13
# BB#12:                                # %__476
                                        #   in Loop: Header=BB0_10 Depth=2
	movl	$3, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_14
.LBB0_13:                               # %__478
                                        #   in Loop: Header=BB0_10 Depth=2
	movl	$4, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_15
.LBB0_14:                               # %__477
                                        #   in Loop: Header=BB0_10 Depth=2
	jmp	.LBB0_16
.LBB0_15:                               # %__479
                                        #   in Loop: Header=BB0_10 Depth=2
	jmp	.LBB0_16
.LBB0_16:                               # %__480
                                        #   in Loop: Header=BB0_10 Depth=2
	jmp	.LBB0_10
.LBB0_17:                               # %__465
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_19
.LBB0_18:                               # %__474
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               # %__481
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_20:                               # %__461
	movl	4(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
