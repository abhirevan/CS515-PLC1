	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__970
	pushl	%eax
.Ltmp1:
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, (%esp)
# BB#1:                                 # %__971
# BB#2:                                 # %__973
# BB#3:                                 # %__975
# BB#4:                                 # %__977
# BB#5:                                 # %__979
# BB#6:                                 # %__981
# BB#7:                                 # %__983
# BB#8:                                 # %__985
# BB#9:                                 # %__987
# BB#10:                                # %__989
# BB#11:                                # %__991
# BB#12:                                # %__993
# BB#13:                                # %__995
# BB#14:                                # %__997
# BB#15:                                # %__999
# BB#16:                                # %__1001
	jmp	.LBB0_17
.LBB0_17:                               # %__1003
	movl	(%esp), %eax
	popl	%edx
	ret
.Ltmp2:
	.size	program, .Ltmp2-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
