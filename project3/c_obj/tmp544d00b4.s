	.align 4
	.text
.globl _program
_program:
	movl %edx,4(%esp)
	movl %edx,%eax
	pushl %eax
	cmpl $0,%eax
	movl $0,%eax
	sete %al
	addl $4,%esp
	ret
