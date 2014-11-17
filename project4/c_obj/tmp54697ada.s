	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __39
__39:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-12(%ebp)
	movl -12(%ebp),%ecx
	movl -4(%ebp),%eax
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -16(%ebp),%ecx
	movl -8(%ebp),%eax
	jmp __40
__40:
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-24(%ebp)
	movl -24(%ebp),%ecx
	movl -20(%ebp),%eax
	jmp __41
__41:
	movl -8(%ebp),%ecx
	movl %ecx,-28(%ebp)
	movl -20(%ebp),%ecx
	movl %ecx,-32(%ebp)
	movl -32(%ebp),%ecx
	movl -28(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-36(%ebp)
	movl -36(%ebp),%ecx
	movl -8(%ebp),%eax
	jmp __42
__42:
	movl -8(%ebp),%ecx
	movl %ecx,-40(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-44(%ebp)
	movl -44(%ebp),%ecx
	movl -40(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-48(%ebp)
	movl -48(%ebp),%ecx
	movl -8(%ebp),%eax
	jmp __43
__43:
	movl -8(%ebp),%ecx
	movl %ecx,-52(%ebp)
	movl -52(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
