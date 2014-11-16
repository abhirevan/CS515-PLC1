	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__854
	pushl	%ebp
.Ltmp3:
	.cfi_def_cfa_offset 8
.Ltmp4:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
.Ltmp5:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$108, %esp
.Ltmp6:
	.cfi_offset %esi, -20
.Ltmp7:
	.cfi_offset %edi, -16
.Ltmp8:
	.cfi_offset %ebx, -12
	movl	$1, %eax
	movl	$15, %ecx
	movl	$0, %edx
	movl	$7, %esi
	addl	$0, %esi
	movl	%esi, -16(%ebp)
	movl	%edx, %esi
	addl	$0, %esi
	movl	%esi, -20(%ebp)
	movl	%edx, %esi
	addl	$0, %esi
	movl	%esi, -24(%ebp)
	movl	%edx, %esi
	addl	$0, %esi
	movl	%esi, -28(%ebp)
	addl	$0, %edx
	movl	%edx, -32(%ebp)
	addl	$0, %ecx
	movl	%ecx, -36(%ebp)
	movl	%eax, %ecx
	addl	$0, %ecx
	movl	%ecx, -40(%ebp)
	addl	$0, %eax
	imull	$4294967295, %eax, %eax # imm = 0xFFFFFFFF
	movl	%eax, -44(%ebp)
# BB#1:                                 # %__855
	movl	$1, %eax
	movl	-32(%ebp), %ecx
	movl	-36(%ebp), %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	andl	%edx, %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -32(%ebp)
