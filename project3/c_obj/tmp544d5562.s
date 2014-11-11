	.align 4
	.text
.globl program
program:
	movl %edx,4(%esp)
	movl %edx,%eax
	pushl %eax
	movl $27,%eax
	imull 0(%esp), %eax
	addl $4,%esp
	ret
