	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__381
	pushl	%eax
.Ltmp1:
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, (%esp)
.LBB0_1:                                # %__382
                                        # =>This Inner Loop Header: Depth=1
	movl	$10, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_5
# BB#2:                                 # %__384
                                        #   in Loop: Header=BB0_1 Depth=1
# BB#3:                                 # %__387
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, %eax
	movl	$100, %ecx
	addl	$0, %ecx
	addl	$0, %eax
	orl	%eax, %ecx
	movl	%ecx, (%esp)
# BB#4:                                 # %__388
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_5:                                # %__385
	movl	(%esp), %eax
	popl	%edx
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
