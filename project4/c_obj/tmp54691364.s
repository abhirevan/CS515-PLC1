	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__423
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
# BB#1:                                 # %__424
	movl	$0, %eax
	movl	-12(%ebp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_12
# BB#2:                                 # %__426
	movl	$0, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -24(%ebp)         # 4-byte Spill
.LBB0_3:                                # %__427
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
	je	.LBB0_11
# BB#4:                                 # %__429
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
# BB#5:                                 # %__431
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %eax
	movl	-20(%ebp), %ecx
	addl	$0, %eax
	subl	%eax, %ecx
	movl	%ecx, -20(%ebp)
	jmp	.LBB0_7
.LBB0_6:                                # %__433
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %eax
	movl	-20(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -20(%ebp)
	jmp	.LBB0_8
.LBB0_7:                                # %__432
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_9
.LBB0_8:                                # %__434
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                # %__435
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %eax
	movl	-24(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
# BB#10:                                # %__436
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_11:                               # %__428
	jmp	.LBB0_12
.LBB0_12:                               # %__425
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
