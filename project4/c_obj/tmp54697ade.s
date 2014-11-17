	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __72
__72:
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
	jmp __73
__73:
	movl -4(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-24(%ebp)
	movl -20(%ebp),%ebx
	movl -24(%ebp),%ecx
	movl $0,-28(%ebp)
	cmpl %ecx,%ebx
	sete -28(%ebp)
	cmpl $0,-28(%ebp)
	je __74
	jne __75
__75:
	movl -8(%ebp),%ecx
	movl %ecx,-32(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-36(%ebp)
	movl -32(%ebp),%ebx
	movl -36(%ebp),%ecx
	movl $0,-40(%ebp)
	cmpl %ecx,%ebx
	sete -40(%ebp)
	cmpl $0,-40(%ebp)
	je __79
	jne __77
__77:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-44(%ebp)
	movl -44(%ebp),%ecx
	movl -4(%ebp),%eax
	jmp __78
__79:
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-48(%ebp)
	movl -48(%ebp),%ecx
	movl -4(%ebp),%eax
	jmp __80
__78:
	jmp __81
__80:
	jmp __81
__81:
	jmp __74
__74:
	movl -4(%ebp),%ecx
	movl %ecx,-52(%ebp)
	movl -52(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
