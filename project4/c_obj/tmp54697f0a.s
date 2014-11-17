	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __463
__463:
	movl $10,%ecx
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
	jmp __464
__464:
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
	je __466
	jne __465
__465:
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
	je __477
	jne __468
__468:
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
	je __470
	jne __469
__469:
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
	je __474
	jne __472
__472:
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
	jmp __473
__474:
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
	jmp __475
__473:
	jmp __476
__475:
	jmp __476
__476:
	jmp __468
__477:
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
	je __479
	jne __478
__478:
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
	je __483
	jne __481
__481:
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
	jmp __482
__483:
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
	jmp __484
__482:
	jmp __485
__484:
	jmp __485
__485:
	jmp __477
__470:
	jmp __486
__479:
	jmp __486
__486:
	jmp __464
__466:
	movl -4(%ebp),%ecx
	movl %ecx,-140(%ebp)
	movl -140(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
