	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __225
__225:
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-8(%ebp)
	movl -8(%ebp),%ecx
	movl -4(%ebp),%eax
	jmp __226
__226:
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
	je __234
	jne __228
__228:
	jmp __229
__229:
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
	jmp __230
__230:
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
	je __231
	jne __232
__232:
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
	movl -4(%ebp),%eax
	jmp __233
__233:
	jmp __231
__234:
	jmp __235
__235:
	movl -4(%ebp),%ecx
	movl %ecx,-60(%ebp)
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-64(%ebp)
	movl -64(%ebp),%ecx
	movl -60(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-68(%ebp)
	movl -68(%ebp),%ecx
	movl -4(%ebp),%eax
	jmp __236
__236:
	movl -4(%ebp),%ecx
	movl %ecx,-72(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-76(%ebp)
	movl -72(%ebp),%ebx
	movl -76(%ebp),%ecx
	movl $0,-80(%ebp)
	cmpl %ecx,%ebx
	setg -80(%ebp)
	cmpl $0,-80(%ebp)
	je __237
	jne __238
__238:
	movl -4(%ebp),%ecx
	movl %ecx,-84(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-88(%ebp)
	movl -88(%ebp),%ecx
	movl -84(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-92(%ebp)
	movl -92(%ebp),%ecx
	movl -4(%ebp),%eax
	jmp __239
__239:
	jmp __237
__231:
	jmp __240
__237:
	jmp __240
__240:
	movl -4(%ebp),%ecx
	movl %ecx,-96(%ebp)
	movl -96(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
