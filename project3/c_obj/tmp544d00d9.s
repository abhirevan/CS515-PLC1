	.align 4
	.text
.globl program
program:
	movl %edx,4(%esp)
	movl %edx,%eax
	pushl %eax
	movl %edx,%eax
	pushl %eax
	movl %edx,%eax
	addl 0(%esp),%eax
	addl $4,%esp
	addl 0(%esp),%eax
	addl $4,%esp
	ret
