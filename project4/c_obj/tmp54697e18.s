	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __16
__16:
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-8(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __17
__17:
	movl -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl -12(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
