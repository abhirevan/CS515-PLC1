	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __767
__767:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-8(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __768
__768:
	jmp __769
__769:
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
	je __770
	jne __771
__771:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-28(%ebp)
	movl -28(%ebp),%ecx
	movl %ecx,-24(%ebp)
	jmp __772
__772:
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
	jmp __773
__773:
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
	je __775
	jne __774
__774:
	movl -24(%ebp),%ecx
	movl %ecx,-60(%ebp)
	movl -60(%ebp),%ecx
	movl %ecx,-56(%ebp)
	jmp __776
__776:
	jmp __777
__777:
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
	je __778
	jne __779
__779:
	jmp __780
__780:
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
	jmp __781
__781:
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
	je __789
	jne __783
__783:
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-112(%ebp)
	movl -112(%ebp),%ecx
	movl %ecx,-104(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-116(%ebp)
	movl -116(%ebp),%ecx
	movl %ecx,-108(%ebp)
	jmp __784
__784:
	movl -108(%ebp),%ecx
	movl %ecx,-120(%ebp)
	movl -104(%ebp),%ecx
	movl %ecx,-124(%ebp)
	movl -120(%ebp),%ebx
	movl -124(%ebp),%ecx
	movl $0,-128(%ebp)
	cmpl %ecx,%ebx
	setl -128(%ebp)
	cmpl $0,-128(%ebp)
	je __786
	jne __785
__785:
	jmp __787
__787:
	movl -108(%ebp),%ecx
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
	movl %ecx,-108(%ebp)
	jmp __788
__788:
	jmp __784
__789:
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-148(%ebp)
	movl -148(%ebp),%ecx
	movl %ecx,-144(%ebp)
	jmp __790
__790:
	jmp __791
__791:
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
	je __792
	jne __793
__793:
	jmp __794
__794:
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
	jmp __795
__795:
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
	jmp __796
__796:
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
	jmp __797
__797:
	jmp __798
__798:
	jmp __791
__786:
	jmp __799
__792:
	jmp __799
__799:
	jmp __800
__800:
	jmp __777
__778:
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
	jmp __801
__801:
	jmp __773
__775:
	jmp __802
__802:
	jmp __769
__770:
	movl -4(%ebp),%ecx
	movl %ecx,-224(%ebp)
	movl -224(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
