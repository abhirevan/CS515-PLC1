	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__816
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
	subl	$156, %esp
.Ltmp6:
	.cfi_offset %esi, -20
.Ltmp7:
	.cfi_offset %edi, -16
.Ltmp8:
	.cfi_offset %ebx, -12
	movl	$1, %eax
	movl	$15, %ecx
	movl	$7, %edx
	movl	$0, %esi
	addl	$0, %esi
	movl	%esi, -16(%ebp)
	addl	$0, %edx
	movl	%edx, -20(%ebp)
	addl	$0, %ecx
	movl	%ecx, -24(%ebp)
	movl	%eax, %ecx
	addl	$0, %ecx
	movl	%ecx, -28(%ebp)
	addl	$0, %eax
	imull	$4294967295, %eax, %eax # imm = 0xFFFFFFFF
	movl	%eax, -32(%ebp)
# BB#1:                                 # %__815
	movl	$1, %eax
	movl	-16(%ebp), %ecx
	movl	-24(%ebp), %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	andl	%edx, %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -16(%ebp)
# BB#2:                                 # %__814
	movl	$4, %eax
	movl	$6, %ecx
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -36(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-36(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -16(%ebp)
# BB#3:                                 # %__813
	movl	$8, %eax
	movl	$9, %ecx
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -40(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-40(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -16(%ebp)
# BB#4:                                 # %__812
	movl	$12, %eax
	movl	$7, %ecx
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -44(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-44(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -16(%ebp)
# BB#5:                                 # %__811
	movl	$16, %eax
	movl	$0, %ecx
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
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
	movl	%edx, -16(%ebp)
# BB#6:                                 # %__810
	movl	$20, %eax
	movl	$4, %ecx
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
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
	movl	%edx, -16(%ebp)
# BB#7:                                 # %__809
	movl	$24, %eax
	movl	$5, %ecx
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
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
	movl	%edx, -16(%ebp)
# BB#8:                                 # %__808
	movl	-16(%ebp), %eax
	movl	%esp, %ecx
	movl	%ecx, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	movl	%eax, -16(%ecx)
	movl	-20(%ebp), %eax
	movl	%esp, %ecx
	movl	%ecx, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	movl	%eax, -16(%ecx)
	movl	%esp, %eax
	movl	%eax, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	$0, -16(%eax)
	movl	%esp, %eax
	movl	%eax, %edi
	addl	$-16, %edi
	movl	%edi, %esp
	movl	$0, -16(%eax)
	movl	$15, %eax
	movl	%esp, %edi
	addl	$-16, %edi
	movl	%edi, %esp
	movl	%eax, (%edi)
	movl	%edx, -60(%ebp)         # 4-byte Spill
	movl	%esi, -64(%ebp)         # 4-byte Spill
	movl	%ecx, -68(%ebp)         # 4-byte Spill
	movl	%edi, -72(%ebp)         # 4-byte Spill
# BB#9:                                 # %__807
	movl	$1, %eax
	movl	-64(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-68(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#10:                                # %__786
	jmp	.LBB0_11
.LBB0_11:                               # %__787
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
	movl	$0, %eax
	movl	-68(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	cmpl	%eax, %edx
	setge	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	cmpl	$0, %eax
	je	.LBB0_31
# BB#12:                                # %__806
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	-68(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	movl	%esp, %edx
	movl	%edx, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	movl	%ecx, -16(%edx)
	movl	-64(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	decl	%edx
	movl	%esp, %edi
	movl	%edi, %ebx
	addl	$-16, %ebx
	movl	%ebx, %esp
	movl	%edx, -16(%edi)
	movl	%esp, %edx
	movl	%edx, %edi
	addl	$-16, %edi
	movl	%edi, %esp
	movl	$0, -16(%edx)
	movl	%esp, %edx
	movl	%edx, %eax
	addl	$-16, %eax
	movl	%eax, %esp
	movl	$0, -16(%edx)
	movl	%esp, %edx
	movl	%edx, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	$0, -16(%edx)
	movl	%esp, %edx
	movl	%eax, -76(%ebp)         # 4-byte Spill
	movl	%edx, %eax
	addl	$-16, %eax
	movl	%eax, %esp
	movl	$0, -16(%edx)
	xorl	%edx, %edx
	movl	%eax, -80(%ebp)         # 4-byte Spill
	movl	%esp, %eax
	addl	$-16, %eax
	movl	%eax, %esp
	movl	%edx, (%eax)
	movl	%eax, -84(%ebp)         # 4-byte Spill
	movl	%esi, -88(%ebp)         # 4-byte Spill
	movl	%ecx, -92(%ebp)         # 4-byte Spill
	movl	%ebx, -96(%ebp)         # 4-byte Spill
	movl	%edi, -100(%ebp)        # 4-byte Spill
# BB#13:                                # %__805
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	-100(%ebp), %ecx        # 4-byte Reload
	movl	%eax, (%ecx)
.LBB0_14:                               # %__789
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %eax
	movl	-88(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	imull	%eax, %edx
	movl	-96(%ebp), %eax         # 4-byte Reload
	cmpl	(%eax), %edx
	setle	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	movl	-100(%ebp), %esi        # 4-byte Reload
	cmpl	$0, (%esi)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edi
	andl	%edi, %edx
	cmpl	$0, %edx
	je	.LBB0_30
# BB#15:                                # %__804
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_16
.LBB0_16:                               # %__803
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$2, %eax
	movl	-88(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	imull	%eax, %edx
	movl	-96(%ebp), %eax         # 4-byte Reload
	cmpl	(%eax), %edx
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	cmpl	$0, %edx
	je	.LBB0_18
# BB#17:                                # %__799
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$2, %eax
	movl	-88(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	imull	%eax, %edx
	movl	-76(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
	jmp	.LBB0_21
.LBB0_18:                               # %__802
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$1, %eax
	movl	$2, %ecx
	movl	$4, %edx
	movl	-60(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	-72(%ebp), %ebx         # 4-byte Reload
	movl	(%ebx), %esi
	movl	%edx, %ebx
	addl	$0, %ebx
	movl	%eax, -104(%ebp)        # 4-byte Spill
	movl	-88(%ebp), %eax         # 4-byte Reload
	imull	(%eax), %ebx
	movl	%ecx, %eax
	addl	$0, %eax
	imull	%eax, %ebx
	movl	%ecx, -108(%ebp)        # 4-byte Spill
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	andl	%esi, %edi
	movl	%edx, %eax
	addl	$0, %eax
	movl	-88(%ebp), %esi         # 4-byte Reload
	imull	(%esi), %eax
	movl	-108(%ebp), %ebx        # 4-byte Reload
	addl	$0, %ebx
	imull	%ebx, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edi
	movl	-60(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ebx
	movl	-72(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %eax
	movl	%edx, %ecx
	addl	$0, %ecx
	movl	(%esi), %esi
	movl	%eax, -112(%ebp)        # 4-byte Spill
	movl	-108(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	imull	%eax, %esi
	movl	-104(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	addl	%eax, %esi
	imull	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-112(%ebp), %eax        # 4-byte Reload
	shll	%cl, %eax
	andl	%eax, %ebx
	addl	$0, %edx
	movl	-88(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %esi
	movl	-108(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	imull	%eax, %esi
	movl	-104(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	addl	%eax, %esi
	imull	%esi, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %ebx
	cmpl	%ebx, %edi
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_20
# BB#19:                                # %__800
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$2, %eax
	movl	-88(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	imull	%eax, %edx
	movl	-76(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
	jmp	.LBB0_21
.LBB0_20:                               # %__801
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$1, %eax
	movl	$2, %ecx
	movl	-88(%ebp), %edx         # 4-byte Reload
	movl	(%edx), %esi
	addl	$0, %ecx
	imull	%ecx, %esi
	addl	$0, %eax
	addl	%eax, %esi
	movl	-76(%ebp), %eax         # 4-byte Reload
	movl	%esi, (%eax)
.LBB0_21:                               # %__798
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$4, %eax
	movl	-60(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-72(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	movl	-88(%ebp), %ecx         # 4-byte Reload
	imull	(%ecx), %ebx
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	andl	%edi, %edx
	addl	$0, %eax
	movl	-88(%ebp), %edi         # 4-byte Reload
	imull	(%edi), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-80(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#22:                                # %__797
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$4, %eax
	movl	-60(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-72(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	movl	-76(%ebp), %ecx         # 4-byte Reload
	imull	(%ecx), %ebx
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	andl	%edi, %edx
	addl	$0, %eax
	movl	-76(%ebp), %edi         # 4-byte Reload
	imull	(%edi), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-84(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#23:                                # %__796
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	-80(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	movl	-84(%ebp), %edx         # 4-byte Reload
	cmpl	(%edx), %ecx
	setl	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_29
# BB#24:                                # %__794
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_25
.LBB0_25:                               # %__793
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	-80(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	movl	-92(%ebp), %edx         # 4-byte Reload
	movl	%ecx, (%edx)
# BB#26:                                # %__792
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$4, %eax
	movl	-60(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-72(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	movl	-88(%ebp), %ecx         # 4-byte Reload
	imull	(%ecx), %ebx
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	xorl	$4294967295, %edi       # imm = 0xFFFFFFFF
	andl	%edi, %edx
	movl	-84(%ebp), %edi         # 4-byte Reload
	movl	(%edi), %ebx
	addl	$0, %eax
	movl	-88(%ebp), %ecx         # 4-byte Reload
	imull	(%ecx), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %ebx
	addl	%ebx, %edx
	movl	-60(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#27:                                # %__791
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$4, %eax
	movl	-60(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-72(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	movl	-76(%ebp), %ecx         # 4-byte Reload
	imull	(%ecx), %ebx
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	xorl	$4294967295, %edi       # imm = 0xFFFFFFFF
	andl	%edi, %edx
	movl	-92(%ebp), %edi         # 4-byte Reload
	movl	(%edi), %ebx
	addl	$0, %eax
	movl	-76(%ebp), %ecx         # 4-byte Reload
	imull	(%ecx), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %ebx
	addl	%ebx, %edx
	movl	-60(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#28:                                # %__790
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	-76(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	movl	-88(%ebp), %edx         # 4-byte Reload
	movl	%ecx, (%edx)
	jmp	.LBB0_14
.LBB0_29:                               # %__795
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$1, %eax
	addl	$0, %eax
	movl	-100(%ebp), %ecx        # 4-byte Reload
	movl	%eax, (%ecx)
	jmp	.LBB0_14
.LBB0_30:                               # %__788
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	$1, %eax
	movl	-68(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
	jmp	.LBB0_11
.LBB0_31:                               # %__785
	movl	$1, %eax
	movl	-64(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	-68(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#32:                                # %__761
	jmp	.LBB0_33
.LBB0_33:                               # %__762
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_39 Depth 2
	movl	$1, %eax
	movl	-68(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	cmpl	%eax, %edx
	setge	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	cmpl	$0, %eax
	je	.LBB0_56
# BB#34:                                # %__784
                                        #   in Loop: Header=BB0_33 Depth=1
	movl	%esp, %eax
	movl	%eax, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	$0, -16(%eax)
	movl	-68(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %edx
	decl	%edx
	movl	%esp, %esi
	movl	%esi, %edi
	addl	$-16, %edi
	movl	%edi, %esp
	movl	%edx, -16(%esi)
	movl	%esp, %edx
	movl	%edx, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	movl	$0, -16(%edx)
	movl	%esp, %edx
	movl	%edx, %ebx
	addl	$-16, %ebx
	movl	%ebx, %esp
	movl	$0, -16(%edx)
	movl	%esp, %edx
	movl	%edx, %eax
	addl	$-16, %eax
	movl	%eax, %esp
	movl	$0, -16(%edx)
	movl	%esp, %edx
	movl	%eax, -116(%ebp)        # 4-byte Spill
	movl	%edx, %eax
	addl	$-16, %eax
	movl	%eax, %esp
	movl	$0, -16(%edx)
	xorl	%edx, %edx
	movl	%eax, -120(%ebp)        # 4-byte Spill
	movl	%esp, %eax
	addl	$-16, %eax
	movl	%eax, %esp
	movl	%edx, (%eax)
	movl	%ecx, -124(%ebp)        # 4-byte Spill
	movl	%eax, -128(%ebp)        # 4-byte Spill
	movl	%edi, -132(%ebp)        # 4-byte Spill
	movl	%esi, -136(%ebp)        # 4-byte Spill
	movl	%ebx, -140(%ebp)        # 4-byte Spill
# BB#35:                                # %__783
                                        #   in Loop: Header=BB0_33 Depth=1
	movl	-60(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	movl	-72(%ebp), %edx         # 4-byte Reload
	andl	(%edx), %ecx
	movl	-116(%ebp), %esi        # 4-byte Reload
	movl	%ecx, (%esi)
# BB#36:                                # %__782
                                        #   in Loop: Header=BB0_33 Depth=1
	movl	$4, %eax
	movl	-60(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-72(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	xorl	$4294967295, %edi       # imm = 0xFFFFFFFF
	andl	%edi, %edx
	movl	(%ecx), %edi
	movl	(%esi), %ebx
	movl	%eax, %ecx
	addl	$0, %ecx
	movl	-68(%ebp), %esi         # 4-byte Reload
	imull	(%esi), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %ebx
	andl	%ebx, %edi
	addl	$0, %eax
	imull	(%esi), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edi
	addl	%edi, %edx
	movl	-60(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#37:                                # %__781
                                        #   in Loop: Header=BB0_33 Depth=1
	movl	$4, %eax
	movl	-60(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-72(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	movl	-68(%ebp), %ecx         # 4-byte Reload
	imull	(%ecx), %ebx
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	xorl	$4294967295, %edi       # imm = 0xFFFFFFFF
	andl	%edi, %edx
	movl	-116(%ebp), %edi        # 4-byte Reload
	movl	(%edi), %ebx
	addl	$0, %eax
	movl	-68(%ebp), %ecx         # 4-byte Reload
	imull	(%ecx), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %ebx
	addl	%ebx, %edx
	movl	-60(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#38:                                # %__780
                                        #   in Loop: Header=BB0_33 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	-136(%ebp), %ecx        # 4-byte Reload
	movl	%eax, (%ecx)
.LBB0_39:                               # %__764
                                        #   Parent Loop BB0_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %eax
	movl	-124(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	imull	%eax, %edx
	movl	-132(%ebp), %eax        # 4-byte Reload
	cmpl	(%eax), %edx
	setle	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	movl	-136(%ebp), %esi        # 4-byte Reload
	cmpl	$0, (%esi)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edi
	andl	%edi, %edx
	cmpl	$0, %edx
	je	.LBB0_55
# BB#40:                                # %__779
                                        #   in Loop: Header=BB0_39 Depth=2
	jmp	.LBB0_41
.LBB0_41:                               # %__778
                                        #   in Loop: Header=BB0_39 Depth=2
	movl	$2, %eax
	movl	-124(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	imull	%eax, %edx
	movl	-132(%ebp), %eax        # 4-byte Reload
	cmpl	(%eax), %edx
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	cmpl	$0, %edx
	je	.LBB0_43
# BB#42:                                # %__774
                                        #   in Loop: Header=BB0_39 Depth=2
	movl	$2, %eax
	movl	-124(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	imull	%eax, %edx
	movl	-140(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
	jmp	.LBB0_46
.LBB0_43:                               # %__777
                                        #   in Loop: Header=BB0_39 Depth=2
	movl	$1, %eax
	movl	$2, %ecx
	movl	$4, %edx
	movl	-60(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	-72(%ebp), %ebx         # 4-byte Reload
	movl	(%ebx), %esi
	movl	%edx, %ebx
	addl	$0, %ebx
	movl	%eax, -144(%ebp)        # 4-byte Spill
	movl	-124(%ebp), %eax        # 4-byte Reload
	imull	(%eax), %ebx
	movl	%ecx, %eax
	addl	$0, %eax
	imull	%eax, %ebx
	movl	%ecx, -148(%ebp)        # 4-byte Spill
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	andl	%esi, %edi
	movl	%edx, %eax
	addl	$0, %eax
	movl	-124(%ebp), %esi        # 4-byte Reload
	imull	(%esi), %eax
	movl	-148(%ebp), %ebx        # 4-byte Reload
	addl	$0, %ebx
	imull	%ebx, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edi
	movl	-60(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ebx
	movl	-72(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %eax
	movl	%edx, %ecx
	addl	$0, %ecx
	movl	(%esi), %esi
	movl	%eax, -152(%ebp)        # 4-byte Spill
	movl	-148(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	imull	%eax, %esi
	movl	-144(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	addl	%eax, %esi
	imull	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-152(%ebp), %eax        # 4-byte Reload
	shll	%cl, %eax
	andl	%eax, %ebx
	addl	$0, %edx
	movl	-124(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %esi
	movl	-148(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	imull	%eax, %esi
	movl	-144(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	addl	%eax, %esi
	imull	%esi, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %ebx
	cmpl	%ebx, %edi
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_45
# BB#44:                                # %__775
                                        #   in Loop: Header=BB0_39 Depth=2
	movl	$2, %eax
	movl	-124(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	imull	%eax, %edx
	movl	-140(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
	jmp	.LBB0_46
.LBB0_45:                               # %__776
                                        #   in Loop: Header=BB0_39 Depth=2
	movl	$1, %eax
	movl	$2, %ecx
	movl	-124(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %esi
	addl	$0, %ecx
	imull	%ecx, %esi
	addl	$0, %eax
	addl	%eax, %esi
	movl	-140(%ebp), %eax        # 4-byte Reload
	movl	%esi, (%eax)
.LBB0_46:                               # %__773
                                        #   in Loop: Header=BB0_39 Depth=2
	movl	$4, %eax
	movl	-60(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-72(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	movl	-124(%ebp), %ecx        # 4-byte Reload
	imull	(%ecx), %ebx
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	andl	%edi, %edx
	addl	$0, %eax
	movl	-124(%ebp), %edi        # 4-byte Reload
	imull	(%edi), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-120(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
# BB#47:                                # %__772
                                        #   in Loop: Header=BB0_39 Depth=2
	movl	$4, %eax
	movl	-60(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-72(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	movl	-140(%ebp), %ecx        # 4-byte Reload
	imull	(%ecx), %ebx
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	andl	%edi, %edx
	addl	$0, %eax
	movl	-140(%ebp), %edi        # 4-byte Reload
	imull	(%edi), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-128(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
# BB#48:                                # %__771
                                        #   in Loop: Header=BB0_39 Depth=2
	movl	-120(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	movl	-128(%ebp), %edx        # 4-byte Reload
	cmpl	(%edx), %ecx
	setl	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_54
# BB#49:                                # %__769
                                        #   in Loop: Header=BB0_39 Depth=2
	jmp	.LBB0_50
.LBB0_50:                               # %__768
                                        #   in Loop: Header=BB0_39 Depth=2
	movl	-120(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	movl	-116(%ebp), %edx        # 4-byte Reload
	movl	%ecx, (%edx)
# BB#51:                                # %__767
                                        #   in Loop: Header=BB0_39 Depth=2
	movl	$4, %eax
	movl	-60(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-72(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	movl	-124(%ebp), %ecx        # 4-byte Reload
	imull	(%ecx), %ebx
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	xorl	$4294967295, %edi       # imm = 0xFFFFFFFF
	andl	%edi, %edx
	movl	-128(%ebp), %edi        # 4-byte Reload
	movl	(%edi), %ebx
	addl	$0, %eax
	movl	-124(%ebp), %ecx        # 4-byte Reload
	imull	(%ecx), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %ebx
	addl	%ebx, %edx
	movl	-60(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#52:                                # %__766
                                        #   in Loop: Header=BB0_39 Depth=2
	movl	$4, %eax
	movl	-60(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-72(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	movl	-140(%ebp), %ecx        # 4-byte Reload
	imull	(%ecx), %ebx
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	xorl	$4294967295, %edi       # imm = 0xFFFFFFFF
	andl	%edi, %edx
	movl	-116(%ebp), %edi        # 4-byte Reload
	movl	(%edi), %ebx
	addl	$0, %eax
	movl	-140(%ebp), %ecx        # 4-byte Reload
	imull	(%ecx), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %ebx
	addl	%ebx, %edx
	movl	-60(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#53:                                # %__765
                                        #   in Loop: Header=BB0_39 Depth=2
	movl	-140(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	movl	-124(%ebp), %edx        # 4-byte Reload
	movl	%ecx, (%edx)
	jmp	.LBB0_39
.LBB0_54:                               # %__770
                                        #   in Loop: Header=BB0_39 Depth=2
	movl	$1, %eax
	addl	$0, %eax
	movl	-136(%ebp), %ecx        # 4-byte Reload
	movl	%eax, (%ecx)
	jmp	.LBB0_39
.LBB0_55:                               # %__763
                                        #   in Loop: Header=BB0_33 Depth=1
	movl	$1, %eax
	movl	-68(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
	jmp	.LBB0_33
.LBB0_56:                               # %__760
	movl	-60(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	movl	%ecx, -16(%ebp)
# BB#57:                                # %__751
	xorl	%eax, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
	movl	%ecx, -156(%ebp)        # 4-byte Spill
.LBB0_58:                               # %__752
                                        # =>This Inner Loop Header: Depth=1
	movl	-156(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-20(%ebp), %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_66
# BB#59:                                # %__759
                                        #   in Loop: Header=BB0_58 Depth=1
	movl	-16(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	-156(%ebp), %edx        # 4-byte Reload
	movb	(%edx), %bl
	shlb	$2, %bl
	movl	%ecx, -160(%ebp)        # 4-byte Spill
	movb	%bl, %cl
	movl	-160(%ebp), %esi        # 4-byte Reload
	shll	%cl, %esi
	andl	%esi, %eax
	movb	%bl, %cl
	sarl	%cl, %eax
	movl	%esp, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	movl	%eax, (%esi)
	movl	%esi, -164(%ebp)        # 4-byte Spill
# BB#60:                                # %__758
                                        #   in Loop: Header=BB0_58 Depth=1
	cmpl	$0, -28(%ebp)
	je	.LBB0_64
# BB#61:                                # %__756
                                        #   in Loop: Header=BB0_58 Depth=1
	movl	-164(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-32(%ebp), %ecx
	setge	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_63
# BB#62:                                # %__754
                                        #   in Loop: Header=BB0_58 Depth=1
	movl	-164(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	movl	%ecx, -32(%ebp)
	jmp	.LBB0_65
.LBB0_63:                               # %__755
                                        #   in Loop: Header=BB0_58 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -28(%ebp)
	jmp	.LBB0_65
.LBB0_64:                               # %__757
                                        #   in Loop: Header=BB0_58 Depth=1
	jmp	.LBB0_65
.LBB0_65:                               # %__753
                                        #   in Loop: Header=BB0_58 Depth=1
	movl	$1, %eax
	movl	-156(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
	jmp	.LBB0_58
.LBB0_66:                               # %__750
	movl	-28(%ebp), %eax
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
