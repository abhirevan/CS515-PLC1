	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __214
__214:
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-8(%ebp)
	movl -8(%ebp),%ecx
	movl -4(%ebp),%eax
	jmp __215
__215:
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
	je __216
	jne __217
__217:
	movl -4(%ebp),%ecx
	movl %ecx,-28(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-32(%ebp)
	movl -32(%ebp),%ecx
	movl -28(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-36(%ebp)
	movl -36(%ebp),%ecx
	movl -24(%ebp),%eax
	jmp __218
__218:
	movl -24(%ebp),%ecx
	movl %ecx,-40(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-44(%ebp)
	movl -40(%ebp),%ebx
	movl -44(%ebp),%ecx
	movl $0,-48(%ebp)
	cmpl %ecx,%ebx
	setg -48(%ebp)
	cmpl $0,-48(%ebp)
	je __222
	jne __220
__220:
	movl -24(%ebp),%ecx
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
	movl -24(%ebp),%eax
	jmp __221
__222:
	movl -24(%ebp),%ecx
	movl %ecx,-64(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-68(%ebp)
	movl -68(%ebp),%ecx
	movl -64(%ebp),%eax
	subl %ecx,%eax
	movl %eax,-72(%ebp)
	movl -72(%ebp),%ecx
	movl -24(%ebp),%eax
	jmp __223
__221:
	jmp __224
__223:
	jmp __224
__224:
	jmp __216
__216:
	movl -4(%ebp),%ecx
	movl %ecx,-76(%ebp)
	movl -76(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
