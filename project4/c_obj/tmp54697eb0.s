	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __621
__621:
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
	jmp __622
__622:
	movl -8(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-24(%ebp)
	movl -20(%ebp),%ebx
	movl -24(%ebp),%ecx
	movl $0,-28(%ebp)
	cmpl %ecx,%ebx
	setl -28(%ebp)
	cmpl $0,-28(%ebp)
	je __624
	jne __623
__623:
	jmp __625
__625:
	movl -8(%ebp),%ecx
	movl %ecx,-32(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-36(%ebp)
	movl -36(%ebp),%ecx
	movl -32(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-40(%ebp)
	movl -40(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __626
__626:
	movl -8(%ebp),%ecx
	movl %ecx,-44(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-48(%ebp)
	movl -48(%ebp),%ecx
	movl -44(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-52(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __627
__627:
	jmp __622
__624:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-60(%ebp)
	movl -60(%ebp),%ecx
	movl %ecx,-56(%ebp)
	jmp __628
__628:
	movl -56(%ebp),%ecx
	movl %ecx,-64(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-68(%ebp)
	movl -64(%ebp),%ebx
	movl -68(%ebp),%ecx
	movl $0,-72(%ebp)
	cmpl %ecx,%ebx
	setl -72(%ebp)
	cmpl $0,-72(%ebp)
	je __629
	jne __630
__630:
	jmp __631
__631:
	movl -8(%ebp),%ecx
	movl %ecx,-76(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-80(%ebp)
	movl -80(%ebp),%ecx
	movl -76(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-84(%ebp)
	movl -84(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __632
__632:
	movl -4(%ebp),%ecx
	movl %ecx,-88(%ebp)
	movl $1000,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-92(%ebp)
	movl -92(%ebp),%ecx
	movl -88(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-96(%ebp)
	movl -96(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __633
__633:
	movl -56(%ebp),%ecx
	movl %ecx,-100(%ebp)
	movl $50,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-104(%ebp)
	movl -104(%ebp),%ecx
	movl -100(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-108(%ebp)
	movl -108(%ebp),%ecx
	movl %ecx,-56(%ebp)
	jmp __634
__634:
	jmp __628
__629:
	movl -4(%ebp),%ecx
	movl %ecx,-112(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-116(%ebp)
	movl -112(%ebp),%ebx
	movl -116(%ebp),%ecx
	movl $0,-120(%ebp)
	cmpl %ecx,%ebx
	setg -120(%ebp)
	cmpl $0,-120(%ebp)
	je __640
	jne __636
__636:
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-128(%ebp)
	movl -128(%ebp),%ecx
	movl %ecx,-124(%ebp)
	jmp __637
__637:
	movl -124(%ebp),%ecx
	movl %ecx,-132(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-136(%ebp)
	movl -136(%ebp),%ecx
	movl -132(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-140(%ebp)
	movl -140(%ebp),%ecx
	movl %ecx,-124(%ebp)
	jmp __638
__638:
	movl -124(%ebp),%ecx
	movl %ecx,-144(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-148(%ebp)
	movl -148(%ebp),%ecx
	movl -144(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-152(%ebp)
	movl -152(%ebp),%ecx
	movl %ecx,-124(%ebp)
	jmp __639
__640:
	jmp __641
__641:
	movl -4(%ebp),%ecx
	movl %ecx,-156(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-160(%ebp)
	movl -160(%ebp),%ecx
	movl -156(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-164(%ebp)
	movl -164(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __642
__642:
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-168(%ebp)
	movl -168(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __643
__639:
	jmp __644
__643:
	jmp __644
__644:
	movl -8(%ebp),%ecx
	movl %ecx,-172(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-176(%ebp)
	movl -176(%ebp),%ecx
	movl -172(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-180(%ebp)
	movl -180(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __645
__645:
	movl -8(%ebp),%ecx
	movl %ecx,-184(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-188(%ebp)
	movl -188(%ebp),%ecx
	movl -184(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-192(%ebp)
	movl -192(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
