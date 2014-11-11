	.align 4
	.text
.globl program
program:
	movl 4(%esp),%edx
	movl %edx,%eax
	pushl %eax
	cmpl $0,%eax
	movl $0,%eax
	sete %al
	addl $4,%esp
	ret
