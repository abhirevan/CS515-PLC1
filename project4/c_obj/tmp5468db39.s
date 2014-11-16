	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__399
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
# BB#1:                                 # %__400
	movl	%esp, %eax
	addl	$-16, %eax
	movl	%eax, %esp
	movl	-4(%ebp), %ecx
	movl	%ecx, (%eax)
	movl	%eax, -8(%ebp)          # 4-byte Spill
.LBB0_2:                                # %__402
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%ebp), %eax
	movl	-8(%ebp), %ecx          # 4-byte Reload
	cmpl	(%ecx), %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_9
# BB#3:                                 # %__404
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_4
.LBB0_4:                                # %__406
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %eax
	movl	-8(%ebp), %ecx          # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, -4(%ebp)
# BB#5:                                 # %__407
                                        #   in Loop: Header=BB0_2 Depth=1
# BB#6:                                 # %__409
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$42, %eax
	addl	$0, %eax
	movl	-8(%ebp), %ecx          # 4-byte Reload
	movl	%eax, (%ecx)
# BB#7:                                 # %__410
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                # %__412
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_2
.LBB0_9:                                # %__403
	movl	-4(%ebp), %eax
	movl	%ebp, %esp
	popl	%ebp
	ret
.Ltmp5:
	.size	program, .Ltmp5-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
