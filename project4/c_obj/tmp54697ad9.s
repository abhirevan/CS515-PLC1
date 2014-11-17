	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __36
__36:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-8(%ebp)
	movl -8(%ebp),%ecx
	movl -4(%ebp),%eax
	jmp __37
__37:
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -16(%ebp),%ecx
	movl -12(%ebp),%eax
	jmp __38
__38:
	movl -4(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl -20(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
