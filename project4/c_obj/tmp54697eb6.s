	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __724
__724:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-12(%ebp)
	movl -12(%ebp),%ecx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-16(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __725
__725:
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-28(%ebp)
	movl -28(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl -20(%ebp),%ecx
	movl %ecx,-32(%ebp)
	movl -32(%ebp),%ecx
	movl %ecx,-24(%ebp)
	jmp __726
__726:
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-44(%ebp)
	movl -44(%ebp),%ecx
	movl %ecx,-36(%ebp)
	movl -36(%ebp),%ecx
	movl %ecx,-48(%ebp)
	movl -48(%ebp),%ecx
	movl %ecx,-40(%ebp)
	jmp __727
__727:
	movl $6,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-60(%ebp)
	movl -60(%ebp),%ecx
	movl %ecx,-52(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-64(%ebp)
	movl -64(%ebp),%ecx
	movl %ecx,-56(%ebp)
	jmp __728
__728:
	movl $8,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-76(%ebp)
	movl -76(%ebp),%ecx
	movl %ecx,-68(%ebp)
	movl -68(%ebp),%ecx
	movl %ecx,-80(%ebp)
	movl -80(%ebp),%ecx
	movl %ecx,-72(%ebp)
	jmp __729
__729:
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-92(%ebp)
	movl -92(%ebp),%ecx
	movl %ecx,-84(%ebp)
	movl -84(%ebp),%ecx
	movl %ecx,-96(%ebp)
	movl -96(%ebp),%ecx
	movl %ecx,-88(%ebp)
	jmp __730
__730:
	movl $5,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-108(%ebp)
	movl -108(%ebp),%ecx
	movl %ecx,-100(%ebp)
	movl -100(%ebp),%ecx
	movl %ecx,-112(%ebp)
	movl -112(%ebp),%ecx
	movl %ecx,-104(%ebp)
	jmp __731
__731:
	movl $7,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-124(%ebp)
	movl -124(%ebp),%ecx
	movl %ecx,-116(%ebp)
	movl -116(%ebp),%ecx
	movl %ecx,-128(%ebp)
	movl -128(%ebp),%ecx
	movl %ecx,-120(%ebp)
	jmp __732
__732:
	movl $9,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-140(%ebp)
	movl -140(%ebp),%ecx
	movl %ecx,-132(%ebp)
	movl -132(%ebp),%ecx
	movl %ecx,-144(%ebp)
	movl -144(%ebp),%ecx
	movl %ecx,-136(%ebp)
	jmp __733
__733:
	movl -8(%ebp),%ecx
	movl %ecx,-148(%ebp)
	movl -148(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
