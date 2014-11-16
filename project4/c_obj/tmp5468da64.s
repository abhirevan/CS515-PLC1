	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__14
	jmp	.LBB0_1
.LBB0_1:                                # %__13
	movl	$4, %eax
	addl	$0, %eax
	ret
.Ltmp0:
	.size	program, .Ltmp0-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
