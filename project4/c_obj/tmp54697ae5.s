	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __133
__133:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-12(%ebp)
	movl -12(%ebp),%ecx
	movl -4(%ebp),%eax
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -16(%ebp),%ecx
	movl -8(%ebp),%eax
	jmp __134
__134:
	movl -4(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-24(%ebp)
	movl -20(%ebp),%ebx
	movl -24(%ebp),%ecx
	movl $0,-28(%ebp)
	cmpl %ecx,%ebx
	sete -28(%ebp)
	cmpl $0,-28(%ebp)
	je __143
	jne __136
__136:
	movl -8(%ebp),%ecx
	movl %ecx,-32(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-36(%ebp)
	movl -32(%ebp),%ebx
	movl -36(%ebp),%ecx
	movl $0,-40(%ebp)
	cmpl %ecx,%ebx
	sete -40(%ebp)
	cmpl $0,-40(%ebp)
	je __140
	jne __138
__138:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-44(%ebp)
	movl -44(%ebp),%ecx
	movl -4(%ebp),%eax
	jmp __139
__140:
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-48(%ebp)
	movl -48(%ebp),%ecx
	movl -4(%ebp),%eax
	jmp __141
__139:
	jmp __142
__141:
	jmp __142
__143:
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
	je __147
	jne __145
__145:
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-64(%ebp)
	movl -64(%ebp),%ecx
	movl -4(%ebp),%eax
	jmp __146
__147:
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-68(%ebp)
	movl -68(%ebp),%ecx
	movl -4(%ebp),%eax
	jmp __148
__146:
	jmp __149
__148:
	jmp __149
__142:
	jmp __150
__149:
	jmp __150
__150:
	movl -4(%ebp),%ecx
	movl %ecx,-72(%ebp)
	movl -72(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
