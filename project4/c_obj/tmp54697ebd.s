	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __989
__989:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-24(%ebp)
	movl -24(%ebp),%ecx
	movl %ecx,-4(%ebp)
	movl $7,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-28(%ebp)
	movl -28(%ebp),%ecx
	movl %ecx,-8(%ebp)
	movl $15,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-32(%ebp)
	movl -32(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-36(%ebp)
	movl -36(%ebp),%ecx
	movl %ecx,-16(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-40(%ebp)
	movl $-1,%ecx
	movl -40(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-44(%ebp)
	movl -44(%ebp),%ecx
	movl %ecx,-20(%ebp)
	jmp __990
__990:
	movl -4(%ebp),%ecx
	movl %ecx,-48(%ebp)
	movl -12(%ebp),%ecx
	movl %ecx,-52(%ebp)
	movl $-1,%ecx
	movl -52(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-56(%ebp)
	movl -56(%ebp),%ecx
	movl -48(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-60(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-64(%ebp)
	movl -64(%ebp),%ecx
	movl -60(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-68(%ebp)
	movl -68(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __991
__991:
	movl -4(%ebp),%ecx
	movl %ecx,-72(%ebp)
	movl -12(%ebp),%ecx
	movl %ecx,-76(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-80(%ebp)
	movl -80(%ebp),%ecx
	movl -76(%ebp),%eax
	shll %cl, %eax
	movl %eax,-84(%ebp)
	movl $-1,%ecx
	movl -84(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-88(%ebp)
	movl -88(%ebp),%ecx
	movl -72(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-92(%ebp)
	movl $6,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-96(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-100(%ebp)
	movl -100(%ebp),%ecx
	movl -96(%ebp),%eax
	shll %cl, %eax
	movl %eax,-104(%ebp)
	movl -104(%ebp),%ecx
	movl -92(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-108(%ebp)
	movl -108(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __992
__992:
	movl -4(%ebp),%ecx
	movl %ecx,-112(%ebp)
	movl -12(%ebp),%ecx
	movl %ecx,-116(%ebp)
	movl $8,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-120(%ebp)
	movl -120(%ebp),%ecx
	movl -116(%ebp),%eax
	shll %cl, %eax
	movl %eax,-124(%ebp)
	movl $-1,%ecx
	movl -124(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-128(%ebp)
	movl -128(%ebp),%ecx
	movl -112(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-132(%ebp)
	movl $9,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-136(%ebp)
	movl $8,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-140(%ebp)
	movl -140(%ebp),%ecx
	movl -136(%ebp),%eax
	shll %cl, %eax
	movl %eax,-144(%ebp)
	movl -144(%ebp),%ecx
	movl -132(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-148(%ebp)
	movl -148(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __993
__993:
	movl -4(%ebp),%ecx
	movl %ecx,-152(%ebp)
	movl -12(%ebp),%ecx
	movl %ecx,-156(%ebp)
	movl $12,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-160(%ebp)
	movl -160(%ebp),%ecx
	movl -156(%ebp),%eax
	shll %cl, %eax
	movl %eax,-164(%ebp)
	movl $-1,%ecx
	movl -164(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-168(%ebp)
	movl -168(%ebp),%ecx
	movl -152(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-172(%ebp)
	movl $7,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-176(%ebp)
	movl $12,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-180(%ebp)
	movl -180(%ebp),%ecx
	movl -176(%ebp),%eax
	shll %cl, %eax
	movl %eax,-184(%ebp)
	movl -184(%ebp),%ecx
	movl -172(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-188(%ebp)
	movl -188(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __994
__994:
	movl -4(%ebp),%ecx
	movl %ecx,-192(%ebp)
	movl -12(%ebp),%ecx
	movl %ecx,-196(%ebp)
	movl $16,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-200(%ebp)
	movl -200(%ebp),%ecx
	movl -196(%ebp),%eax
	shll %cl, %eax
	movl %eax,-204(%ebp)
	movl $-1,%ecx
	movl -204(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-208(%ebp)
	movl -208(%ebp),%ecx
	movl -192(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-212(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-216(%ebp)
	movl $16,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-220(%ebp)
	movl -220(%ebp),%ecx
	movl -216(%ebp),%eax
	shll %cl, %eax
	movl %eax,-224(%ebp)
	movl -224(%ebp),%ecx
	movl -212(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-228(%ebp)
	movl -228(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __995
__995:
	movl -4(%ebp),%ecx
	movl %ecx,-232(%ebp)
	movl -12(%ebp),%ecx
	movl %ecx,-236(%ebp)
	movl $20,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-240(%ebp)
	movl -240(%ebp),%ecx
	movl -236(%ebp),%eax
	shll %cl, %eax
	movl %eax,-244(%ebp)
	movl $-1,%ecx
	movl -244(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-248(%ebp)
	movl -248(%ebp),%ecx
	movl -232(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-252(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-256(%ebp)
	movl $20,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-260(%ebp)
	movl -260(%ebp),%ecx
	movl -256(%ebp),%eax
	shll %cl, %eax
	movl %eax,-264(%ebp)
	movl -264(%ebp),%ecx
	movl -252(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-268(%ebp)
	movl -268(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __996
__996:
	movl -4(%ebp),%ecx
	movl %ecx,-272(%ebp)
	movl -12(%ebp),%ecx
	movl %ecx,-276(%ebp)
	movl $24,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-280(%ebp)
	movl -280(%ebp),%ecx
	movl -276(%ebp),%eax
	shll %cl, %eax
	movl %eax,-284(%ebp)
	movl $-1,%ecx
	movl -284(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-288(%ebp)
	movl -288(%ebp),%ecx
	movl -272(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-292(%ebp)
	movl $5,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-296(%ebp)
	movl $24,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-300(%ebp)
	movl -300(%ebp),%ecx
	movl -296(%ebp),%eax
	shll %cl, %eax
	movl %eax,-304(%ebp)
	movl -304(%ebp),%ecx
	movl -292(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-308(%ebp)
	movl -308(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __997
__997:
	movl -4(%ebp),%ecx
	movl %ecx,-332(%ebp)
	movl -332(%ebp),%ecx
	movl %ecx,-312(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-336(%ebp)
	movl -336(%ebp),%ecx
	movl %ecx,-316(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-340(%ebp)
	movl -340(%ebp),%ecx
	movl %ecx,-320(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-344(%ebp)
	movl -344(%ebp),%ecx
	movl %ecx,-324(%ebp)
	movl $15,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-348(%ebp)
	movl -348(%ebp),%ecx
	movl %ecx,-328(%ebp)
	jmp __998
__998:
	movl -316(%ebp),%ecx
	movl %ecx,-352(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-356(%ebp)
	movl -356(%ebp),%ecx
	movl -352(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-360(%ebp)
	movl -360(%ebp),%ecx
	movl %ecx,-320(%ebp)
	jmp __999
__999:
	jmp __1000
__1000:
	movl -320(%ebp),%ecx
	movl %ecx,-364(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-368(%ebp)
	movl -364(%ebp),%ebx
	movl -368(%ebp),%ecx
	movl $0,-372(%ebp)
	cmpl %ecx,%ebx
	setge -372(%ebp)
	cmpl $0,-372(%ebp)
	je __1001
	jne __1002
__1002:
	movl -320(%ebp),%ecx
	movl %ecx,-404(%ebp)
	movl -404(%ebp),%ecx
	movl %ecx,-376(%ebp)
	movl -316(%ebp),%ecx
	movl %ecx,-408(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-412(%ebp)
	movl -412(%ebp),%ecx
	movl -408(%ebp),%eax
	subl %ecx,%eax
	movl %eax,-416(%ebp)
	movl -416(%ebp),%ecx
	movl %ecx,-380(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-420(%ebp)
	movl -420(%ebp),%ecx
	movl %ecx,-384(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-424(%ebp)
	movl -424(%ebp),%ecx
	movl %ecx,-388(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-428(%ebp)
	movl -428(%ebp),%ecx
	movl %ecx,-392(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-432(%ebp)
	movl -432(%ebp),%ecx
	movl %ecx,-396(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-436(%ebp)
	movl -436(%ebp),%ecx
	movl %ecx,-400(%ebp)
	jmp __1003
__1003:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-440(%ebp)
	movl -440(%ebp),%ecx
	movl %ecx,-384(%ebp)
	jmp __1004
__1004:
	movl -376(%ebp),%ecx
	movl %ecx,-444(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-448(%ebp)
	movl -448(%ebp),%ecx
	movl -444(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-452(%ebp)
	movl -380(%ebp),%ecx
	movl %ecx,-456(%ebp)
	movl -452(%ebp),%ebx
	movl -456(%ebp),%ecx
	movl $0,-460(%ebp)
	cmpl %ecx,%ebx
	setle -460(%ebp)
	movl -384(%ebp),%ecx
	movl %ecx,-464(%ebp)
	movl -464(%ebp),%ebx
	movl $0,%ecx
	movl $0,-468(%ebp)
	cmpl %ecx,%ebx
	sete -468(%ebp)
	movl -468(%ebp),%ecx
	movl -460(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-472(%ebp)
	cmpl $0,-472(%ebp)
	je __1006
	jne __1005
__1005:
	jmp __1007
__1007:
	movl -376(%ebp),%ecx
	movl %ecx,-476(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-480(%ebp)
	movl -480(%ebp),%ecx
	movl -476(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-484(%ebp)
	movl -380(%ebp),%ecx
	movl %ecx,-488(%ebp)
	movl -484(%ebp),%ebx
	movl -488(%ebp),%ecx
	movl $0,-492(%ebp)
	cmpl %ecx,%ebx
	sete -492(%ebp)
	cmpl $0,-492(%ebp)
	je __1011
	jne __1009
__1009:
	movl -376(%ebp),%ecx
	movl %ecx,-496(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-500(%ebp)
	movl -500(%ebp),%ecx
	movl -496(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-504(%ebp)
	movl -504(%ebp),%ecx
	movl %ecx,-388(%ebp)
	jmp __1010
__1011:
	movl -312(%ebp),%ecx
	movl %ecx,-508(%ebp)
	movl -328(%ebp),%ecx
	movl %ecx,-512(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-516(%ebp)
	movl -376(%ebp),%ecx
	movl %ecx,-520(%ebp)
	movl -520(%ebp),%ecx
	movl -516(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-524(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-528(%ebp)
	movl -528(%ebp),%ecx
	movl -524(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-532(%ebp)
	movl -532(%ebp),%ecx
	movl -512(%ebp),%eax
	shll %cl, %eax
	movl %eax,-536(%ebp)
	movl -536(%ebp),%ecx
	movl -508(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-540(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-544(%ebp)
	movl -376(%ebp),%ecx
	movl %ecx,-548(%ebp)
	movl -548(%ebp),%ecx
	movl -544(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-552(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-556(%ebp)
	movl -556(%ebp),%ecx
	movl -552(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-560(%ebp)
	movl -560(%ebp),%ecx
	movl -540(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-564(%ebp)
	movl -312(%ebp),%ecx
	movl %ecx,-568(%ebp)
	movl -328(%ebp),%ecx
	movl %ecx,-572(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-576(%ebp)
	movl -376(%ebp),%ecx
	movl %ecx,-580(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-584(%ebp)
	movl -584(%ebp),%ecx
	movl -580(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-588(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-592(%ebp)
	movl -592(%ebp),%ecx
	movl -588(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-596(%ebp)
	movl -596(%ebp),%ecx
	movl -576(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-600(%ebp)
	movl -600(%ebp),%ecx
	movl -572(%ebp),%eax
	shll %cl, %eax
	movl %eax,-604(%ebp)
	movl -604(%ebp),%ecx
	movl -568(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-608(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-612(%ebp)
	movl -376(%ebp),%ecx
	movl %ecx,-616(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-620(%ebp)
	movl -620(%ebp),%ecx
	movl -616(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-624(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-628(%ebp)
	movl -628(%ebp),%ecx
	movl -624(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-632(%ebp)
	movl -632(%ebp),%ecx
	movl -612(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-636(%ebp)
	movl -636(%ebp),%ecx
	movl -608(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-640(%ebp)
	movl -564(%ebp),%ebx
	movl -640(%ebp),%ecx
	movl $0,-644(%ebp)
	cmpl %ecx,%ebx
	setg -644(%ebp)
	cmpl $0,-644(%ebp)
	je __1015
	jne __1013
__1013:
	movl -376(%ebp),%ecx
	movl %ecx,-648(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-652(%ebp)
	movl -652(%ebp),%ecx
	movl -648(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-656(%ebp)
	movl -656(%ebp),%ecx
	movl %ecx,-388(%ebp)
	jmp __1014
__1015:
	movl -376(%ebp),%ecx
	movl %ecx,-660(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-664(%ebp)
	movl -664(%ebp),%ecx
	movl -660(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-668(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-672(%ebp)
	movl -672(%ebp),%ecx
	movl -668(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-676(%ebp)
	movl -676(%ebp),%ecx
	movl %ecx,-388(%ebp)
	jmp __1016
__1014:
	jmp __1017
__1016:
	jmp __1017
__1010:
	jmp __1018
__1017:
	jmp __1018
__1018:
	movl -312(%ebp),%ecx
	movl %ecx,-680(%ebp)
	movl -328(%ebp),%ecx
	movl %ecx,-684(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-688(%ebp)
	movl -376(%ebp),%ecx
	movl %ecx,-692(%ebp)
	movl -692(%ebp),%ecx
	movl -688(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-696(%ebp)
	movl -696(%ebp),%ecx
	movl -684(%ebp),%eax
	shll %cl, %eax
	movl %eax,-700(%ebp)
	movl -700(%ebp),%ecx
	movl -680(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-704(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-708(%ebp)
	movl -376(%ebp),%ecx
	movl %ecx,-712(%ebp)
	movl -712(%ebp),%ecx
	movl -708(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-716(%ebp)
	movl -716(%ebp),%ecx
	movl -704(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-720(%ebp)
	movl -720(%ebp),%ecx
	movl %ecx,-396(%ebp)
	jmp __1019
__1019:
	movl -312(%ebp),%ecx
	movl %ecx,-724(%ebp)
	movl -328(%ebp),%ecx
	movl %ecx,-728(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-732(%ebp)
	movl -388(%ebp),%ecx
	movl %ecx,-736(%ebp)
	movl -736(%ebp),%ecx
	movl -732(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-740(%ebp)
	movl -740(%ebp),%ecx
	movl -728(%ebp),%eax
	shll %cl, %eax
	movl %eax,-744(%ebp)
	movl -744(%ebp),%ecx
	movl -724(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-748(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-752(%ebp)
	movl -388(%ebp),%ecx
	movl %ecx,-756(%ebp)
	movl -756(%ebp),%ecx
	movl -752(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-760(%ebp)
	movl -760(%ebp),%ecx
	movl -748(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-764(%ebp)
	movl -764(%ebp),%ecx
	movl %ecx,-400(%ebp)
	jmp __1020
__1020:
	movl -396(%ebp),%ecx
	movl %ecx,-768(%ebp)
	movl -400(%ebp),%ecx
	movl %ecx,-772(%ebp)
	movl -768(%ebp),%ebx
	movl -772(%ebp),%ecx
	movl $0,-776(%ebp)
	cmpl %ecx,%ebx
	setl -776(%ebp)
	cmpl $0,-776(%ebp)
	je __1028
	jne __1022
__1022:
	jmp __1023
__1023:
	movl -396(%ebp),%ecx
	movl %ecx,-780(%ebp)
	movl -780(%ebp),%ecx
	movl %ecx,-392(%ebp)
	jmp __1024
__1024:
	movl -312(%ebp),%ecx
	movl %ecx,-784(%ebp)
	movl -328(%ebp),%ecx
	movl %ecx,-788(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-792(%ebp)
	movl -376(%ebp),%ecx
	movl %ecx,-796(%ebp)
	movl -796(%ebp),%ecx
	movl -792(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-800(%ebp)
	movl -800(%ebp),%ecx
	movl -788(%ebp),%eax
	shll %cl, %eax
	movl %eax,-804(%ebp)
	movl $-1,%ecx
	movl -804(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-808(%ebp)
	movl -808(%ebp),%ecx
	movl -784(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-812(%ebp)
	movl -400(%ebp),%ecx
	movl %ecx,-816(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-820(%ebp)
	movl -376(%ebp),%ecx
	movl %ecx,-824(%ebp)
	movl -824(%ebp),%ecx
	movl -820(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-828(%ebp)
	movl -828(%ebp),%ecx
	movl -816(%ebp),%eax
	shll %cl, %eax
	movl %eax,-832(%ebp)
	movl -832(%ebp),%ecx
	movl -812(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-836(%ebp)
	movl -836(%ebp),%ecx
	movl %ecx,-312(%ebp)
	jmp __1025
__1025:
	movl -312(%ebp),%ecx
	movl %ecx,-840(%ebp)
	movl -328(%ebp),%ecx
	movl %ecx,-844(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-848(%ebp)
	movl -388(%ebp),%ecx
	movl %ecx,-852(%ebp)
	movl -852(%ebp),%ecx
	movl -848(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-856(%ebp)
	movl -856(%ebp),%ecx
	movl -844(%ebp),%eax
	shll %cl, %eax
	movl %eax,-860(%ebp)
	movl $-1,%ecx
	movl -860(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-864(%ebp)
	movl -864(%ebp),%ecx
	movl -840(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-868(%ebp)
	movl -392(%ebp),%ecx
	movl %ecx,-872(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-876(%ebp)
	movl -388(%ebp),%ecx
	movl %ecx,-880(%ebp)
	movl -880(%ebp),%ecx
	movl -876(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-884(%ebp)
	movl -884(%ebp),%ecx
	movl -872(%ebp),%eax
	shll %cl, %eax
	movl %eax,-888(%ebp)
	movl -888(%ebp),%ecx
	movl -868(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-892(%ebp)
	movl -892(%ebp),%ecx
	movl %ecx,-312(%ebp)
	jmp __1026
__1026:
	movl -388(%ebp),%ecx
	movl %ecx,-896(%ebp)
	movl -896(%ebp),%ecx
	movl %ecx,-376(%ebp)
	jmp __1027
__1028:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-900(%ebp)
	movl -900(%ebp),%ecx
	movl %ecx,-384(%ebp)
	jmp __1029
__1027:
	jmp __1030
__1029:
	jmp __1030
__1030:
	jmp __1004
__1006:
	movl -320(%ebp),%ecx
	movl %ecx,-904(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-908(%ebp)
	movl -908(%ebp),%ecx
	movl -904(%ebp),%eax
	subl %ecx,%eax
	movl %eax,-912(%ebp)
	movl -912(%ebp),%ecx
	movl %ecx,-320(%ebp)
	jmp __1031
__1031:
	jmp __1000
__1001:
	movl -316(%ebp),%ecx
	movl %ecx,-916(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-920(%ebp)
	movl -920(%ebp),%ecx
	movl -916(%ebp),%eax
	subl %ecx,%eax
	movl %eax,-924(%ebp)
	movl -924(%ebp),%ecx
	movl %ecx,-320(%ebp)
	jmp __1032
__1032:
	jmp __1033
__1033:
	movl -320(%ebp),%ecx
	movl %ecx,-928(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-932(%ebp)
	movl -928(%ebp),%ebx
	movl -932(%ebp),%ecx
	movl $0,-936(%ebp)
	cmpl %ecx,%ebx
	setge -936(%ebp)
	cmpl $0,-936(%ebp)
	je __1034
	jne __1035
__1035:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-968(%ebp)
	movl -968(%ebp),%ecx
	movl %ecx,-940(%ebp)
	movl -320(%ebp),%ecx
	movl %ecx,-972(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-976(%ebp)
	movl -976(%ebp),%ecx
	movl -972(%ebp),%eax
	subl %ecx,%eax
	movl %eax,-980(%ebp)
	movl -980(%ebp),%ecx
	movl %ecx,-944(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-984(%ebp)
	movl -984(%ebp),%ecx
	movl %ecx,-948(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-988(%ebp)
	movl -988(%ebp),%ecx
	movl %ecx,-952(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-992(%ebp)
	movl -992(%ebp),%ecx
	movl %ecx,-956(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-996(%ebp)
	movl -996(%ebp),%ecx
	movl %ecx,-960(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1000(%ebp)
	movl -1000(%ebp),%ecx
	movl %ecx,-964(%ebp)
	jmp __1036
__1036:
	movl -312(%ebp),%ecx
	movl %ecx,-1004(%ebp)
	movl -328(%ebp),%ecx
	movl %ecx,-1008(%ebp)
	movl -1008(%ebp),%ecx
	movl -1004(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-1012(%ebp)
	movl -1012(%ebp),%ecx
	movl %ecx,-956(%ebp)
	jmp __1037
__1037:
	movl -312(%ebp),%ecx
	movl %ecx,-1016(%ebp)
	movl -328(%ebp),%ecx
	movl %ecx,-1020(%ebp)
	movl $-1,%ecx
	movl -1020(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-1024(%ebp)
	movl -1024(%ebp),%ecx
	movl -1016(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-1028(%ebp)
	movl -312(%ebp),%ecx
	movl %ecx,-1032(%ebp)
	movl -328(%ebp),%ecx
	movl %ecx,-1036(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1040(%ebp)
	movl -320(%ebp),%ecx
	movl %ecx,-1044(%ebp)
	movl -1044(%ebp),%ecx
	movl -1040(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1048(%ebp)
	movl -1048(%ebp),%ecx
	movl -1036(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1052(%ebp)
	movl -1052(%ebp),%ecx
	movl -1032(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-1056(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1060(%ebp)
	movl -320(%ebp),%ecx
	movl %ecx,-1064(%ebp)
	movl -1064(%ebp),%ecx
	movl -1060(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1068(%ebp)
	movl -1068(%ebp),%ecx
	movl -1056(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-1072(%ebp)
	movl -1072(%ebp),%ecx
	movl -1028(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-1076(%ebp)
	movl -1076(%ebp),%ecx
	movl %ecx,-312(%ebp)
	jmp __1038
__1038:
	movl -312(%ebp),%ecx
	movl %ecx,-1080(%ebp)
	movl -328(%ebp),%ecx
	movl %ecx,-1084(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1088(%ebp)
	movl -320(%ebp),%ecx
	movl %ecx,-1092(%ebp)
	movl -1092(%ebp),%ecx
	movl -1088(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1096(%ebp)
	movl -1096(%ebp),%ecx
	movl -1084(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1100(%ebp)
	movl $-1,%ecx
	movl -1100(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-1104(%ebp)
	movl -1104(%ebp),%ecx
	movl -1080(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-1108(%ebp)
	movl -956(%ebp),%ecx
	movl %ecx,-1112(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1116(%ebp)
	movl -320(%ebp),%ecx
	movl %ecx,-1120(%ebp)
	movl -1120(%ebp),%ecx
	movl -1116(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1124(%ebp)
	movl -1124(%ebp),%ecx
	movl -1112(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1128(%ebp)
	movl -1128(%ebp),%ecx
	movl -1108(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-1132(%ebp)
	movl -1132(%ebp),%ecx
	movl %ecx,-312(%ebp)
	jmp __1039
__1039:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1136(%ebp)
	movl -1136(%ebp),%ecx
	movl %ecx,-948(%ebp)
	jmp __1040
__1040:
	movl -940(%ebp),%ecx
	movl %ecx,-1140(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1144(%ebp)
	movl -1144(%ebp),%ecx
	movl -1140(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1148(%ebp)
	movl -944(%ebp),%ecx
	movl %ecx,-1152(%ebp)
	movl -1148(%ebp),%ebx
	movl -1152(%ebp),%ecx
	movl $0,-1156(%ebp)
	cmpl %ecx,%ebx
	setle -1156(%ebp)
	movl -948(%ebp),%ecx
	movl %ecx,-1160(%ebp)
	movl -1160(%ebp),%ebx
	movl $0,%ecx
	movl $0,-1164(%ebp)
	cmpl %ecx,%ebx
	sete -1164(%ebp)
	movl -1164(%ebp),%ecx
	movl -1156(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-1168(%ebp)
	cmpl $0,-1168(%ebp)
	je __1042
	jne __1041
__1041:
	jmp __1043
__1043:
	movl -940(%ebp),%ecx
	movl %ecx,-1172(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1176(%ebp)
	movl -1176(%ebp),%ecx
	movl -1172(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1180(%ebp)
	movl -944(%ebp),%ecx
	movl %ecx,-1184(%ebp)
	movl -1180(%ebp),%ebx
	movl -1184(%ebp),%ecx
	movl $0,-1188(%ebp)
	cmpl %ecx,%ebx
	sete -1188(%ebp)
	cmpl $0,-1188(%ebp)
	je __1047
	jne __1045
__1045:
	movl -940(%ebp),%ecx
	movl %ecx,-1192(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1196(%ebp)
	movl -1196(%ebp),%ecx
	movl -1192(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1200(%ebp)
	movl -1200(%ebp),%ecx
	movl %ecx,-952(%ebp)
	jmp __1046
__1047:
	movl -312(%ebp),%ecx
	movl %ecx,-1204(%ebp)
	movl -328(%ebp),%ecx
	movl %ecx,-1208(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1212(%ebp)
	movl -940(%ebp),%ecx
	movl %ecx,-1216(%ebp)
	movl -1216(%ebp),%ecx
	movl -1212(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1220(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1224(%ebp)
	movl -1224(%ebp),%ecx
	movl -1220(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1228(%ebp)
	movl -1228(%ebp),%ecx
	movl -1208(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1232(%ebp)
	movl -1232(%ebp),%ecx
	movl -1204(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-1236(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1240(%ebp)
	movl -940(%ebp),%ecx
	movl %ecx,-1244(%ebp)
	movl -1244(%ebp),%ecx
	movl -1240(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1248(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1252(%ebp)
	movl -1252(%ebp),%ecx
	movl -1248(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1256(%ebp)
	movl -1256(%ebp),%ecx
	movl -1236(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-1260(%ebp)
	movl -312(%ebp),%ecx
	movl %ecx,-1264(%ebp)
	movl -328(%ebp),%ecx
	movl %ecx,-1268(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1272(%ebp)
	movl -940(%ebp),%ecx
	movl %ecx,-1276(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1280(%ebp)
	movl -1280(%ebp),%ecx
	movl -1276(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1284(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1288(%ebp)
	movl -1288(%ebp),%ecx
	movl -1284(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-1292(%ebp)
	movl -1292(%ebp),%ecx
	movl -1272(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1296(%ebp)
	movl -1296(%ebp),%ecx
	movl -1268(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1300(%ebp)
	movl -1300(%ebp),%ecx
	movl -1264(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-1304(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1308(%ebp)
	movl -940(%ebp),%ecx
	movl %ecx,-1312(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1316(%ebp)
	movl -1316(%ebp),%ecx
	movl -1312(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1320(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1324(%ebp)
	movl -1324(%ebp),%ecx
	movl -1320(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-1328(%ebp)
	movl -1328(%ebp),%ecx
	movl -1308(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1332(%ebp)
	movl -1332(%ebp),%ecx
	movl -1304(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-1336(%ebp)
	movl -1260(%ebp),%ebx
	movl -1336(%ebp),%ecx
	movl $0,-1340(%ebp)
	cmpl %ecx,%ebx
	setg -1340(%ebp)
	cmpl $0,-1340(%ebp)
	je __1051
	jne __1049
__1049:
	movl -940(%ebp),%ecx
	movl %ecx,-1344(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1348(%ebp)
	movl -1348(%ebp),%ecx
	movl -1344(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1352(%ebp)
	movl -1352(%ebp),%ecx
	movl %ecx,-952(%ebp)
	jmp __1050
__1051:
	movl -940(%ebp),%ecx
	movl %ecx,-1356(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1360(%ebp)
	movl -1360(%ebp),%ecx
	movl -1356(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1364(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1368(%ebp)
	movl -1368(%ebp),%ecx
	movl -1364(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-1372(%ebp)
	movl -1372(%ebp),%ecx
	movl %ecx,-952(%ebp)
	jmp __1052
__1050:
	jmp __1053
__1052:
	jmp __1053
__1046:
	jmp __1054
__1053:
	jmp __1054
__1054:
	movl -312(%ebp),%ecx
	movl %ecx,-1376(%ebp)
	movl -328(%ebp),%ecx
	movl %ecx,-1380(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1384(%ebp)
	movl -940(%ebp),%ecx
	movl %ecx,-1388(%ebp)
	movl -1388(%ebp),%ecx
	movl -1384(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1392(%ebp)
	movl -1392(%ebp),%ecx
	movl -1380(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1396(%ebp)
	movl -1396(%ebp),%ecx
	movl -1376(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-1400(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1404(%ebp)
	movl -940(%ebp),%ecx
	movl %ecx,-1408(%ebp)
	movl -1408(%ebp),%ecx
	movl -1404(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1412(%ebp)
	movl -1412(%ebp),%ecx
	movl -1400(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-1416(%ebp)
	movl -1416(%ebp),%ecx
	movl %ecx,-960(%ebp)
	jmp __1055
__1055:
	movl -312(%ebp),%ecx
	movl %ecx,-1420(%ebp)
	movl -328(%ebp),%ecx
	movl %ecx,-1424(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1428(%ebp)
	movl -952(%ebp),%ecx
	movl %ecx,-1432(%ebp)
	movl -1432(%ebp),%ecx
	movl -1428(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1436(%ebp)
	movl -1436(%ebp),%ecx
	movl -1424(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1440(%ebp)
	movl -1440(%ebp),%ecx
	movl -1420(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-1444(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1448(%ebp)
	movl -952(%ebp),%ecx
	movl %ecx,-1452(%ebp)
	movl -1452(%ebp),%ecx
	movl -1448(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1456(%ebp)
	movl -1456(%ebp),%ecx
	movl -1444(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-1460(%ebp)
	movl -1460(%ebp),%ecx
	movl %ecx,-964(%ebp)
	jmp __1056
__1056:
	movl -960(%ebp),%ecx
	movl %ecx,-1464(%ebp)
	movl -964(%ebp),%ecx
	movl %ecx,-1468(%ebp)
	movl -1464(%ebp),%ebx
	movl -1468(%ebp),%ecx
	movl $0,-1472(%ebp)
	cmpl %ecx,%ebx
	setl -1472(%ebp)
	cmpl $0,-1472(%ebp)
	je __1064
	jne __1058
__1058:
	jmp __1059
__1059:
	movl -960(%ebp),%ecx
	movl %ecx,-1476(%ebp)
	movl -1476(%ebp),%ecx
	movl %ecx,-956(%ebp)
	jmp __1060
__1060:
	movl -312(%ebp),%ecx
	movl %ecx,-1480(%ebp)
	movl -328(%ebp),%ecx
	movl %ecx,-1484(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1488(%ebp)
	movl -940(%ebp),%ecx
	movl %ecx,-1492(%ebp)
	movl -1492(%ebp),%ecx
	movl -1488(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1496(%ebp)
	movl -1496(%ebp),%ecx
	movl -1484(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1500(%ebp)
	movl $-1,%ecx
	movl -1500(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-1504(%ebp)
	movl -1504(%ebp),%ecx
	movl -1480(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-1508(%ebp)
	movl -964(%ebp),%ecx
	movl %ecx,-1512(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1516(%ebp)
	movl -940(%ebp),%ecx
	movl %ecx,-1520(%ebp)
	movl -1520(%ebp),%ecx
	movl -1516(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1524(%ebp)
	movl -1524(%ebp),%ecx
	movl -1512(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1528(%ebp)
	movl -1528(%ebp),%ecx
	movl -1508(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-1532(%ebp)
	movl -1532(%ebp),%ecx
	movl %ecx,-312(%ebp)
	jmp __1061
__1061:
	movl -312(%ebp),%ecx
	movl %ecx,-1536(%ebp)
	movl -328(%ebp),%ecx
	movl %ecx,-1540(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1544(%ebp)
	movl -952(%ebp),%ecx
	movl %ecx,-1548(%ebp)
	movl -1548(%ebp),%ecx
	movl -1544(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1552(%ebp)
	movl -1552(%ebp),%ecx
	movl -1540(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1556(%ebp)
	movl $-1,%ecx
	movl -1556(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-1560(%ebp)
	movl -1560(%ebp),%ecx
	movl -1536(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-1564(%ebp)
	movl -956(%ebp),%ecx
	movl %ecx,-1568(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1572(%ebp)
	movl -952(%ebp),%ecx
	movl %ecx,-1576(%ebp)
	movl -1576(%ebp),%ecx
	movl -1572(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1580(%ebp)
	movl -1580(%ebp),%ecx
	movl -1568(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1584(%ebp)
	movl -1584(%ebp),%ecx
	movl -1564(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-1588(%ebp)
	movl -1588(%ebp),%ecx
	movl %ecx,-312(%ebp)
	jmp __1062
__1062:
	movl -952(%ebp),%ecx
	movl %ecx,-1592(%ebp)
	movl -1592(%ebp),%ecx
	movl %ecx,-940(%ebp)
	jmp __1063
__1064:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1596(%ebp)
	movl -1596(%ebp),%ecx
	movl %ecx,-948(%ebp)
	jmp __1065
__1063:
	jmp __1066
__1065:
	jmp __1066
__1066:
	jmp __1040
__1042:
	movl -320(%ebp),%ecx
	movl %ecx,-1600(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1604(%ebp)
	movl -1604(%ebp),%ecx
	movl -1600(%ebp),%eax
	subl %ecx,%eax
	movl %eax,-1608(%ebp)
	movl -1608(%ebp),%ecx
	movl %ecx,-320(%ebp)
	jmp __1067
__1067:
	jmp __1033
__1034:
	movl -312(%ebp),%ecx
	movl %ecx,-1612(%ebp)
	movl -1612(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __1068
__1068:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1620(%ebp)
	movl -1620(%ebp),%ecx
	movl %ecx,-1616(%ebp)
	jmp __1069
__1069:
	movl -1616(%ebp),%ecx
	movl %ecx,-1624(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-1628(%ebp)
	movl -1624(%ebp),%ebx
	movl -1628(%ebp),%ecx
	movl $0,-1632(%ebp)
	cmpl %ecx,%ebx
	setl -1632(%ebp)
	cmpl $0,-1632(%ebp)
	je __1070
	jne __1071
__1071:
	movl -4(%ebp),%ecx
	movl %ecx,-1640(%ebp)
	movl -12(%ebp),%ecx
	movl %ecx,-1644(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1648(%ebp)
	movl -1616(%ebp),%ecx
	movl %ecx,-1652(%ebp)
	movl -1652(%ebp),%ecx
	movl -1648(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1656(%ebp)
	movl -1656(%ebp),%ecx
	movl -1644(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1660(%ebp)
	movl -1660(%ebp),%ecx
	movl -1640(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-1664(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1668(%ebp)
	movl -1616(%ebp),%ecx
	movl %ecx,-1672(%ebp)
	movl -1672(%ebp),%ecx
	movl -1668(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1676(%ebp)
	movl -1676(%ebp),%ecx
	movl -1664(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-1680(%ebp)
	movl -1680(%ebp),%ecx
	movl %ecx,-1636(%ebp)
	jmp __1072
__1072:
	movl -16(%ebp),%ecx
	movl %ecx,-1684(%ebp)
	cmpl $0,-1684(%ebp)
	je __1073
	jne __1074
__1074:
	movl -1636(%ebp),%ecx
	movl %ecx,-1688(%ebp)
	movl -20(%ebp),%ecx
	movl %ecx,-1692(%ebp)
	movl -1688(%ebp),%ebx
	movl -1692(%ebp),%ecx
	movl $0,-1696(%ebp)
	cmpl %ecx,%ebx
	setge -1696(%ebp)
	cmpl $0,-1696(%ebp)
	je __1078
	jne __1076
__1076:
	movl -1636(%ebp),%ecx
	movl %ecx,-1700(%ebp)
	movl -1700(%ebp),%ecx
	movl %ecx,-20(%ebp)
	jmp __1077
__1078:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1704(%ebp)
	movl -1704(%ebp),%ecx
	movl %ecx,-16(%ebp)
	jmp __1079
__1077:
	jmp __1080
__1079:
	jmp __1080
__1080:
	jmp __1073
__1073:
	movl -1616(%ebp),%ecx
	movl %ecx,-1708(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1712(%ebp)
	movl -1712(%ebp),%ecx
	movl -1708(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-1716(%ebp)
	movl -1716(%ebp),%ecx
	movl %ecx,-1616(%ebp)
	jmp __1081
__1081:
	jmp __1069
__1070:
	movl -16(%ebp),%ecx
	movl %ecx,-1720(%ebp)
	movl -1720(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
