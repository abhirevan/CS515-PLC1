	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __646
__646:
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
	jmp __647
__647:
	movl -8(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-24(%ebp)
	movl -24(%ebp),%ecx
	movl -20(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-28(%ebp)
	movl -28(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __648
__648:
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
	setg -40(%ebp)
	cmpl $0,-40(%ebp)
	je __654
	jne __650
__650:
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-48(%ebp)
	movl -48(%ebp),%ecx
	movl %ecx,-44(%ebp)
	jmp __651
__651:
	movl -44(%ebp),%ecx
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
	movl %ecx,-44(%ebp)
	jmp __652
__652:
	movl -44(%ebp),%ecx
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
	movl %ecx,-44(%ebp)
	jmp __653
__654:
	jmp __655
__655:
	movl -4(%ebp),%ecx
	movl %ecx,-76(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-80(%ebp)
	movl -80(%ebp),%ecx
	movl -76(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-84(%ebp)
	movl -84(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __656
__656:
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-88(%ebp)
	movl -88(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __657
__653:
	jmp __658
__657:
	jmp __658
__658:
	movl -8(%ebp),%ecx
	movl %ecx,-92(%ebp)
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-96(%ebp)
	movl -92(%ebp),%ebx
	movl -96(%ebp),%ecx
	movl $0,-100(%ebp)
	cmpl %ecx,%ebx
	setl -100(%ebp)
	cmpl $0,-100(%ebp)
	je __660
	jne __659
__659:
	jmp __661
__661:
	movl -8(%ebp),%ecx
	movl %ecx,-104(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-108(%ebp)
	movl -108(%ebp),%ecx
	movl -104(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-112(%ebp)
	movl -112(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __662
__662:
	movl -8(%ebp),%ecx
	movl %ecx,-116(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-120(%ebp)
	movl -120(%ebp),%ecx
	movl -116(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-124(%ebp)
	movl -124(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __663
__663:
	jmp __658
__660:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-132(%ebp)
	movl -132(%ebp),%ecx
	movl %ecx,-128(%ebp)
	jmp __664
__664:
	movl -128(%ebp),%ecx
	movl %ecx,-136(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-140(%ebp)
	movl -136(%ebp),%ebx
	movl -140(%ebp),%ecx
	movl $0,-144(%ebp)
	cmpl %ecx,%ebx
	setl -144(%ebp)
	cmpl $0,-144(%ebp)
	je __665
	jne __666
__666:
	jmp __667
__667:
	movl -8(%ebp),%ecx
	movl %ecx,-148(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-152(%ebp)
	movl -152(%ebp),%ecx
	movl -148(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-156(%ebp)
	movl -156(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __668
__668:
	movl -4(%ebp),%ecx
	movl %ecx,-160(%ebp)
	movl $1000,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-164(%ebp)
	movl -164(%ebp),%ecx
	movl -160(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-168(%ebp)
	movl -168(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __669
__669:
	movl -128(%ebp),%ecx
	movl %ecx,-172(%ebp)
	movl $50,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-176(%ebp)
	movl -176(%ebp),%ecx
	movl -172(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-180(%ebp)
	movl -180(%ebp),%ecx
	movl %ecx,-128(%ebp)
	jmp __670
__670:
	jmp __664
__665:
	movl -8(%ebp),%ecx
	movl %ecx,-184(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-188(%ebp)
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-192(%ebp)
	movl -192(%ebp),%ecx
	movl -188(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-196(%ebp)
	movl -196(%ebp),%ecx
	movl -184(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-200(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-204(%ebp)
	movl -204(%ebp),%ecx
	movl -200(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-208(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-212(%ebp)
	movl -212(%ebp),%ecx
	movl -208(%ebp),%eax
	shll %cl, %eax
	movl %eax,-216(%ebp)
	movl -216(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
