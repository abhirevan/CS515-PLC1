	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__329
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$0, %eax
	movl	%eax, %ecx
	addl	$0, %ecx
	movl	%ecx, 4(%esp)
	addl	$0, %eax
	movl	%eax, (%esp)
.LBB0_1:                                # %__322
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	4(%esp), %eax
	cmpl	(%esp), %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_8
# BB#2:                                 # %__328
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_7
.LBB0_3:                                # %__323
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%esp), %eax
	cmpl	4(%esp), %eax
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_1
# BB#4:                                 # %__326
                                        #   in Loop: Header=BB0_3 Depth=2
	movl	$0, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_6
# BB#5:                                 # %__324
                                        #   in Loop: Header=BB0_3 Depth=2
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, (%esp)
	jmp	.LBB0_3
.LBB0_6:                                # %__325
                                        #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_3
.LBB0_7:                                # %__327
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_8:                                # %__321
	movl	(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits