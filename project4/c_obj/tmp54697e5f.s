	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __437
__437:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-12(%ebp)
	movl -12(%ebp),%ecx
	movl %ecx,-4(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __438
__438:
	movl -4(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-24(%ebp)
	movl -20(%ebp),%ebx
	movl -24(%ebp),%ecx
	movl $0,-28(%ebp)
	cmpl %ecx,%ebx
	sete -28(%ebp)
	cmpl $0,-28(%ebp)
	je __440
	jne __439
__439:
	movl -4(%ebp),%ecx
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
	je __441
	jne __442
__442:
	movl -8(%ebp),%ecx
	movl %ecx,-44(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-48(%ebp)
	movl -44(%ebp),%ebx
	movl -48(%ebp),%ecx
	movl $0,-52(%ebp)
	cmpl %ecx,%ebx
	setle -52(%ebp)
	cmpl $0,-52(%ebp)
	je __444
	jne __443
__443:
	movl -8(%ebp),%ecx
	movl %ecx,-56(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-60(%ebp)
	movl -56(%ebp),%ebx
	movl -60(%ebp),%ecx
	movl $0,-64(%ebp)
	cmpl %ecx,%ebx
	sete -64(%ebp)
	cmpl $0,-64(%ebp)
	je __445
	jne __446
__446:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-68(%ebp)
	movl -68(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __447
__447:
	jmp __445
__445:
	jmp __442
__444:
	jmp __441
__441:
	jmp __438
__440:
	movl -8(%ebp),%ecx
	movl %ecx,-72(%ebp)
	movl -72(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
