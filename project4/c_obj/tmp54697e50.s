	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __287
__287:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-8(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __288
__288:
	movl -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $10,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -12(%ebp),%ebx
	movl -16(%ebp),%ecx
	movl $0,-20(%ebp)
	cmpl %ecx,%ebx
	setl -20(%ebp)
	cmpl $0,-20(%ebp)
	je __290
	jne __289
__289:
	movl -4(%ebp),%ecx
	movl %ecx,-24(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-28(%ebp)
	movl -28(%ebp),%ecx
	movl -24(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-32(%ebp)
	movl -32(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __291
__291:
	jmp __288
__290:
	movl -4(%ebp),%ecx
	movl %ecx,-36(%ebp)
	movl -36(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
