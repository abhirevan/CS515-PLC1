	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__879
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
	subl	$188, %esp
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
	movl	%edx, %edi
	addl	$0, %edi
	movl	%edx, %ebx
	addl	$0, %ebx
	movl	%eax, -76(%ebp)         # 4-byte Spill
	movl	%edx, %eax
	addl	$0, %eax
	movl	%eax, -80(%ebp)         # 4-byte Spill
	movl	%edx, %eax
	addl	$0, %eax
	movl	%eax, -84(%ebp)         # 4-byte Spill
	movl	%edx, %eax
	addl	$0, %eax
	movl	%eax, -88(%ebp)         # 4-byte Spill
	movl	-16(%ebp), %eax
	movl	%eax, -92(%ebp)         # 4-byte Spill
	movl	%edx, %eax
	addl	$0, %eax
	movl	%eax, -96(%ebp)         # 4-byte Spill
	movl	%edx, %eax
	addl	$0, %eax
	movl	%eax, -100(%ebp)        # 4-byte Spill
	movl	%edx, %eax
	addl	$0, %eax
	movl	%eax, -104(%ebp)        # 4-byte Spill
	movl	%edx, %eax
	addl	$0, %eax
	addl	$0, %edx
	addl	$0, %ecx
	movl	%eax, -108(%ebp)        # 4-byte Spill
	movl	-76(%ebp), %eax         # 4-byte Reload
	addl	$0, %eax
	movl	%eax, -112(%ebp)        # 4-byte Spill
	movl	-76(%ebp), %eax         # 4-byte Reload
	addl	$0, %eax
	imull	$4294967295, %eax, %eax # imm = 0xFFFFFFFF
	movl	%esi, -16(%ebp)
	movl	%edi, -20(%ebp)
	movl	%ebx, -24(%ebp)
	movl	-80(%ebp), %esi         # 4-byte Reload
	movl	%esi, -28(%ebp)
	movl	-84(%ebp), %edi         # 4-byte Reload
	movl	%edi, -32(%ebp)
	movl	-88(%ebp), %ebx         # 4-byte Reload
	movl	%ebx, -36(%ebp)
	movl	-92(%ebp), %esi         # 4-byte Reload
	movl	%esi, -40(%ebp)
	movl	-96(%ebp), %esi         # 4-byte Reload
	movl	%esi, -44(%ebp)
	movl	-100(%ebp), %esi        # 4-byte Reload
	movl	%esi, -48(%ebp)
	movl	-104(%ebp), %esi        # 4-byte Reload
	movl	%esi, -52(%ebp)
	movl	-108(%ebp), %esi        # 4-byte Reload
	movl	%esi, -56(%ebp)
	movl	%edx, -60(%ebp)
	movl	%ecx, -64(%ebp)
	movl	-112(%ebp), %ecx        # 4-byte Reload
	movl	%ecx, -68(%ebp)
	movl	%eax, -72(%ebp)
# BB#1:                                 # %__880
	movl	$1, %eax
	movl	-20(%ebp), %ecx
	movl	-64(%ebp), %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	andl	%edx, %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -20(%ebp)
# BB#2:                                 # %__881
	movl	$4, %eax
	movl	$6, %ecx
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -116(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-116(%ebp), %esi        # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -20(%ebp)
# BB#3:                                 # %__882
	movl	$8, %eax
	movl	$9, %ecx
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -120(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-120(%ebp), %esi        # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -20(%ebp)
# BB#4:                                 # %__883
	movl	$12, %eax
	movl	$7, %ecx
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -124(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-124(%ebp), %esi        # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -20(%ebp)
# BB#5:                                 # %__884
	movl	$16, %eax
	movl	$0, %ecx
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -128(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-128(%ebp), %esi        # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -20(%ebp)
# BB#6:                                 # %__885
	movl	$20, %eax
	movl	$4, %ecx
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -132(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-132(%ebp), %esi        # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -20(%ebp)
# BB#7:                                 # %__886
	movl	$24, %eax
	movl	$5, %ecx
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -136(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-136(%ebp), %esi        # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -20(%ebp)
# BB#8:                                 # %__887
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, -44(%ebp)
# BB#9:                                 # %__888
	jmp	.LBB0_10
.LBB0_10:                               # %__889
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_45 Depth 3
                                        #     Child Loop BB0_55 Depth 2
                                        #     Child Loop BB0_63 Depth 2
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_69
# BB#11:                                # %__891
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	$2, %eax
	movl	-44(%ebp), %ecx
	addl	$0, %eax
	imull	%eax, %ecx
	movl	%ecx, -44(%ebp)
# BB#12:                                # %__892
                                        #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               # %__893
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -48(%ebp)
# BB#14:                                # %__894
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -36(%ebp)
.LBB0_15:                               # %__895
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_45 Depth 3
	movl	-48(%ebp), %eax
	addl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_53
# BB#16:                                # %__896
                                        #   in Loop: Header=BB0_15 Depth=2
	jmp	.LBB0_17
.LBB0_17:                               # %__898
                                        #   in Loop: Header=BB0_15 Depth=2
	movl	$1, %eax
	movl	-48(%ebp), %ecx
	addl	-44(%ebp), %ecx
	addl	$0, %eax
	subl	%eax, %ecx
	movl	%ecx, -52(%ebp)
# BB#18:                                # %__899
                                        #   in Loop: Header=BB0_15 Depth=2
	movl	$1, %eax
	movl	-52(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -56(%ebp)
# BB#19:                                # %__900
                                        #   in Loop: Header=BB0_15 Depth=2
	movl	$1, %eax
	movl	-56(%ebp), %ecx
	addl	-44(%ebp), %ecx
	addl	$0, %eax
	subl	%eax, %ecx
	movl	%ecx, -60(%ebp)
# BB#20:                                # %__901
                                        #   in Loop: Header=BB0_15 Depth=2
	movl	-60(%ebp), %eax
	cmpl	-40(%ebp), %eax
	setge	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_23
# BB#21:                                # %__903
                                        #   in Loop: Header=BB0_15 Depth=2
	movl	$1, %eax
	movl	-40(%ebp), %ecx
	addl	$0, %eax
	subl	%eax, %ecx
	movl	%ecx, -60(%ebp)
# BB#22:                                # %__904
                                        #   in Loop: Header=BB0_15 Depth=2
	jmp	.LBB0_23
.LBB0_23:                               # %__902
                                        #   in Loop: Header=BB0_15 Depth=2
	movl	-48(%ebp), %eax
	movl	%eax, -28(%ebp)
# BB#24:                                # %__905
                                        #   in Loop: Header=BB0_15 Depth=2
	movl	-56(%ebp), %eax
	movl	%eax, -32(%ebp)
.LBB0_25:                               # %__906
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%ebp), %eax
	cmpl	-52(%ebp), %eax
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	-32(%ebp), %edx
	cmpl	-60(%ebp), %edx
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	andl	%edx, %eax
	cmpl	$0, %eax
	je	.LBB0_39
# BB#26:                                # %__907
                                        #   in Loop: Header=BB0_25 Depth=3
	movl	$4, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	movl	-20(%ebp), %esi
	movl	-64(%ebp), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	imull	-28(%ebp), %ebx
	movl	%ecx, -140(%ebp)        # 4-byte Spill
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	andl	%edi, %esi
	movl	%eax, %edi
	addl	$0, %edi
	imull	-28(%ebp), %edi
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %esi
	movl	-20(%ebp), %edi
	movl	-64(%ebp), %ebx
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	-32(%ebp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %ebx
	andl	%ebx, %edi
	addl	$0, %eax
	imull	-32(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edi
	movl	-140(%ebp), %eax        # 4-byte Reload
	movl	%esi, (%eax)
	movl	%edi, (%edx)
	movl	%edx, -144(%ebp)        # 4-byte Spill
# BB#27:                                # %__909
                                        #   in Loop: Header=BB0_25 Depth=3
	movl	-140(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	movl	-144(%ebp), %edx        # 4-byte Reload
	cmpl	(%edx), %ecx
	setle	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_32
# BB#28:                                # %__911
                                        #   in Loop: Header=BB0_25 Depth=3
	jmp	.LBB0_29
.LBB0_29:                               # %__912
                                        #   in Loop: Header=BB0_25 Depth=3
	movl	$4, %eax
	movl	-24(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	-36(%ebp), %esi
	movl	%ecx, -148(%ebp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-148(%ebp), %esi        # 4-byte Reload
	andl	%edx, %esi
	movl	-140(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %edi
	addl	$0, %eax
	imull	-36(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	addl	%edi, %esi
	movl	%esi, -24(%ebp)
# BB#30:                                # %__913
                                        #   in Loop: Header=BB0_25 Depth=3
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#31:                                # %__914
                                        #   in Loop: Header=BB0_25 Depth=3
	movl	$1, %eax
	movl	-28(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -28(%ebp)
	jmp	.LBB0_36
.LBB0_32:                               # %__916
                                        #   in Loop: Header=BB0_25 Depth=3
	jmp	.LBB0_33
.LBB0_33:                               # %__917
                                        #   in Loop: Header=BB0_25 Depth=3
	movl	$4, %eax
	movl	-24(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	-36(%ebp), %esi
	movl	%ecx, -152(%ebp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-152(%ebp), %esi        # 4-byte Reload
	andl	%edx, %esi
	movl	-144(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %edi
	addl	$0, %eax
	imull	-36(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	addl	%edi, %esi
	movl	%esi, -24(%ebp)
# BB#34:                                # %__918
                                        #   in Loop: Header=BB0_25 Depth=3
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#35:                                # %__919
                                        #   in Loop: Header=BB0_25 Depth=3
	movl	$1, %eax
	movl	-32(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -32(%ebp)
	jmp	.LBB0_37
.LBB0_36:                               # %__915
                                        #   in Loop: Header=BB0_25 Depth=3
	jmp	.LBB0_38
.LBB0_37:                               # %__920
                                        #   in Loop: Header=BB0_25 Depth=3
	jmp	.LBB0_38
.LBB0_38:                               # %__921
                                        #   in Loop: Header=BB0_25 Depth=3
	jmp	.LBB0_25
.LBB0_39:                               # %__908
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%ebp), %eax
	cmpl	-52(%ebp), %eax
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_45
# BB#40:                                # %__922
                                        #   in Loop: Header=BB0_39 Depth=3
	movl	$4, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	imull	-28(%ebp), %edi
	movl	%ecx, -156(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	andl	%esi, %edx
	addl	$0, %eax
	imull	-28(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-156(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
# BB#41:                                # %__924
                                        #   in Loop: Header=BB0_39 Depth=3
	movl	$4, %eax
	movl	-24(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	-36(%ebp), %esi
	movl	%ecx, -160(%ebp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-160(%ebp), %esi        # 4-byte Reload
	andl	%edx, %esi
	movl	-156(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %edi
	addl	$0, %eax
	imull	-36(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	addl	%edi, %esi
	movl	%esi, -24(%ebp)
# BB#42:                                # %__925
                                        #   in Loop: Header=BB0_39 Depth=3
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#43:                                # %__926
                                        #   in Loop: Header=BB0_39 Depth=3
	movl	$1, %eax
	movl	-28(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -28(%ebp)
# BB#44:                                # %__927
                                        #   in Loop: Header=BB0_39 Depth=3
	jmp	.LBB0_39
.LBB0_45:                               # %__923
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-32(%ebp), %eax
	cmpl	-60(%ebp), %eax
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_51
# BB#46:                                # %__928
                                        #   in Loop: Header=BB0_45 Depth=3
	movl	$4, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	imull	-32(%ebp), %edi
	movl	%ecx, -164(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	andl	%esi, %edx
	addl	$0, %eax
	imull	-32(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-164(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
# BB#47:                                # %__930
                                        #   in Loop: Header=BB0_45 Depth=3
	movl	$4, %eax
	movl	-24(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	-36(%ebp), %esi
	movl	%ecx, -168(%ebp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-168(%ebp), %esi        # 4-byte Reload
	andl	%edx, %esi
	movl	-164(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %edi
	addl	$0, %eax
	imull	-36(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	addl	%edi, %esi
	movl	%esi, -24(%ebp)
# BB#48:                                # %__931
                                        #   in Loop: Header=BB0_45 Depth=3
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#49:                                # %__932
                                        #   in Loop: Header=BB0_45 Depth=3
	movl	$1, %eax
	movl	-32(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -32(%ebp)
# BB#50:                                # %__933
                                        #   in Loop: Header=BB0_45 Depth=3
	jmp	.LBB0_45
.LBB0_51:                               # %__929
                                        #   in Loop: Header=BB0_15 Depth=2
	movl	$1, %eax
	movl	-60(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -48(%ebp)
# BB#52:                                # %__934
                                        #   in Loop: Header=BB0_15 Depth=2
	jmp	.LBB0_15
.LBB0_53:                               # %__897
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	-48(%ebp), %eax
	movl	%eax, -28(%ebp)
# BB#54:                                # %__935
                                        #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_55
.LBB0_55:                               # %__936
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_61
# BB#56:                                # %__938
                                        #   in Loop: Header=BB0_55 Depth=2
	movl	$1, %eax
	movl	-28(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -28(%ebp)
# BB#57:                                # %__939
                                        #   in Loop: Header=BB0_55 Depth=2
	movl	$4, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	imull	-28(%ebp), %edi
	movl	%ecx, -172(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	andl	%esi, %edx
	addl	$0, %eax
	imull	-28(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-172(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
# BB#58:                                # %__940
                                        #   in Loop: Header=BB0_55 Depth=2
	movl	$4, %eax
	movl	-24(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	-36(%ebp), %esi
	movl	%ecx, -176(%ebp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-176(%ebp), %esi        # 4-byte Reload
	andl	%edx, %esi
	movl	-172(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %edi
	addl	$0, %eax
	imull	-36(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	addl	%edi, %esi
	movl	%esi, -24(%ebp)
# BB#59:                                # %__941
                                        #   in Loop: Header=BB0_55 Depth=2
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#60:                                # %__942
                                        #   in Loop: Header=BB0_55 Depth=2
	jmp	.LBB0_55
.LBB0_61:                               # %__937
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -28(%ebp)
# BB#62:                                # %__943
                                        #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_63
.LBB0_63:                               # %__944
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%ebp), %eax
	cmpl	-40(%ebp), %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_68
# BB#64:                                # %__946
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	$1, %eax
	movl	-28(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -28(%ebp)
# BB#65:                                # %__947
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	$4, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	-24(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	imull	-28(%ebp), %edi
	movl	%ecx, -180(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	andl	%esi, %edx
	addl	$0, %eax
	imull	-28(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-180(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
# BB#66:                                # %__948
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	$4, %eax
	movl	-20(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	-28(%ebp), %esi
	movl	%ecx, -184(%ebp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-184(%ebp), %esi        # 4-byte Reload
	andl	%edx, %esi
	movl	-180(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %edi
	addl	$0, %eax
	imull	-28(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	addl	%edi, %esi
	movl	%esi, -20(%ebp)
# BB#67:                                # %__949
                                        #   in Loop: Header=BB0_63 Depth=2
	jmp	.LBB0_63
.LBB0_68:                               # %__945
                                        #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_10
.LBB0_69:                               # %__890
	movl	$0, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -188(%ebp)        # 4-byte Spill
.LBB0_70:                               # %__950
                                        # =>This Inner Loop Header: Depth=1
	movl	-188(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-16(%ebp), %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_81
# BB#71:                                # %__952
                                        #   in Loop: Header=BB0_70 Depth=1
	movl	$1, %eax
	movl	-188(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
# BB#72:                                # %__953
                                        #   in Loop: Header=BB0_70 Depth=1
	movl	$4, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	-188(%ebp), %ebx        # 4-byte Reload
	imull	(%ebx), %edi
	movl	%ecx, -192(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	andl	%esi, %edx
	addl	$0, %eax
	imull	(%ebx), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-192(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
# BB#73:                                # %__954
                                        #   in Loop: Header=BB0_70 Depth=1
	cmpl	$0, -68(%ebp)
	je	.LBB0_80
# BB#74:                                # %__956
                                        #   in Loop: Header=BB0_70 Depth=1
	movl	-192(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-72(%ebp), %ecx
	setge	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_76
# BB#75:                                # %__958
                                        #   in Loop: Header=BB0_70 Depth=1
	movl	-192(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	movl	%ecx, -72(%ebp)
	jmp	.LBB0_77
.LBB0_76:                               # %__960
                                        #   in Loop: Header=BB0_70 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -68(%ebp)
	jmp	.LBB0_78
.LBB0_77:                               # %__959
                                        #   in Loop: Header=BB0_70 Depth=1
	jmp	.LBB0_79
.LBB0_78:                               # %__961
                                        #   in Loop: Header=BB0_70 Depth=1
	jmp	.LBB0_79
.LBB0_79:                               # %__962
                                        #   in Loop: Header=BB0_70 Depth=1
	jmp	.LBB0_80
.LBB0_80:                               # %__955
                                        #   in Loop: Header=BB0_70 Depth=1
	jmp	.LBB0_70
.LBB0_81:                               # %__951
	movl	-68(%ebp), %eax
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
