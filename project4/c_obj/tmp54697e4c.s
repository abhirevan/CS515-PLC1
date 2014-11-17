	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __241
__241:
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-8(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __242
__242:
	movl -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -12(%ebp),%ebx
	movl -16(%ebp),%ecx
	movl $0,-20(%ebp)
	cmpl %ecx,%ebx
	setl -20(%ebp)
	cmpl $0,-20(%ebp)
	je __246
	jne __244
__244:
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
	jmp __245
__246:
	jmp __247
__247:
	movl -4(%ebp),%ecx
	movl %ecx,-36(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-40(%ebp)
	movl -40(%ebp),%ecx
	movl -36(%ebp),%eax
	subl %ecx,%eax
	movl %eax,-44(%ebp)
	movl -44(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __248
__248:
	movl -4(%ebp),%ecx
	movl %ecx,-48(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-52(%ebp)
	movl -48(%ebp),%ebx
	movl -52(%ebp),%ecx
	movl $0,-56(%ebp)
	cmpl %ecx,%ebx
	setg -56(%ebp)
	cmpl $0,-56(%ebp)
	je __249
	jne __250
__250:
	movl -4(%ebp),%ecx
	movl %ecx,-64(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-68(%ebp)
	movl -68(%ebp),%ecx
	movl -64(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-72(%ebp)
	movl -72(%ebp),%ecx
	movl %ecx,-60(%ebp)
	jmp __251
__251:
	jmp __249
__245:
	jmp __252
__249:
	jmp __252
__252:
	movl -4(%ebp),%ecx
	movl %ecx,-76(%ebp)
	movl -76(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
