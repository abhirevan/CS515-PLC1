	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __20
__20:
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-8(%ebp)
	movl -8(%ebp),%ecx
	movl -4(%ebp),%eax
	jmp __21
__21:
	movl -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -12(%ebp),%ebx
	movl -16(%ebp),%ecx
	movl $0,-20(%ebp)
	cmpl %ecx,%ebx
	sete -20(%ebp)
	cmpl $0,-20(%ebp)
	je __22
	jne __23
__23:
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
	movl -4(%ebp),%eax
	jmp __24
__24:
	jmp __22
__22:
	movl -4(%ebp),%ecx
	movl %ecx,-36(%ebp)
	movl -36(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
