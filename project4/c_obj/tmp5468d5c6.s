	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__330
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	movl	$18, %ecx
	movl	$19, %edx
	addl	$0, %edx
	addl	$0, %ecx
	subl	%ecx, %edx
	addl	$0, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
.LBB0_1:                                # %__331
                                        # =>This Inner Loop Header: Depth=1
	movl	$19, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_8
# BB#2:                                 # %__333
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_4
# BB#3:                                 # %__336
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_5
.LBB0_4:                                # %__338
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$100, %eax
	addl	$0, %eax
	movl	%eax, 4(%esp)
	jmp	.LBB0_6
.LBB0_5:                                # %__337
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_6:                                # %__339
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                # %__340
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_8:                                # %__334
	movl	4(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
