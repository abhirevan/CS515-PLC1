	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__578
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$0, %eax
	movl	%eax, %ecx
	addl	$0, %ecx
	movl	%ecx, 4(%esp)
	addl	$0, %eax
	movl	%eax, (%esp)
# BB#1:                                 # %__579
	jmp	.LBB0_2
.LBB0_2:                                # %__580
                                        # =>This Inner Loop Header: Depth=1
	movl	$10, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_7
# BB#3:                                 # %__582
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_4
.LBB0_4:                                # %__583
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, (%esp)
# BB#5:                                 # %__584
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 4(%esp)
# BB#6:                                 # %__585
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_2
.LBB0_7:                                # %__581
	movl	$1, %eax
	movl	(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, (%esp)
# BB#8:                                 # %__586
	movl	(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
