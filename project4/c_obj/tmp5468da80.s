	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__212
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	movl	$6, %ecx
	addl	$0, %ecx
	movl	%ecx, 4(%esp)
	addl	$0, %eax
	movl	%eax, (%esp)
.LBB0_1:                                # %__208
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_5
# BB#2:                                 # %__211
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_3
.LBB0_3:                                # %__210
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	(%esp), %eax
	imull	4(%esp), %eax
	movl	%eax, (%esp)
# BB#4:                                 # %__209
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	subl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_1
.LBB0_5:                                # %__207
	movl	(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
