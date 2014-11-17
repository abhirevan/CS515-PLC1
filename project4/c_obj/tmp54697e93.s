	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __280
__280:
	movl $6,%ecx
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
	jmp __281
__281:
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
	setg -28(%ebp)
	cmpl $0,-28(%ebp)
	je __283
	jne __282
__282:
	jmp __284
__284:
	movl -8(%ebp),%ecx
	movl %ecx,-32(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-36(%ebp)
	movl -36(%ebp),%ecx
	movl -32(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-40(%ebp)
	movl -40(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __285
__285:
	movl -4(%ebp),%ecx
	movl %ecx,-44(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-48(%ebp)
	movl -48(%ebp),%ecx
	movl -44(%ebp),%eax
	subl %ecx,%eax
	movl %eax,-52(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __286
__286:
	jmp __281
__283:
	movl -8(%ebp),%ecx
	movl %ecx,-56(%ebp)
	movl -56(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
