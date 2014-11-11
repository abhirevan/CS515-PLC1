	.align 4
	.text
.globl program
program:
	movl 4(%esp),%edx
	movl $4,%eax
	pushl %eax
	movl %edx,%eax
	cmpl 0(%esp),%eax
	movl $0,%eax
	setle %al
	addl $4,%esp
	ret
