	.align 4
	.text
.globl program
program:
	movl 4(%esp),%edx
	movl $515,%eax
	ret
