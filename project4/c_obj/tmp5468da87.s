	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__253
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$98, %eax
	movl	$0, %ecx
	addl	$0, %ecx
	movl	%ecx, 4(%esp)
	movl	4(%esp), %ecx
	imull	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, (%esp)
# BB#1:                                 # %__248
	jmp	.LBB0_2
.LBB0_2:                                # %__249
                                        # =>This Inner Loop Header: Depth=1
	movl	$100, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_6
# BB#3:                                 # %__252
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
# BB#4:                                 # %__250
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_2
.LBB0_5:                                # %__251
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1000, %eax             # imm = 0x3E8
	addl	$0, %eax
	movl	%eax, 4(%esp)
	jmp	.LBB0_2
.LBB0_6:                                # %__247
	movl	4(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
