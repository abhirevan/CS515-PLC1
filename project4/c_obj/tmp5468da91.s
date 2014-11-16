	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__340
	pushl	%ebp
.Ltmp2:
	.cfi_def_cfa_offset 8
.Ltmp3:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
.Ltmp4:
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	$0, %eax
	movl	%eax, %ecx
	addl	$0, %ecx
	movl	%ecx, -4(%ebp)
	addl	$0, %eax
	movl	%eax, -8(%ebp)
# BB#1:                                 # %__331
	movl	%esp, %eax
	movl	%eax, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	$0, -16(%eax)
	xorl	%eax, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
.LBB0_2:                                # %__332
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	movl	-4(%ebp), %eax
	cmpl	-8(%ebp), %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_10
# BB#3:                                 # %__339
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$0, %eax
	movl	-4(%ebp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_9
# BB#4:                                 # %__333
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%esp, %eax
	movl	%eax, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	$0, -16(%eax)
	xorl	%eax, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
.LBB0_5:                                # %__334
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_2
# BB#6:                                 # %__337
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	$0, %eax
	movl	-8(%ebp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_8
# BB#7:                                 # %__335
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, -8(%ebp)
	jmp	.LBB0_5
.LBB0_8:                                # %__336
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_5
.LBB0_9:                                # %__338
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_2
.LBB0_10:                               # %__330
	movl	-8(%ebp), %eax
	movl	%ebp, %esp
	popl	%ebp
	ret
.Ltmp5:
	.size	program, .Ltmp5-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
