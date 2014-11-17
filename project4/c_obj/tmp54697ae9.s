	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __205
__205:
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-8(%ebp)
	movl -8(%ebp),%ecx
	movl -4(%ebp),%eax
	jmp __206
__206:
	movl -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -12(%ebp),%ebx
	movl -16(%ebp),%ecx
	movl $0,-20(%ebp)
	cmpl %ecx,%ebx
	setle -20(%ebp)
	cmpl $0,-20(%ebp)
	je __207
	jne __208
__208:
	jmp __209
__209:
	movl -4(%ebp),%ecx
	movl %ecx,-24(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-28(%ebp)
	movl -28(%ebp),%ecx
	movl -24(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-32(%ebp)
	movl -32(%ebp),%ecx
	movl -4(%ebp),%eax
	jmp __210
__210:
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
	setg -44(%ebp)
	cmpl $0,-44(%ebp)
	je __211
	jne __212
__212:
	movl -4(%ebp),%ecx
	movl %ecx,-48(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-52(%ebp)
	movl -52(%ebp),%ecx
	movl -48(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-56(%ebp)
	movl -56(%ebp),%ecx
	movl -4(%ebp),%eax
	jmp __213
__213:
	jmp __211
__211:
	jmp __207
__207:
	movl -4(%ebp),%ecx
	movl %ecx,-60(%ebp)
	movl -60(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
