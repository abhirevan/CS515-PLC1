	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __346
__346:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-12(%ebp)
	movl -12(%ebp),%ecx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-16(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl -20(%ebp),%ecx
	movl -16(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-24(%ebp)
	movl $98,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-28(%ebp)
	movl -28(%ebp),%ecx
	movl -24(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-32(%ebp)
	movl $40,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-36(%ebp)
	movl -36(%ebp),%ecx
	movl -32(%ebp),%eax
	shll %cl, %eax
	movl %eax,-40(%ebp)
	movl -40(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __347
__347:
	jmp __348
__348:
	movl -4(%ebp),%ecx
	movl %ecx,-44(%ebp)
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-48(%ebp)
	movl -44(%ebp),%ebx
	movl -48(%ebp),%ecx
	movl $0,-52(%ebp)
	cmpl %ecx,%ebx
	setl -52(%ebp)
	cmpl $0,-52(%ebp)
	je __349
	jne __350
__350:
	movl -8(%ebp),%ecx
	movl %ecx,-56(%ebp)
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-60(%ebp)
	movl -56(%ebp),%ebx
	movl -60(%ebp),%ecx
	movl $0,-64(%ebp)
	cmpl %ecx,%ebx
	setl -64(%ebp)
	cmpl $0,-64(%ebp)
	je __354
	jne __352
__352:
	movl -4(%ebp),%ecx
	movl %ecx,-68(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-72(%ebp)
	movl -72(%ebp),%ecx
	movl -68(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-76(%ebp)
	movl -76(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __353
__354:
	movl $1000,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-80(%ebp)
	movl -80(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __355
__353:
	jmp __356
__355:
	jmp __356
__356:
	jmp __357
__357:
	jmp __348
__349:
	movl -4(%ebp),%ecx
	movl %ecx,-84(%ebp)
	movl -84(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
