	.align 4
	.text
.globl program
program:
	movl %edx,4(%esp)
	movl %edx,%eax
	pushl %eax
	movl $515,%eax
	shrl %cl, %eax
	movl 0(%esp),%ecx
	addl $4,%esp
	ret
