	.align 4
	.text
.globl program
program:
	movl %edx,4(%esp)
	movl $27,%eax
	pushl %eax
	movl %edx,%eax
	imull 0(%esp), %eax
	addl $4,%esp
	ret
