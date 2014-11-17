	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __96
__96:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-12(%ebp)
	movl -12(%ebp),%ecx
	movl %ecx,-4(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __97
__97:
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
	je __98
	jne __99
__99:
	movl -8(%ebp),%ecx
	movl %ecx,-32(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-36(%ebp)
	movl -32(%ebp),%ebx
	movl -36(%ebp),%ecx
	movl $0,-40(%ebp)
	cmpl %ecx,%ebx
	sete -40(%ebp)
	cmpl $0,-40(%ebp)
	je __100
	jne __101
__101:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-44(%ebp)
	movl -44(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __102
__102:
	jmp __100
__100:
	jmp __98
__98:
	movl -4(%ebp),%ecx
	movl %ecx,-48(%ebp)
	movl -48(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
