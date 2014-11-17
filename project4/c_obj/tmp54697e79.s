	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __18
__18:
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-12(%ebp)
	movl -12(%ebp),%ecx
	movl %ecx,-4(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __19
__19:
	movl -4(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-24(%ebp)
	movl -24(%ebp),%ecx
	movl -20(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-28(%ebp)
	movl -28(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
