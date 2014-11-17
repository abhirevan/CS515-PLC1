	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __327
__327:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-8(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __328
__328:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-12(%ebp)
	jmp __329
__329:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-20(%ebp)
	cmpl $0,-20(%ebp)
	je __330
	jne __331
__331:
	jmp __332
__332:
	jmp __333
__333:
	jmp __329
__330:
	movl -4(%ebp),%ecx
	movl %ecx,-24(%ebp)
	movl -24(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
