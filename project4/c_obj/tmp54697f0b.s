	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __487
__487:
	movl $31,%ecx
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
	jmp __488
__488:
	movl -4(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl $40,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-24(%ebp)
	movl -20(%ebp),%ebx
	movl -24(%ebp),%ecx
	movl $0,-28(%ebp)
	cmpl %ecx,%ebx
	setle -28(%ebp)
	cmpl $0,-28(%ebp)
	je __490
	jne __489
__489:
	movl -4(%ebp),%ecx
	movl %ecx,-32(%ebp)
	movl $20,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-36(%ebp)
	movl -32(%ebp),%ebx
	movl -36(%ebp),%ecx
	movl $0,-40(%ebp)
	cmpl %ecx,%ebx
	setle -40(%ebp)
	cmpl $0,-40(%ebp)
	je __501
	jne __492
__492:
	movl -4(%ebp),%ecx
	movl %ecx,-44(%ebp)
	movl $20,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-48(%ebp)
	movl -44(%ebp),%ebx
	movl -48(%ebp),%ecx
	movl $0,-52(%ebp)
	cmpl %ecx,%ebx
	setle -52(%ebp)
	cmpl $0,-52(%ebp)
	je __494
	jne __493
__493:
	movl -4(%ebp),%ecx
	movl %ecx,-56(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-60(%ebp)
	movl -56(%ebp),%ebx
	movl -60(%ebp),%ecx
	movl $0,-64(%ebp)
	cmpl %ecx,%ebx
	setg -64(%ebp)
	cmpl $0,-64(%ebp)
	je __498
	jne __496
__496:
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
	jmp __497
__498:
	movl -4(%ebp),%ecx
	movl %ecx,-80(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-84(%ebp)
	movl -84(%ebp),%ecx
	movl -80(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-88(%ebp)
	movl -88(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __499
__497:
	jmp __500
__499:
	jmp __500
__500:
	jmp __492
__501:
	movl -4(%ebp),%ecx
	movl %ecx,-92(%ebp)
	movl $40,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-96(%ebp)
	movl -92(%ebp),%ebx
	movl -96(%ebp),%ecx
	movl $0,-100(%ebp)
	cmpl %ecx,%ebx
	setle -100(%ebp)
	cmpl $0,-100(%ebp)
	je __503
	jne __502
__502:
	movl -4(%ebp),%ecx
	movl %ecx,-104(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-108(%ebp)
	movl -104(%ebp),%ebx
	movl -108(%ebp),%ecx
	movl $0,-112(%ebp)
	cmpl %ecx,%ebx
	setg -112(%ebp)
	cmpl $0,-112(%ebp)
	je __507
	jne __505
__505:
	movl -4(%ebp),%ecx
	movl %ecx,-116(%ebp)
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-120(%ebp)
	movl -120(%ebp),%ecx
	movl -116(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-124(%ebp)
	movl -124(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __506
__507:
	movl -4(%ebp),%ecx
	movl %ecx,-128(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-132(%ebp)
	movl -132(%ebp),%ecx
	movl -128(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-136(%ebp)
	movl -136(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __508
__506:
	jmp __509
__508:
	jmp __509
__509:
	jmp __501
__494:
	jmp __510
__503:
	jmp __510
__510:
	jmp __488
__490:
	movl -4(%ebp),%ecx
	movl %ecx,-140(%ebp)
	movl -140(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
