	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __265
__265:
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-8(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __266
__266:
	movl -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -12(%ebp),%ebx
	movl -16(%ebp),%ecx
	movl $0,-20(%ebp)
	cmpl %ecx,%ebx
	setl -20(%ebp)
	cmpl $0,-20(%ebp)
	je __274
	jne __268
__268:
	jmp __269
__269:
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
	jmp __270
__270:
	movl -4(%ebp),%ecx
	movl %ecx,-36(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-40(%ebp)
	movl -36(%ebp),%ebx
	movl -40(%ebp),%ecx
	movl $0,-44(%ebp)
	cmpl %ecx,%ebx
	setg -44(%ebp)
	cmpl $0,-44(%ebp)
	je __271
	jne __272
__272:
	movl -4(%ebp),%ecx
	movl %ecx,-48(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-52(%ebp)
	movl -52(%ebp),%ecx
	movl -48(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-56(%ebp)
	movl -56(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __273
__273:
	jmp __271
__274:
	movl -4(%ebp),%ecx
	movl %ecx,-64(%ebp)
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-68(%ebp)
	movl -68(%ebp),%ecx
	movl -64(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-72(%ebp)
	movl -72(%ebp),%ecx
	movl %ecx,-60(%ebp)
	jmp __275
__275:
	movl -60(%ebp),%ecx
	movl %ecx,-76(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-80(%ebp)
	movl -76(%ebp),%ebx
	movl -80(%ebp),%ecx
	movl $0,-84(%ebp)
	cmpl %ecx,%ebx
	setg -84(%ebp)
	cmpl $0,-84(%ebp)
	je __276
	jne __277
__277:
	movl -60(%ebp),%ecx
	movl %ecx,-88(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-92(%ebp)
	movl -92(%ebp),%ecx
	movl -88(%ebp),%eax
	orl %ecx,%eax
	movl %eax,-96(%ebp)
	movl -96(%ebp),%ecx
	movl %ecx,-60(%ebp)
	jmp __278
__278:
	jmp __276
__271:
	jmp __279
__276:
	jmp __279
__279:
	movl -4(%ebp),%ecx
	movl %ecx,-100(%ebp)
	movl -100(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
