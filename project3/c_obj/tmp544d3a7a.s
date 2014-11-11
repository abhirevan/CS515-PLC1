	.align 4
	.text
.globl program
program:
	movl %edx,4(%esp)
	movl $17,%eax
	pushl %eax
	negl %eax
	addl $4,%esp
	ret
