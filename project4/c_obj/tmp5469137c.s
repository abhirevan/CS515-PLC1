	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__836
	pushl	%eax
.Ltmp1:
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, (%esp)
# BB#1:                                 # %__837
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_32
# BB#2:                                 # %__839
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_31
# BB#3:                                 # %__841
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_30
# BB#4:                                 # %__843
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_29
# BB#5:                                 # %__845
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_28
# BB#6:                                 # %__847
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_27
# BB#7:                                 # %__849
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_26
# BB#8:                                 # %__851
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_25
# BB#9:                                 # %__853
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_24
# BB#10:                                # %__855
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_23
# BB#11:                                # %__857
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_22
# BB#12:                                # %__859
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_21
# BB#13:                                # %__861
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_20
# BB#14:                                # %__863
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_19
# BB#15:                                # %__865
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_18
# BB#16:                                # %__867
	jmp	.LBB0_17
.LBB0_17:                               # %__868
	jmp	.LBB0_18
.LBB0_18:                               # %__866
	jmp	.LBB0_19
.LBB0_19:                               # %__864
	jmp	.LBB0_20
.LBB0_20:                               # %__862
	jmp	.LBB0_21
.LBB0_21:                               # %__860
	jmp	.LBB0_22
.LBB0_22:                               # %__858
	jmp	.LBB0_23
.LBB0_23:                               # %__856
	jmp	.LBB0_24
.LBB0_24:                               # %__854
	jmp	.LBB0_25
.LBB0_25:                               # %__852
	jmp	.LBB0_26
.LBB0_26:                               # %__850
	jmp	.LBB0_27
.LBB0_27:                               # %__848
	jmp	.LBB0_28
.LBB0_28:                               # %__846
	jmp	.LBB0_29
.LBB0_29:                               # %__844
	jmp	.LBB0_30
.LBB0_30:                               # %__842
	jmp	.LBB0_31
.LBB0_31:                               # %__840
	jmp	.LBB0_32
.LBB0_32:                               # %__838
	movl	(%esp), %eax
	popl	%edx
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
