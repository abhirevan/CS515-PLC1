	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__346
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$40, %eax
	movl	$98, %ecx
	movl	$0, %edx
	addl	$0, %edx
	movl	%edx, 4(%esp)
	movl	4(%esp), %edx
	imull	4(%esp), %edx
	addl	$0, %ecx
	addl	%ecx, %edx
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	movl	%edx, (%esp)
# BB#1:                                 # %__347
	jmp	.LBB0_2
.LBB0_2:                                # %__348
                                        # =>This Inner Loop Header: Depth=1
	movl	$100, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_10
# BB#3:                                 # %__350
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$100, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_5
# BB#4:                                 # %__352
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_6
.LBB0_5:                                # %__354
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1000, %eax             # imm = 0x3E8
	addl	$0, %eax
	movl	%eax, 4(%esp)
	jmp	.LBB0_7
.LBB0_6:                                # %__353
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_8
.LBB0_7:                                # %__355
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                # %__356
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                # %__357
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_2
.LBB0_10:                               # %__349
	movl	4(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
