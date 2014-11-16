	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__294
	subl	$8, %esp
.Ltmp1:
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	movl	$6, %ecx
	addl	$0, %ecx
	addl	$0, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
.LBB0_1:                                # %__295
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_6
# BB#2:                                 # %__297
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_3
.LBB0_3:                                # %__300
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	subl	%eax, %ecx
	movl	%ecx, 4(%esp)
# BB#4:                                 # %__301
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	(%esp), %eax
	imull	4(%esp), %eax
	movl	%eax, (%esp)
# BB#5:                                 # %__302
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_6:                                # %__298
	movl	(%esp), %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
