	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__320
	pushl	%ebp
.Ltmp3:
	.cfi_def_cfa_offset 8
.Ltmp4:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
.Ltmp5:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%esi
	subl	$16, %esp
.Ltmp6:
	.cfi_offset %esi, -16
.Ltmp7:
	.cfi_offset %ebx, -12
	movl	$0, %eax
	movl	$1, %ecx
	movl	%eax, %edx
	addl	$0, %edx
	movl	%ecx, %esi
	addl	$0, %esi
	addl	%esi, %edx
	movl	%edx, -12(%ebp)
	movl	-12(%ebp), %edx
	addl	$0, %ecx
	addl	%ecx, %edx
	movl	%edx, -16(%ebp)
	addl	$0, %eax
	movl	%eax, -20(%ebp)
# BB#1:                                 # %__319
	movl	$0, %eax
	movl	-12(%ebp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_8
# BB#2:                                 # %__312
	xorl	%eax, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
	movl	%ecx, -24(%ebp)         # 4-byte Spill
.LBB0_3:                                # %__313
                                        # =>This Inner Loop Header: Depth=1
	movl	$100, %eax
	movl	-24(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	cmpl	%eax, %edx
	setl	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	cmpl	$0, %eax
	je	.LBB0_9
# BB#4:                                 # %__317
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %eax
	movl	-16(%ebp), %ecx
	movl	-12(%ebp), %edx
	addl	$0, %eax
	subl	%eax, %edx
	cmpl	%edx, %ecx
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	cmpl	$0, %eax
	je	.LBB0_6
# BB#5:                                 # %__315
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %eax
	movl	-20(%ebp), %ecx
	addl	$0, %eax
	subl	%eax, %ecx
	movl	%ecx, -20(%ebp)
	jmp	.LBB0_7
.LBB0_6:                                # %__316
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %eax
	movl	-20(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -20(%ebp)
.LBB0_7:                                # %__314
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %eax
	movl	-24(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
	jmp	.LBB0_3
.LBB0_8:                                # %__318
	jmp	.LBB0_9
.LBB0_9:                                # %__311
	movl	-20(%ebp), %eax
	leal	-8(%ebp), %esp
	popl	%esi
	popl	%ebx
	popl	%ebp
	ret
.Ltmp8:
	.size	program, .Ltmp8-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
