	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__274
	pushl	%ebp
.Ltmp2:
	.cfi_def_cfa_offset 8
.Ltmp3:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
.Ltmp4:
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	$0, %eax
	movl	$1, %ecx
	addl	$0, %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -4(%ebp)
# BB#1:                                 # %__268
	movl	-4(%ebp), %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
	movl	%ecx, -8(%ebp)          # 4-byte Spill
.LBB0_2:                                # %__269
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%ebp), %eax
	movl	-8(%ebp), %ecx          # 4-byte Reload
	cmpl	(%ecx), %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_7
# BB#3:                                 # %__273
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-4(%ebp), %eax
	movl	-8(%ebp), %ecx          # 4-byte Reload
	cmpl	(%ecx), %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_5
# BB#4:                                 # %__271
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$42, %eax
	addl	$0, %eax
	movl	-8(%ebp), %ecx          # 4-byte Reload
	movl	%eax, (%ecx)
	jmp	.LBB0_6
.LBB0_5:                                # %__272
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                # %__270
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %eax
	movl	-8(%ebp), %ecx          # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, -4(%ebp)
	jmp	.LBB0_2
.LBB0_7:                                # %__267
	movl	-4(%ebp), %eax
	movl	%ebp, %esp
	popl	%ebp
	ret
.Ltmp5:
	.size	program, .Ltmp5-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
