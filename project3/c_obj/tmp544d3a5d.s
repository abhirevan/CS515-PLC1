	.align 4
	.text
.globl _program
_program:
	movl %edx,4(%esp)
	movl %edx,%eax
	pushl %eax
	movl %edx,%eax
	cmpl 0(%esp),%eax
	movl $0,%eax
	setne %al
	addl $4,%esp
	ret
