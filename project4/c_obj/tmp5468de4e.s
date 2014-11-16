	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__309
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$0, %eax
	addl	$0, %eax
	movl	4(%esp), %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
.LBB0_1:                                # %__310
                                        # =>This Inner Loop Header: Depth=1
	movl	$1024, %eax             # imm = 0x400
	movl	4(%esp), %ecx
	addl	$0, %eax
	imull	(%esp), %eax
	cmpl	%eax, %ecx
	setge	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_6
# BB#2:                                 # %__312
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_3
.LBB0_3:                                # %__315
                                        #   in Loop: Header=BB0_1 Depth=1
# BB#4:                                 # %__317
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, %eax
	addl	$0, %eax
	imull	$4294967295, %eax, %eax # imm = 0xFFFFFFFF
	movl	%eax, 4(%esp)
# BB#5:                                 # %__318
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_6:                                # %__313
	movl	4(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
