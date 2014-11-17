	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __803
__803:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-8(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __804
__804:
	movl -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -12(%ebp),%ebx
	movl -16(%ebp),%ecx
	movl $0,-20(%ebp)
	cmpl %ecx,%ebx
	setl -20(%ebp)
	cmpl $0,-20(%ebp)
	je __806
	jne __805
__805:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-28(%ebp)
	movl -28(%ebp),%ecx
	movl %ecx,-24(%ebp)
	jmp __807
__807:
	movl -4(%ebp),%ecx
	movl %ecx,-32(%ebp)
	movl $10,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-36(%ebp)
	movl -36(%ebp),%ecx
	movl -32(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-40(%ebp)
	movl -40(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __808
__808:
	jmp __809
__809:
	movl -24(%ebp),%ecx
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
	je __810
	jne __811
__811:
	jmp __812
__812:
	movl -24(%ebp),%ecx
	movl %ecx,-60(%ebp)
	movl -60(%ebp),%ecx
	movl %ecx,-56(%ebp)
	jmp __813
__813:
	movl -56(%ebp),%ecx
	movl %ecx,-64(%ebp)
	movl $900,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-68(%ebp)
	movl $-1,%ecx
	movl -68(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-72(%ebp)
	movl -64(%ebp),%ebx
	movl -72(%ebp),%ecx
	movl $0,-76(%ebp)
	cmpl %ecx,%ebx
	setg -76(%ebp)
	cmpl $0,-76(%ebp)
	je __815
	jne __814
__814:
	jmp __816
__816:
	movl -56(%ebp),%ecx
	movl %ecx,-80(%ebp)
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-84(%ebp)
	movl -84(%ebp),%ecx
	movl -80(%ebp),%eax
	subl %ecx,%eax
	movl %eax,-88(%ebp)
	movl -88(%ebp),%ecx
	movl %ecx,-56(%ebp)
	jmp __817
__817:
	movl -56(%ebp),%ecx
	movl %ecx,-92(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-96(%ebp)
	movl -96(%ebp),%ecx
	movl -92(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-100(%ebp)
	cmpl $0,-100(%ebp)
	je __826
	jne __819
__819:
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-108(%ebp)
	movl -108(%ebp),%ecx
	movl %ecx,-104(%ebp)
	jmp __820
__820:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-116(%ebp)
	movl -116(%ebp),%ecx
	movl %ecx,-112(%ebp)
	jmp __821
__821:
	movl -112(%ebp),%ecx
	movl %ecx,-120(%ebp)
	movl -104(%ebp),%ecx
	movl %ecx,-124(%ebp)
	movl -120(%ebp),%ebx
	movl -124(%ebp),%ecx
	movl $0,-128(%ebp)
	cmpl %ecx,%ebx
	setl -128(%ebp)
	cmpl $0,-128(%ebp)
	je __822
	jne __823
__823:
	jmp __824
__824:
	movl -112(%ebp),%ecx
	movl %ecx,-132(%ebp)
	movl $5,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-136(%ebp)
	movl -136(%ebp),%ecx
	movl -132(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-140(%ebp)
	movl -140(%ebp),%ecx
	movl %ecx,-112(%ebp)
	jmp __825
__825:
	jmp __821
__826:
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-148(%ebp)
	movl -148(%ebp),%ecx
	movl %ecx,-144(%ebp)
	jmp __827
__827:
	movl -144(%ebp),%ecx
	movl %ecx,-152(%ebp)
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-156(%ebp)
	movl $-1,%ecx
	movl -156(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-160(%ebp)
	movl -152(%ebp),%ebx
	movl -160(%ebp),%ecx
	movl $0,-164(%ebp)
	cmpl %ecx,%ebx
	setg -164(%ebp)
	cmpl $0,-164(%ebp)
	je __829
	jne __828
__828:
	jmp __830
__830:
	movl -144(%ebp),%ecx
	movl %ecx,-168(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-172(%ebp)
	movl -172(%ebp),%ecx
	movl -168(%ebp),%eax
	subl %ecx,%eax
	movl %eax,-176(%ebp)
	movl -176(%ebp),%ecx
	movl %ecx,-144(%ebp)
	jmp __831
__831:
	movl -144(%ebp),%ecx
	movl %ecx,-180(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-184(%ebp)
	movl -184(%ebp),%ecx
	movl -180(%ebp),%eax
	subl %ecx,%eax
	movl %eax,-188(%ebp)
	movl -188(%ebp),%ecx
	movl %ecx,-144(%ebp)
	jmp __832
__832:
	movl -144(%ebp),%ecx
	movl %ecx,-192(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-196(%ebp)
	movl -196(%ebp),%ecx
	movl -192(%ebp),%eax
	subl %ecx,%eax
	movl %eax,-200(%ebp)
	movl -200(%ebp),%ecx
	movl %ecx,-144(%ebp)
	jmp __833
__833:
	jmp __827
__822:
	jmp __834
__829:
	jmp __834
__834:
	jmp __813
__815:
	movl -24(%ebp),%ecx
	movl %ecx,-204(%ebp)
	movl $18,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-208(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-212(%ebp)
	movl -212(%ebp),%ecx
	movl -208(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-216(%ebp)
	movl -216(%ebp),%ecx
	movl -204(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-220(%ebp)
	movl -220(%ebp),%ecx
	movl %ecx,-24(%ebp)
	jmp __835
__835:
	jmp __809
__810:
	jmp __804
__806:
	movl -4(%ebp),%ecx
	movl %ecx,-224(%ebp)
	movl -224(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
