	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __607
__607:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-8(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __608
__608:
	movl -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -12(%ebp),%ebx
	movl -16(%ebp),%ecx
	movl $0,-20(%ebp)
	cmpl %ecx,%ebx
	setl -20(%ebp)
	cmpl $0,-20(%ebp)
	je __610
	jne __609
__609:
	jmp __611
__611:
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
	jmp __612
__612:
	jmp __608
__610:
	movl -4(%ebp),%ecx
	movl %ecx,-36(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-40(%ebp)
	movl -40(%ebp),%ecx
	movl -36(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-44(%ebp)
	movl -44(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __613
__613:
	movl -4(%ebp),%ecx
	movl %ecx,-48(%ebp)
	movl -48(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
