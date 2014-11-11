	.align 4
	.text
.globl _program
_program:
	movl %edx,4(%esp)
	movl %edx,%eax
	pushl %eax
	movl $17,%eax
	sarl %cl, %eax
	movl 0(%esp),%ecx
	addl $4,%esp
	ret
