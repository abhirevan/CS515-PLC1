	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__260
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
# BB#1:                                 # %__255
	jmp	.LBB0_2
.LBB0_2:                                # %__256
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
# BB#3:                                 # %__259
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
# BB#4:                                 # %__257
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
	jmp	.LBB0_2
.LBB0_5:                                # %__258
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1000, %eax             # imm = 0x3E8
	addl	$0, %eax
	movl	%eax, 4(%esp)
	jmp	.LBB0_2
.LBB0_6:                                # %__254
	movl	4(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
