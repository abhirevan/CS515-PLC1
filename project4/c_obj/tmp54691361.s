	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__385
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$5, %eax
	movl	$0, %ecx
	addl	$0, %ecx
	movl	%ecx, 4(%esp)
	addl	$0, %eax
	movl	%eax, (%esp)
# BB#1:                                 # %__386
	movl	$0, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_10
.LBB0_2:                                # %__388
                                        # =>This Inner Loop Header: Depth=1
	movl	$10, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_9
# BB#3:                                 # %__389
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$5, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_5
# BB#4:                                 # %__392
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_6
.LBB0_5:                                # %__394
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$3, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_7
.LBB0_6:                                # %__393
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_8
.LBB0_7:                                # %__395
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                # %__396
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_2
.LBB0_9:                                # %__390
	jmp	.LBB0_10
.LBB0_10:                               # %__387
	movl	4(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits