	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __310
__310:
	movl $19,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-12(%ebp)
	movl $18,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -16(%ebp),%ecx
	movl -12(%ebp),%eax
	subl %ecx,%eax
	movl %eax,-20(%ebp)
	movl -20(%ebp),%ecx
	movl %ecx,-4(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-24(%ebp)
	movl -24(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __311
__311:
	movl -4(%ebp),%ecx
	movl %ecx,-28(%ebp)
	movl $19,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-32(%ebp)
	movl -28(%ebp),%ebx
	movl -32(%ebp),%ecx
	movl $0,-36(%ebp)
	cmpl %ecx,%ebx
	setle -36(%ebp)
	cmpl $0,-36(%ebp)
	je __313
	jne __312
__312:
	movl -8(%ebp),%ecx
	movl %ecx,-40(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-44(%ebp)
	movl -40(%ebp),%ebx
	movl -44(%ebp),%ecx
	movl $0,-48(%ebp)
	cmpl %ecx,%ebx
	setle -48(%ebp)
	cmpl $0,-48(%ebp)
	je __317
	jne __315
__315:
	movl -4(%ebp),%ecx
	movl %ecx,-52(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-56(%ebp)
	movl -56(%ebp),%ecx
	movl -52(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-60(%ebp)
	movl -60(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __316
__317:
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-64(%ebp)
	movl -64(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __318
__316:
	jmp __319
__318:
	jmp __319
__319:
	jmp __311
__313:
	movl -4(%ebp),%ecx
	movl %ecx,-68(%ebp)
	movl -68(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
