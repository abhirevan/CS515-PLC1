	.align 4
	.text
.globl program
program:
	movl 4(%esp),%edx
	movl $42,%eax
	pushl %eax
	movl $17,%eax
	pushl %eax
	movl %edx,%eax
	andl 0(%esp),%eax
	addl $4,%esp
	orl 0(%esp),%eax
	addl $4,%esp
	ret
