	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __169
__169:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-12(%ebp)
	movl -12(%ebp),%ecx
	movl %ecx,-4(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __170
__170:
	movl -4(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-24(%ebp)
	movl -20(%ebp),%ebx
	movl -24(%ebp),%ecx
	movl $0,-28(%ebp)
	cmpl %ecx,%ebx
	sete -28(%ebp)
	cmpl $0,-28(%ebp)
	je __179
	jne __172
__172:
	movl -8(%ebp),%ecx
	movl %ecx,-32(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-36(%ebp)
	movl -32(%ebp),%ebx
	movl -36(%ebp),%ecx
	movl $0,-40(%ebp)
	cmpl %ecx,%ebx
	sete -40(%ebp)
	cmpl $0,-40(%ebp)
	je __176
	jne __174
__174:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-44(%ebp)
	movl -44(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __175
__176:
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-48(%ebp)
	movl -48(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __177
__175:
	jmp __178
__177:
	jmp __178
__179:
	movl -8(%ebp),%ecx
	movl %ecx,-52(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-56(%ebp)
	movl -52(%ebp),%ebx
	movl -56(%ebp),%ecx
	movl $0,-60(%ebp)
	cmpl %ecx,%ebx
	sete -60(%ebp)
	cmpl $0,-60(%ebp)
	je __183
	jne __181
__181:
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-64(%ebp)
	movl -64(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __182
__183:
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-68(%ebp)
	movl -68(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __184
__182:
	jmp __185
__184:
	jmp __185
__178:
	jmp __186
__185:
	jmp __186
__186:
	movl -4(%ebp),%ecx
	movl %ecx,-72(%ebp)
	movl -72(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
