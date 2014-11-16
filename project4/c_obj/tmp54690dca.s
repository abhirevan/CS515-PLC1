	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__566
	pushl	%ebx
.Ltmp3:
	.cfi_def_cfa_offset 8
	pushl	%esi
.Ltmp4:
	.cfi_def_cfa_offset 12
	subl	$8, %esp
.Ltmp5:
	.cfi_def_cfa_offset 20
.Ltmp6:
	.cfi_offset %esi, -12
.Ltmp7:
	.cfi_offset %ebx, -8
	movl	$0, %eax
	movl	%eax, %ecx
	addl	$0, %ecx
	movl	%ecx, 4(%esp)
	addl	$0, %eax
	movl	%eax, (%esp)
# BB#1:                                 # %__567
	movl	$0, %eax
	movl	4(%esp), %ecx
	imull	4(%esp), %ecx
	imull	4(%esp), %ecx
	imull	4(%esp), %ecx
	imull	4(%esp), %ecx
	imull	4(%esp), %ecx
	imull	4(%esp), %ecx
	imull	4(%esp), %ecx
	imull	4(%esp), %ecx
	imull	4(%esp), %ecx
	movl	%eax, %edx
	addl	$0, %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	%esi, %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	%esi, %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	%esi, %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	%esi, %edx
	addl	$0, %eax
	imull	%eax, %edx
	cmpl	%edx, %ecx
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	cmpl	$0, %eax
	je	.LBB0_4
# BB#2:                                 # %__569
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, 4(%esp)
# BB#3:                                 # %__570
	jmp	.LBB0_4
.LBB0_4:                                # %__568
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, (%esp)
# BB#5:                                 # %__571
	movl	4(%esp), %eax
	addl	(%esp), %eax
	addl	$8, %esp
	popl	%esi
	popl	%ebx
	ret
.Ltmp8:
	.size	program, .Ltmp8-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
