	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__426
	subl	$12, %esp
.Ltmp1:
	.cfi_def_cfa_offset 16
	movl	$100, %eax
	movl	$5, %ecx
	movl	$0, %edx
	addl	$0, %edx
	addl	$0, %ecx
	addl	$0, %eax
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	(%esp), %eax            # 4-byte Reload
	sarl	%cl, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
# BB#1:                                 # %__427
.LBB0_2:                                # %__429
                                        # =>This Inner Loop Header: Depth=1
	movl	$10, %eax
	movl	8(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_9
# BB#3:                                 # %__431
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$5, %eax
	movl	4(%esp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_5
# BB#4:                                 # %__434
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %eax
	movl	8(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 8(%esp)
	jmp	.LBB0_6
.LBB0_5:                                # %__436
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$3, %eax
	movl	8(%esp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, 8(%esp)
	jmp	.LBB0_7
.LBB0_6:                                # %__435
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_8
.LBB0_7:                                # %__437
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                # %__438
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_2
.LBB0_9:                                # %__432
	movl	8(%esp), %eax
	addl	$12, %esp
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
