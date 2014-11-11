	.align 4
	.text
.globl program
program:
	movl 4(%esp),%edx
	movl $17,%eax
	pushl %eax
	negl %eax
	addl $4,%esp
	ret
