	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __14
__14:
	jmp __15
__15:
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-4(%ebp)
	movl -4(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
