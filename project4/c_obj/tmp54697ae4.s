	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __123
__123:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-12(%ebp)
	movl -12(%ebp),%ecx
	movl -4(%ebp),%eax
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -16(%ebp),%ecx
	movl -8(%ebp),%eax
	jmp __124
__124:
	movl -4(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-24(%ebp)
	movl -20(%ebp),%ebx
	movl -24(%ebp),%ecx
	movl $0,-28(%ebp)
	cmpl %ecx,%ebx
	sete -28(%ebp)
	cmpl $0,-28(%ebp)
	je __128
	jne __126
__126:
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-32(%ebp)
	movl -32(%ebp),%ecx
	movl -4(%ebp),%eax
	jmp __127
__128:
	movl -8(%ebp),%ecx
	movl %ecx,-36(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-40(%ebp)
	movl -36(%ebp),%ebx
	movl -40(%ebp),%ecx
	movl $0,-44(%ebp)
	cmpl %ecx,%ebx
	sete -44(%ebp)
	cmpl $0,-44(%ebp)
	je __129
	jne __130
__130:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-48(%ebp)
	movl -48(%ebp),%ecx
	movl -4(%ebp),%eax
	jmp __131
__131:
	jmp __129
__127:
	jmp __132
__129:
	jmp __132
__132:
	movl -4(%ebp),%ecx
	movl %ecx,-52(%ebp)
	movl -52(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
