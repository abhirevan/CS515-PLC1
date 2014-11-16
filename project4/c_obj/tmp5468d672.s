	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__156
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	movl	$0, %ecx
	addl	$0, %ecx
	addl	$0, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
# BB#1:                                 # %__157
	movl	$0, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_7
# BB#2:                                 # %__159
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_4
# BB#3:                                 # %__161
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, 4(%esp)
	jmp	.LBB0_5
.LBB0_4:                                # %__163
	movl	$2, %eax
	addl	$0, %eax
	movl	%eax, 4(%esp)
	jmp	.LBB0_6
.LBB0_5:                                # %__162
	jmp	.LBB0_12
.LBB0_6:                                # %__164
	jmp	.LBB0_12
.LBB0_7:                                # %__166
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_9
# BB#8:                                 # %__168
	movl	$3, %eax
	addl	$0, %eax
	movl	%eax, 4(%esp)
	jmp	.LBB0_10
.LBB0_9:                                # %__170
	movl	$4, %eax
	addl	$0, %eax
	movl	%eax, 4(%esp)
	jmp	.LBB0_11
.LBB0_10:                               # %__169
	jmp	.LBB0_13
.LBB0_11:                               # %__171
	jmp	.LBB0_13
.LBB0_12:                               # %__165
	jmp	.LBB0_14
.LBB0_13:                               # %__172
	jmp	.LBB0_14
.LBB0_14:                               # %__173
	movl	4(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
