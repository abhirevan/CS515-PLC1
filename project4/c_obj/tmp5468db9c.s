	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__1046
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
# BB#1:                                 # %__1047
	movl	$1, %eax
	movl	-20(%ebp), %ecx
	movl	-64(%ebp), %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	andl	%edx, %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -20(%ebp)
# BB#2:                                 # %__1048
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
# BB#3:                                 # %__1049
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
# BB#4:                                 # %__1050
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
# BB#5:                                 # %__1051
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
# BB#6:                                 # %__1052
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
# BB#7:                                 # %__1053
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
# BB#8:                                 # %__1054
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, -44(%ebp)
# BB#9:                                 # %__1055
	jmp	.LBB0_10
.LBB0_10:                               # %__1057
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_38 Depth 3
                                        #       Child Loop BB0_44 Depth 3
                                        #     Child Loop BB0_54 Depth 2
                                        #     Child Loop BB0_62 Depth 2
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_68
# BB#11:                                # %__1059
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	$2, %eax
	movl	-44(%ebp), %ecx
	addl	$0, %eax
	imull	%eax, %ecx
	movl	%ecx, -44(%ebp)
# BB#12:                                # %__1060
                                        #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               # %__1062
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -48(%ebp)
# BB#14:                                # %__1063
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -36(%ebp)
.LBB0_15:                               # %__1064
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_38 Depth 3
                                        #       Child Loop BB0_44 Depth 3
	movl	-48(%ebp), %eax
	addl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_52
# BB#16:                                # %__1066
                                        #   in Loop: Header=BB0_15 Depth=2
	jmp	.LBB0_17
.LBB0_17:                               # %__1069
                                        #   in Loop: Header=BB0_15 Depth=2
	movl	$1, %eax
	movl	-48(%ebp), %ecx
	addl	-44(%ebp), %ecx
	addl	$0, %eax
	subl	%eax, %ecx
	movl	%ecx, -52(%ebp)
