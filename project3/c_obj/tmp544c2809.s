	.align 4
	.text
.globl _program
_program:
	movl %edx,4(%esp)
	movl %edx,%eax
	ret
