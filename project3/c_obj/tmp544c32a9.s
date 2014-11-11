	.align 4
	.text
.globl program
program:
	movl %edx,4(%esp)
	movl $515,%eax
	ret
