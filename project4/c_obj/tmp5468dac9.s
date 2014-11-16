	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__369
	pushl	%esi
.Ltmp2:
	.cfi_def_cfa_offset 8
	subl	$8, %esp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %esi, -8
	movl	$40, %eax
	movl	$98, %ecx
	movl	$0, %edx
	addl	$0, %edx
	movl	4(%esp), %esi
	imull	4(%esp), %esi
	addl	$0, %ecx
	addl	%ecx, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
# BB#1:                                 # %__370
	jmp	.LBB0_2
.LBB0_2:                                # %__372
                                        # =>This Inner Loop Header: Depth=1
	movl	$100, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_9
# BB#3:                                 # %__374
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
# BB#4:                                 # %__376
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_6
.LBB0_5:                                # %__378
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1000, %eax             # imm = 0x3E8
	addl	$0, %eax
	movl	%eax, 4(%esp)
	jmp	.LBB0_7
.LBB0_6:                                # %__377
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_8
.LBB0_7:                                # %__379
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                # %__380
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_2
.LBB0_9:                                # %__373
	movl	4(%esp), %eax
	addl	$8, %esp
	popl	%esi
	ret
.Ltmp5:
	.size	program, .Ltmp5-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
