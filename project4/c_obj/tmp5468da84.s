	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__235
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	movl	$18, %ecx
	movl	$19, %edx
	addl	$0, %edx
	addl	$0, %ecx
	subl	%ecx, %edx
	movl	%edx, 4(%esp)
	addl	$0, %eax
	movl	%eax, (%esp)
.LBB0_1:                                # %__231
                                        # =>This Inner Loop Header: Depth=1
	movl	$19, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_5
# BB#2:                                 # %__234
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
# BB#3:                                 # %__232
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_1
.LBB0_4:                                # %__233
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$100, %eax
	addl	$0, %eax
	movl	%eax, 4(%esp)
	jmp	.LBB0_1
.LBB0_5:                                # %__230
	movl	4(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
