	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__69
	pushl	%edi
.Ltmp3:
	.cfi_def_cfa_offset 8
	pushl	%esi
.Ltmp4:
	.cfi_def_cfa_offset 12
	subl	$12, %esp
.Ltmp5:
	.cfi_def_cfa_offset 24
.Ltmp6:
	.cfi_offset %esi, -12
.Ltmp7:
	.cfi_offset %edi, -8
	movl	$0, %eax
	movl	$5, %ecx
	movl	$17, %edx
	movl	$4, %esi
	movl	$3, %edi
	addl	$0, %edi
	addl	$0, %esi
	addl	%esi, %edi
	addl	$0, %edx
	addl	$0, %ecx
	imull	%ecx, %edx
	addl	$0, %eax
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
# BB#1:                                 # %__70
	movl	8(%esp), %eax
	cmpl	4(%esp), %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_3
# BB#2:                                 # %__72
	movl	$3, %eax
	addl	$0, %eax
	movl	%eax, (%esp)
	jmp	.LBB0_4
.LBB0_3:                                # %__74
	movl	$4, %eax
	addl	$0, %eax
	movl	%eax, (%esp)
	jmp	.LBB0_5
.LBB0_4:                                # %__73
	jmp	.LBB0_6
.LBB0_5:                                # %__75
	jmp	.LBB0_6
.LBB0_6:                                # %__76
	movl	(%esp), %eax
	addl	$12, %esp
	popl	%esi
	popl	%edi
	ret
.Ltmp8:
	.size	program, .Ltmp8-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
