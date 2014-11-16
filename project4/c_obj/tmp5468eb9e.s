	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__133
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	movl	$0, %ecx
	addl	$0, %ecx
	addl	$0, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
# BB#1:                                 # %__134
	movl	$1, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_7
# BB#2:                                 # %__136
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_4
# BB#3:                                 # %__138
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, 4(%esp)
	jmp	.LBB0_5
.LBB0_4:                                # %__140
	movl	$2, %eax
	addl	$0, %eax
	movl	%eax, 4(%esp)
	jmp	.LBB0_6
.LBB0_5:                                # %__139
	jmp	.LBB0_12
.LBB0_6:                                # %__141
	jmp	.LBB0_12
.LBB0_7:                                # %__143
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_9
# BB#8:                                 # %__145
	movl	$3, %eax
	addl	$0, %eax
	movl	%eax, 4(%esp)
	jmp	.LBB0_10
.LBB0_9:                                # %__147
	movl	$4, %eax
	addl	$0, %eax
	movl	%eax, 4(%esp)
	jmp	.LBB0_11
.LBB0_10:                               # %__146
	jmp	.LBB0_13
.LBB0_11:                               # %__148
	jmp	.LBB0_13
.LBB0_12:                               # %__142
	jmp	.LBB0_14
.LBB0_13:                               # %__149
	jmp	.LBB0_14
.LBB0_14:                               # %__150
	movl	4(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
