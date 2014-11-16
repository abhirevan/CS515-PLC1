	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__679
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
# BB#1:                                 # %__678
	movl	$1, %eax
	movl	-32(%ebp), %ecx
	movl	-36(%ebp), %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	andl	%edx, %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -32(%ebp)
# BB#2:                                 # %__677
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
# BB#3:                                 # %__676
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
# BB#4:                                 # %__675
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
# BB#5:                                 # %__674
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
# BB#6:                                 # %__673
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
# BB#7:                                 # %__672
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
# BB#8:                                 # %__660
	xorl	%eax, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
	movl	%ecx, -72(%ebp)         # 4-byte Spill
.LBB0_9:                                # %__661
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
	movl	-72(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-16(%ebp), %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_20
# BB#10:                                # %__663
                                        #   in Loop: Header=BB0_9 Depth=1
	xorl	%eax, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
	movl	%ecx, -76(%ebp)         # 4-byte Spill
.LBB0_11:                               # %__664
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
	je	.LBB0_19
# BB#12:                                # %__671
                                        #   in Loop: Header=BB0_11 Depth=2
	movl	-32(%ebp), %eax
	movl	-36(%ebp), %ecx
	movl	-76(%ebp), %edx         # 4-byte Reload
	movb	(%edx), %bl
	shlb	$2, %bl
	movl	%ecx, -80(%ebp)         # 4-byte Spill
	movb	%bl, %cl
	movl	-80(%ebp), %esi         # 4-byte Reload
	shll	%cl, %esi
	andl	%esi, %eax
	movb	%bl, %cl
	sarl	%cl, %eax
	movl	%esp, %esi
	movl	%esi, %edi
	addl	$-16, %edi
	movl	%edi, %esp
	movl	%eax, -16(%esi)
	movl	-32(%ebp), %eax
	movl	-36(%ebp), %esi
	movl	(%edx), %ecx
	leal	4(,%ecx,4), %ecx
	movb	%cl, %bl
	movb	%bl, %cl
	shll	%cl, %esi
	andl	%esi, %eax
	movb	%bl, %cl
	sarl	%cl, %eax
	movl	%esp, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	movl	%eax, (%esi)
	movl	%edi, -84(%ebp)         # 4-byte Spill
	movl	%esi, -88(%ebp)         # 4-byte Spill
# BB#13:                                # %__670
                                        #   in Loop: Header=BB0_11 Depth=2
	movl	-84(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	movl	-88(%ebp), %edx         # 4-byte Reload
	cmpl	(%edx), %ecx
	setg	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_17
# BB#14:                                # %__668
                                        #   in Loop: Header=BB0_11 Depth=2
	movl	-88(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	movl	%ecx, (%edx)
	movl	%edx, -92(%ebp)         # 4-byte Spill
# BB#15:                                # %__667
                                        #   in Loop: Header=BB0_11 Depth=2
	movl	$1, %eax
	movl	$4, %ecx
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %esi
	movl	%ecx, %edi
	addl	$0, %edi
	movl	-76(%ebp), %ebx         # 4-byte Reload
	movl	(%ebx), %ebx
	movl	%eax, -96(%ebp)         # 4-byte Spill
	addl	$0, %eax
	addl	%eax, %ebx
	imull	%ebx, %edi
	movl	%ecx, -100(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-84(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %esi
	movl	-100(%ebp), %edi        # 4-byte Reload
	addl	$0, %edi
	movl	-76(%ebp), %ebx         # 4-byte Reload
	movl	(%ebx), %eax
	movl	-96(%ebp), %ecx         # 4-byte Reload
	addl	$0, %ecx
	addl	%ecx, %eax
	imull	%eax, %edi
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -32(%ebp)
# BB#16:                                # %__666
                                        #   in Loop: Header=BB0_11 Depth=2
	movl	$4, %eax
	movl	-32(%ebp), %ecx
	movl	-36(%ebp), %edx
	movl	%eax, %esi
	addl	$0, %esi
	movl	-76(%ebp), %edi         # 4-byte Reload
	imull	(%edi), %esi
	movl	%ecx, -104(%ebp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-104(%ebp), %esi        # 4-byte Reload
	andl	%edx, %esi
	movl	-92(%ebp), %edx         # 4-byte Reload
	movl	(%edx), %ebx
	addl	$0, %eax
	imull	(%edi), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %ebx
	addl	%ebx, %esi
	movl	%esi, -32(%ebp)
	jmp	.LBB0_18
.LBB0_17:                               # %__669
                                        #   in Loop: Header=BB0_11 Depth=2
	jmp	.LBB0_18
.LBB0_18:                               # %__665
                                        #   in Loop: Header=BB0_11 Depth=2
	movl	$1, %eax
	movl	-76(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
	jmp	.LBB0_11
.LBB0_19:                               # %__662
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$1, %eax
	movl	-72(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
	jmp	.LBB0_9
.LBB0_20:                               # %__651
	xorl	%eax, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
	movl	%ecx, -108(%ebp)        # 4-byte Spill
.LBB0_21:                               # %__652
                                        # =>This Inner Loop Header: Depth=1
	movl	-108(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-16(%ebp), %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_29
# BB#22:                                # %__659
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	-32(%ebp), %eax
	movl	-36(%ebp), %ecx
	movl	-108(%ebp), %edx        # 4-byte Reload
	movb	(%edx), %bl
	shlb	$2, %bl
	movl	%ecx, -112(%ebp)        # 4-byte Spill
	movb	%bl, %cl
	movl	-112(%ebp), %esi        # 4-byte Reload
	shll	%cl, %esi
	andl	%esi, %eax
	movb	%bl, %cl
	sarl	%cl, %eax
	movl	%esp, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	movl	%eax, (%esi)
	movl	%esi, -116(%ebp)        # 4-byte Spill
# BB#23:                                # %__658
                                        #   in Loop: Header=BB0_21 Depth=1
	cmpl	$0, -40(%ebp)
	je	.LBB0_27
# BB#24:                                # %__656
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	-116(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-44(%ebp), %ecx
	setge	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_26
# BB#25:                                # %__654
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	-116(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	movl	%ecx, -44(%ebp)
	jmp	.LBB0_28
.LBB0_26:                               # %__655
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -40(%ebp)
	jmp	.LBB0_28
.LBB0_27:                               # %__657
                                        #   in Loop: Header=BB0_21 Depth=1
	jmp	.LBB0_28
.LBB0_28:                               # %__653
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	$1, %eax
	movl	-108(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
	jmp	.LBB0_21
.LBB0_29:                               # %__650
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
