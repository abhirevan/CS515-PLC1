	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __836
__836:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-8(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __837
__837:
	movl -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -12(%ebp),%ebx
	movl -16(%ebp),%ecx
	movl $0,-20(%ebp)
	cmpl %ecx,%ebx
	sete -20(%ebp)
	cmpl $0,-20(%ebp)
	je __838
	jne __839
__839:
	movl -4(%ebp),%ecx
	movl %ecx,-24(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-28(%ebp)
	movl -24(%ebp),%ebx
	movl -28(%ebp),%ecx
	movl $0,-32(%ebp)
	cmpl %ecx,%ebx
	sete -32(%ebp)
	cmpl $0,-32(%ebp)
	je __840
	jne __841
__841:
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
	sete -44(%ebp)
	cmpl $0,-44(%ebp)
	je __842
	jne __843
__843:
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
	sete -56(%ebp)
	cmpl $0,-56(%ebp)
	je __844
	jne __845
__845:
	movl -4(%ebp),%ecx
	movl %ecx,-60(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-64(%ebp)
	movl -60(%ebp),%ebx
	movl -64(%ebp),%ecx
	movl $0,-68(%ebp)
	cmpl %ecx,%ebx
	sete -68(%ebp)
	cmpl $0,-68(%ebp)
	je __846
	jne __847
__847:
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
	sete -80(%ebp)
	cmpl $0,-80(%ebp)
	je __848
	jne __849
__849:
	movl -4(%ebp),%ecx
	movl %ecx,-84(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-88(%ebp)
	movl -84(%ebp),%ebx
	movl -88(%ebp),%ecx
	movl $0,-92(%ebp)
	cmpl %ecx,%ebx
	sete -92(%ebp)
	cmpl $0,-92(%ebp)
	je __850
	jne __851
__851:
	movl -4(%ebp),%ecx
	movl %ecx,-96(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-100(%ebp)
	movl -96(%ebp),%ebx
	movl -100(%ebp),%ecx
	movl $0,-104(%ebp)
	cmpl %ecx,%ebx
	sete -104(%ebp)
	cmpl $0,-104(%ebp)
	je __852
	jne __853
__853:
	movl -4(%ebp),%ecx
	movl %ecx,-108(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-112(%ebp)
	movl -108(%ebp),%ebx
	movl -112(%ebp),%ecx
	movl $0,-116(%ebp)
	cmpl %ecx,%ebx
	sete -116(%ebp)
	cmpl $0,-116(%ebp)
	je __854
	jne __855
__855:
	movl -4(%ebp),%ecx
	movl %ecx,-120(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-124(%ebp)
	movl -120(%ebp),%ebx
	movl -124(%ebp),%ecx
	movl $0,-128(%ebp)
	cmpl %ecx,%ebx
	sete -128(%ebp)
	cmpl $0,-128(%ebp)
	je __856
	jne __857
__857:
	movl -4(%ebp),%ecx
	movl %ecx,-132(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-136(%ebp)
	movl -132(%ebp),%ebx
	movl -136(%ebp),%ecx
	movl $0,-140(%ebp)
	cmpl %ecx,%ebx
	sete -140(%ebp)
	cmpl $0,-140(%ebp)
	je __858
	jne __859
__859:
	movl -4(%ebp),%ecx
	movl %ecx,-144(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-148(%ebp)
	movl -144(%ebp),%ebx
	movl -148(%ebp),%ecx
	movl $0,-152(%ebp)
	cmpl %ecx,%ebx
	sete -152(%ebp)
	cmpl $0,-152(%ebp)
	je __860
	jne __861
__861:
	movl -4(%ebp),%ecx
	movl %ecx,-156(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-160(%ebp)
	movl -156(%ebp),%ebx
	movl -160(%ebp),%ecx
	movl $0,-164(%ebp)
	cmpl %ecx,%ebx
	sete -164(%ebp)
	cmpl $0,-164(%ebp)
	je __862
	jne __863
__863:
	movl -4(%ebp),%ecx
	movl %ecx,-168(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-172(%ebp)
	movl -168(%ebp),%ebx
	movl -172(%ebp),%ecx
	movl $0,-176(%ebp)
	cmpl %ecx,%ebx
	sete -176(%ebp)
	cmpl $0,-176(%ebp)
	je __864
	jne __865
__865:
	movl -4(%ebp),%ecx
	movl %ecx,-180(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-184(%ebp)
	movl -180(%ebp),%ebx
	movl -184(%ebp),%ecx
	movl $0,-188(%ebp)
	cmpl %ecx,%ebx
	sete -188(%ebp)
	cmpl $0,-188(%ebp)
	je __866
	jne __867
__867:
	jmp __868
__868:
	jmp __866
__866:
	jmp __864
__864:
	jmp __862
__862:
	jmp __860
__860:
	jmp __858
__858:
	jmp __856
__856:
	jmp __854
__854:
	jmp __852
__852:
	jmp __850
__850:
	jmp __848
__848:
	jmp __846
__846:
	jmp __844
__844:
	jmp __842
__842:
	jmp __840
__840:
	jmp __838
__838:
	movl -4(%ebp),%ecx
	movl %ecx,-192(%ebp)
	movl -192(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