# BB#18:                                # %__1070
                                        #   in Loop: Header=BB0_15 Depth=2
	movl	$1, %eax
	movl	-52(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -56(%ebp)
# BB#19:                                # %__1071
                                        #   in Loop: Header=BB0_15 Depth=2
	movl	$1, %eax
	movl	-56(%ebp), %ecx
	addl	-44(%ebp), %ecx
	addl	$0, %eax
	subl	%eax, %ecx
	movl	%ecx, -60(%ebp)
# BB#20:                                # %__1072
                                        #   in Loop: Header=BB0_15 Depth=2
# BB#21:                                # %__1074
                                        #   in Loop: Header=BB0_15 Depth=2
	movl	$1, %eax
	movl	-40(%ebp), %ecx
	addl	$0, %eax
	subl	%eax, %ecx
	movl	%ecx, -60(%ebp)
# BB#22:                                # %__1075
                                        #   in Loop: Header=BB0_15 Depth=2
	movl	-48(%ebp), %eax
	movl	%eax, -28(%ebp)
# BB#23:                                # %__1076
                                        #   in Loop: Header=BB0_15 Depth=2
	movl	-56(%ebp), %eax
	movl	%eax, -32(%ebp)
.LBB0_24:                               # %__1077
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
	je	.LBB0_38
# BB#25:                                # %__1079
                                        #   in Loop: Header=BB0_24 Depth=3
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
# BB#26:                                # %__1082
                                        #   in Loop: Header=BB0_24 Depth=3
	movl	-140(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	movl	-144(%ebp), %edx        # 4-byte Reload
	cmpl	(%edx), %ecx
	setle	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_31
# BB#27:                                # %__1084
                                        #   in Loop: Header=BB0_24 Depth=3
	jmp	.LBB0_28
.LBB0_28:                               # %__1086
                                        #   in Loop: Header=BB0_24 Depth=3
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
# BB#29:                                # %__1087
                                        #   in Loop: Header=BB0_24 Depth=3
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#30:                                # %__1088
                                        #   in Loop: Header=BB0_24 Depth=3
	movl	$1, %eax
	movl	-28(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -28(%ebp)
	jmp	.LBB0_35
.LBB0_31:                               # %__1090
                                        #   in Loop: Header=BB0_24 Depth=3
	jmp	.LBB0_32
.LBB0_32:                               # %__1092
                                        #   in Loop: Header=BB0_24 Depth=3
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
# BB#33:                                # %__1093
                                        #   in Loop: Header=BB0_24 Depth=3
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#34:                                # %__1094
                                        #   in Loop: Header=BB0_24 Depth=3
	movl	$1, %eax
	movl	-32(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -32(%ebp)
	jmp	.LBB0_36
.LBB0_35:                               # %__1089
                                        #   in Loop: Header=BB0_24 Depth=3
	jmp	.LBB0_37
.LBB0_36:                               # %__1095
                                        #   in Loop: Header=BB0_24 Depth=3
	jmp	.LBB0_37
.LBB0_37:                               # %__1096
                                        #   in Loop: Header=BB0_24 Depth=3
	jmp	.LBB0_24
.LBB0_38:                               # %__1080
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%ebp), %eax
	cmpl	-52(%ebp), %eax
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_44
# BB#39:                                # %__1098
                                        #   in Loop: Header=BB0_38 Depth=3
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
# BB#40:                                # %__1101
                                        #   in Loop: Header=BB0_38 Depth=3
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
# BB#41:                                # %__1102
                                        #   in Loop: Header=BB0_38 Depth=3
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#42:                                # %__1103
                                        #   in Loop: Header=BB0_38 Depth=3
	movl	$1, %eax
	movl	-28(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -28(%ebp)
# BB#43:                                # %__1104
                                        #   in Loop: Header=BB0_38 Depth=3
	jmp	.LBB0_38
.LBB0_44:                               # %__1099
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-32(%ebp), %eax
	cmpl	-60(%ebp), %eax
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_50
# BB#45:                                # %__1106
                                        #   in Loop: Header=BB0_44 Depth=3
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
# BB#46:                                # %__1109
                                        #   in Loop: Header=BB0_44 Depth=3
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
# BB#47:                                # %__1110
                                        #   in Loop: Header=BB0_44 Depth=3
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#48:                                # %__1111
                                        #   in Loop: Header=BB0_44 Depth=3
	movl	$1, %eax
	movl	-32(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -32(%ebp)
# BB#49:                                # %__1112
                                        #   in Loop: Header=BB0_44 Depth=3
	jmp	.LBB0_44
.LBB0_50:                               # %__1107
                                        #   in Loop: Header=BB0_15 Depth=2
	movl	$1, %eax
	movl	-60(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -48(%ebp)
# BB#51:                                # %__1113
                                        #   in Loop: Header=BB0_15 Depth=2
	jmp	.LBB0_15
.LBB0_52:                               # %__1067
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	-48(%ebp), %eax
	movl	%eax, -28(%ebp)
# BB#53:                                # %__1114
                                        #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_54
.LBB0_54:                               # %__1116
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_60
# BB#55:                                # %__1118
                                        #   in Loop: Header=BB0_54 Depth=2
	movl	$1, %eax
	movl	-28(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -28(%ebp)
# BB#56:                                # %__1119
                                        #   in Loop: Header=BB0_54 Depth=2
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
# BB#57:                                # %__1121
                                        #   in Loop: Header=BB0_54 Depth=2
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
# BB#58:                                # %__1122
                                        #   in Loop: Header=BB0_54 Depth=2
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#59:                                # %__1123
                                        #   in Loop: Header=BB0_54 Depth=2
	jmp	.LBB0_54
.LBB0_60:                               # %__1117
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -28(%ebp)
# BB#61:                                # %__1124
                                        #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_62
.LBB0_62:                               # %__1126
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%ebp), %eax
	cmpl	-40(%ebp), %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_67
# BB#63:                                # %__1128
                                        #   in Loop: Header=BB0_62 Depth=2
	movl	$1, %eax
	movl	-28(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -28(%ebp)
# BB#64:                                # %__1129
                                        #   in Loop: Header=BB0_62 Depth=2
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
# BB#65:                                # %__1131
                                        #   in Loop: Header=BB0_62 Depth=2
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
# BB#66:                                # %__1132
                                        #   in Loop: Header=BB0_62 Depth=2
	jmp	.LBB0_62
.LBB0_67:                               # %__1127
                                        #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_10
.LBB0_68:                               # %__1058
	movl	$0, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -188(%ebp)        # 4-byte Spill
.LBB0_69:                               # %__1134
                                        # =>This Inner Loop Header: Depth=1
	movl	-188(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-16(%ebp), %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_79
# BB#70:                                # %__1136
                                        #   in Loop: Header=BB0_69 Depth=1
	movl	$1, %eax
	movl	-188(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
# BB#71:                                # %__1137
                                        #   in Loop: Header=BB0_69 Depth=1
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
# BB#72:                                # %__1139
                                        #   in Loop: Header=BB0_69 Depth=1
# BB#73:                                # %__1141
                                        #   in Loop: Header=BB0_69 Depth=1
	movl	-192(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-72(%ebp), %ecx
	setge	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_75
# BB#74:                                # %__1143
                                        #   in Loop: Header=BB0_69 Depth=1
	movl	-192(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	movl	%ecx, -72(%ebp)
	jmp	.LBB0_76
.LBB0_75:                               # %__1145
                                        #   in Loop: Header=BB0_69 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -68(%ebp)
	jmp	.LBB0_77
.LBB0_76:                               # %__1144
                                        #   in Loop: Header=BB0_69 Depth=1
	jmp	.LBB0_78
.LBB0_77:                               # %__1146
                                        #   in Loop: Header=BB0_69 Depth=1
	jmp	.LBB0_78
.LBB0_78:                               # %__1147
                                        #   in Loop: Header=BB0_69 Depth=1
	jmp	.LBB0_69
.LBB0_79:                               # %__1135
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
