	.align 4
	.text
.globl program
program:
	movl 4(%esp),%edx
	movl %edx,%eax
	pushl %eax
	movl $17,%eax
	movl 0(%esp),%ecx
	sarl %cl, %eax
	addl $4,%esp
	ret