# BB#2:                                 # %__856
	movl	$4, %eax
	movl	$6, %ecx
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -48(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-48(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -32(%ebp)
# BB#3:                                 # %__857
	movl	$8, %eax
	movl	$9, %ecx
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -52(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-52(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -32(%ebp)
# BB#4:                                 # %__858
	movl	$12, %eax
	movl	$7, %ecx
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -56(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-56(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -32(%ebp)
# BB#5:                                 # %__859
	movl	$16, %eax
	movl	$0, %ecx
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -60(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-60(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -32(%ebp)
# BB#6:                                 # %__860
	movl	$20, %eax
	movl	$4, %ecx
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -64(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-64(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -32(%ebp)
# BB#7:                                 # %__861
	movl	$24, %eax
	movl	$5, %ecx
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -68(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-68(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -32(%ebp)
# BB#8:                                 # %__862
	movl	$0, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -72(%ebp)         # 4-byte Spill
.LBB0_9:                                # %__863
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	movl	-72(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-16(%ebp), %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_22
# BB#10:                                # %__865
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$1, %eax
	movl	-72(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
# BB#11:                                # %__866
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$0, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -76(%ebp)         # 4-byte Spill
.LBB0_12:                               # %__867
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	-76(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-16(%ebp), %esi
	addl	$0, %eax
	subl	%eax, %esi
	cmpl	%esi, %edx
	setl	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	cmpl	$0, %eax
	je	.LBB0_21
# BB#13:                                # %__869
                                        #   in Loop: Header=BB0_12 Depth=2
	movl	$1, %eax
	movl	-76(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
# BB#14:                                # %__870
                                        #   in Loop: Header=BB0_12 Depth=2
	movl	$1, %eax
	movl	$4, %ecx
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	movl	%esp, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	movl	-32(%ebp), %edi
	movl	-36(%ebp), %ebx
	movl	%eax, -80(%ebp)         # 4-byte Spill
	movl	%ecx, %eax
	addl	$0, %eax
	movl	%ecx, -84(%ebp)         # 4-byte Spill
	movl	-76(%ebp), %ecx         # 4-byte Reload
	imull	(%ecx), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %ebx
	andl	%ebx, %edi
	movl	-84(%ebp), %eax         # 4-byte Reload
	addl	$0, %eax
	movl	-76(%ebp), %ebx         # 4-byte Reload
	imull	(%ebx), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edi
	movl	%edi, (%edx)
	movl	-32(%ebp), %eax
	movl	-36(%ebp), %edi
	movl	-84(%ebp), %ecx         # 4-byte Reload
	addl	$0, %ecx
	movl	(%ebx), %ebx
	movl	%eax, -88(%ebp)         # 4-byte Spill
	movl	-80(%ebp), %eax         # 4-byte Reload
	addl	$0, %eax
	addl	%eax, %ebx
	imull	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	movl	-88(%ebp), %eax         # 4-byte Reload
	andl	%edi, %eax
	movl	-84(%ebp), %edi         # 4-byte Reload
	addl	$0, %edi
	movl	-76(%ebp), %ebx         # 4-byte Reload
	movl	(%ebx), %ecx
	movl	-80(%ebp), %ebx         # 4-byte Reload
	addl	$0, %ebx
	addl	%ebx, %ecx
	imull	%ecx, %edi
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movl	%eax, (%esi)
	movl	%esi, -92(%ebp)         # 4-byte Spill
	movl	%edx, -96(%ebp)         # 4-byte Spill
# BB#15:                                # %__871
                                        #   in Loop: Header=BB0_12 Depth=2
	movl	-96(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	movl	-92(%ebp), %edx         # 4-byte Reload
	cmpl	(%edx), %ecx
	setg	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_20
# BB#16:                                # %__873
                                        #   in Loop: Header=BB0_12 Depth=2
	movl	%esp, %eax
	addl	$-16, %eax
	movl	%eax, %esp
	movl	-92(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	%edx, (%eax)
	movl	%eax, -100(%ebp)        # 4-byte Spill
# BB#17:                                # %__874
                                        #   in Loop: Header=BB0_12 Depth=2
	movl	$1, %eax
	movl	$4, %ecx
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %esi
	movl	%ecx, %edi
	addl	$0, %edi
	movl	-76(%ebp), %ebx         # 4-byte Reload
	movl	(%ebx), %ebx
	movl	%eax, -104(%ebp)        # 4-byte Spill
	addl	$0, %eax
	addl	%eax, %ebx
	imull	%ebx, %edi
	movl	%ecx, -108(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-96(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %esi
	movl	-108(%ebp), %edi        # 4-byte Reload
	addl	$0, %edi
	movl	-76(%ebp), %ebx         # 4-byte Reload
	movl	(%ebx), %eax
	movl	-104(%ebp), %ecx        # 4-byte Reload
	addl	$0, %ecx
	addl	%ecx, %eax
	imull	%eax, %edi
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -32(%ebp)
# BB#18:                                # %__875
                                        #   in Loop: Header=BB0_12 Depth=2
	movl	$4, %eax
	movl	-32(%ebp), %ecx
	movl	-36(%ebp), %edx
	movl	%eax, %esi
	addl	$0, %esi
	movl	-76(%ebp), %edi         # 4-byte Reload
	imull	(%edi), %esi
	movl	%ecx, -112(%ebp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-112(%ebp), %esi        # 4-byte Reload
	andl	%edx, %esi
	movl	-100(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %ebx
	addl	$0, %eax
	imull	(%edi), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %ebx
	addl	%ebx, %esi
	movl	%esi, -32(%ebp)
# BB#19:                                # %__876
                                        #   in Loop: Header=BB0_12 Depth=2
	jmp	.LBB0_20
.LBB0_20:                               # %__872
                                        #   in Loop: Header=BB0_12 Depth=2
	jmp	.LBB0_12
.LBB0_21:                               # %__868
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_9
.LBB0_22:                               # %__864
	movl	$0, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -116(%ebp)        # 4-byte Spill
.LBB0_23:                               # %__877
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-16(%ebp), %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_34
# BB#24:                                # %__879
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	$1, %eax
	movl	-116(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
# BB#25:                                # %__880
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	$4, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	-116(%ebp), %ebx        # 4-byte Reload
	imull	(%ebx), %edi
	movl	%ecx, -120(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	andl	%esi, %edx
	addl	$0, %eax
	imull	(%ebx), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-120(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
# BB#26:                                # %__881
                                        #   in Loop: Header=BB0_23 Depth=1
	cmpl	$0, -40(%ebp)
	je	.LBB0_33
# BB#27:                                # %__883
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	-120(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-44(%ebp), %ecx
	setge	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_29
# BB#28:                                # %__885
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	-120(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	movl	%ecx, -44(%ebp)
	jmp	.LBB0_30
.LBB0_29:                               # %__887
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -40(%ebp)
	jmp	.LBB0_31
.LBB0_30:                               # %__886
                                        #   in Loop: Header=BB0_23 Depth=1
	jmp	.LBB0_32
.LBB0_31:                               # %__888
                                        #   in Loop: Header=BB0_23 Depth=1
	jmp	.LBB0_32
.LBB0_32:                               # %__889
                                        #   in Loop: Header=BB0_23 Depth=1
	jmp	.LBB0_33
.LBB0_33:                               # %__882
                                        #   in Loop: Header=BB0_23 Depth=1
	jmp	.LBB0_23
.LBB0_34:                               # %__878
	movl	-40(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	ret
.Ltmp9:
	.size	program, .Ltmp9-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
