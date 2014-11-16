	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__223
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, 4(%esp)
	movl	4(%esp), %eax
	movl	%eax, (%esp)
.LBB0_1:                                # %__218
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
# BB#2:                                 # %__222
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_3
.LBB0_3:                                # %__221
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	(%esp), %eax
	cmpl	4(%esp), %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_5
# BB#4:                                 # %__219
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, %eax
	addl	$0, %eax
	imull	$4294967295, %eax, %eax # imm = 0xFFFFFFFF
	movl	%eax, 4(%esp)
	jmp	.LBB0_1
.LBB0_5:                                # %__220
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_6:                                # %__217
	movl	4(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
