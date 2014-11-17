	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __292
__292:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-12(%ebp)
	movl -12(%ebp),%ecx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-16(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __293
__293:
	movl -4(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl $1024,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-24(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-28(%ebp)
	movl -28(%ebp),%ecx
	movl -24(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-32(%ebp)
	movl -20(%ebp),%ebx
	movl -32(%ebp),%ecx
	movl $0,-36(%ebp)
	cmpl %ecx,%ebx
	setge -36(%ebp)
	cmpl $0,-36(%ebp)
	je __295
	jne __294
__294:
	jmp __296
__296:
	movl -8(%ebp),%ecx
	movl %ecx,-40(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-44(%ebp)
	movl -40(%ebp),%ebx
	movl -44(%ebp),%ecx
	movl $0,-48(%ebp)
	cmpl %ecx,%ebx
	sete -48(%ebp)
	cmpl $0,-48(%ebp)
	je __297
	jne __298
__298:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-52(%ebp)
	movl $-1,%ecx
	movl -52(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-56(%ebp)
	movl -56(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __299
__299:
	jmp __297
__297:
	jmp __293
__295:
	movl -4(%ebp),%ecx
	movl %ecx,-60(%ebp)
	movl -60(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
