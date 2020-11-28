
build/smart_heat.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       0000010c  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00007228  08000110  08000110  00010110  2**4  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000724  08007338  08007338  00017338  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000004  08007a5c  08007a5c  00017a5c  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08007a60  08007a60  00017a60  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000078  20000000  08007a64  00020000  2**2  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              000045f0  20000078  08007adc  00020078  2**2  ALLOC
  7 ._user_heap_stack 00000000  20004668  20004668  00020078  2**0  CONTENTS
  8 .ARM.attributes   00000029  00000000  00000000  00020078  2**0  CONTENTS, READONLY
  9 .debug_info       00015836  00000000  00000000  000200a1  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     000032f7  00000000  00000000  000358d7  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_aranges    00000e40  00000000  00000000  00038bce  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_ranges     00000cf0  00000000  00000000  00039a0e  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_line       00006870  00000000  00000000  0003a6fe  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_str        00004395  00000000  00000000  00040f6e  2**0  CONTENTS, READONLY, DEBUGGING
 15 .comment          0000007f  00000000  00000000  00045303  2**0  CONTENTS, READONLY
 16 .debug_frame      00003f40  00000000  00000000  00045384  2**2  CONTENTS, READONLY, DEBUGGING
 17 .stabstr          000000df  00000000  00000000  000492c4  2**0  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

08000110 <__do_global_dtors_aux>:
 8000110:	b510      	push	{r4, lr}
 8000112:	4c05      	ldr	r4, [pc, #20]	; (8000128 <__do_global_dtors_aux+0x18>)
 8000114:	7823      	ldrb	r3, [r4, #0]
 8000116:	b933      	cbnz	r3, 8000126 <__do_global_dtors_aux+0x16>
 8000118:	4b04      	ldr	r3, [pc, #16]	; (800012c <__do_global_dtors_aux+0x1c>)
 800011a:	b113      	cbz	r3, 8000122 <__do_global_dtors_aux+0x12>
 800011c:	4804      	ldr	r0, [pc, #16]	; (8000130 <__do_global_dtors_aux+0x20>)
 800011e:	f3af 8000 	nop.w
 8000122:	2301      	movs	r3, #1
 8000124:	7023      	strb	r3, [r4, #0]
 8000126:	bd10      	pop	{r4, pc}
 8000128:	20000078 	.word	0x20000078
 800012c:	00000000 	.word	0x00000000
 8000130:	08007320 	.word	0x08007320

08000134 <frame_dummy>:
 8000134:	b508      	push	{r3, lr}
 8000136:	4b03      	ldr	r3, [pc, #12]	; (8000144 <frame_dummy+0x10>)
 8000138:	b11b      	cbz	r3, 8000142 <frame_dummy+0xe>
 800013a:	4903      	ldr	r1, [pc, #12]	; (8000148 <frame_dummy+0x14>)
 800013c:	4803      	ldr	r0, [pc, #12]	; (800014c <frame_dummy+0x18>)
 800013e:	f3af 8000 	nop.w
 8000142:	bd08      	pop	{r3, pc}
 8000144:	00000000 	.word	0x00000000
 8000148:	2000007c 	.word	0x2000007c
 800014c:	08007320 	.word	0x08007320

08000150 <__aeabi_frsub>:
 8000150:	f080 4000 	eor.w	r0, r0, #2147483648	; 0x80000000
 8000154:	e002      	b.n	800015c <__addsf3>
 8000156:	bf00      	nop

08000158 <__aeabi_fsub>:
 8000158:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000

0800015c <__addsf3>:
 800015c:	0042      	lsls	r2, r0, #1
 800015e:	bf1f      	itttt	ne
 8000160:	ea5f 0341 	movsne.w	r3, r1, lsl #1
 8000164:	ea92 0f03 	teqne	r2, r3
 8000168:	ea7f 6c22 	mvnsne.w	ip, r2, asr #24
 800016c:	ea7f 6c23 	mvnsne.w	ip, r3, asr #24
 8000170:	d06a      	beq.n	8000248 <__addsf3+0xec>
 8000172:	ea4f 6212 	mov.w	r2, r2, lsr #24
 8000176:	ebd2 6313 	rsbs	r3, r2, r3, lsr #24
 800017a:	bfc1      	itttt	gt
 800017c:	18d2      	addgt	r2, r2, r3
 800017e:	4041      	eorgt	r1, r0
 8000180:	4048      	eorgt	r0, r1
 8000182:	4041      	eorgt	r1, r0
 8000184:	bfb8      	it	lt
 8000186:	425b      	neglt	r3, r3
 8000188:	2b19      	cmp	r3, #25
 800018a:	bf88      	it	hi
 800018c:	4770      	bxhi	lr
 800018e:	f010 4f00 	tst.w	r0, #2147483648	; 0x80000000
 8000192:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8000196:	f020 407f 	bic.w	r0, r0, #4278190080	; 0xff000000
 800019a:	bf18      	it	ne
 800019c:	4240      	negne	r0, r0
 800019e:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 80001a2:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
 80001a6:	f021 417f 	bic.w	r1, r1, #4278190080	; 0xff000000
 80001aa:	bf18      	it	ne
 80001ac:	4249      	negne	r1, r1
 80001ae:	ea92 0f03 	teq	r2, r3
 80001b2:	d03f      	beq.n	8000234 <__addsf3+0xd8>
 80001b4:	f1a2 0201 	sub.w	r2, r2, #1
 80001b8:	fa41 fc03 	asr.w	ip, r1, r3
 80001bc:	eb10 000c 	adds.w	r0, r0, ip
 80001c0:	f1c3 0320 	rsb	r3, r3, #32
 80001c4:	fa01 f103 	lsl.w	r1, r1, r3
 80001c8:	f000 4300 	and.w	r3, r0, #2147483648	; 0x80000000
 80001cc:	d502      	bpl.n	80001d4 <__addsf3+0x78>
 80001ce:	4249      	negs	r1, r1
 80001d0:	eb60 0040 	sbc.w	r0, r0, r0, lsl #1
 80001d4:	f5b0 0f00 	cmp.w	r0, #8388608	; 0x800000
 80001d8:	d313      	bcc.n	8000202 <__addsf3+0xa6>
 80001da:	f1b0 7f80 	cmp.w	r0, #16777216	; 0x1000000
 80001de:	d306      	bcc.n	80001ee <__addsf3+0x92>
 80001e0:	0840      	lsrs	r0, r0, #1
 80001e2:	ea4f 0131 	mov.w	r1, r1, rrx
 80001e6:	f102 0201 	add.w	r2, r2, #1
 80001ea:	2afe      	cmp	r2, #254	; 0xfe
 80001ec:	d251      	bcs.n	8000292 <__addsf3+0x136>
 80001ee:	f1b1 4f00 	cmp.w	r1, #2147483648	; 0x80000000
 80001f2:	eb40 50c2 	adc.w	r0, r0, r2, lsl #23
 80001f6:	bf08      	it	eq
 80001f8:	f020 0001 	biceq.w	r0, r0, #1
 80001fc:	ea40 0003 	orr.w	r0, r0, r3
 8000200:	4770      	bx	lr
 8000202:	0049      	lsls	r1, r1, #1
 8000204:	eb40 0000 	adc.w	r0, r0, r0
 8000208:	f410 0f00 	tst.w	r0, #8388608	; 0x800000
 800020c:	f1a2 0201 	sub.w	r2, r2, #1
 8000210:	d1ed      	bne.n	80001ee <__addsf3+0x92>
 8000212:	fab0 fc80 	clz	ip, r0
 8000216:	f1ac 0c08 	sub.w	ip, ip, #8
 800021a:	ebb2 020c 	subs.w	r2, r2, ip
 800021e:	fa00 f00c 	lsl.w	r0, r0, ip
 8000222:	bfaa      	itet	ge
 8000224:	eb00 50c2 	addge.w	r0, r0, r2, lsl #23
 8000228:	4252      	neglt	r2, r2
 800022a:	4318      	orrge	r0, r3
 800022c:	bfbc      	itt	lt
 800022e:	40d0      	lsrlt	r0, r2
 8000230:	4318      	orrlt	r0, r3
 8000232:	4770      	bx	lr
 8000234:	f092 0f00 	teq	r2, #0
 8000238:	f481 0100 	eor.w	r1, r1, #8388608	; 0x800000
 800023c:	bf06      	itte	eq
 800023e:	f480 0000 	eoreq.w	r0, r0, #8388608	; 0x800000
 8000242:	3201      	addeq	r2, #1
 8000244:	3b01      	subne	r3, #1
 8000246:	e7b5      	b.n	80001b4 <__addsf3+0x58>
 8000248:	ea4f 0341 	mov.w	r3, r1, lsl #1
 800024c:	ea7f 6c22 	mvns.w	ip, r2, asr #24
 8000250:	bf18      	it	ne
 8000252:	ea7f 6c23 	mvnsne.w	ip, r3, asr #24
 8000256:	d021      	beq.n	800029c <__addsf3+0x140>
 8000258:	ea92 0f03 	teq	r2, r3
 800025c:	d004      	beq.n	8000268 <__addsf3+0x10c>
 800025e:	f092 0f00 	teq	r2, #0
 8000262:	bf08      	it	eq
 8000264:	4608      	moveq	r0, r1
 8000266:	4770      	bx	lr
 8000268:	ea90 0f01 	teq	r0, r1
 800026c:	bf1c      	itt	ne
 800026e:	2000      	movne	r0, #0
 8000270:	4770      	bxne	lr
 8000272:	f012 4f7f 	tst.w	r2, #4278190080	; 0xff000000
 8000276:	d104      	bne.n	8000282 <__addsf3+0x126>
 8000278:	0040      	lsls	r0, r0, #1
 800027a:	bf28      	it	cs
 800027c:	f040 4000 	orrcs.w	r0, r0, #2147483648	; 0x80000000
 8000280:	4770      	bx	lr
 8000282:	f112 7200 	adds.w	r2, r2, #33554432	; 0x2000000
 8000286:	bf3c      	itt	cc
 8000288:	f500 0000 	addcc.w	r0, r0, #8388608	; 0x800000
 800028c:	4770      	bxcc	lr
 800028e:	f000 4300 	and.w	r3, r0, #2147483648	; 0x80000000
 8000292:	f043 40fe 	orr.w	r0, r3, #2130706432	; 0x7f000000
 8000296:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 800029a:	4770      	bx	lr
 800029c:	ea7f 6222 	mvns.w	r2, r2, asr #24
 80002a0:	bf16      	itet	ne
 80002a2:	4608      	movne	r0, r1
 80002a4:	ea7f 6323 	mvnseq.w	r3, r3, asr #24
 80002a8:	4601      	movne	r1, r0
 80002aa:	0242      	lsls	r2, r0, #9
 80002ac:	bf06      	itte	eq
 80002ae:	ea5f 2341 	movseq.w	r3, r1, lsl #9
 80002b2:	ea90 0f01 	teqeq	r0, r1
 80002b6:	f440 0080 	orrne.w	r0, r0, #4194304	; 0x400000
 80002ba:	4770      	bx	lr

080002bc <__aeabi_ui2f>:
 80002bc:	f04f 0300 	mov.w	r3, #0
 80002c0:	e004      	b.n	80002cc <__aeabi_i2f+0x8>
 80002c2:	bf00      	nop

080002c4 <__aeabi_i2f>:
 80002c4:	f010 4300 	ands.w	r3, r0, #2147483648	; 0x80000000
 80002c8:	bf48      	it	mi
 80002ca:	4240      	negmi	r0, r0
 80002cc:	ea5f 0c00 	movs.w	ip, r0
 80002d0:	bf08      	it	eq
 80002d2:	4770      	bxeq	lr
 80002d4:	f043 4396 	orr.w	r3, r3, #1258291200	; 0x4b000000
 80002d8:	4601      	mov	r1, r0
 80002da:	f04f 0000 	mov.w	r0, #0
 80002de:	e01c      	b.n	800031a <__aeabi_l2f+0x2a>

080002e0 <__aeabi_ul2f>:
 80002e0:	ea50 0201 	orrs.w	r2, r0, r1
 80002e4:	bf08      	it	eq
 80002e6:	4770      	bxeq	lr
 80002e8:	f04f 0300 	mov.w	r3, #0
 80002ec:	e00a      	b.n	8000304 <__aeabi_l2f+0x14>
 80002ee:	bf00      	nop

080002f0 <__aeabi_l2f>:
 80002f0:	ea50 0201 	orrs.w	r2, r0, r1
 80002f4:	bf08      	it	eq
 80002f6:	4770      	bxeq	lr
 80002f8:	f011 4300 	ands.w	r3, r1, #2147483648	; 0x80000000
 80002fc:	d502      	bpl.n	8000304 <__aeabi_l2f+0x14>
 80002fe:	4240      	negs	r0, r0
 8000300:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8000304:	ea5f 0c01 	movs.w	ip, r1
 8000308:	bf02      	ittt	eq
 800030a:	4684      	moveq	ip, r0
 800030c:	4601      	moveq	r1, r0
 800030e:	2000      	moveq	r0, #0
 8000310:	f043 43b6 	orr.w	r3, r3, #1526726656	; 0x5b000000
 8000314:	bf08      	it	eq
 8000316:	f1a3 5380 	subeq.w	r3, r3, #268435456	; 0x10000000
 800031a:	f5a3 0300 	sub.w	r3, r3, #8388608	; 0x800000
 800031e:	fabc f28c 	clz	r2, ip
 8000322:	3a08      	subs	r2, #8
 8000324:	eba3 53c2 	sub.w	r3, r3, r2, lsl #23
 8000328:	db10      	blt.n	800034c <__aeabi_l2f+0x5c>
 800032a:	fa01 fc02 	lsl.w	ip, r1, r2
 800032e:	4463      	add	r3, ip
 8000330:	fa00 fc02 	lsl.w	ip, r0, r2
 8000334:	f1c2 0220 	rsb	r2, r2, #32
 8000338:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 800033c:	fa20 f202 	lsr.w	r2, r0, r2
 8000340:	eb43 0002 	adc.w	r0, r3, r2
 8000344:	bf08      	it	eq
 8000346:	f020 0001 	biceq.w	r0, r0, #1
 800034a:	4770      	bx	lr
 800034c:	f102 0220 	add.w	r2, r2, #32
 8000350:	fa01 fc02 	lsl.w	ip, r1, r2
 8000354:	f1c2 0220 	rsb	r2, r2, #32
 8000358:	ea50 004c 	orrs.w	r0, r0, ip, lsl #1
 800035c:	fa21 f202 	lsr.w	r2, r1, r2
 8000360:	eb43 0002 	adc.w	r0, r3, r2
 8000364:	bf08      	it	eq
 8000366:	ea20 70dc 	biceq.w	r0, r0, ip, lsr #31
 800036a:	4770      	bx	lr

0800036c <__aeabi_fmul>:
 800036c:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8000370:	ea1c 52d0 	ands.w	r2, ip, r0, lsr #23
 8000374:	bf1e      	ittt	ne
 8000376:	ea1c 53d1 	andsne.w	r3, ip, r1, lsr #23
 800037a:	ea92 0f0c 	teqne	r2, ip
 800037e:	ea93 0f0c 	teqne	r3, ip
 8000382:	d06f      	beq.n	8000464 <__aeabi_fmul+0xf8>
 8000384:	441a      	add	r2, r3
 8000386:	ea80 0c01 	eor.w	ip, r0, r1
 800038a:	0240      	lsls	r0, r0, #9
 800038c:	bf18      	it	ne
 800038e:	ea5f 2141 	movsne.w	r1, r1, lsl #9
 8000392:	d01e      	beq.n	80003d2 <__aeabi_fmul+0x66>
 8000394:	f04f 6300 	mov.w	r3, #134217728	; 0x8000000
 8000398:	ea43 1050 	orr.w	r0, r3, r0, lsr #5
 800039c:	ea43 1151 	orr.w	r1, r3, r1, lsr #5
 80003a0:	fba0 3101 	umull	r3, r1, r0, r1
 80003a4:	f00c 4000 	and.w	r0, ip, #2147483648	; 0x80000000
 80003a8:	f5b1 0f00 	cmp.w	r1, #8388608	; 0x800000
 80003ac:	bf3e      	ittt	cc
 80003ae:	0049      	lslcc	r1, r1, #1
 80003b0:	ea41 71d3 	orrcc.w	r1, r1, r3, lsr #31
 80003b4:	005b      	lslcc	r3, r3, #1
 80003b6:	ea40 0001 	orr.w	r0, r0, r1
 80003ba:	f162 027f 	sbc.w	r2, r2, #127	; 0x7f
 80003be:	2afd      	cmp	r2, #253	; 0xfd
 80003c0:	d81d      	bhi.n	80003fe <__aeabi_fmul+0x92>
 80003c2:	f1b3 4f00 	cmp.w	r3, #2147483648	; 0x80000000
 80003c6:	eb40 50c2 	adc.w	r0, r0, r2, lsl #23
 80003ca:	bf08      	it	eq
 80003cc:	f020 0001 	biceq.w	r0, r0, #1
 80003d0:	4770      	bx	lr
 80003d2:	f090 0f00 	teq	r0, #0
 80003d6:	f00c 4c00 	and.w	ip, ip, #2147483648	; 0x80000000
 80003da:	bf08      	it	eq
 80003dc:	0249      	lsleq	r1, r1, #9
 80003de:	ea4c 2050 	orr.w	r0, ip, r0, lsr #9
 80003e2:	ea40 2051 	orr.w	r0, r0, r1, lsr #9
 80003e6:	3a7f      	subs	r2, #127	; 0x7f
 80003e8:	bfc2      	ittt	gt
 80003ea:	f1d2 03ff 	rsbsgt	r3, r2, #255	; 0xff
 80003ee:	ea40 50c2 	orrgt.w	r0, r0, r2, lsl #23
 80003f2:	4770      	bxgt	lr
 80003f4:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 80003f8:	f04f 0300 	mov.w	r3, #0
 80003fc:	3a01      	subs	r2, #1
 80003fe:	dc5d      	bgt.n	80004bc <__aeabi_fmul+0x150>
 8000400:	f112 0f19 	cmn.w	r2, #25
 8000404:	bfdc      	itt	le
 8000406:	f000 4000 	andle.w	r0, r0, #2147483648	; 0x80000000
 800040a:	4770      	bxle	lr
 800040c:	f1c2 0200 	rsb	r2, r2, #0
 8000410:	0041      	lsls	r1, r0, #1
 8000412:	fa21 f102 	lsr.w	r1, r1, r2
 8000416:	f1c2 0220 	rsb	r2, r2, #32
 800041a:	fa00 fc02 	lsl.w	ip, r0, r2
 800041e:	ea5f 0031 	movs.w	r0, r1, rrx
 8000422:	f140 0000 	adc.w	r0, r0, #0
 8000426:	ea53 034c 	orrs.w	r3, r3, ip, lsl #1
 800042a:	bf08      	it	eq
 800042c:	ea20 70dc 	biceq.w	r0, r0, ip, lsr #31
 8000430:	4770      	bx	lr
 8000432:	f092 0f00 	teq	r2, #0
 8000436:	f000 4c00 	and.w	ip, r0, #2147483648	; 0x80000000
 800043a:	bf02      	ittt	eq
 800043c:	0040      	lsleq	r0, r0, #1
 800043e:	f410 0f00 	tsteq.w	r0, #8388608	; 0x800000
 8000442:	3a01      	subeq	r2, #1
 8000444:	d0f9      	beq.n	800043a <__aeabi_fmul+0xce>
 8000446:	ea40 000c 	orr.w	r0, r0, ip
 800044a:	f093 0f00 	teq	r3, #0
 800044e:	f001 4c00 	and.w	ip, r1, #2147483648	; 0x80000000
 8000452:	bf02      	ittt	eq
 8000454:	0049      	lsleq	r1, r1, #1
 8000456:	f411 0f00 	tsteq.w	r1, #8388608	; 0x800000
 800045a:	3b01      	subeq	r3, #1
 800045c:	d0f9      	beq.n	8000452 <__aeabi_fmul+0xe6>
 800045e:	ea41 010c 	orr.w	r1, r1, ip
 8000462:	e78f      	b.n	8000384 <__aeabi_fmul+0x18>
 8000464:	ea0c 53d1 	and.w	r3, ip, r1, lsr #23
 8000468:	ea92 0f0c 	teq	r2, ip
 800046c:	bf18      	it	ne
 800046e:	ea93 0f0c 	teqne	r3, ip
 8000472:	d00a      	beq.n	800048a <__aeabi_fmul+0x11e>
 8000474:	f030 4c00 	bics.w	ip, r0, #2147483648	; 0x80000000
 8000478:	bf18      	it	ne
 800047a:	f031 4c00 	bicsne.w	ip, r1, #2147483648	; 0x80000000
 800047e:	d1d8      	bne.n	8000432 <__aeabi_fmul+0xc6>
 8000480:	ea80 0001 	eor.w	r0, r0, r1
 8000484:	f000 4000 	and.w	r0, r0, #2147483648	; 0x80000000
 8000488:	4770      	bx	lr
 800048a:	f090 0f00 	teq	r0, #0
 800048e:	bf17      	itett	ne
 8000490:	f090 4f00 	teqne	r0, #2147483648	; 0x80000000
 8000494:	4608      	moveq	r0, r1
 8000496:	f091 0f00 	teqne	r1, #0
 800049a:	f091 4f00 	teqne	r1, #2147483648	; 0x80000000
 800049e:	d014      	beq.n	80004ca <__aeabi_fmul+0x15e>
 80004a0:	ea92 0f0c 	teq	r2, ip
 80004a4:	d101      	bne.n	80004aa <__aeabi_fmul+0x13e>
 80004a6:	0242      	lsls	r2, r0, #9
 80004a8:	d10f      	bne.n	80004ca <__aeabi_fmul+0x15e>
 80004aa:	ea93 0f0c 	teq	r3, ip
 80004ae:	d103      	bne.n	80004b8 <__aeabi_fmul+0x14c>
 80004b0:	024b      	lsls	r3, r1, #9
 80004b2:	bf18      	it	ne
 80004b4:	4608      	movne	r0, r1
 80004b6:	d108      	bne.n	80004ca <__aeabi_fmul+0x15e>
 80004b8:	ea80 0001 	eor.w	r0, r0, r1
 80004bc:	f000 4000 	and.w	r0, r0, #2147483648	; 0x80000000
 80004c0:	f040 40fe 	orr.w	r0, r0, #2130706432	; 0x7f000000
 80004c4:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 80004c8:	4770      	bx	lr
 80004ca:	f040 40fe 	orr.w	r0, r0, #2130706432	; 0x7f000000
 80004ce:	f440 0040 	orr.w	r0, r0, #12582912	; 0xc00000
 80004d2:	4770      	bx	lr

080004d4 <__aeabi_fdiv>:
 80004d4:	f04f 0cff 	mov.w	ip, #255	; 0xff
 80004d8:	ea1c 52d0 	ands.w	r2, ip, r0, lsr #23
 80004dc:	bf1e      	ittt	ne
 80004de:	ea1c 53d1 	andsne.w	r3, ip, r1, lsr #23
 80004e2:	ea92 0f0c 	teqne	r2, ip
 80004e6:	ea93 0f0c 	teqne	r3, ip
 80004ea:	d069      	beq.n	80005c0 <__aeabi_fdiv+0xec>
 80004ec:	eba2 0203 	sub.w	r2, r2, r3
 80004f0:	ea80 0c01 	eor.w	ip, r0, r1
 80004f4:	0249      	lsls	r1, r1, #9
 80004f6:	ea4f 2040 	mov.w	r0, r0, lsl #9
 80004fa:	d037      	beq.n	800056c <__aeabi_fdiv+0x98>
 80004fc:	f04f 5380 	mov.w	r3, #268435456	; 0x10000000
 8000500:	ea43 1111 	orr.w	r1, r3, r1, lsr #4
 8000504:	ea43 1310 	orr.w	r3, r3, r0, lsr #4
 8000508:	f00c 4000 	and.w	r0, ip, #2147483648	; 0x80000000
 800050c:	428b      	cmp	r3, r1
 800050e:	bf38      	it	cc
 8000510:	005b      	lslcc	r3, r3, #1
 8000512:	f142 027d 	adc.w	r2, r2, #125	; 0x7d
 8000516:	f44f 0c00 	mov.w	ip, #8388608	; 0x800000
 800051a:	428b      	cmp	r3, r1
 800051c:	bf24      	itt	cs
 800051e:	1a5b      	subcs	r3, r3, r1
 8000520:	ea40 000c 	orrcs.w	r0, r0, ip
 8000524:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8000528:	bf24      	itt	cs
 800052a:	eba3 0351 	subcs.w	r3, r3, r1, lsr #1
 800052e:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 8000532:	ebb3 0f91 	cmp.w	r3, r1, lsr #2
 8000536:	bf24      	itt	cs
 8000538:	eba3 0391 	subcs.w	r3, r3, r1, lsr #2
 800053c:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 8000540:	ebb3 0fd1 	cmp.w	r3, r1, lsr #3
 8000544:	bf24      	itt	cs
 8000546:	eba3 03d1 	subcs.w	r3, r3, r1, lsr #3
 800054a:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 800054e:	011b      	lsls	r3, r3, #4
 8000550:	bf18      	it	ne
 8000552:	ea5f 1c1c 	movsne.w	ip, ip, lsr #4
 8000556:	d1e0      	bne.n	800051a <__aeabi_fdiv+0x46>
 8000558:	2afd      	cmp	r2, #253	; 0xfd
 800055a:	f63f af50 	bhi.w	80003fe <__aeabi_fmul+0x92>
 800055e:	428b      	cmp	r3, r1
 8000560:	eb40 50c2 	adc.w	r0, r0, r2, lsl #23
 8000564:	bf08      	it	eq
 8000566:	f020 0001 	biceq.w	r0, r0, #1
 800056a:	4770      	bx	lr
 800056c:	f00c 4c00 	and.w	ip, ip, #2147483648	; 0x80000000
 8000570:	ea4c 2050 	orr.w	r0, ip, r0, lsr #9
 8000574:	327f      	adds	r2, #127	; 0x7f
 8000576:	bfc2      	ittt	gt
 8000578:	f1d2 03ff 	rsbsgt	r3, r2, #255	; 0xff
 800057c:	ea40 50c2 	orrgt.w	r0, r0, r2, lsl #23
 8000580:	4770      	bxgt	lr
 8000582:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8000586:	f04f 0300 	mov.w	r3, #0
 800058a:	3a01      	subs	r2, #1
 800058c:	e737      	b.n	80003fe <__aeabi_fmul+0x92>
 800058e:	f092 0f00 	teq	r2, #0
 8000592:	f000 4c00 	and.w	ip, r0, #2147483648	; 0x80000000
 8000596:	bf02      	ittt	eq
 8000598:	0040      	lsleq	r0, r0, #1
 800059a:	f410 0f00 	tsteq.w	r0, #8388608	; 0x800000
 800059e:	3a01      	subeq	r2, #1
 80005a0:	d0f9      	beq.n	8000596 <__aeabi_fdiv+0xc2>
 80005a2:	ea40 000c 	orr.w	r0, r0, ip
 80005a6:	f093 0f00 	teq	r3, #0
 80005aa:	f001 4c00 	and.w	ip, r1, #2147483648	; 0x80000000
 80005ae:	bf02      	ittt	eq
 80005b0:	0049      	lsleq	r1, r1, #1
 80005b2:	f411 0f00 	tsteq.w	r1, #8388608	; 0x800000
 80005b6:	3b01      	subeq	r3, #1
 80005b8:	d0f9      	beq.n	80005ae <__aeabi_fdiv+0xda>
 80005ba:	ea41 010c 	orr.w	r1, r1, ip
 80005be:	e795      	b.n	80004ec <__aeabi_fdiv+0x18>
 80005c0:	ea0c 53d1 	and.w	r3, ip, r1, lsr #23
 80005c4:	ea92 0f0c 	teq	r2, ip
 80005c8:	d108      	bne.n	80005dc <__aeabi_fdiv+0x108>
 80005ca:	0242      	lsls	r2, r0, #9
 80005cc:	f47f af7d 	bne.w	80004ca <__aeabi_fmul+0x15e>
 80005d0:	ea93 0f0c 	teq	r3, ip
 80005d4:	f47f af70 	bne.w	80004b8 <__aeabi_fmul+0x14c>
 80005d8:	4608      	mov	r0, r1
 80005da:	e776      	b.n	80004ca <__aeabi_fmul+0x15e>
 80005dc:	ea93 0f0c 	teq	r3, ip
 80005e0:	d104      	bne.n	80005ec <__aeabi_fdiv+0x118>
 80005e2:	024b      	lsls	r3, r1, #9
 80005e4:	f43f af4c 	beq.w	8000480 <__aeabi_fmul+0x114>
 80005e8:	4608      	mov	r0, r1
 80005ea:	e76e      	b.n	80004ca <__aeabi_fmul+0x15e>
 80005ec:	f030 4c00 	bics.w	ip, r0, #2147483648	; 0x80000000
 80005f0:	bf18      	it	ne
 80005f2:	f031 4c00 	bicsne.w	ip, r1, #2147483648	; 0x80000000
 80005f6:	d1ca      	bne.n	800058e <__aeabi_fdiv+0xba>
 80005f8:	f030 4200 	bics.w	r2, r0, #2147483648	; 0x80000000
 80005fc:	f47f af5c 	bne.w	80004b8 <__aeabi_fmul+0x14c>
 8000600:	f031 4300 	bics.w	r3, r1, #2147483648	; 0x80000000
 8000604:	f47f af3c 	bne.w	8000480 <__aeabi_fmul+0x114>
 8000608:	e75f      	b.n	80004ca <__aeabi_fmul+0x15e>
 800060a:	bf00      	nop

0800060c <__gesf2>:
 800060c:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
 8000610:	e006      	b.n	8000620 <__cmpsf2+0x4>
 8000612:	bf00      	nop

08000614 <__lesf2>:
 8000614:	f04f 0c01 	mov.w	ip, #1
 8000618:	e002      	b.n	8000620 <__cmpsf2+0x4>
 800061a:	bf00      	nop

0800061c <__cmpsf2>:
 800061c:	f04f 0c01 	mov.w	ip, #1
 8000620:	f84d cd04 	str.w	ip, [sp, #-4]!
 8000624:	ea4f 0240 	mov.w	r2, r0, lsl #1
 8000628:	ea4f 0341 	mov.w	r3, r1, lsl #1
 800062c:	ea7f 6c22 	mvns.w	ip, r2, asr #24
 8000630:	bf18      	it	ne
 8000632:	ea7f 6c23 	mvnsne.w	ip, r3, asr #24
 8000636:	d011      	beq.n	800065c <__cmpsf2+0x40>
 8000638:	b001      	add	sp, #4
 800063a:	ea52 0c53 	orrs.w	ip, r2, r3, lsr #1
 800063e:	bf18      	it	ne
 8000640:	ea90 0f01 	teqne	r0, r1
 8000644:	bf58      	it	pl
 8000646:	ebb2 0003 	subspl.w	r0, r2, r3
 800064a:	bf88      	it	hi
 800064c:	17c8      	asrhi	r0, r1, #31
 800064e:	bf38      	it	cc
 8000650:	ea6f 70e1 	mvncc.w	r0, r1, asr #31
 8000654:	bf18      	it	ne
 8000656:	f040 0001 	orrne.w	r0, r0, #1
 800065a:	4770      	bx	lr
 800065c:	ea7f 6c22 	mvns.w	ip, r2, asr #24
 8000660:	d102      	bne.n	8000668 <__cmpsf2+0x4c>
 8000662:	ea5f 2c40 	movs.w	ip, r0, lsl #9
 8000666:	d105      	bne.n	8000674 <__cmpsf2+0x58>
 8000668:	ea7f 6c23 	mvns.w	ip, r3, asr #24
 800066c:	d1e4      	bne.n	8000638 <__cmpsf2+0x1c>
 800066e:	ea5f 2c41 	movs.w	ip, r1, lsl #9
 8000672:	d0e1      	beq.n	8000638 <__cmpsf2+0x1c>
 8000674:	f85d 0b04 	ldr.w	r0, [sp], #4
 8000678:	4770      	bx	lr
 800067a:	bf00      	nop

0800067c <__aeabi_cfrcmple>:
 800067c:	4684      	mov	ip, r0
 800067e:	4608      	mov	r0, r1
 8000680:	4661      	mov	r1, ip
 8000682:	e7ff      	b.n	8000684 <__aeabi_cfcmpeq>

08000684 <__aeabi_cfcmpeq>:
 8000684:	b50f      	push	{r0, r1, r2, r3, lr}
 8000686:	f7ff ffc9 	bl	800061c <__cmpsf2>
 800068a:	2800      	cmp	r0, #0
 800068c:	bf48      	it	mi
 800068e:	f110 0f00 	cmnmi.w	r0, #0
 8000692:	bd0f      	pop	{r0, r1, r2, r3, pc}

08000694 <__aeabi_fcmpeq>:
 8000694:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000698:	f7ff fff4 	bl	8000684 <__aeabi_cfcmpeq>
 800069c:	bf0c      	ite	eq
 800069e:	2001      	moveq	r0, #1
 80006a0:	2000      	movne	r0, #0
 80006a2:	f85d fb08 	ldr.w	pc, [sp], #8
 80006a6:	bf00      	nop

080006a8 <__aeabi_fcmplt>:
 80006a8:	f84d ed08 	str.w	lr, [sp, #-8]!
 80006ac:	f7ff ffea 	bl	8000684 <__aeabi_cfcmpeq>
 80006b0:	bf34      	ite	cc
 80006b2:	2001      	movcc	r0, #1
 80006b4:	2000      	movcs	r0, #0
 80006b6:	f85d fb08 	ldr.w	pc, [sp], #8
 80006ba:	bf00      	nop

080006bc <__aeabi_fcmple>:
 80006bc:	f84d ed08 	str.w	lr, [sp, #-8]!
 80006c0:	f7ff ffe0 	bl	8000684 <__aeabi_cfcmpeq>
 80006c4:	bf94      	ite	ls
 80006c6:	2001      	movls	r0, #1
 80006c8:	2000      	movhi	r0, #0
 80006ca:	f85d fb08 	ldr.w	pc, [sp], #8
 80006ce:	bf00      	nop

080006d0 <__aeabi_fcmpge>:
 80006d0:	f84d ed08 	str.w	lr, [sp, #-8]!
 80006d4:	f7ff ffd2 	bl	800067c <__aeabi_cfrcmple>
 80006d8:	bf94      	ite	ls
 80006da:	2001      	movls	r0, #1
 80006dc:	2000      	movhi	r0, #0
 80006de:	f85d fb08 	ldr.w	pc, [sp], #8
 80006e2:	bf00      	nop

080006e4 <__aeabi_fcmpgt>:
 80006e4:	f84d ed08 	str.w	lr, [sp, #-8]!
 80006e8:	f7ff ffc8 	bl	800067c <__aeabi_cfrcmple>
 80006ec:	bf34      	ite	cc
 80006ee:	2001      	movcc	r0, #1
 80006f0:	2000      	movcs	r0, #0
 80006f2:	f85d fb08 	ldr.w	pc, [sp], #8
 80006f6:	bf00      	nop

080006f8 <__aeabi_f2iz>:
 80006f8:	ea4f 0240 	mov.w	r2, r0, lsl #1
 80006fc:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
 8000700:	d30f      	bcc.n	8000722 <__aeabi_f2iz+0x2a>
 8000702:	f04f 039e 	mov.w	r3, #158	; 0x9e
 8000706:	ebb3 6212 	subs.w	r2, r3, r2, lsr #24
 800070a:	d90d      	bls.n	8000728 <__aeabi_f2iz+0x30>
 800070c:	ea4f 2300 	mov.w	r3, r0, lsl #8
 8000710:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 8000714:	f010 4f00 	tst.w	r0, #2147483648	; 0x80000000
 8000718:	fa23 f002 	lsr.w	r0, r3, r2
 800071c:	bf18      	it	ne
 800071e:	4240      	negne	r0, r0
 8000720:	4770      	bx	lr
 8000722:	f04f 0000 	mov.w	r0, #0
 8000726:	4770      	bx	lr
 8000728:	f112 0f61 	cmn.w	r2, #97	; 0x61
 800072c:	d101      	bne.n	8000732 <__aeabi_f2iz+0x3a>
 800072e:	0242      	lsls	r2, r0, #9
 8000730:	d105      	bne.n	800073e <__aeabi_f2iz+0x46>
 8000732:	f010 4000 	ands.w	r0, r0, #2147483648	; 0x80000000
 8000736:	bf08      	it	eq
 8000738:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 800073c:	4770      	bx	lr
 800073e:	f04f 0000 	mov.w	r0, #0
 8000742:	4770      	bx	lr

08000744 <__aeabi_f2uiz>:
 8000744:	0042      	lsls	r2, r0, #1
 8000746:	d20e      	bcs.n	8000766 <__aeabi_f2uiz+0x22>
 8000748:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
 800074c:	d30b      	bcc.n	8000766 <__aeabi_f2uiz+0x22>
 800074e:	f04f 039e 	mov.w	r3, #158	; 0x9e
 8000752:	ebb3 6212 	subs.w	r2, r3, r2, lsr #24
 8000756:	d409      	bmi.n	800076c <__aeabi_f2uiz+0x28>
 8000758:	ea4f 2300 	mov.w	r3, r0, lsl #8
 800075c:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 8000760:	fa23 f002 	lsr.w	r0, r3, r2
 8000764:	4770      	bx	lr
 8000766:	f04f 0000 	mov.w	r0, #0
 800076a:	4770      	bx	lr
 800076c:	f112 0f61 	cmn.w	r2, #97	; 0x61
 8000770:	d101      	bne.n	8000776 <__aeabi_f2uiz+0x32>
 8000772:	0242      	lsls	r2, r0, #9
 8000774:	d102      	bne.n	800077c <__aeabi_f2uiz+0x38>
 8000776:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800077a:	4770      	bx	lr
 800077c:	f04f 0000 	mov.w	r0, #0
 8000780:	4770      	bx	lr
 8000782:	bf00      	nop

08000784 <Reset_Handler>:
 8000784:	2100      	movs	r1, #0
 8000786:	e003      	b.n	8000790 <LoopCopyDataInit>

08000788 <CopyDataInit>:
 8000788:	4b0b      	ldr	r3, [pc, #44]	; (80007b8 <LoopFillZerobss+0x14>)
 800078a:	585b      	ldr	r3, [r3, r1]
 800078c:	5043      	str	r3, [r0, r1]
 800078e:	3104      	adds	r1, #4

08000790 <LoopCopyDataInit>:
 8000790:	480a      	ldr	r0, [pc, #40]	; (80007bc <LoopFillZerobss+0x18>)
 8000792:	4b0b      	ldr	r3, [pc, #44]	; (80007c0 <LoopFillZerobss+0x1c>)
 8000794:	1842      	adds	r2, r0, r1
 8000796:	429a      	cmp	r2, r3
 8000798:	d3f6      	bcc.n	8000788 <CopyDataInit>
 800079a:	4a0a      	ldr	r2, [pc, #40]	; (80007c4 <LoopFillZerobss+0x20>)
 800079c:	e002      	b.n	80007a4 <LoopFillZerobss>

0800079e <FillZerobss>:
 800079e:	2300      	movs	r3, #0
 80007a0:	f842 3b04 	str.w	r3, [r2], #4

080007a4 <LoopFillZerobss>:
 80007a4:	4b08      	ldr	r3, [pc, #32]	; (80007c8 <LoopFillZerobss+0x24>)
 80007a6:	429a      	cmp	r2, r3
 80007a8:	d3f9      	bcc.n	800079e <FillZerobss>
 80007aa:	f000 fa55 	bl	8000c58 <SystemInit>
 80007ae:	f006 fcc9 	bl	8007144 <__libc_init_array>
 80007b2:	f000 f9ed 	bl	8000b90 <main>
 80007b6:	4770      	bx	lr
 80007b8:	08007a64 	.word	0x08007a64
 80007bc:	20000000 	.word	0x20000000
 80007c0:	20000078 	.word	0x20000078
 80007c4:	20000078 	.word	0x20000078
 80007c8:	20004668 	.word	0x20004668

080007cc <ADC1_2_IRQHandler>:
 80007cc:	e7fe      	b.n	80007cc <ADC1_2_IRQHandler>
	...

080007d0 <NVIC_SetPriorityGrouping>:
 80007d0:	b480      	push	{r7}
 80007d2:	b085      	sub	sp, #20
 80007d4:	af00      	add	r7, sp, #0
 80007d6:	6078      	str	r0, [r7, #4]
 80007d8:	687b      	ldr	r3, [r7, #4]
 80007da:	f003 0307 	and.w	r3, r3, #7
 80007de:	60fb      	str	r3, [r7, #12]
 80007e0:	4b0c      	ldr	r3, [pc, #48]	; (8000814 <NVIC_SetPriorityGrouping+0x44>)
 80007e2:	68db      	ldr	r3, [r3, #12]
 80007e4:	60bb      	str	r3, [r7, #8]
 80007e6:	68ba      	ldr	r2, [r7, #8]
 80007e8:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 80007ec:	4013      	ands	r3, r2
 80007ee:	60bb      	str	r3, [r7, #8]
 80007f0:	68fb      	ldr	r3, [r7, #12]
 80007f2:	021a      	lsls	r2, r3, #8
 80007f4:	68bb      	ldr	r3, [r7, #8]
 80007f6:	4313      	orrs	r3, r2
 80007f8:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 80007fc:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000800:	60bb      	str	r3, [r7, #8]
 8000802:	4a04      	ldr	r2, [pc, #16]	; (8000814 <NVIC_SetPriorityGrouping+0x44>)
 8000804:	68bb      	ldr	r3, [r7, #8]
 8000806:	60d3      	str	r3, [r2, #12]
 8000808:	bf00      	nop
 800080a:	3714      	adds	r7, #20
 800080c:	46bd      	mov	sp, r7
 800080e:	bc80      	pop	{r7}
 8000810:	4770      	bx	lr
 8000812:	bf00      	nop
 8000814:	e000ed00 	.word	0xe000ed00

08000818 <NVIC_SetPriority>:
 8000818:	b480      	push	{r7}
 800081a:	b083      	sub	sp, #12
 800081c:	af00      	add	r7, sp, #0
 800081e:	4603      	mov	r3, r0
 8000820:	6039      	str	r1, [r7, #0]
 8000822:	71fb      	strb	r3, [r7, #7]
 8000824:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000828:	2b00      	cmp	r3, #0
 800082a:	da0b      	bge.n	8000844 <NVIC_SetPriority+0x2c>
 800082c:	683b      	ldr	r3, [r7, #0]
 800082e:	b2da      	uxtb	r2, r3
 8000830:	490c      	ldr	r1, [pc, #48]	; (8000864 <NVIC_SetPriority+0x4c>)
 8000832:	79fb      	ldrb	r3, [r7, #7]
 8000834:	f003 030f 	and.w	r3, r3, #15
 8000838:	3b04      	subs	r3, #4
 800083a:	0112      	lsls	r2, r2, #4
 800083c:	b2d2      	uxtb	r2, r2
 800083e:	440b      	add	r3, r1
 8000840:	761a      	strb	r2, [r3, #24]
 8000842:	e009      	b.n	8000858 <NVIC_SetPriority+0x40>
 8000844:	683b      	ldr	r3, [r7, #0]
 8000846:	b2da      	uxtb	r2, r3
 8000848:	4907      	ldr	r1, [pc, #28]	; (8000868 <NVIC_SetPriority+0x50>)
 800084a:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800084e:	0112      	lsls	r2, r2, #4
 8000850:	b2d2      	uxtb	r2, r2
 8000852:	440b      	add	r3, r1
 8000854:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8000858:	bf00      	nop
 800085a:	370c      	adds	r7, #12
 800085c:	46bd      	mov	sp, r7
 800085e:	bc80      	pop	{r7}
 8000860:	4770      	bx	lr
 8000862:	bf00      	nop
 8000864:	e000ed00 	.word	0xe000ed00
 8000868:	e000e100 	.word	0xe000e100

0800086c <SysTick_Config>:
 800086c:	b580      	push	{r7, lr}
 800086e:	b082      	sub	sp, #8
 8000870:	af00      	add	r7, sp, #0
 8000872:	6078      	str	r0, [r7, #4]
 8000874:	687b      	ldr	r3, [r7, #4]
 8000876:	3b01      	subs	r3, #1
 8000878:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 800087c:	d301      	bcc.n	8000882 <SysTick_Config+0x16>
 800087e:	2301      	movs	r3, #1
 8000880:	e00f      	b.n	80008a2 <SysTick_Config+0x36>
 8000882:	4a0a      	ldr	r2, [pc, #40]	; (80008ac <SysTick_Config+0x40>)
 8000884:	687b      	ldr	r3, [r7, #4]
 8000886:	3b01      	subs	r3, #1
 8000888:	6053      	str	r3, [r2, #4]
 800088a:	210f      	movs	r1, #15
 800088c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000890:	f7ff ffc2 	bl	8000818 <NVIC_SetPriority>
 8000894:	4b05      	ldr	r3, [pc, #20]	; (80008ac <SysTick_Config+0x40>)
 8000896:	2200      	movs	r2, #0
 8000898:	609a      	str	r2, [r3, #8]
 800089a:	4b04      	ldr	r3, [pc, #16]	; (80008ac <SysTick_Config+0x40>)
 800089c:	2207      	movs	r2, #7
 800089e:	601a      	str	r2, [r3, #0]
 80008a0:	2300      	movs	r3, #0
 80008a2:	4618      	mov	r0, r3
 80008a4:	3708      	adds	r7, #8
 80008a6:	46bd      	mov	sp, r7
 80008a8:	bd80      	pop	{r7, pc}
 80008aa:	bf00      	nop
 80008ac:	e000e010 	.word	0xe000e010

080008b0 <LL_FLASH_SetLatency>:
 80008b0:	b480      	push	{r7}
 80008b2:	b083      	sub	sp, #12
 80008b4:	af00      	add	r7, sp, #0
 80008b6:	6078      	str	r0, [r7, #4]
 80008b8:	4b06      	ldr	r3, [pc, #24]	; (80008d4 <LL_FLASH_SetLatency+0x24>)
 80008ba:	681b      	ldr	r3, [r3, #0]
 80008bc:	f023 0207 	bic.w	r2, r3, #7
 80008c0:	4904      	ldr	r1, [pc, #16]	; (80008d4 <LL_FLASH_SetLatency+0x24>)
 80008c2:	687b      	ldr	r3, [r7, #4]
 80008c4:	4313      	orrs	r3, r2
 80008c6:	600b      	str	r3, [r1, #0]
 80008c8:	bf00      	nop
 80008ca:	370c      	adds	r7, #12
 80008cc:	46bd      	mov	sp, r7
 80008ce:	bc80      	pop	{r7}
 80008d0:	4770      	bx	lr
 80008d2:	bf00      	nop
 80008d4:	40022000 	.word	0x40022000

080008d8 <LL_APB2_GRP1_EnableClock>:
 80008d8:	b480      	push	{r7}
 80008da:	b085      	sub	sp, #20
 80008dc:	af00      	add	r7, sp, #0
 80008de:	6078      	str	r0, [r7, #4]
 80008e0:	4b08      	ldr	r3, [pc, #32]	; (8000904 <LL_APB2_GRP1_EnableClock+0x2c>)
 80008e2:	699a      	ldr	r2, [r3, #24]
 80008e4:	4907      	ldr	r1, [pc, #28]	; (8000904 <LL_APB2_GRP1_EnableClock+0x2c>)
 80008e6:	687b      	ldr	r3, [r7, #4]
 80008e8:	4313      	orrs	r3, r2
 80008ea:	618b      	str	r3, [r1, #24]
 80008ec:	4b05      	ldr	r3, [pc, #20]	; (8000904 <LL_APB2_GRP1_EnableClock+0x2c>)
 80008ee:	699a      	ldr	r2, [r3, #24]
 80008f0:	687b      	ldr	r3, [r7, #4]
 80008f2:	4013      	ands	r3, r2
 80008f4:	60fb      	str	r3, [r7, #12]
 80008f6:	68fb      	ldr	r3, [r7, #12]
 80008f8:	bf00      	nop
 80008fa:	3714      	adds	r7, #20
 80008fc:	46bd      	mov	sp, r7
 80008fe:	bc80      	pop	{r7}
 8000900:	4770      	bx	lr
 8000902:	bf00      	nop
 8000904:	40021000 	.word	0x40021000

08000908 <LL_GPIO_SetPinMode>:
 8000908:	b490      	push	{r4, r7}
 800090a:	b088      	sub	sp, #32
 800090c:	af00      	add	r7, sp, #0
 800090e:	60f8      	str	r0, [r7, #12]
 8000910:	60b9      	str	r1, [r7, #8]
 8000912:	607a      	str	r2, [r7, #4]
 8000914:	68fb      	ldr	r3, [r7, #12]
 8000916:	461a      	mov	r2, r3
 8000918:	68bb      	ldr	r3, [r7, #8]
 800091a:	0e1b      	lsrs	r3, r3, #24
 800091c:	4413      	add	r3, r2
 800091e:	461c      	mov	r4, r3
 8000920:	6822      	ldr	r2, [r4, #0]
 8000922:	68bb      	ldr	r3, [r7, #8]
 8000924:	617b      	str	r3, [r7, #20]
 8000926:	697b      	ldr	r3, [r7, #20]
 8000928:	fa93 f3a3 	rbit	r3, r3
 800092c:	613b      	str	r3, [r7, #16]
 800092e:	693b      	ldr	r3, [r7, #16]
 8000930:	fab3 f383 	clz	r3, r3
 8000934:	009b      	lsls	r3, r3, #2
 8000936:	210f      	movs	r1, #15
 8000938:	fa01 f303 	lsl.w	r3, r1, r3
 800093c:	43db      	mvns	r3, r3
 800093e:	401a      	ands	r2, r3
 8000940:	68bb      	ldr	r3, [r7, #8]
 8000942:	61fb      	str	r3, [r7, #28]
 8000944:	69fb      	ldr	r3, [r7, #28]
 8000946:	fa93 f3a3 	rbit	r3, r3
 800094a:	61bb      	str	r3, [r7, #24]
 800094c:	69bb      	ldr	r3, [r7, #24]
 800094e:	fab3 f383 	clz	r3, r3
 8000952:	009b      	lsls	r3, r3, #2
 8000954:	6879      	ldr	r1, [r7, #4]
 8000956:	fa01 f303 	lsl.w	r3, r1, r3
 800095a:	4313      	orrs	r3, r2
 800095c:	6023      	str	r3, [r4, #0]
 800095e:	bf00      	nop
 8000960:	3720      	adds	r7, #32
 8000962:	46bd      	mov	sp, r7
 8000964:	bc90      	pop	{r4, r7}
 8000966:	4770      	bx	lr

08000968 <LL_GPIO_SetOutputPin>:
 8000968:	b480      	push	{r7}
 800096a:	b083      	sub	sp, #12
 800096c:	af00      	add	r7, sp, #0
 800096e:	6078      	str	r0, [r7, #4]
 8000970:	6039      	str	r1, [r7, #0]
 8000972:	683b      	ldr	r3, [r7, #0]
 8000974:	0a1b      	lsrs	r3, r3, #8
 8000976:	b29a      	uxth	r2, r3
 8000978:	687b      	ldr	r3, [r7, #4]
 800097a:	611a      	str	r2, [r3, #16]
 800097c:	bf00      	nop
 800097e:	370c      	adds	r7, #12
 8000980:	46bd      	mov	sp, r7
 8000982:	bc80      	pop	{r7}
 8000984:	4770      	bx	lr
	...

08000988 <LL_RCC_HSE_Enable>:
 8000988:	b480      	push	{r7}
 800098a:	af00      	add	r7, sp, #0
 800098c:	4b04      	ldr	r3, [pc, #16]	; (80009a0 <LL_RCC_HSE_Enable+0x18>)
 800098e:	681b      	ldr	r3, [r3, #0]
 8000990:	4a03      	ldr	r2, [pc, #12]	; (80009a0 <LL_RCC_HSE_Enable+0x18>)
 8000992:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000996:	6013      	str	r3, [r2, #0]
 8000998:	bf00      	nop
 800099a:	46bd      	mov	sp, r7
 800099c:	bc80      	pop	{r7}
 800099e:	4770      	bx	lr
 80009a0:	40021000 	.word	0x40021000

080009a4 <LL_RCC_HSE_IsReady>:
 80009a4:	b480      	push	{r7}
 80009a6:	af00      	add	r7, sp, #0
 80009a8:	4b06      	ldr	r3, [pc, #24]	; (80009c4 <LL_RCC_HSE_IsReady+0x20>)
 80009aa:	681b      	ldr	r3, [r3, #0]
 80009ac:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80009b0:	f5b3 3f00 	cmp.w	r3, #131072	; 0x20000
 80009b4:	bf0c      	ite	eq
 80009b6:	2301      	moveq	r3, #1
 80009b8:	2300      	movne	r3, #0
 80009ba:	b2db      	uxtb	r3, r3
 80009bc:	4618      	mov	r0, r3
 80009be:	46bd      	mov	sp, r7
 80009c0:	bc80      	pop	{r7}
 80009c2:	4770      	bx	lr
 80009c4:	40021000 	.word	0x40021000

080009c8 <LL_RCC_SetSysClkSource>:
 80009c8:	b480      	push	{r7}
 80009ca:	b083      	sub	sp, #12
 80009cc:	af00      	add	r7, sp, #0
 80009ce:	6078      	str	r0, [r7, #4]
 80009d0:	4b06      	ldr	r3, [pc, #24]	; (80009ec <LL_RCC_SetSysClkSource+0x24>)
 80009d2:	685b      	ldr	r3, [r3, #4]
 80009d4:	f023 0203 	bic.w	r2, r3, #3
 80009d8:	4904      	ldr	r1, [pc, #16]	; (80009ec <LL_RCC_SetSysClkSource+0x24>)
 80009da:	687b      	ldr	r3, [r7, #4]
 80009dc:	4313      	orrs	r3, r2
 80009de:	604b      	str	r3, [r1, #4]
 80009e0:	bf00      	nop
 80009e2:	370c      	adds	r7, #12
 80009e4:	46bd      	mov	sp, r7
 80009e6:	bc80      	pop	{r7}
 80009e8:	4770      	bx	lr
 80009ea:	bf00      	nop
 80009ec:	40021000 	.word	0x40021000

080009f0 <LL_RCC_GetSysClkSource>:
 80009f0:	b480      	push	{r7}
 80009f2:	af00      	add	r7, sp, #0
 80009f4:	4b03      	ldr	r3, [pc, #12]	; (8000a04 <LL_RCC_GetSysClkSource+0x14>)
 80009f6:	685b      	ldr	r3, [r3, #4]
 80009f8:	f003 030c 	and.w	r3, r3, #12
 80009fc:	4618      	mov	r0, r3
 80009fe:	46bd      	mov	sp, r7
 8000a00:	bc80      	pop	{r7}
 8000a02:	4770      	bx	lr
 8000a04:	40021000 	.word	0x40021000

08000a08 <LL_RCC_SetAHBPrescaler>:
 8000a08:	b480      	push	{r7}
 8000a0a:	b083      	sub	sp, #12
 8000a0c:	af00      	add	r7, sp, #0
 8000a0e:	6078      	str	r0, [r7, #4]
 8000a10:	4b06      	ldr	r3, [pc, #24]	; (8000a2c <LL_RCC_SetAHBPrescaler+0x24>)
 8000a12:	685b      	ldr	r3, [r3, #4]
 8000a14:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
 8000a18:	4904      	ldr	r1, [pc, #16]	; (8000a2c <LL_RCC_SetAHBPrescaler+0x24>)
 8000a1a:	687b      	ldr	r3, [r7, #4]
 8000a1c:	4313      	orrs	r3, r2
 8000a1e:	604b      	str	r3, [r1, #4]
 8000a20:	bf00      	nop
 8000a22:	370c      	adds	r7, #12
 8000a24:	46bd      	mov	sp, r7
 8000a26:	bc80      	pop	{r7}
 8000a28:	4770      	bx	lr
 8000a2a:	bf00      	nop
 8000a2c:	40021000 	.word	0x40021000

08000a30 <LL_RCC_SetAPB1Prescaler>:
 8000a30:	b480      	push	{r7}
 8000a32:	b083      	sub	sp, #12
 8000a34:	af00      	add	r7, sp, #0
 8000a36:	6078      	str	r0, [r7, #4]
 8000a38:	4b06      	ldr	r3, [pc, #24]	; (8000a54 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000a3a:	685b      	ldr	r3, [r3, #4]
 8000a3c:	f423 62e0 	bic.w	r2, r3, #1792	; 0x700
 8000a40:	4904      	ldr	r1, [pc, #16]	; (8000a54 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000a42:	687b      	ldr	r3, [r7, #4]
 8000a44:	4313      	orrs	r3, r2
 8000a46:	604b      	str	r3, [r1, #4]
 8000a48:	bf00      	nop
 8000a4a:	370c      	adds	r7, #12
 8000a4c:	46bd      	mov	sp, r7
 8000a4e:	bc80      	pop	{r7}
 8000a50:	4770      	bx	lr
 8000a52:	bf00      	nop
 8000a54:	40021000 	.word	0x40021000

08000a58 <LL_RCC_SetAPB2Prescaler>:
 8000a58:	b480      	push	{r7}
 8000a5a:	b083      	sub	sp, #12
 8000a5c:	af00      	add	r7, sp, #0
 8000a5e:	6078      	str	r0, [r7, #4]
 8000a60:	4b06      	ldr	r3, [pc, #24]	; (8000a7c <LL_RCC_SetAPB2Prescaler+0x24>)
 8000a62:	685b      	ldr	r3, [r3, #4]
 8000a64:	f423 5260 	bic.w	r2, r3, #14336	; 0x3800
 8000a68:	4904      	ldr	r1, [pc, #16]	; (8000a7c <LL_RCC_SetAPB2Prescaler+0x24>)
 8000a6a:	687b      	ldr	r3, [r7, #4]
 8000a6c:	4313      	orrs	r3, r2
 8000a6e:	604b      	str	r3, [r1, #4]
 8000a70:	bf00      	nop
 8000a72:	370c      	adds	r7, #12
 8000a74:	46bd      	mov	sp, r7
 8000a76:	bc80      	pop	{r7}
 8000a78:	4770      	bx	lr
 8000a7a:	bf00      	nop
 8000a7c:	40021000 	.word	0x40021000

08000a80 <LL_RCC_PLL_Enable>:
 8000a80:	b480      	push	{r7}
 8000a82:	af00      	add	r7, sp, #0
 8000a84:	4b04      	ldr	r3, [pc, #16]	; (8000a98 <LL_RCC_PLL_Enable+0x18>)
 8000a86:	681b      	ldr	r3, [r3, #0]
 8000a88:	4a03      	ldr	r2, [pc, #12]	; (8000a98 <LL_RCC_PLL_Enable+0x18>)
 8000a8a:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8000a8e:	6013      	str	r3, [r2, #0]
 8000a90:	bf00      	nop
 8000a92:	46bd      	mov	sp, r7
 8000a94:	bc80      	pop	{r7}
 8000a96:	4770      	bx	lr
 8000a98:	40021000 	.word	0x40021000

08000a9c <LL_RCC_PLL_IsReady>:
 8000a9c:	b480      	push	{r7}
 8000a9e:	af00      	add	r7, sp, #0
 8000aa0:	4b06      	ldr	r3, [pc, #24]	; (8000abc <LL_RCC_PLL_IsReady+0x20>)
 8000aa2:	681b      	ldr	r3, [r3, #0]
 8000aa4:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000aa8:	f1b3 7f00 	cmp.w	r3, #33554432	; 0x2000000
 8000aac:	bf0c      	ite	eq
 8000aae:	2301      	moveq	r3, #1
 8000ab0:	2300      	movne	r3, #0
 8000ab2:	b2db      	uxtb	r3, r3
 8000ab4:	4618      	mov	r0, r3
 8000ab6:	46bd      	mov	sp, r7
 8000ab8:	bc80      	pop	{r7}
 8000aba:	4770      	bx	lr
 8000abc:	40021000 	.word	0x40021000

08000ac0 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000ac0:	b480      	push	{r7}
 8000ac2:	b083      	sub	sp, #12
 8000ac4:	af00      	add	r7, sp, #0
 8000ac6:	6078      	str	r0, [r7, #4]
 8000ac8:	6039      	str	r1, [r7, #0]
 8000aca:	4b08      	ldr	r3, [pc, #32]	; (8000aec <LL_RCC_PLL_ConfigDomain_SYS+0x2c>)
 8000acc:	685b      	ldr	r3, [r3, #4]
 8000ace:	f423 127c 	bic.w	r2, r3, #4128768	; 0x3f0000
 8000ad2:	687b      	ldr	r3, [r7, #4]
 8000ad4:	f403 3140 	and.w	r1, r3, #196608	; 0x30000
 8000ad8:	683b      	ldr	r3, [r7, #0]
 8000ada:	430b      	orrs	r3, r1
 8000adc:	4903      	ldr	r1, [pc, #12]	; (8000aec <LL_RCC_PLL_ConfigDomain_SYS+0x2c>)
 8000ade:	4313      	orrs	r3, r2
 8000ae0:	604b      	str	r3, [r1, #4]
 8000ae2:	bf00      	nop
 8000ae4:	370c      	adds	r7, #12
 8000ae6:	46bd      	mov	sp, r7
 8000ae8:	bc80      	pop	{r7}
 8000aea:	4770      	bx	lr
 8000aec:	40021000 	.word	0x40021000

08000af0 <rcc_config>:
 8000af0:	b580      	push	{r7, lr}
 8000af2:	af00      	add	r7, sp, #0
 8000af4:	f7ff ff48 	bl	8000988 <LL_RCC_HSE_Enable>
 8000af8:	bf00      	nop
 8000afa:	f7ff ff53 	bl	80009a4 <LL_RCC_HSE_IsReady>
 8000afe:	4603      	mov	r3, r0
 8000b00:	2b01      	cmp	r3, #1
 8000b02:	d1fa      	bne.n	8000afa <rcc_config+0xa>
 8000b04:	2002      	movs	r0, #2
 8000b06:	f7ff fed3 	bl	80008b0 <LL_FLASH_SetLatency>
 8000b0a:	f44f 11e0 	mov.w	r1, #1835008	; 0x1c0000
 8000b0e:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8000b12:	f7ff ffd5 	bl	8000ac0 <LL_RCC_PLL_ConfigDomain_SYS>
 8000b16:	f7ff ffb3 	bl	8000a80 <LL_RCC_PLL_Enable>
 8000b1a:	bf00      	nop
 8000b1c:	f7ff ffbe 	bl	8000a9c <LL_RCC_PLL_IsReady>
 8000b20:	4603      	mov	r3, r0
 8000b22:	2b01      	cmp	r3, #1
 8000b24:	d1fa      	bne.n	8000b1c <rcc_config+0x2c>
 8000b26:	2000      	movs	r0, #0
 8000b28:	f7ff ff6e 	bl	8000a08 <LL_RCC_SetAHBPrescaler>
 8000b2c:	2002      	movs	r0, #2
 8000b2e:	f7ff ff4b 	bl	80009c8 <LL_RCC_SetSysClkSource>
 8000b32:	bf00      	nop
 8000b34:	f7ff ff5c 	bl	80009f0 <LL_RCC_GetSysClkSource>
 8000b38:	4603      	mov	r3, r0
 8000b3a:	2b08      	cmp	r3, #8
 8000b3c:	d1fa      	bne.n	8000b34 <rcc_config+0x44>
 8000b3e:	f44f 6080 	mov.w	r0, #1024	; 0x400
 8000b42:	f7ff ff75 	bl	8000a30 <LL_RCC_SetAPB1Prescaler>
 8000b46:	2000      	movs	r0, #0
 8000b48:	f7ff ff86 	bl	8000a58 <LL_RCC_SetAPB2Prescaler>
 8000b4c:	4803      	ldr	r0, [pc, #12]	; (8000b5c <rcc_config+0x6c>)
 8000b4e:	f7ff fe8d 	bl	800086c <SysTick_Config>
 8000b52:	4b03      	ldr	r3, [pc, #12]	; (8000b60 <rcc_config+0x70>)
 8000b54:	4a03      	ldr	r2, [pc, #12]	; (8000b64 <rcc_config+0x74>)
 8000b56:	601a      	str	r2, [r3, #0]
 8000b58:	bf00      	nop
 8000b5a:	bd80      	pop	{r7, pc}
 8000b5c:	00011940 	.word	0x00011940
 8000b60:	20000000 	.word	0x20000000
 8000b64:	044aa200 	.word	0x044aa200

08000b68 <gpio_config>:
 8000b68:	b580      	push	{r7, lr}
 8000b6a:	af00      	add	r7, sp, #0
 8000b6c:	2010      	movs	r0, #16
 8000b6e:	f7ff feb3 	bl	80008d8 <LL_APB2_GRP1_EnableClock>
 8000b72:	2201      	movs	r2, #1
 8000b74:	4904      	ldr	r1, [pc, #16]	; (8000b88 <gpio_config+0x20>)
 8000b76:	4805      	ldr	r0, [pc, #20]	; (8000b8c <gpio_config+0x24>)
 8000b78:	f7ff fec6 	bl	8000908 <LL_GPIO_SetPinMode>
 8000b7c:	4902      	ldr	r1, [pc, #8]	; (8000b88 <gpio_config+0x20>)
 8000b7e:	4803      	ldr	r0, [pc, #12]	; (8000b8c <gpio_config+0x24>)
 8000b80:	f7ff fef2 	bl	8000968 <LL_GPIO_SetOutputPin>
 8000b84:	bf00      	nop
 8000b86:	bd80      	pop	{r7, pc}
 8000b88:	04200020 	.word	0x04200020
 8000b8c:	40011000 	.word	0x40011000

08000b90 <main>:
 8000b90:	b580      	push	{r7, lr}
 8000b92:	b084      	sub	sp, #16
 8000b94:	af04      	add	r7, sp, #16
 8000b96:	f7ff ffab 	bl	8000af0 <rcc_config>
 8000b9a:	f7ff ffe5 	bl	8000b68 <gpio_config>
 8000b9e:	2000      	movs	r0, #0
 8000ba0:	f7ff fe16 	bl	80007d0 <NVIC_SetPriorityGrouping>
 8000ba4:	4b1c      	ldr	r3, [pc, #112]	; (8000c18 <main+0x88>)
 8000ba6:	9302      	str	r3, [sp, #8]
 8000ba8:	4b1c      	ldr	r3, [pc, #112]	; (8000c1c <main+0x8c>)
 8000baa:	9301      	str	r3, [sp, #4]
 8000bac:	2303      	movs	r3, #3
 8000bae:	9300      	str	r3, [sp, #0]
 8000bb0:	2300      	movs	r3, #0
 8000bb2:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000bb6:	491a      	ldr	r1, [pc, #104]	; (8000c20 <main+0x90>)
 8000bb8:	481a      	ldr	r0, [pc, #104]	; (8000c24 <main+0x94>)
 8000bba:	f004 fd53 	bl	8005664 <xTaskCreateStatic>
 8000bbe:	4b1a      	ldr	r3, [pc, #104]	; (8000c28 <main+0x98>)
 8000bc0:	9302      	str	r3, [sp, #8]
 8000bc2:	4b1a      	ldr	r3, [pc, #104]	; (8000c2c <main+0x9c>)
 8000bc4:	9301      	str	r3, [sp, #4]
 8000bc6:	2305      	movs	r3, #5
 8000bc8:	9300      	str	r3, [sp, #0]
 8000bca:	2300      	movs	r3, #0
 8000bcc:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000bd0:	4917      	ldr	r1, [pc, #92]	; (8000c30 <main+0xa0>)
 8000bd2:	4818      	ldr	r0, [pc, #96]	; (8000c34 <main+0xa4>)
 8000bd4:	f004 fd46 	bl	8005664 <xTaskCreateStatic>
 8000bd8:	4b17      	ldr	r3, [pc, #92]	; (8000c38 <main+0xa8>)
 8000bda:	9302      	str	r3, [sp, #8]
 8000bdc:	4b17      	ldr	r3, [pc, #92]	; (8000c3c <main+0xac>)
 8000bde:	9301      	str	r3, [sp, #4]
 8000be0:	2302      	movs	r3, #2
 8000be2:	9300      	str	r3, [sp, #0]
 8000be4:	2300      	movs	r3, #0
 8000be6:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000bea:	4915      	ldr	r1, [pc, #84]	; (8000c40 <main+0xb0>)
 8000bec:	4815      	ldr	r0, [pc, #84]	; (8000c44 <main+0xb4>)
 8000bee:	f004 fd39 	bl	8005664 <xTaskCreateStatic>
 8000bf2:	4b15      	ldr	r3, [pc, #84]	; (8000c48 <main+0xb8>)
 8000bf4:	9302      	str	r3, [sp, #8]
 8000bf6:	4b15      	ldr	r3, [pc, #84]	; (8000c4c <main+0xbc>)
 8000bf8:	9301      	str	r3, [sp, #4]
 8000bfa:	2303      	movs	r3, #3
 8000bfc:	9300      	str	r3, [sp, #0]
 8000bfe:	2300      	movs	r3, #0
 8000c00:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000c04:	4912      	ldr	r1, [pc, #72]	; (8000c50 <main+0xc0>)
 8000c06:	4813      	ldr	r0, [pc, #76]	; (8000c54 <main+0xc4>)
 8000c08:	f004 fd2c 	bl	8005664 <xTaskCreateStatic>
 8000c0c:	f004 fed0 	bl	80059b0 <vTaskStartScheduler>
 8000c10:	2300      	movs	r3, #0
 8000c12:	4618      	mov	r0, r3
 8000c14:	46bd      	mov	sp, r7
 8000c16:	bd80      	pop	{r7, pc}
 8000c18:	20001c80 	.word	0x20001c80
 8000c1c:	200021f0 	.word	0x200021f0
 8000c20:	08007338 	.word	0x08007338
 8000c24:	080043b5 	.word	0x080043b5
 8000c28:	200042a8 	.word	0x200042a8
 8000c2c:	200031f0 	.word	0x200031f0
 8000c30:	08007344 	.word	0x08007344
 8000c34:	08003811 	.word	0x08003811
 8000c38:	200041f0 	.word	0x200041f0
 8000c3c:	20001d38 	.word	0x20001d38
 8000c40:	08007350 	.word	0x08007350
 8000c44:	08001e41 	.word	0x08001e41
 8000c48:	20002138 	.word	0x20002138
 8000c4c:	20000c80 	.word	0x20000c80
 8000c50:	0800735c 	.word	0x0800735c
 8000c54:	08004705 	.word	0x08004705

08000c58 <SystemInit>:
 8000c58:	b480      	push	{r7}
 8000c5a:	af00      	add	r7, sp, #0
 8000c5c:	4b15      	ldr	r3, [pc, #84]	; (8000cb4 <SystemInit+0x5c>)
 8000c5e:	681b      	ldr	r3, [r3, #0]
 8000c60:	4a14      	ldr	r2, [pc, #80]	; (8000cb4 <SystemInit+0x5c>)
 8000c62:	f043 0301 	orr.w	r3, r3, #1
 8000c66:	6013      	str	r3, [r2, #0]
 8000c68:	4b12      	ldr	r3, [pc, #72]	; (8000cb4 <SystemInit+0x5c>)
 8000c6a:	685a      	ldr	r2, [r3, #4]
 8000c6c:	4911      	ldr	r1, [pc, #68]	; (8000cb4 <SystemInit+0x5c>)
 8000c6e:	4b12      	ldr	r3, [pc, #72]	; (8000cb8 <SystemInit+0x60>)
 8000c70:	4013      	ands	r3, r2
 8000c72:	604b      	str	r3, [r1, #4]
 8000c74:	4b0f      	ldr	r3, [pc, #60]	; (8000cb4 <SystemInit+0x5c>)
 8000c76:	681b      	ldr	r3, [r3, #0]
 8000c78:	4a0e      	ldr	r2, [pc, #56]	; (8000cb4 <SystemInit+0x5c>)
 8000c7a:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
 8000c7e:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8000c82:	6013      	str	r3, [r2, #0]
 8000c84:	4b0b      	ldr	r3, [pc, #44]	; (8000cb4 <SystemInit+0x5c>)
 8000c86:	681b      	ldr	r3, [r3, #0]
 8000c88:	4a0a      	ldr	r2, [pc, #40]	; (8000cb4 <SystemInit+0x5c>)
 8000c8a:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8000c8e:	6013      	str	r3, [r2, #0]
 8000c90:	4b08      	ldr	r3, [pc, #32]	; (8000cb4 <SystemInit+0x5c>)
 8000c92:	685b      	ldr	r3, [r3, #4]
 8000c94:	4a07      	ldr	r2, [pc, #28]	; (8000cb4 <SystemInit+0x5c>)
 8000c96:	f423 03fe 	bic.w	r3, r3, #8323072	; 0x7f0000
 8000c9a:	6053      	str	r3, [r2, #4]
 8000c9c:	4b05      	ldr	r3, [pc, #20]	; (8000cb4 <SystemInit+0x5c>)
 8000c9e:	f44f 021f 	mov.w	r2, #10420224	; 0x9f0000
 8000ca2:	609a      	str	r2, [r3, #8]
 8000ca4:	4b05      	ldr	r3, [pc, #20]	; (8000cbc <SystemInit+0x64>)
 8000ca6:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8000caa:	609a      	str	r2, [r3, #8]
 8000cac:	bf00      	nop
 8000cae:	46bd      	mov	sp, r7
 8000cb0:	bc80      	pop	{r7}
 8000cb2:	4770      	bx	lr
 8000cb4:	40021000 	.word	0x40021000
 8000cb8:	f8ff0000 	.word	0xf8ff0000
 8000cbc:	e000ed00 	.word	0xe000ed00

08000cc0 <ds_start_all>:
 8000cc0:	b580      	push	{r7, lr}
 8000cc2:	b082      	sub	sp, #8
 8000cc4:	af00      	add	r7, sp, #0
 8000cc6:	6078      	str	r0, [r7, #4]
 8000cc8:	6878      	ldr	r0, [r7, #4]
 8000cca:	f001 feb6 	bl	8002a3a <ow_reset>
 8000cce:	21cc      	movs	r1, #204	; 0xcc
 8000cd0:	6878      	ldr	r0, [r7, #4]
 8000cd2:	f001 ff32 	bl	8002b3a <ow_write_byte>
 8000cd6:	2144      	movs	r1, #68	; 0x44
 8000cd8:	6878      	ldr	r0, [r7, #4]
 8000cda:	f001 ff2e 	bl	8002b3a <ow_write_byte>
 8000cde:	2300      	movs	r3, #0
 8000ce0:	4618      	mov	r0, r3
 8000ce2:	3708      	adds	r7, #8
 8000ce4:	46bd      	mov	sp, r7
 8000ce6:	bd80      	pop	{r7, pc}

08000ce8 <ds_read>:
 8000ce8:	b590      	push	{r4, r7, lr}
 8000cea:	b08b      	sub	sp, #44	; 0x2c
 8000cec:	af00      	add	r7, sp, #0
 8000cee:	60f8      	str	r0, [r7, #12]
 8000cf0:	60b9      	str	r1, [r7, #8]
 8000cf2:	607a      	str	r2, [r7, #4]
 8000cf4:	2300      	movs	r3, #0
 8000cf6:	f887 3024 	strb.w	r3, [r7, #36]	; 0x24
 8000cfa:	2300      	movs	r3, #0
 8000cfc:	77fb      	strb	r3, [r7, #31]
 8000cfe:	68bb      	ldr	r3, [r7, #8]
 8000d00:	781b      	ldrb	r3, [r3, #0]
 8000d02:	2b28      	cmp	r3, #40	; 0x28
 8000d04:	d001      	beq.n	8000d0a <ds_read+0x22>
 8000d06:	2301      	movs	r3, #1
 8000d08:	e0d2      	b.n	8000eb0 <ds_read+0x1c8>
 8000d0a:	68f8      	ldr	r0, [r7, #12]
 8000d0c:	f001 feec 	bl	8002ae8 <ow_read_bit>
 8000d10:	4603      	mov	r3, r0
 8000d12:	2b00      	cmp	r3, #0
 8000d14:	d101      	bne.n	8000d1a <ds_read+0x32>
 8000d16:	2301      	movs	r3, #1
 8000d18:	e0ca      	b.n	8000eb0 <ds_read+0x1c8>
 8000d1a:	68f8      	ldr	r0, [r7, #12]
 8000d1c:	f001 fe8d 	bl	8002a3a <ow_reset>
 8000d20:	68b9      	ldr	r1, [r7, #8]
 8000d22:	68f8      	ldr	r0, [r7, #12]
 8000d24:	f001 ff69 	bl	8002bfa <ow_select>
 8000d28:	21be      	movs	r1, #190	; 0xbe
 8000d2a:	68f8      	ldr	r0, [r7, #12]
 8000d2c:	f001 ff05 	bl	8002b3a <ow_write_byte>
 8000d30:	2300      	movs	r3, #0
 8000d32:	77fb      	strb	r3, [r7, #31]
 8000d34:	e00d      	b.n	8000d52 <ds_read+0x6a>
 8000d36:	7ffc      	ldrb	r4, [r7, #31]
 8000d38:	68f8      	ldr	r0, [r7, #12]
 8000d3a:	f001 ff1b 	bl	8002b74 <ow_read_byte>
 8000d3e:	4603      	mov	r3, r0
 8000d40:	461a      	mov	r2, r3
 8000d42:	f107 0328 	add.w	r3, r7, #40	; 0x28
 8000d46:	4423      	add	r3, r4
 8000d48:	f803 2c14 	strb.w	r2, [r3, #-20]
 8000d4c:	7ffb      	ldrb	r3, [r7, #31]
 8000d4e:	3301      	adds	r3, #1
 8000d50:	77fb      	strb	r3, [r7, #31]
 8000d52:	7ffb      	ldrb	r3, [r7, #31]
 8000d54:	2b08      	cmp	r3, #8
 8000d56:	d9ee      	bls.n	8000d36 <ds_read+0x4e>
 8000d58:	f107 0314 	add.w	r3, r7, #20
 8000d5c:	2108      	movs	r1, #8
 8000d5e:	4618      	mov	r0, r3
 8000d60:	f001 ff69 	bl	8002c36 <ow_crc8>
 8000d64:	4603      	mov	r3, r0
 8000d66:	77bb      	strb	r3, [r7, #30]
 8000d68:	7d3b      	ldrb	r3, [r7, #20]
 8000d6a:	b21a      	sxth	r2, r3
 8000d6c:	7d7b      	ldrb	r3, [r7, #21]
 8000d6e:	021b      	lsls	r3, r3, #8
 8000d70:	b21b      	sxth	r3, r3
 8000d72:	4313      	orrs	r3, r2
 8000d74:	b21b      	sxth	r3, r3
 8000d76:	84fb      	strh	r3, [r7, #38]	; 0x26
 8000d78:	68f8      	ldr	r0, [r7, #12]
 8000d7a:	f001 fe5e 	bl	8002a3a <ow_reset>
 8000d7e:	f9b7 3026 	ldrsh.w	r3, [r7, #38]	; 0x26
 8000d82:	2b00      	cmp	r3, #0
 8000d84:	da05      	bge.n	8000d92 <ds_read+0xaa>
 8000d86:	8cfb      	ldrh	r3, [r7, #38]	; 0x26
 8000d88:	425b      	negs	r3, r3
 8000d8a:	84fb      	strh	r3, [r7, #38]	; 0x26
 8000d8c:	2301      	movs	r3, #1
 8000d8e:	f887 3024 	strb.w	r3, [r7, #36]	; 0x24
 8000d92:	7e3b      	ldrb	r3, [r7, #24]
 8000d94:	115b      	asrs	r3, r3, #5
 8000d96:	b2db      	uxtb	r3, r3
 8000d98:	f003 0303 	and.w	r3, r3, #3
 8000d9c:	b2db      	uxtb	r3, r3
 8000d9e:	3309      	adds	r3, #9
 8000da0:	777b      	strb	r3, [r7, #29]
 8000da2:	8cfb      	ldrh	r3, [r7, #38]	; 0x26
 8000da4:	091b      	lsrs	r3, r3, #4
 8000da6:	b29b      	uxth	r3, r3
 8000da8:	f887 3025 	strb.w	r3, [r7, #37]	; 0x25
 8000dac:	8cfb      	ldrh	r3, [r7, #38]	; 0x26
 8000dae:	0a1b      	lsrs	r3, r3, #8
 8000db0:	b29b      	uxth	r3, r3
 8000db2:	011b      	lsls	r3, r3, #4
 8000db4:	b25b      	sxtb	r3, r3
 8000db6:	f003 0370 	and.w	r3, r3, #112	; 0x70
 8000dba:	b25a      	sxtb	r2, r3
 8000dbc:	f897 3025 	ldrb.w	r3, [r7, #37]	; 0x25
 8000dc0:	4313      	orrs	r3, r2
 8000dc2:	f887 3025 	strb.w	r3, [r7, #37]	; 0x25
 8000dc6:	7f7b      	ldrb	r3, [r7, #29]
 8000dc8:	3b09      	subs	r3, #9
 8000dca:	2b03      	cmp	r3, #3
 8000dcc:	d850      	bhi.n	8000e70 <ds_read+0x188>
 8000dce:	a201      	add	r2, pc, #4	; (adr r2, 8000dd4 <ds_read+0xec>)
 8000dd0:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000dd4:	08000de5 	.word	0x08000de5
 8000dd8:	08000e09 	.word	0x08000e09
 8000ddc:	08000e2d 	.word	0x08000e2d
 8000de0:	08000e51 	.word	0x08000e51
 8000de4:	8cfb      	ldrh	r3, [r7, #38]	; 0x26
 8000de6:	08db      	lsrs	r3, r3, #3
 8000de8:	b29b      	uxth	r3, r3
 8000dea:	f003 0301 	and.w	r3, r3, #1
 8000dee:	4618      	mov	r0, r3
 8000df0:	f7ff fa68 	bl	80002c4 <__aeabi_i2f>
 8000df4:	4603      	mov	r3, r0
 8000df6:	623b      	str	r3, [r7, #32]
 8000df8:	f04f 517c 	mov.w	r1, #1056964608	; 0x3f000000
 8000dfc:	6a38      	ldr	r0, [r7, #32]
 8000dfe:	f7ff fab5 	bl	800036c <__aeabi_fmul>
 8000e02:	4603      	mov	r3, r0
 8000e04:	623b      	str	r3, [r7, #32]
 8000e06:	e038      	b.n	8000e7a <ds_read+0x192>
 8000e08:	8cfb      	ldrh	r3, [r7, #38]	; 0x26
 8000e0a:	089b      	lsrs	r3, r3, #2
 8000e0c:	b29b      	uxth	r3, r3
 8000e0e:	f003 0303 	and.w	r3, r3, #3
 8000e12:	4618      	mov	r0, r3
 8000e14:	f7ff fa56 	bl	80002c4 <__aeabi_i2f>
 8000e18:	4603      	mov	r3, r0
 8000e1a:	623b      	str	r3, [r7, #32]
 8000e1c:	f04f 517a 	mov.w	r1, #1048576000	; 0x3e800000
 8000e20:	6a38      	ldr	r0, [r7, #32]
 8000e22:	f7ff faa3 	bl	800036c <__aeabi_fmul>
 8000e26:	4603      	mov	r3, r0
 8000e28:	623b      	str	r3, [r7, #32]
 8000e2a:	e026      	b.n	8000e7a <ds_read+0x192>
 8000e2c:	8cfb      	ldrh	r3, [r7, #38]	; 0x26
 8000e2e:	085b      	lsrs	r3, r3, #1
 8000e30:	b29b      	uxth	r3, r3
 8000e32:	f003 0307 	and.w	r3, r3, #7
 8000e36:	4618      	mov	r0, r3
 8000e38:	f7ff fa44 	bl	80002c4 <__aeabi_i2f>
 8000e3c:	4603      	mov	r3, r0
 8000e3e:	623b      	str	r3, [r7, #32]
 8000e40:	f04f 5178 	mov.w	r1, #1040187392	; 0x3e000000
 8000e44:	6a38      	ldr	r0, [r7, #32]
 8000e46:	f7ff fa91 	bl	800036c <__aeabi_fmul>
 8000e4a:	4603      	mov	r3, r0
 8000e4c:	623b      	str	r3, [r7, #32]
 8000e4e:	e014      	b.n	8000e7a <ds_read+0x192>
 8000e50:	8cfb      	ldrh	r3, [r7, #38]	; 0x26
 8000e52:	f003 030f 	and.w	r3, r3, #15
 8000e56:	4618      	mov	r0, r3
 8000e58:	f7ff fa34 	bl	80002c4 <__aeabi_i2f>
 8000e5c:	4603      	mov	r3, r0
 8000e5e:	623b      	str	r3, [r7, #32]
 8000e60:	f04f 5176 	mov.w	r1, #1031798784	; 0x3d800000
 8000e64:	6a38      	ldr	r0, [r7, #32]
 8000e66:	f7ff fa81 	bl	800036c <__aeabi_fmul>
 8000e6a:	4603      	mov	r3, r0
 8000e6c:	623b      	str	r3, [r7, #32]
 8000e6e:	e004      	b.n	8000e7a <ds_read+0x192>
 8000e70:	4b11      	ldr	r3, [pc, #68]	; (8000eb8 <ds_read+0x1d0>)
 8000e72:	623b      	str	r3, [r7, #32]
 8000e74:	2300      	movs	r3, #0
 8000e76:	f887 3025 	strb.w	r3, [r7, #37]	; 0x25
 8000e7a:	f997 3025 	ldrsb.w	r3, [r7, #37]	; 0x25
 8000e7e:	4618      	mov	r0, r3
 8000e80:	f7ff fa20 	bl	80002c4 <__aeabi_i2f>
 8000e84:	4603      	mov	r3, r0
 8000e86:	4619      	mov	r1, r3
 8000e88:	6a38      	ldr	r0, [r7, #32]
 8000e8a:	f7ff f967 	bl	800015c <__addsf3>
 8000e8e:	4603      	mov	r3, r0
 8000e90:	623b      	str	r3, [r7, #32]
 8000e92:	f997 3024 	ldrsb.w	r3, [r7, #36]	; 0x24
 8000e96:	2b00      	cmp	r3, #0
 8000e98:	d006      	beq.n	8000ea8 <ds_read+0x1c0>
 8000e9a:	6a39      	ldr	r1, [r7, #32]
 8000e9c:	f04f 0000 	mov.w	r0, #0
 8000ea0:	f7ff f95a 	bl	8000158 <__aeabi_fsub>
 8000ea4:	4603      	mov	r3, r0
 8000ea6:	623b      	str	r3, [r7, #32]
 8000ea8:	687b      	ldr	r3, [r7, #4]
 8000eaa:	6a3a      	ldr	r2, [r7, #32]
 8000eac:	601a      	str	r2, [r3, #0]
 8000eae:	2300      	movs	r3, #0
 8000eb0:	4618      	mov	r0, r3
 8000eb2:	372c      	adds	r7, #44	; 0x2c
 8000eb4:	46bd      	mov	sp, r7
 8000eb6:	bd90      	pop	{r4, r7, pc}
 8000eb8:	437f0000 	.word	0x437f0000

08000ebc <ds_set_resolution>:
 8000ebc:	b580      	push	{r7, lr}
 8000ebe:	b086      	sub	sp, #24
 8000ec0:	af00      	add	r7, sp, #0
 8000ec2:	60f8      	str	r0, [r7, #12]
 8000ec4:	60b9      	str	r1, [r7, #8]
 8000ec6:	4613      	mov	r3, r2
 8000ec8:	71fb      	strb	r3, [r7, #7]
 8000eca:	68bb      	ldr	r3, [r7, #8]
 8000ecc:	781b      	ldrb	r3, [r3, #0]
 8000ece:	2b28      	cmp	r3, #40	; 0x28
 8000ed0:	d001      	beq.n	8000ed6 <ds_set_resolution+0x1a>
 8000ed2:	2301      	movs	r3, #1
 8000ed4:	e074      	b.n	8000fc0 <ds_set_resolution+0x104>
 8000ed6:	68f8      	ldr	r0, [r7, #12]
 8000ed8:	f001 fdaf 	bl	8002a3a <ow_reset>
 8000edc:	68b9      	ldr	r1, [r7, #8]
 8000ede:	68f8      	ldr	r0, [r7, #12]
 8000ee0:	f001 fe8b 	bl	8002bfa <ow_select>
 8000ee4:	21be      	movs	r1, #190	; 0xbe
 8000ee6:	68f8      	ldr	r0, [r7, #12]
 8000ee8:	f001 fe27 	bl	8002b3a <ow_write_byte>
 8000eec:	68f8      	ldr	r0, [r7, #12]
 8000eee:	f001 fe41 	bl	8002b74 <ow_read_byte>
 8000ef2:	68f8      	ldr	r0, [r7, #12]
 8000ef4:	f001 fe3e 	bl	8002b74 <ow_read_byte>
 8000ef8:	68f8      	ldr	r0, [r7, #12]
 8000efa:	f001 fe3b 	bl	8002b74 <ow_read_byte>
 8000efe:	4603      	mov	r3, r0
 8000f00:	75bb      	strb	r3, [r7, #22]
 8000f02:	68f8      	ldr	r0, [r7, #12]
 8000f04:	f001 fe36 	bl	8002b74 <ow_read_byte>
 8000f08:	4603      	mov	r3, r0
 8000f0a:	757b      	strb	r3, [r7, #21]
 8000f0c:	68f8      	ldr	r0, [r7, #12]
 8000f0e:	f001 fe31 	bl	8002b74 <ow_read_byte>
 8000f12:	4603      	mov	r3, r0
 8000f14:	75fb      	strb	r3, [r7, #23]
 8000f16:	79fb      	ldrb	r3, [r7, #7]
 8000f18:	2b09      	cmp	r3, #9
 8000f1a:	d108      	bne.n	8000f2e <ds_set_resolution+0x72>
 8000f1c:	7dfb      	ldrb	r3, [r7, #23]
 8000f1e:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8000f22:	75fb      	strb	r3, [r7, #23]
 8000f24:	7dfb      	ldrb	r3, [r7, #23]
 8000f26:	f023 0320 	bic.w	r3, r3, #32
 8000f2a:	75fb      	strb	r3, [r7, #23]
 8000f2c:	e022      	b.n	8000f74 <ds_set_resolution+0xb8>
 8000f2e:	79fb      	ldrb	r3, [r7, #7]
 8000f30:	2b0a      	cmp	r3, #10
 8000f32:	d108      	bne.n	8000f46 <ds_set_resolution+0x8a>
 8000f34:	7dfb      	ldrb	r3, [r7, #23]
 8000f36:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8000f3a:	75fb      	strb	r3, [r7, #23]
 8000f3c:	7dfb      	ldrb	r3, [r7, #23]
 8000f3e:	f043 0320 	orr.w	r3, r3, #32
 8000f42:	75fb      	strb	r3, [r7, #23]
 8000f44:	e016      	b.n	8000f74 <ds_set_resolution+0xb8>
 8000f46:	79fb      	ldrb	r3, [r7, #7]
 8000f48:	2b0b      	cmp	r3, #11
 8000f4a:	d108      	bne.n	8000f5e <ds_set_resolution+0xa2>
 8000f4c:	7dfb      	ldrb	r3, [r7, #23]
 8000f4e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8000f52:	75fb      	strb	r3, [r7, #23]
 8000f54:	7dfb      	ldrb	r3, [r7, #23]
 8000f56:	f023 0320 	bic.w	r3, r3, #32
 8000f5a:	75fb      	strb	r3, [r7, #23]
 8000f5c:	e00a      	b.n	8000f74 <ds_set_resolution+0xb8>
 8000f5e:	79fb      	ldrb	r3, [r7, #7]
 8000f60:	2b0c      	cmp	r3, #12
 8000f62:	d107      	bne.n	8000f74 <ds_set_resolution+0xb8>
 8000f64:	7dfb      	ldrb	r3, [r7, #23]
 8000f66:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8000f6a:	75fb      	strb	r3, [r7, #23]
 8000f6c:	7dfb      	ldrb	r3, [r7, #23]
 8000f6e:	f043 0320 	orr.w	r3, r3, #32
 8000f72:	75fb      	strb	r3, [r7, #23]
 8000f74:	68f8      	ldr	r0, [r7, #12]
 8000f76:	f001 fd60 	bl	8002a3a <ow_reset>
 8000f7a:	68b9      	ldr	r1, [r7, #8]
 8000f7c:	68f8      	ldr	r0, [r7, #12]
 8000f7e:	f001 fe3c 	bl	8002bfa <ow_select>
 8000f82:	214e      	movs	r1, #78	; 0x4e
 8000f84:	68f8      	ldr	r0, [r7, #12]
 8000f86:	f001 fdd8 	bl	8002b3a <ow_write_byte>
 8000f8a:	7dbb      	ldrb	r3, [r7, #22]
 8000f8c:	4619      	mov	r1, r3
 8000f8e:	68f8      	ldr	r0, [r7, #12]
 8000f90:	f001 fdd3 	bl	8002b3a <ow_write_byte>
 8000f94:	7d7b      	ldrb	r3, [r7, #21]
 8000f96:	4619      	mov	r1, r3
 8000f98:	68f8      	ldr	r0, [r7, #12]
 8000f9a:	f001 fdce 	bl	8002b3a <ow_write_byte>
 8000f9e:	7dfb      	ldrb	r3, [r7, #23]
 8000fa0:	4619      	mov	r1, r3
 8000fa2:	68f8      	ldr	r0, [r7, #12]
 8000fa4:	f001 fdc9 	bl	8002b3a <ow_write_byte>
 8000fa8:	68f8      	ldr	r0, [r7, #12]
 8000faa:	f001 fd46 	bl	8002a3a <ow_reset>
 8000fae:	68b9      	ldr	r1, [r7, #8]
 8000fb0:	68f8      	ldr	r0, [r7, #12]
 8000fb2:	f001 fe22 	bl	8002bfa <ow_select>
 8000fb6:	2148      	movs	r1, #72	; 0x48
 8000fb8:	68f8      	ldr	r0, [r7, #12]
 8000fba:	f001 fdbe 	bl	8002b3a <ow_write_byte>
 8000fbe:	2300      	movs	r3, #0
 8000fc0:	4618      	mov	r0, r3
 8000fc2:	3718      	adds	r7, #24
 8000fc4:	46bd      	mov	sp, r7
 8000fc6:	bd80      	pop	{r7, pc}

08000fc8 <ds_finished>:
 8000fc8:	b580      	push	{r7, lr}
 8000fca:	b082      	sub	sp, #8
 8000fcc:	af00      	add	r7, sp, #0
 8000fce:	6078      	str	r0, [r7, #4]
 8000fd0:	6878      	ldr	r0, [r7, #4]
 8000fd2:	f001 fd89 	bl	8002ae8 <ow_read_bit>
 8000fd6:	4603      	mov	r3, r0
 8000fd8:	4618      	mov	r0, r3
 8000fda:	3708      	adds	r7, #8
 8000fdc:	46bd      	mov	sp, r7
 8000fde:	bd80      	pop	{r7, pc}

08000fe0 <get_pix>:
 8000fe0:	b480      	push	{r7}
 8000fe2:	b083      	sub	sp, #12
 8000fe4:	af00      	add	r7, sp, #0
 8000fe6:	4603      	mov	r3, r0
 8000fe8:	71fb      	strb	r3, [r7, #7]
 8000fea:	460b      	mov	r3, r1
 8000fec:	71bb      	strb	r3, [r7, #6]
 8000fee:	4613      	mov	r3, r2
 8000ff0:	717b      	strb	r3, [r7, #5]
 8000ff2:	79fa      	ldrb	r2, [r7, #7]
 8000ff4:	4613      	mov	r3, r2
 8000ff6:	009b      	lsls	r3, r3, #2
 8000ff8:	441a      	add	r2, r3
 8000ffa:	79bb      	ldrb	r3, [r7, #6]
 8000ffc:	4413      	add	r3, r2
 8000ffe:	4a09      	ldr	r2, [pc, #36]	; (8001024 <get_pix+0x44>)
 8001000:	5cd3      	ldrb	r3, [r2, r3]
 8001002:	461a      	mov	r2, r3
 8001004:	797b      	ldrb	r3, [r7, #5]
 8001006:	fa42 f303 	asr.w	r3, r2, r3
 800100a:	f003 0301 	and.w	r3, r3, #1
 800100e:	2b00      	cmp	r3, #0
 8001010:	bf14      	ite	ne
 8001012:	2301      	movne	r3, #1
 8001014:	2300      	moveq	r3, #0
 8001016:	b2db      	uxtb	r3, r3
 8001018:	4618      	mov	r0, r3
 800101a:	370c      	adds	r7, #12
 800101c:	46bd      	mov	sp, r7
 800101e:	bc80      	pop	{r7}
 8001020:	4770      	bx	lr
 8001022:	bf00      	nop
 8001024:	080074ac 	.word	0x080074ac

08001028 <NVIC_EnableIRQ>:
 8001028:	b480      	push	{r7}
 800102a:	b083      	sub	sp, #12
 800102c:	af00      	add	r7, sp, #0
 800102e:	4603      	mov	r3, r0
 8001030:	71fb      	strb	r3, [r7, #7]
 8001032:	79fb      	ldrb	r3, [r7, #7]
 8001034:	f003 021f 	and.w	r2, r3, #31
 8001038:	4906      	ldr	r1, [pc, #24]	; (8001054 <NVIC_EnableIRQ+0x2c>)
 800103a:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800103e:	095b      	lsrs	r3, r3, #5
 8001040:	2001      	movs	r0, #1
 8001042:	fa00 f202 	lsl.w	r2, r0, r2
 8001046:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800104a:	bf00      	nop
 800104c:	370c      	adds	r7, #12
 800104e:	46bd      	mov	sp, r7
 8001050:	bc80      	pop	{r7}
 8001052:	4770      	bx	lr
 8001054:	e000e100 	.word	0xe000e100

08001058 <NVIC_SetPriority>:
 8001058:	b480      	push	{r7}
 800105a:	b083      	sub	sp, #12
 800105c:	af00      	add	r7, sp, #0
 800105e:	4603      	mov	r3, r0
 8001060:	6039      	str	r1, [r7, #0]
 8001062:	71fb      	strb	r3, [r7, #7]
 8001064:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8001068:	2b00      	cmp	r3, #0
 800106a:	da0b      	bge.n	8001084 <NVIC_SetPriority+0x2c>
 800106c:	683b      	ldr	r3, [r7, #0]
 800106e:	b2da      	uxtb	r2, r3
 8001070:	490c      	ldr	r1, [pc, #48]	; (80010a4 <NVIC_SetPriority+0x4c>)
 8001072:	79fb      	ldrb	r3, [r7, #7]
 8001074:	f003 030f 	and.w	r3, r3, #15
 8001078:	3b04      	subs	r3, #4
 800107a:	0112      	lsls	r2, r2, #4
 800107c:	b2d2      	uxtb	r2, r2
 800107e:	440b      	add	r3, r1
 8001080:	761a      	strb	r2, [r3, #24]
 8001082:	e009      	b.n	8001098 <NVIC_SetPriority+0x40>
 8001084:	683b      	ldr	r3, [r7, #0]
 8001086:	b2da      	uxtb	r2, r3
 8001088:	4907      	ldr	r1, [pc, #28]	; (80010a8 <NVIC_SetPriority+0x50>)
 800108a:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800108e:	0112      	lsls	r2, r2, #4
 8001090:	b2d2      	uxtb	r2, r2
 8001092:	440b      	add	r3, r1
 8001094:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8001098:	bf00      	nop
 800109a:	370c      	adds	r7, #12
 800109c:	46bd      	mov	sp, r7
 800109e:	bc80      	pop	{r7}
 80010a0:	4770      	bx	lr
 80010a2:	bf00      	nop
 80010a4:	e000ed00 	.word	0xe000ed00
 80010a8:	e000e100 	.word	0xe000e100

080010ac <LL_GPIO_SetPinMode>:
 80010ac:	b490      	push	{r4, r7}
 80010ae:	b088      	sub	sp, #32
 80010b0:	af00      	add	r7, sp, #0
 80010b2:	60f8      	str	r0, [r7, #12]
 80010b4:	60b9      	str	r1, [r7, #8]
 80010b6:	607a      	str	r2, [r7, #4]
 80010b8:	68fb      	ldr	r3, [r7, #12]
 80010ba:	461a      	mov	r2, r3
 80010bc:	68bb      	ldr	r3, [r7, #8]
 80010be:	0e1b      	lsrs	r3, r3, #24
 80010c0:	4413      	add	r3, r2
 80010c2:	461c      	mov	r4, r3
 80010c4:	6822      	ldr	r2, [r4, #0]
 80010c6:	68bb      	ldr	r3, [r7, #8]
 80010c8:	617b      	str	r3, [r7, #20]
 80010ca:	697b      	ldr	r3, [r7, #20]
 80010cc:	fa93 f3a3 	rbit	r3, r3
 80010d0:	613b      	str	r3, [r7, #16]
 80010d2:	693b      	ldr	r3, [r7, #16]
 80010d4:	fab3 f383 	clz	r3, r3
 80010d8:	009b      	lsls	r3, r3, #2
 80010da:	210f      	movs	r1, #15
 80010dc:	fa01 f303 	lsl.w	r3, r1, r3
 80010e0:	43db      	mvns	r3, r3
 80010e2:	401a      	ands	r2, r3
 80010e4:	68bb      	ldr	r3, [r7, #8]
 80010e6:	61fb      	str	r3, [r7, #28]
 80010e8:	69fb      	ldr	r3, [r7, #28]
 80010ea:	fa93 f3a3 	rbit	r3, r3
 80010ee:	61bb      	str	r3, [r7, #24]
 80010f0:	69bb      	ldr	r3, [r7, #24]
 80010f2:	fab3 f383 	clz	r3, r3
 80010f6:	009b      	lsls	r3, r3, #2
 80010f8:	6879      	ldr	r1, [r7, #4]
 80010fa:	fa01 f303 	lsl.w	r3, r1, r3
 80010fe:	4313      	orrs	r3, r2
 8001100:	6023      	str	r3, [r4, #0]
 8001102:	bf00      	nop
 8001104:	3720      	adds	r7, #32
 8001106:	46bd      	mov	sp, r7
 8001108:	bc90      	pop	{r4, r7}
 800110a:	4770      	bx	lr

0800110c <LL_GPIO_SetPinOutputType>:
 800110c:	b490      	push	{r4, r7}
 800110e:	b088      	sub	sp, #32
 8001110:	af00      	add	r7, sp, #0
 8001112:	60f8      	str	r0, [r7, #12]
 8001114:	60b9      	str	r1, [r7, #8]
 8001116:	607a      	str	r2, [r7, #4]
 8001118:	68fb      	ldr	r3, [r7, #12]
 800111a:	461a      	mov	r2, r3
 800111c:	68bb      	ldr	r3, [r7, #8]
 800111e:	0e1b      	lsrs	r3, r3, #24
 8001120:	4413      	add	r3, r2
 8001122:	461c      	mov	r4, r3
 8001124:	6822      	ldr	r2, [r4, #0]
 8001126:	68bb      	ldr	r3, [r7, #8]
 8001128:	617b      	str	r3, [r7, #20]
 800112a:	697b      	ldr	r3, [r7, #20]
 800112c:	fa93 f3a3 	rbit	r3, r3
 8001130:	613b      	str	r3, [r7, #16]
 8001132:	693b      	ldr	r3, [r7, #16]
 8001134:	fab3 f383 	clz	r3, r3
 8001138:	009b      	lsls	r3, r3, #2
 800113a:	2104      	movs	r1, #4
 800113c:	fa01 f303 	lsl.w	r3, r1, r3
 8001140:	43db      	mvns	r3, r3
 8001142:	401a      	ands	r2, r3
 8001144:	68bb      	ldr	r3, [r7, #8]
 8001146:	61fb      	str	r3, [r7, #28]
 8001148:	69fb      	ldr	r3, [r7, #28]
 800114a:	fa93 f3a3 	rbit	r3, r3
 800114e:	61bb      	str	r3, [r7, #24]
 8001150:	69bb      	ldr	r3, [r7, #24]
 8001152:	fab3 f383 	clz	r3, r3
 8001156:	009b      	lsls	r3, r3, #2
 8001158:	6879      	ldr	r1, [r7, #4]
 800115a:	fa01 f303 	lsl.w	r3, r1, r3
 800115e:	4313      	orrs	r3, r2
 8001160:	6023      	str	r3, [r4, #0]
 8001162:	bf00      	nop
 8001164:	3720      	adds	r7, #32
 8001166:	46bd      	mov	sp, r7
 8001168:	bc90      	pop	{r4, r7}
 800116a:	4770      	bx	lr

0800116c <LL_AHB1_GRP1_EnableClock>:
 800116c:	b480      	push	{r7}
 800116e:	b085      	sub	sp, #20
 8001170:	af00      	add	r7, sp, #0
 8001172:	6078      	str	r0, [r7, #4]
 8001174:	4b08      	ldr	r3, [pc, #32]	; (8001198 <LL_AHB1_GRP1_EnableClock+0x2c>)
 8001176:	695a      	ldr	r2, [r3, #20]
 8001178:	4907      	ldr	r1, [pc, #28]	; (8001198 <LL_AHB1_GRP1_EnableClock+0x2c>)
 800117a:	687b      	ldr	r3, [r7, #4]
 800117c:	4313      	orrs	r3, r2
 800117e:	614b      	str	r3, [r1, #20]
 8001180:	4b05      	ldr	r3, [pc, #20]	; (8001198 <LL_AHB1_GRP1_EnableClock+0x2c>)
 8001182:	695a      	ldr	r2, [r3, #20]
 8001184:	687b      	ldr	r3, [r7, #4]
 8001186:	4013      	ands	r3, r2
 8001188:	60fb      	str	r3, [r7, #12]
 800118a:	68fb      	ldr	r3, [r7, #12]
 800118c:	bf00      	nop
 800118e:	3714      	adds	r7, #20
 8001190:	46bd      	mov	sp, r7
 8001192:	bc80      	pop	{r7}
 8001194:	4770      	bx	lr
 8001196:	bf00      	nop
 8001198:	40021000 	.word	0x40021000

0800119c <LL_APB1_GRP1_EnableClock>:
 800119c:	b480      	push	{r7}
 800119e:	b085      	sub	sp, #20
 80011a0:	af00      	add	r7, sp, #0
 80011a2:	6078      	str	r0, [r7, #4]
 80011a4:	4b08      	ldr	r3, [pc, #32]	; (80011c8 <LL_APB1_GRP1_EnableClock+0x2c>)
 80011a6:	69da      	ldr	r2, [r3, #28]
 80011a8:	4907      	ldr	r1, [pc, #28]	; (80011c8 <LL_APB1_GRP1_EnableClock+0x2c>)
 80011aa:	687b      	ldr	r3, [r7, #4]
 80011ac:	4313      	orrs	r3, r2
 80011ae:	61cb      	str	r3, [r1, #28]
 80011b0:	4b05      	ldr	r3, [pc, #20]	; (80011c8 <LL_APB1_GRP1_EnableClock+0x2c>)
 80011b2:	69da      	ldr	r2, [r3, #28]
 80011b4:	687b      	ldr	r3, [r7, #4]
 80011b6:	4013      	ands	r3, r2
 80011b8:	60fb      	str	r3, [r7, #12]
 80011ba:	68fb      	ldr	r3, [r7, #12]
 80011bc:	bf00      	nop
 80011be:	3714      	adds	r7, #20
 80011c0:	46bd      	mov	sp, r7
 80011c2:	bc80      	pop	{r7}
 80011c4:	4770      	bx	lr
 80011c6:	bf00      	nop
 80011c8:	40021000 	.word	0x40021000

080011cc <LL_APB2_GRP1_EnableClock>:
 80011cc:	b480      	push	{r7}
 80011ce:	b085      	sub	sp, #20
 80011d0:	af00      	add	r7, sp, #0
 80011d2:	6078      	str	r0, [r7, #4]
 80011d4:	4b08      	ldr	r3, [pc, #32]	; (80011f8 <LL_APB2_GRP1_EnableClock+0x2c>)
 80011d6:	699a      	ldr	r2, [r3, #24]
 80011d8:	4907      	ldr	r1, [pc, #28]	; (80011f8 <LL_APB2_GRP1_EnableClock+0x2c>)
 80011da:	687b      	ldr	r3, [r7, #4]
 80011dc:	4313      	orrs	r3, r2
 80011de:	618b      	str	r3, [r1, #24]
 80011e0:	4b05      	ldr	r3, [pc, #20]	; (80011f8 <LL_APB2_GRP1_EnableClock+0x2c>)
 80011e2:	699a      	ldr	r2, [r3, #24]
 80011e4:	687b      	ldr	r3, [r7, #4]
 80011e6:	4013      	ands	r3, r2
 80011e8:	60fb      	str	r3, [r7, #12]
 80011ea:	68fb      	ldr	r3, [r7, #12]
 80011ec:	bf00      	nop
 80011ee:	3714      	adds	r7, #20
 80011f0:	46bd      	mov	sp, r7
 80011f2:	bc80      	pop	{r7}
 80011f4:	4770      	bx	lr
 80011f6:	bf00      	nop
 80011f8:	40021000 	.word	0x40021000

080011fc <LL_DMA_EnableChannel>:
 80011fc:	b480      	push	{r7}
 80011fe:	b083      	sub	sp, #12
 8001200:	af00      	add	r7, sp, #0
 8001202:	6078      	str	r0, [r7, #4]
 8001204:	6039      	str	r1, [r7, #0]
 8001206:	683b      	ldr	r3, [r7, #0]
 8001208:	3b01      	subs	r3, #1
 800120a:	4a0a      	ldr	r2, [pc, #40]	; (8001234 <LL_DMA_EnableChannel+0x38>)
 800120c:	5cd3      	ldrb	r3, [r2, r3]
 800120e:	461a      	mov	r2, r3
 8001210:	687b      	ldr	r3, [r7, #4]
 8001212:	4413      	add	r3, r2
 8001214:	681b      	ldr	r3, [r3, #0]
 8001216:	683a      	ldr	r2, [r7, #0]
 8001218:	3a01      	subs	r2, #1
 800121a:	4906      	ldr	r1, [pc, #24]	; (8001234 <LL_DMA_EnableChannel+0x38>)
 800121c:	5c8a      	ldrb	r2, [r1, r2]
 800121e:	4611      	mov	r1, r2
 8001220:	687a      	ldr	r2, [r7, #4]
 8001222:	440a      	add	r2, r1
 8001224:	f043 0301 	orr.w	r3, r3, #1
 8001228:	6013      	str	r3, [r2, #0]
 800122a:	bf00      	nop
 800122c:	370c      	adds	r7, #12
 800122e:	46bd      	mov	sp, r7
 8001230:	bc80      	pop	{r7}
 8001232:	4770      	bx	lr
 8001234:	080079a8 	.word	0x080079a8

08001238 <LL_DMA_SetDataTransferDirection>:
 8001238:	b480      	push	{r7}
 800123a:	b085      	sub	sp, #20
 800123c:	af00      	add	r7, sp, #0
 800123e:	60f8      	str	r0, [r7, #12]
 8001240:	60b9      	str	r1, [r7, #8]
 8001242:	607a      	str	r2, [r7, #4]
 8001244:	68bb      	ldr	r3, [r7, #8]
 8001246:	3b01      	subs	r3, #1
 8001248:	4a0c      	ldr	r2, [pc, #48]	; (800127c <LL_DMA_SetDataTransferDirection+0x44>)
 800124a:	5cd3      	ldrb	r3, [r2, r3]
 800124c:	461a      	mov	r2, r3
 800124e:	68fb      	ldr	r3, [r7, #12]
 8001250:	4413      	add	r3, r2
 8001252:	681b      	ldr	r3, [r3, #0]
 8001254:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8001258:	f023 0310 	bic.w	r3, r3, #16
 800125c:	68ba      	ldr	r2, [r7, #8]
 800125e:	3a01      	subs	r2, #1
 8001260:	4906      	ldr	r1, [pc, #24]	; (800127c <LL_DMA_SetDataTransferDirection+0x44>)
 8001262:	5c8a      	ldrb	r2, [r1, r2]
 8001264:	4611      	mov	r1, r2
 8001266:	68fa      	ldr	r2, [r7, #12]
 8001268:	440a      	add	r2, r1
 800126a:	4611      	mov	r1, r2
 800126c:	687a      	ldr	r2, [r7, #4]
 800126e:	4313      	orrs	r3, r2
 8001270:	600b      	str	r3, [r1, #0]
 8001272:	bf00      	nop
 8001274:	3714      	adds	r7, #20
 8001276:	46bd      	mov	sp, r7
 8001278:	bc80      	pop	{r7}
 800127a:	4770      	bx	lr
 800127c:	080079a8 	.word	0x080079a8

08001280 <LL_DMA_SetMode>:
 8001280:	b480      	push	{r7}
 8001282:	b085      	sub	sp, #20
 8001284:	af00      	add	r7, sp, #0
 8001286:	60f8      	str	r0, [r7, #12]
 8001288:	60b9      	str	r1, [r7, #8]
 800128a:	607a      	str	r2, [r7, #4]
 800128c:	68bb      	ldr	r3, [r7, #8]
 800128e:	3b01      	subs	r3, #1
 8001290:	4a0b      	ldr	r2, [pc, #44]	; (80012c0 <LL_DMA_SetMode+0x40>)
 8001292:	5cd3      	ldrb	r3, [r2, r3]
 8001294:	461a      	mov	r2, r3
 8001296:	68fb      	ldr	r3, [r7, #12]
 8001298:	4413      	add	r3, r2
 800129a:	681b      	ldr	r3, [r3, #0]
 800129c:	f023 0220 	bic.w	r2, r3, #32
 80012a0:	68bb      	ldr	r3, [r7, #8]
 80012a2:	3b01      	subs	r3, #1
 80012a4:	4906      	ldr	r1, [pc, #24]	; (80012c0 <LL_DMA_SetMode+0x40>)
 80012a6:	5ccb      	ldrb	r3, [r1, r3]
 80012a8:	4619      	mov	r1, r3
 80012aa:	68fb      	ldr	r3, [r7, #12]
 80012ac:	440b      	add	r3, r1
 80012ae:	4619      	mov	r1, r3
 80012b0:	687b      	ldr	r3, [r7, #4]
 80012b2:	4313      	orrs	r3, r2
 80012b4:	600b      	str	r3, [r1, #0]
 80012b6:	bf00      	nop
 80012b8:	3714      	adds	r7, #20
 80012ba:	46bd      	mov	sp, r7
 80012bc:	bc80      	pop	{r7}
 80012be:	4770      	bx	lr
 80012c0:	080079a8 	.word	0x080079a8

080012c4 <LL_DMA_SetPeriphIncMode>:
 80012c4:	b480      	push	{r7}
 80012c6:	b085      	sub	sp, #20
 80012c8:	af00      	add	r7, sp, #0
 80012ca:	60f8      	str	r0, [r7, #12]
 80012cc:	60b9      	str	r1, [r7, #8]
 80012ce:	607a      	str	r2, [r7, #4]
 80012d0:	68bb      	ldr	r3, [r7, #8]
 80012d2:	3b01      	subs	r3, #1
 80012d4:	4a0b      	ldr	r2, [pc, #44]	; (8001304 <LL_DMA_SetPeriphIncMode+0x40>)
 80012d6:	5cd3      	ldrb	r3, [r2, r3]
 80012d8:	461a      	mov	r2, r3
 80012da:	68fb      	ldr	r3, [r7, #12]
 80012dc:	4413      	add	r3, r2
 80012de:	681b      	ldr	r3, [r3, #0]
 80012e0:	f023 0240 	bic.w	r2, r3, #64	; 0x40
 80012e4:	68bb      	ldr	r3, [r7, #8]
 80012e6:	3b01      	subs	r3, #1
 80012e8:	4906      	ldr	r1, [pc, #24]	; (8001304 <LL_DMA_SetPeriphIncMode+0x40>)
 80012ea:	5ccb      	ldrb	r3, [r1, r3]
 80012ec:	4619      	mov	r1, r3
 80012ee:	68fb      	ldr	r3, [r7, #12]
 80012f0:	440b      	add	r3, r1
 80012f2:	4619      	mov	r1, r3
 80012f4:	687b      	ldr	r3, [r7, #4]
 80012f6:	4313      	orrs	r3, r2
 80012f8:	600b      	str	r3, [r1, #0]
 80012fa:	bf00      	nop
 80012fc:	3714      	adds	r7, #20
 80012fe:	46bd      	mov	sp, r7
 8001300:	bc80      	pop	{r7}
 8001302:	4770      	bx	lr
 8001304:	080079a8 	.word	0x080079a8

08001308 <LL_DMA_SetMemoryIncMode>:
 8001308:	b480      	push	{r7}
 800130a:	b085      	sub	sp, #20
 800130c:	af00      	add	r7, sp, #0
 800130e:	60f8      	str	r0, [r7, #12]
 8001310:	60b9      	str	r1, [r7, #8]
 8001312:	607a      	str	r2, [r7, #4]
 8001314:	68bb      	ldr	r3, [r7, #8]
 8001316:	3b01      	subs	r3, #1
 8001318:	4a0b      	ldr	r2, [pc, #44]	; (8001348 <LL_DMA_SetMemoryIncMode+0x40>)
 800131a:	5cd3      	ldrb	r3, [r2, r3]
 800131c:	461a      	mov	r2, r3
 800131e:	68fb      	ldr	r3, [r7, #12]
 8001320:	4413      	add	r3, r2
 8001322:	681b      	ldr	r3, [r3, #0]
 8001324:	f023 0280 	bic.w	r2, r3, #128	; 0x80
 8001328:	68bb      	ldr	r3, [r7, #8]
 800132a:	3b01      	subs	r3, #1
 800132c:	4906      	ldr	r1, [pc, #24]	; (8001348 <LL_DMA_SetMemoryIncMode+0x40>)
 800132e:	5ccb      	ldrb	r3, [r1, r3]
 8001330:	4619      	mov	r1, r3
 8001332:	68fb      	ldr	r3, [r7, #12]
 8001334:	440b      	add	r3, r1
 8001336:	4619      	mov	r1, r3
 8001338:	687b      	ldr	r3, [r7, #4]
 800133a:	4313      	orrs	r3, r2
 800133c:	600b      	str	r3, [r1, #0]
 800133e:	bf00      	nop
 8001340:	3714      	adds	r7, #20
 8001342:	46bd      	mov	sp, r7
 8001344:	bc80      	pop	{r7}
 8001346:	4770      	bx	lr
 8001348:	080079a8 	.word	0x080079a8

0800134c <LL_DMA_SetPeriphSize>:
 800134c:	b480      	push	{r7}
 800134e:	b085      	sub	sp, #20
 8001350:	af00      	add	r7, sp, #0
 8001352:	60f8      	str	r0, [r7, #12]
 8001354:	60b9      	str	r1, [r7, #8]
 8001356:	607a      	str	r2, [r7, #4]
 8001358:	68bb      	ldr	r3, [r7, #8]
 800135a:	3b01      	subs	r3, #1
 800135c:	4a0b      	ldr	r2, [pc, #44]	; (800138c <LL_DMA_SetPeriphSize+0x40>)
 800135e:	5cd3      	ldrb	r3, [r2, r3]
 8001360:	461a      	mov	r2, r3
 8001362:	68fb      	ldr	r3, [r7, #12]
 8001364:	4413      	add	r3, r2
 8001366:	681b      	ldr	r3, [r3, #0]
 8001368:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 800136c:	68bb      	ldr	r3, [r7, #8]
 800136e:	3b01      	subs	r3, #1
 8001370:	4906      	ldr	r1, [pc, #24]	; (800138c <LL_DMA_SetPeriphSize+0x40>)
 8001372:	5ccb      	ldrb	r3, [r1, r3]
 8001374:	4619      	mov	r1, r3
 8001376:	68fb      	ldr	r3, [r7, #12]
 8001378:	440b      	add	r3, r1
 800137a:	4619      	mov	r1, r3
 800137c:	687b      	ldr	r3, [r7, #4]
 800137e:	4313      	orrs	r3, r2
 8001380:	600b      	str	r3, [r1, #0]
 8001382:	bf00      	nop
 8001384:	3714      	adds	r7, #20
 8001386:	46bd      	mov	sp, r7
 8001388:	bc80      	pop	{r7}
 800138a:	4770      	bx	lr
 800138c:	080079a8 	.word	0x080079a8

08001390 <LL_DMA_SetMemorySize>:
 8001390:	b480      	push	{r7}
 8001392:	b085      	sub	sp, #20
 8001394:	af00      	add	r7, sp, #0
 8001396:	60f8      	str	r0, [r7, #12]
 8001398:	60b9      	str	r1, [r7, #8]
 800139a:	607a      	str	r2, [r7, #4]
 800139c:	68bb      	ldr	r3, [r7, #8]
 800139e:	3b01      	subs	r3, #1
 80013a0:	4a0b      	ldr	r2, [pc, #44]	; (80013d0 <LL_DMA_SetMemorySize+0x40>)
 80013a2:	5cd3      	ldrb	r3, [r2, r3]
 80013a4:	461a      	mov	r2, r3
 80013a6:	68fb      	ldr	r3, [r7, #12]
 80013a8:	4413      	add	r3, r2
 80013aa:	681b      	ldr	r3, [r3, #0]
 80013ac:	f423 6240 	bic.w	r2, r3, #3072	; 0xc00
 80013b0:	68bb      	ldr	r3, [r7, #8]
 80013b2:	3b01      	subs	r3, #1
 80013b4:	4906      	ldr	r1, [pc, #24]	; (80013d0 <LL_DMA_SetMemorySize+0x40>)
 80013b6:	5ccb      	ldrb	r3, [r1, r3]
 80013b8:	4619      	mov	r1, r3
 80013ba:	68fb      	ldr	r3, [r7, #12]
 80013bc:	440b      	add	r3, r1
 80013be:	4619      	mov	r1, r3
 80013c0:	687b      	ldr	r3, [r7, #4]
 80013c2:	4313      	orrs	r3, r2
 80013c4:	600b      	str	r3, [r1, #0]
 80013c6:	bf00      	nop
 80013c8:	3714      	adds	r7, #20
 80013ca:	46bd      	mov	sp, r7
 80013cc:	bc80      	pop	{r7}
 80013ce:	4770      	bx	lr
 80013d0:	080079a8 	.word	0x080079a8

080013d4 <LL_DMA_SetChannelPriorityLevel>:
 80013d4:	b480      	push	{r7}
 80013d6:	b085      	sub	sp, #20
 80013d8:	af00      	add	r7, sp, #0
 80013da:	60f8      	str	r0, [r7, #12]
 80013dc:	60b9      	str	r1, [r7, #8]
 80013de:	607a      	str	r2, [r7, #4]
 80013e0:	68bb      	ldr	r3, [r7, #8]
 80013e2:	3b01      	subs	r3, #1
 80013e4:	4a0b      	ldr	r2, [pc, #44]	; (8001414 <LL_DMA_SetChannelPriorityLevel+0x40>)
 80013e6:	5cd3      	ldrb	r3, [r2, r3]
 80013e8:	461a      	mov	r2, r3
 80013ea:	68fb      	ldr	r3, [r7, #12]
 80013ec:	4413      	add	r3, r2
 80013ee:	681b      	ldr	r3, [r3, #0]
 80013f0:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 80013f4:	68bb      	ldr	r3, [r7, #8]
 80013f6:	3b01      	subs	r3, #1
 80013f8:	4906      	ldr	r1, [pc, #24]	; (8001414 <LL_DMA_SetChannelPriorityLevel+0x40>)
 80013fa:	5ccb      	ldrb	r3, [r1, r3]
 80013fc:	4619      	mov	r1, r3
 80013fe:	68fb      	ldr	r3, [r7, #12]
 8001400:	440b      	add	r3, r1
 8001402:	4619      	mov	r1, r3
 8001404:	687b      	ldr	r3, [r7, #4]
 8001406:	4313      	orrs	r3, r2
 8001408:	600b      	str	r3, [r1, #0]
 800140a:	bf00      	nop
 800140c:	3714      	adds	r7, #20
 800140e:	46bd      	mov	sp, r7
 8001410:	bc80      	pop	{r7}
 8001412:	4770      	bx	lr
 8001414:	080079a8 	.word	0x080079a8

08001418 <LL_DMA_SetDataLength>:
 8001418:	b480      	push	{r7}
 800141a:	b085      	sub	sp, #20
 800141c:	af00      	add	r7, sp, #0
 800141e:	60f8      	str	r0, [r7, #12]
 8001420:	60b9      	str	r1, [r7, #8]
 8001422:	607a      	str	r2, [r7, #4]
 8001424:	68bb      	ldr	r3, [r7, #8]
 8001426:	3b01      	subs	r3, #1
 8001428:	4a0b      	ldr	r2, [pc, #44]	; (8001458 <LL_DMA_SetDataLength+0x40>)
 800142a:	5cd3      	ldrb	r3, [r2, r3]
 800142c:	461a      	mov	r2, r3
 800142e:	68fb      	ldr	r3, [r7, #12]
 8001430:	4413      	add	r3, r2
 8001432:	685b      	ldr	r3, [r3, #4]
 8001434:	0c1b      	lsrs	r3, r3, #16
 8001436:	041b      	lsls	r3, r3, #16
 8001438:	68ba      	ldr	r2, [r7, #8]
 800143a:	3a01      	subs	r2, #1
 800143c:	4906      	ldr	r1, [pc, #24]	; (8001458 <LL_DMA_SetDataLength+0x40>)
 800143e:	5c8a      	ldrb	r2, [r1, r2]
 8001440:	4611      	mov	r1, r2
 8001442:	68fa      	ldr	r2, [r7, #12]
 8001444:	440a      	add	r2, r1
 8001446:	4611      	mov	r1, r2
 8001448:	687a      	ldr	r2, [r7, #4]
 800144a:	4313      	orrs	r3, r2
 800144c:	604b      	str	r3, [r1, #4]
 800144e:	bf00      	nop
 8001450:	3714      	adds	r7, #20
 8001452:	46bd      	mov	sp, r7
 8001454:	bc80      	pop	{r7}
 8001456:	4770      	bx	lr
 8001458:	080079a8 	.word	0x080079a8

0800145c <LL_DMA_ConfigAddresses>:
 800145c:	b480      	push	{r7}
 800145e:	b085      	sub	sp, #20
 8001460:	af00      	add	r7, sp, #0
 8001462:	60f8      	str	r0, [r7, #12]
 8001464:	60b9      	str	r1, [r7, #8]
 8001466:	607a      	str	r2, [r7, #4]
 8001468:	603b      	str	r3, [r7, #0]
 800146a:	69bb      	ldr	r3, [r7, #24]
 800146c:	2b10      	cmp	r3, #16
 800146e:	d114      	bne.n	800149a <LL_DMA_ConfigAddresses+0x3e>
 8001470:	68bb      	ldr	r3, [r7, #8]
 8001472:	3b01      	subs	r3, #1
 8001474:	4a15      	ldr	r2, [pc, #84]	; (80014cc <LL_DMA_ConfigAddresses+0x70>)
 8001476:	5cd3      	ldrb	r3, [r2, r3]
 8001478:	461a      	mov	r2, r3
 800147a:	68fb      	ldr	r3, [r7, #12]
 800147c:	4413      	add	r3, r2
 800147e:	461a      	mov	r2, r3
 8001480:	687b      	ldr	r3, [r7, #4]
 8001482:	60d3      	str	r3, [r2, #12]
 8001484:	68bb      	ldr	r3, [r7, #8]
 8001486:	3b01      	subs	r3, #1
 8001488:	4a10      	ldr	r2, [pc, #64]	; (80014cc <LL_DMA_ConfigAddresses+0x70>)
 800148a:	5cd3      	ldrb	r3, [r2, r3]
 800148c:	461a      	mov	r2, r3
 800148e:	68fb      	ldr	r3, [r7, #12]
 8001490:	4413      	add	r3, r2
 8001492:	461a      	mov	r2, r3
 8001494:	683b      	ldr	r3, [r7, #0]
 8001496:	6093      	str	r3, [r2, #8]
 8001498:	e013      	b.n	80014c2 <LL_DMA_ConfigAddresses+0x66>
 800149a:	68bb      	ldr	r3, [r7, #8]
 800149c:	3b01      	subs	r3, #1
 800149e:	4a0b      	ldr	r2, [pc, #44]	; (80014cc <LL_DMA_ConfigAddresses+0x70>)
 80014a0:	5cd3      	ldrb	r3, [r2, r3]
 80014a2:	461a      	mov	r2, r3
 80014a4:	68fb      	ldr	r3, [r7, #12]
 80014a6:	4413      	add	r3, r2
 80014a8:	461a      	mov	r2, r3
 80014aa:	687b      	ldr	r3, [r7, #4]
 80014ac:	6093      	str	r3, [r2, #8]
 80014ae:	68bb      	ldr	r3, [r7, #8]
 80014b0:	3b01      	subs	r3, #1
 80014b2:	4a06      	ldr	r2, [pc, #24]	; (80014cc <LL_DMA_ConfigAddresses+0x70>)
 80014b4:	5cd3      	ldrb	r3, [r2, r3]
 80014b6:	461a      	mov	r2, r3
 80014b8:	68fb      	ldr	r3, [r7, #12]
 80014ba:	4413      	add	r3, r2
 80014bc:	461a      	mov	r2, r3
 80014be:	683b      	ldr	r3, [r7, #0]
 80014c0:	60d3      	str	r3, [r2, #12]
 80014c2:	bf00      	nop
 80014c4:	3714      	adds	r7, #20
 80014c6:	46bd      	mov	sp, r7
 80014c8:	bc80      	pop	{r7}
 80014ca:	4770      	bx	lr
 80014cc:	080079a8 	.word	0x080079a8

080014d0 <LL_DMA_IsActiveFlag_TC1>:
 80014d0:	b480      	push	{r7}
 80014d2:	b083      	sub	sp, #12
 80014d4:	af00      	add	r7, sp, #0
 80014d6:	6078      	str	r0, [r7, #4]
 80014d8:	687b      	ldr	r3, [r7, #4]
 80014da:	681b      	ldr	r3, [r3, #0]
 80014dc:	f003 0302 	and.w	r3, r3, #2
 80014e0:	2b02      	cmp	r3, #2
 80014e2:	bf0c      	ite	eq
 80014e4:	2301      	moveq	r3, #1
 80014e6:	2300      	movne	r3, #0
 80014e8:	b2db      	uxtb	r3, r3
 80014ea:	4618      	mov	r0, r3
 80014ec:	370c      	adds	r7, #12
 80014ee:	46bd      	mov	sp, r7
 80014f0:	bc80      	pop	{r7}
 80014f2:	4770      	bx	lr

080014f4 <LL_DMA_ClearFlag_TC1>:
 80014f4:	b480      	push	{r7}
 80014f6:	b083      	sub	sp, #12
 80014f8:	af00      	add	r7, sp, #0
 80014fa:	6078      	str	r0, [r7, #4]
 80014fc:	687b      	ldr	r3, [r7, #4]
 80014fe:	2202      	movs	r2, #2
 8001500:	605a      	str	r2, [r3, #4]
 8001502:	bf00      	nop
 8001504:	370c      	adds	r7, #12
 8001506:	46bd      	mov	sp, r7
 8001508:	bc80      	pop	{r7}
 800150a:	4770      	bx	lr

0800150c <LL_DMA_EnableIT_TC>:
 800150c:	b480      	push	{r7}
 800150e:	b083      	sub	sp, #12
 8001510:	af00      	add	r7, sp, #0
 8001512:	6078      	str	r0, [r7, #4]
 8001514:	6039      	str	r1, [r7, #0]
 8001516:	683b      	ldr	r3, [r7, #0]
 8001518:	3b01      	subs	r3, #1
 800151a:	4a0a      	ldr	r2, [pc, #40]	; (8001544 <LL_DMA_EnableIT_TC+0x38>)
 800151c:	5cd3      	ldrb	r3, [r2, r3]
 800151e:	461a      	mov	r2, r3
 8001520:	687b      	ldr	r3, [r7, #4]
 8001522:	4413      	add	r3, r2
 8001524:	681b      	ldr	r3, [r3, #0]
 8001526:	683a      	ldr	r2, [r7, #0]
 8001528:	3a01      	subs	r2, #1
 800152a:	4906      	ldr	r1, [pc, #24]	; (8001544 <LL_DMA_EnableIT_TC+0x38>)
 800152c:	5c8a      	ldrb	r2, [r1, r2]
 800152e:	4611      	mov	r1, r2
 8001530:	687a      	ldr	r2, [r7, #4]
 8001532:	440a      	add	r2, r1
 8001534:	f043 0302 	orr.w	r3, r3, #2
 8001538:	6013      	str	r3, [r2, #0]
 800153a:	bf00      	nop
 800153c:	370c      	adds	r7, #12
 800153e:	46bd      	mov	sp, r7
 8001540:	bc80      	pop	{r7}
 8001542:	4770      	bx	lr
 8001544:	080079a8 	.word	0x080079a8

08001548 <LL_TIM_EnableCounter>:
 8001548:	b480      	push	{r7}
 800154a:	b083      	sub	sp, #12
 800154c:	af00      	add	r7, sp, #0
 800154e:	6078      	str	r0, [r7, #4]
 8001550:	687b      	ldr	r3, [r7, #4]
 8001552:	681b      	ldr	r3, [r3, #0]
 8001554:	f043 0201 	orr.w	r2, r3, #1
 8001558:	687b      	ldr	r3, [r7, #4]
 800155a:	601a      	str	r2, [r3, #0]
 800155c:	bf00      	nop
 800155e:	370c      	adds	r7, #12
 8001560:	46bd      	mov	sp, r7
 8001562:	bc80      	pop	{r7}
 8001564:	4770      	bx	lr

08001566 <LL_TIM_DisableCounter>:
 8001566:	b480      	push	{r7}
 8001568:	b083      	sub	sp, #12
 800156a:	af00      	add	r7, sp, #0
 800156c:	6078      	str	r0, [r7, #4]
 800156e:	687b      	ldr	r3, [r7, #4]
 8001570:	681b      	ldr	r3, [r3, #0]
 8001572:	f023 0201 	bic.w	r2, r3, #1
 8001576:	687b      	ldr	r3, [r7, #4]
 8001578:	601a      	str	r2, [r3, #0]
 800157a:	bf00      	nop
 800157c:	370c      	adds	r7, #12
 800157e:	46bd      	mov	sp, r7
 8001580:	bc80      	pop	{r7}
 8001582:	4770      	bx	lr

08001584 <LL_TIM_SetCounterMode>:
 8001584:	b480      	push	{r7}
 8001586:	b083      	sub	sp, #12
 8001588:	af00      	add	r7, sp, #0
 800158a:	6078      	str	r0, [r7, #4]
 800158c:	6039      	str	r1, [r7, #0]
 800158e:	687b      	ldr	r3, [r7, #4]
 8001590:	681b      	ldr	r3, [r3, #0]
 8001592:	f023 0270 	bic.w	r2, r3, #112	; 0x70
 8001596:	683b      	ldr	r3, [r7, #0]
 8001598:	431a      	orrs	r2, r3
 800159a:	687b      	ldr	r3, [r7, #4]
 800159c:	601a      	str	r2, [r3, #0]
 800159e:	bf00      	nop
 80015a0:	370c      	adds	r7, #12
 80015a2:	46bd      	mov	sp, r7
 80015a4:	bc80      	pop	{r7}
 80015a6:	4770      	bx	lr

080015a8 <LL_TIM_EnableARRPreload>:
 80015a8:	b480      	push	{r7}
 80015aa:	b083      	sub	sp, #12
 80015ac:	af00      	add	r7, sp, #0
 80015ae:	6078      	str	r0, [r7, #4]
 80015b0:	687b      	ldr	r3, [r7, #4]
 80015b2:	681b      	ldr	r3, [r3, #0]
 80015b4:	f043 0280 	orr.w	r2, r3, #128	; 0x80
 80015b8:	687b      	ldr	r3, [r7, #4]
 80015ba:	601a      	str	r2, [r3, #0]
 80015bc:	bf00      	nop
 80015be:	370c      	adds	r7, #12
 80015c0:	46bd      	mov	sp, r7
 80015c2:	bc80      	pop	{r7}
 80015c4:	4770      	bx	lr

080015c6 <LL_TIM_SetCounter>:
 80015c6:	b480      	push	{r7}
 80015c8:	b083      	sub	sp, #12
 80015ca:	af00      	add	r7, sp, #0
 80015cc:	6078      	str	r0, [r7, #4]
 80015ce:	6039      	str	r1, [r7, #0]
 80015d0:	687b      	ldr	r3, [r7, #4]
 80015d2:	683a      	ldr	r2, [r7, #0]
 80015d4:	625a      	str	r2, [r3, #36]	; 0x24
 80015d6:	bf00      	nop
 80015d8:	370c      	adds	r7, #12
 80015da:	46bd      	mov	sp, r7
 80015dc:	bc80      	pop	{r7}
 80015de:	4770      	bx	lr

080015e0 <LL_TIM_SetPrescaler>:
 80015e0:	b480      	push	{r7}
 80015e2:	b083      	sub	sp, #12
 80015e4:	af00      	add	r7, sp, #0
 80015e6:	6078      	str	r0, [r7, #4]
 80015e8:	6039      	str	r1, [r7, #0]
 80015ea:	687b      	ldr	r3, [r7, #4]
 80015ec:	683a      	ldr	r2, [r7, #0]
 80015ee:	629a      	str	r2, [r3, #40]	; 0x28
 80015f0:	bf00      	nop
 80015f2:	370c      	adds	r7, #12
 80015f4:	46bd      	mov	sp, r7
 80015f6:	bc80      	pop	{r7}
 80015f8:	4770      	bx	lr

080015fa <LL_TIM_SetAutoReload>:
 80015fa:	b480      	push	{r7}
 80015fc:	b083      	sub	sp, #12
 80015fe:	af00      	add	r7, sp, #0
 8001600:	6078      	str	r0, [r7, #4]
 8001602:	6039      	str	r1, [r7, #0]
 8001604:	687b      	ldr	r3, [r7, #4]
 8001606:	683a      	ldr	r2, [r7, #0]
 8001608:	62da      	str	r2, [r3, #44]	; 0x2c
 800160a:	bf00      	nop
 800160c:	370c      	adds	r7, #12
 800160e:	46bd      	mov	sp, r7
 8001610:	bc80      	pop	{r7}
 8001612:	4770      	bx	lr

08001614 <LL_TIM_CC_EnableChannel>:
 8001614:	b480      	push	{r7}
 8001616:	b083      	sub	sp, #12
 8001618:	af00      	add	r7, sp, #0
 800161a:	6078      	str	r0, [r7, #4]
 800161c:	6039      	str	r1, [r7, #0]
 800161e:	687b      	ldr	r3, [r7, #4]
 8001620:	6a1a      	ldr	r2, [r3, #32]
 8001622:	683b      	ldr	r3, [r7, #0]
 8001624:	431a      	orrs	r2, r3
 8001626:	687b      	ldr	r3, [r7, #4]
 8001628:	621a      	str	r2, [r3, #32]
 800162a:	bf00      	nop
 800162c:	370c      	adds	r7, #12
 800162e:	46bd      	mov	sp, r7
 8001630:	bc80      	pop	{r7}
 8001632:	4770      	bx	lr

08001634 <LL_TIM_OC_SetMode>:
 8001634:	b4b0      	push	{r4, r5, r7}
 8001636:	b085      	sub	sp, #20
 8001638:	af00      	add	r7, sp, #0
 800163a:	60f8      	str	r0, [r7, #12]
 800163c:	60b9      	str	r1, [r7, #8]
 800163e:	607a      	str	r2, [r7, #4]
 8001640:	68bb      	ldr	r3, [r7, #8]
 8001642:	2b01      	cmp	r3, #1
 8001644:	d01c      	beq.n	8001680 <LL_TIM_OC_SetMode+0x4c>
 8001646:	68bb      	ldr	r3, [r7, #8]
 8001648:	2b04      	cmp	r3, #4
 800164a:	d017      	beq.n	800167c <LL_TIM_OC_SetMode+0x48>
 800164c:	68bb      	ldr	r3, [r7, #8]
 800164e:	2b10      	cmp	r3, #16
 8001650:	d012      	beq.n	8001678 <LL_TIM_OC_SetMode+0x44>
 8001652:	68bb      	ldr	r3, [r7, #8]
 8001654:	2b40      	cmp	r3, #64	; 0x40
 8001656:	d00d      	beq.n	8001674 <LL_TIM_OC_SetMode+0x40>
 8001658:	68bb      	ldr	r3, [r7, #8]
 800165a:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 800165e:	d007      	beq.n	8001670 <LL_TIM_OC_SetMode+0x3c>
 8001660:	68bb      	ldr	r3, [r7, #8]
 8001662:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 8001666:	d101      	bne.n	800166c <LL_TIM_OC_SetMode+0x38>
 8001668:	2305      	movs	r3, #5
 800166a:	e00a      	b.n	8001682 <LL_TIM_OC_SetMode+0x4e>
 800166c:	2306      	movs	r3, #6
 800166e:	e008      	b.n	8001682 <LL_TIM_OC_SetMode+0x4e>
 8001670:	2304      	movs	r3, #4
 8001672:	e006      	b.n	8001682 <LL_TIM_OC_SetMode+0x4e>
 8001674:	2303      	movs	r3, #3
 8001676:	e004      	b.n	8001682 <LL_TIM_OC_SetMode+0x4e>
 8001678:	2302      	movs	r3, #2
 800167a:	e002      	b.n	8001682 <LL_TIM_OC_SetMode+0x4e>
 800167c:	2301      	movs	r3, #1
 800167e:	e000      	b.n	8001682 <LL_TIM_OC_SetMode+0x4e>
 8001680:	2300      	movs	r3, #0
 8001682:	461d      	mov	r5, r3
 8001684:	68fb      	ldr	r3, [r7, #12]
 8001686:	3318      	adds	r3, #24
 8001688:	461a      	mov	r2, r3
 800168a:	4629      	mov	r1, r5
 800168c:	4b0c      	ldr	r3, [pc, #48]	; (80016c0 <LL_TIM_OC_SetMode+0x8c>)
 800168e:	5c5b      	ldrb	r3, [r3, r1]
 8001690:	4413      	add	r3, r2
 8001692:	461c      	mov	r4, r3
 8001694:	6822      	ldr	r2, [r4, #0]
 8001696:	4629      	mov	r1, r5
 8001698:	4b0a      	ldr	r3, [pc, #40]	; (80016c4 <LL_TIM_OC_SetMode+0x90>)
 800169a:	5c5b      	ldrb	r3, [r3, r1]
 800169c:	4619      	mov	r1, r3
 800169e:	2373      	movs	r3, #115	; 0x73
 80016a0:	408b      	lsls	r3, r1
 80016a2:	43db      	mvns	r3, r3
 80016a4:	401a      	ands	r2, r3
 80016a6:	4629      	mov	r1, r5
 80016a8:	4b06      	ldr	r3, [pc, #24]	; (80016c4 <LL_TIM_OC_SetMode+0x90>)
 80016aa:	5c5b      	ldrb	r3, [r3, r1]
 80016ac:	4619      	mov	r1, r3
 80016ae:	687b      	ldr	r3, [r7, #4]
 80016b0:	408b      	lsls	r3, r1
 80016b2:	4313      	orrs	r3, r2
 80016b4:	6023      	str	r3, [r4, #0]
 80016b6:	bf00      	nop
 80016b8:	3714      	adds	r7, #20
 80016ba:	46bd      	mov	sp, r7
 80016bc:	bcb0      	pop	{r4, r5, r7}
 80016be:	4770      	bx	lr
 80016c0:	080079b0 	.word	0x080079b0
 80016c4:	080079b8 	.word	0x080079b8

080016c8 <LL_TIM_OC_EnableFast>:
 80016c8:	b4b0      	push	{r4, r5, r7}
 80016ca:	b083      	sub	sp, #12
 80016cc:	af00      	add	r7, sp, #0
 80016ce:	6078      	str	r0, [r7, #4]
 80016d0:	6039      	str	r1, [r7, #0]
 80016d2:	683b      	ldr	r3, [r7, #0]
 80016d4:	2b01      	cmp	r3, #1
 80016d6:	d01c      	beq.n	8001712 <LL_TIM_OC_EnableFast+0x4a>
 80016d8:	683b      	ldr	r3, [r7, #0]
 80016da:	2b04      	cmp	r3, #4
 80016dc:	d017      	beq.n	800170e <LL_TIM_OC_EnableFast+0x46>
 80016de:	683b      	ldr	r3, [r7, #0]
 80016e0:	2b10      	cmp	r3, #16
 80016e2:	d012      	beq.n	800170a <LL_TIM_OC_EnableFast+0x42>
 80016e4:	683b      	ldr	r3, [r7, #0]
 80016e6:	2b40      	cmp	r3, #64	; 0x40
 80016e8:	d00d      	beq.n	8001706 <LL_TIM_OC_EnableFast+0x3e>
 80016ea:	683b      	ldr	r3, [r7, #0]
 80016ec:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 80016f0:	d007      	beq.n	8001702 <LL_TIM_OC_EnableFast+0x3a>
 80016f2:	683b      	ldr	r3, [r7, #0]
 80016f4:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 80016f8:	d101      	bne.n	80016fe <LL_TIM_OC_EnableFast+0x36>
 80016fa:	2305      	movs	r3, #5
 80016fc:	e00a      	b.n	8001714 <LL_TIM_OC_EnableFast+0x4c>
 80016fe:	2306      	movs	r3, #6
 8001700:	e008      	b.n	8001714 <LL_TIM_OC_EnableFast+0x4c>
 8001702:	2304      	movs	r3, #4
 8001704:	e006      	b.n	8001714 <LL_TIM_OC_EnableFast+0x4c>
 8001706:	2303      	movs	r3, #3
 8001708:	e004      	b.n	8001714 <LL_TIM_OC_EnableFast+0x4c>
 800170a:	2302      	movs	r3, #2
 800170c:	e002      	b.n	8001714 <LL_TIM_OC_EnableFast+0x4c>
 800170e:	2301      	movs	r3, #1
 8001710:	e000      	b.n	8001714 <LL_TIM_OC_EnableFast+0x4c>
 8001712:	2300      	movs	r3, #0
 8001714:	461d      	mov	r5, r3
 8001716:	687b      	ldr	r3, [r7, #4]
 8001718:	3318      	adds	r3, #24
 800171a:	461a      	mov	r2, r3
 800171c:	4629      	mov	r1, r5
 800171e:	4b09      	ldr	r3, [pc, #36]	; (8001744 <LL_TIM_OC_EnableFast+0x7c>)
 8001720:	5c5b      	ldrb	r3, [r3, r1]
 8001722:	4413      	add	r3, r2
 8001724:	461c      	mov	r4, r3
 8001726:	6822      	ldr	r2, [r4, #0]
 8001728:	4629      	mov	r1, r5
 800172a:	4b07      	ldr	r3, [pc, #28]	; (8001748 <LL_TIM_OC_EnableFast+0x80>)
 800172c:	5c5b      	ldrb	r3, [r3, r1]
 800172e:	4619      	mov	r1, r3
 8001730:	2304      	movs	r3, #4
 8001732:	408b      	lsls	r3, r1
 8001734:	4313      	orrs	r3, r2
 8001736:	6023      	str	r3, [r4, #0]
 8001738:	bf00      	nop
 800173a:	370c      	adds	r7, #12
 800173c:	46bd      	mov	sp, r7
 800173e:	bcb0      	pop	{r4, r5, r7}
 8001740:	4770      	bx	lr
 8001742:	bf00      	nop
 8001744:	080079b0 	.word	0x080079b0
 8001748:	080079b8 	.word	0x080079b8

0800174c <LL_TIM_OC_EnablePreload>:
 800174c:	b4b0      	push	{r4, r5, r7}
 800174e:	b083      	sub	sp, #12
 8001750:	af00      	add	r7, sp, #0
 8001752:	6078      	str	r0, [r7, #4]
 8001754:	6039      	str	r1, [r7, #0]
 8001756:	683b      	ldr	r3, [r7, #0]
 8001758:	2b01      	cmp	r3, #1
 800175a:	d01c      	beq.n	8001796 <LL_TIM_OC_EnablePreload+0x4a>
 800175c:	683b      	ldr	r3, [r7, #0]
 800175e:	2b04      	cmp	r3, #4
 8001760:	d017      	beq.n	8001792 <LL_TIM_OC_EnablePreload+0x46>
 8001762:	683b      	ldr	r3, [r7, #0]
 8001764:	2b10      	cmp	r3, #16
 8001766:	d012      	beq.n	800178e <LL_TIM_OC_EnablePreload+0x42>
 8001768:	683b      	ldr	r3, [r7, #0]
 800176a:	2b40      	cmp	r3, #64	; 0x40
 800176c:	d00d      	beq.n	800178a <LL_TIM_OC_EnablePreload+0x3e>
 800176e:	683b      	ldr	r3, [r7, #0]
 8001770:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8001774:	d007      	beq.n	8001786 <LL_TIM_OC_EnablePreload+0x3a>
 8001776:	683b      	ldr	r3, [r7, #0]
 8001778:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 800177c:	d101      	bne.n	8001782 <LL_TIM_OC_EnablePreload+0x36>
 800177e:	2305      	movs	r3, #5
 8001780:	e00a      	b.n	8001798 <LL_TIM_OC_EnablePreload+0x4c>
 8001782:	2306      	movs	r3, #6
 8001784:	e008      	b.n	8001798 <LL_TIM_OC_EnablePreload+0x4c>
 8001786:	2304      	movs	r3, #4
 8001788:	e006      	b.n	8001798 <LL_TIM_OC_EnablePreload+0x4c>
 800178a:	2303      	movs	r3, #3
 800178c:	e004      	b.n	8001798 <LL_TIM_OC_EnablePreload+0x4c>
 800178e:	2302      	movs	r3, #2
 8001790:	e002      	b.n	8001798 <LL_TIM_OC_EnablePreload+0x4c>
 8001792:	2301      	movs	r3, #1
 8001794:	e000      	b.n	8001798 <LL_TIM_OC_EnablePreload+0x4c>
 8001796:	2300      	movs	r3, #0
 8001798:	461d      	mov	r5, r3
 800179a:	687b      	ldr	r3, [r7, #4]
 800179c:	3318      	adds	r3, #24
 800179e:	461a      	mov	r2, r3
 80017a0:	4629      	mov	r1, r5
 80017a2:	4b09      	ldr	r3, [pc, #36]	; (80017c8 <LL_TIM_OC_EnablePreload+0x7c>)
 80017a4:	5c5b      	ldrb	r3, [r3, r1]
 80017a6:	4413      	add	r3, r2
 80017a8:	461c      	mov	r4, r3
 80017aa:	6822      	ldr	r2, [r4, #0]
 80017ac:	4629      	mov	r1, r5
 80017ae:	4b07      	ldr	r3, [pc, #28]	; (80017cc <LL_TIM_OC_EnablePreload+0x80>)
 80017b0:	5c5b      	ldrb	r3, [r3, r1]
 80017b2:	4619      	mov	r1, r3
 80017b4:	2308      	movs	r3, #8
 80017b6:	408b      	lsls	r3, r1
 80017b8:	4313      	orrs	r3, r2
 80017ba:	6023      	str	r3, [r4, #0]
 80017bc:	bf00      	nop
 80017be:	370c      	adds	r7, #12
 80017c0:	46bd      	mov	sp, r7
 80017c2:	bcb0      	pop	{r4, r5, r7}
 80017c4:	4770      	bx	lr
 80017c6:	bf00      	nop
 80017c8:	080079b0 	.word	0x080079b0
 80017cc:	080079b8 	.word	0x080079b8

080017d0 <LL_TIM_OC_SetCompareCH1>:
 80017d0:	b480      	push	{r7}
 80017d2:	b083      	sub	sp, #12
 80017d4:	af00      	add	r7, sp, #0
 80017d6:	6078      	str	r0, [r7, #4]
 80017d8:	6039      	str	r1, [r7, #0]
 80017da:	687b      	ldr	r3, [r7, #4]
 80017dc:	683a      	ldr	r2, [r7, #0]
 80017de:	635a      	str	r2, [r3, #52]	; 0x34
 80017e0:	bf00      	nop
 80017e2:	370c      	adds	r7, #12
 80017e4:	46bd      	mov	sp, r7
 80017e6:	bc80      	pop	{r7}
 80017e8:	4770      	bx	lr

080017ea <LL_TIM_OC_SetCompareCH3>:
 80017ea:	b480      	push	{r7}
 80017ec:	b083      	sub	sp, #12
 80017ee:	af00      	add	r7, sp, #0
 80017f0:	6078      	str	r0, [r7, #4]
 80017f2:	6039      	str	r1, [r7, #0]
 80017f4:	687b      	ldr	r3, [r7, #4]
 80017f6:	683a      	ldr	r2, [r7, #0]
 80017f8:	63da      	str	r2, [r3, #60]	; 0x3c
 80017fa:	bf00      	nop
 80017fc:	370c      	adds	r7, #12
 80017fe:	46bd      	mov	sp, r7
 8001800:	bc80      	pop	{r7}
 8001802:	4770      	bx	lr

08001804 <LL_TIM_OC_SetCompareCH4>:
 8001804:	b480      	push	{r7}
 8001806:	b083      	sub	sp, #12
 8001808:	af00      	add	r7, sp, #0
 800180a:	6078      	str	r0, [r7, #4]
 800180c:	6039      	str	r1, [r7, #0]
 800180e:	687b      	ldr	r3, [r7, #4]
 8001810:	683a      	ldr	r2, [r7, #0]
 8001812:	641a      	str	r2, [r3, #64]	; 0x40
 8001814:	bf00      	nop
 8001816:	370c      	adds	r7, #12
 8001818:	46bd      	mov	sp, r7
 800181a:	bc80      	pop	{r7}
 800181c:	4770      	bx	lr

0800181e <LL_TIM_GenerateEvent_UPDATE>:
 800181e:	b480      	push	{r7}
 8001820:	b083      	sub	sp, #12
 8001822:	af00      	add	r7, sp, #0
 8001824:	6078      	str	r0, [r7, #4]
 8001826:	687b      	ldr	r3, [r7, #4]
 8001828:	695b      	ldr	r3, [r3, #20]
 800182a:	f043 0201 	orr.w	r2, r3, #1
 800182e:	687b      	ldr	r3, [r7, #4]
 8001830:	615a      	str	r2, [r3, #20]
 8001832:	bf00      	nop
 8001834:	370c      	adds	r7, #12
 8001836:	46bd      	mov	sp, r7
 8001838:	bc80      	pop	{r7}
 800183a:	4770      	bx	lr

0800183c <LL_ADC_SetDataAlignment>:
 800183c:	b480      	push	{r7}
 800183e:	b083      	sub	sp, #12
 8001840:	af00      	add	r7, sp, #0
 8001842:	6078      	str	r0, [r7, #4]
 8001844:	6039      	str	r1, [r7, #0]
 8001846:	687b      	ldr	r3, [r7, #4]
 8001848:	689b      	ldr	r3, [r3, #8]
 800184a:	f423 6200 	bic.w	r2, r3, #2048	; 0x800
 800184e:	683b      	ldr	r3, [r7, #0]
 8001850:	431a      	orrs	r2, r3
 8001852:	687b      	ldr	r3, [r7, #4]
 8001854:	609a      	str	r2, [r3, #8]
 8001856:	bf00      	nop
 8001858:	370c      	adds	r7, #12
 800185a:	46bd      	mov	sp, r7
 800185c:	bc80      	pop	{r7}
 800185e:	4770      	bx	lr

08001860 <LL_ADC_SetSequencersScanMode>:
 8001860:	b480      	push	{r7}
 8001862:	b083      	sub	sp, #12
 8001864:	af00      	add	r7, sp, #0
 8001866:	6078      	str	r0, [r7, #4]
 8001868:	6039      	str	r1, [r7, #0]
 800186a:	687b      	ldr	r3, [r7, #4]
 800186c:	685b      	ldr	r3, [r3, #4]
 800186e:	f423 7280 	bic.w	r2, r3, #256	; 0x100
 8001872:	683b      	ldr	r3, [r7, #0]
 8001874:	431a      	orrs	r2, r3
 8001876:	687b      	ldr	r3, [r7, #4]
 8001878:	605a      	str	r2, [r3, #4]
 800187a:	bf00      	nop
 800187c:	370c      	adds	r7, #12
 800187e:	46bd      	mov	sp, r7
 8001880:	bc80      	pop	{r7}
 8001882:	4770      	bx	lr

08001884 <LL_ADC_REG_SetTriggerSource>:
 8001884:	b480      	push	{r7}
 8001886:	b083      	sub	sp, #12
 8001888:	af00      	add	r7, sp, #0
 800188a:	6078      	str	r0, [r7, #4]
 800188c:	6039      	str	r1, [r7, #0]
 800188e:	687b      	ldr	r3, [r7, #4]
 8001890:	689b      	ldr	r3, [r3, #8]
 8001892:	f423 2260 	bic.w	r2, r3, #917504	; 0xe0000
 8001896:	683b      	ldr	r3, [r7, #0]
 8001898:	f403 2360 	and.w	r3, r3, #917504	; 0xe0000
 800189c:	431a      	orrs	r2, r3
 800189e:	687b      	ldr	r3, [r7, #4]
 80018a0:	609a      	str	r2, [r3, #8]
 80018a2:	bf00      	nop
 80018a4:	370c      	adds	r7, #12
 80018a6:	46bd      	mov	sp, r7
 80018a8:	bc80      	pop	{r7}
 80018aa:	4770      	bx	lr

080018ac <LL_ADC_REG_SetSequencerLength>:
 80018ac:	b480      	push	{r7}
 80018ae:	b083      	sub	sp, #12
 80018b0:	af00      	add	r7, sp, #0
 80018b2:	6078      	str	r0, [r7, #4]
 80018b4:	6039      	str	r1, [r7, #0]
 80018b6:	687b      	ldr	r3, [r7, #4]
 80018b8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80018ba:	f423 0270 	bic.w	r2, r3, #15728640	; 0xf00000
 80018be:	683b      	ldr	r3, [r7, #0]
 80018c0:	431a      	orrs	r2, r3
 80018c2:	687b      	ldr	r3, [r7, #4]
 80018c4:	62da      	str	r2, [r3, #44]	; 0x2c
 80018c6:	bf00      	nop
 80018c8:	370c      	adds	r7, #12
 80018ca:	46bd      	mov	sp, r7
 80018cc:	bc80      	pop	{r7}
 80018ce:	4770      	bx	lr

080018d0 <LL_ADC_REG_SetSequencerRanks>:
 80018d0:	b490      	push	{r4, r7}
 80018d2:	b086      	sub	sp, #24
 80018d4:	af00      	add	r7, sp, #0
 80018d6:	60f8      	str	r0, [r7, #12]
 80018d8:	60b9      	str	r1, [r7, #8]
 80018da:	607a      	str	r2, [r7, #4]
 80018dc:	68fb      	ldr	r3, [r7, #12]
 80018de:	332c      	adds	r3, #44	; 0x2c
 80018e0:	4619      	mov	r1, r3
 80018e2:	68bb      	ldr	r3, [r7, #8]
 80018e4:	f403 7240 	and.w	r2, r3, #768	; 0x300
 80018e8:	f44f 7340 	mov.w	r3, #768	; 0x300
 80018ec:	617b      	str	r3, [r7, #20]
 80018ee:	697b      	ldr	r3, [r7, #20]
 80018f0:	fa93 f3a3 	rbit	r3, r3
 80018f4:	613b      	str	r3, [r7, #16]
 80018f6:	693b      	ldr	r3, [r7, #16]
 80018f8:	fab3 f383 	clz	r3, r3
 80018fc:	fa22 f303 	lsr.w	r3, r2, r3
 8001900:	009b      	lsls	r3, r3, #2
 8001902:	440b      	add	r3, r1
 8001904:	461c      	mov	r4, r3
 8001906:	6822      	ldr	r2, [r4, #0]
 8001908:	68bb      	ldr	r3, [r7, #8]
 800190a:	f003 031f 	and.w	r3, r3, #31
 800190e:	211f      	movs	r1, #31
 8001910:	fa01 f303 	lsl.w	r3, r1, r3
 8001914:	43db      	mvns	r3, r3
 8001916:	401a      	ands	r2, r3
 8001918:	687b      	ldr	r3, [r7, #4]
 800191a:	f003 011f 	and.w	r1, r3, #31
 800191e:	68bb      	ldr	r3, [r7, #8]
 8001920:	f003 031f 	and.w	r3, r3, #31
 8001924:	fa01 f303 	lsl.w	r3, r1, r3
 8001928:	4313      	orrs	r3, r2
 800192a:	6023      	str	r3, [r4, #0]
 800192c:	bf00      	nop
 800192e:	3718      	adds	r7, #24
 8001930:	46bd      	mov	sp, r7
 8001932:	bc90      	pop	{r4, r7}
 8001934:	4770      	bx	lr

08001936 <LL_ADC_REG_SetContinuousMode>:
 8001936:	b480      	push	{r7}
 8001938:	b083      	sub	sp, #12
 800193a:	af00      	add	r7, sp, #0
 800193c:	6078      	str	r0, [r7, #4]
 800193e:	6039      	str	r1, [r7, #0]
 8001940:	687b      	ldr	r3, [r7, #4]
 8001942:	689b      	ldr	r3, [r3, #8]
 8001944:	f023 0202 	bic.w	r2, r3, #2
 8001948:	683b      	ldr	r3, [r7, #0]
 800194a:	431a      	orrs	r2, r3
 800194c:	687b      	ldr	r3, [r7, #4]
 800194e:	609a      	str	r2, [r3, #8]
 8001950:	bf00      	nop
 8001952:	370c      	adds	r7, #12
 8001954:	46bd      	mov	sp, r7
 8001956:	bc80      	pop	{r7}
 8001958:	4770      	bx	lr

0800195a <LL_ADC_REG_SetDMATransfer>:
 800195a:	b480      	push	{r7}
 800195c:	b083      	sub	sp, #12
 800195e:	af00      	add	r7, sp, #0
 8001960:	6078      	str	r0, [r7, #4]
 8001962:	6039      	str	r1, [r7, #0]
 8001964:	687b      	ldr	r3, [r7, #4]
 8001966:	689b      	ldr	r3, [r3, #8]
 8001968:	f423 7280 	bic.w	r2, r3, #256	; 0x100
 800196c:	683b      	ldr	r3, [r7, #0]
 800196e:	431a      	orrs	r2, r3
 8001970:	687b      	ldr	r3, [r7, #4]
 8001972:	609a      	str	r2, [r3, #8]
 8001974:	bf00      	nop
 8001976:	370c      	adds	r7, #12
 8001978:	46bd      	mov	sp, r7
 800197a:	bc80      	pop	{r7}
 800197c:	4770      	bx	lr

0800197e <LL_ADC_SetChannelSamplingTime>:
 800197e:	b490      	push	{r4, r7}
 8001980:	b08a      	sub	sp, #40	; 0x28
 8001982:	af00      	add	r7, sp, #0
 8001984:	60f8      	str	r0, [r7, #12]
 8001986:	60b9      	str	r1, [r7, #8]
 8001988:	607a      	str	r2, [r7, #4]
 800198a:	68fb      	ldr	r3, [r7, #12]
 800198c:	330c      	adds	r3, #12
 800198e:	4619      	mov	r1, r3
 8001990:	68bb      	ldr	r3, [r7, #8]
 8001992:	f003 7200 	and.w	r2, r3, #33554432	; 0x2000000
 8001996:	f04f 7300 	mov.w	r3, #33554432	; 0x2000000
 800199a:	617b      	str	r3, [r7, #20]
 800199c:	697b      	ldr	r3, [r7, #20]
 800199e:	fa93 f3a3 	rbit	r3, r3
 80019a2:	613b      	str	r3, [r7, #16]
 80019a4:	693b      	ldr	r3, [r7, #16]
 80019a6:	fab3 f383 	clz	r3, r3
 80019aa:	fa22 f303 	lsr.w	r3, r2, r3
 80019ae:	009b      	lsls	r3, r3, #2
 80019b0:	440b      	add	r3, r1
 80019b2:	461c      	mov	r4, r3
 80019b4:	6822      	ldr	r2, [r4, #0]
 80019b6:	68bb      	ldr	r3, [r7, #8]
 80019b8:	f003 71f8 	and.w	r1, r3, #32505856	; 0x1f00000
 80019bc:	f04f 73f8 	mov.w	r3, #32505856	; 0x1f00000
 80019c0:	61fb      	str	r3, [r7, #28]
 80019c2:	69fb      	ldr	r3, [r7, #28]
 80019c4:	fa93 f3a3 	rbit	r3, r3
 80019c8:	61bb      	str	r3, [r7, #24]
 80019ca:	69bb      	ldr	r3, [r7, #24]
 80019cc:	fab3 f383 	clz	r3, r3
 80019d0:	fa21 f303 	lsr.w	r3, r1, r3
 80019d4:	2107      	movs	r1, #7
 80019d6:	fa01 f303 	lsl.w	r3, r1, r3
 80019da:	43db      	mvns	r3, r3
 80019dc:	401a      	ands	r2, r3
 80019de:	68bb      	ldr	r3, [r7, #8]
 80019e0:	f003 71f8 	and.w	r1, r3, #32505856	; 0x1f00000
 80019e4:	f04f 73f8 	mov.w	r3, #32505856	; 0x1f00000
 80019e8:	627b      	str	r3, [r7, #36]	; 0x24
 80019ea:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80019ec:	fa93 f3a3 	rbit	r3, r3
 80019f0:	623b      	str	r3, [r7, #32]
 80019f2:	6a3b      	ldr	r3, [r7, #32]
 80019f4:	fab3 f383 	clz	r3, r3
 80019f8:	fa21 f303 	lsr.w	r3, r1, r3
 80019fc:	6879      	ldr	r1, [r7, #4]
 80019fe:	fa01 f303 	lsl.w	r3, r1, r3
 8001a02:	4313      	orrs	r3, r2
 8001a04:	6023      	str	r3, [r4, #0]
 8001a06:	bf00      	nop
 8001a08:	3728      	adds	r7, #40	; 0x28
 8001a0a:	46bd      	mov	sp, r7
 8001a0c:	bc90      	pop	{r4, r7}
 8001a0e:	4770      	bx	lr

08001a10 <LL_ADC_Enable>:
 8001a10:	b480      	push	{r7}
 8001a12:	b083      	sub	sp, #12
 8001a14:	af00      	add	r7, sp, #0
 8001a16:	6078      	str	r0, [r7, #4]
 8001a18:	687b      	ldr	r3, [r7, #4]
 8001a1a:	689b      	ldr	r3, [r3, #8]
 8001a1c:	f043 0201 	orr.w	r2, r3, #1
 8001a20:	687b      	ldr	r3, [r7, #4]
 8001a22:	609a      	str	r2, [r3, #8]
 8001a24:	bf00      	nop
 8001a26:	370c      	adds	r7, #12
 8001a28:	46bd      	mov	sp, r7
 8001a2a:	bc80      	pop	{r7}
 8001a2c:	4770      	bx	lr

08001a2e <LL_ADC_REG_StartConversionExtTrig>:
 8001a2e:	b480      	push	{r7}
 8001a30:	b083      	sub	sp, #12
 8001a32:	af00      	add	r7, sp, #0
 8001a34:	6078      	str	r0, [r7, #4]
 8001a36:	6039      	str	r1, [r7, #0]
 8001a38:	687b      	ldr	r3, [r7, #4]
 8001a3a:	689a      	ldr	r2, [r3, #8]
 8001a3c:	683b      	ldr	r3, [r7, #0]
 8001a3e:	431a      	orrs	r2, r3
 8001a40:	687b      	ldr	r3, [r7, #4]
 8001a42:	609a      	str	r2, [r3, #8]
 8001a44:	bf00      	nop
 8001a46:	370c      	adds	r7, #12
 8001a48:	46bd      	mov	sp, r7
 8001a4a:	bc80      	pop	{r7}
 8001a4c:	4770      	bx	lr
	...

08001a50 <motors_hw_config>:
 8001a50:	b580      	push	{r7, lr}
 8001a52:	b082      	sub	sp, #8
 8001a54:	af02      	add	r7, sp, #8
 8001a56:	2008      	movs	r0, #8
 8001a58:	f7ff fbb8 	bl	80011cc <LL_APB2_GRP1_EnableClock>
 8001a5c:	2209      	movs	r2, #9
 8001a5e:	498e      	ldr	r1, [pc, #568]	; (8001c98 <motors_hw_config+0x248>)
 8001a60:	488e      	ldr	r0, [pc, #568]	; (8001c9c <motors_hw_config+0x24c>)
 8001a62:	f7ff fb23 	bl	80010ac <LL_GPIO_SetPinMode>
 8001a66:	2200      	movs	r2, #0
 8001a68:	498b      	ldr	r1, [pc, #556]	; (8001c98 <motors_hw_config+0x248>)
 8001a6a:	488c      	ldr	r0, [pc, #560]	; (8001c9c <motors_hw_config+0x24c>)
 8001a6c:	f7ff fb4e 	bl	800110c <LL_GPIO_SetPinOutputType>
 8001a70:	2209      	movs	r2, #9
 8001a72:	498b      	ldr	r1, [pc, #556]	; (8001ca0 <motors_hw_config+0x250>)
 8001a74:	4889      	ldr	r0, [pc, #548]	; (8001c9c <motors_hw_config+0x24c>)
 8001a76:	f7ff fb19 	bl	80010ac <LL_GPIO_SetPinMode>
 8001a7a:	2200      	movs	r2, #0
 8001a7c:	4988      	ldr	r1, [pc, #544]	; (8001ca0 <motors_hw_config+0x250>)
 8001a7e:	4887      	ldr	r0, [pc, #540]	; (8001c9c <motors_hw_config+0x24c>)
 8001a80:	f7ff fb44 	bl	800110c <LL_GPIO_SetPinOutputType>
 8001a84:	2004      	movs	r0, #4
 8001a86:	f7ff fb89 	bl	800119c <LL_APB1_GRP1_EnableClock>
 8001a8a:	2100      	movs	r1, #0
 8001a8c:	4885      	ldr	r0, [pc, #532]	; (8001ca4 <motors_hw_config+0x254>)
 8001a8e:	f7ff fd79 	bl	8001584 <LL_TIM_SetCounterMode>
 8001a92:	2147      	movs	r1, #71	; 0x47
 8001a94:	4883      	ldr	r0, [pc, #524]	; (8001ca4 <motors_hw_config+0x254>)
 8001a96:	f7ff fda3 	bl	80015e0 <LL_TIM_SetPrescaler>
 8001a9a:	f240 31e7 	movw	r1, #999	; 0x3e7
 8001a9e:	4881      	ldr	r0, [pc, #516]	; (8001ca4 <motors_hw_config+0x254>)
 8001aa0:	f7ff fdab 	bl	80015fa <LL_TIM_SetAutoReload>
 8001aa4:	f44f 5188 	mov.w	r1, #4352	; 0x1100
 8001aa8:	487e      	ldr	r0, [pc, #504]	; (8001ca4 <motors_hw_config+0x254>)
 8001aaa:	f7ff fdb3 	bl	8001614 <LL_TIM_CC_EnableChannel>
 8001aae:	2260      	movs	r2, #96	; 0x60
 8001ab0:	f44f 7180 	mov.w	r1, #256	; 0x100
 8001ab4:	487b      	ldr	r0, [pc, #492]	; (8001ca4 <motors_hw_config+0x254>)
 8001ab6:	f7ff fdbd 	bl	8001634 <LL_TIM_OC_SetMode>
 8001aba:	2260      	movs	r2, #96	; 0x60
 8001abc:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8001ac0:	4878      	ldr	r0, [pc, #480]	; (8001ca4 <motors_hw_config+0x254>)
 8001ac2:	f7ff fdb7 	bl	8001634 <LL_TIM_OC_SetMode>
 8001ac6:	f44f 7180 	mov.w	r1, #256	; 0x100
 8001aca:	4876      	ldr	r0, [pc, #472]	; (8001ca4 <motors_hw_config+0x254>)
 8001acc:	f7ff fdfc 	bl	80016c8 <LL_TIM_OC_EnableFast>
 8001ad0:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8001ad4:	4873      	ldr	r0, [pc, #460]	; (8001ca4 <motors_hw_config+0x254>)
 8001ad6:	f7ff fdf7 	bl	80016c8 <LL_TIM_OC_EnableFast>
 8001ada:	f44f 7180 	mov.w	r1, #256	; 0x100
 8001ade:	4871      	ldr	r0, [pc, #452]	; (8001ca4 <motors_hw_config+0x254>)
 8001ae0:	f7ff fe34 	bl	800174c <LL_TIM_OC_EnablePreload>
 8001ae4:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8001ae8:	486e      	ldr	r0, [pc, #440]	; (8001ca4 <motors_hw_config+0x254>)
 8001aea:	f7ff fe2f 	bl	800174c <LL_TIM_OC_EnablePreload>
 8001aee:	486d      	ldr	r0, [pc, #436]	; (8001ca4 <motors_hw_config+0x254>)
 8001af0:	f7ff fd5a 	bl	80015a8 <LL_TIM_EnableARRPreload>
 8001af4:	2163      	movs	r1, #99	; 0x63
 8001af6:	486b      	ldr	r0, [pc, #428]	; (8001ca4 <motors_hw_config+0x254>)
 8001af8:	f7ff fe77 	bl	80017ea <LL_TIM_OC_SetCompareCH3>
 8001afc:	2163      	movs	r1, #99	; 0x63
 8001afe:	4869      	ldr	r0, [pc, #420]	; (8001ca4 <motors_hw_config+0x254>)
 8001b00:	f7ff fe80 	bl	8001804 <LL_TIM_OC_SetCompareCH4>
 8001b04:	4867      	ldr	r0, [pc, #412]	; (8001ca4 <motors_hw_config+0x254>)
 8001b06:	f7ff fd1f 	bl	8001548 <LL_TIM_EnableCounter>
 8001b0a:	2004      	movs	r0, #4
 8001b0c:	f7ff fb5e 	bl	80011cc <LL_APB2_GRP1_EnableClock>
 8001b10:	2200      	movs	r2, #0
 8001b12:	f640 0108 	movw	r1, #2056	; 0x808
 8001b16:	4864      	ldr	r0, [pc, #400]	; (8001ca8 <motors_hw_config+0x258>)
 8001b18:	f7ff fac8 	bl	80010ac <LL_GPIO_SetPinMode>
 8001b1c:	2200      	movs	r2, #0
 8001b1e:	f241 0110 	movw	r1, #4112	; 0x1010
 8001b22:	4861      	ldr	r0, [pc, #388]	; (8001ca8 <motors_hw_config+0x258>)
 8001b24:	f7ff fac2 	bl	80010ac <LL_GPIO_SetPinMode>
 8001b28:	f44f 7000 	mov.w	r0, #512	; 0x200
 8001b2c:	f7ff fb4e 	bl	80011cc <LL_APB2_GRP1_EnableClock>
 8001b30:	2100      	movs	r1, #0
 8001b32:	485e      	ldr	r0, [pc, #376]	; (8001cac <motors_hw_config+0x25c>)
 8001b34:	f7ff fe82 	bl	800183c <LL_ADC_SetDataAlignment>
 8001b38:	f44f 7180 	mov.w	r1, #256	; 0x100
 8001b3c:	485b      	ldr	r0, [pc, #364]	; (8001cac <motors_hw_config+0x25c>)
 8001b3e:	f7ff fe8f 	bl	8001860 <LL_ADC_SetSequencersScanMode>
 8001b42:	f44f 2120 	mov.w	r1, #655360	; 0xa0000
 8001b46:	4859      	ldr	r0, [pc, #356]	; (8001cac <motors_hw_config+0x25c>)
 8001b48:	f7ff fe9c 	bl	8001884 <LL_ADC_REG_SetTriggerSource>
 8001b4c:	f44f 1180 	mov.w	r1, #1048576	; 0x100000
 8001b50:	4856      	ldr	r0, [pc, #344]	; (8001cac <motors_hw_config+0x25c>)
 8001b52:	f7ff feab 	bl	80018ac <LL_ADC_REG_SetSequencerLength>
 8001b56:	4a56      	ldr	r2, [pc, #344]	; (8001cb0 <motors_hw_config+0x260>)
 8001b58:	f44f 7100 	mov.w	r1, #512	; 0x200
 8001b5c:	4853      	ldr	r0, [pc, #332]	; (8001cac <motors_hw_config+0x25c>)
 8001b5e:	f7ff feb7 	bl	80018d0 <LL_ADC_REG_SetSequencerRanks>
 8001b62:	4a54      	ldr	r2, [pc, #336]	; (8001cb4 <motors_hw_config+0x264>)
 8001b64:	f240 2105 	movw	r1, #517	; 0x205
 8001b68:	4850      	ldr	r0, [pc, #320]	; (8001cac <motors_hw_config+0x25c>)
 8001b6a:	f7ff feb1 	bl	80018d0 <LL_ADC_REG_SetSequencerRanks>
 8001b6e:	2100      	movs	r1, #0
 8001b70:	484e      	ldr	r0, [pc, #312]	; (8001cac <motors_hw_config+0x25c>)
 8001b72:	f7ff fee0 	bl	8001936 <LL_ADC_REG_SetContinuousMode>
 8001b76:	f44f 7180 	mov.w	r1, #256	; 0x100
 8001b7a:	484c      	ldr	r0, [pc, #304]	; (8001cac <motors_hw_config+0x25c>)
 8001b7c:	f7ff feed 	bl	800195a <LL_ADC_REG_SetDMATransfer>
 8001b80:	2200      	movs	r2, #0
 8001b82:	494b      	ldr	r1, [pc, #300]	; (8001cb0 <motors_hw_config+0x260>)
 8001b84:	4849      	ldr	r0, [pc, #292]	; (8001cac <motors_hw_config+0x25c>)
 8001b86:	f7ff fefa 	bl	800197e <LL_ADC_SetChannelSamplingTime>
 8001b8a:	2200      	movs	r2, #0
 8001b8c:	4949      	ldr	r1, [pc, #292]	; (8001cb4 <motors_hw_config+0x264>)
 8001b8e:	4847      	ldr	r0, [pc, #284]	; (8001cac <motors_hw_config+0x25c>)
 8001b90:	f7ff fef5 	bl	800197e <LL_ADC_SetChannelSamplingTime>
 8001b94:	f44f 1180 	mov.w	r1, #1048576	; 0x100000
 8001b98:	4844      	ldr	r0, [pc, #272]	; (8001cac <motors_hw_config+0x25c>)
 8001b9a:	f7ff ff48 	bl	8001a2e <LL_ADC_REG_StartConversionExtTrig>
 8001b9e:	4843      	ldr	r0, [pc, #268]	; (8001cac <motors_hw_config+0x25c>)
 8001ba0:	f7ff ff36 	bl	8001a10 <LL_ADC_Enable>
 8001ba4:	2001      	movs	r0, #1
 8001ba6:	f7ff fae1 	bl	800116c <LL_AHB1_GRP1_EnableClock>
 8001baa:	2200      	movs	r2, #0
 8001bac:	2101      	movs	r1, #1
 8001bae:	4842      	ldr	r0, [pc, #264]	; (8001cb8 <motors_hw_config+0x268>)
 8001bb0:	f7ff fb42 	bl	8001238 <LL_DMA_SetDataTransferDirection>
 8001bb4:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8001bb8:	2101      	movs	r1, #1
 8001bba:	483f      	ldr	r0, [pc, #252]	; (8001cb8 <motors_hw_config+0x268>)
 8001bbc:	f7ff fc0a 	bl	80013d4 <LL_DMA_SetChannelPriorityLevel>
 8001bc0:	2220      	movs	r2, #32
 8001bc2:	2101      	movs	r1, #1
 8001bc4:	483c      	ldr	r0, [pc, #240]	; (8001cb8 <motors_hw_config+0x268>)
 8001bc6:	f7ff fb5b 	bl	8001280 <LL_DMA_SetMode>
 8001bca:	2200      	movs	r2, #0
 8001bcc:	2101      	movs	r1, #1
 8001bce:	483a      	ldr	r0, [pc, #232]	; (8001cb8 <motors_hw_config+0x268>)
 8001bd0:	f7ff fb78 	bl	80012c4 <LL_DMA_SetPeriphIncMode>
 8001bd4:	2280      	movs	r2, #128	; 0x80
 8001bd6:	2101      	movs	r1, #1
 8001bd8:	4837      	ldr	r0, [pc, #220]	; (8001cb8 <motors_hw_config+0x268>)
 8001bda:	f7ff fb95 	bl	8001308 <LL_DMA_SetMemoryIncMode>
 8001bde:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001be2:	2101      	movs	r1, #1
 8001be4:	4834      	ldr	r0, [pc, #208]	; (8001cb8 <motors_hw_config+0x268>)
 8001be6:	f7ff fbb1 	bl	800134c <LL_DMA_SetPeriphSize>
 8001bea:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8001bee:	2101      	movs	r1, #1
 8001bf0:	4831      	ldr	r0, [pc, #196]	; (8001cb8 <motors_hw_config+0x268>)
 8001bf2:	f7ff fbcd 	bl	8001390 <LL_DMA_SetMemorySize>
 8001bf6:	4a31      	ldr	r2, [pc, #196]	; (8001cbc <motors_hw_config+0x26c>)
 8001bf8:	2300      	movs	r3, #0
 8001bfa:	9300      	str	r3, [sp, #0]
 8001bfc:	4613      	mov	r3, r2
 8001bfe:	4a30      	ldr	r2, [pc, #192]	; (8001cc0 <motors_hw_config+0x270>)
 8001c00:	2101      	movs	r1, #1
 8001c02:	482d      	ldr	r0, [pc, #180]	; (8001cb8 <motors_hw_config+0x268>)
 8001c04:	f7ff fc2a 	bl	800145c <LL_DMA_ConfigAddresses>
 8001c08:	220a      	movs	r2, #10
 8001c0a:	2101      	movs	r1, #1
 8001c0c:	482a      	ldr	r0, [pc, #168]	; (8001cb8 <motors_hw_config+0x268>)
 8001c0e:	f7ff fc03 	bl	8001418 <LL_DMA_SetDataLength>
 8001c12:	2101      	movs	r1, #1
 8001c14:	4828      	ldr	r0, [pc, #160]	; (8001cb8 <motors_hw_config+0x268>)
 8001c16:	f7ff fc79 	bl	800150c <LL_DMA_EnableIT_TC>
 8001c1a:	2101      	movs	r1, #1
 8001c1c:	4826      	ldr	r0, [pc, #152]	; (8001cb8 <motors_hw_config+0x268>)
 8001c1e:	f7ff faed 	bl	80011fc <LL_DMA_EnableChannel>
 8001c22:	2106      	movs	r1, #6
 8001c24:	200b      	movs	r0, #11
 8001c26:	f7ff fa17 	bl	8001058 <NVIC_SetPriority>
 8001c2a:	200b      	movs	r0, #11
 8001c2c:	f7ff f9fc 	bl	8001028 <NVIC_EnableIRQ>
 8001c30:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8001c34:	f7ff faca 	bl	80011cc <LL_APB2_GRP1_EnableClock>
 8001c38:	2100      	movs	r1, #0
 8001c3a:	4822      	ldr	r0, [pc, #136]	; (8001cc4 <motors_hw_config+0x274>)
 8001c3c:	f7ff fca2 	bl	8001584 <LL_TIM_SetCounterMode>
 8001c40:	4921      	ldr	r1, [pc, #132]	; (8001cc8 <motors_hw_config+0x278>)
 8001c42:	4820      	ldr	r0, [pc, #128]	; (8001cc4 <motors_hw_config+0x274>)
 8001c44:	f7ff fccc 	bl	80015e0 <LL_TIM_SetPrescaler>
 8001c48:	f44f 61fa 	mov.w	r1, #2000	; 0x7d0
 8001c4c:	481d      	ldr	r0, [pc, #116]	; (8001cc4 <motors_hw_config+0x274>)
 8001c4e:	f7ff fcd4 	bl	80015fa <LL_TIM_SetAutoReload>
 8001c52:	2101      	movs	r1, #1
 8001c54:	481b      	ldr	r0, [pc, #108]	; (8001cc4 <motors_hw_config+0x274>)
 8001c56:	f7ff fcdd 	bl	8001614 <LL_TIM_CC_EnableChannel>
 8001c5a:	2260      	movs	r2, #96	; 0x60
 8001c5c:	2101      	movs	r1, #1
 8001c5e:	4819      	ldr	r0, [pc, #100]	; (8001cc4 <motors_hw_config+0x274>)
 8001c60:	f7ff fce8 	bl	8001634 <LL_TIM_OC_SetMode>
 8001c64:	2101      	movs	r1, #1
 8001c66:	4817      	ldr	r0, [pc, #92]	; (8001cc4 <motors_hw_config+0x274>)
 8001c68:	f7ff fd2e 	bl	80016c8 <LL_TIM_OC_EnableFast>
 8001c6c:	2101      	movs	r1, #1
 8001c6e:	4815      	ldr	r0, [pc, #84]	; (8001cc4 <motors_hw_config+0x274>)
 8001c70:	f7ff fd6c 	bl	800174c <LL_TIM_OC_EnablePreload>
 8001c74:	4813      	ldr	r0, [pc, #76]	; (8001cc4 <motors_hw_config+0x274>)
 8001c76:	f7ff fc97 	bl	80015a8 <LL_TIM_EnableARRPreload>
 8001c7a:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 8001c7e:	4811      	ldr	r0, [pc, #68]	; (8001cc4 <motors_hw_config+0x274>)
 8001c80:	f7ff fda6 	bl	80017d0 <LL_TIM_OC_SetCompareCH1>
 8001c84:	480f      	ldr	r0, [pc, #60]	; (8001cc4 <motors_hw_config+0x274>)
 8001c86:	f7ff fdca 	bl	800181e <LL_TIM_GenerateEvent_UPDATE>
 8001c8a:	480e      	ldr	r0, [pc, #56]	; (8001cc4 <motors_hw_config+0x274>)
 8001c8c:	f7ff fc5c 	bl	8001548 <LL_TIM_EnableCounter>
 8001c90:	bf00      	nop
 8001c92:	46bd      	mov	sp, r7
 8001c94:	bd80      	pop	{r7, pc}
 8001c96:	bf00      	nop
 8001c98:	04010001 	.word	0x04010001
 8001c9c:	40010c00 	.word	0x40010c00
 8001ca0:	04020002 	.word	0x04020002
 8001ca4:	40000800 	.word	0x40000800
 8001ca8:	40010800 	.word	0x40010800
 8001cac:	40012400 	.word	0x40012400
 8001cb0:	02900003 	.word	0x02900003
 8001cb4:	02c00004 	.word	0x02c00004
 8001cb8:	40020000 	.word	0x40020000
 8001cbc:	200000cc 	.word	0x200000cc
 8001cc0:	4001244c 	.word	0x4001244c
 8001cc4:	40012c00 	.word	0x40012c00
 8001cc8:	0001193f 	.word	0x0001193f

08001ccc <angle2pwm>:
 8001ccc:	b580      	push	{r7, lr}
 8001cce:	b084      	sub	sp, #16
 8001cd0:	af00      	add	r7, sp, #0
 8001cd2:	4603      	mov	r3, r0
 8001cd4:	71fb      	strb	r3, [r7, #7]
 8001cd6:	79fb      	ldrb	r3, [r7, #7]
 8001cd8:	4618      	mov	r0, r3
 8001cda:	f7fe faef 	bl	80002bc <__aeabi_ui2f>
 8001cde:	4603      	mov	r3, r0
 8001ce0:	4915      	ldr	r1, [pc, #84]	; (8001d38 <angle2pwm+0x6c>)
 8001ce2:	4618      	mov	r0, r3
 8001ce4:	f7fe fbf6 	bl	80004d4 <__aeabi_fdiv>
 8001ce8:	4603      	mov	r3, r0
 8001cea:	60fb      	str	r3, [r7, #12]
 8001cec:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
 8001cf0:	68f8      	ldr	r0, [r7, #12]
 8001cf2:	f7fe fcd9 	bl	80006a8 <__aeabi_fcmplt>
 8001cf6:	4603      	mov	r3, r0
 8001cf8:	2b00      	cmp	r3, #0
 8001cfa:	d001      	beq.n	8001d00 <angle2pwm+0x34>
 8001cfc:	68fb      	ldr	r3, [r7, #12]
 8001cfe:	e001      	b.n	8001d04 <angle2pwm+0x38>
 8001d00:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 8001d04:	60fb      	str	r3, [r7, #12]
 8001d06:	68f9      	ldr	r1, [r7, #12]
 8001d08:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
 8001d0c:	f7fe fa24 	bl	8000158 <__aeabi_fsub>
 8001d10:	4603      	mov	r3, r0
 8001d12:	490a      	ldr	r1, [pc, #40]	; (8001d3c <angle2pwm+0x70>)
 8001d14:	4618      	mov	r0, r3
 8001d16:	f7fe fb29 	bl	800036c <__aeabi_fmul>
 8001d1a:	4603      	mov	r3, r0
 8001d1c:	4908      	ldr	r1, [pc, #32]	; (8001d40 <angle2pwm+0x74>)
 8001d1e:	4618      	mov	r0, r3
 8001d20:	f7fe fa1c 	bl	800015c <__addsf3>
 8001d24:	4603      	mov	r3, r0
 8001d26:	4618      	mov	r0, r3
 8001d28:	f7fe fd0c 	bl	8000744 <__aeabi_f2uiz>
 8001d2c:	4603      	mov	r3, r0
 8001d2e:	4618      	mov	r0, r3
 8001d30:	3710      	adds	r7, #16
 8001d32:	46bd      	mov	sp, r7
 8001d34:	bd80      	pop	{r7, pc}
 8001d36:	bf00      	nop
 8001d38:	42b40000 	.word	0x42b40000
 8001d3c:	43af0000 	.word	0x43af0000
 8001d40:	41200000 	.word	0x41200000

08001d44 <adc2angle>:
 8001d44:	b580      	push	{r7, lr}
 8001d46:	b084      	sub	sp, #16
 8001d48:	af00      	add	r7, sp, #0
 8001d4a:	4603      	mov	r3, r0
 8001d4c:	80fb      	strh	r3, [r7, #6]
 8001d4e:	88fb      	ldrh	r3, [r7, #6]
 8001d50:	4618      	mov	r0, r3
 8001d52:	f7fe fab3 	bl	80002bc <__aeabi_ui2f>
 8001d56:	4603      	mov	r3, r0
 8001d58:	4910      	ldr	r1, [pc, #64]	; (8001d9c <adc2angle+0x58>)
 8001d5a:	4618      	mov	r0, r3
 8001d5c:	f7fe fbba 	bl	80004d4 <__aeabi_fdiv>
 8001d60:	4603      	mov	r3, r0
 8001d62:	60fb      	str	r3, [r7, #12]
 8001d64:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
 8001d68:	68f8      	ldr	r0, [r7, #12]
 8001d6a:	f7fe fc9d 	bl	80006a8 <__aeabi_fcmplt>
 8001d6e:	4603      	mov	r3, r0
 8001d70:	2b00      	cmp	r3, #0
 8001d72:	d001      	beq.n	8001d78 <adc2angle+0x34>
 8001d74:	68fb      	ldr	r3, [r7, #12]
 8001d76:	e001      	b.n	8001d7c <adc2angle+0x38>
 8001d78:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 8001d7c:	60fb      	str	r3, [r7, #12]
 8001d7e:	4908      	ldr	r1, [pc, #32]	; (8001da0 <adc2angle+0x5c>)
 8001d80:	68f8      	ldr	r0, [r7, #12]
 8001d82:	f7fe faf3 	bl	800036c <__aeabi_fmul>
 8001d86:	4603      	mov	r3, r0
 8001d88:	4618      	mov	r0, r3
 8001d8a:	f7fe fcdb 	bl	8000744 <__aeabi_f2uiz>
 8001d8e:	4603      	mov	r3, r0
 8001d90:	b2db      	uxtb	r3, r3
 8001d92:	4618      	mov	r0, r3
 8001d94:	3710      	adds	r7, #16
 8001d96:	46bd      	mov	sp, r7
 8001d98:	bd80      	pop	{r7, pc}
 8001d9a:	bf00      	nop
 8001d9c:	457f6000 	.word	0x457f6000
 8001da0:	42b40000 	.word	0x42b40000

08001da4 <is_angle_not_set>:
 8001da4:	b480      	push	{r7}
 8001da6:	b083      	sub	sp, #12
 8001da8:	af00      	add	r7, sp, #0
 8001daa:	4603      	mov	r3, r0
 8001dac:	460a      	mov	r2, r1
 8001dae:	71fb      	strb	r3, [r7, #7]
 8001db0:	4613      	mov	r3, r2
 8001db2:	71bb      	strb	r3, [r7, #6]
 8001db4:	79b9      	ldrb	r1, [r7, #6]
 8001db6:	79fa      	ldrb	r2, [r7, #7]
 8001db8:	480f      	ldr	r0, [pc, #60]	; (8001df8 <is_angle_not_set+0x54>)
 8001dba:	4613      	mov	r3, r2
 8001dbc:	00db      	lsls	r3, r3, #3
 8001dbe:	1a9b      	subs	r3, r3, r2
 8001dc0:	009b      	lsls	r3, r3, #2
 8001dc2:	4403      	add	r3, r0
 8001dc4:	3312      	adds	r3, #18
 8001dc6:	781b      	ldrb	r3, [r3, #0]
 8001dc8:	1acb      	subs	r3, r1, r3
 8001dca:	ea83 71e3 	eor.w	r1, r3, r3, asr #31
 8001dce:	eba1 71e3 	sub.w	r1, r1, r3, asr #31
 8001dd2:	79fa      	ldrb	r2, [r7, #7]
 8001dd4:	4808      	ldr	r0, [pc, #32]	; (8001df8 <is_angle_not_set+0x54>)
 8001dd6:	4613      	mov	r3, r2
 8001dd8:	00db      	lsls	r3, r3, #3
 8001dda:	1a9b      	subs	r3, r3, r2
 8001ddc:	009b      	lsls	r3, r3, #2
 8001dde:	4403      	add	r3, r0
 8001de0:	3314      	adds	r3, #20
 8001de2:	781b      	ldrb	r3, [r3, #0]
 8001de4:	4299      	cmp	r1, r3
 8001de6:	bfcc      	ite	gt
 8001de8:	2301      	movgt	r3, #1
 8001dea:	2300      	movle	r3, #0
 8001dec:	b2db      	uxtb	r3, r3
 8001dee:	4618      	mov	r0, r3
 8001df0:	370c      	adds	r7, #12
 8001df2:	46bd      	mov	sp, r7
 8001df4:	bc80      	pop	{r7}
 8001df6:	4770      	bx	lr
 8001df8:	20000094 	.word	0x20000094

08001dfc <set_angle_course>:
 8001dfc:	b580      	push	{r7, lr}
 8001dfe:	b084      	sub	sp, #16
 8001e00:	af00      	add	r7, sp, #0
 8001e02:	4603      	mov	r3, r0
 8001e04:	460a      	mov	r2, r1
 8001e06:	71fb      	strb	r3, [r7, #7]
 8001e08:	4613      	mov	r3, r2
 8001e0a:	71bb      	strb	r3, [r7, #6]
 8001e0c:	79bb      	ldrb	r3, [r7, #6]
 8001e0e:	4618      	mov	r0, r3
 8001e10:	f7ff ff5c 	bl	8001ccc <angle2pwm>
 8001e14:	60f8      	str	r0, [r7, #12]
 8001e16:	79fb      	ldrb	r3, [r7, #7]
 8001e18:	2b00      	cmp	r3, #0
 8001e1a:	d103      	bne.n	8001e24 <set_angle_course+0x28>
 8001e1c:	68f9      	ldr	r1, [r7, #12]
 8001e1e:	4807      	ldr	r0, [pc, #28]	; (8001e3c <set_angle_course+0x40>)
 8001e20:	f7ff fcf0 	bl	8001804 <LL_TIM_OC_SetCompareCH4>
 8001e24:	79fb      	ldrb	r3, [r7, #7]
 8001e26:	2b01      	cmp	r3, #1
 8001e28:	d104      	bne.n	8001e34 <set_angle_course+0x38>
 8001e2a:	68f9      	ldr	r1, [r7, #12]
 8001e2c:	4803      	ldr	r0, [pc, #12]	; (8001e3c <set_angle_course+0x40>)
 8001e2e:	f7ff fcdc 	bl	80017ea <LL_TIM_OC_SetCompareCH3>
 8001e32:	bf00      	nop
 8001e34:	bf00      	nop
 8001e36:	3710      	adds	r7, #16
 8001e38:	46bd      	mov	sp, r7
 8001e3a:	bd80      	pop	{r7, pc}
 8001e3c:	40000800 	.word	0x40000800

08001e40 <motors_manager>:
 8001e40:	b580      	push	{r7, lr}
 8001e42:	b084      	sub	sp, #16
 8001e44:	af00      	add	r7, sp, #0
 8001e46:	6078      	str	r0, [r7, #4]
 8001e48:	2300      	movs	r3, #0
 8001e4a:	60fb      	str	r3, [r7, #12]
 8001e4c:	f7ff fe00 	bl	8001a50 <motors_hw_config>
 8001e50:	4b08      	ldr	r3, [pc, #32]	; (8001e74 <motors_manager+0x34>)
 8001e52:	2203      	movs	r2, #3
 8001e54:	751a      	strb	r2, [r3, #20]
 8001e56:	4b07      	ldr	r3, [pc, #28]	; (8001e74 <motors_manager+0x34>)
 8001e58:	2203      	movs	r2, #3
 8001e5a:	f883 2030 	strb.w	r2, [r3, #48]	; 0x30
 8001e5e:	4b05      	ldr	r3, [pc, #20]	; (8001e74 <motors_manager+0x34>)
 8001e60:	4a05      	ldr	r2, [pc, #20]	; (8001e78 <motors_manager+0x38>)
 8001e62:	619a      	str	r2, [r3, #24]
 8001e64:	4b03      	ldr	r3, [pc, #12]	; (8001e74 <motors_manager+0x34>)
 8001e66:	4a04      	ldr	r2, [pc, #16]	; (8001e78 <motors_manager+0x38>)
 8001e68:	635a      	str	r2, [r3, #52]	; 0x34
 8001e6a:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8001e6e:	f003 fd6b 	bl	8005948 <vTaskDelay>
 8001e72:	e7fa      	b.n	8001e6a <motors_manager+0x2a>
 8001e74:	20000094 	.word	0x20000094
 8001e78:	40c00000 	.word	0x40c00000

08001e7c <motors_set_target_angle>:
 8001e7c:	b580      	push	{r7, lr}
 8001e7e:	b082      	sub	sp, #8
 8001e80:	af00      	add	r7, sp, #0
 8001e82:	4603      	mov	r3, r0
 8001e84:	460a      	mov	r2, r1
 8001e86:	71fb      	strb	r3, [r7, #7]
 8001e88:	4613      	mov	r3, r2
 8001e8a:	71bb      	strb	r3, [r7, #6]
 8001e8c:	79fb      	ldrb	r3, [r7, #7]
 8001e8e:	2b01      	cmp	r3, #1
 8001e90:	d901      	bls.n	8001e96 <motors_set_target_angle+0x1a>
 8001e92:	2301      	movs	r3, #1
 8001e94:	e023      	b.n	8001ede <motors_set_target_angle+0x62>
 8001e96:	79ba      	ldrb	r2, [r7, #6]
 8001e98:	79fb      	ldrb	r3, [r7, #7]
 8001e9a:	4611      	mov	r1, r2
 8001e9c:	4618      	mov	r0, r3
 8001e9e:	f7ff ff81 	bl	8001da4 <is_angle_not_set>
 8001ea2:	4603      	mov	r3, r0
 8001ea4:	2b00      	cmp	r3, #0
 8001ea6:	d019      	beq.n	8001edc <motors_set_target_angle+0x60>
 8001ea8:	79fa      	ldrb	r2, [r7, #7]
 8001eaa:	490f      	ldr	r1, [pc, #60]	; (8001ee8 <motors_set_target_angle+0x6c>)
 8001eac:	4613      	mov	r3, r2
 8001eae:	00db      	lsls	r3, r3, #3
 8001eb0:	1a9b      	subs	r3, r3, r2
 8001eb2:	009b      	lsls	r3, r3, #2
 8001eb4:	440b      	add	r3, r1
 8001eb6:	3311      	adds	r3, #17
 8001eb8:	79ba      	ldrb	r2, [r7, #6]
 8001eba:	701a      	strb	r2, [r3, #0]
 8001ebc:	79ba      	ldrb	r2, [r7, #6]
 8001ebe:	79fb      	ldrb	r3, [r7, #7]
 8001ec0:	4611      	mov	r1, r2
 8001ec2:	4618      	mov	r0, r3
 8001ec4:	f7ff ff9a 	bl	8001dfc <set_angle_course>
 8001ec8:	79fa      	ldrb	r2, [r7, #7]
 8001eca:	4907      	ldr	r1, [pc, #28]	; (8001ee8 <motors_set_target_angle+0x6c>)
 8001ecc:	4613      	mov	r3, r2
 8001ece:	00db      	lsls	r3, r3, #3
 8001ed0:	1a9b      	subs	r3, r3, r2
 8001ed2:	009b      	lsls	r3, r3, #2
 8001ed4:	440b      	add	r3, r1
 8001ed6:	3310      	adds	r3, #16
 8001ed8:	2201      	movs	r2, #1
 8001eda:	701a      	strb	r2, [r3, #0]
 8001edc:	2300      	movs	r3, #0
 8001ede:	4618      	mov	r0, r3
 8001ee0:	3708      	adds	r7, #8
 8001ee2:	46bd      	mov	sp, r7
 8001ee4:	bd80      	pop	{r7, pc}
 8001ee6:	bf00      	nop
 8001ee8:	20000094 	.word	0x20000094

08001eec <motors_get_angle>:
 8001eec:	b480      	push	{r7}
 8001eee:	b083      	sub	sp, #12
 8001ef0:	af00      	add	r7, sp, #0
 8001ef2:	4603      	mov	r3, r0
 8001ef4:	6039      	str	r1, [r7, #0]
 8001ef6:	71fb      	strb	r3, [r7, #7]
 8001ef8:	79fb      	ldrb	r3, [r7, #7]
 8001efa:	2b01      	cmp	r3, #1
 8001efc:	d901      	bls.n	8001f02 <motors_get_angle+0x16>
 8001efe:	2301      	movs	r3, #1
 8001f00:	e00b      	b.n	8001f1a <motors_get_angle+0x2e>
 8001f02:	79fa      	ldrb	r2, [r7, #7]
 8001f04:	4907      	ldr	r1, [pc, #28]	; (8001f24 <motors_get_angle+0x38>)
 8001f06:	4613      	mov	r3, r2
 8001f08:	00db      	lsls	r3, r3, #3
 8001f0a:	1a9b      	subs	r3, r3, r2
 8001f0c:	009b      	lsls	r3, r3, #2
 8001f0e:	440b      	add	r3, r1
 8001f10:	3312      	adds	r3, #18
 8001f12:	781a      	ldrb	r2, [r3, #0]
 8001f14:	683b      	ldr	r3, [r7, #0]
 8001f16:	701a      	strb	r2, [r3, #0]
 8001f18:	2300      	movs	r3, #0
 8001f1a:	4618      	mov	r0, r3
 8001f1c:	370c      	adds	r7, #12
 8001f1e:	46bd      	mov	sp, r7
 8001f20:	bc80      	pop	{r7}
 8001f22:	4770      	bx	lr
 8001f24:	20000094 	.word	0x20000094

08001f28 <cmd_set_arr>:
 8001f28:	b580      	push	{r7, lr}
 8001f2a:	b084      	sub	sp, #16
 8001f2c:	af00      	add	r7, sp, #0
 8001f2e:	6078      	str	r0, [r7, #4]
 8001f30:	687b      	ldr	r3, [r7, #4]
 8001f32:	60fb      	str	r3, [r7, #12]
 8001f34:	68fb      	ldr	r3, [r7, #12]
 8001f36:	681b      	ldr	r3, [r3, #0]
 8001f38:	4a12      	ldr	r2, [pc, #72]	; (8001f84 <cmd_set_arr+0x5c>)
 8001f3a:	4293      	cmp	r3, r2
 8001f3c:	d816      	bhi.n	8001f6c <cmd_set_arr+0x44>
 8001f3e:	4812      	ldr	r0, [pc, #72]	; (8001f88 <cmd_set_arr+0x60>)
 8001f40:	f7ff fb11 	bl	8001566 <LL_TIM_DisableCounter>
 8001f44:	68fb      	ldr	r3, [r7, #12]
 8001f46:	681b      	ldr	r3, [r3, #0]
 8001f48:	4619      	mov	r1, r3
 8001f4a:	480f      	ldr	r0, [pc, #60]	; (8001f88 <cmd_set_arr+0x60>)
 8001f4c:	f7ff fb55 	bl	80015fa <LL_TIM_SetAutoReload>
 8001f50:	2100      	movs	r1, #0
 8001f52:	480d      	ldr	r0, [pc, #52]	; (8001f88 <cmd_set_arr+0x60>)
 8001f54:	f7ff fb37 	bl	80015c6 <LL_TIM_SetCounter>
 8001f58:	480b      	ldr	r0, [pc, #44]	; (8001f88 <cmd_set_arr+0x60>)
 8001f5a:	f7ff faf5 	bl	8001548 <LL_TIM_EnableCounter>
 8001f5e:	2203      	movs	r2, #3
 8001f60:	490a      	ldr	r1, [pc, #40]	; (8001f8c <cmd_set_arr+0x64>)
 8001f62:	6878      	ldr	r0, [r7, #4]
 8001f64:	f005 f912 	bl	800718c <memcpy>
 8001f68:	2303      	movs	r3, #3
 8001f6a:	e006      	b.n	8001f7a <cmd_set_arr+0x52>
 8001f6c:	bf00      	nop
 8001f6e:	2203      	movs	r2, #3
 8001f70:	4907      	ldr	r1, [pc, #28]	; (8001f90 <cmd_set_arr+0x68>)
 8001f72:	6878      	ldr	r0, [r7, #4]
 8001f74:	f005 f90a 	bl	800718c <memcpy>
 8001f78:	2303      	movs	r3, #3
 8001f7a:	4618      	mov	r0, r3
 8001f7c:	3710      	adds	r7, #16
 8001f7e:	46bd      	mov	sp, r7
 8001f80:	bd80      	pop	{r7, pc}
 8001f82:	bf00      	nop
 8001f84:	000f4240 	.word	0x000f4240
 8001f88:	40000800 	.word	0x40000800
 8001f8c:	08007364 	.word	0x08007364
 8001f90:	08007368 	.word	0x08007368

08001f94 <cmd_set_ccr>:
 8001f94:	b580      	push	{r7, lr}
 8001f96:	b084      	sub	sp, #16
 8001f98:	af00      	add	r7, sp, #0
 8001f9a:	6078      	str	r0, [r7, #4]
 8001f9c:	687b      	ldr	r3, [r7, #4]
 8001f9e:	60fb      	str	r3, [r7, #12]
 8001fa0:	68fb      	ldr	r3, [r7, #12]
 8001fa2:	681b      	ldr	r3, [r3, #0]
 8001fa4:	4a0d      	ldr	r2, [pc, #52]	; (8001fdc <cmd_set_ccr+0x48>)
 8001fa6:	4293      	cmp	r3, r2
 8001fa8:	d80c      	bhi.n	8001fc4 <cmd_set_ccr+0x30>
 8001faa:	68fb      	ldr	r3, [r7, #12]
 8001fac:	681b      	ldr	r3, [r3, #0]
 8001fae:	4619      	mov	r1, r3
 8001fb0:	480b      	ldr	r0, [pc, #44]	; (8001fe0 <cmd_set_ccr+0x4c>)
 8001fb2:	f7ff fc1a 	bl	80017ea <LL_TIM_OC_SetCompareCH3>
 8001fb6:	2203      	movs	r2, #3
 8001fb8:	490a      	ldr	r1, [pc, #40]	; (8001fe4 <cmd_set_ccr+0x50>)
 8001fba:	6878      	ldr	r0, [r7, #4]
 8001fbc:	f005 f8e6 	bl	800718c <memcpy>
 8001fc0:	2303      	movs	r3, #3
 8001fc2:	e006      	b.n	8001fd2 <cmd_set_ccr+0x3e>
 8001fc4:	bf00      	nop
 8001fc6:	2203      	movs	r2, #3
 8001fc8:	4907      	ldr	r1, [pc, #28]	; (8001fe8 <cmd_set_ccr+0x54>)
 8001fca:	6878      	ldr	r0, [r7, #4]
 8001fcc:	f005 f8de 	bl	800718c <memcpy>
 8001fd0:	2303      	movs	r3, #3
 8001fd2:	4618      	mov	r0, r3
 8001fd4:	3710      	adds	r7, #16
 8001fd6:	46bd      	mov	sp, r7
 8001fd8:	bd80      	pop	{r7, pc}
 8001fda:	bf00      	nop
 8001fdc:	000f4240 	.word	0x000f4240
 8001fe0:	40000800 	.word	0x40000800
 8001fe4:	08007364 	.word	0x08007364
 8001fe8:	08007368 	.word	0x08007368

08001fec <cmd_set_angle>:
 8001fec:	b580      	push	{r7, lr}
 8001fee:	b084      	sub	sp, #16
 8001ff0:	af00      	add	r7, sp, #0
 8001ff2:	6078      	str	r0, [r7, #4]
 8001ff4:	687b      	ldr	r3, [r7, #4]
 8001ff6:	60fb      	str	r3, [r7, #12]
 8001ff8:	68fb      	ldr	r3, [r7, #12]
 8001ffa:	781a      	ldrb	r2, [r3, #0]
 8001ffc:	68fb      	ldr	r3, [r7, #12]
 8001ffe:	3301      	adds	r3, #1
 8002000:	781b      	ldrb	r3, [r3, #0]
 8002002:	4619      	mov	r1, r3
 8002004:	4610      	mov	r0, r2
 8002006:	f7ff ff39 	bl	8001e7c <motors_set_target_angle>
 800200a:	4603      	mov	r3, r0
 800200c:	2b00      	cmp	r3, #0
 800200e:	d106      	bne.n	800201e <cmd_set_angle+0x32>
 8002010:	2203      	movs	r2, #3
 8002012:	4908      	ldr	r1, [pc, #32]	; (8002034 <cmd_set_angle+0x48>)
 8002014:	6878      	ldr	r0, [r7, #4]
 8002016:	f005 f8b9 	bl	800718c <memcpy>
 800201a:	2303      	movs	r3, #3
 800201c:	e006      	b.n	800202c <cmd_set_angle+0x40>
 800201e:	bf00      	nop
 8002020:	2203      	movs	r2, #3
 8002022:	4905      	ldr	r1, [pc, #20]	; (8002038 <cmd_set_angle+0x4c>)
 8002024:	6878      	ldr	r0, [r7, #4]
 8002026:	f005 f8b1 	bl	800718c <memcpy>
 800202a:	2303      	movs	r3, #3
 800202c:	4618      	mov	r0, r3
 800202e:	3710      	adds	r7, #16
 8002030:	46bd      	mov	sp, r7
 8002032:	bd80      	pop	{r7, pc}
 8002034:	08007364 	.word	0x08007364
 8002038:	08007368 	.word	0x08007368

0800203c <cmd_get_angle>:
 800203c:	b580      	push	{r7, lr}
 800203e:	b084      	sub	sp, #16
 8002040:	af00      	add	r7, sp, #0
 8002042:	6078      	str	r0, [r7, #4]
 8002044:	687b      	ldr	r3, [r7, #4]
 8002046:	781b      	ldrb	r3, [r3, #0]
 8002048:	73fb      	strb	r3, [r7, #15]
 800204a:	f107 020e 	add.w	r2, r7, #14
 800204e:	7bfb      	ldrb	r3, [r7, #15]
 8002050:	4611      	mov	r1, r2
 8002052:	4618      	mov	r0, r3
 8002054:	f7ff ff4a 	bl	8001eec <motors_get_angle>
 8002058:	4603      	mov	r3, r0
 800205a:	2b00      	cmp	r3, #0
 800205c:	d104      	bne.n	8002068 <cmd_get_angle+0x2c>
 800205e:	7bba      	ldrb	r2, [r7, #14]
 8002060:	687b      	ldr	r3, [r7, #4]
 8002062:	701a      	strb	r2, [r3, #0]
 8002064:	2301      	movs	r3, #1
 8002066:	e006      	b.n	8002076 <cmd_get_angle+0x3a>
 8002068:	bf00      	nop
 800206a:	2203      	movs	r2, #3
 800206c:	4904      	ldr	r1, [pc, #16]	; (8002080 <cmd_get_angle+0x44>)
 800206e:	6878      	ldr	r0, [r7, #4]
 8002070:	f005 f88c 	bl	800718c <memcpy>
 8002074:	2303      	movs	r3, #3
 8002076:	4618      	mov	r0, r3
 8002078:	3710      	adds	r7, #16
 800207a:	46bd      	mov	sp, r7
 800207c:	bd80      	pop	{r7, pc}
 800207e:	bf00      	nop
 8002080:	08007368 	.word	0x08007368

08002084 <DMA1_Channel1_IRQHandler>:
 8002084:	b580      	push	{r7, lr}
 8002086:	b084      	sub	sp, #16
 8002088:	af00      	add	r7, sp, #0
 800208a:	2300      	movs	r3, #0
 800208c:	607b      	str	r3, [r7, #4]
 800208e:	2300      	movs	r3, #0
 8002090:	60fb      	str	r3, [r7, #12]
 8002092:	2300      	movs	r3, #0
 8002094:	60bb      	str	r3, [r7, #8]
 8002096:	2300      	movs	r3, #0
 8002098:	803b      	strh	r3, [r7, #0]
 800209a:	2300      	movs	r3, #0
 800209c:	807b      	strh	r3, [r7, #2]
 800209e:	484b      	ldr	r0, [pc, #300]	; (80021cc <DMA1_Channel1_IRQHandler+0x148>)
 80020a0:	f7ff fa16 	bl	80014d0 <LL_DMA_IsActiveFlag_TC1>
 80020a4:	4603      	mov	r3, r0
 80020a6:	2b00      	cmp	r3, #0
 80020a8:	f000 8081 	beq.w	80021ae <DMA1_Channel1_IRQHandler+0x12a>
 80020ac:	4847      	ldr	r0, [pc, #284]	; (80021cc <DMA1_Channel1_IRQHandler+0x148>)
 80020ae:	f7ff fa21 	bl	80014f4 <LL_DMA_ClearFlag_TC1>
 80020b2:	2300      	movs	r3, #0
 80020b4:	60fb      	str	r3, [r7, #12]
 80020b6:	e077      	b.n	80021a8 <DMA1_Channel1_IRQHandler+0x124>
 80020b8:	2300      	movs	r3, #0
 80020ba:	60bb      	str	r3, [r7, #8]
 80020bc:	e01f      	b.n	80020fe <DMA1_Channel1_IRQHandler+0x7a>
 80020be:	68fb      	ldr	r3, [r7, #12]
 80020c0:	005b      	lsls	r3, r3, #1
 80020c2:	f107 0210 	add.w	r2, r7, #16
 80020c6:	4413      	add	r3, r2
 80020c8:	f833 2c10 	ldrh.w	r2, [r3, #-16]
 80020cc:	68bb      	ldr	r3, [r7, #8]
 80020ce:	0059      	lsls	r1, r3, #1
 80020d0:	68fb      	ldr	r3, [r7, #12]
 80020d2:	440b      	add	r3, r1
 80020d4:	493e      	ldr	r1, [pc, #248]	; (80021d0 <DMA1_Channel1_IRQHandler+0x14c>)
 80020d6:	331c      	adds	r3, #28
 80020d8:	f831 3013 	ldrh.w	r3, [r1, r3, lsl #1]
 80020dc:	493d      	ldr	r1, [pc, #244]	; (80021d4 <DMA1_Channel1_IRQHandler+0x150>)
 80020de:	fba1 1303 	umull	r1, r3, r1, r3
 80020e2:	089b      	lsrs	r3, r3, #2
 80020e4:	b29b      	uxth	r3, r3
 80020e6:	4413      	add	r3, r2
 80020e8:	b29a      	uxth	r2, r3
 80020ea:	68fb      	ldr	r3, [r7, #12]
 80020ec:	005b      	lsls	r3, r3, #1
 80020ee:	f107 0110 	add.w	r1, r7, #16
 80020f2:	440b      	add	r3, r1
 80020f4:	f823 2c10 	strh.w	r2, [r3, #-16]
 80020f8:	68bb      	ldr	r3, [r7, #8]
 80020fa:	3301      	adds	r3, #1
 80020fc:	60bb      	str	r3, [r7, #8]
 80020fe:	68bb      	ldr	r3, [r7, #8]
 8002100:	2b04      	cmp	r3, #4
 8002102:	dddc      	ble.n	80020be <DMA1_Channel1_IRQHandler+0x3a>
 8002104:	4932      	ldr	r1, [pc, #200]	; (80021d0 <DMA1_Channel1_IRQHandler+0x14c>)
 8002106:	68fa      	ldr	r2, [r7, #12]
 8002108:	4613      	mov	r3, r2
 800210a:	00db      	lsls	r3, r3, #3
 800210c:	1a9b      	subs	r3, r3, r2
 800210e:	009b      	lsls	r3, r3, #2
 8002110:	440b      	add	r3, r1
 8002112:	3312      	adds	r3, #18
 8002114:	7818      	ldrb	r0, [r3, #0]
 8002116:	492e      	ldr	r1, [pc, #184]	; (80021d0 <DMA1_Channel1_IRQHandler+0x14c>)
 8002118:	68fa      	ldr	r2, [r7, #12]
 800211a:	4613      	mov	r3, r2
 800211c:	00db      	lsls	r3, r3, #3
 800211e:	1a9b      	subs	r3, r3, r2
 8002120:	009b      	lsls	r3, r3, #2
 8002122:	440b      	add	r3, r1
 8002124:	3313      	adds	r3, #19
 8002126:	4602      	mov	r2, r0
 8002128:	701a      	strb	r2, [r3, #0]
 800212a:	68fb      	ldr	r3, [r7, #12]
 800212c:	005b      	lsls	r3, r3, #1
 800212e:	f107 0210 	add.w	r2, r7, #16
 8002132:	4413      	add	r3, r2
 8002134:	f833 3c10 	ldrh.w	r3, [r3, #-16]
 8002138:	4618      	mov	r0, r3
 800213a:	f7ff fe03 	bl	8001d44 <adc2angle>
 800213e:	4603      	mov	r3, r0
 8002140:	4618      	mov	r0, r3
 8002142:	4923      	ldr	r1, [pc, #140]	; (80021d0 <DMA1_Channel1_IRQHandler+0x14c>)
 8002144:	68fa      	ldr	r2, [r7, #12]
 8002146:	4613      	mov	r3, r2
 8002148:	00db      	lsls	r3, r3, #3
 800214a:	1a9b      	subs	r3, r3, r2
 800214c:	009b      	lsls	r3, r3, #2
 800214e:	440b      	add	r3, r1
 8002150:	3312      	adds	r3, #18
 8002152:	4602      	mov	r2, r0
 8002154:	701a      	strb	r2, [r3, #0]
 8002156:	68fb      	ldr	r3, [r7, #12]
 8002158:	b2d8      	uxtb	r0, r3
 800215a:	491d      	ldr	r1, [pc, #116]	; (80021d0 <DMA1_Channel1_IRQHandler+0x14c>)
 800215c:	68fa      	ldr	r2, [r7, #12]
 800215e:	4613      	mov	r3, r2
 8002160:	00db      	lsls	r3, r3, #3
 8002162:	1a9b      	subs	r3, r3, r2
 8002164:	009b      	lsls	r3, r3, #2
 8002166:	440b      	add	r3, r1
 8002168:	3313      	adds	r3, #19
 800216a:	781b      	ldrb	r3, [r3, #0]
 800216c:	4619      	mov	r1, r3
 800216e:	f7ff fe19 	bl	8001da4 <is_angle_not_set>
 8002172:	4603      	mov	r3, r0
 8002174:	2b00      	cmp	r3, #0
 8002176:	d00a      	beq.n	800218e <DMA1_Channel1_IRQHandler+0x10a>
 8002178:	4915      	ldr	r1, [pc, #84]	; (80021d0 <DMA1_Channel1_IRQHandler+0x14c>)
 800217a:	68fa      	ldr	r2, [r7, #12]
 800217c:	4613      	mov	r3, r2
 800217e:	00db      	lsls	r3, r3, #3
 8002180:	1a9b      	subs	r3, r3, r2
 8002182:	009b      	lsls	r3, r3, #2
 8002184:	440b      	add	r3, r1
 8002186:	3310      	adds	r3, #16
 8002188:	2201      	movs	r2, #1
 800218a:	701a      	strb	r2, [r3, #0]
 800218c:	e009      	b.n	80021a2 <DMA1_Channel1_IRQHandler+0x11e>
 800218e:	4910      	ldr	r1, [pc, #64]	; (80021d0 <DMA1_Channel1_IRQHandler+0x14c>)
 8002190:	68fa      	ldr	r2, [r7, #12]
 8002192:	4613      	mov	r3, r2
 8002194:	00db      	lsls	r3, r3, #3
 8002196:	1a9b      	subs	r3, r3, r2
 8002198:	009b      	lsls	r3, r3, #2
 800219a:	440b      	add	r3, r1
 800219c:	3310      	adds	r3, #16
 800219e:	2200      	movs	r2, #0
 80021a0:	701a      	strb	r2, [r3, #0]
 80021a2:	68fb      	ldr	r3, [r7, #12]
 80021a4:	3301      	adds	r3, #1
 80021a6:	60fb      	str	r3, [r7, #12]
 80021a8:	68fb      	ldr	r3, [r7, #12]
 80021aa:	2b01      	cmp	r3, #1
 80021ac:	dd84      	ble.n	80020b8 <DMA1_Channel1_IRQHandler+0x34>
 80021ae:	687b      	ldr	r3, [r7, #4]
 80021b0:	2b00      	cmp	r3, #0
 80021b2:	d007      	beq.n	80021c4 <DMA1_Channel1_IRQHandler+0x140>
 80021b4:	4b08      	ldr	r3, [pc, #32]	; (80021d8 <DMA1_Channel1_IRQHandler+0x154>)
 80021b6:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 80021ba:	601a      	str	r2, [r3, #0]
 80021bc:	f3bf 8f4f 	dsb	sy
 80021c0:	f3bf 8f6f 	isb	sy
 80021c4:	bf00      	nop
 80021c6:	3710      	adds	r7, #16
 80021c8:	46bd      	mov	sp, r7
 80021ca:	bd80      	pop	{r7, pc}
 80021cc:	40020000 	.word	0x40020000
 80021d0:	20000094 	.word	0x20000094
 80021d4:	cccccccd 	.word	0xcccccccd
 80021d8:	e000ed04 	.word	0xe000ed04

080021dc <LL_GPIO_SetPinMode>:
 80021dc:	b490      	push	{r4, r7}
 80021de:	b088      	sub	sp, #32
 80021e0:	af00      	add	r7, sp, #0
 80021e2:	60f8      	str	r0, [r7, #12]
 80021e4:	60b9      	str	r1, [r7, #8]
 80021e6:	607a      	str	r2, [r7, #4]
 80021e8:	68fb      	ldr	r3, [r7, #12]
 80021ea:	461a      	mov	r2, r3
 80021ec:	68bb      	ldr	r3, [r7, #8]
 80021ee:	0e1b      	lsrs	r3, r3, #24
 80021f0:	4413      	add	r3, r2
 80021f2:	461c      	mov	r4, r3
 80021f4:	6822      	ldr	r2, [r4, #0]
 80021f6:	68bb      	ldr	r3, [r7, #8]
 80021f8:	617b      	str	r3, [r7, #20]
 80021fa:	697b      	ldr	r3, [r7, #20]
 80021fc:	fa93 f3a3 	rbit	r3, r3
 8002200:	613b      	str	r3, [r7, #16]
 8002202:	693b      	ldr	r3, [r7, #16]
 8002204:	fab3 f383 	clz	r3, r3
 8002208:	009b      	lsls	r3, r3, #2
 800220a:	210f      	movs	r1, #15
 800220c:	fa01 f303 	lsl.w	r3, r1, r3
 8002210:	43db      	mvns	r3, r3
 8002212:	401a      	ands	r2, r3
 8002214:	68bb      	ldr	r3, [r7, #8]
 8002216:	61fb      	str	r3, [r7, #28]
 8002218:	69fb      	ldr	r3, [r7, #28]
 800221a:	fa93 f3a3 	rbit	r3, r3
 800221e:	61bb      	str	r3, [r7, #24]
 8002220:	69bb      	ldr	r3, [r7, #24]
 8002222:	fab3 f383 	clz	r3, r3
 8002226:	009b      	lsls	r3, r3, #2
 8002228:	6879      	ldr	r1, [r7, #4]
 800222a:	fa01 f303 	lsl.w	r3, r1, r3
 800222e:	4313      	orrs	r3, r2
 8002230:	6023      	str	r3, [r4, #0]
 8002232:	bf00      	nop
 8002234:	3720      	adds	r7, #32
 8002236:	46bd      	mov	sp, r7
 8002238:	bc90      	pop	{r4, r7}
 800223a:	4770      	bx	lr

0800223c <LL_GPIO_SetPinSpeed>:
 800223c:	b490      	push	{r4, r7}
 800223e:	b088      	sub	sp, #32
 8002240:	af00      	add	r7, sp, #0
 8002242:	60f8      	str	r0, [r7, #12]
 8002244:	60b9      	str	r1, [r7, #8]
 8002246:	607a      	str	r2, [r7, #4]
 8002248:	68fb      	ldr	r3, [r7, #12]
 800224a:	461a      	mov	r2, r3
 800224c:	68bb      	ldr	r3, [r7, #8]
 800224e:	0e1b      	lsrs	r3, r3, #24
 8002250:	4413      	add	r3, r2
 8002252:	461c      	mov	r4, r3
 8002254:	6822      	ldr	r2, [r4, #0]
 8002256:	68bb      	ldr	r3, [r7, #8]
 8002258:	617b      	str	r3, [r7, #20]
 800225a:	697b      	ldr	r3, [r7, #20]
 800225c:	fa93 f3a3 	rbit	r3, r3
 8002260:	613b      	str	r3, [r7, #16]
 8002262:	693b      	ldr	r3, [r7, #16]
 8002264:	fab3 f383 	clz	r3, r3
 8002268:	009b      	lsls	r3, r3, #2
 800226a:	2103      	movs	r1, #3
 800226c:	fa01 f303 	lsl.w	r3, r1, r3
 8002270:	43db      	mvns	r3, r3
 8002272:	401a      	ands	r2, r3
 8002274:	68bb      	ldr	r3, [r7, #8]
 8002276:	61fb      	str	r3, [r7, #28]
 8002278:	69fb      	ldr	r3, [r7, #28]
 800227a:	fa93 f3a3 	rbit	r3, r3
 800227e:	61bb      	str	r3, [r7, #24]
 8002280:	69bb      	ldr	r3, [r7, #24]
 8002282:	fab3 f383 	clz	r3, r3
 8002286:	009b      	lsls	r3, r3, #2
 8002288:	6879      	ldr	r1, [r7, #4]
 800228a:	fa01 f303 	lsl.w	r3, r1, r3
 800228e:	4313      	orrs	r3, r2
 8002290:	6023      	str	r3, [r4, #0]
 8002292:	bf00      	nop
 8002294:	3720      	adds	r7, #32
 8002296:	46bd      	mov	sp, r7
 8002298:	bc90      	pop	{r4, r7}
 800229a:	4770      	bx	lr

0800229c <LL_GPIO_SetOutputPin>:
 800229c:	b480      	push	{r7}
 800229e:	b083      	sub	sp, #12
 80022a0:	af00      	add	r7, sp, #0
 80022a2:	6078      	str	r0, [r7, #4]
 80022a4:	6039      	str	r1, [r7, #0]
 80022a6:	683b      	ldr	r3, [r7, #0]
 80022a8:	0a1b      	lsrs	r3, r3, #8
 80022aa:	b29a      	uxth	r2, r3
 80022ac:	687b      	ldr	r3, [r7, #4]
 80022ae:	611a      	str	r2, [r3, #16]
 80022b0:	bf00      	nop
 80022b2:	370c      	adds	r7, #12
 80022b4:	46bd      	mov	sp, r7
 80022b6:	bc80      	pop	{r7}
 80022b8:	4770      	bx	lr

080022ba <LL_GPIO_ResetOutputPin>:
 80022ba:	b480      	push	{r7}
 80022bc:	b083      	sub	sp, #12
 80022be:	af00      	add	r7, sp, #0
 80022c0:	6078      	str	r0, [r7, #4]
 80022c2:	6039      	str	r1, [r7, #0]
 80022c4:	683b      	ldr	r3, [r7, #0]
 80022c6:	0a1b      	lsrs	r3, r3, #8
 80022c8:	b29a      	uxth	r2, r3
 80022ca:	687b      	ldr	r3, [r7, #4]
 80022cc:	615a      	str	r2, [r3, #20]
 80022ce:	bf00      	nop
 80022d0:	370c      	adds	r7, #12
 80022d2:	46bd      	mov	sp, r7
 80022d4:	bc80      	pop	{r7}
 80022d6:	4770      	bx	lr

080022d8 <LL_APB2_GRP1_EnableClock>:
 80022d8:	b480      	push	{r7}
 80022da:	b085      	sub	sp, #20
 80022dc:	af00      	add	r7, sp, #0
 80022de:	6078      	str	r0, [r7, #4]
 80022e0:	4b08      	ldr	r3, [pc, #32]	; (8002304 <LL_APB2_GRP1_EnableClock+0x2c>)
 80022e2:	699a      	ldr	r2, [r3, #24]
 80022e4:	4907      	ldr	r1, [pc, #28]	; (8002304 <LL_APB2_GRP1_EnableClock+0x2c>)
 80022e6:	687b      	ldr	r3, [r7, #4]
 80022e8:	4313      	orrs	r3, r2
 80022ea:	618b      	str	r3, [r1, #24]
 80022ec:	4b05      	ldr	r3, [pc, #20]	; (8002304 <LL_APB2_GRP1_EnableClock+0x2c>)
 80022ee:	699a      	ldr	r2, [r3, #24]
 80022f0:	687b      	ldr	r3, [r7, #4]
 80022f2:	4013      	ands	r3, r2
 80022f4:	60fb      	str	r3, [r7, #12]
 80022f6:	68fb      	ldr	r3, [r7, #12]
 80022f8:	bf00      	nop
 80022fa:	3714      	adds	r7, #20
 80022fc:	46bd      	mov	sp, r7
 80022fe:	bc80      	pop	{r7}
 8002300:	4770      	bx	lr
 8002302:	bf00      	nop
 8002304:	40021000 	.word	0x40021000

08002308 <LL_SPI_Enable>:
 8002308:	b480      	push	{r7}
 800230a:	b083      	sub	sp, #12
 800230c:	af00      	add	r7, sp, #0
 800230e:	6078      	str	r0, [r7, #4]
 8002310:	687b      	ldr	r3, [r7, #4]
 8002312:	681b      	ldr	r3, [r3, #0]
 8002314:	f043 0240 	orr.w	r2, r3, #64	; 0x40
 8002318:	687b      	ldr	r3, [r7, #4]
 800231a:	601a      	str	r2, [r3, #0]
 800231c:	bf00      	nop
 800231e:	370c      	adds	r7, #12
 8002320:	46bd      	mov	sp, r7
 8002322:	bc80      	pop	{r7}
 8002324:	4770      	bx	lr

08002326 <LL_SPI_SetMode>:
 8002326:	b480      	push	{r7}
 8002328:	b083      	sub	sp, #12
 800232a:	af00      	add	r7, sp, #0
 800232c:	6078      	str	r0, [r7, #4]
 800232e:	6039      	str	r1, [r7, #0]
 8002330:	687b      	ldr	r3, [r7, #4]
 8002332:	681b      	ldr	r3, [r3, #0]
 8002334:	f423 7282 	bic.w	r2, r3, #260	; 0x104
 8002338:	683b      	ldr	r3, [r7, #0]
 800233a:	431a      	orrs	r2, r3
 800233c:	687b      	ldr	r3, [r7, #4]
 800233e:	601a      	str	r2, [r3, #0]
 8002340:	bf00      	nop
 8002342:	370c      	adds	r7, #12
 8002344:	46bd      	mov	sp, r7
 8002346:	bc80      	pop	{r7}
 8002348:	4770      	bx	lr

0800234a <LL_SPI_SetBaudRatePrescaler>:
 800234a:	b480      	push	{r7}
 800234c:	b083      	sub	sp, #12
 800234e:	af00      	add	r7, sp, #0
 8002350:	6078      	str	r0, [r7, #4]
 8002352:	6039      	str	r1, [r7, #0]
 8002354:	687b      	ldr	r3, [r7, #4]
 8002356:	681b      	ldr	r3, [r3, #0]
 8002358:	f023 0238 	bic.w	r2, r3, #56	; 0x38
 800235c:	683b      	ldr	r3, [r7, #0]
 800235e:	431a      	orrs	r2, r3
 8002360:	687b      	ldr	r3, [r7, #4]
 8002362:	601a      	str	r2, [r3, #0]
 8002364:	bf00      	nop
 8002366:	370c      	adds	r7, #12
 8002368:	46bd      	mov	sp, r7
 800236a:	bc80      	pop	{r7}
 800236c:	4770      	bx	lr

0800236e <LL_SPI_SetTransferBitOrder>:
 800236e:	b480      	push	{r7}
 8002370:	b083      	sub	sp, #12
 8002372:	af00      	add	r7, sp, #0
 8002374:	6078      	str	r0, [r7, #4]
 8002376:	6039      	str	r1, [r7, #0]
 8002378:	687b      	ldr	r3, [r7, #4]
 800237a:	681b      	ldr	r3, [r3, #0]
 800237c:	f023 0280 	bic.w	r2, r3, #128	; 0x80
 8002380:	683b      	ldr	r3, [r7, #0]
 8002382:	431a      	orrs	r2, r3
 8002384:	687b      	ldr	r3, [r7, #4]
 8002386:	601a      	str	r2, [r3, #0]
 8002388:	bf00      	nop
 800238a:	370c      	adds	r7, #12
 800238c:	46bd      	mov	sp, r7
 800238e:	bc80      	pop	{r7}
 8002390:	4770      	bx	lr

08002392 <LL_SPI_SetTransferDirection>:
 8002392:	b480      	push	{r7}
 8002394:	b083      	sub	sp, #12
 8002396:	af00      	add	r7, sp, #0
 8002398:	6078      	str	r0, [r7, #4]
 800239a:	6039      	str	r1, [r7, #0]
 800239c:	687b      	ldr	r3, [r7, #4]
 800239e:	681b      	ldr	r3, [r3, #0]
 80023a0:	f423 4244 	bic.w	r2, r3, #50176	; 0xc400
 80023a4:	683b      	ldr	r3, [r7, #0]
 80023a6:	431a      	orrs	r2, r3
 80023a8:	687b      	ldr	r3, [r7, #4]
 80023aa:	601a      	str	r2, [r3, #0]
 80023ac:	bf00      	nop
 80023ae:	370c      	adds	r7, #12
 80023b0:	46bd      	mov	sp, r7
 80023b2:	bc80      	pop	{r7}
 80023b4:	4770      	bx	lr

080023b6 <LL_SPI_SetDataWidth>:
 80023b6:	b480      	push	{r7}
 80023b8:	b083      	sub	sp, #12
 80023ba:	af00      	add	r7, sp, #0
 80023bc:	6078      	str	r0, [r7, #4]
 80023be:	6039      	str	r1, [r7, #0]
 80023c0:	687b      	ldr	r3, [r7, #4]
 80023c2:	681b      	ldr	r3, [r3, #0]
 80023c4:	f423 6200 	bic.w	r2, r3, #2048	; 0x800
 80023c8:	683b      	ldr	r3, [r7, #0]
 80023ca:	431a      	orrs	r2, r3
 80023cc:	687b      	ldr	r3, [r7, #4]
 80023ce:	601a      	str	r2, [r3, #0]
 80023d0:	bf00      	nop
 80023d2:	370c      	adds	r7, #12
 80023d4:	46bd      	mov	sp, r7
 80023d6:	bc80      	pop	{r7}
 80023d8:	4770      	bx	lr

080023da <LL_SPI_SetNSSMode>:
 80023da:	b480      	push	{r7}
 80023dc:	b083      	sub	sp, #12
 80023de:	af00      	add	r7, sp, #0
 80023e0:	6078      	str	r0, [r7, #4]
 80023e2:	6039      	str	r1, [r7, #0]
 80023e4:	687b      	ldr	r3, [r7, #4]
 80023e6:	681b      	ldr	r3, [r3, #0]
 80023e8:	f423 7200 	bic.w	r2, r3, #512	; 0x200
 80023ec:	683b      	ldr	r3, [r7, #0]
 80023ee:	431a      	orrs	r2, r3
 80023f0:	687b      	ldr	r3, [r7, #4]
 80023f2:	601a      	str	r2, [r3, #0]
 80023f4:	687b      	ldr	r3, [r7, #4]
 80023f6:	685b      	ldr	r3, [r3, #4]
 80023f8:	f023 0204 	bic.w	r2, r3, #4
 80023fc:	683b      	ldr	r3, [r7, #0]
 80023fe:	0c1b      	lsrs	r3, r3, #16
 8002400:	431a      	orrs	r2, r3
 8002402:	687b      	ldr	r3, [r7, #4]
 8002404:	605a      	str	r2, [r3, #4]
 8002406:	bf00      	nop
 8002408:	370c      	adds	r7, #12
 800240a:	46bd      	mov	sp, r7
 800240c:	bc80      	pop	{r7}
 800240e:	4770      	bx	lr

08002410 <LL_SPI_IsActiveFlag_TXE>:
 8002410:	b480      	push	{r7}
 8002412:	b083      	sub	sp, #12
 8002414:	af00      	add	r7, sp, #0
 8002416:	6078      	str	r0, [r7, #4]
 8002418:	687b      	ldr	r3, [r7, #4]
 800241a:	689b      	ldr	r3, [r3, #8]
 800241c:	f003 0302 	and.w	r3, r3, #2
 8002420:	2b02      	cmp	r3, #2
 8002422:	bf0c      	ite	eq
 8002424:	2301      	moveq	r3, #1
 8002426:	2300      	movne	r3, #0
 8002428:	b2db      	uxtb	r3, r3
 800242a:	4618      	mov	r0, r3
 800242c:	370c      	adds	r7, #12
 800242e:	46bd      	mov	sp, r7
 8002430:	bc80      	pop	{r7}
 8002432:	4770      	bx	lr

08002434 <LL_SPI_TransmitData8>:
 8002434:	b480      	push	{r7}
 8002436:	b083      	sub	sp, #12
 8002438:	af00      	add	r7, sp, #0
 800243a:	6078      	str	r0, [r7, #4]
 800243c:	460b      	mov	r3, r1
 800243e:	70fb      	strb	r3, [r7, #3]
 8002440:	78fa      	ldrb	r2, [r7, #3]
 8002442:	687b      	ldr	r3, [r7, #4]
 8002444:	60da      	str	r2, [r3, #12]
 8002446:	bf00      	nop
 8002448:	370c      	adds	r7, #12
 800244a:	46bd      	mov	sp, r7
 800244c:	bc80      	pop	{r7}
 800244e:	4770      	bx	lr

08002450 <oled_hw_config>:
 8002450:	b580      	push	{r7, lr}
 8002452:	af00      	add	r7, sp, #0
 8002454:	2008      	movs	r0, #8
 8002456:	f7ff ff3f 	bl	80022d8 <LL_APB2_GRP1_EnableClock>
 800245a:	2201      	movs	r2, #1
 800245c:	f240 1101 	movw	r1, #257	; 0x101
 8002460:	4823      	ldr	r0, [pc, #140]	; (80024f0 <oled_hw_config+0xa0>)
 8002462:	f7ff febb 	bl	80021dc <LL_GPIO_SetPinMode>
 8002466:	2201      	movs	r2, #1
 8002468:	f240 2102 	movw	r1, #514	; 0x202
 800246c:	4820      	ldr	r0, [pc, #128]	; (80024f0 <oled_hw_config+0xa0>)
 800246e:	f7ff feb5 	bl	80021dc <LL_GPIO_SetPinMode>
 8002472:	2004      	movs	r0, #4
 8002474:	f7ff ff30 	bl	80022d8 <LL_APB2_GRP1_EnableClock>
 8002478:	2209      	movs	r2, #9
 800247a:	f242 0120 	movw	r1, #8224	; 0x2020
 800247e:	481d      	ldr	r0, [pc, #116]	; (80024f4 <oled_hw_config+0xa4>)
 8002480:	f7ff feac 	bl	80021dc <LL_GPIO_SetPinMode>
 8002484:	2203      	movs	r2, #3
 8002486:	f242 0120 	movw	r1, #8224	; 0x2020
 800248a:	481a      	ldr	r0, [pc, #104]	; (80024f4 <oled_hw_config+0xa4>)
 800248c:	f7ff fed6 	bl	800223c <LL_GPIO_SetPinSpeed>
 8002490:	2209      	movs	r2, #9
 8002492:	f248 0180 	movw	r1, #32896	; 0x8080
 8002496:	4817      	ldr	r0, [pc, #92]	; (80024f4 <oled_hw_config+0xa4>)
 8002498:	f7ff fea0 	bl	80021dc <LL_GPIO_SetPinMode>
 800249c:	2203      	movs	r2, #3
 800249e:	f248 0180 	movw	r1, #32896	; 0x8080
 80024a2:	4814      	ldr	r0, [pc, #80]	; (80024f4 <oled_hw_config+0xa4>)
 80024a4:	f7ff feca 	bl	800223c <LL_GPIO_SetPinSpeed>
 80024a8:	f44f 5080 	mov.w	r0, #4096	; 0x1000
 80024ac:	f7ff ff14 	bl	80022d8 <LL_APB2_GRP1_EnableClock>
 80024b0:	f44f 7182 	mov.w	r1, #260	; 0x104
 80024b4:	4810      	ldr	r0, [pc, #64]	; (80024f8 <oled_hw_config+0xa8>)
 80024b6:	f7ff ff36 	bl	8002326 <LL_SPI_SetMode>
 80024ba:	2100      	movs	r1, #0
 80024bc:	480e      	ldr	r0, [pc, #56]	; (80024f8 <oled_hw_config+0xa8>)
 80024be:	f7ff ff44 	bl	800234a <LL_SPI_SetBaudRatePrescaler>
 80024c2:	2100      	movs	r1, #0
 80024c4:	480c      	ldr	r0, [pc, #48]	; (80024f8 <oled_hw_config+0xa8>)
 80024c6:	f7ff ff64 	bl	8002392 <LL_SPI_SetTransferDirection>
 80024ca:	2100      	movs	r1, #0
 80024cc:	480a      	ldr	r0, [pc, #40]	; (80024f8 <oled_hw_config+0xa8>)
 80024ce:	f7ff ff4e 	bl	800236e <LL_SPI_SetTransferBitOrder>
 80024d2:	2100      	movs	r1, #0
 80024d4:	4808      	ldr	r0, [pc, #32]	; (80024f8 <oled_hw_config+0xa8>)
 80024d6:	f7ff ff6e 	bl	80023b6 <LL_SPI_SetDataWidth>
 80024da:	f44f 7100 	mov.w	r1, #512	; 0x200
 80024de:	4806      	ldr	r0, [pc, #24]	; (80024f8 <oled_hw_config+0xa8>)
 80024e0:	f7ff ff7b 	bl	80023da <LL_SPI_SetNSSMode>
 80024e4:	4804      	ldr	r0, [pc, #16]	; (80024f8 <oled_hw_config+0xa8>)
 80024e6:	f7ff ff0f 	bl	8002308 <LL_SPI_Enable>
 80024ea:	bf00      	nop
 80024ec:	bd80      	pop	{r7, pc}
 80024ee:	bf00      	nop
 80024f0:	40010c00 	.word	0x40010c00
 80024f4:	40010800 	.word	0x40010800
 80024f8:	40013000 	.word	0x40013000

080024fc <oled_reset>:
 80024fc:	b580      	push	{r7, lr}
 80024fe:	b082      	sub	sp, #8
 8002500:	af00      	add	r7, sp, #0
 8002502:	4b0f      	ldr	r3, [pc, #60]	; (8002540 <oled_reset+0x44>)
 8002504:	607b      	str	r3, [r7, #4]
 8002506:	f240 1101 	movw	r1, #257	; 0x101
 800250a:	480e      	ldr	r0, [pc, #56]	; (8002544 <oled_reset+0x48>)
 800250c:	f7ff fed5 	bl	80022ba <LL_GPIO_ResetOutputPin>
 8002510:	687b      	ldr	r3, [r7, #4]
 8002512:	3b01      	subs	r3, #1
 8002514:	607b      	str	r3, [r7, #4]
 8002516:	687b      	ldr	r3, [r7, #4]
 8002518:	2b00      	cmp	r3, #0
 800251a:	d1f9      	bne.n	8002510 <oled_reset+0x14>
 800251c:	f240 1101 	movw	r1, #257	; 0x101
 8002520:	4808      	ldr	r0, [pc, #32]	; (8002544 <oled_reset+0x48>)
 8002522:	f7ff febb 	bl	800229c <LL_GPIO_SetOutputPin>
 8002526:	4b06      	ldr	r3, [pc, #24]	; (8002540 <oled_reset+0x44>)
 8002528:	607b      	str	r3, [r7, #4]
 800252a:	687b      	ldr	r3, [r7, #4]
 800252c:	3b01      	subs	r3, #1
 800252e:	607b      	str	r3, [r7, #4]
 8002530:	687b      	ldr	r3, [r7, #4]
 8002532:	2b00      	cmp	r3, #0
 8002534:	d1f9      	bne.n	800252a <oled_reset+0x2e>
 8002536:	bf00      	nop
 8002538:	3708      	adds	r7, #8
 800253a:	46bd      	mov	sp, r7
 800253c:	bd80      	pop	{r7, pc}
 800253e:	bf00      	nop
 8002540:	00011940 	.word	0x00011940
 8002544:	40010c00 	.word	0x40010c00

08002548 <oled_cmd_send>:
 8002548:	b580      	push	{r7, lr}
 800254a:	b082      	sub	sp, #8
 800254c:	af00      	add	r7, sp, #0
 800254e:	4603      	mov	r3, r0
 8002550:	71fb      	strb	r3, [r7, #7]
 8002552:	f240 2102 	movw	r1, #514	; 0x202
 8002556:	480a      	ldr	r0, [pc, #40]	; (8002580 <oled_cmd_send+0x38>)
 8002558:	f7ff feaf 	bl	80022ba <LL_GPIO_ResetOutputPin>
 800255c:	79fb      	ldrb	r3, [r7, #7]
 800255e:	4619      	mov	r1, r3
 8002560:	4808      	ldr	r0, [pc, #32]	; (8002584 <oled_cmd_send+0x3c>)
 8002562:	f7ff ff67 	bl	8002434 <LL_SPI_TransmitData8>
 8002566:	bf00      	nop
 8002568:	4806      	ldr	r0, [pc, #24]	; (8002584 <oled_cmd_send+0x3c>)
 800256a:	f7ff ff51 	bl	8002410 <LL_SPI_IsActiveFlag_TXE>
 800256e:	4603      	mov	r3, r0
 8002570:	2b00      	cmp	r3, #0
 8002572:	d0f9      	beq.n	8002568 <oled_cmd_send+0x20>
 8002574:	2300      	movs	r3, #0
 8002576:	4618      	mov	r0, r3
 8002578:	3708      	adds	r7, #8
 800257a:	46bd      	mov	sp, r7
 800257c:	bd80      	pop	{r7, pc}
 800257e:	bf00      	nop
 8002580:	40010c00 	.word	0x40010c00
 8002584:	40013000 	.word	0x40013000

08002588 <oled_data_send>:
 8002588:	b580      	push	{r7, lr}
 800258a:	b084      	sub	sp, #16
 800258c:	af00      	add	r7, sp, #0
 800258e:	6078      	str	r0, [r7, #4]
 8002590:	460b      	mov	r3, r1
 8002592:	70fb      	strb	r3, [r7, #3]
 8002594:	2300      	movs	r3, #0
 8002596:	73fb      	strb	r3, [r7, #15]
 8002598:	78fb      	ldrb	r3, [r7, #3]
 800259a:	2b00      	cmp	r3, #0
 800259c:	d101      	bne.n	80025a2 <oled_data_send+0x1a>
 800259e:	2300      	movs	r3, #0
 80025a0:	e01d      	b.n	80025de <oled_data_send+0x56>
 80025a2:	f240 2102 	movw	r1, #514	; 0x202
 80025a6:	4810      	ldr	r0, [pc, #64]	; (80025e8 <oled_data_send+0x60>)
 80025a8:	f7ff fe78 	bl	800229c <LL_GPIO_SetOutputPin>
 80025ac:	e011      	b.n	80025d2 <oled_data_send+0x4a>
 80025ae:	7bfb      	ldrb	r3, [r7, #15]
 80025b0:	1c5a      	adds	r2, r3, #1
 80025b2:	73fa      	strb	r2, [r7, #15]
 80025b4:	461a      	mov	r2, r3
 80025b6:	687b      	ldr	r3, [r7, #4]
 80025b8:	4413      	add	r3, r2
 80025ba:	781b      	ldrb	r3, [r3, #0]
 80025bc:	4619      	mov	r1, r3
 80025be:	480b      	ldr	r0, [pc, #44]	; (80025ec <oled_data_send+0x64>)
 80025c0:	f7ff ff38 	bl	8002434 <LL_SPI_TransmitData8>
 80025c4:	bf00      	nop
 80025c6:	4809      	ldr	r0, [pc, #36]	; (80025ec <oled_data_send+0x64>)
 80025c8:	f7ff ff22 	bl	8002410 <LL_SPI_IsActiveFlag_TXE>
 80025cc:	4603      	mov	r3, r0
 80025ce:	2b00      	cmp	r3, #0
 80025d0:	d0f9      	beq.n	80025c6 <oled_data_send+0x3e>
 80025d2:	78fb      	ldrb	r3, [r7, #3]
 80025d4:	1e5a      	subs	r2, r3, #1
 80025d6:	70fa      	strb	r2, [r7, #3]
 80025d8:	2b00      	cmp	r3, #0
 80025da:	d1e8      	bne.n	80025ae <oled_data_send+0x26>
 80025dc:	2300      	movs	r3, #0
 80025de:	4618      	mov	r0, r3
 80025e0:	3710      	adds	r7, #16
 80025e2:	46bd      	mov	sp, r7
 80025e4:	bd80      	pop	{r7, pc}
 80025e6:	bf00      	nop
 80025e8:	40010c00 	.word	0x40010c00
 80025ec:	40013000 	.word	0x40013000

080025f0 <oled_clr>:
 80025f0:	b580      	push	{r7, lr}
 80025f2:	b082      	sub	sp, #8
 80025f4:	af00      	add	r7, sp, #0
 80025f6:	4603      	mov	r3, r0
 80025f8:	71fb      	strb	r3, [r7, #7]
 80025fa:	79fb      	ldrb	r3, [r7, #7]
 80025fc:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8002600:	4619      	mov	r1, r3
 8002602:	4803      	ldr	r0, [pc, #12]	; (8002610 <oled_clr+0x20>)
 8002604:	f004 fdcd 	bl	80071a2 <memset>
 8002608:	bf00      	nop
 800260a:	3708      	adds	r7, #8
 800260c:	46bd      	mov	sp, r7
 800260e:	bd80      	pop	{r7, pc}
 8002610:	200000e4 	.word	0x200000e4

08002614 <oled_update>:
 8002614:	b580      	push	{r7, lr}
 8002616:	b082      	sub	sp, #8
 8002618:	af00      	add	r7, sp, #0
 800261a:	2300      	movs	r3, #0
 800261c:	71fb      	strb	r3, [r7, #7]
 800261e:	e016      	b.n	800264e <oled_update+0x3a>
 8002620:	79fb      	ldrb	r3, [r7, #7]
 8002622:	3b50      	subs	r3, #80	; 0x50
 8002624:	b2db      	uxtb	r3, r3
 8002626:	4618      	mov	r0, r3
 8002628:	f7ff ff8e 	bl	8002548 <oled_cmd_send>
 800262c:	2000      	movs	r0, #0
 800262e:	f7ff ff8b 	bl	8002548 <oled_cmd_send>
 8002632:	2010      	movs	r0, #16
 8002634:	f7ff ff88 	bl	8002548 <oled_cmd_send>
 8002638:	79fb      	ldrb	r3, [r7, #7]
 800263a:	01db      	lsls	r3, r3, #7
 800263c:	4a07      	ldr	r2, [pc, #28]	; (800265c <oled_update+0x48>)
 800263e:	4413      	add	r3, r2
 8002640:	2180      	movs	r1, #128	; 0x80
 8002642:	4618      	mov	r0, r3
 8002644:	f7ff ffa0 	bl	8002588 <oled_data_send>
 8002648:	79fb      	ldrb	r3, [r7, #7]
 800264a:	3301      	adds	r3, #1
 800264c:	71fb      	strb	r3, [r7, #7]
 800264e:	79fb      	ldrb	r3, [r7, #7]
 8002650:	2b07      	cmp	r3, #7
 8002652:	d9e5      	bls.n	8002620 <oled_update+0xc>
 8002654:	bf00      	nop
 8002656:	3708      	adds	r7, #8
 8002658:	46bd      	mov	sp, r7
 800265a:	bd80      	pop	{r7, pc}
 800265c:	200000e4 	.word	0x200000e4

08002660 <oled_config>:
 8002660:	b580      	push	{r7, lr}
 8002662:	af00      	add	r7, sp, #0
 8002664:	f7ff fef4 	bl	8002450 <oled_hw_config>
 8002668:	f7ff ff48 	bl	80024fc <oled_reset>
 800266c:	20ae      	movs	r0, #174	; 0xae
 800266e:	f7ff ff6b 	bl	8002548 <oled_cmd_send>
 8002672:	2020      	movs	r0, #32
 8002674:	f7ff ff68 	bl	8002548 <oled_cmd_send>
 8002678:	2010      	movs	r0, #16
 800267a:	f7ff ff65 	bl	8002548 <oled_cmd_send>
 800267e:	20c8      	movs	r0, #200	; 0xc8
 8002680:	f7ff ff62 	bl	8002548 <oled_cmd_send>
 8002684:	2040      	movs	r0, #64	; 0x40
 8002686:	f7ff ff5f 	bl	8002548 <oled_cmd_send>
 800268a:	2081      	movs	r0, #129	; 0x81
 800268c:	f7ff ff5c 	bl	8002548 <oled_cmd_send>
 8002690:	20ff      	movs	r0, #255	; 0xff
 8002692:	f7ff ff59 	bl	8002548 <oled_cmd_send>
 8002696:	20a1      	movs	r0, #161	; 0xa1
 8002698:	f7ff ff56 	bl	8002548 <oled_cmd_send>
 800269c:	20a6      	movs	r0, #166	; 0xa6
 800269e:	f7ff ff53 	bl	8002548 <oled_cmd_send>
 80026a2:	20a8      	movs	r0, #168	; 0xa8
 80026a4:	f7ff ff50 	bl	8002548 <oled_cmd_send>
 80026a8:	203f      	movs	r0, #63	; 0x3f
 80026aa:	f7ff ff4d 	bl	8002548 <oled_cmd_send>
 80026ae:	20a4      	movs	r0, #164	; 0xa4
 80026b0:	f7ff ff4a 	bl	8002548 <oled_cmd_send>
 80026b4:	20d3      	movs	r0, #211	; 0xd3
 80026b6:	f7ff ff47 	bl	8002548 <oled_cmd_send>
 80026ba:	2000      	movs	r0, #0
 80026bc:	f7ff ff44 	bl	8002548 <oled_cmd_send>
 80026c0:	20d5      	movs	r0, #213	; 0xd5
 80026c2:	f7ff ff41 	bl	8002548 <oled_cmd_send>
 80026c6:	20f0      	movs	r0, #240	; 0xf0
 80026c8:	f7ff ff3e 	bl	8002548 <oled_cmd_send>
 80026cc:	20da      	movs	r0, #218	; 0xda
 80026ce:	f7ff ff3b 	bl	8002548 <oled_cmd_send>
 80026d2:	2012      	movs	r0, #18
 80026d4:	f7ff ff38 	bl	8002548 <oled_cmd_send>
 80026d8:	208d      	movs	r0, #141	; 0x8d
 80026da:	f7ff ff35 	bl	8002548 <oled_cmd_send>
 80026de:	2014      	movs	r0, #20
 80026e0:	f7ff ff32 	bl	8002548 <oled_cmd_send>
 80026e4:	20af      	movs	r0, #175	; 0xaf
 80026e6:	f7ff ff2f 	bl	8002548 <oled_cmd_send>
 80026ea:	2000      	movs	r0, #0
 80026ec:	f7ff ff80 	bl	80025f0 <oled_clr>
 80026f0:	f7ff ff90 	bl	8002614 <oled_update>
 80026f4:	bf00      	nop
 80026f6:	bd80      	pop	{r7, pc}

080026f8 <oled_set_pix>:
 80026f8:	b480      	push	{r7}
 80026fa:	b083      	sub	sp, #12
 80026fc:	af00      	add	r7, sp, #0
 80026fe:	4603      	mov	r3, r0
 8002700:	71fb      	strb	r3, [r7, #7]
 8002702:	460b      	mov	r3, r1
 8002704:	71bb      	strb	r3, [r7, #6]
 8002706:	4613      	mov	r3, r2
 8002708:	717b      	strb	r3, [r7, #5]
 800270a:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800270e:	2b00      	cmp	r3, #0
 8002710:	db3e      	blt.n	8002790 <oled_set_pix+0x98>
 8002712:	79bb      	ldrb	r3, [r7, #6]
 8002714:	2b3f      	cmp	r3, #63	; 0x3f
 8002716:	d83b      	bhi.n	8002790 <oled_set_pix+0x98>
 8002718:	797b      	ldrb	r3, [r7, #5]
 800271a:	2b00      	cmp	r3, #0
 800271c:	d01a      	beq.n	8002754 <oled_set_pix+0x5c>
 800271e:	79bb      	ldrb	r3, [r7, #6]
 8002720:	08db      	lsrs	r3, r3, #3
 8002722:	b2d8      	uxtb	r0, r3
 8002724:	4603      	mov	r3, r0
 8002726:	01da      	lsls	r2, r3, #7
 8002728:	79fb      	ldrb	r3, [r7, #7]
 800272a:	4413      	add	r3, r2
 800272c:	4a1b      	ldr	r2, [pc, #108]	; (800279c <oled_set_pix+0xa4>)
 800272e:	5cd3      	ldrb	r3, [r2, r3]
 8002730:	b25a      	sxtb	r2, r3
 8002732:	79bb      	ldrb	r3, [r7, #6]
 8002734:	f003 0307 	and.w	r3, r3, #7
 8002738:	2101      	movs	r1, #1
 800273a:	fa01 f303 	lsl.w	r3, r1, r3
 800273e:	b25b      	sxtb	r3, r3
 8002740:	4313      	orrs	r3, r2
 8002742:	b259      	sxtb	r1, r3
 8002744:	4603      	mov	r3, r0
 8002746:	01da      	lsls	r2, r3, #7
 8002748:	79fb      	ldrb	r3, [r7, #7]
 800274a:	4413      	add	r3, r2
 800274c:	b2c9      	uxtb	r1, r1
 800274e:	4a13      	ldr	r2, [pc, #76]	; (800279c <oled_set_pix+0xa4>)
 8002750:	54d1      	strb	r1, [r2, r3]
 8002752:	e01e      	b.n	8002792 <oled_set_pix+0x9a>
 8002754:	79bb      	ldrb	r3, [r7, #6]
 8002756:	08db      	lsrs	r3, r3, #3
 8002758:	b2d8      	uxtb	r0, r3
 800275a:	4603      	mov	r3, r0
 800275c:	01da      	lsls	r2, r3, #7
 800275e:	79fb      	ldrb	r3, [r7, #7]
 8002760:	4413      	add	r3, r2
 8002762:	4a0e      	ldr	r2, [pc, #56]	; (800279c <oled_set_pix+0xa4>)
 8002764:	5cd3      	ldrb	r3, [r2, r3]
 8002766:	b25a      	sxtb	r2, r3
 8002768:	79bb      	ldrb	r3, [r7, #6]
 800276a:	f003 0307 	and.w	r3, r3, #7
 800276e:	2101      	movs	r1, #1
 8002770:	fa01 f303 	lsl.w	r3, r1, r3
 8002774:	b25b      	sxtb	r3, r3
 8002776:	43db      	mvns	r3, r3
 8002778:	b25b      	sxtb	r3, r3
 800277a:	4013      	ands	r3, r2
 800277c:	b259      	sxtb	r1, r3
 800277e:	4603      	mov	r3, r0
 8002780:	01da      	lsls	r2, r3, #7
 8002782:	79fb      	ldrb	r3, [r7, #7]
 8002784:	4413      	add	r3, r2
 8002786:	b2c9      	uxtb	r1, r1
 8002788:	4a04      	ldr	r2, [pc, #16]	; (800279c <oled_set_pix+0xa4>)
 800278a:	54d1      	strb	r1, [r2, r3]
 800278c:	bf00      	nop
 800278e:	e000      	b.n	8002792 <oled_set_pix+0x9a>
 8002790:	bf00      	nop
 8002792:	370c      	adds	r7, #12
 8002794:	46bd      	mov	sp, r7
 8002796:	bc80      	pop	{r7}
 8002798:	4770      	bx	lr
 800279a:	bf00      	nop
 800279c:	200000e4 	.word	0x200000e4

080027a0 <oled_set_cursor>:
 80027a0:	b480      	push	{r7}
 80027a2:	b083      	sub	sp, #12
 80027a4:	af00      	add	r7, sp, #0
 80027a6:	4603      	mov	r3, r0
 80027a8:	460a      	mov	r2, r1
 80027aa:	71fb      	strb	r3, [r7, #7]
 80027ac:	4613      	mov	r3, r2
 80027ae:	71bb      	strb	r3, [r7, #6]
 80027b0:	4a05      	ldr	r2, [pc, #20]	; (80027c8 <oled_set_cursor+0x28>)
 80027b2:	79fb      	ldrb	r3, [r7, #7]
 80027b4:	7013      	strb	r3, [r2, #0]
 80027b6:	4a05      	ldr	r2, [pc, #20]	; (80027cc <oled_set_cursor+0x2c>)
 80027b8:	79bb      	ldrb	r3, [r7, #6]
 80027ba:	7013      	strb	r3, [r2, #0]
 80027bc:	bf00      	nop
 80027be:	370c      	adds	r7, #12
 80027c0:	46bd      	mov	sp, r7
 80027c2:	bc80      	pop	{r7}
 80027c4:	4770      	bx	lr
 80027c6:	bf00      	nop
 80027c8:	200004e4 	.word	0x200004e4
 80027cc:	200004e5 	.word	0x200004e5

080027d0 <oled_putc>:
 80027d0:	b580      	push	{r7, lr}
 80027d2:	b084      	sub	sp, #16
 80027d4:	af00      	add	r7, sp, #0
 80027d6:	4603      	mov	r3, r0
 80027d8:	71fb      	strb	r3, [r7, #7]
 80027da:	79fb      	ldrb	r3, [r7, #7]
 80027dc:	2b0a      	cmp	r3, #10
 80027de:	d106      	bne.n	80027ee <oled_putc+0x1e>
 80027e0:	4b28      	ldr	r3, [pc, #160]	; (8002884 <oled_putc+0xb4>)
 80027e2:	781b      	ldrb	r3, [r3, #0]
 80027e4:	3301      	adds	r3, #1
 80027e6:	b2da      	uxtb	r2, r3
 80027e8:	4b26      	ldr	r3, [pc, #152]	; (8002884 <oled_putc+0xb4>)
 80027ea:	701a      	strb	r2, [r3, #0]
 80027ec:	e047      	b.n	800287e <oled_putc+0xae>
 80027ee:	79fb      	ldrb	r3, [r7, #7]
 80027f0:	2b0d      	cmp	r3, #13
 80027f2:	d103      	bne.n	80027fc <oled_putc+0x2c>
 80027f4:	4b24      	ldr	r3, [pc, #144]	; (8002888 <oled_putc+0xb8>)
 80027f6:	2200      	movs	r2, #0
 80027f8:	701a      	strb	r2, [r3, #0]
 80027fa:	e040      	b.n	800287e <oled_putc+0xae>
 80027fc:	2300      	movs	r3, #0
 80027fe:	73bb      	strb	r3, [r7, #14]
 8002800:	e031      	b.n	8002866 <oled_putc+0x96>
 8002802:	2300      	movs	r3, #0
 8002804:	73fb      	strb	r3, [r7, #15]
 8002806:	e026      	b.n	8002856 <oled_putc+0x86>
 8002808:	4b20      	ldr	r3, [pc, #128]	; (800288c <oled_putc+0xbc>)
 800280a:	689b      	ldr	r3, [r3, #8]
 800280c:	7bba      	ldrb	r2, [r7, #14]
 800280e:	7bf9      	ldrb	r1, [r7, #15]
 8002810:	79f8      	ldrb	r0, [r7, #7]
 8002812:	4798      	blx	r3
 8002814:	4603      	mov	r3, r0
 8002816:	737b      	strb	r3, [r7, #13]
 8002818:	4b1c      	ldr	r3, [pc, #112]	; (800288c <oled_putc+0xbc>)
 800281a:	791b      	ldrb	r3, [r3, #4]
 800281c:	3301      	adds	r3, #1
 800281e:	b2db      	uxtb	r3, r3
 8002820:	4a19      	ldr	r2, [pc, #100]	; (8002888 <oled_putc+0xb8>)
 8002822:	7812      	ldrb	r2, [r2, #0]
 8002824:	fb02 f303 	mul.w	r3, r2, r3
 8002828:	b2da      	uxtb	r2, r3
 800282a:	7bfb      	ldrb	r3, [r7, #15]
 800282c:	4413      	add	r3, r2
 800282e:	b2d8      	uxtb	r0, r3
 8002830:	4b16      	ldr	r3, [pc, #88]	; (800288c <oled_putc+0xbc>)
 8002832:	795b      	ldrb	r3, [r3, #5]
 8002834:	3302      	adds	r3, #2
 8002836:	b2db      	uxtb	r3, r3
 8002838:	4a12      	ldr	r2, [pc, #72]	; (8002884 <oled_putc+0xb4>)
 800283a:	7812      	ldrb	r2, [r2, #0]
 800283c:	fb02 f303 	mul.w	r3, r2, r3
 8002840:	b2da      	uxtb	r2, r3
 8002842:	7bbb      	ldrb	r3, [r7, #14]
 8002844:	4413      	add	r3, r2
 8002846:	b2db      	uxtb	r3, r3
 8002848:	7b7a      	ldrb	r2, [r7, #13]
 800284a:	4619      	mov	r1, r3
 800284c:	f7ff ff54 	bl	80026f8 <oled_set_pix>
 8002850:	7bfb      	ldrb	r3, [r7, #15]
 8002852:	3301      	adds	r3, #1
 8002854:	73fb      	strb	r3, [r7, #15]
 8002856:	4b0d      	ldr	r3, [pc, #52]	; (800288c <oled_putc+0xbc>)
 8002858:	791b      	ldrb	r3, [r3, #4]
 800285a:	7bfa      	ldrb	r2, [r7, #15]
 800285c:	429a      	cmp	r2, r3
 800285e:	d3d3      	bcc.n	8002808 <oled_putc+0x38>
 8002860:	7bbb      	ldrb	r3, [r7, #14]
 8002862:	3301      	adds	r3, #1
 8002864:	73bb      	strb	r3, [r7, #14]
 8002866:	4b09      	ldr	r3, [pc, #36]	; (800288c <oled_putc+0xbc>)
 8002868:	795b      	ldrb	r3, [r3, #5]
 800286a:	7bba      	ldrb	r2, [r7, #14]
 800286c:	429a      	cmp	r2, r3
 800286e:	d3c8      	bcc.n	8002802 <oled_putc+0x32>
 8002870:	4b05      	ldr	r3, [pc, #20]	; (8002888 <oled_putc+0xb8>)
 8002872:	781b      	ldrb	r3, [r3, #0]
 8002874:	3301      	adds	r3, #1
 8002876:	b2da      	uxtb	r2, r3
 8002878:	4b03      	ldr	r3, [pc, #12]	; (8002888 <oled_putc+0xb8>)
 800287a:	701a      	strb	r2, [r3, #0]
 800287c:	bf00      	nop
 800287e:	3710      	adds	r7, #16
 8002880:	46bd      	mov	sp, r7
 8002882:	bd80      	pop	{r7, pc}
 8002884:	200004e5 	.word	0x200004e5
 8002888:	200004e4 	.word	0x200004e4
 800288c:	20000004 	.word	0x20000004

08002890 <ow_search>:
 8002890:	b580      	push	{r7, lr}
 8002892:	b084      	sub	sp, #16
 8002894:	af00      	add	r7, sp, #0
 8002896:	6078      	str	r0, [r7, #4]
 8002898:	460b      	mov	r3, r1
 800289a:	70fb      	strb	r3, [r7, #3]
 800289c:	2301      	movs	r3, #1
 800289e:	73fb      	strb	r3, [r7, #15]
 80028a0:	2300      	movs	r3, #0
 80028a2:	73bb      	strb	r3, [r7, #14]
 80028a4:	2300      	movs	r3, #0
 80028a6:	737b      	strb	r3, [r7, #13]
 80028a8:	2301      	movs	r3, #1
 80028aa:	72fb      	strb	r3, [r7, #11]
 80028ac:	2301      	movs	r3, #1
 80028ae:	733b      	strb	r3, [r7, #12]
 80028b0:	687b      	ldr	r3, [r7, #4]
 80028b2:	7a9b      	ldrb	r3, [r3, #10]
 80028b4:	2b00      	cmp	r3, #0
 80028b6:	f040 809a 	bne.w	80029ee <ow_search+0x15e>
 80028ba:	6878      	ldr	r0, [r7, #4]
 80028bc:	f000 f8bd 	bl	8002a3a <ow_reset>
 80028c0:	4603      	mov	r3, r0
 80028c2:	2b00      	cmp	r3, #0
 80028c4:	d00a      	beq.n	80028dc <ow_search+0x4c>
 80028c6:	687b      	ldr	r3, [r7, #4]
 80028c8:	2200      	movs	r2, #0
 80028ca:	721a      	strb	r2, [r3, #8]
 80028cc:	687b      	ldr	r3, [r7, #4]
 80028ce:	2200      	movs	r2, #0
 80028d0:	729a      	strb	r2, [r3, #10]
 80028d2:	687b      	ldr	r3, [r7, #4]
 80028d4:	2200      	movs	r2, #0
 80028d6:	725a      	strb	r2, [r3, #9]
 80028d8:	2301      	movs	r3, #1
 80028da:	e09b      	b.n	8002a14 <ow_search+0x184>
 80028dc:	78fb      	ldrb	r3, [r7, #3]
 80028de:	4619      	mov	r1, r3
 80028e0:	6878      	ldr	r0, [r7, #4]
 80028e2:	f000 f92a 	bl	8002b3a <ow_write_byte>
 80028e6:	6878      	ldr	r0, [r7, #4]
 80028e8:	f000 f8fe 	bl	8002ae8 <ow_read_bit>
 80028ec:	4603      	mov	r3, r0
 80028ee:	727b      	strb	r3, [r7, #9]
 80028f0:	6878      	ldr	r0, [r7, #4]
 80028f2:	f000 f8f9 	bl	8002ae8 <ow_read_bit>
 80028f6:	4603      	mov	r3, r0
 80028f8:	723b      	strb	r3, [r7, #8]
 80028fa:	7a7b      	ldrb	r3, [r7, #9]
 80028fc:	2b01      	cmp	r3, #1
 80028fe:	d102      	bne.n	8002906 <ow_search+0x76>
 8002900:	7a3b      	ldrb	r3, [r7, #8]
 8002902:	2b01      	cmp	r3, #1
 8002904:	d064      	beq.n	80029d0 <ow_search+0x140>
 8002906:	7a7a      	ldrb	r2, [r7, #9]
 8002908:	7a3b      	ldrb	r3, [r7, #8]
 800290a:	429a      	cmp	r2, r3
 800290c:	d002      	beq.n	8002914 <ow_search+0x84>
 800290e:	7a7b      	ldrb	r3, [r7, #9]
 8002910:	72bb      	strb	r3, [r7, #10]
 8002912:	e026      	b.n	8002962 <ow_search+0xd2>
 8002914:	687b      	ldr	r3, [r7, #4]
 8002916:	7a1b      	ldrb	r3, [r3, #8]
 8002918:	7bfa      	ldrb	r2, [r7, #15]
 800291a:	429a      	cmp	r2, r3
 800291c:	d20d      	bcs.n	800293a <ow_search+0xaa>
 800291e:	7b7b      	ldrb	r3, [r7, #13]
 8002920:	687a      	ldr	r2, [r7, #4]
 8002922:	4413      	add	r3, r2
 8002924:	7ada      	ldrb	r2, [r3, #11]
 8002926:	7afb      	ldrb	r3, [r7, #11]
 8002928:	4013      	ands	r3, r2
 800292a:	b2db      	uxtb	r3, r3
 800292c:	2b00      	cmp	r3, #0
 800292e:	bf14      	ite	ne
 8002930:	2301      	movne	r3, #1
 8002932:	2300      	moveq	r3, #0
 8002934:	b2db      	uxtb	r3, r3
 8002936:	72bb      	strb	r3, [r7, #10]
 8002938:	e008      	b.n	800294c <ow_search+0xbc>
 800293a:	687b      	ldr	r3, [r7, #4]
 800293c:	7a1b      	ldrb	r3, [r3, #8]
 800293e:	7bfa      	ldrb	r2, [r7, #15]
 8002940:	429a      	cmp	r2, r3
 8002942:	bf0c      	ite	eq
 8002944:	2301      	moveq	r3, #1
 8002946:	2300      	movne	r3, #0
 8002948:	b2db      	uxtb	r3, r3
 800294a:	72bb      	strb	r3, [r7, #10]
 800294c:	7abb      	ldrb	r3, [r7, #10]
 800294e:	2b00      	cmp	r3, #0
 8002950:	d107      	bne.n	8002962 <ow_search+0xd2>
 8002952:	7bfb      	ldrb	r3, [r7, #15]
 8002954:	73bb      	strb	r3, [r7, #14]
 8002956:	7bbb      	ldrb	r3, [r7, #14]
 8002958:	2b08      	cmp	r3, #8
 800295a:	d802      	bhi.n	8002962 <ow_search+0xd2>
 800295c:	687b      	ldr	r3, [r7, #4]
 800295e:	7bba      	ldrb	r2, [r7, #14]
 8002960:	725a      	strb	r2, [r3, #9]
 8002962:	7abb      	ldrb	r3, [r7, #10]
 8002964:	2b01      	cmp	r3, #1
 8002966:	d10c      	bne.n	8002982 <ow_search+0xf2>
 8002968:	7b7b      	ldrb	r3, [r7, #13]
 800296a:	687a      	ldr	r2, [r7, #4]
 800296c:	4413      	add	r3, r2
 800296e:	7ad9      	ldrb	r1, [r3, #11]
 8002970:	7b7b      	ldrb	r3, [r7, #13]
 8002972:	7afa      	ldrb	r2, [r7, #11]
 8002974:	430a      	orrs	r2, r1
 8002976:	b2d1      	uxtb	r1, r2
 8002978:	687a      	ldr	r2, [r7, #4]
 800297a:	4413      	add	r3, r2
 800297c:	460a      	mov	r2, r1
 800297e:	72da      	strb	r2, [r3, #11]
 8002980:	e010      	b.n	80029a4 <ow_search+0x114>
 8002982:	7b7b      	ldrb	r3, [r7, #13]
 8002984:	687a      	ldr	r2, [r7, #4]
 8002986:	4413      	add	r3, r2
 8002988:	7adb      	ldrb	r3, [r3, #11]
 800298a:	b25a      	sxtb	r2, r3
 800298c:	f997 300b 	ldrsb.w	r3, [r7, #11]
 8002990:	43db      	mvns	r3, r3
 8002992:	b25b      	sxtb	r3, r3
 8002994:	4013      	ands	r3, r2
 8002996:	b25a      	sxtb	r2, r3
 8002998:	7b7b      	ldrb	r3, [r7, #13]
 800299a:	b2d1      	uxtb	r1, r2
 800299c:	687a      	ldr	r2, [r7, #4]
 800299e:	4413      	add	r3, r2
 80029a0:	460a      	mov	r2, r1
 80029a2:	72da      	strb	r2, [r3, #11]
 80029a4:	7abb      	ldrb	r3, [r7, #10]
 80029a6:	4619      	mov	r1, r3
 80029a8:	6878      	ldr	r0, [r7, #4]
 80029aa:	f000 f86b 	bl	8002a84 <ow_write_bit>
 80029ae:	7bfb      	ldrb	r3, [r7, #15]
 80029b0:	3301      	adds	r3, #1
 80029b2:	73fb      	strb	r3, [r7, #15]
 80029b4:	7afb      	ldrb	r3, [r7, #11]
 80029b6:	005b      	lsls	r3, r3, #1
 80029b8:	72fb      	strb	r3, [r7, #11]
 80029ba:	7afb      	ldrb	r3, [r7, #11]
 80029bc:	2b00      	cmp	r3, #0
 80029be:	d104      	bne.n	80029ca <ow_search+0x13a>
 80029c0:	7b7b      	ldrb	r3, [r7, #13]
 80029c2:	3301      	adds	r3, #1
 80029c4:	737b      	strb	r3, [r7, #13]
 80029c6:	2301      	movs	r3, #1
 80029c8:	72fb      	strb	r3, [r7, #11]
 80029ca:	7b7b      	ldrb	r3, [r7, #13]
 80029cc:	2b07      	cmp	r3, #7
 80029ce:	d98a      	bls.n	80028e6 <ow_search+0x56>
 80029d0:	7bfb      	ldrb	r3, [r7, #15]
 80029d2:	2b40      	cmp	r3, #64	; 0x40
 80029d4:	d90b      	bls.n	80029ee <ow_search+0x15e>
 80029d6:	687b      	ldr	r3, [r7, #4]
 80029d8:	7bba      	ldrb	r2, [r7, #14]
 80029da:	721a      	strb	r2, [r3, #8]
 80029dc:	687b      	ldr	r3, [r7, #4]
 80029de:	7a1b      	ldrb	r3, [r3, #8]
 80029e0:	2b00      	cmp	r3, #0
 80029e2:	d102      	bne.n	80029ea <ow_search+0x15a>
 80029e4:	687b      	ldr	r3, [r7, #4]
 80029e6:	2201      	movs	r2, #1
 80029e8:	729a      	strb	r2, [r3, #10]
 80029ea:	2300      	movs	r3, #0
 80029ec:	733b      	strb	r3, [r7, #12]
 80029ee:	7b3b      	ldrb	r3, [r7, #12]
 80029f0:	2b00      	cmp	r3, #0
 80029f2:	d103      	bne.n	80029fc <ow_search+0x16c>
 80029f4:	687b      	ldr	r3, [r7, #4]
 80029f6:	7adb      	ldrb	r3, [r3, #11]
 80029f8:	2b00      	cmp	r3, #0
 80029fa:	d10a      	bne.n	8002a12 <ow_search+0x182>
 80029fc:	687b      	ldr	r3, [r7, #4]
 80029fe:	2200      	movs	r2, #0
 8002a00:	721a      	strb	r2, [r3, #8]
 8002a02:	687b      	ldr	r3, [r7, #4]
 8002a04:	2200      	movs	r2, #0
 8002a06:	729a      	strb	r2, [r3, #10]
 8002a08:	687b      	ldr	r3, [r7, #4]
 8002a0a:	2200      	movs	r2, #0
 8002a0c:	725a      	strb	r2, [r3, #9]
 8002a0e:	2301      	movs	r3, #1
 8002a10:	733b      	strb	r3, [r7, #12]
 8002a12:	7b3b      	ldrb	r3, [r7, #12]
 8002a14:	4618      	mov	r0, r3
 8002a16:	3710      	adds	r7, #16
 8002a18:	46bd      	mov	sp, r7
 8002a1a:	bd80      	pop	{r7, pc}

08002a1c <ow_init>:
 8002a1c:	b580      	push	{r7, lr}
 8002a1e:	b082      	sub	sp, #8
 8002a20:	af00      	add	r7, sp, #0
 8002a22:	6078      	str	r0, [r7, #4]
 8002a24:	687b      	ldr	r3, [r7, #4]
 8002a26:	4618      	mov	r0, r3
 8002a28:	f000 fa76 	bl	8002f18 <ow_hw_config>
 8002a2c:	6878      	ldr	r0, [r7, #4]
 8002a2e:	f000 f804 	bl	8002a3a <ow_reset>
 8002a32:	bf00      	nop
 8002a34:	3708      	adds	r7, #8
 8002a36:	46bd      	mov	sp, r7
 8002a38:	bd80      	pop	{r7, pc}

08002a3a <ow_reset>:
 8002a3a:	b580      	push	{r7, lr}
 8002a3c:	b084      	sub	sp, #16
 8002a3e:	af00      	add	r7, sp, #0
 8002a40:	6078      	str	r0, [r7, #4]
 8002a42:	687b      	ldr	r3, [r7, #4]
 8002a44:	4618      	mov	r0, r3
 8002a46:	f000 faa7 	bl	8002f98 <ow_set_output>
 8002a4a:	687b      	ldr	r3, [r7, #4]
 8002a4c:	4618      	mov	r0, r3
 8002a4e:	f000 fabb 	bl	8002fc8 <ow_output_low>
 8002a52:	f44f 70f0 	mov.w	r0, #480	; 0x1e0
 8002a56:	f000 fae8 	bl	800302a <ow_delay_us>
 8002a5a:	687b      	ldr	r3, [r7, #4]
 8002a5c:	4618      	mov	r0, r3
 8002a5e:	f000 fac3 	bl	8002fe8 <ow_set_input>
 8002a62:	2046      	movs	r0, #70	; 0x46
 8002a64:	f000 fae1 	bl	800302a <ow_delay_us>
 8002a68:	687b      	ldr	r3, [r7, #4]
 8002a6a:	4618      	mov	r0, r3
 8002a6c:	f000 facc 	bl	8003008 <ow_read_input>
 8002a70:	60f8      	str	r0, [r7, #12]
 8002a72:	f44f 70cd 	mov.w	r0, #410	; 0x19a
 8002a76:	f000 fad8 	bl	800302a <ow_delay_us>
 8002a7a:	68fb      	ldr	r3, [r7, #12]
 8002a7c:	4618      	mov	r0, r3
 8002a7e:	3710      	adds	r7, #16
 8002a80:	46bd      	mov	sp, r7
 8002a82:	bd80      	pop	{r7, pc}

08002a84 <ow_write_bit>:
 8002a84:	b580      	push	{r7, lr}
 8002a86:	b082      	sub	sp, #8
 8002a88:	af00      	add	r7, sp, #0
 8002a8a:	6078      	str	r0, [r7, #4]
 8002a8c:	460b      	mov	r3, r1
 8002a8e:	70fb      	strb	r3, [r7, #3]
 8002a90:	78fb      	ldrb	r3, [r7, #3]
 8002a92:	2b00      	cmp	r3, #0
 8002a94:	d012      	beq.n	8002abc <ow_write_bit+0x38>
 8002a96:	687b      	ldr	r3, [r7, #4]
 8002a98:	4618      	mov	r0, r3
 8002a9a:	f000 fa7d 	bl	8002f98 <ow_set_output>
 8002a9e:	687b      	ldr	r3, [r7, #4]
 8002aa0:	4618      	mov	r0, r3
 8002aa2:	f000 fa91 	bl	8002fc8 <ow_output_low>
 8002aa6:	200a      	movs	r0, #10
 8002aa8:	f000 fabf 	bl	800302a <ow_delay_us>
 8002aac:	687b      	ldr	r3, [r7, #4]
 8002aae:	4618      	mov	r0, r3
 8002ab0:	f000 fa9a 	bl	8002fe8 <ow_set_input>
 8002ab4:	2037      	movs	r0, #55	; 0x37
 8002ab6:	f000 fab8 	bl	800302a <ow_delay_us>
 8002aba:	e012      	b.n	8002ae2 <ow_write_bit+0x5e>
 8002abc:	687b      	ldr	r3, [r7, #4]
 8002abe:	4618      	mov	r0, r3
 8002ac0:	f000 fa6a 	bl	8002f98 <ow_set_output>
 8002ac4:	687b      	ldr	r3, [r7, #4]
 8002ac6:	4618      	mov	r0, r3
 8002ac8:	f000 fa7e 	bl	8002fc8 <ow_output_low>
 8002acc:	2041      	movs	r0, #65	; 0x41
 8002ace:	f000 faac 	bl	800302a <ow_delay_us>
 8002ad2:	687b      	ldr	r3, [r7, #4]
 8002ad4:	4618      	mov	r0, r3
 8002ad6:	f000 fa87 	bl	8002fe8 <ow_set_input>
 8002ada:	2005      	movs	r0, #5
 8002adc:	f000 faa5 	bl	800302a <ow_delay_us>
 8002ae0:	bf00      	nop
 8002ae2:	3708      	adds	r7, #8
 8002ae4:	46bd      	mov	sp, r7
 8002ae6:	bd80      	pop	{r7, pc}

08002ae8 <ow_read_bit>:
 8002ae8:	b580      	push	{r7, lr}
 8002aea:	b084      	sub	sp, #16
 8002aec:	af00      	add	r7, sp, #0
 8002aee:	6078      	str	r0, [r7, #4]
 8002af0:	2300      	movs	r3, #0
 8002af2:	73fb      	strb	r3, [r7, #15]
 8002af4:	687b      	ldr	r3, [r7, #4]
 8002af6:	4618      	mov	r0, r3
 8002af8:	f000 fa4e 	bl	8002f98 <ow_set_output>
 8002afc:	687b      	ldr	r3, [r7, #4]
 8002afe:	4618      	mov	r0, r3
 8002b00:	f000 fa62 	bl	8002fc8 <ow_output_low>
 8002b04:	2003      	movs	r0, #3
 8002b06:	f000 fa90 	bl	800302a <ow_delay_us>
 8002b0a:	687b      	ldr	r3, [r7, #4]
 8002b0c:	4618      	mov	r0, r3
 8002b0e:	f000 fa6b 	bl	8002fe8 <ow_set_input>
 8002b12:	200a      	movs	r0, #10
 8002b14:	f000 fa89 	bl	800302a <ow_delay_us>
 8002b18:	687b      	ldr	r3, [r7, #4]
 8002b1a:	4618      	mov	r0, r3
 8002b1c:	f000 fa74 	bl	8003008 <ow_read_input>
 8002b20:	4603      	mov	r3, r0
 8002b22:	2b00      	cmp	r3, #0
 8002b24:	d001      	beq.n	8002b2a <ow_read_bit+0x42>
 8002b26:	2301      	movs	r3, #1
 8002b28:	73fb      	strb	r3, [r7, #15]
 8002b2a:	2032      	movs	r0, #50	; 0x32
 8002b2c:	f000 fa7d 	bl	800302a <ow_delay_us>
 8002b30:	7bfb      	ldrb	r3, [r7, #15]
 8002b32:	4618      	mov	r0, r3
 8002b34:	3710      	adds	r7, #16
 8002b36:	46bd      	mov	sp, r7
 8002b38:	bd80      	pop	{r7, pc}

08002b3a <ow_write_byte>:
 8002b3a:	b580      	push	{r7, lr}
 8002b3c:	b084      	sub	sp, #16
 8002b3e:	af00      	add	r7, sp, #0
 8002b40:	6078      	str	r0, [r7, #4]
 8002b42:	460b      	mov	r3, r1
 8002b44:	70fb      	strb	r3, [r7, #3]
 8002b46:	2308      	movs	r3, #8
 8002b48:	73fb      	strb	r3, [r7, #15]
 8002b4a:	e00a      	b.n	8002b62 <ow_write_byte+0x28>
 8002b4c:	78fb      	ldrb	r3, [r7, #3]
 8002b4e:	f003 0301 	and.w	r3, r3, #1
 8002b52:	b2db      	uxtb	r3, r3
 8002b54:	4619      	mov	r1, r3
 8002b56:	6878      	ldr	r0, [r7, #4]
 8002b58:	f7ff ff94 	bl	8002a84 <ow_write_bit>
 8002b5c:	78fb      	ldrb	r3, [r7, #3]
 8002b5e:	085b      	lsrs	r3, r3, #1
 8002b60:	70fb      	strb	r3, [r7, #3]
 8002b62:	7bfb      	ldrb	r3, [r7, #15]
 8002b64:	1e5a      	subs	r2, r3, #1
 8002b66:	73fa      	strb	r2, [r7, #15]
 8002b68:	2b00      	cmp	r3, #0
 8002b6a:	d1ef      	bne.n	8002b4c <ow_write_byte+0x12>
 8002b6c:	bf00      	nop
 8002b6e:	3710      	adds	r7, #16
 8002b70:	46bd      	mov	sp, r7
 8002b72:	bd80      	pop	{r7, pc}

08002b74 <ow_read_byte>:
 8002b74:	b580      	push	{r7, lr}
 8002b76:	b084      	sub	sp, #16
 8002b78:	af00      	add	r7, sp, #0
 8002b7a:	6078      	str	r0, [r7, #4]
 8002b7c:	2308      	movs	r3, #8
 8002b7e:	73fb      	strb	r3, [r7, #15]
 8002b80:	2300      	movs	r3, #0
 8002b82:	73bb      	strb	r3, [r7, #14]
 8002b84:	e00d      	b.n	8002ba2 <ow_read_byte+0x2e>
 8002b86:	7bbb      	ldrb	r3, [r7, #14]
 8002b88:	085b      	lsrs	r3, r3, #1
 8002b8a:	73bb      	strb	r3, [r7, #14]
 8002b8c:	6878      	ldr	r0, [r7, #4]
 8002b8e:	f7ff ffab 	bl	8002ae8 <ow_read_bit>
 8002b92:	4603      	mov	r3, r0
 8002b94:	01db      	lsls	r3, r3, #7
 8002b96:	b25a      	sxtb	r2, r3
 8002b98:	f997 300e 	ldrsb.w	r3, [r7, #14]
 8002b9c:	4313      	orrs	r3, r2
 8002b9e:	b25b      	sxtb	r3, r3
 8002ba0:	73bb      	strb	r3, [r7, #14]
 8002ba2:	7bfb      	ldrb	r3, [r7, #15]
 8002ba4:	1e5a      	subs	r2, r3, #1
 8002ba6:	73fa      	strb	r2, [r7, #15]
 8002ba8:	2b00      	cmp	r3, #0
 8002baa:	d1ec      	bne.n	8002b86 <ow_read_byte+0x12>
 8002bac:	7bbb      	ldrb	r3, [r7, #14]
 8002bae:	4618      	mov	r0, r3
 8002bb0:	3710      	adds	r7, #16
 8002bb2:	46bd      	mov	sp, r7
 8002bb4:	bd80      	pop	{r7, pc}

08002bb6 <ow_reset_search>:
 8002bb6:	b480      	push	{r7}
 8002bb8:	b083      	sub	sp, #12
 8002bba:	af00      	add	r7, sp, #0
 8002bbc:	6078      	str	r0, [r7, #4]
 8002bbe:	687b      	ldr	r3, [r7, #4]
 8002bc0:	2200      	movs	r2, #0
 8002bc2:	721a      	strb	r2, [r3, #8]
 8002bc4:	687b      	ldr	r3, [r7, #4]
 8002bc6:	2200      	movs	r2, #0
 8002bc8:	729a      	strb	r2, [r3, #10]
 8002bca:	687b      	ldr	r3, [r7, #4]
 8002bcc:	2200      	movs	r2, #0
 8002bce:	725a      	strb	r2, [r3, #9]
 8002bd0:	bf00      	nop
 8002bd2:	370c      	adds	r7, #12
 8002bd4:	46bd      	mov	sp, r7
 8002bd6:	bc80      	pop	{r7}
 8002bd8:	4770      	bx	lr

08002bda <ow_start_search>:
 8002bda:	b580      	push	{r7, lr}
 8002bdc:	b082      	sub	sp, #8
 8002bde:	af00      	add	r7, sp, #0
 8002be0:	6078      	str	r0, [r7, #4]
 8002be2:	6878      	ldr	r0, [r7, #4]
 8002be4:	f7ff ffe7 	bl	8002bb6 <ow_reset_search>
 8002be8:	21f0      	movs	r1, #240	; 0xf0
 8002bea:	6878      	ldr	r0, [r7, #4]
 8002bec:	f7ff fe50 	bl	8002890 <ow_search>
 8002bf0:	4603      	mov	r3, r0
 8002bf2:	4618      	mov	r0, r3
 8002bf4:	3708      	adds	r7, #8
 8002bf6:	46bd      	mov	sp, r7
 8002bf8:	bd80      	pop	{r7, pc}

08002bfa <ow_select>:
 8002bfa:	b580      	push	{r7, lr}
 8002bfc:	b084      	sub	sp, #16
 8002bfe:	af00      	add	r7, sp, #0
 8002c00:	6078      	str	r0, [r7, #4]
 8002c02:	6039      	str	r1, [r7, #0]
 8002c04:	2155      	movs	r1, #85	; 0x55
 8002c06:	6878      	ldr	r0, [r7, #4]
 8002c08:	f7ff ff97 	bl	8002b3a <ow_write_byte>
 8002c0c:	2300      	movs	r3, #0
 8002c0e:	73fb      	strb	r3, [r7, #15]
 8002c10:	e00a      	b.n	8002c28 <ow_select+0x2e>
 8002c12:	7bfb      	ldrb	r3, [r7, #15]
 8002c14:	683a      	ldr	r2, [r7, #0]
 8002c16:	4413      	add	r3, r2
 8002c18:	781b      	ldrb	r3, [r3, #0]
 8002c1a:	4619      	mov	r1, r3
 8002c1c:	6878      	ldr	r0, [r7, #4]
 8002c1e:	f7ff ff8c 	bl	8002b3a <ow_write_byte>
 8002c22:	7bfb      	ldrb	r3, [r7, #15]
 8002c24:	3301      	adds	r3, #1
 8002c26:	73fb      	strb	r3, [r7, #15]
 8002c28:	7bfb      	ldrb	r3, [r7, #15]
 8002c2a:	2b07      	cmp	r3, #7
 8002c2c:	d9f1      	bls.n	8002c12 <ow_select+0x18>
 8002c2e:	bf00      	nop
 8002c30:	3710      	adds	r7, #16
 8002c32:	46bd      	mov	sp, r7
 8002c34:	bd80      	pop	{r7, pc}

08002c36 <ow_crc8>:
 8002c36:	b480      	push	{r7}
 8002c38:	b085      	sub	sp, #20
 8002c3a:	af00      	add	r7, sp, #0
 8002c3c:	6078      	str	r0, [r7, #4]
 8002c3e:	460b      	mov	r3, r1
 8002c40:	70fb      	strb	r3, [r7, #3]
 8002c42:	2300      	movs	r3, #0
 8002c44:	73fb      	strb	r3, [r7, #15]
 8002c46:	e022      	b.n	8002c8e <ow_crc8+0x58>
 8002c48:	687b      	ldr	r3, [r7, #4]
 8002c4a:	1c5a      	adds	r2, r3, #1
 8002c4c:	607a      	str	r2, [r7, #4]
 8002c4e:	781b      	ldrb	r3, [r3, #0]
 8002c50:	73bb      	strb	r3, [r7, #14]
 8002c52:	2308      	movs	r3, #8
 8002c54:	737b      	strb	r3, [r7, #13]
 8002c56:	e017      	b.n	8002c88 <ow_crc8+0x52>
 8002c58:	7bfa      	ldrb	r2, [r7, #15]
 8002c5a:	7bbb      	ldrb	r3, [r7, #14]
 8002c5c:	4053      	eors	r3, r2
 8002c5e:	b2db      	uxtb	r3, r3
 8002c60:	f003 0301 	and.w	r3, r3, #1
 8002c64:	733b      	strb	r3, [r7, #12]
 8002c66:	7bfb      	ldrb	r3, [r7, #15]
 8002c68:	085b      	lsrs	r3, r3, #1
 8002c6a:	73fb      	strb	r3, [r7, #15]
 8002c6c:	7b3b      	ldrb	r3, [r7, #12]
 8002c6e:	2b00      	cmp	r3, #0
 8002c70:	d004      	beq.n	8002c7c <ow_crc8+0x46>
 8002c72:	7bfb      	ldrb	r3, [r7, #15]
 8002c74:	f083 0373 	eor.w	r3, r3, #115	; 0x73
 8002c78:	43db      	mvns	r3, r3
 8002c7a:	73fb      	strb	r3, [r7, #15]
 8002c7c:	7bbb      	ldrb	r3, [r7, #14]
 8002c7e:	085b      	lsrs	r3, r3, #1
 8002c80:	73bb      	strb	r3, [r7, #14]
 8002c82:	7b7b      	ldrb	r3, [r7, #13]
 8002c84:	3b01      	subs	r3, #1
 8002c86:	737b      	strb	r3, [r7, #13]
 8002c88:	7b7b      	ldrb	r3, [r7, #13]
 8002c8a:	2b00      	cmp	r3, #0
 8002c8c:	d1e4      	bne.n	8002c58 <ow_crc8+0x22>
 8002c8e:	78fb      	ldrb	r3, [r7, #3]
 8002c90:	1e5a      	subs	r2, r3, #1
 8002c92:	70fa      	strb	r2, [r7, #3]
 8002c94:	2b00      	cmp	r3, #0
 8002c96:	d1d7      	bne.n	8002c48 <ow_crc8+0x12>
 8002c98:	7bfb      	ldrb	r3, [r7, #15]
 8002c9a:	4618      	mov	r0, r3
 8002c9c:	3714      	adds	r7, #20
 8002c9e:	46bd      	mov	sp, r7
 8002ca0:	bc80      	pop	{r7}
 8002ca2:	4770      	bx	lr

08002ca4 <LL_GPIO_SetPinMode>:
 8002ca4:	b490      	push	{r4, r7}
 8002ca6:	b088      	sub	sp, #32
 8002ca8:	af00      	add	r7, sp, #0
 8002caa:	60f8      	str	r0, [r7, #12]
 8002cac:	60b9      	str	r1, [r7, #8]
 8002cae:	607a      	str	r2, [r7, #4]
 8002cb0:	68fb      	ldr	r3, [r7, #12]
 8002cb2:	461a      	mov	r2, r3
 8002cb4:	68bb      	ldr	r3, [r7, #8]
 8002cb6:	0e1b      	lsrs	r3, r3, #24
 8002cb8:	4413      	add	r3, r2
 8002cba:	461c      	mov	r4, r3
 8002cbc:	6822      	ldr	r2, [r4, #0]
 8002cbe:	68bb      	ldr	r3, [r7, #8]
 8002cc0:	617b      	str	r3, [r7, #20]
 8002cc2:	697b      	ldr	r3, [r7, #20]
 8002cc4:	fa93 f3a3 	rbit	r3, r3
 8002cc8:	613b      	str	r3, [r7, #16]
 8002cca:	693b      	ldr	r3, [r7, #16]
 8002ccc:	fab3 f383 	clz	r3, r3
 8002cd0:	009b      	lsls	r3, r3, #2
 8002cd2:	210f      	movs	r1, #15
 8002cd4:	fa01 f303 	lsl.w	r3, r1, r3
 8002cd8:	43db      	mvns	r3, r3
 8002cda:	401a      	ands	r2, r3
 8002cdc:	68bb      	ldr	r3, [r7, #8]
 8002cde:	61fb      	str	r3, [r7, #28]
 8002ce0:	69fb      	ldr	r3, [r7, #28]
 8002ce2:	fa93 f3a3 	rbit	r3, r3
 8002ce6:	61bb      	str	r3, [r7, #24]
 8002ce8:	69bb      	ldr	r3, [r7, #24]
 8002cea:	fab3 f383 	clz	r3, r3
 8002cee:	009b      	lsls	r3, r3, #2
 8002cf0:	6879      	ldr	r1, [r7, #4]
 8002cf2:	fa01 f303 	lsl.w	r3, r1, r3
 8002cf6:	4313      	orrs	r3, r2
 8002cf8:	6023      	str	r3, [r4, #0]
 8002cfa:	bf00      	nop
 8002cfc:	3720      	adds	r7, #32
 8002cfe:	46bd      	mov	sp, r7
 8002d00:	bc90      	pop	{r4, r7}
 8002d02:	4770      	bx	lr

08002d04 <LL_GPIO_SetPinSpeed>:
 8002d04:	b490      	push	{r4, r7}
 8002d06:	b088      	sub	sp, #32
 8002d08:	af00      	add	r7, sp, #0
 8002d0a:	60f8      	str	r0, [r7, #12]
 8002d0c:	60b9      	str	r1, [r7, #8]
 8002d0e:	607a      	str	r2, [r7, #4]
 8002d10:	68fb      	ldr	r3, [r7, #12]
 8002d12:	461a      	mov	r2, r3
 8002d14:	68bb      	ldr	r3, [r7, #8]
 8002d16:	0e1b      	lsrs	r3, r3, #24
 8002d18:	4413      	add	r3, r2
 8002d1a:	461c      	mov	r4, r3
 8002d1c:	6822      	ldr	r2, [r4, #0]
 8002d1e:	68bb      	ldr	r3, [r7, #8]
 8002d20:	617b      	str	r3, [r7, #20]
 8002d22:	697b      	ldr	r3, [r7, #20]
 8002d24:	fa93 f3a3 	rbit	r3, r3
 8002d28:	613b      	str	r3, [r7, #16]
 8002d2a:	693b      	ldr	r3, [r7, #16]
 8002d2c:	fab3 f383 	clz	r3, r3
 8002d30:	009b      	lsls	r3, r3, #2
 8002d32:	2103      	movs	r1, #3
 8002d34:	fa01 f303 	lsl.w	r3, r1, r3
 8002d38:	43db      	mvns	r3, r3
 8002d3a:	401a      	ands	r2, r3
 8002d3c:	68bb      	ldr	r3, [r7, #8]
 8002d3e:	61fb      	str	r3, [r7, #28]
 8002d40:	69fb      	ldr	r3, [r7, #28]
 8002d42:	fa93 f3a3 	rbit	r3, r3
 8002d46:	61bb      	str	r3, [r7, #24]
 8002d48:	69bb      	ldr	r3, [r7, #24]
 8002d4a:	fab3 f383 	clz	r3, r3
 8002d4e:	009b      	lsls	r3, r3, #2
 8002d50:	6879      	ldr	r1, [r7, #4]
 8002d52:	fa01 f303 	lsl.w	r3, r1, r3
 8002d56:	4313      	orrs	r3, r2
 8002d58:	6023      	str	r3, [r4, #0]
 8002d5a:	bf00      	nop
 8002d5c:	3720      	adds	r7, #32
 8002d5e:	46bd      	mov	sp, r7
 8002d60:	bc90      	pop	{r4, r7}
 8002d62:	4770      	bx	lr

08002d64 <LL_GPIO_IsInputPinSet>:
 8002d64:	b480      	push	{r7}
 8002d66:	b083      	sub	sp, #12
 8002d68:	af00      	add	r7, sp, #0
 8002d6a:	6078      	str	r0, [r7, #4]
 8002d6c:	6039      	str	r1, [r7, #0]
 8002d6e:	687b      	ldr	r3, [r7, #4]
 8002d70:	689b      	ldr	r3, [r3, #8]
 8002d72:	43da      	mvns	r2, r3
 8002d74:	683b      	ldr	r3, [r7, #0]
 8002d76:	0a1b      	lsrs	r3, r3, #8
 8002d78:	4013      	ands	r3, r2
 8002d7a:	b29b      	uxth	r3, r3
 8002d7c:	2b00      	cmp	r3, #0
 8002d7e:	bf0c      	ite	eq
 8002d80:	2301      	moveq	r3, #1
 8002d82:	2300      	movne	r3, #0
 8002d84:	b2db      	uxtb	r3, r3
 8002d86:	4618      	mov	r0, r3
 8002d88:	370c      	adds	r7, #12
 8002d8a:	46bd      	mov	sp, r7
 8002d8c:	bc80      	pop	{r7}
 8002d8e:	4770      	bx	lr

08002d90 <LL_GPIO_SetOutputPin>:
 8002d90:	b480      	push	{r7}
 8002d92:	b083      	sub	sp, #12
 8002d94:	af00      	add	r7, sp, #0
 8002d96:	6078      	str	r0, [r7, #4]
 8002d98:	6039      	str	r1, [r7, #0]
 8002d9a:	683b      	ldr	r3, [r7, #0]
 8002d9c:	0a1b      	lsrs	r3, r3, #8
 8002d9e:	b29a      	uxth	r2, r3
 8002da0:	687b      	ldr	r3, [r7, #4]
 8002da2:	611a      	str	r2, [r3, #16]
 8002da4:	bf00      	nop
 8002da6:	370c      	adds	r7, #12
 8002da8:	46bd      	mov	sp, r7
 8002daa:	bc80      	pop	{r7}
 8002dac:	4770      	bx	lr

08002dae <LL_GPIO_ResetOutputPin>:
 8002dae:	b480      	push	{r7}
 8002db0:	b083      	sub	sp, #12
 8002db2:	af00      	add	r7, sp, #0
 8002db4:	6078      	str	r0, [r7, #4]
 8002db6:	6039      	str	r1, [r7, #0]
 8002db8:	683b      	ldr	r3, [r7, #0]
 8002dba:	0a1b      	lsrs	r3, r3, #8
 8002dbc:	b29a      	uxth	r2, r3
 8002dbe:	687b      	ldr	r3, [r7, #4]
 8002dc0:	615a      	str	r2, [r3, #20]
 8002dc2:	bf00      	nop
 8002dc4:	370c      	adds	r7, #12
 8002dc6:	46bd      	mov	sp, r7
 8002dc8:	bc80      	pop	{r7}
 8002dca:	4770      	bx	lr

08002dcc <LL_APB1_GRP1_EnableClock>:
 8002dcc:	b480      	push	{r7}
 8002dce:	b085      	sub	sp, #20
 8002dd0:	af00      	add	r7, sp, #0
 8002dd2:	6078      	str	r0, [r7, #4]
 8002dd4:	4b08      	ldr	r3, [pc, #32]	; (8002df8 <LL_APB1_GRP1_EnableClock+0x2c>)
 8002dd6:	69da      	ldr	r2, [r3, #28]
 8002dd8:	4907      	ldr	r1, [pc, #28]	; (8002df8 <LL_APB1_GRP1_EnableClock+0x2c>)
 8002dda:	687b      	ldr	r3, [r7, #4]
 8002ddc:	4313      	orrs	r3, r2
 8002dde:	61cb      	str	r3, [r1, #28]
 8002de0:	4b05      	ldr	r3, [pc, #20]	; (8002df8 <LL_APB1_GRP1_EnableClock+0x2c>)
 8002de2:	69da      	ldr	r2, [r3, #28]
 8002de4:	687b      	ldr	r3, [r7, #4]
 8002de6:	4013      	ands	r3, r2
 8002de8:	60fb      	str	r3, [r7, #12]
 8002dea:	68fb      	ldr	r3, [r7, #12]
 8002dec:	bf00      	nop
 8002dee:	3714      	adds	r7, #20
 8002df0:	46bd      	mov	sp, r7
 8002df2:	bc80      	pop	{r7}
 8002df4:	4770      	bx	lr
 8002df6:	bf00      	nop
 8002df8:	40021000 	.word	0x40021000

08002dfc <LL_APB2_GRP1_EnableClock>:
 8002dfc:	b480      	push	{r7}
 8002dfe:	b085      	sub	sp, #20
 8002e00:	af00      	add	r7, sp, #0
 8002e02:	6078      	str	r0, [r7, #4]
 8002e04:	4b08      	ldr	r3, [pc, #32]	; (8002e28 <LL_APB2_GRP1_EnableClock+0x2c>)
 8002e06:	699a      	ldr	r2, [r3, #24]
 8002e08:	4907      	ldr	r1, [pc, #28]	; (8002e28 <LL_APB2_GRP1_EnableClock+0x2c>)
 8002e0a:	687b      	ldr	r3, [r7, #4]
 8002e0c:	4313      	orrs	r3, r2
 8002e0e:	618b      	str	r3, [r1, #24]
 8002e10:	4b05      	ldr	r3, [pc, #20]	; (8002e28 <LL_APB2_GRP1_EnableClock+0x2c>)
 8002e12:	699a      	ldr	r2, [r3, #24]
 8002e14:	687b      	ldr	r3, [r7, #4]
 8002e16:	4013      	ands	r3, r2
 8002e18:	60fb      	str	r3, [r7, #12]
 8002e1a:	68fb      	ldr	r3, [r7, #12]
 8002e1c:	bf00      	nop
 8002e1e:	3714      	adds	r7, #20
 8002e20:	46bd      	mov	sp, r7
 8002e22:	bc80      	pop	{r7}
 8002e24:	4770      	bx	lr
 8002e26:	bf00      	nop
 8002e28:	40021000 	.word	0x40021000

08002e2c <LL_TIM_EnableCounter>:
 8002e2c:	b480      	push	{r7}
 8002e2e:	b083      	sub	sp, #12
 8002e30:	af00      	add	r7, sp, #0
 8002e32:	6078      	str	r0, [r7, #4]
 8002e34:	687b      	ldr	r3, [r7, #4]
 8002e36:	681b      	ldr	r3, [r3, #0]
 8002e38:	f043 0201 	orr.w	r2, r3, #1
 8002e3c:	687b      	ldr	r3, [r7, #4]
 8002e3e:	601a      	str	r2, [r3, #0]
 8002e40:	bf00      	nop
 8002e42:	370c      	adds	r7, #12
 8002e44:	46bd      	mov	sp, r7
 8002e46:	bc80      	pop	{r7}
 8002e48:	4770      	bx	lr

08002e4a <LL_TIM_DisableCounter>:
 8002e4a:	b480      	push	{r7}
 8002e4c:	b083      	sub	sp, #12
 8002e4e:	af00      	add	r7, sp, #0
 8002e50:	6078      	str	r0, [r7, #4]
 8002e52:	687b      	ldr	r3, [r7, #4]
 8002e54:	681b      	ldr	r3, [r3, #0]
 8002e56:	f023 0201 	bic.w	r2, r3, #1
 8002e5a:	687b      	ldr	r3, [r7, #4]
 8002e5c:	601a      	str	r2, [r3, #0]
 8002e5e:	bf00      	nop
 8002e60:	370c      	adds	r7, #12
 8002e62:	46bd      	mov	sp, r7
 8002e64:	bc80      	pop	{r7}
 8002e66:	4770      	bx	lr

08002e68 <LL_TIM_SetCounterMode>:
 8002e68:	b480      	push	{r7}
 8002e6a:	b083      	sub	sp, #12
 8002e6c:	af00      	add	r7, sp, #0
 8002e6e:	6078      	str	r0, [r7, #4]
 8002e70:	6039      	str	r1, [r7, #0]
 8002e72:	687b      	ldr	r3, [r7, #4]
 8002e74:	681b      	ldr	r3, [r3, #0]
 8002e76:	f023 0270 	bic.w	r2, r3, #112	; 0x70
 8002e7a:	683b      	ldr	r3, [r7, #0]
 8002e7c:	431a      	orrs	r2, r3
 8002e7e:	687b      	ldr	r3, [r7, #4]
 8002e80:	601a      	str	r2, [r3, #0]
 8002e82:	bf00      	nop
 8002e84:	370c      	adds	r7, #12
 8002e86:	46bd      	mov	sp, r7
 8002e88:	bc80      	pop	{r7}
 8002e8a:	4770      	bx	lr

08002e8c <LL_TIM_SetCounter>:
 8002e8c:	b480      	push	{r7}
 8002e8e:	b083      	sub	sp, #12
 8002e90:	af00      	add	r7, sp, #0
 8002e92:	6078      	str	r0, [r7, #4]
 8002e94:	6039      	str	r1, [r7, #0]
 8002e96:	687b      	ldr	r3, [r7, #4]
 8002e98:	683a      	ldr	r2, [r7, #0]
 8002e9a:	625a      	str	r2, [r3, #36]	; 0x24
 8002e9c:	bf00      	nop
 8002e9e:	370c      	adds	r7, #12
 8002ea0:	46bd      	mov	sp, r7
 8002ea2:	bc80      	pop	{r7}
 8002ea4:	4770      	bx	lr

08002ea6 <LL_TIM_SetPrescaler>:
 8002ea6:	b480      	push	{r7}
 8002ea8:	b083      	sub	sp, #12
 8002eaa:	af00      	add	r7, sp, #0
 8002eac:	6078      	str	r0, [r7, #4]
 8002eae:	6039      	str	r1, [r7, #0]
 8002eb0:	687b      	ldr	r3, [r7, #4]
 8002eb2:	683a      	ldr	r2, [r7, #0]
 8002eb4:	629a      	str	r2, [r3, #40]	; 0x28
 8002eb6:	bf00      	nop
 8002eb8:	370c      	adds	r7, #12
 8002eba:	46bd      	mov	sp, r7
 8002ebc:	bc80      	pop	{r7}
 8002ebe:	4770      	bx	lr

08002ec0 <LL_TIM_SetAutoReload>:
 8002ec0:	b480      	push	{r7}
 8002ec2:	b083      	sub	sp, #12
 8002ec4:	af00      	add	r7, sp, #0
 8002ec6:	6078      	str	r0, [r7, #4]
 8002ec8:	6039      	str	r1, [r7, #0]
 8002eca:	687b      	ldr	r3, [r7, #4]
 8002ecc:	683a      	ldr	r2, [r7, #0]
 8002ece:	62da      	str	r2, [r3, #44]	; 0x2c
 8002ed0:	bf00      	nop
 8002ed2:	370c      	adds	r7, #12
 8002ed4:	46bd      	mov	sp, r7
 8002ed6:	bc80      	pop	{r7}
 8002ed8:	4770      	bx	lr

08002eda <LL_TIM_ClearFlag_UPDATE>:
 8002eda:	b480      	push	{r7}
 8002edc:	b083      	sub	sp, #12
 8002ede:	af00      	add	r7, sp, #0
 8002ee0:	6078      	str	r0, [r7, #4]
 8002ee2:	687b      	ldr	r3, [r7, #4]
 8002ee4:	f06f 0201 	mvn.w	r2, #1
 8002ee8:	611a      	str	r2, [r3, #16]
 8002eea:	bf00      	nop
 8002eec:	370c      	adds	r7, #12
 8002eee:	46bd      	mov	sp, r7
 8002ef0:	bc80      	pop	{r7}
 8002ef2:	4770      	bx	lr

08002ef4 <LL_TIM_IsActiveFlag_UPDATE>:
 8002ef4:	b480      	push	{r7}
 8002ef6:	b083      	sub	sp, #12
 8002ef8:	af00      	add	r7, sp, #0
 8002efa:	6078      	str	r0, [r7, #4]
 8002efc:	687b      	ldr	r3, [r7, #4]
 8002efe:	691b      	ldr	r3, [r3, #16]
 8002f00:	f003 0301 	and.w	r3, r3, #1
 8002f04:	2b01      	cmp	r3, #1
 8002f06:	bf0c      	ite	eq
 8002f08:	2301      	moveq	r3, #1
 8002f0a:	2300      	movne	r3, #0
 8002f0c:	b2db      	uxtb	r3, r3
 8002f0e:	4618      	mov	r0, r3
 8002f10:	370c      	adds	r7, #12
 8002f12:	46bd      	mov	sp, r7
 8002f14:	bc80      	pop	{r7}
 8002f16:	4770      	bx	lr

08002f18 <ow_hw_config>:
 8002f18:	b580      	push	{r7, lr}
 8002f1a:	b082      	sub	sp, #8
 8002f1c:	af00      	add	r7, sp, #0
 8002f1e:	6078      	str	r0, [r7, #4]
 8002f20:	2004      	movs	r0, #4
 8002f22:	f7ff ff6b 	bl	8002dfc <LL_APB2_GRP1_EnableClock>
 8002f26:	687b      	ldr	r3, [r7, #4]
 8002f28:	6818      	ldr	r0, [r3, #0]
 8002f2a:	687b      	ldr	r3, [r7, #4]
 8002f2c:	685b      	ldr	r3, [r3, #4]
 8002f2e:	2201      	movs	r2, #1
 8002f30:	4619      	mov	r1, r3
 8002f32:	f7ff feb7 	bl	8002ca4 <LL_GPIO_SetPinMode>
 8002f36:	687b      	ldr	r3, [r7, #4]
 8002f38:	6818      	ldr	r0, [r3, #0]
 8002f3a:	687b      	ldr	r3, [r7, #4]
 8002f3c:	685b      	ldr	r3, [r3, #4]
 8002f3e:	2203      	movs	r2, #3
 8002f40:	4619      	mov	r1, r3
 8002f42:	f7ff fedf 	bl	8002d04 <LL_GPIO_SetPinSpeed>
 8002f46:	687b      	ldr	r3, [r7, #4]
 8002f48:	681a      	ldr	r2, [r3, #0]
 8002f4a:	687b      	ldr	r3, [r7, #4]
 8002f4c:	685b      	ldr	r3, [r3, #4]
 8002f4e:	4619      	mov	r1, r3
 8002f50:	4610      	mov	r0, r2
 8002f52:	f7ff ff1d 	bl	8002d90 <LL_GPIO_SetOutputPin>
 8002f56:	2001      	movs	r0, #1
 8002f58:	f7ff ff38 	bl	8002dcc <LL_APB1_GRP1_EnableClock>
 8002f5c:	2100      	movs	r1, #0
 8002f5e:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8002f62:	f7ff ff81 	bl	8002e68 <LL_TIM_SetCounterMode>
 8002f66:	2147      	movs	r1, #71	; 0x47
 8002f68:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8002f6c:	f7ff ff9b 	bl	8002ea6 <LL_TIM_SetPrescaler>
 8002f70:	4908      	ldr	r1, [pc, #32]	; (8002f94 <ow_hw_config+0x7c>)
 8002f72:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8002f76:	f7ff ffa3 	bl	8002ec0 <LL_TIM_SetAutoReload>
 8002f7a:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8002f7e:	f7ff ff64 	bl	8002e4a <LL_TIM_DisableCounter>
 8002f82:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8002f86:	f7ff ffa8 	bl	8002eda <LL_TIM_ClearFlag_UPDATE>
 8002f8a:	bf00      	nop
 8002f8c:	3708      	adds	r7, #8
 8002f8e:	46bd      	mov	sp, r7
 8002f90:	bd80      	pop	{r7, pc}
 8002f92:	bf00      	nop
 8002f94:	000f423f 	.word	0x000f423f

08002f98 <ow_set_output>:
 8002f98:	b580      	push	{r7, lr}
 8002f9a:	b082      	sub	sp, #8
 8002f9c:	af00      	add	r7, sp, #0
 8002f9e:	6078      	str	r0, [r7, #4]
 8002fa0:	687b      	ldr	r3, [r7, #4]
 8002fa2:	6818      	ldr	r0, [r3, #0]
 8002fa4:	687b      	ldr	r3, [r7, #4]
 8002fa6:	685b      	ldr	r3, [r3, #4]
 8002fa8:	2201      	movs	r2, #1
 8002faa:	4619      	mov	r1, r3
 8002fac:	f7ff fe7a 	bl	8002ca4 <LL_GPIO_SetPinMode>
 8002fb0:	687b      	ldr	r3, [r7, #4]
 8002fb2:	681a      	ldr	r2, [r3, #0]
 8002fb4:	687b      	ldr	r3, [r7, #4]
 8002fb6:	685b      	ldr	r3, [r3, #4]
 8002fb8:	4619      	mov	r1, r3
 8002fba:	4610      	mov	r0, r2
 8002fbc:	f7ff fee8 	bl	8002d90 <LL_GPIO_SetOutputPin>
 8002fc0:	bf00      	nop
 8002fc2:	3708      	adds	r7, #8
 8002fc4:	46bd      	mov	sp, r7
 8002fc6:	bd80      	pop	{r7, pc}

08002fc8 <ow_output_low>:
 8002fc8:	b580      	push	{r7, lr}
 8002fca:	b082      	sub	sp, #8
 8002fcc:	af00      	add	r7, sp, #0
 8002fce:	6078      	str	r0, [r7, #4]
 8002fd0:	687b      	ldr	r3, [r7, #4]
 8002fd2:	681a      	ldr	r2, [r3, #0]
 8002fd4:	687b      	ldr	r3, [r7, #4]
 8002fd6:	685b      	ldr	r3, [r3, #4]
 8002fd8:	4619      	mov	r1, r3
 8002fda:	4610      	mov	r0, r2
 8002fdc:	f7ff fee7 	bl	8002dae <LL_GPIO_ResetOutputPin>
 8002fe0:	bf00      	nop
 8002fe2:	3708      	adds	r7, #8
 8002fe4:	46bd      	mov	sp, r7
 8002fe6:	bd80      	pop	{r7, pc}

08002fe8 <ow_set_input>:
 8002fe8:	b580      	push	{r7, lr}
 8002fea:	b082      	sub	sp, #8
 8002fec:	af00      	add	r7, sp, #0
 8002fee:	6078      	str	r0, [r7, #4]
 8002ff0:	687b      	ldr	r3, [r7, #4]
 8002ff2:	6818      	ldr	r0, [r3, #0]
 8002ff4:	687b      	ldr	r3, [r7, #4]
 8002ff6:	685b      	ldr	r3, [r3, #4]
 8002ff8:	2208      	movs	r2, #8
 8002ffa:	4619      	mov	r1, r3
 8002ffc:	f7ff fe52 	bl	8002ca4 <LL_GPIO_SetPinMode>
 8003000:	bf00      	nop
 8003002:	3708      	adds	r7, #8
 8003004:	46bd      	mov	sp, r7
 8003006:	bd80      	pop	{r7, pc}

08003008 <ow_read_input>:
 8003008:	b580      	push	{r7, lr}
 800300a:	b082      	sub	sp, #8
 800300c:	af00      	add	r7, sp, #0
 800300e:	6078      	str	r0, [r7, #4]
 8003010:	687b      	ldr	r3, [r7, #4]
 8003012:	681a      	ldr	r2, [r3, #0]
 8003014:	687b      	ldr	r3, [r7, #4]
 8003016:	685b      	ldr	r3, [r3, #4]
 8003018:	4619      	mov	r1, r3
 800301a:	4610      	mov	r0, r2
 800301c:	f7ff fea2 	bl	8002d64 <LL_GPIO_IsInputPinSet>
 8003020:	4603      	mov	r3, r0
 8003022:	4618      	mov	r0, r3
 8003024:	3708      	adds	r7, #8
 8003026:	46bd      	mov	sp, r7
 8003028:	bd80      	pop	{r7, pc}

0800302a <ow_delay_us>:
 800302a:	b580      	push	{r7, lr}
 800302c:	b082      	sub	sp, #8
 800302e:	af00      	add	r7, sp, #0
 8003030:	6078      	str	r0, [r7, #4]
 8003032:	2100      	movs	r1, #0
 8003034:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8003038:	f7ff ff28 	bl	8002e8c <LL_TIM_SetCounter>
 800303c:	6879      	ldr	r1, [r7, #4]
 800303e:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8003042:	f7ff ff3d 	bl	8002ec0 <LL_TIM_SetAutoReload>
 8003046:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 800304a:	f7ff feef 	bl	8002e2c <LL_TIM_EnableCounter>
 800304e:	bf00      	nop
 8003050:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8003054:	f7ff ff4e 	bl	8002ef4 <LL_TIM_IsActiveFlag_UPDATE>
 8003058:	4603      	mov	r3, r0
 800305a:	2b00      	cmp	r3, #0
 800305c:	d0f8      	beq.n	8003050 <ow_delay_us+0x26>
 800305e:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8003062:	f7ff ff3a 	bl	8002eda <LL_TIM_ClearFlag_UPDATE>
 8003066:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 800306a:	f7ff feee 	bl	8002e4a <LL_TIM_DisableCounter>
 800306e:	bf00      	nop
 8003070:	3708      	adds	r7, #8
 8003072:	46bd      	mov	sp, r7
 8003074:	bd80      	pop	{r7, pc}

08003076 <vApplicationIdleHook>:
 8003076:	b480      	push	{r7}
 8003078:	af00      	add	r7, sp, #0
 800307a:	bf00      	nop
 800307c:	46bd      	mov	sp, r7
 800307e:	bc80      	pop	{r7}
 8003080:	4770      	bx	lr

08003082 <vApplicationTickHook>:
 8003082:	b480      	push	{r7}
 8003084:	af00      	add	r7, sp, #0
 8003086:	bf00      	nop
 8003088:	46bd      	mov	sp, r7
 800308a:	bc80      	pop	{r7}
 800308c:	4770      	bx	lr

0800308e <vApplicationStackOverflowHook>:
 800308e:	b480      	push	{r7}
 8003090:	b085      	sub	sp, #20
 8003092:	af00      	add	r7, sp, #0
 8003094:	6078      	str	r0, [r7, #4]
 8003096:	6039      	str	r1, [r7, #0]
 8003098:	f04f 0350 	mov.w	r3, #80	; 0x50
 800309c:	f383 8811 	msr	BASEPRI, r3
 80030a0:	f3bf 8f6f 	isb	sy
 80030a4:	f3bf 8f4f 	dsb	sy
 80030a8:	60fb      	str	r3, [r7, #12]
 80030aa:	e7fe      	b.n	80030aa <vApplicationStackOverflowHook+0x1c>

080030ac <vApplicationGetIdleTaskMemory>:
 80030ac:	b480      	push	{r7}
 80030ae:	b085      	sub	sp, #20
 80030b0:	af00      	add	r7, sp, #0
 80030b2:	60f8      	str	r0, [r7, #12]
 80030b4:	60b9      	str	r1, [r7, #8]
 80030b6:	607a      	str	r2, [r7, #4]
 80030b8:	68fb      	ldr	r3, [r7, #12]
 80030ba:	4a06      	ldr	r2, [pc, #24]	; (80030d4 <vApplicationGetIdleTaskMemory+0x28>)
 80030bc:	601a      	str	r2, [r3, #0]
 80030be:	68bb      	ldr	r3, [r7, #8]
 80030c0:	4a05      	ldr	r2, [pc, #20]	; (80030d8 <vApplicationGetIdleTaskMemory+0x2c>)
 80030c2:	601a      	str	r2, [r3, #0]
 80030c4:	687b      	ldr	r3, [r7, #4]
 80030c6:	2282      	movs	r2, #130	; 0x82
 80030c8:	601a      	str	r2, [r3, #0]
 80030ca:	bf00      	nop
 80030cc:	3714      	adds	r7, #20
 80030ce:	46bd      	mov	sp, r7
 80030d0:	bc80      	pop	{r7}
 80030d2:	4770      	bx	lr
 80030d4:	20004360 	.word	0x20004360
 80030d8:	20004418 	.word	0x20004418

080030dc <vApplicationGetTimerTaskMemory>:
 80030dc:	b480      	push	{r7}
 80030de:	b085      	sub	sp, #20
 80030e0:	af00      	add	r7, sp, #0
 80030e2:	60f8      	str	r0, [r7, #12]
 80030e4:	60b9      	str	r1, [r7, #8]
 80030e6:	607a      	str	r2, [r7, #4]
 80030e8:	68fb      	ldr	r3, [r7, #12]
 80030ea:	4a07      	ldr	r2, [pc, #28]	; (8003108 <vApplicationGetTimerTaskMemory+0x2c>)
 80030ec:	601a      	str	r2, [r3, #0]
 80030ee:	68bb      	ldr	r3, [r7, #8]
 80030f0:	4a06      	ldr	r2, [pc, #24]	; (800310c <vApplicationGetTimerTaskMemory+0x30>)
 80030f2:	601a      	str	r2, [r3, #0]
 80030f4:	687b      	ldr	r3, [r7, #4]
 80030f6:	f44f 7282 	mov.w	r2, #260	; 0x104
 80030fa:	601a      	str	r2, [r3, #0]
 80030fc:	bf00      	nop
 80030fe:	3714      	adds	r7, #20
 8003100:	46bd      	mov	sp, r7
 8003102:	bc80      	pop	{r7}
 8003104:	4770      	bx	lr
 8003106:	bf00      	nop
 8003108:	200004e8 	.word	0x200004e8
 800310c:	200005a0 	.word	0x200005a0

08003110 <LL_RTC_EnableWriteProtection>:
 8003110:	b480      	push	{r7}
 8003112:	b083      	sub	sp, #12
 8003114:	af00      	add	r7, sp, #0
 8003116:	6078      	str	r0, [r7, #4]
 8003118:	687b      	ldr	r3, [r7, #4]
 800311a:	685b      	ldr	r3, [r3, #4]
 800311c:	f023 0210 	bic.w	r2, r3, #16
 8003120:	687b      	ldr	r3, [r7, #4]
 8003122:	605a      	str	r2, [r3, #4]
 8003124:	bf00      	nop
 8003126:	370c      	adds	r7, #12
 8003128:	46bd      	mov	sp, r7
 800312a:	bc80      	pop	{r7}
 800312c:	4770      	bx	lr

0800312e <LL_RTC_DisableWriteProtection>:
 800312e:	b480      	push	{r7}
 8003130:	b083      	sub	sp, #12
 8003132:	af00      	add	r7, sp, #0
 8003134:	6078      	str	r0, [r7, #4]
 8003136:	687b      	ldr	r3, [r7, #4]
 8003138:	685b      	ldr	r3, [r3, #4]
 800313a:	f043 0210 	orr.w	r2, r3, #16
 800313e:	687b      	ldr	r3, [r7, #4]
 8003140:	605a      	str	r2, [r3, #4]
 8003142:	bf00      	nop
 8003144:	370c      	adds	r7, #12
 8003146:	46bd      	mov	sp, r7
 8003148:	bc80      	pop	{r7}
 800314a:	4770      	bx	lr

0800314c <LL_RTC_TIME_Set>:
 800314c:	b480      	push	{r7}
 800314e:	b083      	sub	sp, #12
 8003150:	af00      	add	r7, sp, #0
 8003152:	6078      	str	r0, [r7, #4]
 8003154:	6039      	str	r1, [r7, #0]
 8003156:	683b      	ldr	r3, [r7, #0]
 8003158:	0c1a      	lsrs	r2, r3, #16
 800315a:	687b      	ldr	r3, [r7, #4]
 800315c:	619a      	str	r2, [r3, #24]
 800315e:	683b      	ldr	r3, [r7, #0]
 8003160:	b29a      	uxth	r2, r3
 8003162:	687b      	ldr	r3, [r7, #4]
 8003164:	61da      	str	r2, [r3, #28]
 8003166:	bf00      	nop
 8003168:	370c      	adds	r7, #12
 800316a:	46bd      	mov	sp, r7
 800316c:	bc80      	pop	{r7}
 800316e:	4770      	bx	lr

08003170 <LL_RTC_TIME_Get>:
 8003170:	b4b0      	push	{r4, r5, r7}
 8003172:	b083      	sub	sp, #12
 8003174:	af00      	add	r7, sp, #0
 8003176:	6078      	str	r0, [r7, #4]
 8003178:	2500      	movs	r5, #0
 800317a:	2400      	movs	r4, #0
 800317c:	687b      	ldr	r3, [r7, #4]
 800317e:	699b      	ldr	r3, [r3, #24]
 8003180:	b29d      	uxth	r5, r3
 8003182:	687b      	ldr	r3, [r7, #4]
 8003184:	69db      	ldr	r3, [r3, #28]
 8003186:	b29c      	uxth	r4, r3
 8003188:	462b      	mov	r3, r5
 800318a:	041b      	lsls	r3, r3, #16
 800318c:	4622      	mov	r2, r4
 800318e:	4313      	orrs	r3, r2
 8003190:	4618      	mov	r0, r3
 8003192:	370c      	adds	r7, #12
 8003194:	46bd      	mov	sp, r7
 8003196:	bcb0      	pop	{r4, r5, r7}
 8003198:	4770      	bx	lr
	...

0800319c <LL_RTC_BKP_SetRegister>:
 800319c:	b490      	push	{r4, r7}
 800319e:	b084      	sub	sp, #16
 80031a0:	af00      	add	r7, sp, #0
 80031a2:	60f8      	str	r0, [r7, #12]
 80031a4:	60b9      	str	r1, [r7, #8]
 80031a6:	607a      	str	r2, [r7, #4]
 80031a8:	2400      	movs	r4, #0
 80031aa:	4c06      	ldr	r4, [pc, #24]	; (80031c4 <LL_RTC_BKP_SetRegister+0x28>)
 80031ac:	68bb      	ldr	r3, [r7, #8]
 80031ae:	009b      	lsls	r3, r3, #2
 80031b0:	441c      	add	r4, r3
 80031b2:	4622      	mov	r2, r4
 80031b4:	687b      	ldr	r3, [r7, #4]
 80031b6:	6013      	str	r3, [r2, #0]
 80031b8:	bf00      	nop
 80031ba:	3710      	adds	r7, #16
 80031bc:	46bd      	mov	sp, r7
 80031be:	bc90      	pop	{r4, r7}
 80031c0:	4770      	bx	lr
 80031c2:	bf00      	nop
 80031c4:	40006c00 	.word	0x40006c00

080031c8 <LL_RTC_IsActiveFlag_RS>:
 80031c8:	b480      	push	{r7}
 80031ca:	b083      	sub	sp, #12
 80031cc:	af00      	add	r7, sp, #0
 80031ce:	6078      	str	r0, [r7, #4]
 80031d0:	687b      	ldr	r3, [r7, #4]
 80031d2:	685b      	ldr	r3, [r3, #4]
 80031d4:	f003 0308 	and.w	r3, r3, #8
 80031d8:	2b08      	cmp	r3, #8
 80031da:	bf0c      	ite	eq
 80031dc:	2301      	moveq	r3, #1
 80031de:	2300      	movne	r3, #0
 80031e0:	b2db      	uxtb	r3, r3
 80031e2:	4618      	mov	r0, r3
 80031e4:	370c      	adds	r7, #12
 80031e6:	46bd      	mov	sp, r7
 80031e8:	bc80      	pop	{r7}
 80031ea:	4770      	bx	lr

080031ec <LL_RTC_IsActiveFlag_SEC>:
 80031ec:	b480      	push	{r7}
 80031ee:	b083      	sub	sp, #12
 80031f0:	af00      	add	r7, sp, #0
 80031f2:	6078      	str	r0, [r7, #4]
 80031f4:	687b      	ldr	r3, [r7, #4]
 80031f6:	685b      	ldr	r3, [r3, #4]
 80031f8:	f003 0301 	and.w	r3, r3, #1
 80031fc:	2b01      	cmp	r3, #1
 80031fe:	bf0c      	ite	eq
 8003200:	2301      	moveq	r3, #1
 8003202:	2300      	movne	r3, #0
 8003204:	b2db      	uxtb	r3, r3
 8003206:	4618      	mov	r0, r3
 8003208:	370c      	adds	r7, #12
 800320a:	46bd      	mov	sp, r7
 800320c:	bc80      	pop	{r7}
 800320e:	4770      	bx	lr

08003210 <LL_RTC_ClearFlag_SEC>:
 8003210:	b480      	push	{r7}
 8003212:	b083      	sub	sp, #12
 8003214:	af00      	add	r7, sp, #0
 8003216:	6078      	str	r0, [r7, #4]
 8003218:	687b      	ldr	r3, [r7, #4]
 800321a:	685b      	ldr	r3, [r3, #4]
 800321c:	f023 0201 	bic.w	r2, r3, #1
 8003220:	687b      	ldr	r3, [r7, #4]
 8003222:	605a      	str	r2, [r3, #4]
 8003224:	bf00      	nop
 8003226:	370c      	adds	r7, #12
 8003228:	46bd      	mov	sp, r7
 800322a:	bc80      	pop	{r7}
 800322c:	4770      	bx	lr

0800322e <LL_RTC_IsActiveFlag_RTOF>:
 800322e:	b480      	push	{r7}
 8003230:	b083      	sub	sp, #12
 8003232:	af00      	add	r7, sp, #0
 8003234:	6078      	str	r0, [r7, #4]
 8003236:	687b      	ldr	r3, [r7, #4]
 8003238:	685b      	ldr	r3, [r3, #4]
 800323a:	f003 0320 	and.w	r3, r3, #32
 800323e:	2b20      	cmp	r3, #32
 8003240:	bf0c      	ite	eq
 8003242:	2301      	moveq	r3, #1
 8003244:	2300      	movne	r3, #0
 8003246:	b2db      	uxtb	r3, r3
 8003248:	4618      	mov	r0, r3
 800324a:	370c      	adds	r7, #12
 800324c:	46bd      	mov	sp, r7
 800324e:	bc80      	pop	{r7}
 8003250:	4770      	bx	lr
	...

08003254 <LL_APB1_GRP1_EnableClock>:
 8003254:	b480      	push	{r7}
 8003256:	b085      	sub	sp, #20
 8003258:	af00      	add	r7, sp, #0
 800325a:	6078      	str	r0, [r7, #4]
 800325c:	4b08      	ldr	r3, [pc, #32]	; (8003280 <LL_APB1_GRP1_EnableClock+0x2c>)
 800325e:	69da      	ldr	r2, [r3, #28]
 8003260:	4907      	ldr	r1, [pc, #28]	; (8003280 <LL_APB1_GRP1_EnableClock+0x2c>)
 8003262:	687b      	ldr	r3, [r7, #4]
 8003264:	4313      	orrs	r3, r2
 8003266:	61cb      	str	r3, [r1, #28]
 8003268:	4b05      	ldr	r3, [pc, #20]	; (8003280 <LL_APB1_GRP1_EnableClock+0x2c>)
 800326a:	69da      	ldr	r2, [r3, #28]
 800326c:	687b      	ldr	r3, [r7, #4]
 800326e:	4013      	ands	r3, r2
 8003270:	60fb      	str	r3, [r7, #12]
 8003272:	68fb      	ldr	r3, [r7, #12]
 8003274:	bf00      	nop
 8003276:	3714      	adds	r7, #20
 8003278:	46bd      	mov	sp, r7
 800327a:	bc80      	pop	{r7}
 800327c:	4770      	bx	lr
 800327e:	bf00      	nop
 8003280:	40021000 	.word	0x40021000

08003284 <LL_PWR_EnableBkUpAccess>:
 8003284:	b480      	push	{r7}
 8003286:	af00      	add	r7, sp, #0
 8003288:	4b04      	ldr	r3, [pc, #16]	; (800329c <LL_PWR_EnableBkUpAccess+0x18>)
 800328a:	681b      	ldr	r3, [r3, #0]
 800328c:	4a03      	ldr	r2, [pc, #12]	; (800329c <LL_PWR_EnableBkUpAccess+0x18>)
 800328e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8003292:	6013      	str	r3, [r2, #0]
 8003294:	bf00      	nop
 8003296:	46bd      	mov	sp, r7
 8003298:	bc80      	pop	{r7}
 800329a:	4770      	bx	lr
 800329c:	40007000 	.word	0x40007000

080032a0 <LL_PWR_DisableBkUpAccess>:
 80032a0:	b480      	push	{r7}
 80032a2:	af00      	add	r7, sp, #0
 80032a4:	4b04      	ldr	r3, [pc, #16]	; (80032b8 <LL_PWR_DisableBkUpAccess+0x18>)
 80032a6:	681b      	ldr	r3, [r3, #0]
 80032a8:	4a03      	ldr	r2, [pc, #12]	; (80032b8 <LL_PWR_DisableBkUpAccess+0x18>)
 80032aa:	f423 7380 	bic.w	r3, r3, #256	; 0x100
 80032ae:	6013      	str	r3, [r2, #0]
 80032b0:	bf00      	nop
 80032b2:	46bd      	mov	sp, r7
 80032b4:	bc80      	pop	{r7}
 80032b6:	4770      	bx	lr
 80032b8:	40007000 	.word	0x40007000

080032bc <rtc_year_is_leap>:
 80032bc:	b480      	push	{r7}
 80032be:	b083      	sub	sp, #12
 80032c0:	af00      	add	r7, sp, #0
 80032c2:	4603      	mov	r3, r0
 80032c4:	80fb      	strh	r3, [r7, #6]
 80032c6:	88fb      	ldrh	r3, [r7, #6]
 80032c8:	f003 0303 	and.w	r3, r3, #3
 80032cc:	b29b      	uxth	r3, r3
 80032ce:	2b00      	cmp	r3, #0
 80032d0:	d11e      	bne.n	8003310 <rtc_year_is_leap+0x54>
 80032d2:	88fb      	ldrh	r3, [r7, #6]
 80032d4:	4a11      	ldr	r2, [pc, #68]	; (800331c <rtc_year_is_leap+0x60>)
 80032d6:	fba2 1203 	umull	r1, r2, r2, r3
 80032da:	0952      	lsrs	r2, r2, #5
 80032dc:	2164      	movs	r1, #100	; 0x64
 80032de:	fb01 f202 	mul.w	r2, r1, r2
 80032e2:	1a9b      	subs	r3, r3, r2
 80032e4:	b29b      	uxth	r3, r3
 80032e6:	2b00      	cmp	r3, #0
 80032e8:	d110      	bne.n	800330c <rtc_year_is_leap+0x50>
 80032ea:	88fb      	ldrh	r3, [r7, #6]
 80032ec:	4a0b      	ldr	r2, [pc, #44]	; (800331c <rtc_year_is_leap+0x60>)
 80032ee:	fba2 1203 	umull	r1, r2, r2, r3
 80032f2:	09d2      	lsrs	r2, r2, #7
 80032f4:	f44f 71c8 	mov.w	r1, #400	; 0x190
 80032f8:	fb01 f202 	mul.w	r2, r1, r2
 80032fc:	1a9b      	subs	r3, r3, r2
 80032fe:	b29b      	uxth	r3, r3
 8003300:	2b00      	cmp	r3, #0
 8003302:	d101      	bne.n	8003308 <rtc_year_is_leap+0x4c>
 8003304:	2301      	movs	r3, #1
 8003306:	e004      	b.n	8003312 <rtc_year_is_leap+0x56>
 8003308:	2300      	movs	r3, #0
 800330a:	e002      	b.n	8003312 <rtc_year_is_leap+0x56>
 800330c:	2301      	movs	r3, #1
 800330e:	e000      	b.n	8003312 <rtc_year_is_leap+0x56>
 8003310:	2300      	movs	r3, #0
 8003312:	4618      	mov	r0, r3
 8003314:	370c      	adds	r7, #12
 8003316:	46bd      	mov	sp, r7
 8003318:	bc80      	pop	{r7}
 800331a:	4770      	bx	lr
 800331c:	51eb851f 	.word	0x51eb851f

08003320 <rtc_add_notifier>:
 8003320:	b580      	push	{r7, lr}
 8003322:	b082      	sub	sp, #8
 8003324:	af00      	add	r7, sp, #0
 8003326:	6078      	str	r0, [r7, #4]
 8003328:	4b0f      	ldr	r3, [pc, #60]	; (8003368 <rtc_add_notifier+0x48>)
 800332a:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
 800332e:	2b02      	cmp	r3, #2
 8003330:	d901      	bls.n	8003336 <rtc_add_notifier+0x16>
 8003332:	2303      	movs	r3, #3
 8003334:	e014      	b.n	8003360 <rtc_add_notifier+0x40>
 8003336:	4b0c      	ldr	r3, [pc, #48]	; (8003368 <rtc_add_notifier+0x48>)
 8003338:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
 800333c:	3301      	adds	r3, #1
 800333e:	00db      	lsls	r3, r3, #3
 8003340:	4a09      	ldr	r2, [pc, #36]	; (8003368 <rtc_add_notifier+0x48>)
 8003342:	4413      	add	r3, r2
 8003344:	2208      	movs	r2, #8
 8003346:	6879      	ldr	r1, [r7, #4]
 8003348:	4618      	mov	r0, r3
 800334a:	f003 ff1f 	bl	800718c <memcpy>
 800334e:	4b06      	ldr	r3, [pc, #24]	; (8003368 <rtc_add_notifier+0x48>)
 8003350:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
 8003354:	3301      	adds	r3, #1
 8003356:	b2da      	uxtb	r2, r3
 8003358:	4b03      	ldr	r3, [pc, #12]	; (8003368 <rtc_add_notifier+0x48>)
 800335a:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
 800335e:	2300      	movs	r3, #0
 8003360:	4618      	mov	r0, r3
 8003362:	3708      	adds	r7, #8
 8003364:	46bd      	mov	sp, r7
 8003366:	bd80      	pop	{r7, pc}
 8003368:	200009b0 	.word	0x200009b0

0800336c <rtc_set>:
 800336c:	b580      	push	{r7, lr}
 800336e:	b084      	sub	sp, #16
 8003370:	af00      	add	r7, sp, #0
 8003372:	6078      	str	r0, [r7, #4]
 8003374:	2300      	movs	r3, #0
 8003376:	60fb      	str	r3, [r7, #12]
 8003378:	2300      	movs	r3, #0
 800337a:	817b      	strh	r3, [r7, #10]
 800337c:	2300      	movs	r3, #0
 800337e:	727b      	strb	r3, [r7, #9]
 8003380:	687b      	ldr	r3, [r7, #4]
 8003382:	881b      	ldrh	r3, [r3, #0]
 8003384:	f240 72b1 	movw	r2, #1969	; 0x7b1
 8003388:	4293      	cmp	r3, r2
 800338a:	d921      	bls.n	80033d0 <rtc_set+0x64>
 800338c:	687b      	ldr	r3, [r7, #4]
 800338e:	881b      	ldrh	r3, [r3, #0]
 8003390:	f640 0233 	movw	r2, #2099	; 0x833
 8003394:	4293      	cmp	r3, r2
 8003396:	d81b      	bhi.n	80033d0 <rtc_set+0x64>
 8003398:	687b      	ldr	r3, [r7, #4]
 800339a:	789b      	ldrb	r3, [r3, #2]
 800339c:	2b00      	cmp	r3, #0
 800339e:	d017      	beq.n	80033d0 <rtc_set+0x64>
 80033a0:	687b      	ldr	r3, [r7, #4]
 80033a2:	789b      	ldrb	r3, [r3, #2]
 80033a4:	2b0c      	cmp	r3, #12
 80033a6:	d813      	bhi.n	80033d0 <rtc_set+0x64>
 80033a8:	687b      	ldr	r3, [r7, #4]
 80033aa:	78db      	ldrb	r3, [r3, #3]
 80033ac:	2b00      	cmp	r3, #0
 80033ae:	d00f      	beq.n	80033d0 <rtc_set+0x64>
 80033b0:	687b      	ldr	r3, [r7, #4]
 80033b2:	78db      	ldrb	r3, [r3, #3]
 80033b4:	2b1f      	cmp	r3, #31
 80033b6:	d80b      	bhi.n	80033d0 <rtc_set+0x64>
 80033b8:	687b      	ldr	r3, [r7, #4]
 80033ba:	791b      	ldrb	r3, [r3, #4]
 80033bc:	2b17      	cmp	r3, #23
 80033be:	d807      	bhi.n	80033d0 <rtc_set+0x64>
 80033c0:	687b      	ldr	r3, [r7, #4]
 80033c2:	795b      	ldrb	r3, [r3, #5]
 80033c4:	2b3b      	cmp	r3, #59	; 0x3b
 80033c6:	d803      	bhi.n	80033d0 <rtc_set+0x64>
 80033c8:	687b      	ldr	r3, [r7, #4]
 80033ca:	799b      	ldrb	r3, [r3, #6]
 80033cc:	2b3b      	cmp	r3, #59	; 0x3b
 80033ce:	d901      	bls.n	80033d4 <rtc_set+0x68>
 80033d0:	2301      	movs	r3, #1
 80033d2:	e0a7      	b.n	8003524 <rtc_set+0x1b8>
 80033d4:	2208      	movs	r2, #8
 80033d6:	6879      	ldr	r1, [r7, #4]
 80033d8:	4854      	ldr	r0, [pc, #336]	; (800352c <rtc_set+0x1c0>)
 80033da:	f003 fed7 	bl	800718c <memcpy>
 80033de:	f240 73b2 	movw	r3, #1970	; 0x7b2
 80033e2:	817b      	strh	r3, [r7, #10]
 80033e4:	e014      	b.n	8003410 <rtc_set+0xa4>
 80033e6:	897b      	ldrh	r3, [r7, #10]
 80033e8:	4618      	mov	r0, r3
 80033ea:	f7ff ff67 	bl	80032bc <rtc_year_is_leap>
 80033ee:	4603      	mov	r3, r0
 80033f0:	2b00      	cmp	r3, #0
 80033f2:	d006      	beq.n	8003402 <rtc_set+0x96>
 80033f4:	68fb      	ldr	r3, [r7, #12]
 80033f6:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
 80033fa:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
 80033fe:	60fb      	str	r3, [r7, #12]
 8003400:	e003      	b.n	800340a <rtc_set+0x9e>
 8003402:	68fa      	ldr	r2, [r7, #12]
 8003404:	4b4a      	ldr	r3, [pc, #296]	; (8003530 <rtc_set+0x1c4>)
 8003406:	4413      	add	r3, r2
 8003408:	60fb      	str	r3, [r7, #12]
 800340a:	897b      	ldrh	r3, [r7, #10]
 800340c:	3301      	adds	r3, #1
 800340e:	817b      	strh	r3, [r7, #10]
 8003410:	687b      	ldr	r3, [r7, #4]
 8003412:	881b      	ldrh	r3, [r3, #0]
 8003414:	897a      	ldrh	r2, [r7, #10]
 8003416:	429a      	cmp	r2, r3
 8003418:	d3e5      	bcc.n	80033e6 <rtc_set+0x7a>
 800341a:	2300      	movs	r3, #0
 800341c:	727b      	strb	r3, [r7, #9]
 800341e:	e00c      	b.n	800343a <rtc_set+0xce>
 8003420:	7a7b      	ldrb	r3, [r7, #9]
 8003422:	4a44      	ldr	r2, [pc, #272]	; (8003534 <rtc_set+0x1c8>)
 8003424:	5cd3      	ldrb	r3, [r2, r3]
 8003426:	461a      	mov	r2, r3
 8003428:	4b43      	ldr	r3, [pc, #268]	; (8003538 <rtc_set+0x1cc>)
 800342a:	fb03 f302 	mul.w	r3, r3, r2
 800342e:	68fa      	ldr	r2, [r7, #12]
 8003430:	4413      	add	r3, r2
 8003432:	60fb      	str	r3, [r7, #12]
 8003434:	7a7b      	ldrb	r3, [r7, #9]
 8003436:	3301      	adds	r3, #1
 8003438:	727b      	strb	r3, [r7, #9]
 800343a:	7a7a      	ldrb	r2, [r7, #9]
 800343c:	687b      	ldr	r3, [r7, #4]
 800343e:	789b      	ldrb	r3, [r3, #2]
 8003440:	3b01      	subs	r3, #1
 8003442:	429a      	cmp	r2, r3
 8003444:	dbec      	blt.n	8003420 <rtc_set+0xb4>
 8003446:	687b      	ldr	r3, [r7, #4]
 8003448:	881b      	ldrh	r3, [r3, #0]
 800344a:	4618      	mov	r0, r3
 800344c:	f7ff ff36 	bl	80032bc <rtc_year_is_leap>
 8003450:	4603      	mov	r3, r0
 8003452:	2b00      	cmp	r3, #0
 8003454:	d009      	beq.n	800346a <rtc_set+0xfe>
 8003456:	687b      	ldr	r3, [r7, #4]
 8003458:	789b      	ldrb	r3, [r3, #2]
 800345a:	2b02      	cmp	r3, #2
 800345c:	d905      	bls.n	800346a <rtc_set+0xfe>
 800345e:	68fb      	ldr	r3, [r7, #12]
 8003460:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
 8003464:	f503 73c0 	add.w	r3, r3, #384	; 0x180
 8003468:	60fb      	str	r3, [r7, #12]
 800346a:	687b      	ldr	r3, [r7, #4]
 800346c:	78db      	ldrb	r3, [r3, #3]
 800346e:	3b01      	subs	r3, #1
 8003470:	461a      	mov	r2, r3
 8003472:	4b31      	ldr	r3, [pc, #196]	; (8003538 <rtc_set+0x1cc>)
 8003474:	fb03 f302 	mul.w	r3, r3, r2
 8003478:	68fa      	ldr	r2, [r7, #12]
 800347a:	4413      	add	r3, r2
 800347c:	60fb      	str	r3, [r7, #12]
 800347e:	687b      	ldr	r3, [r7, #4]
 8003480:	791b      	ldrb	r3, [r3, #4]
 8003482:	461a      	mov	r2, r3
 8003484:	f44f 6361 	mov.w	r3, #3600	; 0xe10
 8003488:	fb03 f302 	mul.w	r3, r3, r2
 800348c:	68fa      	ldr	r2, [r7, #12]
 800348e:	4413      	add	r3, r2
 8003490:	60fb      	str	r3, [r7, #12]
 8003492:	687b      	ldr	r3, [r7, #4]
 8003494:	795b      	ldrb	r3, [r3, #5]
 8003496:	461a      	mov	r2, r3
 8003498:	4613      	mov	r3, r2
 800349a:	011b      	lsls	r3, r3, #4
 800349c:	1a9b      	subs	r3, r3, r2
 800349e:	009b      	lsls	r3, r3, #2
 80034a0:	461a      	mov	r2, r3
 80034a2:	68fb      	ldr	r3, [r7, #12]
 80034a4:	4413      	add	r3, r2
 80034a6:	60fb      	str	r3, [r7, #12]
 80034a8:	687b      	ldr	r3, [r7, #4]
 80034aa:	799b      	ldrb	r3, [r3, #6]
 80034ac:	461a      	mov	r2, r3
 80034ae:	68fb      	ldr	r3, [r7, #12]
 80034b0:	4413      	add	r3, r2
 80034b2:	60fb      	str	r3, [r7, #12]
 80034b4:	f04f 5080 	mov.w	r0, #268435456	; 0x10000000
 80034b8:	f7ff fecc 	bl	8003254 <LL_APB1_GRP1_EnableClock>
 80034bc:	f04f 6000 	mov.w	r0, #134217728	; 0x8000000
 80034c0:	f7ff fec8 	bl	8003254 <LL_APB1_GRP1_EnableClock>
 80034c4:	f7ff fede 	bl	8003284 <LL_PWR_EnableBkUpAccess>
 80034c8:	f44f 720a 	mov.w	r2, #552	; 0x228
 80034cc:	2101      	movs	r1, #1
 80034ce:	481b      	ldr	r0, [pc, #108]	; (800353c <rtc_set+0x1d0>)
 80034d0:	f7ff fe64 	bl	800319c <LL_RTC_BKP_SetRegister>
 80034d4:	4b15      	ldr	r3, [pc, #84]	; (800352c <rtc_set+0x1c0>)
 80034d6:	2200      	movs	r2, #0
 80034d8:	f883 2029 	strb.w	r2, [r3, #41]	; 0x29
 80034dc:	bf00      	nop
 80034de:	4818      	ldr	r0, [pc, #96]	; (8003540 <rtc_set+0x1d4>)
 80034e0:	f7ff fea5 	bl	800322e <LL_RTC_IsActiveFlag_RTOF>
 80034e4:	4603      	mov	r3, r0
 80034e6:	2b00      	cmp	r3, #0
 80034e8:	d0f9      	beq.n	80034de <rtc_set+0x172>
 80034ea:	bf00      	nop
 80034ec:	4814      	ldr	r0, [pc, #80]	; (8003540 <rtc_set+0x1d4>)
 80034ee:	f7ff fe6b 	bl	80031c8 <LL_RTC_IsActiveFlag_RS>
 80034f2:	4603      	mov	r3, r0
 80034f4:	2b00      	cmp	r3, #0
 80034f6:	d0f9      	beq.n	80034ec <rtc_set+0x180>
 80034f8:	4811      	ldr	r0, [pc, #68]	; (8003540 <rtc_set+0x1d4>)
 80034fa:	f7ff fe18 	bl	800312e <LL_RTC_DisableWriteProtection>
 80034fe:	68f9      	ldr	r1, [r7, #12]
 8003500:	480f      	ldr	r0, [pc, #60]	; (8003540 <rtc_set+0x1d4>)
 8003502:	f7ff fe23 	bl	800314c <LL_RTC_TIME_Set>
 8003506:	480e      	ldr	r0, [pc, #56]	; (8003540 <rtc_set+0x1d4>)
 8003508:	f7ff fe02 	bl	8003110 <LL_RTC_EnableWriteProtection>
 800350c:	bf00      	nop
 800350e:	480c      	ldr	r0, [pc, #48]	; (8003540 <rtc_set+0x1d4>)
 8003510:	f7ff fe8d 	bl	800322e <LL_RTC_IsActiveFlag_RTOF>
 8003514:	4603      	mov	r3, r0
 8003516:	2b00      	cmp	r3, #0
 8003518:	d0f9      	beq.n	800350e <rtc_set+0x1a2>
 800351a:	f7ff fec1 	bl	80032a0 <LL_PWR_DisableBkUpAccess>
 800351e:	4b03      	ldr	r3, [pc, #12]	; (800352c <rtc_set+0x1c0>)
 8003520:	f893 3029 	ldrb.w	r3, [r3, #41]	; 0x29
 8003524:	4618      	mov	r0, r3
 8003526:	3710      	adds	r7, #16
 8003528:	46bd      	mov	sp, r7
 800352a:	bd80      	pop	{r7, pc}
 800352c:	200009b0 	.word	0x200009b0
 8003530:	01e13380 	.word	0x01e13380
 8003534:	080079c0 	.word	0x080079c0
 8003538:	00015180 	.word	0x00015180
 800353c:	40006c00 	.word	0x40006c00
 8003540:	40002800 	.word	0x40002800

08003544 <rtc_get_precise>:
 8003544:	b580      	push	{r7, lr}
 8003546:	b086      	sub	sp, #24
 8003548:	af00      	add	r7, sp, #0
 800354a:	6078      	str	r0, [r7, #4]
 800354c:	4853      	ldr	r0, [pc, #332]	; (800369c <rtc_get_precise+0x158>)
 800354e:	f7ff fe0f 	bl	8003170 <LL_RTC_TIME_Get>
 8003552:	60f8      	str	r0, [r7, #12]
 8003554:	68fb      	ldr	r3, [r7, #12]
 8003556:	4a52      	ldr	r2, [pc, #328]	; (80036a0 <rtc_get_precise+0x15c>)
 8003558:	fba2 2303 	umull	r2, r3, r2, r3
 800355c:	0c1b      	lsrs	r3, r3, #16
 800355e:	617b      	str	r3, [r7, #20]
 8003560:	4b50      	ldr	r3, [pc, #320]	; (80036a4 <rtc_get_precise+0x160>)
 8003562:	681b      	ldr	r3, [r3, #0]
 8003564:	697a      	ldr	r2, [r7, #20]
 8003566:	429a      	cmp	r2, r3
 8003568:	d059      	beq.n	800361e <rtc_get_precise+0xda>
 800356a:	4a4e      	ldr	r2, [pc, #312]	; (80036a4 <rtc_get_precise+0x160>)
 800356c:	697b      	ldr	r3, [r7, #20]
 800356e:	6013      	str	r3, [r2, #0]
 8003570:	f240 73b2 	movw	r3, #1970	; 0x7b2
 8003574:	827b      	strh	r3, [r7, #18]
 8003576:	e016      	b.n	80035a6 <rtc_get_precise+0x62>
 8003578:	8a7b      	ldrh	r3, [r7, #18]
 800357a:	4618      	mov	r0, r3
 800357c:	f7ff fe9e 	bl	80032bc <rtc_year_is_leap>
 8003580:	4603      	mov	r3, r0
 8003582:	2b00      	cmp	r3, #0
 8003584:	d008      	beq.n	8003598 <rtc_get_precise+0x54>
 8003586:	697b      	ldr	r3, [r7, #20]
 8003588:	f5b3 7fb7 	cmp.w	r3, #366	; 0x16e
 800358c:	d310      	bcc.n	80035b0 <rtc_get_precise+0x6c>
 800358e:	697b      	ldr	r3, [r7, #20]
 8003590:	f5a3 73b7 	sub.w	r3, r3, #366	; 0x16e
 8003594:	617b      	str	r3, [r7, #20]
 8003596:	e003      	b.n	80035a0 <rtc_get_precise+0x5c>
 8003598:	697b      	ldr	r3, [r7, #20]
 800359a:	f2a3 136d 	subw	r3, r3, #365	; 0x16d
 800359e:	617b      	str	r3, [r7, #20]
 80035a0:	8a7b      	ldrh	r3, [r7, #18]
 80035a2:	3301      	adds	r3, #1
 80035a4:	827b      	strh	r3, [r7, #18]
 80035a6:	697b      	ldr	r3, [r7, #20]
 80035a8:	f5b3 7fb6 	cmp.w	r3, #364	; 0x16c
 80035ac:	d8e4      	bhi.n	8003578 <rtc_get_precise+0x34>
 80035ae:	e000      	b.n	80035b2 <rtc_get_precise+0x6e>
 80035b0:	bf00      	nop
 80035b2:	687b      	ldr	r3, [r7, #4]
 80035b4:	8a7a      	ldrh	r2, [r7, #18]
 80035b6:	801a      	strh	r2, [r3, #0]
 80035b8:	2300      	movs	r3, #0
 80035ba:	747b      	strb	r3, [r7, #17]
 80035bc:	e021      	b.n	8003602 <rtc_get_precise+0xbe>
 80035be:	7c7b      	ldrb	r3, [r7, #17]
 80035c0:	2b01      	cmp	r3, #1
 80035c2:	d10d      	bne.n	80035e0 <rtc_get_precise+0x9c>
 80035c4:	8a7b      	ldrh	r3, [r7, #18]
 80035c6:	4618      	mov	r0, r3
 80035c8:	f7ff fe78 	bl	80032bc <rtc_year_is_leap>
 80035cc:	4603      	mov	r3, r0
 80035ce:	2b00      	cmp	r3, #0
 80035d0:	d006      	beq.n	80035e0 <rtc_get_precise+0x9c>
 80035d2:	697b      	ldr	r3, [r7, #20]
 80035d4:	2b1c      	cmp	r3, #28
 80035d6:	d918      	bls.n	800360a <rtc_get_precise+0xc6>
 80035d8:	697b      	ldr	r3, [r7, #20]
 80035da:	3b1d      	subs	r3, #29
 80035dc:	617b      	str	r3, [r7, #20]
 80035de:	e00d      	b.n	80035fc <rtc_get_precise+0xb8>
 80035e0:	7c7b      	ldrb	r3, [r7, #17]
 80035e2:	4a31      	ldr	r2, [pc, #196]	; (80036a8 <rtc_get_precise+0x164>)
 80035e4:	5cd3      	ldrb	r3, [r2, r3]
 80035e6:	461a      	mov	r2, r3
 80035e8:	697b      	ldr	r3, [r7, #20]
 80035ea:	4293      	cmp	r3, r2
 80035ec:	d30f      	bcc.n	800360e <rtc_get_precise+0xca>
 80035ee:	7c7b      	ldrb	r3, [r7, #17]
 80035f0:	4a2d      	ldr	r2, [pc, #180]	; (80036a8 <rtc_get_precise+0x164>)
 80035f2:	5cd3      	ldrb	r3, [r2, r3]
 80035f4:	461a      	mov	r2, r3
 80035f6:	697b      	ldr	r3, [r7, #20]
 80035f8:	1a9b      	subs	r3, r3, r2
 80035fa:	617b      	str	r3, [r7, #20]
 80035fc:	7c7b      	ldrb	r3, [r7, #17]
 80035fe:	3301      	adds	r3, #1
 8003600:	747b      	strb	r3, [r7, #17]
 8003602:	697b      	ldr	r3, [r7, #20]
 8003604:	2b1b      	cmp	r3, #27
 8003606:	d8da      	bhi.n	80035be <rtc_get_precise+0x7a>
 8003608:	e002      	b.n	8003610 <rtc_get_precise+0xcc>
 800360a:	bf00      	nop
 800360c:	e000      	b.n	8003610 <rtc_get_precise+0xcc>
 800360e:	bf00      	nop
 8003610:	687b      	ldr	r3, [r7, #4]
 8003612:	7c7a      	ldrb	r2, [r7, #17]
 8003614:	709a      	strb	r2, [r3, #2]
 8003616:	697b      	ldr	r3, [r7, #20]
 8003618:	b2da      	uxtb	r2, r3
 800361a:	687b      	ldr	r3, [r7, #4]
 800361c:	70da      	strb	r2, [r3, #3]
 800361e:	68fb      	ldr	r3, [r7, #12]
 8003620:	4a1f      	ldr	r2, [pc, #124]	; (80036a0 <rtc_get_precise+0x15c>)
 8003622:	fba2 1203 	umull	r1, r2, r2, r3
 8003626:	0c12      	lsrs	r2, r2, #16
 8003628:	4920      	ldr	r1, [pc, #128]	; (80036ac <rtc_get_precise+0x168>)
 800362a:	fb01 f202 	mul.w	r2, r1, r2
 800362e:	1a9b      	subs	r3, r3, r2
 8003630:	60fb      	str	r3, [r7, #12]
 8003632:	68fb      	ldr	r3, [r7, #12]
 8003634:	4a1e      	ldr	r2, [pc, #120]	; (80036b0 <rtc_get_precise+0x16c>)
 8003636:	fba2 2303 	umull	r2, r3, r2, r3
 800363a:	0adb      	lsrs	r3, r3, #11
 800363c:	b2da      	uxtb	r2, r3
 800363e:	687b      	ldr	r3, [r7, #4]
 8003640:	711a      	strb	r2, [r3, #4]
 8003642:	68fa      	ldr	r2, [r7, #12]
 8003644:	4b1a      	ldr	r3, [pc, #104]	; (80036b0 <rtc_get_precise+0x16c>)
 8003646:	fba3 1302 	umull	r1, r3, r3, r2
 800364a:	0adb      	lsrs	r3, r3, #11
 800364c:	f44f 6161 	mov.w	r1, #3600	; 0xe10
 8003650:	fb01 f303 	mul.w	r3, r1, r3
 8003654:	1ad3      	subs	r3, r2, r3
 8003656:	4a17      	ldr	r2, [pc, #92]	; (80036b4 <rtc_get_precise+0x170>)
 8003658:	fba2 2303 	umull	r2, r3, r2, r3
 800365c:	095b      	lsrs	r3, r3, #5
 800365e:	b2da      	uxtb	r2, r3
 8003660:	687b      	ldr	r3, [r7, #4]
 8003662:	715a      	strb	r2, [r3, #5]
 8003664:	68fb      	ldr	r3, [r7, #12]
 8003666:	4a12      	ldr	r2, [pc, #72]	; (80036b0 <rtc_get_precise+0x16c>)
 8003668:	fba2 1203 	umull	r1, r2, r2, r3
 800366c:	0ad2      	lsrs	r2, r2, #11
 800366e:	f44f 6161 	mov.w	r1, #3600	; 0xe10
 8003672:	fb01 f202 	mul.w	r2, r1, r2
 8003676:	1a9a      	subs	r2, r3, r2
 8003678:	4b0e      	ldr	r3, [pc, #56]	; (80036b4 <rtc_get_precise+0x170>)
 800367a:	fba3 1302 	umull	r1, r3, r3, r2
 800367e:	0959      	lsrs	r1, r3, #5
 8003680:	460b      	mov	r3, r1
 8003682:	011b      	lsls	r3, r3, #4
 8003684:	1a5b      	subs	r3, r3, r1
 8003686:	009b      	lsls	r3, r3, #2
 8003688:	1ad1      	subs	r1, r2, r3
 800368a:	b2ca      	uxtb	r2, r1
 800368c:	687b      	ldr	r3, [r7, #4]
 800368e:	719a      	strb	r2, [r3, #6]
 8003690:	2300      	movs	r3, #0
 8003692:	4618      	mov	r0, r3
 8003694:	3718      	adds	r7, #24
 8003696:	46bd      	mov	sp, r7
 8003698:	bd80      	pop	{r7, pc}
 800369a:	bf00      	nop
 800369c:	40002800 	.word	0x40002800
 80036a0:	c22e4507 	.word	0xc22e4507
 80036a4:	200009dc 	.word	0x200009dc
 80036a8:	080079cc 	.word	0x080079cc
 80036ac:	00015180 	.word	0x00015180
 80036b0:	91a2b3c5 	.word	0x91a2b3c5
 80036b4:	88888889 	.word	0x88888889

080036b8 <rtc_get_err_status>:
 80036b8:	b480      	push	{r7}
 80036ba:	af00      	add	r7, sp, #0
 80036bc:	4b03      	ldr	r3, [pc, #12]	; (80036cc <rtc_get_err_status+0x14>)
 80036be:	f893 3029 	ldrb.w	r3, [r3, #41]	; 0x29
 80036c2:	4618      	mov	r0, r3
 80036c4:	46bd      	mov	sp, r7
 80036c6:	bc80      	pop	{r7}
 80036c8:	4770      	bx	lr
 80036ca:	bf00      	nop
 80036cc:	200009b0 	.word	0x200009b0

080036d0 <cmd_set_rtc>:
 80036d0:	b580      	push	{r7, lr}
 80036d2:	b084      	sub	sp, #16
 80036d4:	af00      	add	r7, sp, #0
 80036d6:	6078      	str	r0, [r7, #4]
 80036d8:	687b      	ldr	r3, [r7, #4]
 80036da:	60fb      	str	r3, [r7, #12]
 80036dc:	68f8      	ldr	r0, [r7, #12]
 80036de:	f7ff fe45 	bl	800336c <rtc_set>
 80036e2:	4603      	mov	r3, r0
 80036e4:	2b00      	cmp	r3, #0
 80036e6:	d106      	bne.n	80036f6 <cmd_set_rtc+0x26>
 80036e8:	2203      	movs	r2, #3
 80036ea:	4908      	ldr	r1, [pc, #32]	; (800370c <cmd_set_rtc+0x3c>)
 80036ec:	6878      	ldr	r0, [r7, #4]
 80036ee:	f003 fd4d 	bl	800718c <memcpy>
 80036f2:	2303      	movs	r3, #3
 80036f4:	e006      	b.n	8003704 <cmd_set_rtc+0x34>
 80036f6:	bf00      	nop
 80036f8:	2203      	movs	r2, #3
 80036fa:	4905      	ldr	r1, [pc, #20]	; (8003710 <cmd_set_rtc+0x40>)
 80036fc:	6878      	ldr	r0, [r7, #4]
 80036fe:	f003 fd45 	bl	800718c <memcpy>
 8003702:	2303      	movs	r3, #3
 8003704:	4618      	mov	r0, r3
 8003706:	3710      	adds	r7, #16
 8003708:	46bd      	mov	sp, r7
 800370a:	bd80      	pop	{r7, pc}
 800370c:	0800736c 	.word	0x0800736c
 8003710:	08007370 	.word	0x08007370

08003714 <RTC_IRQHandler>:
 8003714:	b580      	push	{r7, lr}
 8003716:	b084      	sub	sp, #16
 8003718:	af00      	add	r7, sp, #0
 800371a:	2300      	movs	r3, #0
 800371c:	607b      	str	r3, [r7, #4]
 800371e:	2300      	movs	r3, #0
 8003720:	60fb      	str	r3, [r7, #12]
 8003722:	2300      	movs	r3, #0
 8003724:	60bb      	str	r3, [r7, #8]
 8003726:	4828      	ldr	r0, [pc, #160]	; (80037c8 <RTC_IRQHandler+0xb4>)
 8003728:	f7ff fd60 	bl	80031ec <LL_RTC_IsActiveFlag_SEC>
 800372c:	4603      	mov	r3, r0
 800372e:	2b00      	cmp	r3, #0
 8003730:	d03a      	beq.n	80037a8 <RTC_IRQHandler+0x94>
 8003732:	4825      	ldr	r0, [pc, #148]	; (80037c8 <RTC_IRQHandler+0xb4>)
 8003734:	f7ff fd1c 	bl	8003170 <LL_RTC_TIME_Get>
 8003738:	60b8      	str	r0, [r7, #8]
 800373a:	2300      	movs	r3, #0
 800373c:	60fb      	str	r3, [r7, #12]
 800373e:	e01a      	b.n	8003776 <RTC_IRQHandler+0x62>
 8003740:	4a22      	ldr	r2, [pc, #136]	; (80037cc <RTC_IRQHandler+0xb8>)
 8003742:	68fb      	ldr	r3, [r7, #12]
 8003744:	3301      	adds	r3, #1
 8003746:	00db      	lsls	r3, r3, #3
 8003748:	4413      	add	r3, r2
 800374a:	685a      	ldr	r2, [r3, #4]
 800374c:	68bb      	ldr	r3, [r7, #8]
 800374e:	fbb3 f1f2 	udiv	r1, r3, r2
 8003752:	fb02 f201 	mul.w	r2, r2, r1
 8003756:	1a9b      	subs	r3, r3, r2
 8003758:	2b00      	cmp	r3, #0
 800375a:	d109      	bne.n	8003770 <RTC_IRQHandler+0x5c>
 800375c:	4a1b      	ldr	r2, [pc, #108]	; (80037cc <RTC_IRQHandler+0xb8>)
 800375e:	68fb      	ldr	r3, [r7, #12]
 8003760:	3301      	adds	r3, #1
 8003762:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
 8003766:	1d3a      	adds	r2, r7, #4
 8003768:	4611      	mov	r1, r2
 800376a:	4618      	mov	r0, r3
 800376c:	f002 fe94 	bl	8006498 <vTaskNotifyGiveFromISR>
 8003770:	68fb      	ldr	r3, [r7, #12]
 8003772:	3301      	adds	r3, #1
 8003774:	60fb      	str	r3, [r7, #12]
 8003776:	4b15      	ldr	r3, [pc, #84]	; (80037cc <RTC_IRQHandler+0xb8>)
 8003778:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
 800377c:	461a      	mov	r2, r3
 800377e:	68fb      	ldr	r3, [r7, #12]
 8003780:	4293      	cmp	r3, r2
 8003782:	dbdd      	blt.n	8003740 <RTC_IRQHandler+0x2c>
 8003784:	68b9      	ldr	r1, [r7, #8]
 8003786:	4b12      	ldr	r3, [pc, #72]	; (80037d0 <RTC_IRQHandler+0xbc>)
 8003788:	fba3 2301 	umull	r2, r3, r3, r1
 800378c:	095a      	lsrs	r2, r3, #5
 800378e:	4613      	mov	r3, r2
 8003790:	011b      	lsls	r3, r3, #4
 8003792:	1a9b      	subs	r3, r3, r2
 8003794:	009b      	lsls	r3, r3, #2
 8003796:	1aca      	subs	r2, r1, r3
 8003798:	2a00      	cmp	r2, #0
 800379a:	d102      	bne.n	80037a2 <RTC_IRQHandler+0x8e>
 800379c:	480b      	ldr	r0, [pc, #44]	; (80037cc <RTC_IRQHandler+0xb8>)
 800379e:	f7ff fed1 	bl	8003544 <rtc_get_precise>
 80037a2:	4809      	ldr	r0, [pc, #36]	; (80037c8 <RTC_IRQHandler+0xb4>)
 80037a4:	f7ff fd34 	bl	8003210 <LL_RTC_ClearFlag_SEC>
 80037a8:	687b      	ldr	r3, [r7, #4]
 80037aa:	2b00      	cmp	r3, #0
 80037ac:	d007      	beq.n	80037be <RTC_IRQHandler+0xaa>
 80037ae:	4b09      	ldr	r3, [pc, #36]	; (80037d4 <RTC_IRQHandler+0xc0>)
 80037b0:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 80037b4:	601a      	str	r2, [r3, #0]
 80037b6:	f3bf 8f4f 	dsb	sy
 80037ba:	f3bf 8f6f 	isb	sy
 80037be:	bf00      	nop
 80037c0:	3710      	adds	r7, #16
 80037c2:	46bd      	mov	sp, r7
 80037c4:	bd80      	pop	{r7, pc}
 80037c6:	bf00      	nop
 80037c8:	40002800 	.word	0x40002800
 80037cc:	200009b0 	.word	0x200009b0
 80037d0:	88888889 	.word	0x88888889
 80037d4:	e000ed04 	.word	0xe000ed04

080037d8 <temp_get_temp>:
 80037d8:	b580      	push	{r7, lr}
 80037da:	b082      	sub	sp, #8
 80037dc:	af00      	add	r7, sp, #0
 80037de:	6078      	str	r0, [r7, #4]
 80037e0:	220c      	movs	r2, #12
 80037e2:	4904      	ldr	r1, [pc, #16]	; (80037f4 <temp_get_temp+0x1c>)
 80037e4:	6878      	ldr	r0, [r7, #4]
 80037e6:	f003 fcd1 	bl	800718c <memcpy>
 80037ea:	bf00      	nop
 80037ec:	3708      	adds	r7, #8
 80037ee:	46bd      	mov	sp, r7
 80037f0:	bd80      	pop	{r7, pc}
 80037f2:	bf00      	nop
 80037f4:	20000a1c 	.word	0x20000a1c

080037f8 <temp_get_err>:
 80037f8:	b480      	push	{r7}
 80037fa:	af00      	add	r7, sp, #0
 80037fc:	4b03      	ldr	r3, [pc, #12]	; (800380c <temp_get_err+0x14>)
 80037fe:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 8003800:	b2db      	uxtb	r3, r3
 8003802:	4618      	mov	r0, r3
 8003804:	46bd      	mov	sp, r7
 8003806:	bc80      	pop	{r7}
 8003808:	4770      	bx	lr
 800380a:	bf00      	nop
 800380c:	200009e0 	.word	0x200009e0

08003810 <temp_manager>:
 8003810:	b580      	push	{r7, lr}
 8003812:	b086      	sub	sp, #24
 8003814:	af00      	add	r7, sp, #0
 8003816:	6078      	str	r0, [r7, #4]
 8003818:	2300      	movs	r3, #0
 800381a:	617b      	str	r3, [r7, #20]
 800381c:	2300      	movs	r3, #0
 800381e:	73fb      	strb	r3, [r7, #15]
 8003820:	2300      	movs	r3, #0
 8003822:	613b      	str	r3, [r7, #16]
 8003824:	4b77      	ldr	r3, [pc, #476]	; (8003a04 <temp_manager+0x1f4>)
 8003826:	2200      	movs	r2, #0
 8003828:	649a      	str	r2, [r3, #72]	; 0x48
 800382a:	4b76      	ldr	r3, [pc, #472]	; (8003a04 <temp_manager+0x1f4>)
 800382c:	4a76      	ldr	r2, [pc, #472]	; (8003a08 <temp_manager+0x1f8>)
 800382e:	601a      	str	r2, [r3, #0]
 8003830:	4b74      	ldr	r3, [pc, #464]	; (8003a04 <temp_manager+0x1f4>)
 8003832:	f240 1201 	movw	r2, #257	; 0x101
 8003836:	605a      	str	r2, [r3, #4]
 8003838:	4b72      	ldr	r3, [pc, #456]	; (8003a04 <temp_manager+0x1f4>)
 800383a:	4a73      	ldr	r2, [pc, #460]	; (8003a08 <temp_manager+0x1f8>)
 800383c:	615a      	str	r2, [r3, #20]
 800383e:	4b71      	ldr	r3, [pc, #452]	; (8003a04 <temp_manager+0x1f4>)
 8003840:	f240 2202 	movw	r2, #514	; 0x202
 8003844:	619a      	str	r2, [r3, #24]
 8003846:	4b6f      	ldr	r3, [pc, #444]	; (8003a04 <temp_manager+0x1f4>)
 8003848:	4a6f      	ldr	r2, [pc, #444]	; (8003a08 <temp_manager+0x1f8>)
 800384a:	629a      	str	r2, [r3, #40]	; 0x28
 800384c:	4b6d      	ldr	r3, [pc, #436]	; (8003a04 <temp_manager+0x1f4>)
 800384e:	f240 4204 	movw	r2, #1028	; 0x404
 8003852:	62da      	str	r2, [r3, #44]	; 0x2c
 8003854:	2300      	movs	r3, #0
 8003856:	617b      	str	r3, [r7, #20]
 8003858:	e04e      	b.n	80038f8 <temp_manager+0xe8>
 800385a:	697a      	ldr	r2, [r7, #20]
 800385c:	4613      	mov	r3, r2
 800385e:	009b      	lsls	r3, r3, #2
 8003860:	4413      	add	r3, r2
 8003862:	009b      	lsls	r3, r3, #2
 8003864:	4a67      	ldr	r2, [pc, #412]	; (8003a04 <temp_manager+0x1f4>)
 8003866:	4413      	add	r3, r2
 8003868:	4618      	mov	r0, r3
 800386a:	f7ff f8d7 	bl	8002a1c <ow_init>
 800386e:	697a      	ldr	r2, [r7, #20]
 8003870:	4613      	mov	r3, r2
 8003872:	009b      	lsls	r3, r3, #2
 8003874:	4413      	add	r3, r2
 8003876:	009b      	lsls	r3, r3, #2
 8003878:	4a62      	ldr	r2, [pc, #392]	; (8003a04 <temp_manager+0x1f4>)
 800387a:	4413      	add	r3, r2
 800387c:	4618      	mov	r0, r3
 800387e:	f7ff f9ac 	bl	8002bda <ow_start_search>
 8003882:	4603      	mov	r3, r0
 8003884:	73fb      	strb	r3, [r7, #15]
 8003886:	7bfb      	ldrb	r3, [r7, #15]
 8003888:	2b00      	cmp	r3, #0
 800388a:	d00c      	beq.n	80038a6 <temp_manager+0x96>
 800388c:	4b5d      	ldr	r3, [pc, #372]	; (8003a04 <temp_manager+0x1f4>)
 800388e:	6c99      	ldr	r1, [r3, #72]	; 0x48
 8003890:	697a      	ldr	r2, [r7, #20]
 8003892:	4613      	mov	r3, r2
 8003894:	005b      	lsls	r3, r3, #1
 8003896:	4413      	add	r3, r2
 8003898:	2201      	movs	r2, #1
 800389a:	fa02 f303 	lsl.w	r3, r2, r3
 800389e:	430b      	orrs	r3, r1
 80038a0:	4a58      	ldr	r2, [pc, #352]	; (8003a04 <temp_manager+0x1f4>)
 80038a2:	6493      	str	r3, [r2, #72]	; 0x48
 80038a4:	e025      	b.n	80038f2 <temp_manager+0xe2>
 80038a6:	697a      	ldr	r2, [r7, #20]
 80038a8:	4613      	mov	r3, r2
 80038aa:	009b      	lsls	r3, r3, #2
 80038ac:	4413      	add	r3, r2
 80038ae:	009b      	lsls	r3, r3, #2
 80038b0:	4a54      	ldr	r2, [pc, #336]	; (8003a04 <temp_manager+0x1f4>)
 80038b2:	1898      	adds	r0, r3, r2
 80038b4:	697a      	ldr	r2, [r7, #20]
 80038b6:	4613      	mov	r3, r2
 80038b8:	009b      	lsls	r3, r3, #2
 80038ba:	4413      	add	r3, r2
 80038bc:	009b      	lsls	r3, r3, #2
 80038be:	3308      	adds	r3, #8
 80038c0:	4a50      	ldr	r2, [pc, #320]	; (8003a04 <temp_manager+0x1f4>)
 80038c2:	4413      	add	r3, r2
 80038c4:	3303      	adds	r3, #3
 80038c6:	220b      	movs	r2, #11
 80038c8:	4619      	mov	r1, r3
 80038ca:	f7fd faf7 	bl	8000ebc <ds_set_resolution>
 80038ce:	4603      	mov	r3, r0
 80038d0:	73fb      	strb	r3, [r7, #15]
 80038d2:	7bfb      	ldrb	r3, [r7, #15]
 80038d4:	2b00      	cmp	r3, #0
 80038d6:	d00c      	beq.n	80038f2 <temp_manager+0xe2>
 80038d8:	4b4a      	ldr	r3, [pc, #296]	; (8003a04 <temp_manager+0x1f4>)
 80038da:	6c99      	ldr	r1, [r3, #72]	; 0x48
 80038dc:	697a      	ldr	r2, [r7, #20]
 80038de:	4613      	mov	r3, r2
 80038e0:	005b      	lsls	r3, r3, #1
 80038e2:	4413      	add	r3, r2
 80038e4:	2202      	movs	r2, #2
 80038e6:	fa02 f303 	lsl.w	r3, r2, r3
 80038ea:	430b      	orrs	r3, r1
 80038ec:	4a45      	ldr	r2, [pc, #276]	; (8003a04 <temp_manager+0x1f4>)
 80038ee:	6493      	str	r3, [r2, #72]	; 0x48
 80038f0:	bf00      	nop
 80038f2:	697b      	ldr	r3, [r7, #20]
 80038f4:	3301      	adds	r3, #1
 80038f6:	617b      	str	r3, [r7, #20]
 80038f8:	697b      	ldr	r3, [r7, #20]
 80038fa:	2b02      	cmp	r3, #2
 80038fc:	ddad      	ble.n	800385a <temp_manager+0x4a>
 80038fe:	f002 fccf 	bl	80062a0 <xTaskGetCurrentTaskHandle>
 8003902:	4602      	mov	r2, r0
 8003904:	4b3f      	ldr	r3, [pc, #252]	; (8003a04 <temp_manager+0x1f4>)
 8003906:	64da      	str	r2, [r3, #76]	; 0x4c
 8003908:	4b3e      	ldr	r3, [pc, #248]	; (8003a04 <temp_manager+0x1f4>)
 800390a:	2201      	movs	r2, #1
 800390c:	651a      	str	r2, [r3, #80]	; 0x50
 800390e:	483f      	ldr	r0, [pc, #252]	; (8003a0c <temp_manager+0x1fc>)
 8003910:	f7ff fd06 	bl	8003320 <rtc_add_notifier>
 8003914:	4603      	mov	r3, r0
 8003916:	2b00      	cmp	r3, #0
 8003918:	d005      	beq.n	8003926 <temp_manager+0x116>
 800391a:	4b3a      	ldr	r3, [pc, #232]	; (8003a04 <temp_manager+0x1f4>)
 800391c:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 800391e:	f443 5340 	orr.w	r3, r3, #12288	; 0x3000
 8003922:	4a38      	ldr	r2, [pc, #224]	; (8003a04 <temp_manager+0x1f4>)
 8003924:	6493      	str	r3, [r2, #72]	; 0x48
 8003926:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 800392a:	2001      	movs	r0, #1
 800392c:	f002 fd68 	bl	8006400 <ulTaskNotifyTake>
 8003930:	2300      	movs	r3, #0
 8003932:	617b      	str	r3, [r7, #20]
 8003934:	e061      	b.n	80039fa <temp_manager+0x1ea>
 8003936:	f242 7310 	movw	r3, #10000	; 0x2710
 800393a:	613b      	str	r3, [r7, #16]
 800393c:	697a      	ldr	r2, [r7, #20]
 800393e:	4613      	mov	r3, r2
 8003940:	009b      	lsls	r3, r3, #2
 8003942:	4413      	add	r3, r2
 8003944:	009b      	lsls	r3, r3, #2
 8003946:	4a2f      	ldr	r2, [pc, #188]	; (8003a04 <temp_manager+0x1f4>)
 8003948:	4413      	add	r3, r2
 800394a:	4618      	mov	r0, r3
 800394c:	f7fd f9b8 	bl	8000cc0 <ds_start_all>
 8003950:	2014      	movs	r0, #20
 8003952:	f001 fff9 	bl	8005948 <vTaskDelay>
 8003956:	e002      	b.n	800395e <temp_manager+0x14e>
 8003958:	2014      	movs	r0, #20
 800395a:	f001 fff5 	bl	8005948 <vTaskDelay>
 800395e:	697a      	ldr	r2, [r7, #20]
 8003960:	4613      	mov	r3, r2
 8003962:	009b      	lsls	r3, r3, #2
 8003964:	4413      	add	r3, r2
 8003966:	009b      	lsls	r3, r3, #2
 8003968:	4a26      	ldr	r2, [pc, #152]	; (8003a04 <temp_manager+0x1f4>)
 800396a:	4413      	add	r3, r2
 800396c:	4618      	mov	r0, r3
 800396e:	f7fd fb2b 	bl	8000fc8 <ds_finished>
 8003972:	4603      	mov	r3, r0
 8003974:	2b00      	cmp	r3, #0
 8003976:	d104      	bne.n	8003982 <temp_manager+0x172>
 8003978:	693b      	ldr	r3, [r7, #16]
 800397a:	1e5a      	subs	r2, r3, #1
 800397c:	613a      	str	r2, [r7, #16]
 800397e:	2b00      	cmp	r3, #0
 8003980:	d1ea      	bne.n	8003958 <temp_manager+0x148>
 8003982:	693b      	ldr	r3, [r7, #16]
 8003984:	2b00      	cmp	r3, #0
 8003986:	d10b      	bne.n	80039a0 <temp_manager+0x190>
 8003988:	4b1e      	ldr	r3, [pc, #120]	; (8003a04 <temp_manager+0x1f4>)
 800398a:	6c99      	ldr	r1, [r3, #72]	; 0x48
 800398c:	697a      	ldr	r2, [r7, #20]
 800398e:	4613      	mov	r3, r2
 8003990:	005b      	lsls	r3, r3, #1
 8003992:	4413      	add	r3, r2
 8003994:	2204      	movs	r2, #4
 8003996:	fa02 f303 	lsl.w	r3, r2, r3
 800399a:	430b      	orrs	r3, r1
 800399c:	4a19      	ldr	r2, [pc, #100]	; (8003a04 <temp_manager+0x1f4>)
 800399e:	6493      	str	r3, [r2, #72]	; 0x48
 80039a0:	697a      	ldr	r2, [r7, #20]
 80039a2:	4613      	mov	r3, r2
 80039a4:	009b      	lsls	r3, r3, #2
 80039a6:	4413      	add	r3, r2
 80039a8:	009b      	lsls	r3, r3, #2
 80039aa:	4a16      	ldr	r2, [pc, #88]	; (8003a04 <temp_manager+0x1f4>)
 80039ac:	1898      	adds	r0, r3, r2
 80039ae:	697a      	ldr	r2, [r7, #20]
 80039b0:	4613      	mov	r3, r2
 80039b2:	009b      	lsls	r3, r3, #2
 80039b4:	4413      	add	r3, r2
 80039b6:	009b      	lsls	r3, r3, #2
 80039b8:	3308      	adds	r3, #8
 80039ba:	4a12      	ldr	r2, [pc, #72]	; (8003a04 <temp_manager+0x1f4>)
 80039bc:	4413      	add	r3, r2
 80039be:	1cd9      	adds	r1, r3, #3
 80039c0:	697b      	ldr	r3, [r7, #20]
 80039c2:	330e      	adds	r3, #14
 80039c4:	009b      	lsls	r3, r3, #2
 80039c6:	4a0f      	ldr	r2, [pc, #60]	; (8003a04 <temp_manager+0x1f4>)
 80039c8:	4413      	add	r3, r2
 80039ca:	3304      	adds	r3, #4
 80039cc:	461a      	mov	r2, r3
 80039ce:	f7fd f98b 	bl	8000ce8 <ds_read>
 80039d2:	4603      	mov	r3, r0
 80039d4:	73fb      	strb	r3, [r7, #15]
 80039d6:	7bfb      	ldrb	r3, [r7, #15]
 80039d8:	2b00      	cmp	r3, #0
 80039da:	d00b      	beq.n	80039f4 <temp_manager+0x1e4>
 80039dc:	4b09      	ldr	r3, [pc, #36]	; (8003a04 <temp_manager+0x1f4>)
 80039de:	6c99      	ldr	r1, [r3, #72]	; 0x48
 80039e0:	697a      	ldr	r2, [r7, #20]
 80039e2:	4613      	mov	r3, r2
 80039e4:	005b      	lsls	r3, r3, #1
 80039e6:	4413      	add	r3, r2
 80039e8:	2205      	movs	r2, #5
 80039ea:	fa02 f303 	lsl.w	r3, r2, r3
 80039ee:	430b      	orrs	r3, r1
 80039f0:	4a04      	ldr	r2, [pc, #16]	; (8003a04 <temp_manager+0x1f4>)
 80039f2:	6493      	str	r3, [r2, #72]	; 0x48
 80039f4:	697b      	ldr	r3, [r7, #20]
 80039f6:	3301      	adds	r3, #1
 80039f8:	617b      	str	r3, [r7, #20]
 80039fa:	697b      	ldr	r3, [r7, #20]
 80039fc:	2b02      	cmp	r3, #2
 80039fe:	dd9a      	ble.n	8003936 <temp_manager+0x126>
 8003a00:	e791      	b.n	8003926 <temp_manager+0x116>
 8003a02:	bf00      	nop
 8003a04:	200009e0 	.word	0x200009e0
 8003a08:	40010800 	.word	0x40010800
 8003a0c:	20000a2c 	.word	0x20000a2c

08003a10 <NVIC_EnableIRQ>:
 8003a10:	b480      	push	{r7}
 8003a12:	b083      	sub	sp, #12
 8003a14:	af00      	add	r7, sp, #0
 8003a16:	4603      	mov	r3, r0
 8003a18:	71fb      	strb	r3, [r7, #7]
 8003a1a:	79fb      	ldrb	r3, [r7, #7]
 8003a1c:	f003 021f 	and.w	r2, r3, #31
 8003a20:	4906      	ldr	r1, [pc, #24]	; (8003a3c <NVIC_EnableIRQ+0x2c>)
 8003a22:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8003a26:	095b      	lsrs	r3, r3, #5
 8003a28:	2001      	movs	r0, #1
 8003a2a:	fa00 f202 	lsl.w	r2, r0, r2
 8003a2e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8003a32:	bf00      	nop
 8003a34:	370c      	adds	r7, #12
 8003a36:	46bd      	mov	sp, r7
 8003a38:	bc80      	pop	{r7}
 8003a3a:	4770      	bx	lr
 8003a3c:	e000e100 	.word	0xe000e100

08003a40 <NVIC_SetPriority>:
 8003a40:	b480      	push	{r7}
 8003a42:	b083      	sub	sp, #12
 8003a44:	af00      	add	r7, sp, #0
 8003a46:	4603      	mov	r3, r0
 8003a48:	6039      	str	r1, [r7, #0]
 8003a4a:	71fb      	strb	r3, [r7, #7]
 8003a4c:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8003a50:	2b00      	cmp	r3, #0
 8003a52:	da0b      	bge.n	8003a6c <NVIC_SetPriority+0x2c>
 8003a54:	683b      	ldr	r3, [r7, #0]
 8003a56:	b2da      	uxtb	r2, r3
 8003a58:	490c      	ldr	r1, [pc, #48]	; (8003a8c <NVIC_SetPriority+0x4c>)
 8003a5a:	79fb      	ldrb	r3, [r7, #7]
 8003a5c:	f003 030f 	and.w	r3, r3, #15
 8003a60:	3b04      	subs	r3, #4
 8003a62:	0112      	lsls	r2, r2, #4
 8003a64:	b2d2      	uxtb	r2, r2
 8003a66:	440b      	add	r3, r1
 8003a68:	761a      	strb	r2, [r3, #24]
 8003a6a:	e009      	b.n	8003a80 <NVIC_SetPriority+0x40>
 8003a6c:	683b      	ldr	r3, [r7, #0]
 8003a6e:	b2da      	uxtb	r2, r3
 8003a70:	4907      	ldr	r1, [pc, #28]	; (8003a90 <NVIC_SetPriority+0x50>)
 8003a72:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8003a76:	0112      	lsls	r2, r2, #4
 8003a78:	b2d2      	uxtb	r2, r2
 8003a7a:	440b      	add	r3, r1
 8003a7c:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8003a80:	bf00      	nop
 8003a82:	370c      	adds	r7, #12
 8003a84:	46bd      	mov	sp, r7
 8003a86:	bc80      	pop	{r7}
 8003a88:	4770      	bx	lr
 8003a8a:	bf00      	nop
 8003a8c:	e000ed00 	.word	0xe000ed00
 8003a90:	e000e100 	.word	0xe000e100

08003a94 <LL_USART_Enable>:
 8003a94:	b480      	push	{r7}
 8003a96:	b083      	sub	sp, #12
 8003a98:	af00      	add	r7, sp, #0
 8003a9a:	6078      	str	r0, [r7, #4]
 8003a9c:	687b      	ldr	r3, [r7, #4]
 8003a9e:	68db      	ldr	r3, [r3, #12]
 8003aa0:	f443 5200 	orr.w	r2, r3, #8192	; 0x2000
 8003aa4:	687b      	ldr	r3, [r7, #4]
 8003aa6:	60da      	str	r2, [r3, #12]
 8003aa8:	bf00      	nop
 8003aaa:	370c      	adds	r7, #12
 8003aac:	46bd      	mov	sp, r7
 8003aae:	bc80      	pop	{r7}
 8003ab0:	4770      	bx	lr

08003ab2 <LL_USART_EnableDirectionRx>:
 8003ab2:	b480      	push	{r7}
 8003ab4:	b083      	sub	sp, #12
 8003ab6:	af00      	add	r7, sp, #0
 8003ab8:	6078      	str	r0, [r7, #4]
 8003aba:	687b      	ldr	r3, [r7, #4]
 8003abc:	68db      	ldr	r3, [r3, #12]
 8003abe:	f043 0204 	orr.w	r2, r3, #4
 8003ac2:	687b      	ldr	r3, [r7, #4]
 8003ac4:	60da      	str	r2, [r3, #12]
 8003ac6:	bf00      	nop
 8003ac8:	370c      	adds	r7, #12
 8003aca:	46bd      	mov	sp, r7
 8003acc:	bc80      	pop	{r7}
 8003ace:	4770      	bx	lr

08003ad0 <LL_USART_EnableDirectionTx>:
 8003ad0:	b480      	push	{r7}
 8003ad2:	b083      	sub	sp, #12
 8003ad4:	af00      	add	r7, sp, #0
 8003ad6:	6078      	str	r0, [r7, #4]
 8003ad8:	687b      	ldr	r3, [r7, #4]
 8003ada:	68db      	ldr	r3, [r3, #12]
 8003adc:	f043 0208 	orr.w	r2, r3, #8
 8003ae0:	687b      	ldr	r3, [r7, #4]
 8003ae2:	60da      	str	r2, [r3, #12]
 8003ae4:	bf00      	nop
 8003ae6:	370c      	adds	r7, #12
 8003ae8:	46bd      	mov	sp, r7
 8003aea:	bc80      	pop	{r7}
 8003aec:	4770      	bx	lr

08003aee <LL_USART_SetTransferDirection>:
 8003aee:	b480      	push	{r7}
 8003af0:	b083      	sub	sp, #12
 8003af2:	af00      	add	r7, sp, #0
 8003af4:	6078      	str	r0, [r7, #4]
 8003af6:	6039      	str	r1, [r7, #0]
 8003af8:	687b      	ldr	r3, [r7, #4]
 8003afa:	68db      	ldr	r3, [r3, #12]
 8003afc:	f023 020c 	bic.w	r2, r3, #12
 8003b00:	683b      	ldr	r3, [r7, #0]
 8003b02:	431a      	orrs	r2, r3
 8003b04:	687b      	ldr	r3, [r7, #4]
 8003b06:	60da      	str	r2, [r3, #12]
 8003b08:	bf00      	nop
 8003b0a:	370c      	adds	r7, #12
 8003b0c:	46bd      	mov	sp, r7
 8003b0e:	bc80      	pop	{r7}
 8003b10:	4770      	bx	lr

08003b12 <LL_USART_SetParity>:
 8003b12:	b480      	push	{r7}
 8003b14:	b083      	sub	sp, #12
 8003b16:	af00      	add	r7, sp, #0
 8003b18:	6078      	str	r0, [r7, #4]
 8003b1a:	6039      	str	r1, [r7, #0]
 8003b1c:	687b      	ldr	r3, [r7, #4]
 8003b1e:	68db      	ldr	r3, [r3, #12]
 8003b20:	f423 62c0 	bic.w	r2, r3, #1536	; 0x600
 8003b24:	683b      	ldr	r3, [r7, #0]
 8003b26:	431a      	orrs	r2, r3
 8003b28:	687b      	ldr	r3, [r7, #4]
 8003b2a:	60da      	str	r2, [r3, #12]
 8003b2c:	bf00      	nop
 8003b2e:	370c      	adds	r7, #12
 8003b30:	46bd      	mov	sp, r7
 8003b32:	bc80      	pop	{r7}
 8003b34:	4770      	bx	lr

08003b36 <LL_USART_SetDataWidth>:
 8003b36:	b480      	push	{r7}
 8003b38:	b083      	sub	sp, #12
 8003b3a:	af00      	add	r7, sp, #0
 8003b3c:	6078      	str	r0, [r7, #4]
 8003b3e:	6039      	str	r1, [r7, #0]
 8003b40:	687b      	ldr	r3, [r7, #4]
 8003b42:	68db      	ldr	r3, [r3, #12]
 8003b44:	f423 5280 	bic.w	r2, r3, #4096	; 0x1000
 8003b48:	683b      	ldr	r3, [r7, #0]
 8003b4a:	431a      	orrs	r2, r3
 8003b4c:	687b      	ldr	r3, [r7, #4]
 8003b4e:	60da      	str	r2, [r3, #12]
 8003b50:	bf00      	nop
 8003b52:	370c      	adds	r7, #12
 8003b54:	46bd      	mov	sp, r7
 8003b56:	bc80      	pop	{r7}
 8003b58:	4770      	bx	lr

08003b5a <LL_USART_SetStopBitsLength>:
 8003b5a:	b480      	push	{r7}
 8003b5c:	b083      	sub	sp, #12
 8003b5e:	af00      	add	r7, sp, #0
 8003b60:	6078      	str	r0, [r7, #4]
 8003b62:	6039      	str	r1, [r7, #0]
 8003b64:	687b      	ldr	r3, [r7, #4]
 8003b66:	691b      	ldr	r3, [r3, #16]
 8003b68:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8003b6c:	683b      	ldr	r3, [r7, #0]
 8003b6e:	431a      	orrs	r2, r3
 8003b70:	687b      	ldr	r3, [r7, #4]
 8003b72:	611a      	str	r2, [r3, #16]
 8003b74:	bf00      	nop
 8003b76:	370c      	adds	r7, #12
 8003b78:	46bd      	mov	sp, r7
 8003b7a:	bc80      	pop	{r7}
 8003b7c:	4770      	bx	lr

08003b7e <LL_USART_SetHWFlowCtrl>:
 8003b7e:	b480      	push	{r7}
 8003b80:	b083      	sub	sp, #12
 8003b82:	af00      	add	r7, sp, #0
 8003b84:	6078      	str	r0, [r7, #4]
 8003b86:	6039      	str	r1, [r7, #0]
 8003b88:	687b      	ldr	r3, [r7, #4]
 8003b8a:	695b      	ldr	r3, [r3, #20]
 8003b8c:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8003b90:	683b      	ldr	r3, [r7, #0]
 8003b92:	431a      	orrs	r2, r3
 8003b94:	687b      	ldr	r3, [r7, #4]
 8003b96:	615a      	str	r2, [r3, #20]
 8003b98:	bf00      	nop
 8003b9a:	370c      	adds	r7, #12
 8003b9c:	46bd      	mov	sp, r7
 8003b9e:	bc80      	pop	{r7}
 8003ba0:	4770      	bx	lr
	...

08003ba4 <LL_USART_SetBaudRate>:
 8003ba4:	b480      	push	{r7}
 8003ba6:	b085      	sub	sp, #20
 8003ba8:	af00      	add	r7, sp, #0
 8003baa:	60f8      	str	r0, [r7, #12]
 8003bac:	60b9      	str	r1, [r7, #8]
 8003bae:	607a      	str	r2, [r7, #4]
 8003bb0:	68ba      	ldr	r2, [r7, #8]
 8003bb2:	4613      	mov	r3, r2
 8003bb4:	009b      	lsls	r3, r3, #2
 8003bb6:	4413      	add	r3, r2
 8003bb8:	009a      	lsls	r2, r3, #2
 8003bba:	441a      	add	r2, r3
 8003bbc:	687b      	ldr	r3, [r7, #4]
 8003bbe:	009b      	lsls	r3, r3, #2
 8003bc0:	fbb2 f3f3 	udiv	r3, r2, r3
 8003bc4:	4a25      	ldr	r2, [pc, #148]	; (8003c5c <LL_USART_SetBaudRate+0xb8>)
 8003bc6:	fba2 2303 	umull	r2, r3, r2, r3
 8003bca:	095b      	lsrs	r3, r3, #5
 8003bcc:	b29b      	uxth	r3, r3
 8003bce:	011b      	lsls	r3, r3, #4
 8003bd0:	b299      	uxth	r1, r3
 8003bd2:	68ba      	ldr	r2, [r7, #8]
 8003bd4:	4613      	mov	r3, r2
 8003bd6:	009b      	lsls	r3, r3, #2
 8003bd8:	4413      	add	r3, r2
 8003bda:	009a      	lsls	r2, r3, #2
 8003bdc:	441a      	add	r2, r3
 8003bde:	687b      	ldr	r3, [r7, #4]
 8003be0:	009b      	lsls	r3, r3, #2
 8003be2:	fbb2 f2f3 	udiv	r2, r2, r3
 8003be6:	4b1d      	ldr	r3, [pc, #116]	; (8003c5c <LL_USART_SetBaudRate+0xb8>)
 8003be8:	fba3 0302 	umull	r0, r3, r3, r2
 8003bec:	095b      	lsrs	r3, r3, #5
 8003bee:	2064      	movs	r0, #100	; 0x64
 8003bf0:	fb00 f303 	mul.w	r3, r0, r3
 8003bf4:	1ad3      	subs	r3, r2, r3
 8003bf6:	011b      	lsls	r3, r3, #4
 8003bf8:	3332      	adds	r3, #50	; 0x32
 8003bfa:	4a18      	ldr	r2, [pc, #96]	; (8003c5c <LL_USART_SetBaudRate+0xb8>)
 8003bfc:	fba2 2303 	umull	r2, r3, r2, r3
 8003c00:	095b      	lsrs	r3, r3, #5
 8003c02:	b29b      	uxth	r3, r3
 8003c04:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8003c08:	b29b      	uxth	r3, r3
 8003c0a:	440b      	add	r3, r1
 8003c0c:	b299      	uxth	r1, r3
 8003c0e:	68ba      	ldr	r2, [r7, #8]
 8003c10:	4613      	mov	r3, r2
 8003c12:	009b      	lsls	r3, r3, #2
 8003c14:	4413      	add	r3, r2
 8003c16:	009a      	lsls	r2, r3, #2
 8003c18:	441a      	add	r2, r3
 8003c1a:	687b      	ldr	r3, [r7, #4]
 8003c1c:	009b      	lsls	r3, r3, #2
 8003c1e:	fbb2 f2f3 	udiv	r2, r2, r3
 8003c22:	4b0e      	ldr	r3, [pc, #56]	; (8003c5c <LL_USART_SetBaudRate+0xb8>)
 8003c24:	fba3 0302 	umull	r0, r3, r3, r2
 8003c28:	095b      	lsrs	r3, r3, #5
 8003c2a:	2064      	movs	r0, #100	; 0x64
 8003c2c:	fb00 f303 	mul.w	r3, r0, r3
 8003c30:	1ad3      	subs	r3, r2, r3
 8003c32:	011b      	lsls	r3, r3, #4
 8003c34:	3332      	adds	r3, #50	; 0x32
 8003c36:	4a09      	ldr	r2, [pc, #36]	; (8003c5c <LL_USART_SetBaudRate+0xb8>)
 8003c38:	fba2 2303 	umull	r2, r3, r2, r3
 8003c3c:	095b      	lsrs	r3, r3, #5
 8003c3e:	b29b      	uxth	r3, r3
 8003c40:	f003 030f 	and.w	r3, r3, #15
 8003c44:	b29b      	uxth	r3, r3
 8003c46:	440b      	add	r3, r1
 8003c48:	b29b      	uxth	r3, r3
 8003c4a:	461a      	mov	r2, r3
 8003c4c:	68fb      	ldr	r3, [r7, #12]
 8003c4e:	609a      	str	r2, [r3, #8]
 8003c50:	bf00      	nop
 8003c52:	3714      	adds	r7, #20
 8003c54:	46bd      	mov	sp, r7
 8003c56:	bc80      	pop	{r7}
 8003c58:	4770      	bx	lr
 8003c5a:	bf00      	nop
 8003c5c:	51eb851f 	.word	0x51eb851f

08003c60 <LL_USART_IsActiveFlag_TC>:
 8003c60:	b480      	push	{r7}
 8003c62:	b083      	sub	sp, #12
 8003c64:	af00      	add	r7, sp, #0
 8003c66:	6078      	str	r0, [r7, #4]
 8003c68:	687b      	ldr	r3, [r7, #4]
 8003c6a:	681b      	ldr	r3, [r3, #0]
 8003c6c:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8003c70:	2b40      	cmp	r3, #64	; 0x40
 8003c72:	bf0c      	ite	eq
 8003c74:	2301      	moveq	r3, #1
 8003c76:	2300      	movne	r3, #0
 8003c78:	b2db      	uxtb	r3, r3
 8003c7a:	4618      	mov	r0, r3
 8003c7c:	370c      	adds	r7, #12
 8003c7e:	46bd      	mov	sp, r7
 8003c80:	bc80      	pop	{r7}
 8003c82:	4770      	bx	lr

08003c84 <LL_USART_IsActiveFlag_TXE>:
 8003c84:	b480      	push	{r7}
 8003c86:	b083      	sub	sp, #12
 8003c88:	af00      	add	r7, sp, #0
 8003c8a:	6078      	str	r0, [r7, #4]
 8003c8c:	687b      	ldr	r3, [r7, #4]
 8003c8e:	681b      	ldr	r3, [r3, #0]
 8003c90:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8003c94:	2b80      	cmp	r3, #128	; 0x80
 8003c96:	bf0c      	ite	eq
 8003c98:	2301      	moveq	r3, #1
 8003c9a:	2300      	movne	r3, #0
 8003c9c:	b2db      	uxtb	r3, r3
 8003c9e:	4618      	mov	r0, r3
 8003ca0:	370c      	adds	r7, #12
 8003ca2:	46bd      	mov	sp, r7
 8003ca4:	bc80      	pop	{r7}
 8003ca6:	4770      	bx	lr

08003ca8 <LL_USART_ClearFlag_TC>:
 8003ca8:	b480      	push	{r7}
 8003caa:	b083      	sub	sp, #12
 8003cac:	af00      	add	r7, sp, #0
 8003cae:	6078      	str	r0, [r7, #4]
 8003cb0:	687b      	ldr	r3, [r7, #4]
 8003cb2:	f06f 0240 	mvn.w	r2, #64	; 0x40
 8003cb6:	601a      	str	r2, [r3, #0]
 8003cb8:	bf00      	nop
 8003cba:	370c      	adds	r7, #12
 8003cbc:	46bd      	mov	sp, r7
 8003cbe:	bc80      	pop	{r7}
 8003cc0:	4770      	bx	lr

08003cc2 <LL_USART_EnableDMAReq_RX>:
 8003cc2:	b480      	push	{r7}
 8003cc4:	b083      	sub	sp, #12
 8003cc6:	af00      	add	r7, sp, #0
 8003cc8:	6078      	str	r0, [r7, #4]
 8003cca:	687b      	ldr	r3, [r7, #4]
 8003ccc:	695b      	ldr	r3, [r3, #20]
 8003cce:	f043 0240 	orr.w	r2, r3, #64	; 0x40
 8003cd2:	687b      	ldr	r3, [r7, #4]
 8003cd4:	615a      	str	r2, [r3, #20]
 8003cd6:	bf00      	nop
 8003cd8:	370c      	adds	r7, #12
 8003cda:	46bd      	mov	sp, r7
 8003cdc:	bc80      	pop	{r7}
 8003cde:	4770      	bx	lr

08003ce0 <LL_USART_TransmitData8>:
 8003ce0:	b480      	push	{r7}
 8003ce2:	b083      	sub	sp, #12
 8003ce4:	af00      	add	r7, sp, #0
 8003ce6:	6078      	str	r0, [r7, #4]
 8003ce8:	460b      	mov	r3, r1
 8003cea:	70fb      	strb	r3, [r7, #3]
 8003cec:	78fa      	ldrb	r2, [r7, #3]
 8003cee:	687b      	ldr	r3, [r7, #4]
 8003cf0:	605a      	str	r2, [r3, #4]
 8003cf2:	bf00      	nop
 8003cf4:	370c      	adds	r7, #12
 8003cf6:	46bd      	mov	sp, r7
 8003cf8:	bc80      	pop	{r7}
 8003cfa:	4770      	bx	lr

08003cfc <LL_DMA_EnableChannel>:
 8003cfc:	b480      	push	{r7}
 8003cfe:	b083      	sub	sp, #12
 8003d00:	af00      	add	r7, sp, #0
 8003d02:	6078      	str	r0, [r7, #4]
 8003d04:	6039      	str	r1, [r7, #0]
 8003d06:	683b      	ldr	r3, [r7, #0]
 8003d08:	3b01      	subs	r3, #1
 8003d0a:	4a0a      	ldr	r2, [pc, #40]	; (8003d34 <LL_DMA_EnableChannel+0x38>)
 8003d0c:	5cd3      	ldrb	r3, [r2, r3]
 8003d0e:	461a      	mov	r2, r3
 8003d10:	687b      	ldr	r3, [r7, #4]
 8003d12:	4413      	add	r3, r2
 8003d14:	681b      	ldr	r3, [r3, #0]
 8003d16:	683a      	ldr	r2, [r7, #0]
 8003d18:	3a01      	subs	r2, #1
 8003d1a:	4906      	ldr	r1, [pc, #24]	; (8003d34 <LL_DMA_EnableChannel+0x38>)
 8003d1c:	5c8a      	ldrb	r2, [r1, r2]
 8003d1e:	4611      	mov	r1, r2
 8003d20:	687a      	ldr	r2, [r7, #4]
 8003d22:	440a      	add	r2, r1
 8003d24:	f043 0301 	orr.w	r3, r3, #1
 8003d28:	6013      	str	r3, [r2, #0]
 8003d2a:	bf00      	nop
 8003d2c:	370c      	adds	r7, #12
 8003d2e:	46bd      	mov	sp, r7
 8003d30:	bc80      	pop	{r7}
 8003d32:	4770      	bx	lr
 8003d34:	080079d8 	.word	0x080079d8

08003d38 <LL_DMA_SetDataTransferDirection>:
 8003d38:	b480      	push	{r7}
 8003d3a:	b085      	sub	sp, #20
 8003d3c:	af00      	add	r7, sp, #0
 8003d3e:	60f8      	str	r0, [r7, #12]
 8003d40:	60b9      	str	r1, [r7, #8]
 8003d42:	607a      	str	r2, [r7, #4]
 8003d44:	68bb      	ldr	r3, [r7, #8]
 8003d46:	3b01      	subs	r3, #1
 8003d48:	4a0c      	ldr	r2, [pc, #48]	; (8003d7c <LL_DMA_SetDataTransferDirection+0x44>)
 8003d4a:	5cd3      	ldrb	r3, [r2, r3]
 8003d4c:	461a      	mov	r2, r3
 8003d4e:	68fb      	ldr	r3, [r7, #12]
 8003d50:	4413      	add	r3, r2
 8003d52:	681b      	ldr	r3, [r3, #0]
 8003d54:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8003d58:	f023 0310 	bic.w	r3, r3, #16
 8003d5c:	68ba      	ldr	r2, [r7, #8]
 8003d5e:	3a01      	subs	r2, #1
 8003d60:	4906      	ldr	r1, [pc, #24]	; (8003d7c <LL_DMA_SetDataTransferDirection+0x44>)
 8003d62:	5c8a      	ldrb	r2, [r1, r2]
 8003d64:	4611      	mov	r1, r2
 8003d66:	68fa      	ldr	r2, [r7, #12]
 8003d68:	440a      	add	r2, r1
 8003d6a:	4611      	mov	r1, r2
 8003d6c:	687a      	ldr	r2, [r7, #4]
 8003d6e:	4313      	orrs	r3, r2
 8003d70:	600b      	str	r3, [r1, #0]
 8003d72:	bf00      	nop
 8003d74:	3714      	adds	r7, #20
 8003d76:	46bd      	mov	sp, r7
 8003d78:	bc80      	pop	{r7}
 8003d7a:	4770      	bx	lr
 8003d7c:	080079d8 	.word	0x080079d8

08003d80 <LL_DMA_SetMode>:
 8003d80:	b480      	push	{r7}
 8003d82:	b085      	sub	sp, #20
 8003d84:	af00      	add	r7, sp, #0
 8003d86:	60f8      	str	r0, [r7, #12]
 8003d88:	60b9      	str	r1, [r7, #8]
 8003d8a:	607a      	str	r2, [r7, #4]
 8003d8c:	68bb      	ldr	r3, [r7, #8]
 8003d8e:	3b01      	subs	r3, #1
 8003d90:	4a0b      	ldr	r2, [pc, #44]	; (8003dc0 <LL_DMA_SetMode+0x40>)
 8003d92:	5cd3      	ldrb	r3, [r2, r3]
 8003d94:	461a      	mov	r2, r3
 8003d96:	68fb      	ldr	r3, [r7, #12]
 8003d98:	4413      	add	r3, r2
 8003d9a:	681b      	ldr	r3, [r3, #0]
 8003d9c:	f023 0220 	bic.w	r2, r3, #32
 8003da0:	68bb      	ldr	r3, [r7, #8]
 8003da2:	3b01      	subs	r3, #1
 8003da4:	4906      	ldr	r1, [pc, #24]	; (8003dc0 <LL_DMA_SetMode+0x40>)
 8003da6:	5ccb      	ldrb	r3, [r1, r3]
 8003da8:	4619      	mov	r1, r3
 8003daa:	68fb      	ldr	r3, [r7, #12]
 8003dac:	440b      	add	r3, r1
 8003dae:	4619      	mov	r1, r3
 8003db0:	687b      	ldr	r3, [r7, #4]
 8003db2:	4313      	orrs	r3, r2
 8003db4:	600b      	str	r3, [r1, #0]
 8003db6:	bf00      	nop
 8003db8:	3714      	adds	r7, #20
 8003dba:	46bd      	mov	sp, r7
 8003dbc:	bc80      	pop	{r7}
 8003dbe:	4770      	bx	lr
 8003dc0:	080079d8 	.word	0x080079d8

08003dc4 <LL_DMA_SetPeriphIncMode>:
 8003dc4:	b480      	push	{r7}
 8003dc6:	b085      	sub	sp, #20
 8003dc8:	af00      	add	r7, sp, #0
 8003dca:	60f8      	str	r0, [r7, #12]
 8003dcc:	60b9      	str	r1, [r7, #8]
 8003dce:	607a      	str	r2, [r7, #4]
 8003dd0:	68bb      	ldr	r3, [r7, #8]
 8003dd2:	3b01      	subs	r3, #1
 8003dd4:	4a0b      	ldr	r2, [pc, #44]	; (8003e04 <LL_DMA_SetPeriphIncMode+0x40>)
 8003dd6:	5cd3      	ldrb	r3, [r2, r3]
 8003dd8:	461a      	mov	r2, r3
 8003dda:	68fb      	ldr	r3, [r7, #12]
 8003ddc:	4413      	add	r3, r2
 8003dde:	681b      	ldr	r3, [r3, #0]
 8003de0:	f023 0240 	bic.w	r2, r3, #64	; 0x40
 8003de4:	68bb      	ldr	r3, [r7, #8]
 8003de6:	3b01      	subs	r3, #1
 8003de8:	4906      	ldr	r1, [pc, #24]	; (8003e04 <LL_DMA_SetPeriphIncMode+0x40>)
 8003dea:	5ccb      	ldrb	r3, [r1, r3]
 8003dec:	4619      	mov	r1, r3
 8003dee:	68fb      	ldr	r3, [r7, #12]
 8003df0:	440b      	add	r3, r1
 8003df2:	4619      	mov	r1, r3
 8003df4:	687b      	ldr	r3, [r7, #4]
 8003df6:	4313      	orrs	r3, r2
 8003df8:	600b      	str	r3, [r1, #0]
 8003dfa:	bf00      	nop
 8003dfc:	3714      	adds	r7, #20
 8003dfe:	46bd      	mov	sp, r7
 8003e00:	bc80      	pop	{r7}
 8003e02:	4770      	bx	lr
 8003e04:	080079d8 	.word	0x080079d8

08003e08 <LL_DMA_SetMemoryIncMode>:
 8003e08:	b480      	push	{r7}
 8003e0a:	b085      	sub	sp, #20
 8003e0c:	af00      	add	r7, sp, #0
 8003e0e:	60f8      	str	r0, [r7, #12]
 8003e10:	60b9      	str	r1, [r7, #8]
 8003e12:	607a      	str	r2, [r7, #4]
 8003e14:	68bb      	ldr	r3, [r7, #8]
 8003e16:	3b01      	subs	r3, #1
 8003e18:	4a0b      	ldr	r2, [pc, #44]	; (8003e48 <LL_DMA_SetMemoryIncMode+0x40>)
 8003e1a:	5cd3      	ldrb	r3, [r2, r3]
 8003e1c:	461a      	mov	r2, r3
 8003e1e:	68fb      	ldr	r3, [r7, #12]
 8003e20:	4413      	add	r3, r2
 8003e22:	681b      	ldr	r3, [r3, #0]
 8003e24:	f023 0280 	bic.w	r2, r3, #128	; 0x80
 8003e28:	68bb      	ldr	r3, [r7, #8]
 8003e2a:	3b01      	subs	r3, #1
 8003e2c:	4906      	ldr	r1, [pc, #24]	; (8003e48 <LL_DMA_SetMemoryIncMode+0x40>)
 8003e2e:	5ccb      	ldrb	r3, [r1, r3]
 8003e30:	4619      	mov	r1, r3
 8003e32:	68fb      	ldr	r3, [r7, #12]
 8003e34:	440b      	add	r3, r1
 8003e36:	4619      	mov	r1, r3
 8003e38:	687b      	ldr	r3, [r7, #4]
 8003e3a:	4313      	orrs	r3, r2
 8003e3c:	600b      	str	r3, [r1, #0]
 8003e3e:	bf00      	nop
 8003e40:	3714      	adds	r7, #20
 8003e42:	46bd      	mov	sp, r7
 8003e44:	bc80      	pop	{r7}
 8003e46:	4770      	bx	lr
 8003e48:	080079d8 	.word	0x080079d8

08003e4c <LL_DMA_SetPeriphSize>:
 8003e4c:	b480      	push	{r7}
 8003e4e:	b085      	sub	sp, #20
 8003e50:	af00      	add	r7, sp, #0
 8003e52:	60f8      	str	r0, [r7, #12]
 8003e54:	60b9      	str	r1, [r7, #8]
 8003e56:	607a      	str	r2, [r7, #4]
 8003e58:	68bb      	ldr	r3, [r7, #8]
 8003e5a:	3b01      	subs	r3, #1
 8003e5c:	4a0b      	ldr	r2, [pc, #44]	; (8003e8c <LL_DMA_SetPeriphSize+0x40>)
 8003e5e:	5cd3      	ldrb	r3, [r2, r3]
 8003e60:	461a      	mov	r2, r3
 8003e62:	68fb      	ldr	r3, [r7, #12]
 8003e64:	4413      	add	r3, r2
 8003e66:	681b      	ldr	r3, [r3, #0]
 8003e68:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8003e6c:	68bb      	ldr	r3, [r7, #8]
 8003e6e:	3b01      	subs	r3, #1
 8003e70:	4906      	ldr	r1, [pc, #24]	; (8003e8c <LL_DMA_SetPeriphSize+0x40>)
 8003e72:	5ccb      	ldrb	r3, [r1, r3]
 8003e74:	4619      	mov	r1, r3
 8003e76:	68fb      	ldr	r3, [r7, #12]
 8003e78:	440b      	add	r3, r1
 8003e7a:	4619      	mov	r1, r3
 8003e7c:	687b      	ldr	r3, [r7, #4]
 8003e7e:	4313      	orrs	r3, r2
 8003e80:	600b      	str	r3, [r1, #0]
 8003e82:	bf00      	nop
 8003e84:	3714      	adds	r7, #20
 8003e86:	46bd      	mov	sp, r7
 8003e88:	bc80      	pop	{r7}
 8003e8a:	4770      	bx	lr
 8003e8c:	080079d8 	.word	0x080079d8

08003e90 <LL_DMA_SetMemorySize>:
 8003e90:	b480      	push	{r7}
 8003e92:	b085      	sub	sp, #20
 8003e94:	af00      	add	r7, sp, #0
 8003e96:	60f8      	str	r0, [r7, #12]
 8003e98:	60b9      	str	r1, [r7, #8]
 8003e9a:	607a      	str	r2, [r7, #4]
 8003e9c:	68bb      	ldr	r3, [r7, #8]
 8003e9e:	3b01      	subs	r3, #1
 8003ea0:	4a0b      	ldr	r2, [pc, #44]	; (8003ed0 <LL_DMA_SetMemorySize+0x40>)
 8003ea2:	5cd3      	ldrb	r3, [r2, r3]
 8003ea4:	461a      	mov	r2, r3
 8003ea6:	68fb      	ldr	r3, [r7, #12]
 8003ea8:	4413      	add	r3, r2
 8003eaa:	681b      	ldr	r3, [r3, #0]
 8003eac:	f423 6240 	bic.w	r2, r3, #3072	; 0xc00
 8003eb0:	68bb      	ldr	r3, [r7, #8]
 8003eb2:	3b01      	subs	r3, #1
 8003eb4:	4906      	ldr	r1, [pc, #24]	; (8003ed0 <LL_DMA_SetMemorySize+0x40>)
 8003eb6:	5ccb      	ldrb	r3, [r1, r3]
 8003eb8:	4619      	mov	r1, r3
 8003eba:	68fb      	ldr	r3, [r7, #12]
 8003ebc:	440b      	add	r3, r1
 8003ebe:	4619      	mov	r1, r3
 8003ec0:	687b      	ldr	r3, [r7, #4]
 8003ec2:	4313      	orrs	r3, r2
 8003ec4:	600b      	str	r3, [r1, #0]
 8003ec6:	bf00      	nop
 8003ec8:	3714      	adds	r7, #20
 8003eca:	46bd      	mov	sp, r7
 8003ecc:	bc80      	pop	{r7}
 8003ece:	4770      	bx	lr
 8003ed0:	080079d8 	.word	0x080079d8

08003ed4 <LL_DMA_SetChannelPriorityLevel>:
 8003ed4:	b480      	push	{r7}
 8003ed6:	b085      	sub	sp, #20
 8003ed8:	af00      	add	r7, sp, #0
 8003eda:	60f8      	str	r0, [r7, #12]
 8003edc:	60b9      	str	r1, [r7, #8]
 8003ede:	607a      	str	r2, [r7, #4]
 8003ee0:	68bb      	ldr	r3, [r7, #8]
 8003ee2:	3b01      	subs	r3, #1
 8003ee4:	4a0b      	ldr	r2, [pc, #44]	; (8003f14 <LL_DMA_SetChannelPriorityLevel+0x40>)
 8003ee6:	5cd3      	ldrb	r3, [r2, r3]
 8003ee8:	461a      	mov	r2, r3
 8003eea:	68fb      	ldr	r3, [r7, #12]
 8003eec:	4413      	add	r3, r2
 8003eee:	681b      	ldr	r3, [r3, #0]
 8003ef0:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8003ef4:	68bb      	ldr	r3, [r7, #8]
 8003ef6:	3b01      	subs	r3, #1
 8003ef8:	4906      	ldr	r1, [pc, #24]	; (8003f14 <LL_DMA_SetChannelPriorityLevel+0x40>)
 8003efa:	5ccb      	ldrb	r3, [r1, r3]
 8003efc:	4619      	mov	r1, r3
 8003efe:	68fb      	ldr	r3, [r7, #12]
 8003f00:	440b      	add	r3, r1
 8003f02:	4619      	mov	r1, r3
 8003f04:	687b      	ldr	r3, [r7, #4]
 8003f06:	4313      	orrs	r3, r2
 8003f08:	600b      	str	r3, [r1, #0]
 8003f0a:	bf00      	nop
 8003f0c:	3714      	adds	r7, #20
 8003f0e:	46bd      	mov	sp, r7
 8003f10:	bc80      	pop	{r7}
 8003f12:	4770      	bx	lr
 8003f14:	080079d8 	.word	0x080079d8

08003f18 <LL_DMA_SetDataLength>:
 8003f18:	b480      	push	{r7}
 8003f1a:	b085      	sub	sp, #20
 8003f1c:	af00      	add	r7, sp, #0
 8003f1e:	60f8      	str	r0, [r7, #12]
 8003f20:	60b9      	str	r1, [r7, #8]
 8003f22:	607a      	str	r2, [r7, #4]
 8003f24:	68bb      	ldr	r3, [r7, #8]
 8003f26:	3b01      	subs	r3, #1
 8003f28:	4a0b      	ldr	r2, [pc, #44]	; (8003f58 <LL_DMA_SetDataLength+0x40>)
 8003f2a:	5cd3      	ldrb	r3, [r2, r3]
 8003f2c:	461a      	mov	r2, r3
 8003f2e:	68fb      	ldr	r3, [r7, #12]
 8003f30:	4413      	add	r3, r2
 8003f32:	685b      	ldr	r3, [r3, #4]
 8003f34:	0c1b      	lsrs	r3, r3, #16
 8003f36:	041b      	lsls	r3, r3, #16
 8003f38:	68ba      	ldr	r2, [r7, #8]
 8003f3a:	3a01      	subs	r2, #1
 8003f3c:	4906      	ldr	r1, [pc, #24]	; (8003f58 <LL_DMA_SetDataLength+0x40>)
 8003f3e:	5c8a      	ldrb	r2, [r1, r2]
 8003f40:	4611      	mov	r1, r2
 8003f42:	68fa      	ldr	r2, [r7, #12]
 8003f44:	440a      	add	r2, r1
 8003f46:	4611      	mov	r1, r2
 8003f48:	687a      	ldr	r2, [r7, #4]
 8003f4a:	4313      	orrs	r3, r2
 8003f4c:	604b      	str	r3, [r1, #4]
 8003f4e:	bf00      	nop
 8003f50:	3714      	adds	r7, #20
 8003f52:	46bd      	mov	sp, r7
 8003f54:	bc80      	pop	{r7}
 8003f56:	4770      	bx	lr
 8003f58:	080079d8 	.word	0x080079d8

08003f5c <LL_DMA_ConfigAddresses>:
 8003f5c:	b480      	push	{r7}
 8003f5e:	b085      	sub	sp, #20
 8003f60:	af00      	add	r7, sp, #0
 8003f62:	60f8      	str	r0, [r7, #12]
 8003f64:	60b9      	str	r1, [r7, #8]
 8003f66:	607a      	str	r2, [r7, #4]
 8003f68:	603b      	str	r3, [r7, #0]
 8003f6a:	69bb      	ldr	r3, [r7, #24]
 8003f6c:	2b10      	cmp	r3, #16
 8003f6e:	d114      	bne.n	8003f9a <LL_DMA_ConfigAddresses+0x3e>
 8003f70:	68bb      	ldr	r3, [r7, #8]
 8003f72:	3b01      	subs	r3, #1
 8003f74:	4a15      	ldr	r2, [pc, #84]	; (8003fcc <LL_DMA_ConfigAddresses+0x70>)
 8003f76:	5cd3      	ldrb	r3, [r2, r3]
 8003f78:	461a      	mov	r2, r3
 8003f7a:	68fb      	ldr	r3, [r7, #12]
 8003f7c:	4413      	add	r3, r2
 8003f7e:	461a      	mov	r2, r3
 8003f80:	687b      	ldr	r3, [r7, #4]
 8003f82:	60d3      	str	r3, [r2, #12]
 8003f84:	68bb      	ldr	r3, [r7, #8]
 8003f86:	3b01      	subs	r3, #1
 8003f88:	4a10      	ldr	r2, [pc, #64]	; (8003fcc <LL_DMA_ConfigAddresses+0x70>)
 8003f8a:	5cd3      	ldrb	r3, [r2, r3]
 8003f8c:	461a      	mov	r2, r3
 8003f8e:	68fb      	ldr	r3, [r7, #12]
 8003f90:	4413      	add	r3, r2
 8003f92:	461a      	mov	r2, r3
 8003f94:	683b      	ldr	r3, [r7, #0]
 8003f96:	6093      	str	r3, [r2, #8]
 8003f98:	e013      	b.n	8003fc2 <LL_DMA_ConfigAddresses+0x66>
 8003f9a:	68bb      	ldr	r3, [r7, #8]
 8003f9c:	3b01      	subs	r3, #1
 8003f9e:	4a0b      	ldr	r2, [pc, #44]	; (8003fcc <LL_DMA_ConfigAddresses+0x70>)
 8003fa0:	5cd3      	ldrb	r3, [r2, r3]
 8003fa2:	461a      	mov	r2, r3
 8003fa4:	68fb      	ldr	r3, [r7, #12]
 8003fa6:	4413      	add	r3, r2
 8003fa8:	461a      	mov	r2, r3
 8003faa:	687b      	ldr	r3, [r7, #4]
 8003fac:	6093      	str	r3, [r2, #8]
 8003fae:	68bb      	ldr	r3, [r7, #8]
 8003fb0:	3b01      	subs	r3, #1
 8003fb2:	4a06      	ldr	r2, [pc, #24]	; (8003fcc <LL_DMA_ConfigAddresses+0x70>)
 8003fb4:	5cd3      	ldrb	r3, [r2, r3]
 8003fb6:	461a      	mov	r2, r3
 8003fb8:	68fb      	ldr	r3, [r7, #12]
 8003fba:	4413      	add	r3, r2
 8003fbc:	461a      	mov	r2, r3
 8003fbe:	683b      	ldr	r3, [r7, #0]
 8003fc0:	60d3      	str	r3, [r2, #12]
 8003fc2:	bf00      	nop
 8003fc4:	3714      	adds	r7, #20
 8003fc6:	46bd      	mov	sp, r7
 8003fc8:	bc80      	pop	{r7}
 8003fca:	4770      	bx	lr
 8003fcc:	080079d8 	.word	0x080079d8

08003fd0 <LL_DMA_IsActiveFlag_TC5>:
 8003fd0:	b480      	push	{r7}
 8003fd2:	b083      	sub	sp, #12
 8003fd4:	af00      	add	r7, sp, #0
 8003fd6:	6078      	str	r0, [r7, #4]
 8003fd8:	687b      	ldr	r3, [r7, #4]
 8003fda:	681b      	ldr	r3, [r3, #0]
 8003fdc:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8003fe0:	f5b3 3f00 	cmp.w	r3, #131072	; 0x20000
 8003fe4:	bf0c      	ite	eq
 8003fe6:	2301      	moveq	r3, #1
 8003fe8:	2300      	movne	r3, #0
 8003fea:	b2db      	uxtb	r3, r3
 8003fec:	4618      	mov	r0, r3
 8003fee:	370c      	adds	r7, #12
 8003ff0:	46bd      	mov	sp, r7
 8003ff2:	bc80      	pop	{r7}
 8003ff4:	4770      	bx	lr

08003ff6 <LL_DMA_ClearFlag_TC5>:
 8003ff6:	b480      	push	{r7}
 8003ff8:	b083      	sub	sp, #12
 8003ffa:	af00      	add	r7, sp, #0
 8003ffc:	6078      	str	r0, [r7, #4]
 8003ffe:	687b      	ldr	r3, [r7, #4]
 8004000:	f44f 3200 	mov.w	r2, #131072	; 0x20000
 8004004:	605a      	str	r2, [r3, #4]
 8004006:	bf00      	nop
 8004008:	370c      	adds	r7, #12
 800400a:	46bd      	mov	sp, r7
 800400c:	bc80      	pop	{r7}
 800400e:	4770      	bx	lr

08004010 <LL_DMA_EnableIT_TC>:
 8004010:	b480      	push	{r7}
 8004012:	b083      	sub	sp, #12
 8004014:	af00      	add	r7, sp, #0
 8004016:	6078      	str	r0, [r7, #4]
 8004018:	6039      	str	r1, [r7, #0]
 800401a:	683b      	ldr	r3, [r7, #0]
 800401c:	3b01      	subs	r3, #1
 800401e:	4a0a      	ldr	r2, [pc, #40]	; (8004048 <LL_DMA_EnableIT_TC+0x38>)
 8004020:	5cd3      	ldrb	r3, [r2, r3]
 8004022:	461a      	mov	r2, r3
 8004024:	687b      	ldr	r3, [r7, #4]
 8004026:	4413      	add	r3, r2
 8004028:	681b      	ldr	r3, [r3, #0]
 800402a:	683a      	ldr	r2, [r7, #0]
 800402c:	3a01      	subs	r2, #1
 800402e:	4906      	ldr	r1, [pc, #24]	; (8004048 <LL_DMA_EnableIT_TC+0x38>)
 8004030:	5c8a      	ldrb	r2, [r1, r2]
 8004032:	4611      	mov	r1, r2
 8004034:	687a      	ldr	r2, [r7, #4]
 8004036:	440a      	add	r2, r1
 8004038:	f043 0302 	orr.w	r3, r3, #2
 800403c:	6013      	str	r3, [r2, #0]
 800403e:	bf00      	nop
 8004040:	370c      	adds	r7, #12
 8004042:	46bd      	mov	sp, r7
 8004044:	bc80      	pop	{r7}
 8004046:	4770      	bx	lr
 8004048:	080079d8 	.word	0x080079d8

0800404c <LL_GPIO_SetPinMode>:
 800404c:	b490      	push	{r4, r7}
 800404e:	b088      	sub	sp, #32
 8004050:	af00      	add	r7, sp, #0
 8004052:	60f8      	str	r0, [r7, #12]
 8004054:	60b9      	str	r1, [r7, #8]
 8004056:	607a      	str	r2, [r7, #4]
 8004058:	68fb      	ldr	r3, [r7, #12]
 800405a:	461a      	mov	r2, r3
 800405c:	68bb      	ldr	r3, [r7, #8]
 800405e:	0e1b      	lsrs	r3, r3, #24
 8004060:	4413      	add	r3, r2
 8004062:	461c      	mov	r4, r3
 8004064:	6822      	ldr	r2, [r4, #0]
 8004066:	68bb      	ldr	r3, [r7, #8]
 8004068:	617b      	str	r3, [r7, #20]
 800406a:	697b      	ldr	r3, [r7, #20]
 800406c:	fa93 f3a3 	rbit	r3, r3
 8004070:	613b      	str	r3, [r7, #16]
 8004072:	693b      	ldr	r3, [r7, #16]
 8004074:	fab3 f383 	clz	r3, r3
 8004078:	009b      	lsls	r3, r3, #2
 800407a:	210f      	movs	r1, #15
 800407c:	fa01 f303 	lsl.w	r3, r1, r3
 8004080:	43db      	mvns	r3, r3
 8004082:	401a      	ands	r2, r3
 8004084:	68bb      	ldr	r3, [r7, #8]
 8004086:	61fb      	str	r3, [r7, #28]
 8004088:	69fb      	ldr	r3, [r7, #28]
 800408a:	fa93 f3a3 	rbit	r3, r3
 800408e:	61bb      	str	r3, [r7, #24]
 8004090:	69bb      	ldr	r3, [r7, #24]
 8004092:	fab3 f383 	clz	r3, r3
 8004096:	009b      	lsls	r3, r3, #2
 8004098:	6879      	ldr	r1, [r7, #4]
 800409a:	fa01 f303 	lsl.w	r3, r1, r3
 800409e:	4313      	orrs	r3, r2
 80040a0:	6023      	str	r3, [r4, #0]
 80040a2:	bf00      	nop
 80040a4:	3720      	adds	r7, #32
 80040a6:	46bd      	mov	sp, r7
 80040a8:	bc90      	pop	{r4, r7}
 80040aa:	4770      	bx	lr

080040ac <LL_GPIO_SetPinSpeed>:
 80040ac:	b490      	push	{r4, r7}
 80040ae:	b088      	sub	sp, #32
 80040b0:	af00      	add	r7, sp, #0
 80040b2:	60f8      	str	r0, [r7, #12]
 80040b4:	60b9      	str	r1, [r7, #8]
 80040b6:	607a      	str	r2, [r7, #4]
 80040b8:	68fb      	ldr	r3, [r7, #12]
 80040ba:	461a      	mov	r2, r3
 80040bc:	68bb      	ldr	r3, [r7, #8]
 80040be:	0e1b      	lsrs	r3, r3, #24
 80040c0:	4413      	add	r3, r2
 80040c2:	461c      	mov	r4, r3
 80040c4:	6822      	ldr	r2, [r4, #0]
 80040c6:	68bb      	ldr	r3, [r7, #8]
 80040c8:	617b      	str	r3, [r7, #20]
 80040ca:	697b      	ldr	r3, [r7, #20]
 80040cc:	fa93 f3a3 	rbit	r3, r3
 80040d0:	613b      	str	r3, [r7, #16]
 80040d2:	693b      	ldr	r3, [r7, #16]
 80040d4:	fab3 f383 	clz	r3, r3
 80040d8:	009b      	lsls	r3, r3, #2
 80040da:	2103      	movs	r1, #3
 80040dc:	fa01 f303 	lsl.w	r3, r1, r3
 80040e0:	43db      	mvns	r3, r3
 80040e2:	401a      	ands	r2, r3
 80040e4:	68bb      	ldr	r3, [r7, #8]
 80040e6:	61fb      	str	r3, [r7, #28]
 80040e8:	69fb      	ldr	r3, [r7, #28]
 80040ea:	fa93 f3a3 	rbit	r3, r3
 80040ee:	61bb      	str	r3, [r7, #24]
 80040f0:	69bb      	ldr	r3, [r7, #24]
 80040f2:	fab3 f383 	clz	r3, r3
 80040f6:	009b      	lsls	r3, r3, #2
 80040f8:	6879      	ldr	r1, [r7, #4]
 80040fa:	fa01 f303 	lsl.w	r3, r1, r3
 80040fe:	4313      	orrs	r3, r2
 8004100:	6023      	str	r3, [r4, #0]
 8004102:	bf00      	nop
 8004104:	3720      	adds	r7, #32
 8004106:	46bd      	mov	sp, r7
 8004108:	bc90      	pop	{r4, r7}
 800410a:	4770      	bx	lr

0800410c <LL_GPIO_SetPinOutputType>:
 800410c:	b490      	push	{r4, r7}
 800410e:	b088      	sub	sp, #32
 8004110:	af00      	add	r7, sp, #0
 8004112:	60f8      	str	r0, [r7, #12]
 8004114:	60b9      	str	r1, [r7, #8]
 8004116:	607a      	str	r2, [r7, #4]
 8004118:	68fb      	ldr	r3, [r7, #12]
 800411a:	461a      	mov	r2, r3
 800411c:	68bb      	ldr	r3, [r7, #8]
 800411e:	0e1b      	lsrs	r3, r3, #24
 8004120:	4413      	add	r3, r2
 8004122:	461c      	mov	r4, r3
 8004124:	6822      	ldr	r2, [r4, #0]
 8004126:	68bb      	ldr	r3, [r7, #8]
 8004128:	617b      	str	r3, [r7, #20]
 800412a:	697b      	ldr	r3, [r7, #20]
 800412c:	fa93 f3a3 	rbit	r3, r3
 8004130:	613b      	str	r3, [r7, #16]
 8004132:	693b      	ldr	r3, [r7, #16]
 8004134:	fab3 f383 	clz	r3, r3
 8004138:	009b      	lsls	r3, r3, #2
 800413a:	2104      	movs	r1, #4
 800413c:	fa01 f303 	lsl.w	r3, r1, r3
 8004140:	43db      	mvns	r3, r3
 8004142:	401a      	ands	r2, r3
 8004144:	68bb      	ldr	r3, [r7, #8]
 8004146:	61fb      	str	r3, [r7, #28]
 8004148:	69fb      	ldr	r3, [r7, #28]
 800414a:	fa93 f3a3 	rbit	r3, r3
 800414e:	61bb      	str	r3, [r7, #24]
 8004150:	69bb      	ldr	r3, [r7, #24]
 8004152:	fab3 f383 	clz	r3, r3
 8004156:	009b      	lsls	r3, r3, #2
 8004158:	6879      	ldr	r1, [r7, #4]
 800415a:	fa01 f303 	lsl.w	r3, r1, r3
 800415e:	4313      	orrs	r3, r2
 8004160:	6023      	str	r3, [r4, #0]
 8004162:	bf00      	nop
 8004164:	3720      	adds	r7, #32
 8004166:	46bd      	mov	sp, r7
 8004168:	bc90      	pop	{r4, r7}
 800416a:	4770      	bx	lr

0800416c <LL_AHB1_GRP1_EnableClock>:
 800416c:	b480      	push	{r7}
 800416e:	b085      	sub	sp, #20
 8004170:	af00      	add	r7, sp, #0
 8004172:	6078      	str	r0, [r7, #4]
 8004174:	4b08      	ldr	r3, [pc, #32]	; (8004198 <LL_AHB1_GRP1_EnableClock+0x2c>)
 8004176:	695a      	ldr	r2, [r3, #20]
 8004178:	4907      	ldr	r1, [pc, #28]	; (8004198 <LL_AHB1_GRP1_EnableClock+0x2c>)
 800417a:	687b      	ldr	r3, [r7, #4]
 800417c:	4313      	orrs	r3, r2
 800417e:	614b      	str	r3, [r1, #20]
 8004180:	4b05      	ldr	r3, [pc, #20]	; (8004198 <LL_AHB1_GRP1_EnableClock+0x2c>)
 8004182:	695a      	ldr	r2, [r3, #20]
 8004184:	687b      	ldr	r3, [r7, #4]
 8004186:	4013      	ands	r3, r2
 8004188:	60fb      	str	r3, [r7, #12]
 800418a:	68fb      	ldr	r3, [r7, #12]
 800418c:	bf00      	nop
 800418e:	3714      	adds	r7, #20
 8004190:	46bd      	mov	sp, r7
 8004192:	bc80      	pop	{r7}
 8004194:	4770      	bx	lr
 8004196:	bf00      	nop
 8004198:	40021000 	.word	0x40021000

0800419c <LL_APB2_GRP1_EnableClock>:
 800419c:	b480      	push	{r7}
 800419e:	b085      	sub	sp, #20
 80041a0:	af00      	add	r7, sp, #0
 80041a2:	6078      	str	r0, [r7, #4]
 80041a4:	4b08      	ldr	r3, [pc, #32]	; (80041c8 <LL_APB2_GRP1_EnableClock+0x2c>)
 80041a6:	699a      	ldr	r2, [r3, #24]
 80041a8:	4907      	ldr	r1, [pc, #28]	; (80041c8 <LL_APB2_GRP1_EnableClock+0x2c>)
 80041aa:	687b      	ldr	r3, [r7, #4]
 80041ac:	4313      	orrs	r3, r2
 80041ae:	618b      	str	r3, [r1, #24]
 80041b0:	4b05      	ldr	r3, [pc, #20]	; (80041c8 <LL_APB2_GRP1_EnableClock+0x2c>)
 80041b2:	699a      	ldr	r2, [r3, #24]
 80041b4:	687b      	ldr	r3, [r7, #4]
 80041b6:	4013      	ands	r3, r2
 80041b8:	60fb      	str	r3, [r7, #12]
 80041ba:	68fb      	ldr	r3, [r7, #12]
 80041bc:	bf00      	nop
 80041be:	3714      	adds	r7, #20
 80041c0:	46bd      	mov	sp, r7
 80041c2:	bc80      	pop	{r7}
 80041c4:	4770      	bx	lr
 80041c6:	bf00      	nop
 80041c8:	40021000 	.word	0x40021000

080041cc <terminal_hw_config>:
 80041cc:	b580      	push	{r7, lr}
 80041ce:	b082      	sub	sp, #8
 80041d0:	af02      	add	r7, sp, #8
 80041d2:	2004      	movs	r0, #4
 80041d4:	f7ff ffe2 	bl	800419c <LL_APB2_GRP1_EnableClock>
 80041d8:	2209      	movs	r2, #9
 80041da:	4941      	ldr	r1, [pc, #260]	; (80042e0 <terminal_hw_config+0x114>)
 80041dc:	4841      	ldr	r0, [pc, #260]	; (80042e4 <terminal_hw_config+0x118>)
 80041de:	f7ff ff35 	bl	800404c <LL_GPIO_SetPinMode>
 80041e2:	2200      	movs	r2, #0
 80041e4:	493e      	ldr	r1, [pc, #248]	; (80042e0 <terminal_hw_config+0x114>)
 80041e6:	483f      	ldr	r0, [pc, #252]	; (80042e4 <terminal_hw_config+0x118>)
 80041e8:	f7ff ff90 	bl	800410c <LL_GPIO_SetPinOutputType>
 80041ec:	2203      	movs	r2, #3
 80041ee:	493c      	ldr	r1, [pc, #240]	; (80042e0 <terminal_hw_config+0x114>)
 80041f0:	483c      	ldr	r0, [pc, #240]	; (80042e4 <terminal_hw_config+0x118>)
 80041f2:	f7ff ff5b 	bl	80040ac <LL_GPIO_SetPinSpeed>
 80041f6:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80041fa:	f7ff ffcf 	bl	800419c <LL_APB2_GRP1_EnableClock>
 80041fe:	210c      	movs	r1, #12
 8004200:	4839      	ldr	r0, [pc, #228]	; (80042e8 <terminal_hw_config+0x11c>)
 8004202:	f7ff fc74 	bl	8003aee <LL_USART_SetTransferDirection>
 8004206:	2100      	movs	r1, #0
 8004208:	4837      	ldr	r0, [pc, #220]	; (80042e8 <terminal_hw_config+0x11c>)
 800420a:	f7ff fc82 	bl	8003b12 <LL_USART_SetParity>
 800420e:	2100      	movs	r1, #0
 8004210:	4835      	ldr	r0, [pc, #212]	; (80042e8 <terminal_hw_config+0x11c>)
 8004212:	f7ff fc90 	bl	8003b36 <LL_USART_SetDataWidth>
 8004216:	2100      	movs	r1, #0
 8004218:	4833      	ldr	r0, [pc, #204]	; (80042e8 <terminal_hw_config+0x11c>)
 800421a:	f7ff fc9e 	bl	8003b5a <LL_USART_SetStopBitsLength>
 800421e:	2100      	movs	r1, #0
 8004220:	4831      	ldr	r0, [pc, #196]	; (80042e8 <terminal_hw_config+0x11c>)
 8004222:	f7ff fcac 	bl	8003b7e <LL_USART_SetHWFlowCtrl>
 8004226:	4b31      	ldr	r3, [pc, #196]	; (80042ec <terminal_hw_config+0x120>)
 8004228:	681b      	ldr	r3, [r3, #0]
 800422a:	f44f 32e1 	mov.w	r2, #115200	; 0x1c200
 800422e:	4619      	mov	r1, r3
 8004230:	482d      	ldr	r0, [pc, #180]	; (80042e8 <terminal_hw_config+0x11c>)
 8004232:	f7ff fcb7 	bl	8003ba4 <LL_USART_SetBaudRate>
 8004236:	482c      	ldr	r0, [pc, #176]	; (80042e8 <terminal_hw_config+0x11c>)
 8004238:	f7ff fc3b 	bl	8003ab2 <LL_USART_EnableDirectionRx>
 800423c:	482a      	ldr	r0, [pc, #168]	; (80042e8 <terminal_hw_config+0x11c>)
 800423e:	f7ff fc47 	bl	8003ad0 <LL_USART_EnableDirectionTx>
 8004242:	4829      	ldr	r0, [pc, #164]	; (80042e8 <terminal_hw_config+0x11c>)
 8004244:	f7ff fd3d 	bl	8003cc2 <LL_USART_EnableDMAReq_RX>
 8004248:	4827      	ldr	r0, [pc, #156]	; (80042e8 <terminal_hw_config+0x11c>)
 800424a:	f7ff fc23 	bl	8003a94 <LL_USART_Enable>
 800424e:	2001      	movs	r0, #1
 8004250:	f7ff ff8c 	bl	800416c <LL_AHB1_GRP1_EnableClock>
 8004254:	2200      	movs	r2, #0
 8004256:	2105      	movs	r1, #5
 8004258:	4825      	ldr	r0, [pc, #148]	; (80042f0 <terminal_hw_config+0x124>)
 800425a:	f7ff fd6d 	bl	8003d38 <LL_DMA_SetDataTransferDirection>
 800425e:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8004262:	2105      	movs	r1, #5
 8004264:	4822      	ldr	r0, [pc, #136]	; (80042f0 <terminal_hw_config+0x124>)
 8004266:	f7ff fe35 	bl	8003ed4 <LL_DMA_SetChannelPriorityLevel>
 800426a:	2220      	movs	r2, #32
 800426c:	2105      	movs	r1, #5
 800426e:	4820      	ldr	r0, [pc, #128]	; (80042f0 <terminal_hw_config+0x124>)
 8004270:	f7ff fd86 	bl	8003d80 <LL_DMA_SetMode>
 8004274:	2200      	movs	r2, #0
 8004276:	2105      	movs	r1, #5
 8004278:	481d      	ldr	r0, [pc, #116]	; (80042f0 <terminal_hw_config+0x124>)
 800427a:	f7ff fda3 	bl	8003dc4 <LL_DMA_SetPeriphIncMode>
 800427e:	2280      	movs	r2, #128	; 0x80
 8004280:	2105      	movs	r1, #5
 8004282:	481b      	ldr	r0, [pc, #108]	; (80042f0 <terminal_hw_config+0x124>)
 8004284:	f7ff fdc0 	bl	8003e08 <LL_DMA_SetMemoryIncMode>
 8004288:	2200      	movs	r2, #0
 800428a:	2105      	movs	r1, #5
 800428c:	4818      	ldr	r0, [pc, #96]	; (80042f0 <terminal_hw_config+0x124>)
 800428e:	f7ff fddd 	bl	8003e4c <LL_DMA_SetPeriphSize>
 8004292:	2200      	movs	r2, #0
 8004294:	2105      	movs	r1, #5
 8004296:	4816      	ldr	r0, [pc, #88]	; (80042f0 <terminal_hw_config+0x124>)
 8004298:	f7ff fdfa 	bl	8003e90 <LL_DMA_SetMemorySize>
 800429c:	4b15      	ldr	r3, [pc, #84]	; (80042f4 <terminal_hw_config+0x128>)
 800429e:	681b      	ldr	r3, [r3, #0]
 80042a0:	461a      	mov	r2, r3
 80042a2:	2300      	movs	r3, #0
 80042a4:	9300      	str	r3, [sp, #0]
 80042a6:	4613      	mov	r3, r2
 80042a8:	4a13      	ldr	r2, [pc, #76]	; (80042f8 <terminal_hw_config+0x12c>)
 80042aa:	2105      	movs	r1, #5
 80042ac:	4810      	ldr	r0, [pc, #64]	; (80042f0 <terminal_hw_config+0x124>)
 80042ae:	f7ff fe55 	bl	8003f5c <LL_DMA_ConfigAddresses>
 80042b2:	2208      	movs	r2, #8
 80042b4:	2105      	movs	r1, #5
 80042b6:	480e      	ldr	r0, [pc, #56]	; (80042f0 <terminal_hw_config+0x124>)
 80042b8:	f7ff fe2e 	bl	8003f18 <LL_DMA_SetDataLength>
 80042bc:	2105      	movs	r1, #5
 80042be:	480c      	ldr	r0, [pc, #48]	; (80042f0 <terminal_hw_config+0x124>)
 80042c0:	f7ff fea6 	bl	8004010 <LL_DMA_EnableIT_TC>
 80042c4:	2105      	movs	r1, #5
 80042c6:	480a      	ldr	r0, [pc, #40]	; (80042f0 <terminal_hw_config+0x124>)
 80042c8:	f7ff fd18 	bl	8003cfc <LL_DMA_EnableChannel>
 80042cc:	2106      	movs	r1, #6
 80042ce:	200f      	movs	r0, #15
 80042d0:	f7ff fbb6 	bl	8003a40 <NVIC_SetPriority>
 80042d4:	200f      	movs	r0, #15
 80042d6:	f7ff fb9b 	bl	8003a10 <NVIC_EnableIRQ>
 80042da:	bf00      	nop
 80042dc:	46bd      	mov	sp, r7
 80042de:	bd80      	pop	{r7, pc}
 80042e0:	04020002 	.word	0x04020002
 80042e4:	40010800 	.word	0x40010800
 80042e8:	40013800 	.word	0x40013800
 80042ec:	20000000 	.word	0x20000000
 80042f0:	40020000 	.word	0x40020000
 80042f4:	20000a34 	.word	0x20000a34
 80042f8:	40013804 	.word	0x40013804

080042fc <term_request>:
 80042fc:	b580      	push	{r7, lr}
 80042fe:	b082      	sub	sp, #8
 8004300:	af00      	add	r7, sp, #0
 8004302:	6078      	str	r0, [r7, #4]
 8004304:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8004308:	2001      	movs	r0, #1
 800430a:	f002 f879 	bl	8006400 <ulTaskNotifyTake>
 800430e:	4603      	mov	r3, r0
 8004310:	2b00      	cmp	r3, #0
 8004312:	d007      	beq.n	8004324 <term_request+0x28>
 8004314:	687b      	ldr	r3, [r7, #4]
 8004316:	1c5a      	adds	r2, r3, #1
 8004318:	687b      	ldr	r3, [r7, #4]
 800431a:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
 800431e:	687b      	ldr	r3, [r7, #4]
 8004320:	781b      	ldrb	r3, [r3, #0]
 8004322:	e000      	b.n	8004326 <term_request+0x2a>
 8004324:	2300      	movs	r3, #0
 8004326:	4618      	mov	r0, r3
 8004328:	3708      	adds	r7, #8
 800432a:	46bd      	mov	sp, r7
 800432c:	bd80      	pop	{r7, pc}
	...

08004330 <term_response>:
 8004330:	b580      	push	{r7, lr}
 8004332:	b084      	sub	sp, #16
 8004334:	af00      	add	r7, sp, #0
 8004336:	6078      	str	r0, [r7, #4]
 8004338:	6039      	str	r1, [r7, #0]
 800433a:	2300      	movs	r3, #0
 800433c:	60fb      	str	r3, [r7, #12]
 800433e:	481b      	ldr	r0, [pc, #108]	; (80043ac <term_response+0x7c>)
 8004340:	f7ff fcb2 	bl	8003ca8 <LL_USART_ClearFlag_TC>
 8004344:	e019      	b.n	800437a <term_response+0x4a>
 8004346:	4b1a      	ldr	r3, [pc, #104]	; (80043b0 <term_response+0x80>)
 8004348:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800434c:	601a      	str	r2, [r3, #0]
 800434e:	f3bf 8f4f 	dsb	sy
 8004352:	f3bf 8f6f 	isb	sy
 8004356:	4815      	ldr	r0, [pc, #84]	; (80043ac <term_response+0x7c>)
 8004358:	f7ff fc94 	bl	8003c84 <LL_USART_IsActiveFlag_TXE>
 800435c:	4603      	mov	r3, r0
 800435e:	2b00      	cmp	r3, #0
 8004360:	d0f1      	beq.n	8004346 <term_response+0x16>
 8004362:	687b      	ldr	r3, [r7, #4]
 8004364:	f8d3 2080 	ldr.w	r2, [r3, #128]	; 0x80
 8004368:	68fb      	ldr	r3, [r7, #12]
 800436a:	1c59      	adds	r1, r3, #1
 800436c:	60f9      	str	r1, [r7, #12]
 800436e:	4413      	add	r3, r2
 8004370:	781b      	ldrb	r3, [r3, #0]
 8004372:	4619      	mov	r1, r3
 8004374:	480d      	ldr	r0, [pc, #52]	; (80043ac <term_response+0x7c>)
 8004376:	f7ff fcb3 	bl	8003ce0 <LL_USART_TransmitData8>
 800437a:	683b      	ldr	r3, [r7, #0]
 800437c:	1e5a      	subs	r2, r3, #1
 800437e:	603a      	str	r2, [r7, #0]
 8004380:	2b00      	cmp	r3, #0
 8004382:	d1e8      	bne.n	8004356 <term_response+0x26>
 8004384:	e007      	b.n	8004396 <term_response+0x66>
 8004386:	4b0a      	ldr	r3, [pc, #40]	; (80043b0 <term_response+0x80>)
 8004388:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800438c:	601a      	str	r2, [r3, #0]
 800438e:	f3bf 8f4f 	dsb	sy
 8004392:	f3bf 8f6f 	isb	sy
 8004396:	4805      	ldr	r0, [pc, #20]	; (80043ac <term_response+0x7c>)
 8004398:	f7ff fc62 	bl	8003c60 <LL_USART_IsActiveFlag_TC>
 800439c:	4603      	mov	r3, r0
 800439e:	2b00      	cmp	r3, #0
 80043a0:	d0f1      	beq.n	8004386 <term_response+0x56>
 80043a2:	bf00      	nop
 80043a4:	3710      	adds	r7, #16
 80043a6:	46bd      	mov	sp, r7
 80043a8:	bd80      	pop	{r7, pc}
 80043aa:	bf00      	nop
 80043ac:	40013800 	.word	0x40013800
 80043b0:	e000ed04 	.word	0xe000ed04

080043b4 <terminal_manager>:
 80043b4:	b580      	push	{r7, lr}
 80043b6:	b0a6      	sub	sp, #152	; 0x98
 80043b8:	af00      	add	r7, sp, #0
 80043ba:	6078      	str	r0, [r7, #4]
 80043bc:	2300      	movs	r3, #0
 80043be:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
 80043c2:	2300      	movs	r3, #0
 80043c4:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
 80043c8:	f107 0308 	add.w	r3, r7, #8
 80043cc:	2280      	movs	r2, #128	; 0x80
 80043ce:	2100      	movs	r1, #0
 80043d0:	4618      	mov	r0, r3
 80043d2:	f002 fee6 	bl	80071a2 <memset>
 80043d6:	f001 ff63 	bl	80062a0 <xTaskGetCurrentTaskHandle>
 80043da:	4603      	mov	r3, r0
 80043dc:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
 80043e0:	4a18      	ldr	r2, [pc, #96]	; (8004444 <terminal_manager+0x90>)
 80043e2:	f107 0308 	add.w	r3, r7, #8
 80043e6:	6013      	str	r3, [r2, #0]
 80043e8:	f7ff fef0 	bl	80041cc <terminal_hw_config>
 80043ec:	f107 0308 	add.w	r3, r7, #8
 80043f0:	4618      	mov	r0, r3
 80043f2:	f7ff ff83 	bl	80042fc <term_request>
 80043f6:	4603      	mov	r3, r0
 80043f8:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
 80043fc:	f8d7 3094 	ldr.w	r3, [r7, #148]	; 0x94
 8004400:	2b00      	cmp	r3, #0
 8004402:	dd1d      	ble.n	8004440 <terminal_manager+0x8c>
 8004404:	f8d7 3094 	ldr.w	r3, [r7, #148]	; 0x94
 8004408:	2b06      	cmp	r3, #6
 800440a:	dc19      	bgt.n	8004440 <terminal_manager+0x8c>
 800440c:	4a0e      	ldr	r2, [pc, #56]	; (8004448 <terminal_manager+0x94>)
 800440e:	f8d7 3094 	ldr.w	r3, [r7, #148]	; 0x94
 8004412:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8004416:	2b00      	cmp	r3, #0
 8004418:	d012      	beq.n	8004440 <terminal_manager+0x8c>
 800441a:	4a0b      	ldr	r2, [pc, #44]	; (8004448 <terminal_manager+0x94>)
 800441c:	f8d7 3094 	ldr.w	r3, [r7, #148]	; 0x94
 8004420:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8004424:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
 8004428:	4610      	mov	r0, r2
 800442a:	4798      	blx	r3
 800442c:	f8c7 0090 	str.w	r0, [r7, #144]	; 0x90
 8004430:	f107 0308 	add.w	r3, r7, #8
 8004434:	f8d7 1090 	ldr.w	r1, [r7, #144]	; 0x90
 8004438:	4618      	mov	r0, r3
 800443a:	f7ff ff79 	bl	8004330 <term_response>
 800443e:	e7d5      	b.n	80043ec <terminal_manager+0x38>
 8004440:	bf00      	nop
 8004442:	e7d3      	b.n	80043ec <terminal_manager+0x38>
 8004444:	20000a34 	.word	0x20000a34
 8004448:	080079e0 	.word	0x080079e0

0800444c <DMA1_Channel5_IRQHandler>:
 800444c:	b580      	push	{r7, lr}
 800444e:	b082      	sub	sp, #8
 8004450:	af00      	add	r7, sp, #0
 8004452:	2300      	movs	r3, #0
 8004454:	607b      	str	r3, [r7, #4]
 8004456:	4810      	ldr	r0, [pc, #64]	; (8004498 <DMA1_Channel5_IRQHandler+0x4c>)
 8004458:	f7ff fdba 	bl	8003fd0 <LL_DMA_IsActiveFlag_TC5>
 800445c:	4603      	mov	r3, r0
 800445e:	2b00      	cmp	r3, #0
 8004460:	d00b      	beq.n	800447a <DMA1_Channel5_IRQHandler+0x2e>
 8004462:	480d      	ldr	r0, [pc, #52]	; (8004498 <DMA1_Channel5_IRQHandler+0x4c>)
 8004464:	f7ff fdc7 	bl	8003ff6 <LL_DMA_ClearFlag_TC5>
 8004468:	4b0c      	ldr	r3, [pc, #48]	; (800449c <DMA1_Channel5_IRQHandler+0x50>)
 800446a:	681b      	ldr	r3, [r3, #0]
 800446c:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
 8004470:	1d3a      	adds	r2, r7, #4
 8004472:	4611      	mov	r1, r2
 8004474:	4618      	mov	r0, r3
 8004476:	f002 f80f 	bl	8006498 <vTaskNotifyGiveFromISR>
 800447a:	687b      	ldr	r3, [r7, #4]
 800447c:	2b00      	cmp	r3, #0
 800447e:	d007      	beq.n	8004490 <DMA1_Channel5_IRQHandler+0x44>
 8004480:	4b07      	ldr	r3, [pc, #28]	; (80044a0 <DMA1_Channel5_IRQHandler+0x54>)
 8004482:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8004486:	601a      	str	r2, [r3, #0]
 8004488:	f3bf 8f4f 	dsb	sy
 800448c:	f3bf 8f6f 	isb	sy
 8004490:	bf00      	nop
 8004492:	3708      	adds	r7, #8
 8004494:	46bd      	mov	sp, r7
 8004496:	bd80      	pop	{r7, pc}
 8004498:	40020000 	.word	0x40020000
 800449c:	20000a34 	.word	0x20000a34
 80044a0:	e000ed04 	.word	0xe000ed04

080044a4 <cmd_echo_handler>:
 80044a4:	b480      	push	{r7}
 80044a6:	b083      	sub	sp, #12
 80044a8:	af00      	add	r7, sp, #0
 80044aa:	6078      	str	r0, [r7, #4]
 80044ac:	2304      	movs	r3, #4
 80044ae:	4618      	mov	r0, r3
 80044b0:	370c      	adds	r7, #12
 80044b2:	46bd      	mov	sp, r7
 80044b4:	bc80      	pop	{r7}
 80044b6:	4770      	bx	lr

080044b8 <LL_GPIO_TogglePin>:
 80044b8:	b480      	push	{r7}
 80044ba:	b083      	sub	sp, #12
 80044bc:	af00      	add	r7, sp, #0
 80044be:	6078      	str	r0, [r7, #4]
 80044c0:	6039      	str	r1, [r7, #0]
 80044c2:	687b      	ldr	r3, [r7, #4]
 80044c4:	68da      	ldr	r2, [r3, #12]
 80044c6:	683b      	ldr	r3, [r7, #0]
 80044c8:	0a1b      	lsrs	r3, r3, #8
 80044ca:	b29b      	uxth	r3, r3
 80044cc:	405a      	eors	r2, r3
 80044ce:	687b      	ldr	r3, [r7, #4]
 80044d0:	60da      	str	r2, [r3, #12]
 80044d2:	bf00      	nop
 80044d4:	370c      	adds	r7, #12
 80044d6:	46bd      	mov	sp, r7
 80044d8:	bc80      	pop	{r7}
 80044da:	4770      	bx	lr

080044dc <printf_config>:
 80044dc:	b480      	push	{r7}
 80044de:	af00      	add	r7, sp, #0
 80044e0:	4b03      	ldr	r3, [pc, #12]	; (80044f0 <printf_config+0x14>)
 80044e2:	4a04      	ldr	r2, [pc, #16]	; (80044f4 <printf_config+0x18>)
 80044e4:	601a      	str	r2, [r3, #0]
 80044e6:	bf00      	nop
 80044e8:	46bd      	mov	sp, r7
 80044ea:	bc80      	pop	{r7}
 80044ec:	4770      	bx	lr
 80044ee:	bf00      	nop
 80044f0:	20004624 	.word	0x20004624
 80044f4:	080027d1 	.word	0x080027d1

080044f8 <ui_welcome>:
 80044f8:	b580      	push	{r7, lr}
 80044fa:	af00      	add	r7, sp, #0
 80044fc:	2100      	movs	r1, #0
 80044fe:	2000      	movs	r0, #0
 8004500:	f7fe f94e 	bl	80027a0 <oled_set_cursor>
 8004504:	4806      	ldr	r0, [pc, #24]	; (8004520 <ui_welcome+0x28>)
 8004506:	f000 fb17 	bl	8004b38 <xprintf>
 800450a:	4806      	ldr	r0, [pc, #24]	; (8004524 <ui_welcome+0x2c>)
 800450c:	f000 fb14 	bl	8004b38 <xprintf>
 8004510:	f7fe f880 	bl	8002614 <oled_update>
 8004514:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8004518:	f001 fa16 	bl	8005948 <vTaskDelay>
 800451c:	bf00      	nop
 800451e:	bd80      	pop	{r7, pc}
 8004520:	08007374 	.word	0x08007374
 8004524:	08007388 	.word	0x08007388

08004528 <ui_rtc_show>:
 8004528:	b5b0      	push	{r4, r5, r7, lr}
 800452a:	b084      	sub	sp, #16
 800452c:	af04      	add	r7, sp, #16
 800452e:	2100      	movs	r1, #0
 8004530:	2000      	movs	r0, #0
 8004532:	f7fe f935 	bl	80027a0 <oled_set_cursor>
 8004536:	4b23      	ldr	r3, [pc, #140]	; (80045c4 <ui_rtc_show+0x9c>)
 8004538:	781b      	ldrb	r3, [r3, #0]
 800453a:	2b03      	cmp	r3, #3
 800453c:	d83a      	bhi.n	80045b4 <ui_rtc_show+0x8c>
 800453e:	a201      	add	r2, pc, #4	; (adr r2, 8004544 <ui_rtc_show+0x1c>)
 8004540:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8004544:	08004555 	.word	0x08004555
 8004548:	08004591 	.word	0x08004591
 800454c:	08004599 	.word	0x08004599
 8004550:	080045ad 	.word	0x080045ad
 8004554:	481c      	ldr	r0, [pc, #112]	; (80045c8 <ui_rtc_show+0xa0>)
 8004556:	f000 faef 	bl	8004b38 <xprintf>
 800455a:	4b1a      	ldr	r3, [pc, #104]	; (80045c4 <ui_rtc_show+0x9c>)
 800455c:	795b      	ldrb	r3, [r3, #5]
 800455e:	4618      	mov	r0, r3
 8004560:	4b18      	ldr	r3, [pc, #96]	; (80045c4 <ui_rtc_show+0x9c>)
 8004562:	791b      	ldrb	r3, [r3, #4]
 8004564:	461c      	mov	r4, r3
 8004566:	4b17      	ldr	r3, [pc, #92]	; (80045c4 <ui_rtc_show+0x9c>)
 8004568:	885b      	ldrh	r3, [r3, #2]
 800456a:	461d      	mov	r5, r3
 800456c:	4b15      	ldr	r3, [pc, #84]	; (80045c4 <ui_rtc_show+0x9c>)
 800456e:	799b      	ldrb	r3, [r3, #6]
 8004570:	461a      	mov	r2, r3
 8004572:	4b14      	ldr	r3, [pc, #80]	; (80045c4 <ui_rtc_show+0x9c>)
 8004574:	79db      	ldrb	r3, [r3, #7]
 8004576:	4619      	mov	r1, r3
 8004578:	4b12      	ldr	r3, [pc, #72]	; (80045c4 <ui_rtc_show+0x9c>)
 800457a:	7a1b      	ldrb	r3, [r3, #8]
 800457c:	9302      	str	r3, [sp, #8]
 800457e:	9101      	str	r1, [sp, #4]
 8004580:	9200      	str	r2, [sp, #0]
 8004582:	462b      	mov	r3, r5
 8004584:	4622      	mov	r2, r4
 8004586:	4601      	mov	r1, r0
 8004588:	4810      	ldr	r0, [pc, #64]	; (80045cc <ui_rtc_show+0xa4>)
 800458a:	f000 fad5 	bl	8004b38 <xprintf>
 800458e:	e015      	b.n	80045bc <ui_rtc_show+0x94>
 8004590:	480f      	ldr	r0, [pc, #60]	; (80045d0 <ui_rtc_show+0xa8>)
 8004592:	f000 fad1 	bl	8004b38 <xprintf>
 8004596:	e011      	b.n	80045bc <ui_rtc_show+0x94>
 8004598:	480e      	ldr	r0, [pc, #56]	; (80045d4 <ui_rtc_show+0xac>)
 800459a:	f000 facd 	bl	8004b38 <xprintf>
 800459e:	480e      	ldr	r0, [pc, #56]	; (80045d8 <ui_rtc_show+0xb0>)
 80045a0:	f000 faca 	bl	8004b38 <xprintf>
 80045a4:	480d      	ldr	r0, [pc, #52]	; (80045dc <ui_rtc_show+0xb4>)
 80045a6:	f000 fac7 	bl	8004b38 <xprintf>
 80045aa:	e007      	b.n	80045bc <ui_rtc_show+0x94>
 80045ac:	480c      	ldr	r0, [pc, #48]	; (80045e0 <ui_rtc_show+0xb8>)
 80045ae:	f000 fac3 	bl	8004b38 <xprintf>
 80045b2:	e003      	b.n	80045bc <ui_rtc_show+0x94>
 80045b4:	480b      	ldr	r0, [pc, #44]	; (80045e4 <ui_rtc_show+0xbc>)
 80045b6:	f000 fabf 	bl	8004b38 <xprintf>
 80045ba:	bf00      	nop
 80045bc:	bf00      	nop
 80045be:	46bd      	mov	sp, r7
 80045c0:	bdb0      	pop	{r4, r5, r7, pc}
 80045c2:	bf00      	nop
 80045c4:	20000a38 	.word	0x20000a38
 80045c8:	080073a0 	.word	0x080073a0
 80045cc:	080073b0 	.word	0x080073b0
 80045d0:	080073cc 	.word	0x080073cc
 80045d4:	080073ec 	.word	0x080073ec
 80045d8:	08007400 	.word	0x08007400
 80045dc:	08007414 	.word	0x08007414
 80045e0:	08007428 	.word	0x08007428
 80045e4:	0800743c 	.word	0x0800743c

080045e8 <ui_temp_show>:
 80045e8:	b590      	push	{r4, r7, lr}
 80045ea:	b085      	sub	sp, #20
 80045ec:	af00      	add	r7, sp, #0
 80045ee:	2300      	movs	r3, #0
 80045f0:	60fb      	str	r3, [r7, #12]
 80045f2:	2300      	movs	r3, #0
 80045f4:	60bb      	str	r3, [r7, #8]
 80045f6:	2300      	movs	r3, #0
 80045f8:	607b      	str	r3, [r7, #4]
 80045fa:	2103      	movs	r1, #3
 80045fc:	2000      	movs	r0, #0
 80045fe:	f7fe f8cf 	bl	80027a0 <oled_set_cursor>
 8004602:	4b3b      	ldr	r3, [pc, #236]	; (80046f0 <ui_temp_show+0x108>)
 8004604:	785b      	ldrb	r3, [r3, #1]
 8004606:	2b00      	cmp	r3, #0
 8004608:	d135      	bne.n	8004676 <ui_temp_show+0x8e>
 800460a:	483a      	ldr	r0, [pc, #232]	; (80046f4 <ui_temp_show+0x10c>)
 800460c:	f000 fa94 	bl	8004b38 <xprintf>
 8004610:	2300      	movs	r3, #0
 8004612:	60fb      	str	r3, [r7, #12]
 8004614:	e02b      	b.n	800466e <ui_temp_show+0x86>
 8004616:	4a36      	ldr	r2, [pc, #216]	; (80046f0 <ui_temp_show+0x108>)
 8004618:	68fb      	ldr	r3, [r7, #12]
 800461a:	3302      	adds	r3, #2
 800461c:	009b      	lsls	r3, r3, #2
 800461e:	4413      	add	r3, r2
 8004620:	685b      	ldr	r3, [r3, #4]
 8004622:	4618      	mov	r0, r3
 8004624:	f7fc f868 	bl	80006f8 <__aeabi_f2iz>
 8004628:	4603      	mov	r3, r0
 800462a:	60bb      	str	r3, [r7, #8]
 800462c:	4a30      	ldr	r2, [pc, #192]	; (80046f0 <ui_temp_show+0x108>)
 800462e:	68fb      	ldr	r3, [r7, #12]
 8004630:	3302      	adds	r3, #2
 8004632:	009b      	lsls	r3, r3, #2
 8004634:	4413      	add	r3, r2
 8004636:	685c      	ldr	r4, [r3, #4]
 8004638:	68b8      	ldr	r0, [r7, #8]
 800463a:	f7fb fe43 	bl	80002c4 <__aeabi_i2f>
 800463e:	4603      	mov	r3, r0
 8004640:	4619      	mov	r1, r3
 8004642:	4620      	mov	r0, r4
 8004644:	f7fb fd88 	bl	8000158 <__aeabi_fsub>
 8004648:	4603      	mov	r3, r0
 800464a:	492b      	ldr	r1, [pc, #172]	; (80046f8 <ui_temp_show+0x110>)
 800464c:	4618      	mov	r0, r3
 800464e:	f7fb fe8d 	bl	800036c <__aeabi_fmul>
 8004652:	4603      	mov	r3, r0
 8004654:	4618      	mov	r0, r3
 8004656:	f7fc f84f 	bl	80006f8 <__aeabi_f2iz>
 800465a:	4603      	mov	r3, r0
 800465c:	607b      	str	r3, [r7, #4]
 800465e:	687a      	ldr	r2, [r7, #4]
 8004660:	68b9      	ldr	r1, [r7, #8]
 8004662:	4826      	ldr	r0, [pc, #152]	; (80046fc <ui_temp_show+0x114>)
 8004664:	f000 fa68 	bl	8004b38 <xprintf>
 8004668:	68fb      	ldr	r3, [r7, #12]
 800466a:	3301      	adds	r3, #1
 800466c:	60fb      	str	r3, [r7, #12]
 800466e:	68fb      	ldr	r3, [r7, #12]
 8004670:	2b02      	cmp	r3, #2
 8004672:	ddd0      	ble.n	8004616 <ui_temp_show+0x2e>
 8004674:	e038      	b.n	80046e8 <ui_temp_show+0x100>
 8004676:	481f      	ldr	r0, [pc, #124]	; (80046f4 <ui_temp_show+0x10c>)
 8004678:	f000 fa5e 	bl	8004b38 <xprintf>
 800467c:	2300      	movs	r3, #0
 800467e:	60fb      	str	r3, [r7, #12]
 8004680:	e02b      	b.n	80046da <ui_temp_show+0xf2>
 8004682:	4a1b      	ldr	r2, [pc, #108]	; (80046f0 <ui_temp_show+0x108>)
 8004684:	68fb      	ldr	r3, [r7, #12]
 8004686:	3302      	adds	r3, #2
 8004688:	009b      	lsls	r3, r3, #2
 800468a:	4413      	add	r3, r2
 800468c:	685b      	ldr	r3, [r3, #4]
 800468e:	4618      	mov	r0, r3
 8004690:	f7fc f832 	bl	80006f8 <__aeabi_f2iz>
 8004694:	4603      	mov	r3, r0
 8004696:	60bb      	str	r3, [r7, #8]
 8004698:	4a15      	ldr	r2, [pc, #84]	; (80046f0 <ui_temp_show+0x108>)
 800469a:	68fb      	ldr	r3, [r7, #12]
 800469c:	3302      	adds	r3, #2
 800469e:	009b      	lsls	r3, r3, #2
 80046a0:	4413      	add	r3, r2
 80046a2:	685c      	ldr	r4, [r3, #4]
 80046a4:	68b8      	ldr	r0, [r7, #8]
 80046a6:	f7fb fe0d 	bl	80002c4 <__aeabi_i2f>
 80046aa:	4603      	mov	r3, r0
 80046ac:	4619      	mov	r1, r3
 80046ae:	4620      	mov	r0, r4
 80046b0:	f7fb fd52 	bl	8000158 <__aeabi_fsub>
 80046b4:	4603      	mov	r3, r0
 80046b6:	4910      	ldr	r1, [pc, #64]	; (80046f8 <ui_temp_show+0x110>)
 80046b8:	4618      	mov	r0, r3
 80046ba:	f7fb fe57 	bl	800036c <__aeabi_fmul>
 80046be:	4603      	mov	r3, r0
 80046c0:	4618      	mov	r0, r3
 80046c2:	f7fc f819 	bl	80006f8 <__aeabi_f2iz>
 80046c6:	4603      	mov	r3, r0
 80046c8:	607b      	str	r3, [r7, #4]
 80046ca:	687a      	ldr	r2, [r7, #4]
 80046cc:	68b9      	ldr	r1, [r7, #8]
 80046ce:	480b      	ldr	r0, [pc, #44]	; (80046fc <ui_temp_show+0x114>)
 80046d0:	f000 fa32 	bl	8004b38 <xprintf>
 80046d4:	68fb      	ldr	r3, [r7, #12]
 80046d6:	3301      	adds	r3, #1
 80046d8:	60fb      	str	r3, [r7, #12]
 80046da:	68fb      	ldr	r3, [r7, #12]
 80046dc:	2b02      	cmp	r3, #2
 80046de:	ddd0      	ble.n	8004682 <ui_temp_show+0x9a>
 80046e0:	4807      	ldr	r0, [pc, #28]	; (8004700 <ui_temp_show+0x118>)
 80046e2:	f000 fa29 	bl	8004b38 <xprintf>
 80046e6:	bf00      	nop
 80046e8:	bf00      	nop
 80046ea:	3714      	adds	r7, #20
 80046ec:	46bd      	mov	sp, r7
 80046ee:	bd90      	pop	{r4, r7, pc}
 80046f0:	20000a38 	.word	0x20000a38
 80046f4:	0800745c 	.word	0x0800745c
 80046f8:	42c80000 	.word	0x42c80000
 80046fc:	08007474 	.word	0x08007474
 8004700:	0800747c 	.word	0x0800747c

08004704 <ui_manager>:
 8004704:	b580      	push	{r7, lr}
 8004706:	b082      	sub	sp, #8
 8004708:	af00      	add	r7, sp, #0
 800470a:	6078      	str	r0, [r7, #4]
 800470c:	f7fd ffa8 	bl	8002660 <oled_config>
 8004710:	f7ff fee4 	bl	80044dc <printf_config>
 8004714:	f7ff fef0 	bl	80044f8 <ui_welcome>
 8004718:	4b13      	ldr	r3, [pc, #76]	; (8004768 <ui_manager+0x64>)
 800471a:	22c8      	movs	r2, #200	; 0xc8
 800471c:	619a      	str	r2, [r3, #24]
 800471e:	f7fe ffcb 	bl	80036b8 <rtc_get_err_status>
 8004722:	4603      	mov	r3, r0
 8004724:	461a      	mov	r2, r3
 8004726:	4b10      	ldr	r3, [pc, #64]	; (8004768 <ui_manager+0x64>)
 8004728:	701a      	strb	r2, [r3, #0]
 800472a:	4810      	ldr	r0, [pc, #64]	; (800476c <ui_manager+0x68>)
 800472c:	f7fe ff0a 	bl	8003544 <rtc_get_precise>
 8004730:	f7ff f862 	bl	80037f8 <temp_get_err>
 8004734:	4603      	mov	r3, r0
 8004736:	461a      	mov	r2, r3
 8004738:	4b0b      	ldr	r3, [pc, #44]	; (8004768 <ui_manager+0x64>)
 800473a:	705a      	strb	r2, [r3, #1]
 800473c:	480c      	ldr	r0, [pc, #48]	; (8004770 <ui_manager+0x6c>)
 800473e:	f7ff f84b 	bl	80037d8 <temp_get_temp>
 8004742:	2000      	movs	r0, #0
 8004744:	f7fd ff54 	bl	80025f0 <oled_clr>
 8004748:	f7ff feee 	bl	8004528 <ui_rtc_show>
 800474c:	f7ff ff4c 	bl	80045e8 <ui_temp_show>
 8004750:	f7fd ff60 	bl	8002614 <oled_update>
 8004754:	4907      	ldr	r1, [pc, #28]	; (8004774 <ui_manager+0x70>)
 8004756:	4808      	ldr	r0, [pc, #32]	; (8004778 <ui_manager+0x74>)
 8004758:	f7ff feae 	bl	80044b8 <LL_GPIO_TogglePin>
 800475c:	4b02      	ldr	r3, [pc, #8]	; (8004768 <ui_manager+0x64>)
 800475e:	699b      	ldr	r3, [r3, #24]
 8004760:	4618      	mov	r0, r3
 8004762:	f001 f8f1 	bl	8005948 <vTaskDelay>
 8004766:	e7da      	b.n	800471e <ui_manager+0x1a>
 8004768:	20000a38 	.word	0x20000a38
 800476c:	20000a3a 	.word	0x20000a3a
 8004770:	20000a44 	.word	0x20000a44
 8004774:	04200020 	.word	0x04200020
 8004778:	40011000 	.word	0x40011000

0800477c <xputc>:
 800477c:	b580      	push	{r7, lr}
 800477e:	b082      	sub	sp, #8
 8004780:	af00      	add	r7, sp, #0
 8004782:	4603      	mov	r3, r0
 8004784:	71fb      	strb	r3, [r7, #7]
 8004786:	79fb      	ldrb	r3, [r7, #7]
 8004788:	2b0a      	cmp	r3, #10
 800478a:	d102      	bne.n	8004792 <xputc+0x16>
 800478c:	200d      	movs	r0, #13
 800478e:	f7ff fff5 	bl	800477c <xputc>
 8004792:	4b0c      	ldr	r3, [pc, #48]	; (80047c4 <xputc+0x48>)
 8004794:	681b      	ldr	r3, [r3, #0]
 8004796:	2b00      	cmp	r3, #0
 8004798:	d007      	beq.n	80047aa <xputc+0x2e>
 800479a:	4b0a      	ldr	r3, [pc, #40]	; (80047c4 <xputc+0x48>)
 800479c:	681b      	ldr	r3, [r3, #0]
 800479e:	1c5a      	adds	r2, r3, #1
 80047a0:	4908      	ldr	r1, [pc, #32]	; (80047c4 <xputc+0x48>)
 80047a2:	600a      	str	r2, [r1, #0]
 80047a4:	79fa      	ldrb	r2, [r7, #7]
 80047a6:	701a      	strb	r2, [r3, #0]
 80047a8:	e008      	b.n	80047bc <xputc+0x40>
 80047aa:	4b07      	ldr	r3, [pc, #28]	; (80047c8 <xputc+0x4c>)
 80047ac:	681b      	ldr	r3, [r3, #0]
 80047ae:	2b00      	cmp	r3, #0
 80047b0:	d004      	beq.n	80047bc <xputc+0x40>
 80047b2:	4b05      	ldr	r3, [pc, #20]	; (80047c8 <xputc+0x4c>)
 80047b4:	681b      	ldr	r3, [r3, #0]
 80047b6:	79fa      	ldrb	r2, [r7, #7]
 80047b8:	4610      	mov	r0, r2
 80047ba:	4798      	blx	r3
 80047bc:	3708      	adds	r7, #8
 80047be:	46bd      	mov	sp, r7
 80047c0:	bd80      	pop	{r7, pc}
 80047c2:	bf00      	nop
 80047c4:	20000a54 	.word	0x20000a54
 80047c8:	20004624 	.word	0x20004624

080047cc <xputs>:
 80047cc:	b580      	push	{r7, lr}
 80047ce:	b082      	sub	sp, #8
 80047d0:	af00      	add	r7, sp, #0
 80047d2:	6078      	str	r0, [r7, #4]
 80047d4:	e006      	b.n	80047e4 <xputs+0x18>
 80047d6:	687b      	ldr	r3, [r7, #4]
 80047d8:	1c5a      	adds	r2, r3, #1
 80047da:	607a      	str	r2, [r7, #4]
 80047dc:	781b      	ldrb	r3, [r3, #0]
 80047de:	4618      	mov	r0, r3
 80047e0:	f7ff ffcc 	bl	800477c <xputc>
 80047e4:	687b      	ldr	r3, [r7, #4]
 80047e6:	781b      	ldrb	r3, [r3, #0]
 80047e8:	2b00      	cmp	r3, #0
 80047ea:	d1f4      	bne.n	80047d6 <xputs+0xa>
 80047ec:	bf00      	nop
 80047ee:	3708      	adds	r7, #8
 80047f0:	46bd      	mov	sp, r7
 80047f2:	bd80      	pop	{r7, pc}

080047f4 <xvprintf>:
 80047f4:	b580      	push	{r7, lr}
 80047f6:	b092      	sub	sp, #72	; 0x48
 80047f8:	af00      	add	r7, sp, #0
 80047fa:	6078      	str	r0, [r7, #4]
 80047fc:	6039      	str	r1, [r7, #0]
 80047fe:	687b      	ldr	r3, [r7, #4]
 8004800:	1c5a      	adds	r2, r3, #1
 8004802:	607a      	str	r2, [r7, #4]
 8004804:	781b      	ldrb	r3, [r3, #0]
 8004806:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
 800480a:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 800480e:	2b00      	cmp	r3, #0
 8004810:	f000 818b 	beq.w	8004b2a <xvprintf+0x336>
 8004814:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8004818:	2b25      	cmp	r3, #37	; 0x25
 800481a:	d005      	beq.n	8004828 <xvprintf+0x34>
 800481c:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8004820:	4618      	mov	r0, r3
 8004822:	f7ff ffab 	bl	800477c <xputc>
 8004826:	e17f      	b.n	8004b28 <xvprintf+0x334>
 8004828:	2300      	movs	r3, #0
 800482a:	637b      	str	r3, [r7, #52]	; 0x34
 800482c:	687b      	ldr	r3, [r7, #4]
 800482e:	1c5a      	adds	r2, r3, #1
 8004830:	607a      	str	r2, [r7, #4]
 8004832:	781b      	ldrb	r3, [r3, #0]
 8004834:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
 8004838:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 800483c:	2b30      	cmp	r3, #48	; 0x30
 800483e:	d108      	bne.n	8004852 <xvprintf+0x5e>
 8004840:	2301      	movs	r3, #1
 8004842:	637b      	str	r3, [r7, #52]	; 0x34
 8004844:	687b      	ldr	r3, [r7, #4]
 8004846:	1c5a      	adds	r2, r3, #1
 8004848:	607a      	str	r2, [r7, #4]
 800484a:	781b      	ldrb	r3, [r3, #0]
 800484c:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
 8004850:	e00b      	b.n	800486a <xvprintf+0x76>
 8004852:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8004856:	2b2d      	cmp	r3, #45	; 0x2d
 8004858:	d107      	bne.n	800486a <xvprintf+0x76>
 800485a:	2302      	movs	r3, #2
 800485c:	637b      	str	r3, [r7, #52]	; 0x34
 800485e:	687b      	ldr	r3, [r7, #4]
 8004860:	1c5a      	adds	r2, r3, #1
 8004862:	607a      	str	r2, [r7, #4]
 8004864:	781b      	ldrb	r3, [r3, #0]
 8004866:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
 800486a:	2300      	movs	r3, #0
 800486c:	63bb      	str	r3, [r7, #56]	; 0x38
 800486e:	e010      	b.n	8004892 <xvprintf+0x9e>
 8004870:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8004872:	4613      	mov	r3, r2
 8004874:	009b      	lsls	r3, r3, #2
 8004876:	4413      	add	r3, r2
 8004878:	005b      	lsls	r3, r3, #1
 800487a:	461a      	mov	r2, r3
 800487c:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8004880:	4413      	add	r3, r2
 8004882:	3b30      	subs	r3, #48	; 0x30
 8004884:	63bb      	str	r3, [r7, #56]	; 0x38
 8004886:	687b      	ldr	r3, [r7, #4]
 8004888:	1c5a      	adds	r2, r3, #1
 800488a:	607a      	str	r2, [r7, #4]
 800488c:	781b      	ldrb	r3, [r3, #0]
 800488e:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
 8004892:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8004896:	2b2f      	cmp	r3, #47	; 0x2f
 8004898:	d903      	bls.n	80048a2 <xvprintf+0xae>
 800489a:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 800489e:	2b39      	cmp	r3, #57	; 0x39
 80048a0:	d9e6      	bls.n	8004870 <xvprintf+0x7c>
 80048a2:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 80048a6:	2b6c      	cmp	r3, #108	; 0x6c
 80048a8:	d003      	beq.n	80048b2 <xvprintf+0xbe>
 80048aa:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 80048ae:	2b4c      	cmp	r3, #76	; 0x4c
 80048b0:	d109      	bne.n	80048c6 <xvprintf+0xd2>
 80048b2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80048b4:	f043 0304 	orr.w	r3, r3, #4
 80048b8:	637b      	str	r3, [r7, #52]	; 0x34
 80048ba:	687b      	ldr	r3, [r7, #4]
 80048bc:	1c5a      	adds	r2, r3, #1
 80048be:	607a      	str	r2, [r7, #4]
 80048c0:	781b      	ldrb	r3, [r3, #0]
 80048c2:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
 80048c6:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 80048ca:	2b00      	cmp	r3, #0
 80048cc:	f000 812f 	beq.w	8004b2e <xvprintf+0x33a>
 80048d0:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 80048d4:	f887 3032 	strb.w	r3, [r7, #50]	; 0x32
 80048d8:	f897 3032 	ldrb.w	r3, [r7, #50]	; 0x32
 80048dc:	2b60      	cmp	r3, #96	; 0x60
 80048de:	d904      	bls.n	80048ea <xvprintf+0xf6>
 80048e0:	f897 3032 	ldrb.w	r3, [r7, #50]	; 0x32
 80048e4:	3b20      	subs	r3, #32
 80048e6:	f887 3032 	strb.w	r3, [r7, #50]	; 0x32
 80048ea:	f897 3032 	ldrb.w	r3, [r7, #50]	; 0x32
 80048ee:	3b42      	subs	r3, #66	; 0x42
 80048f0:	2b16      	cmp	r3, #22
 80048f2:	d874      	bhi.n	80049de <xvprintf+0x1ea>
 80048f4:	a201      	add	r2, pc, #4	; (adr r2, 80048fc <xvprintf+0x108>)
 80048f6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 80048fa:	bf00      	nop
 80048fc:	080049c7 	.word	0x080049c7
 8004900:	080049b5 	.word	0x080049b5
 8004904:	080049d3 	.word	0x080049d3
 8004908:	080049df 	.word	0x080049df
 800490c:	080049df 	.word	0x080049df
 8004910:	080049df 	.word	0x080049df
 8004914:	080049df 	.word	0x080049df
 8004918:	080049df 	.word	0x080049df
 800491c:	080049df 	.word	0x080049df
 8004920:	080049df 	.word	0x080049df
 8004924:	080049df 	.word	0x080049df
 8004928:	080049df 	.word	0x080049df
 800492c:	080049df 	.word	0x080049df
 8004930:	080049cd 	.word	0x080049cd
 8004934:	080049df 	.word	0x080049df
 8004938:	080049df 	.word	0x080049df
 800493c:	080049df 	.word	0x080049df
 8004940:	08004959 	.word	0x08004959
 8004944:	080049df 	.word	0x080049df
 8004948:	080049d3 	.word	0x080049d3
 800494c:	080049df 	.word	0x080049df
 8004950:	080049df 	.word	0x080049df
 8004954:	080049d9 	.word	0x080049d9
 8004958:	683b      	ldr	r3, [r7, #0]
 800495a:	1d1a      	adds	r2, r3, #4
 800495c:	603a      	str	r2, [r7, #0]
 800495e:	681b      	ldr	r3, [r3, #0]
 8004960:	627b      	str	r3, [r7, #36]	; 0x24
 8004962:	2300      	movs	r3, #0
 8004964:	63fb      	str	r3, [r7, #60]	; 0x3c
 8004966:	e002      	b.n	800496e <xvprintf+0x17a>
 8004968:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800496a:	3301      	adds	r3, #1
 800496c:	63fb      	str	r3, [r7, #60]	; 0x3c
 800496e:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8004970:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8004972:	4413      	add	r3, r2
 8004974:	781b      	ldrb	r3, [r3, #0]
 8004976:	2b00      	cmp	r3, #0
 8004978:	d1f6      	bne.n	8004968 <xvprintf+0x174>
 800497a:	e002      	b.n	8004982 <xvprintf+0x18e>
 800497c:	2020      	movs	r0, #32
 800497e:	f7ff fefd 	bl	800477c <xputc>
 8004982:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8004984:	f003 0302 	and.w	r3, r3, #2
 8004988:	2b00      	cmp	r3, #0
 800498a:	d105      	bne.n	8004998 <xvprintf+0x1a4>
 800498c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800498e:	1c5a      	adds	r2, r3, #1
 8004990:	63fa      	str	r2, [r7, #60]	; 0x3c
 8004992:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8004994:	429a      	cmp	r2, r3
 8004996:	d8f1      	bhi.n	800497c <xvprintf+0x188>
 8004998:	6a78      	ldr	r0, [r7, #36]	; 0x24
 800499a:	f7ff ff17 	bl	80047cc <xputs>
 800499e:	e002      	b.n	80049a6 <xvprintf+0x1b2>
 80049a0:	2020      	movs	r0, #32
 80049a2:	f7ff feeb 	bl	800477c <xputc>
 80049a6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80049a8:	1c5a      	adds	r2, r3, #1
 80049aa:	63fa      	str	r2, [r7, #60]	; 0x3c
 80049ac:	6bba      	ldr	r2, [r7, #56]	; 0x38
 80049ae:	429a      	cmp	r2, r3
 80049b0:	d8f6      	bhi.n	80049a0 <xvprintf+0x1ac>
 80049b2:	e0b9      	b.n	8004b28 <xvprintf+0x334>
 80049b4:	683b      	ldr	r3, [r7, #0]
 80049b6:	1d1a      	adds	r2, r3, #4
 80049b8:	603a      	str	r2, [r7, #0]
 80049ba:	681b      	ldr	r3, [r3, #0]
 80049bc:	b2db      	uxtb	r3, r3
 80049be:	4618      	mov	r0, r3
 80049c0:	f7ff fedc 	bl	800477c <xputc>
 80049c4:	e0b0      	b.n	8004b28 <xvprintf+0x334>
 80049c6:	2302      	movs	r3, #2
 80049c8:	647b      	str	r3, [r7, #68]	; 0x44
 80049ca:	e00e      	b.n	80049ea <xvprintf+0x1f6>
 80049cc:	2308      	movs	r3, #8
 80049ce:	647b      	str	r3, [r7, #68]	; 0x44
 80049d0:	e00b      	b.n	80049ea <xvprintf+0x1f6>
 80049d2:	230a      	movs	r3, #10
 80049d4:	647b      	str	r3, [r7, #68]	; 0x44
 80049d6:	e008      	b.n	80049ea <xvprintf+0x1f6>
 80049d8:	2310      	movs	r3, #16
 80049da:	647b      	str	r3, [r7, #68]	; 0x44
 80049dc:	e005      	b.n	80049ea <xvprintf+0x1f6>
 80049de:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 80049e2:	4618      	mov	r0, r3
 80049e4:	f7ff feca 	bl	800477c <xputc>
 80049e8:	e09e      	b.n	8004b28 <xvprintf+0x334>
 80049ea:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80049ec:	f003 0304 	and.w	r3, r3, #4
 80049f0:	2b00      	cmp	r3, #0
 80049f2:	d005      	beq.n	8004a00 <xvprintf+0x20c>
 80049f4:	683b      	ldr	r3, [r7, #0]
 80049f6:	1d1a      	adds	r2, r3, #4
 80049f8:	603a      	str	r2, [r7, #0]
 80049fa:	681b      	ldr	r3, [r3, #0]
 80049fc:	62fb      	str	r3, [r7, #44]	; 0x2c
 80049fe:	e00d      	b.n	8004a1c <xvprintf+0x228>
 8004a00:	f897 3032 	ldrb.w	r3, [r7, #50]	; 0x32
 8004a04:	2b44      	cmp	r3, #68	; 0x44
 8004a06:	d104      	bne.n	8004a12 <xvprintf+0x21e>
 8004a08:	683b      	ldr	r3, [r7, #0]
 8004a0a:	1d1a      	adds	r2, r3, #4
 8004a0c:	603a      	str	r2, [r7, #0]
 8004a0e:	681b      	ldr	r3, [r3, #0]
 8004a10:	e003      	b.n	8004a1a <xvprintf+0x226>
 8004a12:	683b      	ldr	r3, [r7, #0]
 8004a14:	1d1a      	adds	r2, r3, #4
 8004a16:	603a      	str	r2, [r7, #0]
 8004a18:	681b      	ldr	r3, [r3, #0]
 8004a1a:	62fb      	str	r3, [r7, #44]	; 0x2c
 8004a1c:	f897 3032 	ldrb.w	r3, [r7, #50]	; 0x32
 8004a20:	2b44      	cmp	r3, #68	; 0x44
 8004a22:	d109      	bne.n	8004a38 <xvprintf+0x244>
 8004a24:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8004a26:	2b00      	cmp	r3, #0
 8004a28:	da06      	bge.n	8004a38 <xvprintf+0x244>
 8004a2a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8004a2c:	425b      	negs	r3, r3
 8004a2e:	62fb      	str	r3, [r7, #44]	; 0x2c
 8004a30:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8004a32:	f043 0310 	orr.w	r3, r3, #16
 8004a36:	637b      	str	r3, [r7, #52]	; 0x34
 8004a38:	2300      	movs	r3, #0
 8004a3a:	643b      	str	r3, [r7, #64]	; 0x40
 8004a3c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8004a3e:	62bb      	str	r3, [r7, #40]	; 0x28
 8004a40:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8004a42:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 8004a44:	fbb3 f2f2 	udiv	r2, r3, r2
 8004a48:	6c79      	ldr	r1, [r7, #68]	; 0x44
 8004a4a:	fb01 f202 	mul.w	r2, r1, r2
 8004a4e:	1a9b      	subs	r3, r3, r2
 8004a50:	f887 3032 	strb.w	r3, [r7, #50]	; 0x32
 8004a54:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8004a56:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8004a58:	fbb2 f3f3 	udiv	r3, r2, r3
 8004a5c:	62bb      	str	r3, [r7, #40]	; 0x28
 8004a5e:	f897 3032 	ldrb.w	r3, [r7, #50]	; 0x32
 8004a62:	2b09      	cmp	r3, #9
 8004a64:	d90b      	bls.n	8004a7e <xvprintf+0x28a>
 8004a66:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8004a6a:	2b78      	cmp	r3, #120	; 0x78
 8004a6c:	d101      	bne.n	8004a72 <xvprintf+0x27e>
 8004a6e:	2227      	movs	r2, #39	; 0x27
 8004a70:	e000      	b.n	8004a74 <xvprintf+0x280>
 8004a72:	2207      	movs	r2, #7
 8004a74:	f897 3032 	ldrb.w	r3, [r7, #50]	; 0x32
 8004a78:	4413      	add	r3, r2
 8004a7a:	f887 3032 	strb.w	r3, [r7, #50]	; 0x32
 8004a7e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8004a80:	1c5a      	adds	r2, r3, #1
 8004a82:	643a      	str	r2, [r7, #64]	; 0x40
 8004a84:	f897 2032 	ldrb.w	r2, [r7, #50]	; 0x32
 8004a88:	3230      	adds	r2, #48	; 0x30
 8004a8a:	b2d2      	uxtb	r2, r2
 8004a8c:	f107 0148 	add.w	r1, r7, #72	; 0x48
 8004a90:	440b      	add	r3, r1
 8004a92:	f803 2c3c 	strb.w	r2, [r3, #-60]
 8004a96:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8004a98:	2b00      	cmp	r3, #0
 8004a9a:	d002      	beq.n	8004aa2 <xvprintf+0x2ae>
 8004a9c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8004a9e:	2b17      	cmp	r3, #23
 8004aa0:	d9ce      	bls.n	8004a40 <xvprintf+0x24c>
 8004aa2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8004aa4:	f003 0310 	and.w	r3, r3, #16
 8004aa8:	2b00      	cmp	r3, #0
 8004aaa:	d008      	beq.n	8004abe <xvprintf+0x2ca>
 8004aac:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8004aae:	1c5a      	adds	r2, r3, #1
 8004ab0:	643a      	str	r2, [r7, #64]	; 0x40
 8004ab2:	f107 0248 	add.w	r2, r7, #72	; 0x48
 8004ab6:	4413      	add	r3, r2
 8004ab8:	222d      	movs	r2, #45	; 0x2d
 8004aba:	f803 2c3c 	strb.w	r2, [r3, #-60]
 8004abe:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8004ac0:	63fb      	str	r3, [r7, #60]	; 0x3c
 8004ac2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8004ac4:	f003 0301 	and.w	r3, r3, #1
 8004ac8:	2b00      	cmp	r3, #0
 8004aca:	d001      	beq.n	8004ad0 <xvprintf+0x2dc>
 8004acc:	2330      	movs	r3, #48	; 0x30
 8004ace:	e000      	b.n	8004ad2 <xvprintf+0x2de>
 8004ad0:	2320      	movs	r3, #32
 8004ad2:	f887 3032 	strb.w	r3, [r7, #50]	; 0x32
 8004ad6:	e004      	b.n	8004ae2 <xvprintf+0x2ee>
 8004ad8:	f897 3032 	ldrb.w	r3, [r7, #50]	; 0x32
 8004adc:	4618      	mov	r0, r3
 8004ade:	f7ff fe4d 	bl	800477c <xputc>
 8004ae2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8004ae4:	f003 0302 	and.w	r3, r3, #2
 8004ae8:	2b00      	cmp	r3, #0
 8004aea:	d105      	bne.n	8004af8 <xvprintf+0x304>
 8004aec:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8004aee:	1c5a      	adds	r2, r3, #1
 8004af0:	63fa      	str	r2, [r7, #60]	; 0x3c
 8004af2:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8004af4:	429a      	cmp	r2, r3
 8004af6:	d8ef      	bhi.n	8004ad8 <xvprintf+0x2e4>
 8004af8:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8004afa:	3b01      	subs	r3, #1
 8004afc:	643b      	str	r3, [r7, #64]	; 0x40
 8004afe:	f107 020c 	add.w	r2, r7, #12
 8004b02:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8004b04:	4413      	add	r3, r2
 8004b06:	781b      	ldrb	r3, [r3, #0]
 8004b08:	4618      	mov	r0, r3
 8004b0a:	f7ff fe37 	bl	800477c <xputc>
 8004b0e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8004b10:	2b00      	cmp	r3, #0
 8004b12:	d1f1      	bne.n	8004af8 <xvprintf+0x304>
 8004b14:	e002      	b.n	8004b1c <xvprintf+0x328>
 8004b16:	2020      	movs	r0, #32
 8004b18:	f7ff fe30 	bl	800477c <xputc>
 8004b1c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8004b1e:	1c5a      	adds	r2, r3, #1
 8004b20:	63fa      	str	r2, [r7, #60]	; 0x3c
 8004b22:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8004b24:	429a      	cmp	r2, r3
 8004b26:	d8f6      	bhi.n	8004b16 <xvprintf+0x322>
 8004b28:	e669      	b.n	80047fe <xvprintf+0xa>
 8004b2a:	bf00      	nop
 8004b2c:	e000      	b.n	8004b30 <xvprintf+0x33c>
 8004b2e:	bf00      	nop
 8004b30:	bf00      	nop
 8004b32:	3748      	adds	r7, #72	; 0x48
 8004b34:	46bd      	mov	sp, r7
 8004b36:	bd80      	pop	{r7, pc}

08004b38 <xprintf>:
 8004b38:	b40f      	push	{r0, r1, r2, r3}
 8004b3a:	b580      	push	{r7, lr}
 8004b3c:	b082      	sub	sp, #8
 8004b3e:	af00      	add	r7, sp, #0
 8004b40:	f107 0314 	add.w	r3, r7, #20
 8004b44:	607b      	str	r3, [r7, #4]
 8004b46:	6879      	ldr	r1, [r7, #4]
 8004b48:	6938      	ldr	r0, [r7, #16]
 8004b4a:	f7ff fe53 	bl	80047f4 <xvprintf>
 8004b4e:	bf00      	nop
 8004b50:	3708      	adds	r7, #8
 8004b52:	46bd      	mov	sp, r7
 8004b54:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8004b58:	b004      	add	sp, #16
 8004b5a:	4770      	bx	lr

08004b5c <vListInitialise>:
 8004b5c:	b480      	push	{r7}
 8004b5e:	b083      	sub	sp, #12
 8004b60:	af00      	add	r7, sp, #0
 8004b62:	6078      	str	r0, [r7, #4]
 8004b64:	687b      	ldr	r3, [r7, #4]
 8004b66:	f103 0208 	add.w	r2, r3, #8
 8004b6a:	687b      	ldr	r3, [r7, #4]
 8004b6c:	605a      	str	r2, [r3, #4]
 8004b6e:	687b      	ldr	r3, [r7, #4]
 8004b70:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8004b74:	609a      	str	r2, [r3, #8]
 8004b76:	687b      	ldr	r3, [r7, #4]
 8004b78:	f103 0208 	add.w	r2, r3, #8
 8004b7c:	687b      	ldr	r3, [r7, #4]
 8004b7e:	60da      	str	r2, [r3, #12]
 8004b80:	687b      	ldr	r3, [r7, #4]
 8004b82:	f103 0208 	add.w	r2, r3, #8
 8004b86:	687b      	ldr	r3, [r7, #4]
 8004b88:	611a      	str	r2, [r3, #16]
 8004b8a:	687b      	ldr	r3, [r7, #4]
 8004b8c:	2200      	movs	r2, #0
 8004b8e:	601a      	str	r2, [r3, #0]
 8004b90:	bf00      	nop
 8004b92:	370c      	adds	r7, #12
 8004b94:	46bd      	mov	sp, r7
 8004b96:	bc80      	pop	{r7}
 8004b98:	4770      	bx	lr

08004b9a <vListInitialiseItem>:
 8004b9a:	b480      	push	{r7}
 8004b9c:	b083      	sub	sp, #12
 8004b9e:	af00      	add	r7, sp, #0
 8004ba0:	6078      	str	r0, [r7, #4]
 8004ba2:	687b      	ldr	r3, [r7, #4]
 8004ba4:	2200      	movs	r2, #0
 8004ba6:	611a      	str	r2, [r3, #16]
 8004ba8:	bf00      	nop
 8004baa:	370c      	adds	r7, #12
 8004bac:	46bd      	mov	sp, r7
 8004bae:	bc80      	pop	{r7}
 8004bb0:	4770      	bx	lr

08004bb2 <vListInsertEnd>:
 8004bb2:	b480      	push	{r7}
 8004bb4:	b085      	sub	sp, #20
 8004bb6:	af00      	add	r7, sp, #0
 8004bb8:	6078      	str	r0, [r7, #4]
 8004bba:	6039      	str	r1, [r7, #0]
 8004bbc:	687b      	ldr	r3, [r7, #4]
 8004bbe:	685b      	ldr	r3, [r3, #4]
 8004bc0:	60fb      	str	r3, [r7, #12]
 8004bc2:	683b      	ldr	r3, [r7, #0]
 8004bc4:	68fa      	ldr	r2, [r7, #12]
 8004bc6:	605a      	str	r2, [r3, #4]
 8004bc8:	68fb      	ldr	r3, [r7, #12]
 8004bca:	689a      	ldr	r2, [r3, #8]
 8004bcc:	683b      	ldr	r3, [r7, #0]
 8004bce:	609a      	str	r2, [r3, #8]
 8004bd0:	68fb      	ldr	r3, [r7, #12]
 8004bd2:	689b      	ldr	r3, [r3, #8]
 8004bd4:	683a      	ldr	r2, [r7, #0]
 8004bd6:	605a      	str	r2, [r3, #4]
 8004bd8:	68fb      	ldr	r3, [r7, #12]
 8004bda:	683a      	ldr	r2, [r7, #0]
 8004bdc:	609a      	str	r2, [r3, #8]
 8004bde:	683b      	ldr	r3, [r7, #0]
 8004be0:	687a      	ldr	r2, [r7, #4]
 8004be2:	611a      	str	r2, [r3, #16]
 8004be4:	687b      	ldr	r3, [r7, #4]
 8004be6:	681b      	ldr	r3, [r3, #0]
 8004be8:	1c5a      	adds	r2, r3, #1
 8004bea:	687b      	ldr	r3, [r7, #4]
 8004bec:	601a      	str	r2, [r3, #0]
 8004bee:	bf00      	nop
 8004bf0:	3714      	adds	r7, #20
 8004bf2:	46bd      	mov	sp, r7
 8004bf4:	bc80      	pop	{r7}
 8004bf6:	4770      	bx	lr

08004bf8 <vListInsert>:
 8004bf8:	b480      	push	{r7}
 8004bfa:	b085      	sub	sp, #20
 8004bfc:	af00      	add	r7, sp, #0
 8004bfe:	6078      	str	r0, [r7, #4]
 8004c00:	6039      	str	r1, [r7, #0]
 8004c02:	683b      	ldr	r3, [r7, #0]
 8004c04:	681b      	ldr	r3, [r3, #0]
 8004c06:	60bb      	str	r3, [r7, #8]
 8004c08:	68bb      	ldr	r3, [r7, #8]
 8004c0a:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8004c0e:	d103      	bne.n	8004c18 <vListInsert+0x20>
 8004c10:	687b      	ldr	r3, [r7, #4]
 8004c12:	691b      	ldr	r3, [r3, #16]
 8004c14:	60fb      	str	r3, [r7, #12]
 8004c16:	e00c      	b.n	8004c32 <vListInsert+0x3a>
 8004c18:	687b      	ldr	r3, [r7, #4]
 8004c1a:	3308      	adds	r3, #8
 8004c1c:	60fb      	str	r3, [r7, #12]
 8004c1e:	e002      	b.n	8004c26 <vListInsert+0x2e>
 8004c20:	68fb      	ldr	r3, [r7, #12]
 8004c22:	685b      	ldr	r3, [r3, #4]
 8004c24:	60fb      	str	r3, [r7, #12]
 8004c26:	68fb      	ldr	r3, [r7, #12]
 8004c28:	685b      	ldr	r3, [r3, #4]
 8004c2a:	681b      	ldr	r3, [r3, #0]
 8004c2c:	68ba      	ldr	r2, [r7, #8]
 8004c2e:	429a      	cmp	r2, r3
 8004c30:	d2f6      	bcs.n	8004c20 <vListInsert+0x28>
 8004c32:	68fb      	ldr	r3, [r7, #12]
 8004c34:	685a      	ldr	r2, [r3, #4]
 8004c36:	683b      	ldr	r3, [r7, #0]
 8004c38:	605a      	str	r2, [r3, #4]
 8004c3a:	683b      	ldr	r3, [r7, #0]
 8004c3c:	685b      	ldr	r3, [r3, #4]
 8004c3e:	683a      	ldr	r2, [r7, #0]
 8004c40:	609a      	str	r2, [r3, #8]
 8004c42:	683b      	ldr	r3, [r7, #0]
 8004c44:	68fa      	ldr	r2, [r7, #12]
 8004c46:	609a      	str	r2, [r3, #8]
 8004c48:	68fb      	ldr	r3, [r7, #12]
 8004c4a:	683a      	ldr	r2, [r7, #0]
 8004c4c:	605a      	str	r2, [r3, #4]
 8004c4e:	683b      	ldr	r3, [r7, #0]
 8004c50:	687a      	ldr	r2, [r7, #4]
 8004c52:	611a      	str	r2, [r3, #16]
 8004c54:	687b      	ldr	r3, [r7, #4]
 8004c56:	681b      	ldr	r3, [r3, #0]
 8004c58:	1c5a      	adds	r2, r3, #1
 8004c5a:	687b      	ldr	r3, [r7, #4]
 8004c5c:	601a      	str	r2, [r3, #0]
 8004c5e:	bf00      	nop
 8004c60:	3714      	adds	r7, #20
 8004c62:	46bd      	mov	sp, r7
 8004c64:	bc80      	pop	{r7}
 8004c66:	4770      	bx	lr

08004c68 <uxListRemove>:
 8004c68:	b480      	push	{r7}
 8004c6a:	b085      	sub	sp, #20
 8004c6c:	af00      	add	r7, sp, #0
 8004c6e:	6078      	str	r0, [r7, #4]
 8004c70:	687b      	ldr	r3, [r7, #4]
 8004c72:	691b      	ldr	r3, [r3, #16]
 8004c74:	60fb      	str	r3, [r7, #12]
 8004c76:	687b      	ldr	r3, [r7, #4]
 8004c78:	685b      	ldr	r3, [r3, #4]
 8004c7a:	687a      	ldr	r2, [r7, #4]
 8004c7c:	6892      	ldr	r2, [r2, #8]
 8004c7e:	609a      	str	r2, [r3, #8]
 8004c80:	687b      	ldr	r3, [r7, #4]
 8004c82:	689b      	ldr	r3, [r3, #8]
 8004c84:	687a      	ldr	r2, [r7, #4]
 8004c86:	6852      	ldr	r2, [r2, #4]
 8004c88:	605a      	str	r2, [r3, #4]
 8004c8a:	68fb      	ldr	r3, [r7, #12]
 8004c8c:	685b      	ldr	r3, [r3, #4]
 8004c8e:	687a      	ldr	r2, [r7, #4]
 8004c90:	429a      	cmp	r2, r3
 8004c92:	d103      	bne.n	8004c9c <uxListRemove+0x34>
 8004c94:	687b      	ldr	r3, [r7, #4]
 8004c96:	689a      	ldr	r2, [r3, #8]
 8004c98:	68fb      	ldr	r3, [r7, #12]
 8004c9a:	605a      	str	r2, [r3, #4]
 8004c9c:	687b      	ldr	r3, [r7, #4]
 8004c9e:	2200      	movs	r2, #0
 8004ca0:	611a      	str	r2, [r3, #16]
 8004ca2:	68fb      	ldr	r3, [r7, #12]
 8004ca4:	681b      	ldr	r3, [r3, #0]
 8004ca6:	1e5a      	subs	r2, r3, #1
 8004ca8:	68fb      	ldr	r3, [r7, #12]
 8004caa:	601a      	str	r2, [r3, #0]
 8004cac:	68fb      	ldr	r3, [r7, #12]
 8004cae:	681b      	ldr	r3, [r3, #0]
 8004cb0:	4618      	mov	r0, r3
 8004cb2:	3714      	adds	r7, #20
 8004cb4:	46bd      	mov	sp, r7
 8004cb6:	bc80      	pop	{r7}
 8004cb8:	4770      	bx	lr
	...

08004cbc <xQueueGenericReset>:
 8004cbc:	b580      	push	{r7, lr}
 8004cbe:	b084      	sub	sp, #16
 8004cc0:	af00      	add	r7, sp, #0
 8004cc2:	6078      	str	r0, [r7, #4]
 8004cc4:	6039      	str	r1, [r7, #0]
 8004cc6:	687b      	ldr	r3, [r7, #4]
 8004cc8:	60fb      	str	r3, [r7, #12]
 8004cca:	68fb      	ldr	r3, [r7, #12]
 8004ccc:	2b00      	cmp	r3, #0
 8004cce:	d109      	bne.n	8004ce4 <xQueueGenericReset+0x28>
 8004cd0:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004cd4:	f383 8811 	msr	BASEPRI, r3
 8004cd8:	f3bf 8f6f 	isb	sy
 8004cdc:	f3bf 8f4f 	dsb	sy
 8004ce0:	60bb      	str	r3, [r7, #8]
 8004ce2:	e7fe      	b.n	8004ce2 <xQueueGenericReset+0x26>
 8004ce4:	f002 f88e 	bl	8006e04 <vPortEnterCritical>
 8004ce8:	68fb      	ldr	r3, [r7, #12]
 8004cea:	681a      	ldr	r2, [r3, #0]
 8004cec:	68fb      	ldr	r3, [r7, #12]
 8004cee:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8004cf0:	68f9      	ldr	r1, [r7, #12]
 8004cf2:	6c09      	ldr	r1, [r1, #64]	; 0x40
 8004cf4:	fb01 f303 	mul.w	r3, r1, r3
 8004cf8:	441a      	add	r2, r3
 8004cfa:	68fb      	ldr	r3, [r7, #12]
 8004cfc:	609a      	str	r2, [r3, #8]
 8004cfe:	68fb      	ldr	r3, [r7, #12]
 8004d00:	2200      	movs	r2, #0
 8004d02:	639a      	str	r2, [r3, #56]	; 0x38
 8004d04:	68fb      	ldr	r3, [r7, #12]
 8004d06:	681a      	ldr	r2, [r3, #0]
 8004d08:	68fb      	ldr	r3, [r7, #12]
 8004d0a:	605a      	str	r2, [r3, #4]
 8004d0c:	68fb      	ldr	r3, [r7, #12]
 8004d0e:	681a      	ldr	r2, [r3, #0]
 8004d10:	68fb      	ldr	r3, [r7, #12]
 8004d12:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8004d14:	3b01      	subs	r3, #1
 8004d16:	68f9      	ldr	r1, [r7, #12]
 8004d18:	6c09      	ldr	r1, [r1, #64]	; 0x40
 8004d1a:	fb01 f303 	mul.w	r3, r1, r3
 8004d1e:	441a      	add	r2, r3
 8004d20:	68fb      	ldr	r3, [r7, #12]
 8004d22:	60da      	str	r2, [r3, #12]
 8004d24:	68fb      	ldr	r3, [r7, #12]
 8004d26:	22ff      	movs	r2, #255	; 0xff
 8004d28:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 8004d2c:	68fb      	ldr	r3, [r7, #12]
 8004d2e:	22ff      	movs	r2, #255	; 0xff
 8004d30:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 8004d34:	683b      	ldr	r3, [r7, #0]
 8004d36:	2b00      	cmp	r3, #0
 8004d38:	d114      	bne.n	8004d64 <xQueueGenericReset+0xa8>
 8004d3a:	68fb      	ldr	r3, [r7, #12]
 8004d3c:	691b      	ldr	r3, [r3, #16]
 8004d3e:	2b00      	cmp	r3, #0
 8004d40:	d01a      	beq.n	8004d78 <xQueueGenericReset+0xbc>
 8004d42:	68fb      	ldr	r3, [r7, #12]
 8004d44:	3310      	adds	r3, #16
 8004d46:	4618      	mov	r0, r3
 8004d48:	f001 f8ec 	bl	8005f24 <xTaskRemoveFromEventList>
 8004d4c:	4603      	mov	r3, r0
 8004d4e:	2b00      	cmp	r3, #0
 8004d50:	d012      	beq.n	8004d78 <xQueueGenericReset+0xbc>
 8004d52:	4b0d      	ldr	r3, [pc, #52]	; (8004d88 <xQueueGenericReset+0xcc>)
 8004d54:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8004d58:	601a      	str	r2, [r3, #0]
 8004d5a:	f3bf 8f4f 	dsb	sy
 8004d5e:	f3bf 8f6f 	isb	sy
 8004d62:	e009      	b.n	8004d78 <xQueueGenericReset+0xbc>
 8004d64:	68fb      	ldr	r3, [r7, #12]
 8004d66:	3310      	adds	r3, #16
 8004d68:	4618      	mov	r0, r3
 8004d6a:	f7ff fef7 	bl	8004b5c <vListInitialise>
 8004d6e:	68fb      	ldr	r3, [r7, #12]
 8004d70:	3324      	adds	r3, #36	; 0x24
 8004d72:	4618      	mov	r0, r3
 8004d74:	f7ff fef2 	bl	8004b5c <vListInitialise>
 8004d78:	f002 f872 	bl	8006e60 <vPortExitCritical>
 8004d7c:	2301      	movs	r3, #1
 8004d7e:	4618      	mov	r0, r3
 8004d80:	3710      	adds	r7, #16
 8004d82:	46bd      	mov	sp, r7
 8004d84:	bd80      	pop	{r7, pc}
 8004d86:	bf00      	nop
 8004d88:	e000ed04 	.word	0xe000ed04

08004d8c <xQueueGenericCreateStatic>:
 8004d8c:	b580      	push	{r7, lr}
 8004d8e:	b08e      	sub	sp, #56	; 0x38
 8004d90:	af02      	add	r7, sp, #8
 8004d92:	60f8      	str	r0, [r7, #12]
 8004d94:	60b9      	str	r1, [r7, #8]
 8004d96:	607a      	str	r2, [r7, #4]
 8004d98:	603b      	str	r3, [r7, #0]
 8004d9a:	68fb      	ldr	r3, [r7, #12]
 8004d9c:	2b00      	cmp	r3, #0
 8004d9e:	d109      	bne.n	8004db4 <xQueueGenericCreateStatic+0x28>
 8004da0:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004da4:	f383 8811 	msr	BASEPRI, r3
 8004da8:	f3bf 8f6f 	isb	sy
 8004dac:	f3bf 8f4f 	dsb	sy
 8004db0:	62bb      	str	r3, [r7, #40]	; 0x28
 8004db2:	e7fe      	b.n	8004db2 <xQueueGenericCreateStatic+0x26>
 8004db4:	683b      	ldr	r3, [r7, #0]
 8004db6:	2b00      	cmp	r3, #0
 8004db8:	d109      	bne.n	8004dce <xQueueGenericCreateStatic+0x42>
 8004dba:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004dbe:	f383 8811 	msr	BASEPRI, r3
 8004dc2:	f3bf 8f6f 	isb	sy
 8004dc6:	f3bf 8f4f 	dsb	sy
 8004dca:	627b      	str	r3, [r7, #36]	; 0x24
 8004dcc:	e7fe      	b.n	8004dcc <xQueueGenericCreateStatic+0x40>
 8004dce:	687b      	ldr	r3, [r7, #4]
 8004dd0:	2b00      	cmp	r3, #0
 8004dd2:	d002      	beq.n	8004dda <xQueueGenericCreateStatic+0x4e>
 8004dd4:	68bb      	ldr	r3, [r7, #8]
 8004dd6:	2b00      	cmp	r3, #0
 8004dd8:	d001      	beq.n	8004dde <xQueueGenericCreateStatic+0x52>
 8004dda:	2301      	movs	r3, #1
 8004ddc:	e000      	b.n	8004de0 <xQueueGenericCreateStatic+0x54>
 8004dde:	2300      	movs	r3, #0
 8004de0:	2b00      	cmp	r3, #0
 8004de2:	d109      	bne.n	8004df8 <xQueueGenericCreateStatic+0x6c>
 8004de4:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004de8:	f383 8811 	msr	BASEPRI, r3
 8004dec:	f3bf 8f6f 	isb	sy
 8004df0:	f3bf 8f4f 	dsb	sy
 8004df4:	623b      	str	r3, [r7, #32]
 8004df6:	e7fe      	b.n	8004df6 <xQueueGenericCreateStatic+0x6a>
 8004df8:	687b      	ldr	r3, [r7, #4]
 8004dfa:	2b00      	cmp	r3, #0
 8004dfc:	d102      	bne.n	8004e04 <xQueueGenericCreateStatic+0x78>
 8004dfe:	68bb      	ldr	r3, [r7, #8]
 8004e00:	2b00      	cmp	r3, #0
 8004e02:	d101      	bne.n	8004e08 <xQueueGenericCreateStatic+0x7c>
 8004e04:	2301      	movs	r3, #1
 8004e06:	e000      	b.n	8004e0a <xQueueGenericCreateStatic+0x7e>
 8004e08:	2300      	movs	r3, #0
 8004e0a:	2b00      	cmp	r3, #0
 8004e0c:	d109      	bne.n	8004e22 <xQueueGenericCreateStatic+0x96>
 8004e0e:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004e12:	f383 8811 	msr	BASEPRI, r3
 8004e16:	f3bf 8f6f 	isb	sy
 8004e1a:	f3bf 8f4f 	dsb	sy
 8004e1e:	61fb      	str	r3, [r7, #28]
 8004e20:	e7fe      	b.n	8004e20 <xQueueGenericCreateStatic+0x94>
 8004e22:	2350      	movs	r3, #80	; 0x50
 8004e24:	617b      	str	r3, [r7, #20]
 8004e26:	697b      	ldr	r3, [r7, #20]
 8004e28:	2b50      	cmp	r3, #80	; 0x50
 8004e2a:	d009      	beq.n	8004e40 <xQueueGenericCreateStatic+0xb4>
 8004e2c:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004e30:	f383 8811 	msr	BASEPRI, r3
 8004e34:	f3bf 8f6f 	isb	sy
 8004e38:	f3bf 8f4f 	dsb	sy
 8004e3c:	61bb      	str	r3, [r7, #24]
 8004e3e:	e7fe      	b.n	8004e3e <xQueueGenericCreateStatic+0xb2>
 8004e40:	697b      	ldr	r3, [r7, #20]
 8004e42:	683b      	ldr	r3, [r7, #0]
 8004e44:	62fb      	str	r3, [r7, #44]	; 0x2c
 8004e46:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8004e48:	2b00      	cmp	r3, #0
 8004e4a:	d00d      	beq.n	8004e68 <xQueueGenericCreateStatic+0xdc>
 8004e4c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8004e4e:	2201      	movs	r2, #1
 8004e50:	f883 2046 	strb.w	r2, [r3, #70]	; 0x46
 8004e54:	f897 2038 	ldrb.w	r2, [r7, #56]	; 0x38
 8004e58:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8004e5a:	9300      	str	r3, [sp, #0]
 8004e5c:	4613      	mov	r3, r2
 8004e5e:	687a      	ldr	r2, [r7, #4]
 8004e60:	68b9      	ldr	r1, [r7, #8]
 8004e62:	68f8      	ldr	r0, [r7, #12]
 8004e64:	f000 f805 	bl	8004e72 <prvInitialiseNewQueue>
 8004e68:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8004e6a:	4618      	mov	r0, r3
 8004e6c:	3730      	adds	r7, #48	; 0x30
 8004e6e:	46bd      	mov	sp, r7
 8004e70:	bd80      	pop	{r7, pc}

08004e72 <prvInitialiseNewQueue>:
 8004e72:	b580      	push	{r7, lr}
 8004e74:	b084      	sub	sp, #16
 8004e76:	af00      	add	r7, sp, #0
 8004e78:	60f8      	str	r0, [r7, #12]
 8004e7a:	60b9      	str	r1, [r7, #8]
 8004e7c:	607a      	str	r2, [r7, #4]
 8004e7e:	70fb      	strb	r3, [r7, #3]
 8004e80:	68bb      	ldr	r3, [r7, #8]
 8004e82:	2b00      	cmp	r3, #0
 8004e84:	d103      	bne.n	8004e8e <prvInitialiseNewQueue+0x1c>
 8004e86:	69bb      	ldr	r3, [r7, #24]
 8004e88:	69ba      	ldr	r2, [r7, #24]
 8004e8a:	601a      	str	r2, [r3, #0]
 8004e8c:	e002      	b.n	8004e94 <prvInitialiseNewQueue+0x22>
 8004e8e:	69bb      	ldr	r3, [r7, #24]
 8004e90:	687a      	ldr	r2, [r7, #4]
 8004e92:	601a      	str	r2, [r3, #0]
 8004e94:	69bb      	ldr	r3, [r7, #24]
 8004e96:	68fa      	ldr	r2, [r7, #12]
 8004e98:	63da      	str	r2, [r3, #60]	; 0x3c
 8004e9a:	69bb      	ldr	r3, [r7, #24]
 8004e9c:	68ba      	ldr	r2, [r7, #8]
 8004e9e:	641a      	str	r2, [r3, #64]	; 0x40
 8004ea0:	2101      	movs	r1, #1
 8004ea2:	69b8      	ldr	r0, [r7, #24]
 8004ea4:	f7ff ff0a 	bl	8004cbc <xQueueGenericReset>
 8004ea8:	69bb      	ldr	r3, [r7, #24]
 8004eaa:	78fa      	ldrb	r2, [r7, #3]
 8004eac:	f883 204c 	strb.w	r2, [r3, #76]	; 0x4c
 8004eb0:	bf00      	nop
 8004eb2:	3710      	adds	r7, #16
 8004eb4:	46bd      	mov	sp, r7
 8004eb6:	bd80      	pop	{r7, pc}

08004eb8 <xQueueGenericSend>:
 8004eb8:	b580      	push	{r7, lr}
 8004eba:	b08e      	sub	sp, #56	; 0x38
 8004ebc:	af00      	add	r7, sp, #0
 8004ebe:	60f8      	str	r0, [r7, #12]
 8004ec0:	60b9      	str	r1, [r7, #8]
 8004ec2:	607a      	str	r2, [r7, #4]
 8004ec4:	603b      	str	r3, [r7, #0]
 8004ec6:	2300      	movs	r3, #0
 8004ec8:	637b      	str	r3, [r7, #52]	; 0x34
 8004eca:	68fb      	ldr	r3, [r7, #12]
 8004ecc:	633b      	str	r3, [r7, #48]	; 0x30
 8004ece:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004ed0:	2b00      	cmp	r3, #0
 8004ed2:	d109      	bne.n	8004ee8 <xQueueGenericSend+0x30>
 8004ed4:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004ed8:	f383 8811 	msr	BASEPRI, r3
 8004edc:	f3bf 8f6f 	isb	sy
 8004ee0:	f3bf 8f4f 	dsb	sy
 8004ee4:	62bb      	str	r3, [r7, #40]	; 0x28
 8004ee6:	e7fe      	b.n	8004ee6 <xQueueGenericSend+0x2e>
 8004ee8:	68bb      	ldr	r3, [r7, #8]
 8004eea:	2b00      	cmp	r3, #0
 8004eec:	d103      	bne.n	8004ef6 <xQueueGenericSend+0x3e>
 8004eee:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004ef0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8004ef2:	2b00      	cmp	r3, #0
 8004ef4:	d101      	bne.n	8004efa <xQueueGenericSend+0x42>
 8004ef6:	2301      	movs	r3, #1
 8004ef8:	e000      	b.n	8004efc <xQueueGenericSend+0x44>
 8004efa:	2300      	movs	r3, #0
 8004efc:	2b00      	cmp	r3, #0
 8004efe:	d109      	bne.n	8004f14 <xQueueGenericSend+0x5c>
 8004f00:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004f04:	f383 8811 	msr	BASEPRI, r3
 8004f08:	f3bf 8f6f 	isb	sy
 8004f0c:	f3bf 8f4f 	dsb	sy
 8004f10:	627b      	str	r3, [r7, #36]	; 0x24
 8004f12:	e7fe      	b.n	8004f12 <xQueueGenericSend+0x5a>
 8004f14:	683b      	ldr	r3, [r7, #0]
 8004f16:	2b02      	cmp	r3, #2
 8004f18:	d103      	bne.n	8004f22 <xQueueGenericSend+0x6a>
 8004f1a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004f1c:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8004f1e:	2b01      	cmp	r3, #1
 8004f20:	d101      	bne.n	8004f26 <xQueueGenericSend+0x6e>
 8004f22:	2301      	movs	r3, #1
 8004f24:	e000      	b.n	8004f28 <xQueueGenericSend+0x70>
 8004f26:	2300      	movs	r3, #0
 8004f28:	2b00      	cmp	r3, #0
 8004f2a:	d109      	bne.n	8004f40 <xQueueGenericSend+0x88>
 8004f2c:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004f30:	f383 8811 	msr	BASEPRI, r3
 8004f34:	f3bf 8f6f 	isb	sy
 8004f38:	f3bf 8f4f 	dsb	sy
 8004f3c:	623b      	str	r3, [r7, #32]
 8004f3e:	e7fe      	b.n	8004f3e <xQueueGenericSend+0x86>
 8004f40:	f001 f9bc 	bl	80062bc <xTaskGetSchedulerState>
 8004f44:	4603      	mov	r3, r0
 8004f46:	2b00      	cmp	r3, #0
 8004f48:	d102      	bne.n	8004f50 <xQueueGenericSend+0x98>
 8004f4a:	687b      	ldr	r3, [r7, #4]
 8004f4c:	2b00      	cmp	r3, #0
 8004f4e:	d101      	bne.n	8004f54 <xQueueGenericSend+0x9c>
 8004f50:	2301      	movs	r3, #1
 8004f52:	e000      	b.n	8004f56 <xQueueGenericSend+0x9e>
 8004f54:	2300      	movs	r3, #0
 8004f56:	2b00      	cmp	r3, #0
 8004f58:	d109      	bne.n	8004f6e <xQueueGenericSend+0xb6>
 8004f5a:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004f5e:	f383 8811 	msr	BASEPRI, r3
 8004f62:	f3bf 8f6f 	isb	sy
 8004f66:	f3bf 8f4f 	dsb	sy
 8004f6a:	61fb      	str	r3, [r7, #28]
 8004f6c:	e7fe      	b.n	8004f6c <xQueueGenericSend+0xb4>
 8004f6e:	f001 ff49 	bl	8006e04 <vPortEnterCritical>
 8004f72:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004f74:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004f76:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004f78:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8004f7a:	429a      	cmp	r2, r3
 8004f7c:	d302      	bcc.n	8004f84 <xQueueGenericSend+0xcc>
 8004f7e:	683b      	ldr	r3, [r7, #0]
 8004f80:	2b02      	cmp	r3, #2
 8004f82:	d129      	bne.n	8004fd8 <xQueueGenericSend+0x120>
 8004f84:	683a      	ldr	r2, [r7, #0]
 8004f86:	68b9      	ldr	r1, [r7, #8]
 8004f88:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8004f8a:	f000 f9ff 	bl	800538c <prvCopyDataToQueue>
 8004f8e:	62f8      	str	r0, [r7, #44]	; 0x2c
 8004f90:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004f92:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8004f94:	2b00      	cmp	r3, #0
 8004f96:	d010      	beq.n	8004fba <xQueueGenericSend+0x102>
 8004f98:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004f9a:	3324      	adds	r3, #36	; 0x24
 8004f9c:	4618      	mov	r0, r3
 8004f9e:	f000 ffc1 	bl	8005f24 <xTaskRemoveFromEventList>
 8004fa2:	4603      	mov	r3, r0
 8004fa4:	2b00      	cmp	r3, #0
 8004fa6:	d013      	beq.n	8004fd0 <xQueueGenericSend+0x118>
 8004fa8:	4b3f      	ldr	r3, [pc, #252]	; (80050a8 <xQueueGenericSend+0x1f0>)
 8004faa:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8004fae:	601a      	str	r2, [r3, #0]
 8004fb0:	f3bf 8f4f 	dsb	sy
 8004fb4:	f3bf 8f6f 	isb	sy
 8004fb8:	e00a      	b.n	8004fd0 <xQueueGenericSend+0x118>
 8004fba:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8004fbc:	2b00      	cmp	r3, #0
 8004fbe:	d007      	beq.n	8004fd0 <xQueueGenericSend+0x118>
 8004fc0:	4b39      	ldr	r3, [pc, #228]	; (80050a8 <xQueueGenericSend+0x1f0>)
 8004fc2:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8004fc6:	601a      	str	r2, [r3, #0]
 8004fc8:	f3bf 8f4f 	dsb	sy
 8004fcc:	f3bf 8f6f 	isb	sy
 8004fd0:	f001 ff46 	bl	8006e60 <vPortExitCritical>
 8004fd4:	2301      	movs	r3, #1
 8004fd6:	e063      	b.n	80050a0 <xQueueGenericSend+0x1e8>
 8004fd8:	687b      	ldr	r3, [r7, #4]
 8004fda:	2b00      	cmp	r3, #0
 8004fdc:	d103      	bne.n	8004fe6 <xQueueGenericSend+0x12e>
 8004fde:	f001 ff3f 	bl	8006e60 <vPortExitCritical>
 8004fe2:	2300      	movs	r3, #0
 8004fe4:	e05c      	b.n	80050a0 <xQueueGenericSend+0x1e8>
 8004fe6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8004fe8:	2b00      	cmp	r3, #0
 8004fea:	d106      	bne.n	8004ffa <xQueueGenericSend+0x142>
 8004fec:	f107 0314 	add.w	r3, r7, #20
 8004ff0:	4618      	mov	r0, r3
 8004ff2:	f000 fff9 	bl	8005fe8 <vTaskInternalSetTimeOutState>
 8004ff6:	2301      	movs	r3, #1
 8004ff8:	637b      	str	r3, [r7, #52]	; 0x34
 8004ffa:	f001 ff31 	bl	8006e60 <vPortExitCritical>
 8004ffe:	f000 fd45 	bl	8005a8c <vTaskSuspendAll>
 8005002:	f001 feff 	bl	8006e04 <vPortEnterCritical>
 8005006:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005008:	f893 3044 	ldrb.w	r3, [r3, #68]	; 0x44
 800500c:	b25b      	sxtb	r3, r3
 800500e:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8005012:	d103      	bne.n	800501c <xQueueGenericSend+0x164>
 8005014:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005016:	2200      	movs	r2, #0
 8005018:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 800501c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800501e:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 8005022:	b25b      	sxtb	r3, r3
 8005024:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8005028:	d103      	bne.n	8005032 <xQueueGenericSend+0x17a>
 800502a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800502c:	2200      	movs	r2, #0
 800502e:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 8005032:	f001 ff15 	bl	8006e60 <vPortExitCritical>
 8005036:	1d3a      	adds	r2, r7, #4
 8005038:	f107 0314 	add.w	r3, r7, #20
 800503c:	4611      	mov	r1, r2
 800503e:	4618      	mov	r0, r3
 8005040:	f000 ffe8 	bl	8006014 <xTaskCheckForTimeOut>
 8005044:	4603      	mov	r3, r0
 8005046:	2b00      	cmp	r3, #0
 8005048:	d124      	bne.n	8005094 <xQueueGenericSend+0x1dc>
 800504a:	6b38      	ldr	r0, [r7, #48]	; 0x30
 800504c:	f000 fa96 	bl	800557c <prvIsQueueFull>
 8005050:	4603      	mov	r3, r0
 8005052:	2b00      	cmp	r3, #0
 8005054:	d018      	beq.n	8005088 <xQueueGenericSend+0x1d0>
 8005056:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005058:	3310      	adds	r3, #16
 800505a:	687a      	ldr	r2, [r7, #4]
 800505c:	4611      	mov	r1, r2
 800505e:	4618      	mov	r0, r3
 8005060:	f000 ff12 	bl	8005e88 <vTaskPlaceOnEventList>
 8005064:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8005066:	f000 fa21 	bl	80054ac <prvUnlockQueue>
 800506a:	f000 fd1d 	bl	8005aa8 <xTaskResumeAll>
 800506e:	4603      	mov	r3, r0
 8005070:	2b00      	cmp	r3, #0
 8005072:	f47f af7c 	bne.w	8004f6e <xQueueGenericSend+0xb6>
 8005076:	4b0c      	ldr	r3, [pc, #48]	; (80050a8 <xQueueGenericSend+0x1f0>)
 8005078:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800507c:	601a      	str	r2, [r3, #0]
 800507e:	f3bf 8f4f 	dsb	sy
 8005082:	f3bf 8f6f 	isb	sy
 8005086:	e772      	b.n	8004f6e <xQueueGenericSend+0xb6>
 8005088:	6b38      	ldr	r0, [r7, #48]	; 0x30
 800508a:	f000 fa0f 	bl	80054ac <prvUnlockQueue>
 800508e:	f000 fd0b 	bl	8005aa8 <xTaskResumeAll>
 8005092:	e76c      	b.n	8004f6e <xQueueGenericSend+0xb6>
 8005094:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8005096:	f000 fa09 	bl	80054ac <prvUnlockQueue>
 800509a:	f000 fd05 	bl	8005aa8 <xTaskResumeAll>
 800509e:	2300      	movs	r3, #0
 80050a0:	4618      	mov	r0, r3
 80050a2:	3738      	adds	r7, #56	; 0x38
 80050a4:	46bd      	mov	sp, r7
 80050a6:	bd80      	pop	{r7, pc}
 80050a8:	e000ed04 	.word	0xe000ed04

080050ac <xQueueGenericSendFromISR>:
 80050ac:	b580      	push	{r7, lr}
 80050ae:	b08e      	sub	sp, #56	; 0x38
 80050b0:	af00      	add	r7, sp, #0
 80050b2:	60f8      	str	r0, [r7, #12]
 80050b4:	60b9      	str	r1, [r7, #8]
 80050b6:	607a      	str	r2, [r7, #4]
 80050b8:	603b      	str	r3, [r7, #0]
 80050ba:	68fb      	ldr	r3, [r7, #12]
 80050bc:	633b      	str	r3, [r7, #48]	; 0x30
 80050be:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80050c0:	2b00      	cmp	r3, #0
 80050c2:	d109      	bne.n	80050d8 <xQueueGenericSendFromISR+0x2c>
 80050c4:	f04f 0350 	mov.w	r3, #80	; 0x50
 80050c8:	f383 8811 	msr	BASEPRI, r3
 80050cc:	f3bf 8f6f 	isb	sy
 80050d0:	f3bf 8f4f 	dsb	sy
 80050d4:	627b      	str	r3, [r7, #36]	; 0x24
 80050d6:	e7fe      	b.n	80050d6 <xQueueGenericSendFromISR+0x2a>
 80050d8:	68bb      	ldr	r3, [r7, #8]
 80050da:	2b00      	cmp	r3, #0
 80050dc:	d103      	bne.n	80050e6 <xQueueGenericSendFromISR+0x3a>
 80050de:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80050e0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80050e2:	2b00      	cmp	r3, #0
 80050e4:	d101      	bne.n	80050ea <xQueueGenericSendFromISR+0x3e>
 80050e6:	2301      	movs	r3, #1
 80050e8:	e000      	b.n	80050ec <xQueueGenericSendFromISR+0x40>
 80050ea:	2300      	movs	r3, #0
 80050ec:	2b00      	cmp	r3, #0
 80050ee:	d109      	bne.n	8005104 <xQueueGenericSendFromISR+0x58>
 80050f0:	f04f 0350 	mov.w	r3, #80	; 0x50
 80050f4:	f383 8811 	msr	BASEPRI, r3
 80050f8:	f3bf 8f6f 	isb	sy
 80050fc:	f3bf 8f4f 	dsb	sy
 8005100:	623b      	str	r3, [r7, #32]
 8005102:	e7fe      	b.n	8005102 <xQueueGenericSendFromISR+0x56>
 8005104:	683b      	ldr	r3, [r7, #0]
 8005106:	2b02      	cmp	r3, #2
 8005108:	d103      	bne.n	8005112 <xQueueGenericSendFromISR+0x66>
 800510a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800510c:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 800510e:	2b01      	cmp	r3, #1
 8005110:	d101      	bne.n	8005116 <xQueueGenericSendFromISR+0x6a>
 8005112:	2301      	movs	r3, #1
 8005114:	e000      	b.n	8005118 <xQueueGenericSendFromISR+0x6c>
 8005116:	2300      	movs	r3, #0
 8005118:	2b00      	cmp	r3, #0
 800511a:	d109      	bne.n	8005130 <xQueueGenericSendFromISR+0x84>
 800511c:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005120:	f383 8811 	msr	BASEPRI, r3
 8005124:	f3bf 8f6f 	isb	sy
 8005128:	f3bf 8f4f 	dsb	sy
 800512c:	61fb      	str	r3, [r7, #28]
 800512e:	e7fe      	b.n	800512e <xQueueGenericSendFromISR+0x82>
 8005130:	f001 ff1c 	bl	8006f6c <vPortValidateInterruptPriority>
 8005134:	f3ef 8211 	mrs	r2, BASEPRI
 8005138:	f04f 0350 	mov.w	r3, #80	; 0x50
 800513c:	f383 8811 	msr	BASEPRI, r3
 8005140:	f3bf 8f6f 	isb	sy
 8005144:	f3bf 8f4f 	dsb	sy
 8005148:	61ba      	str	r2, [r7, #24]
 800514a:	617b      	str	r3, [r7, #20]
 800514c:	69bb      	ldr	r3, [r7, #24]
 800514e:	62fb      	str	r3, [r7, #44]	; 0x2c
 8005150:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005152:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8005154:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005156:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8005158:	429a      	cmp	r2, r3
 800515a:	d302      	bcc.n	8005162 <xQueueGenericSendFromISR+0xb6>
 800515c:	683b      	ldr	r3, [r7, #0]
 800515e:	2b02      	cmp	r3, #2
 8005160:	d12c      	bne.n	80051bc <xQueueGenericSendFromISR+0x110>
 8005162:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005164:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 8005168:	f887 302b 	strb.w	r3, [r7, #43]	; 0x2b
 800516c:	683a      	ldr	r2, [r7, #0]
 800516e:	68b9      	ldr	r1, [r7, #8]
 8005170:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8005172:	f000 f90b 	bl	800538c <prvCopyDataToQueue>
 8005176:	f997 302b 	ldrsb.w	r3, [r7, #43]	; 0x2b
 800517a:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 800517e:	d112      	bne.n	80051a6 <xQueueGenericSendFromISR+0xfa>
 8005180:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005182:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8005184:	2b00      	cmp	r3, #0
 8005186:	d016      	beq.n	80051b6 <xQueueGenericSendFromISR+0x10a>
 8005188:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800518a:	3324      	adds	r3, #36	; 0x24
 800518c:	4618      	mov	r0, r3
 800518e:	f000 fec9 	bl	8005f24 <xTaskRemoveFromEventList>
 8005192:	4603      	mov	r3, r0
 8005194:	2b00      	cmp	r3, #0
 8005196:	d00e      	beq.n	80051b6 <xQueueGenericSendFromISR+0x10a>
 8005198:	687b      	ldr	r3, [r7, #4]
 800519a:	2b00      	cmp	r3, #0
 800519c:	d00b      	beq.n	80051b6 <xQueueGenericSendFromISR+0x10a>
 800519e:	687b      	ldr	r3, [r7, #4]
 80051a0:	2201      	movs	r2, #1
 80051a2:	601a      	str	r2, [r3, #0]
 80051a4:	e007      	b.n	80051b6 <xQueueGenericSendFromISR+0x10a>
 80051a6:	f897 302b 	ldrb.w	r3, [r7, #43]	; 0x2b
 80051aa:	3301      	adds	r3, #1
 80051ac:	b2db      	uxtb	r3, r3
 80051ae:	b25a      	sxtb	r2, r3
 80051b0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80051b2:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 80051b6:	2301      	movs	r3, #1
 80051b8:	637b      	str	r3, [r7, #52]	; 0x34
 80051ba:	e001      	b.n	80051c0 <xQueueGenericSendFromISR+0x114>
 80051bc:	2300      	movs	r3, #0
 80051be:	637b      	str	r3, [r7, #52]	; 0x34
 80051c0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80051c2:	613b      	str	r3, [r7, #16]
 80051c4:	693b      	ldr	r3, [r7, #16]
 80051c6:	f383 8811 	msr	BASEPRI, r3
 80051ca:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80051cc:	4618      	mov	r0, r3
 80051ce:	3738      	adds	r7, #56	; 0x38
 80051d0:	46bd      	mov	sp, r7
 80051d2:	bd80      	pop	{r7, pc}

080051d4 <xQueueReceive>:
 80051d4:	b580      	push	{r7, lr}
 80051d6:	b08c      	sub	sp, #48	; 0x30
 80051d8:	af00      	add	r7, sp, #0
 80051da:	60f8      	str	r0, [r7, #12]
 80051dc:	60b9      	str	r1, [r7, #8]
 80051de:	607a      	str	r2, [r7, #4]
 80051e0:	2300      	movs	r3, #0
 80051e2:	62fb      	str	r3, [r7, #44]	; 0x2c
 80051e4:	68fb      	ldr	r3, [r7, #12]
 80051e6:	62bb      	str	r3, [r7, #40]	; 0x28
 80051e8:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80051ea:	2b00      	cmp	r3, #0
 80051ec:	d109      	bne.n	8005202 <xQueueReceive+0x2e>
 80051ee:	f04f 0350 	mov.w	r3, #80	; 0x50
 80051f2:	f383 8811 	msr	BASEPRI, r3
 80051f6:	f3bf 8f6f 	isb	sy
 80051fa:	f3bf 8f4f 	dsb	sy
 80051fe:	623b      	str	r3, [r7, #32]
 8005200:	e7fe      	b.n	8005200 <xQueueReceive+0x2c>
 8005202:	68bb      	ldr	r3, [r7, #8]
 8005204:	2b00      	cmp	r3, #0
 8005206:	d103      	bne.n	8005210 <xQueueReceive+0x3c>
 8005208:	6abb      	ldr	r3, [r7, #40]	; 0x28
 800520a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800520c:	2b00      	cmp	r3, #0
 800520e:	d101      	bne.n	8005214 <xQueueReceive+0x40>
 8005210:	2301      	movs	r3, #1
 8005212:	e000      	b.n	8005216 <xQueueReceive+0x42>
 8005214:	2300      	movs	r3, #0
 8005216:	2b00      	cmp	r3, #0
 8005218:	d109      	bne.n	800522e <xQueueReceive+0x5a>
 800521a:	f04f 0350 	mov.w	r3, #80	; 0x50
 800521e:	f383 8811 	msr	BASEPRI, r3
 8005222:	f3bf 8f6f 	isb	sy
 8005226:	f3bf 8f4f 	dsb	sy
 800522a:	61fb      	str	r3, [r7, #28]
 800522c:	e7fe      	b.n	800522c <xQueueReceive+0x58>
 800522e:	f001 f845 	bl	80062bc <xTaskGetSchedulerState>
 8005232:	4603      	mov	r3, r0
 8005234:	2b00      	cmp	r3, #0
 8005236:	d102      	bne.n	800523e <xQueueReceive+0x6a>
 8005238:	687b      	ldr	r3, [r7, #4]
 800523a:	2b00      	cmp	r3, #0
 800523c:	d101      	bne.n	8005242 <xQueueReceive+0x6e>
 800523e:	2301      	movs	r3, #1
 8005240:	e000      	b.n	8005244 <xQueueReceive+0x70>
 8005242:	2300      	movs	r3, #0
 8005244:	2b00      	cmp	r3, #0
 8005246:	d109      	bne.n	800525c <xQueueReceive+0x88>
 8005248:	f04f 0350 	mov.w	r3, #80	; 0x50
 800524c:	f383 8811 	msr	BASEPRI, r3
 8005250:	f3bf 8f6f 	isb	sy
 8005254:	f3bf 8f4f 	dsb	sy
 8005258:	61bb      	str	r3, [r7, #24]
 800525a:	e7fe      	b.n	800525a <xQueueReceive+0x86>
 800525c:	f001 fdd2 	bl	8006e04 <vPortEnterCritical>
 8005260:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8005262:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8005264:	627b      	str	r3, [r7, #36]	; 0x24
 8005266:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8005268:	2b00      	cmp	r3, #0
 800526a:	d01f      	beq.n	80052ac <xQueueReceive+0xd8>
 800526c:	68b9      	ldr	r1, [r7, #8]
 800526e:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8005270:	f000 f8f6 	bl	8005460 <prvCopyDataFromQueue>
 8005274:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8005276:	1e5a      	subs	r2, r3, #1
 8005278:	6abb      	ldr	r3, [r7, #40]	; 0x28
 800527a:	639a      	str	r2, [r3, #56]	; 0x38
 800527c:	6abb      	ldr	r3, [r7, #40]	; 0x28
 800527e:	691b      	ldr	r3, [r3, #16]
 8005280:	2b00      	cmp	r3, #0
 8005282:	d00f      	beq.n	80052a4 <xQueueReceive+0xd0>
 8005284:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8005286:	3310      	adds	r3, #16
 8005288:	4618      	mov	r0, r3
 800528a:	f000 fe4b 	bl	8005f24 <xTaskRemoveFromEventList>
 800528e:	4603      	mov	r3, r0
 8005290:	2b00      	cmp	r3, #0
 8005292:	d007      	beq.n	80052a4 <xQueueReceive+0xd0>
 8005294:	4b3c      	ldr	r3, [pc, #240]	; (8005388 <xQueueReceive+0x1b4>)
 8005296:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800529a:	601a      	str	r2, [r3, #0]
 800529c:	f3bf 8f4f 	dsb	sy
 80052a0:	f3bf 8f6f 	isb	sy
 80052a4:	f001 fddc 	bl	8006e60 <vPortExitCritical>
 80052a8:	2301      	movs	r3, #1
 80052aa:	e069      	b.n	8005380 <xQueueReceive+0x1ac>
 80052ac:	687b      	ldr	r3, [r7, #4]
 80052ae:	2b00      	cmp	r3, #0
 80052b0:	d103      	bne.n	80052ba <xQueueReceive+0xe6>
 80052b2:	f001 fdd5 	bl	8006e60 <vPortExitCritical>
 80052b6:	2300      	movs	r3, #0
 80052b8:	e062      	b.n	8005380 <xQueueReceive+0x1ac>
 80052ba:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80052bc:	2b00      	cmp	r3, #0
 80052be:	d106      	bne.n	80052ce <xQueueReceive+0xfa>
 80052c0:	f107 0310 	add.w	r3, r7, #16
 80052c4:	4618      	mov	r0, r3
 80052c6:	f000 fe8f 	bl	8005fe8 <vTaskInternalSetTimeOutState>
 80052ca:	2301      	movs	r3, #1
 80052cc:	62fb      	str	r3, [r7, #44]	; 0x2c
 80052ce:	f001 fdc7 	bl	8006e60 <vPortExitCritical>
 80052d2:	f000 fbdb 	bl	8005a8c <vTaskSuspendAll>
 80052d6:	f001 fd95 	bl	8006e04 <vPortEnterCritical>
 80052da:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80052dc:	f893 3044 	ldrb.w	r3, [r3, #68]	; 0x44
 80052e0:	b25b      	sxtb	r3, r3
 80052e2:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 80052e6:	d103      	bne.n	80052f0 <xQueueReceive+0x11c>
 80052e8:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80052ea:	2200      	movs	r2, #0
 80052ec:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 80052f0:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80052f2:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 80052f6:	b25b      	sxtb	r3, r3
 80052f8:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 80052fc:	d103      	bne.n	8005306 <xQueueReceive+0x132>
 80052fe:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8005300:	2200      	movs	r2, #0
 8005302:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 8005306:	f001 fdab 	bl	8006e60 <vPortExitCritical>
 800530a:	1d3a      	adds	r2, r7, #4
 800530c:	f107 0310 	add.w	r3, r7, #16
 8005310:	4611      	mov	r1, r2
 8005312:	4618      	mov	r0, r3
 8005314:	f000 fe7e 	bl	8006014 <xTaskCheckForTimeOut>
 8005318:	4603      	mov	r3, r0
 800531a:	2b00      	cmp	r3, #0
 800531c:	d123      	bne.n	8005366 <xQueueReceive+0x192>
 800531e:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8005320:	f000 f916 	bl	8005550 <prvIsQueueEmpty>
 8005324:	4603      	mov	r3, r0
 8005326:	2b00      	cmp	r3, #0
 8005328:	d017      	beq.n	800535a <xQueueReceive+0x186>
 800532a:	6abb      	ldr	r3, [r7, #40]	; 0x28
 800532c:	3324      	adds	r3, #36	; 0x24
 800532e:	687a      	ldr	r2, [r7, #4]
 8005330:	4611      	mov	r1, r2
 8005332:	4618      	mov	r0, r3
 8005334:	f000 fda8 	bl	8005e88 <vTaskPlaceOnEventList>
 8005338:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 800533a:	f000 f8b7 	bl	80054ac <prvUnlockQueue>
 800533e:	f000 fbb3 	bl	8005aa8 <xTaskResumeAll>
 8005342:	4603      	mov	r3, r0
 8005344:	2b00      	cmp	r3, #0
 8005346:	d189      	bne.n	800525c <xQueueReceive+0x88>
 8005348:	4b0f      	ldr	r3, [pc, #60]	; (8005388 <xQueueReceive+0x1b4>)
 800534a:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800534e:	601a      	str	r2, [r3, #0]
 8005350:	f3bf 8f4f 	dsb	sy
 8005354:	f3bf 8f6f 	isb	sy
 8005358:	e780      	b.n	800525c <xQueueReceive+0x88>
 800535a:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 800535c:	f000 f8a6 	bl	80054ac <prvUnlockQueue>
 8005360:	f000 fba2 	bl	8005aa8 <xTaskResumeAll>
 8005364:	e77a      	b.n	800525c <xQueueReceive+0x88>
 8005366:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8005368:	f000 f8a0 	bl	80054ac <prvUnlockQueue>
 800536c:	f000 fb9c 	bl	8005aa8 <xTaskResumeAll>
 8005370:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8005372:	f000 f8ed 	bl	8005550 <prvIsQueueEmpty>
 8005376:	4603      	mov	r3, r0
 8005378:	2b00      	cmp	r3, #0
 800537a:	f43f af6f 	beq.w	800525c <xQueueReceive+0x88>
 800537e:	2300      	movs	r3, #0
 8005380:	4618      	mov	r0, r3
 8005382:	3730      	adds	r7, #48	; 0x30
 8005384:	46bd      	mov	sp, r7
 8005386:	bd80      	pop	{r7, pc}
 8005388:	e000ed04 	.word	0xe000ed04

0800538c <prvCopyDataToQueue>:
 800538c:	b580      	push	{r7, lr}
 800538e:	b086      	sub	sp, #24
 8005390:	af00      	add	r7, sp, #0
 8005392:	60f8      	str	r0, [r7, #12]
 8005394:	60b9      	str	r1, [r7, #8]
 8005396:	607a      	str	r2, [r7, #4]
 8005398:	2300      	movs	r3, #0
 800539a:	617b      	str	r3, [r7, #20]
 800539c:	68fb      	ldr	r3, [r7, #12]
 800539e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80053a0:	613b      	str	r3, [r7, #16]
 80053a2:	68fb      	ldr	r3, [r7, #12]
 80053a4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80053a6:	2b00      	cmp	r3, #0
 80053a8:	d10d      	bne.n	80053c6 <prvCopyDataToQueue+0x3a>
 80053aa:	68fb      	ldr	r3, [r7, #12]
 80053ac:	681b      	ldr	r3, [r3, #0]
 80053ae:	2b00      	cmp	r3, #0
 80053b0:	d14d      	bne.n	800544e <prvCopyDataToQueue+0xc2>
 80053b2:	68fb      	ldr	r3, [r7, #12]
 80053b4:	689b      	ldr	r3, [r3, #8]
 80053b6:	4618      	mov	r0, r3
 80053b8:	f000 ff9e 	bl	80062f8 <xTaskPriorityDisinherit>
 80053bc:	6178      	str	r0, [r7, #20]
 80053be:	68fb      	ldr	r3, [r7, #12]
 80053c0:	2200      	movs	r2, #0
 80053c2:	609a      	str	r2, [r3, #8]
 80053c4:	e043      	b.n	800544e <prvCopyDataToQueue+0xc2>
 80053c6:	687b      	ldr	r3, [r7, #4]
 80053c8:	2b00      	cmp	r3, #0
 80053ca:	d119      	bne.n	8005400 <prvCopyDataToQueue+0x74>
 80053cc:	68fb      	ldr	r3, [r7, #12]
 80053ce:	6858      	ldr	r0, [r3, #4]
 80053d0:	68fb      	ldr	r3, [r7, #12]
 80053d2:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80053d4:	461a      	mov	r2, r3
 80053d6:	68b9      	ldr	r1, [r7, #8]
 80053d8:	f001 fed8 	bl	800718c <memcpy>
 80053dc:	68fb      	ldr	r3, [r7, #12]
 80053de:	685a      	ldr	r2, [r3, #4]
 80053e0:	68fb      	ldr	r3, [r7, #12]
 80053e2:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80053e4:	441a      	add	r2, r3
 80053e6:	68fb      	ldr	r3, [r7, #12]
 80053e8:	605a      	str	r2, [r3, #4]
 80053ea:	68fb      	ldr	r3, [r7, #12]
 80053ec:	685a      	ldr	r2, [r3, #4]
 80053ee:	68fb      	ldr	r3, [r7, #12]
 80053f0:	689b      	ldr	r3, [r3, #8]
 80053f2:	429a      	cmp	r2, r3
 80053f4:	d32b      	bcc.n	800544e <prvCopyDataToQueue+0xc2>
 80053f6:	68fb      	ldr	r3, [r7, #12]
 80053f8:	681a      	ldr	r2, [r3, #0]
 80053fa:	68fb      	ldr	r3, [r7, #12]
 80053fc:	605a      	str	r2, [r3, #4]
 80053fe:	e026      	b.n	800544e <prvCopyDataToQueue+0xc2>
 8005400:	68fb      	ldr	r3, [r7, #12]
 8005402:	68d8      	ldr	r0, [r3, #12]
 8005404:	68fb      	ldr	r3, [r7, #12]
 8005406:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8005408:	461a      	mov	r2, r3
 800540a:	68b9      	ldr	r1, [r7, #8]
 800540c:	f001 febe 	bl	800718c <memcpy>
 8005410:	68fb      	ldr	r3, [r7, #12]
 8005412:	68da      	ldr	r2, [r3, #12]
 8005414:	68fb      	ldr	r3, [r7, #12]
 8005416:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8005418:	425b      	negs	r3, r3
 800541a:	441a      	add	r2, r3
 800541c:	68fb      	ldr	r3, [r7, #12]
 800541e:	60da      	str	r2, [r3, #12]
 8005420:	68fb      	ldr	r3, [r7, #12]
 8005422:	68da      	ldr	r2, [r3, #12]
 8005424:	68fb      	ldr	r3, [r7, #12]
 8005426:	681b      	ldr	r3, [r3, #0]
 8005428:	429a      	cmp	r2, r3
 800542a:	d207      	bcs.n	800543c <prvCopyDataToQueue+0xb0>
 800542c:	68fb      	ldr	r3, [r7, #12]
 800542e:	689a      	ldr	r2, [r3, #8]
 8005430:	68fb      	ldr	r3, [r7, #12]
 8005432:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8005434:	425b      	negs	r3, r3
 8005436:	441a      	add	r2, r3
 8005438:	68fb      	ldr	r3, [r7, #12]
 800543a:	60da      	str	r2, [r3, #12]
 800543c:	687b      	ldr	r3, [r7, #4]
 800543e:	2b02      	cmp	r3, #2
 8005440:	d105      	bne.n	800544e <prvCopyDataToQueue+0xc2>
 8005442:	693b      	ldr	r3, [r7, #16]
 8005444:	2b00      	cmp	r3, #0
 8005446:	d002      	beq.n	800544e <prvCopyDataToQueue+0xc2>
 8005448:	693b      	ldr	r3, [r7, #16]
 800544a:	3b01      	subs	r3, #1
 800544c:	613b      	str	r3, [r7, #16]
 800544e:	693b      	ldr	r3, [r7, #16]
 8005450:	1c5a      	adds	r2, r3, #1
 8005452:	68fb      	ldr	r3, [r7, #12]
 8005454:	639a      	str	r2, [r3, #56]	; 0x38
 8005456:	697b      	ldr	r3, [r7, #20]
 8005458:	4618      	mov	r0, r3
 800545a:	3718      	adds	r7, #24
 800545c:	46bd      	mov	sp, r7
 800545e:	bd80      	pop	{r7, pc}

08005460 <prvCopyDataFromQueue>:
 8005460:	b580      	push	{r7, lr}
 8005462:	b082      	sub	sp, #8
 8005464:	af00      	add	r7, sp, #0
 8005466:	6078      	str	r0, [r7, #4]
 8005468:	6039      	str	r1, [r7, #0]
 800546a:	687b      	ldr	r3, [r7, #4]
 800546c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800546e:	2b00      	cmp	r3, #0
 8005470:	d018      	beq.n	80054a4 <prvCopyDataFromQueue+0x44>
 8005472:	687b      	ldr	r3, [r7, #4]
 8005474:	68da      	ldr	r2, [r3, #12]
 8005476:	687b      	ldr	r3, [r7, #4]
 8005478:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800547a:	441a      	add	r2, r3
 800547c:	687b      	ldr	r3, [r7, #4]
 800547e:	60da      	str	r2, [r3, #12]
 8005480:	687b      	ldr	r3, [r7, #4]
 8005482:	68da      	ldr	r2, [r3, #12]
 8005484:	687b      	ldr	r3, [r7, #4]
 8005486:	689b      	ldr	r3, [r3, #8]
 8005488:	429a      	cmp	r2, r3
 800548a:	d303      	bcc.n	8005494 <prvCopyDataFromQueue+0x34>
 800548c:	687b      	ldr	r3, [r7, #4]
 800548e:	681a      	ldr	r2, [r3, #0]
 8005490:	687b      	ldr	r3, [r7, #4]
 8005492:	60da      	str	r2, [r3, #12]
 8005494:	687b      	ldr	r3, [r7, #4]
 8005496:	68d9      	ldr	r1, [r3, #12]
 8005498:	687b      	ldr	r3, [r7, #4]
 800549a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800549c:	461a      	mov	r2, r3
 800549e:	6838      	ldr	r0, [r7, #0]
 80054a0:	f001 fe74 	bl	800718c <memcpy>
 80054a4:	bf00      	nop
 80054a6:	3708      	adds	r7, #8
 80054a8:	46bd      	mov	sp, r7
 80054aa:	bd80      	pop	{r7, pc}

080054ac <prvUnlockQueue>:
 80054ac:	b580      	push	{r7, lr}
 80054ae:	b084      	sub	sp, #16
 80054b0:	af00      	add	r7, sp, #0
 80054b2:	6078      	str	r0, [r7, #4]
 80054b4:	f001 fca6 	bl	8006e04 <vPortEnterCritical>
 80054b8:	687b      	ldr	r3, [r7, #4]
 80054ba:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 80054be:	73fb      	strb	r3, [r7, #15]
 80054c0:	e011      	b.n	80054e6 <prvUnlockQueue+0x3a>
 80054c2:	687b      	ldr	r3, [r7, #4]
 80054c4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80054c6:	2b00      	cmp	r3, #0
 80054c8:	d012      	beq.n	80054f0 <prvUnlockQueue+0x44>
 80054ca:	687b      	ldr	r3, [r7, #4]
 80054cc:	3324      	adds	r3, #36	; 0x24
 80054ce:	4618      	mov	r0, r3
 80054d0:	f000 fd28 	bl	8005f24 <xTaskRemoveFromEventList>
 80054d4:	4603      	mov	r3, r0
 80054d6:	2b00      	cmp	r3, #0
 80054d8:	d001      	beq.n	80054de <prvUnlockQueue+0x32>
 80054da:	f000 fdfb 	bl	80060d4 <vTaskMissedYield>
 80054de:	7bfb      	ldrb	r3, [r7, #15]
 80054e0:	3b01      	subs	r3, #1
 80054e2:	b2db      	uxtb	r3, r3
 80054e4:	73fb      	strb	r3, [r7, #15]
 80054e6:	f997 300f 	ldrsb.w	r3, [r7, #15]
 80054ea:	2b00      	cmp	r3, #0
 80054ec:	dce9      	bgt.n	80054c2 <prvUnlockQueue+0x16>
 80054ee:	e000      	b.n	80054f2 <prvUnlockQueue+0x46>
 80054f0:	bf00      	nop
 80054f2:	687b      	ldr	r3, [r7, #4]
 80054f4:	22ff      	movs	r2, #255	; 0xff
 80054f6:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 80054fa:	f001 fcb1 	bl	8006e60 <vPortExitCritical>
 80054fe:	f001 fc81 	bl	8006e04 <vPortEnterCritical>
 8005502:	687b      	ldr	r3, [r7, #4]
 8005504:	f893 3044 	ldrb.w	r3, [r3, #68]	; 0x44
 8005508:	73bb      	strb	r3, [r7, #14]
 800550a:	e011      	b.n	8005530 <prvUnlockQueue+0x84>
 800550c:	687b      	ldr	r3, [r7, #4]
 800550e:	691b      	ldr	r3, [r3, #16]
 8005510:	2b00      	cmp	r3, #0
 8005512:	d012      	beq.n	800553a <prvUnlockQueue+0x8e>
 8005514:	687b      	ldr	r3, [r7, #4]
 8005516:	3310      	adds	r3, #16
 8005518:	4618      	mov	r0, r3
 800551a:	f000 fd03 	bl	8005f24 <xTaskRemoveFromEventList>
 800551e:	4603      	mov	r3, r0
 8005520:	2b00      	cmp	r3, #0
 8005522:	d001      	beq.n	8005528 <prvUnlockQueue+0x7c>
 8005524:	f000 fdd6 	bl	80060d4 <vTaskMissedYield>
 8005528:	7bbb      	ldrb	r3, [r7, #14]
 800552a:	3b01      	subs	r3, #1
 800552c:	b2db      	uxtb	r3, r3
 800552e:	73bb      	strb	r3, [r7, #14]
 8005530:	f997 300e 	ldrsb.w	r3, [r7, #14]
 8005534:	2b00      	cmp	r3, #0
 8005536:	dce9      	bgt.n	800550c <prvUnlockQueue+0x60>
 8005538:	e000      	b.n	800553c <prvUnlockQueue+0x90>
 800553a:	bf00      	nop
 800553c:	687b      	ldr	r3, [r7, #4]
 800553e:	22ff      	movs	r2, #255	; 0xff
 8005540:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 8005544:	f001 fc8c 	bl	8006e60 <vPortExitCritical>
 8005548:	bf00      	nop
 800554a:	3710      	adds	r7, #16
 800554c:	46bd      	mov	sp, r7
 800554e:	bd80      	pop	{r7, pc}

08005550 <prvIsQueueEmpty>:
 8005550:	b580      	push	{r7, lr}
 8005552:	b084      	sub	sp, #16
 8005554:	af00      	add	r7, sp, #0
 8005556:	6078      	str	r0, [r7, #4]
 8005558:	f001 fc54 	bl	8006e04 <vPortEnterCritical>
 800555c:	687b      	ldr	r3, [r7, #4]
 800555e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8005560:	2b00      	cmp	r3, #0
 8005562:	d102      	bne.n	800556a <prvIsQueueEmpty+0x1a>
 8005564:	2301      	movs	r3, #1
 8005566:	60fb      	str	r3, [r7, #12]
 8005568:	e001      	b.n	800556e <prvIsQueueEmpty+0x1e>
 800556a:	2300      	movs	r3, #0
 800556c:	60fb      	str	r3, [r7, #12]
 800556e:	f001 fc77 	bl	8006e60 <vPortExitCritical>
 8005572:	68fb      	ldr	r3, [r7, #12]
 8005574:	4618      	mov	r0, r3
 8005576:	3710      	adds	r7, #16
 8005578:	46bd      	mov	sp, r7
 800557a:	bd80      	pop	{r7, pc}

0800557c <prvIsQueueFull>:
 800557c:	b580      	push	{r7, lr}
 800557e:	b084      	sub	sp, #16
 8005580:	af00      	add	r7, sp, #0
 8005582:	6078      	str	r0, [r7, #4]
 8005584:	f001 fc3e 	bl	8006e04 <vPortEnterCritical>
 8005588:	687b      	ldr	r3, [r7, #4]
 800558a:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 800558c:	687b      	ldr	r3, [r7, #4]
 800558e:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8005590:	429a      	cmp	r2, r3
 8005592:	d102      	bne.n	800559a <prvIsQueueFull+0x1e>
 8005594:	2301      	movs	r3, #1
 8005596:	60fb      	str	r3, [r7, #12]
 8005598:	e001      	b.n	800559e <prvIsQueueFull+0x22>
 800559a:	2300      	movs	r3, #0
 800559c:	60fb      	str	r3, [r7, #12]
 800559e:	f001 fc5f 	bl	8006e60 <vPortExitCritical>
 80055a2:	68fb      	ldr	r3, [r7, #12]
 80055a4:	4618      	mov	r0, r3
 80055a6:	3710      	adds	r7, #16
 80055a8:	46bd      	mov	sp, r7
 80055aa:	bd80      	pop	{r7, pc}

080055ac <vQueueAddToRegistry>:
 80055ac:	b480      	push	{r7}
 80055ae:	b085      	sub	sp, #20
 80055b0:	af00      	add	r7, sp, #0
 80055b2:	6078      	str	r0, [r7, #4]
 80055b4:	6039      	str	r1, [r7, #0]
 80055b6:	2300      	movs	r3, #0
 80055b8:	60fb      	str	r3, [r7, #12]
 80055ba:	e014      	b.n	80055e6 <vQueueAddToRegistry+0x3a>
 80055bc:	4a0e      	ldr	r2, [pc, #56]	; (80055f8 <vQueueAddToRegistry+0x4c>)
 80055be:	68fb      	ldr	r3, [r7, #12]
 80055c0:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
 80055c4:	2b00      	cmp	r3, #0
 80055c6:	d10b      	bne.n	80055e0 <vQueueAddToRegistry+0x34>
 80055c8:	490b      	ldr	r1, [pc, #44]	; (80055f8 <vQueueAddToRegistry+0x4c>)
 80055ca:	68fb      	ldr	r3, [r7, #12]
 80055cc:	683a      	ldr	r2, [r7, #0]
 80055ce:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
 80055d2:	4a09      	ldr	r2, [pc, #36]	; (80055f8 <vQueueAddToRegistry+0x4c>)
 80055d4:	68fb      	ldr	r3, [r7, #12]
 80055d6:	00db      	lsls	r3, r3, #3
 80055d8:	4413      	add	r3, r2
 80055da:	687a      	ldr	r2, [r7, #4]
 80055dc:	605a      	str	r2, [r3, #4]
 80055de:	e005      	b.n	80055ec <vQueueAddToRegistry+0x40>
 80055e0:	68fb      	ldr	r3, [r7, #12]
 80055e2:	3301      	adds	r3, #1
 80055e4:	60fb      	str	r3, [r7, #12]
 80055e6:	68fb      	ldr	r3, [r7, #12]
 80055e8:	2b07      	cmp	r3, #7
 80055ea:	d9e7      	bls.n	80055bc <vQueueAddToRegistry+0x10>
 80055ec:	bf00      	nop
 80055ee:	3714      	adds	r7, #20
 80055f0:	46bd      	mov	sp, r7
 80055f2:	bc80      	pop	{r7}
 80055f4:	4770      	bx	lr
 80055f6:	bf00      	nop
 80055f8:	20004628 	.word	0x20004628

080055fc <vQueueWaitForMessageRestricted>:
 80055fc:	b580      	push	{r7, lr}
 80055fe:	b086      	sub	sp, #24
 8005600:	af00      	add	r7, sp, #0
 8005602:	60f8      	str	r0, [r7, #12]
 8005604:	60b9      	str	r1, [r7, #8]
 8005606:	607a      	str	r2, [r7, #4]
 8005608:	68fb      	ldr	r3, [r7, #12]
 800560a:	617b      	str	r3, [r7, #20]
 800560c:	f001 fbfa 	bl	8006e04 <vPortEnterCritical>
 8005610:	697b      	ldr	r3, [r7, #20]
 8005612:	f893 3044 	ldrb.w	r3, [r3, #68]	; 0x44
 8005616:	b25b      	sxtb	r3, r3
 8005618:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 800561c:	d103      	bne.n	8005626 <vQueueWaitForMessageRestricted+0x2a>
 800561e:	697b      	ldr	r3, [r7, #20]
 8005620:	2200      	movs	r2, #0
 8005622:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 8005626:	697b      	ldr	r3, [r7, #20]
 8005628:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 800562c:	b25b      	sxtb	r3, r3
 800562e:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8005632:	d103      	bne.n	800563c <vQueueWaitForMessageRestricted+0x40>
 8005634:	697b      	ldr	r3, [r7, #20]
 8005636:	2200      	movs	r2, #0
 8005638:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 800563c:	f001 fc10 	bl	8006e60 <vPortExitCritical>
 8005640:	697b      	ldr	r3, [r7, #20]
 8005642:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8005644:	2b00      	cmp	r3, #0
 8005646:	d106      	bne.n	8005656 <vQueueWaitForMessageRestricted+0x5a>
 8005648:	697b      	ldr	r3, [r7, #20]
 800564a:	3324      	adds	r3, #36	; 0x24
 800564c:	687a      	ldr	r2, [r7, #4]
 800564e:	68b9      	ldr	r1, [r7, #8]
 8005650:	4618      	mov	r0, r3
 8005652:	f000 fc3d 	bl	8005ed0 <vTaskPlaceOnEventListRestricted>
 8005656:	6978      	ldr	r0, [r7, #20]
 8005658:	f7ff ff28 	bl	80054ac <prvUnlockQueue>
 800565c:	bf00      	nop
 800565e:	3718      	adds	r7, #24
 8005660:	46bd      	mov	sp, r7
 8005662:	bd80      	pop	{r7, pc}

08005664 <xTaskCreateStatic>:
 8005664:	b580      	push	{r7, lr}
 8005666:	b08e      	sub	sp, #56	; 0x38
 8005668:	af04      	add	r7, sp, #16
 800566a:	60f8      	str	r0, [r7, #12]
 800566c:	60b9      	str	r1, [r7, #8]
 800566e:	607a      	str	r2, [r7, #4]
 8005670:	603b      	str	r3, [r7, #0]
 8005672:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8005674:	2b00      	cmp	r3, #0
 8005676:	d109      	bne.n	800568c <xTaskCreateStatic+0x28>
 8005678:	f04f 0350 	mov.w	r3, #80	; 0x50
 800567c:	f383 8811 	msr	BASEPRI, r3
 8005680:	f3bf 8f6f 	isb	sy
 8005684:	f3bf 8f4f 	dsb	sy
 8005688:	623b      	str	r3, [r7, #32]
 800568a:	e7fe      	b.n	800568a <xTaskCreateStatic+0x26>
 800568c:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 800568e:	2b00      	cmp	r3, #0
 8005690:	d109      	bne.n	80056a6 <xTaskCreateStatic+0x42>
 8005692:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005696:	f383 8811 	msr	BASEPRI, r3
 800569a:	f3bf 8f6f 	isb	sy
 800569e:	f3bf 8f4f 	dsb	sy
 80056a2:	61fb      	str	r3, [r7, #28]
 80056a4:	e7fe      	b.n	80056a4 <xTaskCreateStatic+0x40>
 80056a6:	23b8      	movs	r3, #184	; 0xb8
 80056a8:	613b      	str	r3, [r7, #16]
 80056aa:	693b      	ldr	r3, [r7, #16]
 80056ac:	2bb8      	cmp	r3, #184	; 0xb8
 80056ae:	d009      	beq.n	80056c4 <xTaskCreateStatic+0x60>
 80056b0:	f04f 0350 	mov.w	r3, #80	; 0x50
 80056b4:	f383 8811 	msr	BASEPRI, r3
 80056b8:	f3bf 8f6f 	isb	sy
 80056bc:	f3bf 8f4f 	dsb	sy
 80056c0:	61bb      	str	r3, [r7, #24]
 80056c2:	e7fe      	b.n	80056c2 <xTaskCreateStatic+0x5e>
 80056c4:	693b      	ldr	r3, [r7, #16]
 80056c6:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 80056c8:	2b00      	cmp	r3, #0
 80056ca:	d01e      	beq.n	800570a <xTaskCreateStatic+0xa6>
 80056cc:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80056ce:	2b00      	cmp	r3, #0
 80056d0:	d01b      	beq.n	800570a <xTaskCreateStatic+0xa6>
 80056d2:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 80056d4:	627b      	str	r3, [r7, #36]	; 0x24
 80056d6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80056d8:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80056da:	631a      	str	r2, [r3, #48]	; 0x30
 80056dc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80056de:	2202      	movs	r2, #2
 80056e0:	f883 20b5 	strb.w	r2, [r3, #181]	; 0xb5
 80056e4:	2300      	movs	r3, #0
 80056e6:	9303      	str	r3, [sp, #12]
 80056e8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80056ea:	9302      	str	r3, [sp, #8]
 80056ec:	f107 0314 	add.w	r3, r7, #20
 80056f0:	9301      	str	r3, [sp, #4]
 80056f2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80056f4:	9300      	str	r3, [sp, #0]
 80056f6:	683b      	ldr	r3, [r7, #0]
 80056f8:	687a      	ldr	r2, [r7, #4]
 80056fa:	68b9      	ldr	r1, [r7, #8]
 80056fc:	68f8      	ldr	r0, [r7, #12]
 80056fe:	f000 f80b 	bl	8005718 <prvInitialiseNewTask>
 8005702:	6a78      	ldr	r0, [r7, #36]	; 0x24
 8005704:	f000 f8b2 	bl	800586c <prvAddNewTaskToReadyList>
 8005708:	e001      	b.n	800570e <xTaskCreateStatic+0xaa>
 800570a:	2300      	movs	r3, #0
 800570c:	617b      	str	r3, [r7, #20]
 800570e:	697b      	ldr	r3, [r7, #20]
 8005710:	4618      	mov	r0, r3
 8005712:	3728      	adds	r7, #40	; 0x28
 8005714:	46bd      	mov	sp, r7
 8005716:	bd80      	pop	{r7, pc}

08005718 <prvInitialiseNewTask>:
 8005718:	b580      	push	{r7, lr}
 800571a:	b088      	sub	sp, #32
 800571c:	af00      	add	r7, sp, #0
 800571e:	60f8      	str	r0, [r7, #12]
 8005720:	60b9      	str	r1, [r7, #8]
 8005722:	607a      	str	r2, [r7, #4]
 8005724:	603b      	str	r3, [r7, #0]
 8005726:	68bb      	ldr	r3, [r7, #8]
 8005728:	2b00      	cmp	r3, #0
 800572a:	d109      	bne.n	8005740 <prvInitialiseNewTask+0x28>
 800572c:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005730:	f383 8811 	msr	BASEPRI, r3
 8005734:	f3bf 8f6f 	isb	sy
 8005738:	f3bf 8f4f 	dsb	sy
 800573c:	617b      	str	r3, [r7, #20]
 800573e:	e7fe      	b.n	800573e <prvInitialiseNewTask+0x26>
 8005740:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005742:	6b18      	ldr	r0, [r3, #48]	; 0x30
 8005744:	687b      	ldr	r3, [r7, #4]
 8005746:	009b      	lsls	r3, r3, #2
 8005748:	461a      	mov	r2, r3
 800574a:	21a5      	movs	r1, #165	; 0xa5
 800574c:	f001 fd29 	bl	80071a2 <memset>
 8005750:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005752:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8005754:	687b      	ldr	r3, [r7, #4]
 8005756:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 800575a:	3b01      	subs	r3, #1
 800575c:	009b      	lsls	r3, r3, #2
 800575e:	4413      	add	r3, r2
 8005760:	61bb      	str	r3, [r7, #24]
 8005762:	69bb      	ldr	r3, [r7, #24]
 8005764:	f023 0307 	bic.w	r3, r3, #7
 8005768:	61bb      	str	r3, [r7, #24]
 800576a:	69bb      	ldr	r3, [r7, #24]
 800576c:	f003 0307 	and.w	r3, r3, #7
 8005770:	2b00      	cmp	r3, #0
 8005772:	d009      	beq.n	8005788 <prvInitialiseNewTask+0x70>
 8005774:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005778:	f383 8811 	msr	BASEPRI, r3
 800577c:	f3bf 8f6f 	isb	sy
 8005780:	f3bf 8f4f 	dsb	sy
 8005784:	613b      	str	r3, [r7, #16]
 8005786:	e7fe      	b.n	8005786 <prvInitialiseNewTask+0x6e>
 8005788:	2300      	movs	r3, #0
 800578a:	61fb      	str	r3, [r7, #28]
 800578c:	e012      	b.n	80057b4 <prvInitialiseNewTask+0x9c>
 800578e:	68ba      	ldr	r2, [r7, #8]
 8005790:	69fb      	ldr	r3, [r7, #28]
 8005792:	4413      	add	r3, r2
 8005794:	7819      	ldrb	r1, [r3, #0]
 8005796:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8005798:	69fb      	ldr	r3, [r7, #28]
 800579a:	4413      	add	r3, r2
 800579c:	3334      	adds	r3, #52	; 0x34
 800579e:	460a      	mov	r2, r1
 80057a0:	701a      	strb	r2, [r3, #0]
 80057a2:	68ba      	ldr	r2, [r7, #8]
 80057a4:	69fb      	ldr	r3, [r7, #28]
 80057a6:	4413      	add	r3, r2
 80057a8:	781b      	ldrb	r3, [r3, #0]
 80057aa:	2b00      	cmp	r3, #0
 80057ac:	d006      	beq.n	80057bc <prvInitialiseNewTask+0xa4>
 80057ae:	69fb      	ldr	r3, [r7, #28]
 80057b0:	3301      	adds	r3, #1
 80057b2:	61fb      	str	r3, [r7, #28]
 80057b4:	69fb      	ldr	r3, [r7, #28]
 80057b6:	2b09      	cmp	r3, #9
 80057b8:	d9e9      	bls.n	800578e <prvInitialiseNewTask+0x76>
 80057ba:	e000      	b.n	80057be <prvInitialiseNewTask+0xa6>
 80057bc:	bf00      	nop
 80057be:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80057c0:	2200      	movs	r2, #0
 80057c2:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
 80057c6:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80057c8:	2b04      	cmp	r3, #4
 80057ca:	d901      	bls.n	80057d0 <prvInitialiseNewTask+0xb8>
 80057cc:	2304      	movs	r3, #4
 80057ce:	62bb      	str	r3, [r7, #40]	; 0x28
 80057d0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80057d2:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80057d4:	62da      	str	r2, [r3, #44]	; 0x2c
 80057d6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80057d8:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80057da:	649a      	str	r2, [r3, #72]	; 0x48
 80057dc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80057de:	2200      	movs	r2, #0
 80057e0:	64da      	str	r2, [r3, #76]	; 0x4c
 80057e2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80057e4:	3304      	adds	r3, #4
 80057e6:	4618      	mov	r0, r3
 80057e8:	f7ff f9d7 	bl	8004b9a <vListInitialiseItem>
 80057ec:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80057ee:	3318      	adds	r3, #24
 80057f0:	4618      	mov	r0, r3
 80057f2:	f7ff f9d2 	bl	8004b9a <vListInitialiseItem>
 80057f6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80057f8:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 80057fa:	611a      	str	r2, [r3, #16]
 80057fc:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80057fe:	f1c3 0205 	rsb	r2, r3, #5
 8005802:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005804:	619a      	str	r2, [r3, #24]
 8005806:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005808:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 800580a:	625a      	str	r2, [r3, #36]	; 0x24
 800580c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800580e:	2200      	movs	r2, #0
 8005810:	f8c3 20b0 	str.w	r2, [r3, #176]	; 0xb0
 8005814:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005816:	2200      	movs	r2, #0
 8005818:	f883 20b4 	strb.w	r2, [r3, #180]	; 0xb4
 800581c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800581e:	3350      	adds	r3, #80	; 0x50
 8005820:	2260      	movs	r2, #96	; 0x60
 8005822:	2100      	movs	r1, #0
 8005824:	4618      	mov	r0, r3
 8005826:	f001 fcbc 	bl	80071a2 <memset>
 800582a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800582c:	4a0c      	ldr	r2, [pc, #48]	; (8005860 <prvInitialiseNewTask+0x148>)
 800582e:	655a      	str	r2, [r3, #84]	; 0x54
 8005830:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005832:	4a0c      	ldr	r2, [pc, #48]	; (8005864 <prvInitialiseNewTask+0x14c>)
 8005834:	659a      	str	r2, [r3, #88]	; 0x58
 8005836:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005838:	4a0b      	ldr	r2, [pc, #44]	; (8005868 <prvInitialiseNewTask+0x150>)
 800583a:	65da      	str	r2, [r3, #92]	; 0x5c
 800583c:	683a      	ldr	r2, [r7, #0]
 800583e:	68f9      	ldr	r1, [r7, #12]
 8005840:	69b8      	ldr	r0, [r7, #24]
 8005842:	f001 fa0d 	bl	8006c60 <pxPortInitialiseStack>
 8005846:	4602      	mov	r2, r0
 8005848:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800584a:	601a      	str	r2, [r3, #0]
 800584c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800584e:	2b00      	cmp	r3, #0
 8005850:	d002      	beq.n	8005858 <prvInitialiseNewTask+0x140>
 8005852:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8005854:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8005856:	601a      	str	r2, [r3, #0]
 8005858:	bf00      	nop
 800585a:	3720      	adds	r7, #32
 800585c:	46bd      	mov	sp, r7
 800585e:	bd80      	pop	{r7, pc}
 8005860:	08007a1c 	.word	0x08007a1c
 8005864:	08007a3c 	.word	0x08007a3c
 8005868:	080079fc 	.word	0x080079fc

0800586c <prvAddNewTaskToReadyList>:
 800586c:	b580      	push	{r7, lr}
 800586e:	b082      	sub	sp, #8
 8005870:	af00      	add	r7, sp, #0
 8005872:	6078      	str	r0, [r7, #4]
 8005874:	f001 fac6 	bl	8006e04 <vPortEnterCritical>
 8005878:	4b2c      	ldr	r3, [pc, #176]	; (800592c <prvAddNewTaskToReadyList+0xc0>)
 800587a:	681b      	ldr	r3, [r3, #0]
 800587c:	3301      	adds	r3, #1
 800587e:	4a2b      	ldr	r2, [pc, #172]	; (800592c <prvAddNewTaskToReadyList+0xc0>)
 8005880:	6013      	str	r3, [r2, #0]
 8005882:	4b2b      	ldr	r3, [pc, #172]	; (8005930 <prvAddNewTaskToReadyList+0xc4>)
 8005884:	681b      	ldr	r3, [r3, #0]
 8005886:	2b00      	cmp	r3, #0
 8005888:	d109      	bne.n	800589e <prvAddNewTaskToReadyList+0x32>
 800588a:	4a29      	ldr	r2, [pc, #164]	; (8005930 <prvAddNewTaskToReadyList+0xc4>)
 800588c:	687b      	ldr	r3, [r7, #4]
 800588e:	6013      	str	r3, [r2, #0]
 8005890:	4b26      	ldr	r3, [pc, #152]	; (800592c <prvAddNewTaskToReadyList+0xc0>)
 8005892:	681b      	ldr	r3, [r3, #0]
 8005894:	2b01      	cmp	r3, #1
 8005896:	d110      	bne.n	80058ba <prvAddNewTaskToReadyList+0x4e>
 8005898:	f000 fc42 	bl	8006120 <prvInitialiseTaskLists>
 800589c:	e00d      	b.n	80058ba <prvAddNewTaskToReadyList+0x4e>
 800589e:	4b25      	ldr	r3, [pc, #148]	; (8005934 <prvAddNewTaskToReadyList+0xc8>)
 80058a0:	681b      	ldr	r3, [r3, #0]
 80058a2:	2b00      	cmp	r3, #0
 80058a4:	d109      	bne.n	80058ba <prvAddNewTaskToReadyList+0x4e>
 80058a6:	4b22      	ldr	r3, [pc, #136]	; (8005930 <prvAddNewTaskToReadyList+0xc4>)
 80058a8:	681b      	ldr	r3, [r3, #0]
 80058aa:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80058ac:	687b      	ldr	r3, [r7, #4]
 80058ae:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80058b0:	429a      	cmp	r2, r3
 80058b2:	d802      	bhi.n	80058ba <prvAddNewTaskToReadyList+0x4e>
 80058b4:	4a1e      	ldr	r2, [pc, #120]	; (8005930 <prvAddNewTaskToReadyList+0xc4>)
 80058b6:	687b      	ldr	r3, [r7, #4]
 80058b8:	6013      	str	r3, [r2, #0]
 80058ba:	4b1f      	ldr	r3, [pc, #124]	; (8005938 <prvAddNewTaskToReadyList+0xcc>)
 80058bc:	681b      	ldr	r3, [r3, #0]
 80058be:	3301      	adds	r3, #1
 80058c0:	4a1d      	ldr	r2, [pc, #116]	; (8005938 <prvAddNewTaskToReadyList+0xcc>)
 80058c2:	6013      	str	r3, [r2, #0]
 80058c4:	4b1c      	ldr	r3, [pc, #112]	; (8005938 <prvAddNewTaskToReadyList+0xcc>)
 80058c6:	681a      	ldr	r2, [r3, #0]
 80058c8:	687b      	ldr	r3, [r7, #4]
 80058ca:	641a      	str	r2, [r3, #64]	; 0x40
 80058cc:	687b      	ldr	r3, [r7, #4]
 80058ce:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80058d0:	2201      	movs	r2, #1
 80058d2:	409a      	lsls	r2, r3
 80058d4:	4b19      	ldr	r3, [pc, #100]	; (800593c <prvAddNewTaskToReadyList+0xd0>)
 80058d6:	681b      	ldr	r3, [r3, #0]
 80058d8:	4313      	orrs	r3, r2
 80058da:	4a18      	ldr	r2, [pc, #96]	; (800593c <prvAddNewTaskToReadyList+0xd0>)
 80058dc:	6013      	str	r3, [r2, #0]
 80058de:	687b      	ldr	r3, [r7, #4]
 80058e0:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80058e2:	4613      	mov	r3, r2
 80058e4:	009b      	lsls	r3, r3, #2
 80058e6:	4413      	add	r3, r2
 80058e8:	009b      	lsls	r3, r3, #2
 80058ea:	4a15      	ldr	r2, [pc, #84]	; (8005940 <prvAddNewTaskToReadyList+0xd4>)
 80058ec:	441a      	add	r2, r3
 80058ee:	687b      	ldr	r3, [r7, #4]
 80058f0:	3304      	adds	r3, #4
 80058f2:	4619      	mov	r1, r3
 80058f4:	4610      	mov	r0, r2
 80058f6:	f7ff f95c 	bl	8004bb2 <vListInsertEnd>
 80058fa:	f001 fab1 	bl	8006e60 <vPortExitCritical>
 80058fe:	4b0d      	ldr	r3, [pc, #52]	; (8005934 <prvAddNewTaskToReadyList+0xc8>)
 8005900:	681b      	ldr	r3, [r3, #0]
 8005902:	2b00      	cmp	r3, #0
 8005904:	d00e      	beq.n	8005924 <prvAddNewTaskToReadyList+0xb8>
 8005906:	4b0a      	ldr	r3, [pc, #40]	; (8005930 <prvAddNewTaskToReadyList+0xc4>)
 8005908:	681b      	ldr	r3, [r3, #0]
 800590a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800590c:	687b      	ldr	r3, [r7, #4]
 800590e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8005910:	429a      	cmp	r2, r3
 8005912:	d207      	bcs.n	8005924 <prvAddNewTaskToReadyList+0xb8>
 8005914:	4b0b      	ldr	r3, [pc, #44]	; (8005944 <prvAddNewTaskToReadyList+0xd8>)
 8005916:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800591a:	601a      	str	r2, [r3, #0]
 800591c:	f3bf 8f4f 	dsb	sy
 8005920:	f3bf 8f6f 	isb	sy
 8005924:	bf00      	nop
 8005926:	3708      	adds	r7, #8
 8005928:	46bd      	mov	sp, r7
 800592a:	bd80      	pop	{r7, pc}
 800592c:	20000b30 	.word	0x20000b30
 8005930:	20000a58 	.word	0x20000a58
 8005934:	20000b3c 	.word	0x20000b3c
 8005938:	20000b4c 	.word	0x20000b4c
 800593c:	20000b38 	.word	0x20000b38
 8005940:	20000a5c 	.word	0x20000a5c
 8005944:	e000ed04 	.word	0xe000ed04

08005948 <vTaskDelay>:
 8005948:	b580      	push	{r7, lr}
 800594a:	b084      	sub	sp, #16
 800594c:	af00      	add	r7, sp, #0
 800594e:	6078      	str	r0, [r7, #4]
 8005950:	2300      	movs	r3, #0
 8005952:	60fb      	str	r3, [r7, #12]
 8005954:	687b      	ldr	r3, [r7, #4]
 8005956:	2b00      	cmp	r3, #0
 8005958:	d016      	beq.n	8005988 <vTaskDelay+0x40>
 800595a:	4b13      	ldr	r3, [pc, #76]	; (80059a8 <vTaskDelay+0x60>)
 800595c:	681b      	ldr	r3, [r3, #0]
 800595e:	2b00      	cmp	r3, #0
 8005960:	d009      	beq.n	8005976 <vTaskDelay+0x2e>
 8005962:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005966:	f383 8811 	msr	BASEPRI, r3
 800596a:	f3bf 8f6f 	isb	sy
 800596e:	f3bf 8f4f 	dsb	sy
 8005972:	60bb      	str	r3, [r7, #8]
 8005974:	e7fe      	b.n	8005974 <vTaskDelay+0x2c>
 8005976:	f000 f889 	bl	8005a8c <vTaskSuspendAll>
 800597a:	2100      	movs	r1, #0
 800597c:	6878      	ldr	r0, [r7, #4]
 800597e:	f000 fe1b 	bl	80065b8 <prvAddCurrentTaskToDelayedList>
 8005982:	f000 f891 	bl	8005aa8 <xTaskResumeAll>
 8005986:	60f8      	str	r0, [r7, #12]
 8005988:	68fb      	ldr	r3, [r7, #12]
 800598a:	2b00      	cmp	r3, #0
 800598c:	d107      	bne.n	800599e <vTaskDelay+0x56>
 800598e:	4b07      	ldr	r3, [pc, #28]	; (80059ac <vTaskDelay+0x64>)
 8005990:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8005994:	601a      	str	r2, [r3, #0]
 8005996:	f3bf 8f4f 	dsb	sy
 800599a:	f3bf 8f6f 	isb	sy
 800599e:	bf00      	nop
 80059a0:	3710      	adds	r7, #16
 80059a2:	46bd      	mov	sp, r7
 80059a4:	bd80      	pop	{r7, pc}
 80059a6:	bf00      	nop
 80059a8:	20000b58 	.word	0x20000b58
 80059ac:	e000ed04 	.word	0xe000ed04

080059b0 <vTaskStartScheduler>:
 80059b0:	b580      	push	{r7, lr}
 80059b2:	b08a      	sub	sp, #40	; 0x28
 80059b4:	af04      	add	r7, sp, #16
 80059b6:	2300      	movs	r3, #0
 80059b8:	60bb      	str	r3, [r7, #8]
 80059ba:	2300      	movs	r3, #0
 80059bc:	607b      	str	r3, [r7, #4]
 80059be:	463a      	mov	r2, r7
 80059c0:	1d39      	adds	r1, r7, #4
 80059c2:	f107 0308 	add.w	r3, r7, #8
 80059c6:	4618      	mov	r0, r3
 80059c8:	f7fd fb70 	bl	80030ac <vApplicationGetIdleTaskMemory>
 80059cc:	6839      	ldr	r1, [r7, #0]
 80059ce:	687b      	ldr	r3, [r7, #4]
 80059d0:	68ba      	ldr	r2, [r7, #8]
 80059d2:	9202      	str	r2, [sp, #8]
 80059d4:	9301      	str	r3, [sp, #4]
 80059d6:	2300      	movs	r3, #0
 80059d8:	9300      	str	r3, [sp, #0]
 80059da:	2300      	movs	r3, #0
 80059dc:	460a      	mov	r2, r1
 80059de:	4923      	ldr	r1, [pc, #140]	; (8005a6c <vTaskStartScheduler+0xbc>)
 80059e0:	4823      	ldr	r0, [pc, #140]	; (8005a70 <vTaskStartScheduler+0xc0>)
 80059e2:	f7ff fe3f 	bl	8005664 <xTaskCreateStatic>
 80059e6:	4602      	mov	r2, r0
 80059e8:	4b22      	ldr	r3, [pc, #136]	; (8005a74 <vTaskStartScheduler+0xc4>)
 80059ea:	601a      	str	r2, [r3, #0]
 80059ec:	4b21      	ldr	r3, [pc, #132]	; (8005a74 <vTaskStartScheduler+0xc4>)
 80059ee:	681b      	ldr	r3, [r3, #0]
 80059f0:	2b00      	cmp	r3, #0
 80059f2:	d002      	beq.n	80059fa <vTaskStartScheduler+0x4a>
 80059f4:	2301      	movs	r3, #1
 80059f6:	617b      	str	r3, [r7, #20]
 80059f8:	e001      	b.n	80059fe <vTaskStartScheduler+0x4e>
 80059fa:	2300      	movs	r3, #0
 80059fc:	617b      	str	r3, [r7, #20]
 80059fe:	697b      	ldr	r3, [r7, #20]
 8005a00:	2b01      	cmp	r3, #1
 8005a02:	d102      	bne.n	8005a0a <vTaskStartScheduler+0x5a>
 8005a04:	f000 fe3e 	bl	8006684 <xTimerCreateTimerTask>
 8005a08:	6178      	str	r0, [r7, #20]
 8005a0a:	697b      	ldr	r3, [r7, #20]
 8005a0c:	2b01      	cmp	r3, #1
 8005a0e:	d11a      	bne.n	8005a46 <vTaskStartScheduler+0x96>
 8005a10:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005a14:	f383 8811 	msr	BASEPRI, r3
 8005a18:	f3bf 8f6f 	isb	sy
 8005a1c:	f3bf 8f4f 	dsb	sy
 8005a20:	613b      	str	r3, [r7, #16]
 8005a22:	4b15      	ldr	r3, [pc, #84]	; (8005a78 <vTaskStartScheduler+0xc8>)
 8005a24:	681b      	ldr	r3, [r3, #0]
 8005a26:	3350      	adds	r3, #80	; 0x50
 8005a28:	4a14      	ldr	r2, [pc, #80]	; (8005a7c <vTaskStartScheduler+0xcc>)
 8005a2a:	6013      	str	r3, [r2, #0]
 8005a2c:	4b14      	ldr	r3, [pc, #80]	; (8005a80 <vTaskStartScheduler+0xd0>)
 8005a2e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8005a32:	601a      	str	r2, [r3, #0]
 8005a34:	4b13      	ldr	r3, [pc, #76]	; (8005a84 <vTaskStartScheduler+0xd4>)
 8005a36:	2201      	movs	r2, #1
 8005a38:	601a      	str	r2, [r3, #0]
 8005a3a:	4b13      	ldr	r3, [pc, #76]	; (8005a88 <vTaskStartScheduler+0xd8>)
 8005a3c:	2200      	movs	r2, #0
 8005a3e:	601a      	str	r2, [r3, #0]
 8005a40:	f001 f982 	bl	8006d48 <xPortStartScheduler>
 8005a44:	e00d      	b.n	8005a62 <vTaskStartScheduler+0xb2>
 8005a46:	697b      	ldr	r3, [r7, #20]
 8005a48:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8005a4c:	d109      	bne.n	8005a62 <vTaskStartScheduler+0xb2>
 8005a4e:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005a52:	f383 8811 	msr	BASEPRI, r3
 8005a56:	f3bf 8f6f 	isb	sy
 8005a5a:	f3bf 8f4f 	dsb	sy
 8005a5e:	60fb      	str	r3, [r7, #12]
 8005a60:	e7fe      	b.n	8005a60 <vTaskStartScheduler+0xb0>
 8005a62:	bf00      	nop
 8005a64:	3718      	adds	r7, #24
 8005a66:	46bd      	mov	sp, r7
 8005a68:	bd80      	pop	{r7, pc}
 8005a6a:	bf00      	nop
 8005a6c:	08007494 	.word	0x08007494
 8005a70:	080060ed 	.word	0x080060ed
 8005a74:	20000b54 	.word	0x20000b54
 8005a78:	20000a58 	.word	0x20000a58
 8005a7c:	20000014 	.word	0x20000014
 8005a80:	20000b50 	.word	0x20000b50
 8005a84:	20000b3c 	.word	0x20000b3c
 8005a88:	20000b34 	.word	0x20000b34

08005a8c <vTaskSuspendAll>:
 8005a8c:	b480      	push	{r7}
 8005a8e:	af00      	add	r7, sp, #0
 8005a90:	4b04      	ldr	r3, [pc, #16]	; (8005aa4 <vTaskSuspendAll+0x18>)
 8005a92:	681b      	ldr	r3, [r3, #0]
 8005a94:	3301      	adds	r3, #1
 8005a96:	4a03      	ldr	r2, [pc, #12]	; (8005aa4 <vTaskSuspendAll+0x18>)
 8005a98:	6013      	str	r3, [r2, #0]
 8005a9a:	bf00      	nop
 8005a9c:	46bd      	mov	sp, r7
 8005a9e:	bc80      	pop	{r7}
 8005aa0:	4770      	bx	lr
 8005aa2:	bf00      	nop
 8005aa4:	20000b58 	.word	0x20000b58

08005aa8 <xTaskResumeAll>:
 8005aa8:	b580      	push	{r7, lr}
 8005aaa:	b084      	sub	sp, #16
 8005aac:	af00      	add	r7, sp, #0
 8005aae:	2300      	movs	r3, #0
 8005ab0:	60fb      	str	r3, [r7, #12]
 8005ab2:	2300      	movs	r3, #0
 8005ab4:	60bb      	str	r3, [r7, #8]
 8005ab6:	4b41      	ldr	r3, [pc, #260]	; (8005bbc <xTaskResumeAll+0x114>)
 8005ab8:	681b      	ldr	r3, [r3, #0]
 8005aba:	2b00      	cmp	r3, #0
 8005abc:	d109      	bne.n	8005ad2 <xTaskResumeAll+0x2a>
 8005abe:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005ac2:	f383 8811 	msr	BASEPRI, r3
 8005ac6:	f3bf 8f6f 	isb	sy
 8005aca:	f3bf 8f4f 	dsb	sy
 8005ace:	603b      	str	r3, [r7, #0]
 8005ad0:	e7fe      	b.n	8005ad0 <xTaskResumeAll+0x28>
 8005ad2:	f001 f997 	bl	8006e04 <vPortEnterCritical>
 8005ad6:	4b39      	ldr	r3, [pc, #228]	; (8005bbc <xTaskResumeAll+0x114>)
 8005ad8:	681b      	ldr	r3, [r3, #0]
 8005ada:	3b01      	subs	r3, #1
 8005adc:	4a37      	ldr	r2, [pc, #220]	; (8005bbc <xTaskResumeAll+0x114>)
 8005ade:	6013      	str	r3, [r2, #0]
 8005ae0:	4b36      	ldr	r3, [pc, #216]	; (8005bbc <xTaskResumeAll+0x114>)
 8005ae2:	681b      	ldr	r3, [r3, #0]
 8005ae4:	2b00      	cmp	r3, #0
 8005ae6:	d161      	bne.n	8005bac <xTaskResumeAll+0x104>
 8005ae8:	4b35      	ldr	r3, [pc, #212]	; (8005bc0 <xTaskResumeAll+0x118>)
 8005aea:	681b      	ldr	r3, [r3, #0]
 8005aec:	2b00      	cmp	r3, #0
 8005aee:	d05d      	beq.n	8005bac <xTaskResumeAll+0x104>
 8005af0:	e02e      	b.n	8005b50 <xTaskResumeAll+0xa8>
 8005af2:	4b34      	ldr	r3, [pc, #208]	; (8005bc4 <xTaskResumeAll+0x11c>)
 8005af4:	68db      	ldr	r3, [r3, #12]
 8005af6:	68db      	ldr	r3, [r3, #12]
 8005af8:	60fb      	str	r3, [r7, #12]
 8005afa:	68fb      	ldr	r3, [r7, #12]
 8005afc:	3318      	adds	r3, #24
 8005afe:	4618      	mov	r0, r3
 8005b00:	f7ff f8b2 	bl	8004c68 <uxListRemove>
 8005b04:	68fb      	ldr	r3, [r7, #12]
 8005b06:	3304      	adds	r3, #4
 8005b08:	4618      	mov	r0, r3
 8005b0a:	f7ff f8ad 	bl	8004c68 <uxListRemove>
 8005b0e:	68fb      	ldr	r3, [r7, #12]
 8005b10:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8005b12:	2201      	movs	r2, #1
 8005b14:	409a      	lsls	r2, r3
 8005b16:	4b2c      	ldr	r3, [pc, #176]	; (8005bc8 <xTaskResumeAll+0x120>)
 8005b18:	681b      	ldr	r3, [r3, #0]
 8005b1a:	4313      	orrs	r3, r2
 8005b1c:	4a2a      	ldr	r2, [pc, #168]	; (8005bc8 <xTaskResumeAll+0x120>)
 8005b1e:	6013      	str	r3, [r2, #0]
 8005b20:	68fb      	ldr	r3, [r7, #12]
 8005b22:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8005b24:	4613      	mov	r3, r2
 8005b26:	009b      	lsls	r3, r3, #2
 8005b28:	4413      	add	r3, r2
 8005b2a:	009b      	lsls	r3, r3, #2
 8005b2c:	4a27      	ldr	r2, [pc, #156]	; (8005bcc <xTaskResumeAll+0x124>)
 8005b2e:	441a      	add	r2, r3
 8005b30:	68fb      	ldr	r3, [r7, #12]
 8005b32:	3304      	adds	r3, #4
 8005b34:	4619      	mov	r1, r3
 8005b36:	4610      	mov	r0, r2
 8005b38:	f7ff f83b 	bl	8004bb2 <vListInsertEnd>
 8005b3c:	68fb      	ldr	r3, [r7, #12]
 8005b3e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8005b40:	4b23      	ldr	r3, [pc, #140]	; (8005bd0 <xTaskResumeAll+0x128>)
 8005b42:	681b      	ldr	r3, [r3, #0]
 8005b44:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8005b46:	429a      	cmp	r2, r3
 8005b48:	d302      	bcc.n	8005b50 <xTaskResumeAll+0xa8>
 8005b4a:	4b22      	ldr	r3, [pc, #136]	; (8005bd4 <xTaskResumeAll+0x12c>)
 8005b4c:	2201      	movs	r2, #1
 8005b4e:	601a      	str	r2, [r3, #0]
 8005b50:	4b1c      	ldr	r3, [pc, #112]	; (8005bc4 <xTaskResumeAll+0x11c>)
 8005b52:	681b      	ldr	r3, [r3, #0]
 8005b54:	2b00      	cmp	r3, #0
 8005b56:	d1cc      	bne.n	8005af2 <xTaskResumeAll+0x4a>
 8005b58:	68fb      	ldr	r3, [r7, #12]
 8005b5a:	2b00      	cmp	r3, #0
 8005b5c:	d001      	beq.n	8005b62 <xTaskResumeAll+0xba>
 8005b5e:	f000 fb7f 	bl	8006260 <prvResetNextTaskUnblockTime>
 8005b62:	4b1d      	ldr	r3, [pc, #116]	; (8005bd8 <xTaskResumeAll+0x130>)
 8005b64:	681b      	ldr	r3, [r3, #0]
 8005b66:	607b      	str	r3, [r7, #4]
 8005b68:	687b      	ldr	r3, [r7, #4]
 8005b6a:	2b00      	cmp	r3, #0
 8005b6c:	d010      	beq.n	8005b90 <xTaskResumeAll+0xe8>
 8005b6e:	f000 f845 	bl	8005bfc <xTaskIncrementTick>
 8005b72:	4603      	mov	r3, r0
 8005b74:	2b00      	cmp	r3, #0
 8005b76:	d002      	beq.n	8005b7e <xTaskResumeAll+0xd6>
 8005b78:	4b16      	ldr	r3, [pc, #88]	; (8005bd4 <xTaskResumeAll+0x12c>)
 8005b7a:	2201      	movs	r2, #1
 8005b7c:	601a      	str	r2, [r3, #0]
 8005b7e:	687b      	ldr	r3, [r7, #4]
 8005b80:	3b01      	subs	r3, #1
 8005b82:	607b      	str	r3, [r7, #4]
 8005b84:	687b      	ldr	r3, [r7, #4]
 8005b86:	2b00      	cmp	r3, #0
 8005b88:	d1f1      	bne.n	8005b6e <xTaskResumeAll+0xc6>
 8005b8a:	4b13      	ldr	r3, [pc, #76]	; (8005bd8 <xTaskResumeAll+0x130>)
 8005b8c:	2200      	movs	r2, #0
 8005b8e:	601a      	str	r2, [r3, #0]
 8005b90:	4b10      	ldr	r3, [pc, #64]	; (8005bd4 <xTaskResumeAll+0x12c>)
 8005b92:	681b      	ldr	r3, [r3, #0]
 8005b94:	2b00      	cmp	r3, #0
 8005b96:	d009      	beq.n	8005bac <xTaskResumeAll+0x104>
 8005b98:	2301      	movs	r3, #1
 8005b9a:	60bb      	str	r3, [r7, #8]
 8005b9c:	4b0f      	ldr	r3, [pc, #60]	; (8005bdc <xTaskResumeAll+0x134>)
 8005b9e:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8005ba2:	601a      	str	r2, [r3, #0]
 8005ba4:	f3bf 8f4f 	dsb	sy
 8005ba8:	f3bf 8f6f 	isb	sy
 8005bac:	f001 f958 	bl	8006e60 <vPortExitCritical>
 8005bb0:	68bb      	ldr	r3, [r7, #8]
 8005bb2:	4618      	mov	r0, r3
 8005bb4:	3710      	adds	r7, #16
 8005bb6:	46bd      	mov	sp, r7
 8005bb8:	bd80      	pop	{r7, pc}
 8005bba:	bf00      	nop
 8005bbc:	20000b58 	.word	0x20000b58
 8005bc0:	20000b30 	.word	0x20000b30
 8005bc4:	20000af0 	.word	0x20000af0
 8005bc8:	20000b38 	.word	0x20000b38
 8005bcc:	20000a5c 	.word	0x20000a5c
 8005bd0:	20000a58 	.word	0x20000a58
 8005bd4:	20000b44 	.word	0x20000b44
 8005bd8:	20000b40 	.word	0x20000b40
 8005bdc:	e000ed04 	.word	0xe000ed04

08005be0 <xTaskGetTickCount>:
 8005be0:	b480      	push	{r7}
 8005be2:	b083      	sub	sp, #12
 8005be4:	af00      	add	r7, sp, #0
 8005be6:	4b04      	ldr	r3, [pc, #16]	; (8005bf8 <xTaskGetTickCount+0x18>)
 8005be8:	681b      	ldr	r3, [r3, #0]
 8005bea:	607b      	str	r3, [r7, #4]
 8005bec:	687b      	ldr	r3, [r7, #4]
 8005bee:	4618      	mov	r0, r3
 8005bf0:	370c      	adds	r7, #12
 8005bf2:	46bd      	mov	sp, r7
 8005bf4:	bc80      	pop	{r7}
 8005bf6:	4770      	bx	lr
 8005bf8:	20000b34 	.word	0x20000b34

08005bfc <xTaskIncrementTick>:
 8005bfc:	b580      	push	{r7, lr}
 8005bfe:	b086      	sub	sp, #24
 8005c00:	af00      	add	r7, sp, #0
 8005c02:	2300      	movs	r3, #0
 8005c04:	617b      	str	r3, [r7, #20]
 8005c06:	4b52      	ldr	r3, [pc, #328]	; (8005d50 <xTaskIncrementTick+0x154>)
 8005c08:	681b      	ldr	r3, [r3, #0]
 8005c0a:	2b00      	cmp	r3, #0
 8005c0c:	f040 808d 	bne.w	8005d2a <xTaskIncrementTick+0x12e>
 8005c10:	4b50      	ldr	r3, [pc, #320]	; (8005d54 <xTaskIncrementTick+0x158>)
 8005c12:	681b      	ldr	r3, [r3, #0]
 8005c14:	3301      	adds	r3, #1
 8005c16:	613b      	str	r3, [r7, #16]
 8005c18:	4a4e      	ldr	r2, [pc, #312]	; (8005d54 <xTaskIncrementTick+0x158>)
 8005c1a:	693b      	ldr	r3, [r7, #16]
 8005c1c:	6013      	str	r3, [r2, #0]
 8005c1e:	693b      	ldr	r3, [r7, #16]
 8005c20:	2b00      	cmp	r3, #0
 8005c22:	d11f      	bne.n	8005c64 <xTaskIncrementTick+0x68>
 8005c24:	4b4c      	ldr	r3, [pc, #304]	; (8005d58 <xTaskIncrementTick+0x15c>)
 8005c26:	681b      	ldr	r3, [r3, #0]
 8005c28:	681b      	ldr	r3, [r3, #0]
 8005c2a:	2b00      	cmp	r3, #0
 8005c2c:	d009      	beq.n	8005c42 <xTaskIncrementTick+0x46>
 8005c2e:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005c32:	f383 8811 	msr	BASEPRI, r3
 8005c36:	f3bf 8f6f 	isb	sy
 8005c3a:	f3bf 8f4f 	dsb	sy
 8005c3e:	603b      	str	r3, [r7, #0]
 8005c40:	e7fe      	b.n	8005c40 <xTaskIncrementTick+0x44>
 8005c42:	4b45      	ldr	r3, [pc, #276]	; (8005d58 <xTaskIncrementTick+0x15c>)
 8005c44:	681b      	ldr	r3, [r3, #0]
 8005c46:	60fb      	str	r3, [r7, #12]
 8005c48:	4b44      	ldr	r3, [pc, #272]	; (8005d5c <xTaskIncrementTick+0x160>)
 8005c4a:	681b      	ldr	r3, [r3, #0]
 8005c4c:	4a42      	ldr	r2, [pc, #264]	; (8005d58 <xTaskIncrementTick+0x15c>)
 8005c4e:	6013      	str	r3, [r2, #0]
 8005c50:	4a42      	ldr	r2, [pc, #264]	; (8005d5c <xTaskIncrementTick+0x160>)
 8005c52:	68fb      	ldr	r3, [r7, #12]
 8005c54:	6013      	str	r3, [r2, #0]
 8005c56:	4b42      	ldr	r3, [pc, #264]	; (8005d60 <xTaskIncrementTick+0x164>)
 8005c58:	681b      	ldr	r3, [r3, #0]
 8005c5a:	3301      	adds	r3, #1
 8005c5c:	4a40      	ldr	r2, [pc, #256]	; (8005d60 <xTaskIncrementTick+0x164>)
 8005c5e:	6013      	str	r3, [r2, #0]
 8005c60:	f000 fafe 	bl	8006260 <prvResetNextTaskUnblockTime>
 8005c64:	4b3f      	ldr	r3, [pc, #252]	; (8005d64 <xTaskIncrementTick+0x168>)
 8005c66:	681b      	ldr	r3, [r3, #0]
 8005c68:	693a      	ldr	r2, [r7, #16]
 8005c6a:	429a      	cmp	r2, r3
 8005c6c:	d348      	bcc.n	8005d00 <xTaskIncrementTick+0x104>
 8005c6e:	4b3a      	ldr	r3, [pc, #232]	; (8005d58 <xTaskIncrementTick+0x15c>)
 8005c70:	681b      	ldr	r3, [r3, #0]
 8005c72:	681b      	ldr	r3, [r3, #0]
 8005c74:	2b00      	cmp	r3, #0
 8005c76:	d104      	bne.n	8005c82 <xTaskIncrementTick+0x86>
 8005c78:	4b3a      	ldr	r3, [pc, #232]	; (8005d64 <xTaskIncrementTick+0x168>)
 8005c7a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8005c7e:	601a      	str	r2, [r3, #0]
 8005c80:	e03e      	b.n	8005d00 <xTaskIncrementTick+0x104>
 8005c82:	4b35      	ldr	r3, [pc, #212]	; (8005d58 <xTaskIncrementTick+0x15c>)
 8005c84:	681b      	ldr	r3, [r3, #0]
 8005c86:	68db      	ldr	r3, [r3, #12]
 8005c88:	68db      	ldr	r3, [r3, #12]
 8005c8a:	60bb      	str	r3, [r7, #8]
 8005c8c:	68bb      	ldr	r3, [r7, #8]
 8005c8e:	685b      	ldr	r3, [r3, #4]
 8005c90:	607b      	str	r3, [r7, #4]
 8005c92:	693a      	ldr	r2, [r7, #16]
 8005c94:	687b      	ldr	r3, [r7, #4]
 8005c96:	429a      	cmp	r2, r3
 8005c98:	d203      	bcs.n	8005ca2 <xTaskIncrementTick+0xa6>
 8005c9a:	4a32      	ldr	r2, [pc, #200]	; (8005d64 <xTaskIncrementTick+0x168>)
 8005c9c:	687b      	ldr	r3, [r7, #4]
 8005c9e:	6013      	str	r3, [r2, #0]
 8005ca0:	e02e      	b.n	8005d00 <xTaskIncrementTick+0x104>
 8005ca2:	68bb      	ldr	r3, [r7, #8]
 8005ca4:	3304      	adds	r3, #4
 8005ca6:	4618      	mov	r0, r3
 8005ca8:	f7fe ffde 	bl	8004c68 <uxListRemove>
 8005cac:	68bb      	ldr	r3, [r7, #8]
 8005cae:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8005cb0:	2b00      	cmp	r3, #0
 8005cb2:	d004      	beq.n	8005cbe <xTaskIncrementTick+0xc2>
 8005cb4:	68bb      	ldr	r3, [r7, #8]
 8005cb6:	3318      	adds	r3, #24
 8005cb8:	4618      	mov	r0, r3
 8005cba:	f7fe ffd5 	bl	8004c68 <uxListRemove>
 8005cbe:	68bb      	ldr	r3, [r7, #8]
 8005cc0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8005cc2:	2201      	movs	r2, #1
 8005cc4:	409a      	lsls	r2, r3
 8005cc6:	4b28      	ldr	r3, [pc, #160]	; (8005d68 <xTaskIncrementTick+0x16c>)
 8005cc8:	681b      	ldr	r3, [r3, #0]
 8005cca:	4313      	orrs	r3, r2
 8005ccc:	4a26      	ldr	r2, [pc, #152]	; (8005d68 <xTaskIncrementTick+0x16c>)
 8005cce:	6013      	str	r3, [r2, #0]
 8005cd0:	68bb      	ldr	r3, [r7, #8]
 8005cd2:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8005cd4:	4613      	mov	r3, r2
 8005cd6:	009b      	lsls	r3, r3, #2
 8005cd8:	4413      	add	r3, r2
 8005cda:	009b      	lsls	r3, r3, #2
 8005cdc:	4a23      	ldr	r2, [pc, #140]	; (8005d6c <xTaskIncrementTick+0x170>)
 8005cde:	441a      	add	r2, r3
 8005ce0:	68bb      	ldr	r3, [r7, #8]
 8005ce2:	3304      	adds	r3, #4
 8005ce4:	4619      	mov	r1, r3
 8005ce6:	4610      	mov	r0, r2
 8005ce8:	f7fe ff63 	bl	8004bb2 <vListInsertEnd>
 8005cec:	68bb      	ldr	r3, [r7, #8]
 8005cee:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8005cf0:	4b1f      	ldr	r3, [pc, #124]	; (8005d70 <xTaskIncrementTick+0x174>)
 8005cf2:	681b      	ldr	r3, [r3, #0]
 8005cf4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8005cf6:	429a      	cmp	r2, r3
 8005cf8:	d3b9      	bcc.n	8005c6e <xTaskIncrementTick+0x72>
 8005cfa:	2301      	movs	r3, #1
 8005cfc:	617b      	str	r3, [r7, #20]
 8005cfe:	e7b6      	b.n	8005c6e <xTaskIncrementTick+0x72>
 8005d00:	4b1b      	ldr	r3, [pc, #108]	; (8005d70 <xTaskIncrementTick+0x174>)
 8005d02:	681b      	ldr	r3, [r3, #0]
 8005d04:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8005d06:	4919      	ldr	r1, [pc, #100]	; (8005d6c <xTaskIncrementTick+0x170>)
 8005d08:	4613      	mov	r3, r2
 8005d0a:	009b      	lsls	r3, r3, #2
 8005d0c:	4413      	add	r3, r2
 8005d0e:	009b      	lsls	r3, r3, #2
 8005d10:	440b      	add	r3, r1
 8005d12:	681b      	ldr	r3, [r3, #0]
 8005d14:	2b01      	cmp	r3, #1
 8005d16:	d901      	bls.n	8005d1c <xTaskIncrementTick+0x120>
 8005d18:	2301      	movs	r3, #1
 8005d1a:	617b      	str	r3, [r7, #20]
 8005d1c:	4b15      	ldr	r3, [pc, #84]	; (8005d74 <xTaskIncrementTick+0x178>)
 8005d1e:	681b      	ldr	r3, [r3, #0]
 8005d20:	2b00      	cmp	r3, #0
 8005d22:	d109      	bne.n	8005d38 <xTaskIncrementTick+0x13c>
 8005d24:	f7fd f9ad 	bl	8003082 <vApplicationTickHook>
 8005d28:	e006      	b.n	8005d38 <xTaskIncrementTick+0x13c>
 8005d2a:	4b12      	ldr	r3, [pc, #72]	; (8005d74 <xTaskIncrementTick+0x178>)
 8005d2c:	681b      	ldr	r3, [r3, #0]
 8005d2e:	3301      	adds	r3, #1
 8005d30:	4a10      	ldr	r2, [pc, #64]	; (8005d74 <xTaskIncrementTick+0x178>)
 8005d32:	6013      	str	r3, [r2, #0]
 8005d34:	f7fd f9a5 	bl	8003082 <vApplicationTickHook>
 8005d38:	4b0f      	ldr	r3, [pc, #60]	; (8005d78 <xTaskIncrementTick+0x17c>)
 8005d3a:	681b      	ldr	r3, [r3, #0]
 8005d3c:	2b00      	cmp	r3, #0
 8005d3e:	d001      	beq.n	8005d44 <xTaskIncrementTick+0x148>
 8005d40:	2301      	movs	r3, #1
 8005d42:	617b      	str	r3, [r7, #20]
 8005d44:	697b      	ldr	r3, [r7, #20]
 8005d46:	4618      	mov	r0, r3
 8005d48:	3718      	adds	r7, #24
 8005d4a:	46bd      	mov	sp, r7
 8005d4c:	bd80      	pop	{r7, pc}
 8005d4e:	bf00      	nop
 8005d50:	20000b58 	.word	0x20000b58
 8005d54:	20000b34 	.word	0x20000b34
 8005d58:	20000ae8 	.word	0x20000ae8
 8005d5c:	20000aec 	.word	0x20000aec
 8005d60:	20000b48 	.word	0x20000b48
 8005d64:	20000b50 	.word	0x20000b50
 8005d68:	20000b38 	.word	0x20000b38
 8005d6c:	20000a5c 	.word	0x20000a5c
 8005d70:	20000a58 	.word	0x20000a58
 8005d74:	20000b40 	.word	0x20000b40
 8005d78:	20000b44 	.word	0x20000b44

08005d7c <vTaskSwitchContext>:
 8005d7c:	b580      	push	{r7, lr}
 8005d7e:	b088      	sub	sp, #32
 8005d80:	af00      	add	r7, sp, #0
 8005d82:	4b3b      	ldr	r3, [pc, #236]	; (8005e70 <vTaskSwitchContext+0xf4>)
 8005d84:	681b      	ldr	r3, [r3, #0]
 8005d86:	2b00      	cmp	r3, #0
 8005d88:	d003      	beq.n	8005d92 <vTaskSwitchContext+0x16>
 8005d8a:	4b3a      	ldr	r3, [pc, #232]	; (8005e74 <vTaskSwitchContext+0xf8>)
 8005d8c:	2201      	movs	r2, #1
 8005d8e:	601a      	str	r2, [r3, #0]
 8005d90:	e06a      	b.n	8005e68 <vTaskSwitchContext+0xec>
 8005d92:	4b38      	ldr	r3, [pc, #224]	; (8005e74 <vTaskSwitchContext+0xf8>)
 8005d94:	2200      	movs	r2, #0
 8005d96:	601a      	str	r2, [r3, #0]
 8005d98:	4b37      	ldr	r3, [pc, #220]	; (8005e78 <vTaskSwitchContext+0xfc>)
 8005d9a:	681b      	ldr	r3, [r3, #0]
 8005d9c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8005d9e:	61fb      	str	r3, [r7, #28]
 8005da0:	f04f 33a5 	mov.w	r3, #2779096485	; 0xa5a5a5a5
 8005da4:	61bb      	str	r3, [r7, #24]
 8005da6:	69fb      	ldr	r3, [r7, #28]
 8005da8:	681b      	ldr	r3, [r3, #0]
 8005daa:	69ba      	ldr	r2, [r7, #24]
 8005dac:	429a      	cmp	r2, r3
 8005dae:	d111      	bne.n	8005dd4 <vTaskSwitchContext+0x58>
 8005db0:	69fb      	ldr	r3, [r7, #28]
 8005db2:	3304      	adds	r3, #4
 8005db4:	681b      	ldr	r3, [r3, #0]
 8005db6:	69ba      	ldr	r2, [r7, #24]
 8005db8:	429a      	cmp	r2, r3
 8005dba:	d10b      	bne.n	8005dd4 <vTaskSwitchContext+0x58>
 8005dbc:	69fb      	ldr	r3, [r7, #28]
 8005dbe:	3308      	adds	r3, #8
 8005dc0:	681b      	ldr	r3, [r3, #0]
 8005dc2:	69ba      	ldr	r2, [r7, #24]
 8005dc4:	429a      	cmp	r2, r3
 8005dc6:	d105      	bne.n	8005dd4 <vTaskSwitchContext+0x58>
 8005dc8:	69fb      	ldr	r3, [r7, #28]
 8005dca:	330c      	adds	r3, #12
 8005dcc:	681b      	ldr	r3, [r3, #0]
 8005dce:	69ba      	ldr	r2, [r7, #24]
 8005dd0:	429a      	cmp	r2, r3
 8005dd2:	d008      	beq.n	8005de6 <vTaskSwitchContext+0x6a>
 8005dd4:	4b28      	ldr	r3, [pc, #160]	; (8005e78 <vTaskSwitchContext+0xfc>)
 8005dd6:	681a      	ldr	r2, [r3, #0]
 8005dd8:	4b27      	ldr	r3, [pc, #156]	; (8005e78 <vTaskSwitchContext+0xfc>)
 8005dda:	681b      	ldr	r3, [r3, #0]
 8005ddc:	3334      	adds	r3, #52	; 0x34
 8005dde:	4619      	mov	r1, r3
 8005de0:	4610      	mov	r0, r2
 8005de2:	f7fd f954 	bl	800308e <vApplicationStackOverflowHook>
 8005de6:	4b25      	ldr	r3, [pc, #148]	; (8005e7c <vTaskSwitchContext+0x100>)
 8005de8:	681b      	ldr	r3, [r3, #0]
 8005dea:	60fb      	str	r3, [r7, #12]
 8005dec:	68fb      	ldr	r3, [r7, #12]
 8005dee:	fab3 f383 	clz	r3, r3
 8005df2:	72fb      	strb	r3, [r7, #11]
 8005df4:	7afb      	ldrb	r3, [r7, #11]
 8005df6:	f1c3 031f 	rsb	r3, r3, #31
 8005dfa:	617b      	str	r3, [r7, #20]
 8005dfc:	4920      	ldr	r1, [pc, #128]	; (8005e80 <vTaskSwitchContext+0x104>)
 8005dfe:	697a      	ldr	r2, [r7, #20]
 8005e00:	4613      	mov	r3, r2
 8005e02:	009b      	lsls	r3, r3, #2
 8005e04:	4413      	add	r3, r2
 8005e06:	009b      	lsls	r3, r3, #2
 8005e08:	440b      	add	r3, r1
 8005e0a:	681b      	ldr	r3, [r3, #0]
 8005e0c:	2b00      	cmp	r3, #0
 8005e0e:	d109      	bne.n	8005e24 <vTaskSwitchContext+0xa8>
 8005e10:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005e14:	f383 8811 	msr	BASEPRI, r3
 8005e18:	f3bf 8f6f 	isb	sy
 8005e1c:	f3bf 8f4f 	dsb	sy
 8005e20:	607b      	str	r3, [r7, #4]
 8005e22:	e7fe      	b.n	8005e22 <vTaskSwitchContext+0xa6>
 8005e24:	697a      	ldr	r2, [r7, #20]
 8005e26:	4613      	mov	r3, r2
 8005e28:	009b      	lsls	r3, r3, #2
 8005e2a:	4413      	add	r3, r2
 8005e2c:	009b      	lsls	r3, r3, #2
 8005e2e:	4a14      	ldr	r2, [pc, #80]	; (8005e80 <vTaskSwitchContext+0x104>)
 8005e30:	4413      	add	r3, r2
 8005e32:	613b      	str	r3, [r7, #16]
 8005e34:	693b      	ldr	r3, [r7, #16]
 8005e36:	685b      	ldr	r3, [r3, #4]
 8005e38:	685a      	ldr	r2, [r3, #4]
 8005e3a:	693b      	ldr	r3, [r7, #16]
 8005e3c:	605a      	str	r2, [r3, #4]
 8005e3e:	693b      	ldr	r3, [r7, #16]
 8005e40:	685a      	ldr	r2, [r3, #4]
 8005e42:	693b      	ldr	r3, [r7, #16]
 8005e44:	3308      	adds	r3, #8
 8005e46:	429a      	cmp	r2, r3
 8005e48:	d104      	bne.n	8005e54 <vTaskSwitchContext+0xd8>
 8005e4a:	693b      	ldr	r3, [r7, #16]
 8005e4c:	685b      	ldr	r3, [r3, #4]
 8005e4e:	685a      	ldr	r2, [r3, #4]
 8005e50:	693b      	ldr	r3, [r7, #16]
 8005e52:	605a      	str	r2, [r3, #4]
 8005e54:	693b      	ldr	r3, [r7, #16]
 8005e56:	685b      	ldr	r3, [r3, #4]
 8005e58:	68db      	ldr	r3, [r3, #12]
 8005e5a:	4a07      	ldr	r2, [pc, #28]	; (8005e78 <vTaskSwitchContext+0xfc>)
 8005e5c:	6013      	str	r3, [r2, #0]
 8005e5e:	4b06      	ldr	r3, [pc, #24]	; (8005e78 <vTaskSwitchContext+0xfc>)
 8005e60:	681b      	ldr	r3, [r3, #0]
 8005e62:	3350      	adds	r3, #80	; 0x50
 8005e64:	4a07      	ldr	r2, [pc, #28]	; (8005e84 <vTaskSwitchContext+0x108>)
 8005e66:	6013      	str	r3, [r2, #0]
 8005e68:	bf00      	nop
 8005e6a:	3720      	adds	r7, #32
 8005e6c:	46bd      	mov	sp, r7
 8005e6e:	bd80      	pop	{r7, pc}
 8005e70:	20000b58 	.word	0x20000b58
 8005e74:	20000b44 	.word	0x20000b44
 8005e78:	20000a58 	.word	0x20000a58
 8005e7c:	20000b38 	.word	0x20000b38
 8005e80:	20000a5c 	.word	0x20000a5c
 8005e84:	20000014 	.word	0x20000014

08005e88 <vTaskPlaceOnEventList>:
 8005e88:	b580      	push	{r7, lr}
 8005e8a:	b084      	sub	sp, #16
 8005e8c:	af00      	add	r7, sp, #0
 8005e8e:	6078      	str	r0, [r7, #4]
 8005e90:	6039      	str	r1, [r7, #0]
 8005e92:	687b      	ldr	r3, [r7, #4]
 8005e94:	2b00      	cmp	r3, #0
 8005e96:	d109      	bne.n	8005eac <vTaskPlaceOnEventList+0x24>
 8005e98:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005e9c:	f383 8811 	msr	BASEPRI, r3
 8005ea0:	f3bf 8f6f 	isb	sy
 8005ea4:	f3bf 8f4f 	dsb	sy
 8005ea8:	60fb      	str	r3, [r7, #12]
 8005eaa:	e7fe      	b.n	8005eaa <vTaskPlaceOnEventList+0x22>
 8005eac:	4b07      	ldr	r3, [pc, #28]	; (8005ecc <vTaskPlaceOnEventList+0x44>)
 8005eae:	681b      	ldr	r3, [r3, #0]
 8005eb0:	3318      	adds	r3, #24
 8005eb2:	4619      	mov	r1, r3
 8005eb4:	6878      	ldr	r0, [r7, #4]
 8005eb6:	f7fe fe9f 	bl	8004bf8 <vListInsert>
 8005eba:	2101      	movs	r1, #1
 8005ebc:	6838      	ldr	r0, [r7, #0]
 8005ebe:	f000 fb7b 	bl	80065b8 <prvAddCurrentTaskToDelayedList>
 8005ec2:	bf00      	nop
 8005ec4:	3710      	adds	r7, #16
 8005ec6:	46bd      	mov	sp, r7
 8005ec8:	bd80      	pop	{r7, pc}
 8005eca:	bf00      	nop
 8005ecc:	20000a58 	.word	0x20000a58

08005ed0 <vTaskPlaceOnEventListRestricted>:
 8005ed0:	b580      	push	{r7, lr}
 8005ed2:	b086      	sub	sp, #24
 8005ed4:	af00      	add	r7, sp, #0
 8005ed6:	60f8      	str	r0, [r7, #12]
 8005ed8:	60b9      	str	r1, [r7, #8]
 8005eda:	607a      	str	r2, [r7, #4]
 8005edc:	68fb      	ldr	r3, [r7, #12]
 8005ede:	2b00      	cmp	r3, #0
 8005ee0:	d109      	bne.n	8005ef6 <vTaskPlaceOnEventListRestricted+0x26>
 8005ee2:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005ee6:	f383 8811 	msr	BASEPRI, r3
 8005eea:	f3bf 8f6f 	isb	sy
 8005eee:	f3bf 8f4f 	dsb	sy
 8005ef2:	617b      	str	r3, [r7, #20]
 8005ef4:	e7fe      	b.n	8005ef4 <vTaskPlaceOnEventListRestricted+0x24>
 8005ef6:	4b0a      	ldr	r3, [pc, #40]	; (8005f20 <vTaskPlaceOnEventListRestricted+0x50>)
 8005ef8:	681b      	ldr	r3, [r3, #0]
 8005efa:	3318      	adds	r3, #24
 8005efc:	4619      	mov	r1, r3
 8005efe:	68f8      	ldr	r0, [r7, #12]
 8005f00:	f7fe fe57 	bl	8004bb2 <vListInsertEnd>
 8005f04:	687b      	ldr	r3, [r7, #4]
 8005f06:	2b00      	cmp	r3, #0
 8005f08:	d002      	beq.n	8005f10 <vTaskPlaceOnEventListRestricted+0x40>
 8005f0a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8005f0e:	60bb      	str	r3, [r7, #8]
 8005f10:	6879      	ldr	r1, [r7, #4]
 8005f12:	68b8      	ldr	r0, [r7, #8]
 8005f14:	f000 fb50 	bl	80065b8 <prvAddCurrentTaskToDelayedList>
 8005f18:	bf00      	nop
 8005f1a:	3718      	adds	r7, #24
 8005f1c:	46bd      	mov	sp, r7
 8005f1e:	bd80      	pop	{r7, pc}
 8005f20:	20000a58 	.word	0x20000a58

08005f24 <xTaskRemoveFromEventList>:
 8005f24:	b580      	push	{r7, lr}
 8005f26:	b086      	sub	sp, #24
 8005f28:	af00      	add	r7, sp, #0
 8005f2a:	6078      	str	r0, [r7, #4]
 8005f2c:	687b      	ldr	r3, [r7, #4]
 8005f2e:	68db      	ldr	r3, [r3, #12]
 8005f30:	68db      	ldr	r3, [r3, #12]
 8005f32:	613b      	str	r3, [r7, #16]
 8005f34:	693b      	ldr	r3, [r7, #16]
 8005f36:	2b00      	cmp	r3, #0
 8005f38:	d109      	bne.n	8005f4e <xTaskRemoveFromEventList+0x2a>
 8005f3a:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005f3e:	f383 8811 	msr	BASEPRI, r3
 8005f42:	f3bf 8f6f 	isb	sy
 8005f46:	f3bf 8f4f 	dsb	sy
 8005f4a:	60fb      	str	r3, [r7, #12]
 8005f4c:	e7fe      	b.n	8005f4c <xTaskRemoveFromEventList+0x28>
 8005f4e:	693b      	ldr	r3, [r7, #16]
 8005f50:	3318      	adds	r3, #24
 8005f52:	4618      	mov	r0, r3
 8005f54:	f7fe fe88 	bl	8004c68 <uxListRemove>
 8005f58:	4b1d      	ldr	r3, [pc, #116]	; (8005fd0 <xTaskRemoveFromEventList+0xac>)
 8005f5a:	681b      	ldr	r3, [r3, #0]
 8005f5c:	2b00      	cmp	r3, #0
 8005f5e:	d11c      	bne.n	8005f9a <xTaskRemoveFromEventList+0x76>
 8005f60:	693b      	ldr	r3, [r7, #16]
 8005f62:	3304      	adds	r3, #4
 8005f64:	4618      	mov	r0, r3
 8005f66:	f7fe fe7f 	bl	8004c68 <uxListRemove>
 8005f6a:	693b      	ldr	r3, [r7, #16]
 8005f6c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8005f6e:	2201      	movs	r2, #1
 8005f70:	409a      	lsls	r2, r3
 8005f72:	4b18      	ldr	r3, [pc, #96]	; (8005fd4 <xTaskRemoveFromEventList+0xb0>)
 8005f74:	681b      	ldr	r3, [r3, #0]
 8005f76:	4313      	orrs	r3, r2
 8005f78:	4a16      	ldr	r2, [pc, #88]	; (8005fd4 <xTaskRemoveFromEventList+0xb0>)
 8005f7a:	6013      	str	r3, [r2, #0]
 8005f7c:	693b      	ldr	r3, [r7, #16]
 8005f7e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8005f80:	4613      	mov	r3, r2
 8005f82:	009b      	lsls	r3, r3, #2
 8005f84:	4413      	add	r3, r2
 8005f86:	009b      	lsls	r3, r3, #2
 8005f88:	4a13      	ldr	r2, [pc, #76]	; (8005fd8 <xTaskRemoveFromEventList+0xb4>)
 8005f8a:	441a      	add	r2, r3
 8005f8c:	693b      	ldr	r3, [r7, #16]
 8005f8e:	3304      	adds	r3, #4
 8005f90:	4619      	mov	r1, r3
 8005f92:	4610      	mov	r0, r2
 8005f94:	f7fe fe0d 	bl	8004bb2 <vListInsertEnd>
 8005f98:	e005      	b.n	8005fa6 <xTaskRemoveFromEventList+0x82>
 8005f9a:	693b      	ldr	r3, [r7, #16]
 8005f9c:	3318      	adds	r3, #24
 8005f9e:	4619      	mov	r1, r3
 8005fa0:	480e      	ldr	r0, [pc, #56]	; (8005fdc <xTaskRemoveFromEventList+0xb8>)
 8005fa2:	f7fe fe06 	bl	8004bb2 <vListInsertEnd>
 8005fa6:	693b      	ldr	r3, [r7, #16]
 8005fa8:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8005faa:	4b0d      	ldr	r3, [pc, #52]	; (8005fe0 <xTaskRemoveFromEventList+0xbc>)
 8005fac:	681b      	ldr	r3, [r3, #0]
 8005fae:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8005fb0:	429a      	cmp	r2, r3
 8005fb2:	d905      	bls.n	8005fc0 <xTaskRemoveFromEventList+0x9c>
 8005fb4:	2301      	movs	r3, #1
 8005fb6:	617b      	str	r3, [r7, #20]
 8005fb8:	4b0a      	ldr	r3, [pc, #40]	; (8005fe4 <xTaskRemoveFromEventList+0xc0>)
 8005fba:	2201      	movs	r2, #1
 8005fbc:	601a      	str	r2, [r3, #0]
 8005fbe:	e001      	b.n	8005fc4 <xTaskRemoveFromEventList+0xa0>
 8005fc0:	2300      	movs	r3, #0
 8005fc2:	617b      	str	r3, [r7, #20]
 8005fc4:	697b      	ldr	r3, [r7, #20]
 8005fc6:	4618      	mov	r0, r3
 8005fc8:	3718      	adds	r7, #24
 8005fca:	46bd      	mov	sp, r7
 8005fcc:	bd80      	pop	{r7, pc}
 8005fce:	bf00      	nop
 8005fd0:	20000b58 	.word	0x20000b58
 8005fd4:	20000b38 	.word	0x20000b38
 8005fd8:	20000a5c 	.word	0x20000a5c
 8005fdc:	20000af0 	.word	0x20000af0
 8005fe0:	20000a58 	.word	0x20000a58
 8005fe4:	20000b44 	.word	0x20000b44

08005fe8 <vTaskInternalSetTimeOutState>:
 8005fe8:	b480      	push	{r7}
 8005fea:	b083      	sub	sp, #12
 8005fec:	af00      	add	r7, sp, #0
 8005fee:	6078      	str	r0, [r7, #4]
 8005ff0:	4b06      	ldr	r3, [pc, #24]	; (800600c <vTaskInternalSetTimeOutState+0x24>)
 8005ff2:	681a      	ldr	r2, [r3, #0]
 8005ff4:	687b      	ldr	r3, [r7, #4]
 8005ff6:	601a      	str	r2, [r3, #0]
 8005ff8:	4b05      	ldr	r3, [pc, #20]	; (8006010 <vTaskInternalSetTimeOutState+0x28>)
 8005ffa:	681a      	ldr	r2, [r3, #0]
 8005ffc:	687b      	ldr	r3, [r7, #4]
 8005ffe:	605a      	str	r2, [r3, #4]
 8006000:	bf00      	nop
 8006002:	370c      	adds	r7, #12
 8006004:	46bd      	mov	sp, r7
 8006006:	bc80      	pop	{r7}
 8006008:	4770      	bx	lr
 800600a:	bf00      	nop
 800600c:	20000b48 	.word	0x20000b48
 8006010:	20000b34 	.word	0x20000b34

08006014 <xTaskCheckForTimeOut>:
 8006014:	b580      	push	{r7, lr}
 8006016:	b088      	sub	sp, #32
 8006018:	af00      	add	r7, sp, #0
 800601a:	6078      	str	r0, [r7, #4]
 800601c:	6039      	str	r1, [r7, #0]
 800601e:	687b      	ldr	r3, [r7, #4]
 8006020:	2b00      	cmp	r3, #0
 8006022:	d109      	bne.n	8006038 <xTaskCheckForTimeOut+0x24>
 8006024:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006028:	f383 8811 	msr	BASEPRI, r3
 800602c:	f3bf 8f6f 	isb	sy
 8006030:	f3bf 8f4f 	dsb	sy
 8006034:	613b      	str	r3, [r7, #16]
 8006036:	e7fe      	b.n	8006036 <xTaskCheckForTimeOut+0x22>
 8006038:	683b      	ldr	r3, [r7, #0]
 800603a:	2b00      	cmp	r3, #0
 800603c:	d109      	bne.n	8006052 <xTaskCheckForTimeOut+0x3e>
 800603e:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006042:	f383 8811 	msr	BASEPRI, r3
 8006046:	f3bf 8f6f 	isb	sy
 800604a:	f3bf 8f4f 	dsb	sy
 800604e:	60fb      	str	r3, [r7, #12]
 8006050:	e7fe      	b.n	8006050 <xTaskCheckForTimeOut+0x3c>
 8006052:	f000 fed7 	bl	8006e04 <vPortEnterCritical>
 8006056:	4b1d      	ldr	r3, [pc, #116]	; (80060cc <xTaskCheckForTimeOut+0xb8>)
 8006058:	681b      	ldr	r3, [r3, #0]
 800605a:	61bb      	str	r3, [r7, #24]
 800605c:	687b      	ldr	r3, [r7, #4]
 800605e:	685b      	ldr	r3, [r3, #4]
 8006060:	69ba      	ldr	r2, [r7, #24]
 8006062:	1ad3      	subs	r3, r2, r3
 8006064:	617b      	str	r3, [r7, #20]
 8006066:	683b      	ldr	r3, [r7, #0]
 8006068:	681b      	ldr	r3, [r3, #0]
 800606a:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 800606e:	d102      	bne.n	8006076 <xTaskCheckForTimeOut+0x62>
 8006070:	2300      	movs	r3, #0
 8006072:	61fb      	str	r3, [r7, #28]
 8006074:	e023      	b.n	80060be <xTaskCheckForTimeOut+0xaa>
 8006076:	687b      	ldr	r3, [r7, #4]
 8006078:	681a      	ldr	r2, [r3, #0]
 800607a:	4b15      	ldr	r3, [pc, #84]	; (80060d0 <xTaskCheckForTimeOut+0xbc>)
 800607c:	681b      	ldr	r3, [r3, #0]
 800607e:	429a      	cmp	r2, r3
 8006080:	d007      	beq.n	8006092 <xTaskCheckForTimeOut+0x7e>
 8006082:	687b      	ldr	r3, [r7, #4]
 8006084:	685b      	ldr	r3, [r3, #4]
 8006086:	69ba      	ldr	r2, [r7, #24]
 8006088:	429a      	cmp	r2, r3
 800608a:	d302      	bcc.n	8006092 <xTaskCheckForTimeOut+0x7e>
 800608c:	2301      	movs	r3, #1
 800608e:	61fb      	str	r3, [r7, #28]
 8006090:	e015      	b.n	80060be <xTaskCheckForTimeOut+0xaa>
 8006092:	683b      	ldr	r3, [r7, #0]
 8006094:	681b      	ldr	r3, [r3, #0]
 8006096:	697a      	ldr	r2, [r7, #20]
 8006098:	429a      	cmp	r2, r3
 800609a:	d20b      	bcs.n	80060b4 <xTaskCheckForTimeOut+0xa0>
 800609c:	683b      	ldr	r3, [r7, #0]
 800609e:	681a      	ldr	r2, [r3, #0]
 80060a0:	697b      	ldr	r3, [r7, #20]
 80060a2:	1ad2      	subs	r2, r2, r3
 80060a4:	683b      	ldr	r3, [r7, #0]
 80060a6:	601a      	str	r2, [r3, #0]
 80060a8:	6878      	ldr	r0, [r7, #4]
 80060aa:	f7ff ff9d 	bl	8005fe8 <vTaskInternalSetTimeOutState>
 80060ae:	2300      	movs	r3, #0
 80060b0:	61fb      	str	r3, [r7, #28]
 80060b2:	e004      	b.n	80060be <xTaskCheckForTimeOut+0xaa>
 80060b4:	683b      	ldr	r3, [r7, #0]
 80060b6:	2200      	movs	r2, #0
 80060b8:	601a      	str	r2, [r3, #0]
 80060ba:	2301      	movs	r3, #1
 80060bc:	61fb      	str	r3, [r7, #28]
 80060be:	f000 fecf 	bl	8006e60 <vPortExitCritical>
 80060c2:	69fb      	ldr	r3, [r7, #28]
 80060c4:	4618      	mov	r0, r3
 80060c6:	3720      	adds	r7, #32
 80060c8:	46bd      	mov	sp, r7
 80060ca:	bd80      	pop	{r7, pc}
 80060cc:	20000b34 	.word	0x20000b34
 80060d0:	20000b48 	.word	0x20000b48

080060d4 <vTaskMissedYield>:
 80060d4:	b480      	push	{r7}
 80060d6:	af00      	add	r7, sp, #0
 80060d8:	4b03      	ldr	r3, [pc, #12]	; (80060e8 <vTaskMissedYield+0x14>)
 80060da:	2201      	movs	r2, #1
 80060dc:	601a      	str	r2, [r3, #0]
 80060de:	bf00      	nop
 80060e0:	46bd      	mov	sp, r7
 80060e2:	bc80      	pop	{r7}
 80060e4:	4770      	bx	lr
 80060e6:	bf00      	nop
 80060e8:	20000b44 	.word	0x20000b44

080060ec <prvIdleTask>:
 80060ec:	b580      	push	{r7, lr}
 80060ee:	b082      	sub	sp, #8
 80060f0:	af00      	add	r7, sp, #0
 80060f2:	6078      	str	r0, [r7, #4]
 80060f4:	f000 f854 	bl	80061a0 <prvCheckTasksWaitingTermination>
 80060f8:	4b07      	ldr	r3, [pc, #28]	; (8006118 <prvIdleTask+0x2c>)
 80060fa:	681b      	ldr	r3, [r3, #0]
 80060fc:	2b01      	cmp	r3, #1
 80060fe:	d907      	bls.n	8006110 <prvIdleTask+0x24>
 8006100:	4b06      	ldr	r3, [pc, #24]	; (800611c <prvIdleTask+0x30>)
 8006102:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8006106:	601a      	str	r2, [r3, #0]
 8006108:	f3bf 8f4f 	dsb	sy
 800610c:	f3bf 8f6f 	isb	sy
 8006110:	f7fc ffb1 	bl	8003076 <vApplicationIdleHook>
 8006114:	e7ee      	b.n	80060f4 <prvIdleTask+0x8>
 8006116:	bf00      	nop
 8006118:	20000a5c 	.word	0x20000a5c
 800611c:	e000ed04 	.word	0xe000ed04

08006120 <prvInitialiseTaskLists>:
 8006120:	b580      	push	{r7, lr}
 8006122:	b082      	sub	sp, #8
 8006124:	af00      	add	r7, sp, #0
 8006126:	2300      	movs	r3, #0
 8006128:	607b      	str	r3, [r7, #4]
 800612a:	e00c      	b.n	8006146 <prvInitialiseTaskLists+0x26>
 800612c:	687a      	ldr	r2, [r7, #4]
 800612e:	4613      	mov	r3, r2
 8006130:	009b      	lsls	r3, r3, #2
 8006132:	4413      	add	r3, r2
 8006134:	009b      	lsls	r3, r3, #2
 8006136:	4a12      	ldr	r2, [pc, #72]	; (8006180 <prvInitialiseTaskLists+0x60>)
 8006138:	4413      	add	r3, r2
 800613a:	4618      	mov	r0, r3
 800613c:	f7fe fd0e 	bl	8004b5c <vListInitialise>
 8006140:	687b      	ldr	r3, [r7, #4]
 8006142:	3301      	adds	r3, #1
 8006144:	607b      	str	r3, [r7, #4]
 8006146:	687b      	ldr	r3, [r7, #4]
 8006148:	2b04      	cmp	r3, #4
 800614a:	d9ef      	bls.n	800612c <prvInitialiseTaskLists+0xc>
 800614c:	480d      	ldr	r0, [pc, #52]	; (8006184 <prvInitialiseTaskLists+0x64>)
 800614e:	f7fe fd05 	bl	8004b5c <vListInitialise>
 8006152:	480d      	ldr	r0, [pc, #52]	; (8006188 <prvInitialiseTaskLists+0x68>)
 8006154:	f7fe fd02 	bl	8004b5c <vListInitialise>
 8006158:	480c      	ldr	r0, [pc, #48]	; (800618c <prvInitialiseTaskLists+0x6c>)
 800615a:	f7fe fcff 	bl	8004b5c <vListInitialise>
 800615e:	480c      	ldr	r0, [pc, #48]	; (8006190 <prvInitialiseTaskLists+0x70>)
 8006160:	f7fe fcfc 	bl	8004b5c <vListInitialise>
 8006164:	480b      	ldr	r0, [pc, #44]	; (8006194 <prvInitialiseTaskLists+0x74>)
 8006166:	f7fe fcf9 	bl	8004b5c <vListInitialise>
 800616a:	4b0b      	ldr	r3, [pc, #44]	; (8006198 <prvInitialiseTaskLists+0x78>)
 800616c:	4a05      	ldr	r2, [pc, #20]	; (8006184 <prvInitialiseTaskLists+0x64>)
 800616e:	601a      	str	r2, [r3, #0]
 8006170:	4b0a      	ldr	r3, [pc, #40]	; (800619c <prvInitialiseTaskLists+0x7c>)
 8006172:	4a05      	ldr	r2, [pc, #20]	; (8006188 <prvInitialiseTaskLists+0x68>)
 8006174:	601a      	str	r2, [r3, #0]
 8006176:	bf00      	nop
 8006178:	3708      	adds	r7, #8
 800617a:	46bd      	mov	sp, r7
 800617c:	bd80      	pop	{r7, pc}
 800617e:	bf00      	nop
 8006180:	20000a5c 	.word	0x20000a5c
 8006184:	20000ac0 	.word	0x20000ac0
 8006188:	20000ad4 	.word	0x20000ad4
 800618c:	20000af0 	.word	0x20000af0
 8006190:	20000b04 	.word	0x20000b04
 8006194:	20000b1c 	.word	0x20000b1c
 8006198:	20000ae8 	.word	0x20000ae8
 800619c:	20000aec 	.word	0x20000aec

080061a0 <prvCheckTasksWaitingTermination>:
 80061a0:	b580      	push	{r7, lr}
 80061a2:	b082      	sub	sp, #8
 80061a4:	af00      	add	r7, sp, #0
 80061a6:	e019      	b.n	80061dc <prvCheckTasksWaitingTermination+0x3c>
 80061a8:	f000 fe2c 	bl	8006e04 <vPortEnterCritical>
 80061ac:	4b0f      	ldr	r3, [pc, #60]	; (80061ec <prvCheckTasksWaitingTermination+0x4c>)
 80061ae:	68db      	ldr	r3, [r3, #12]
 80061b0:	68db      	ldr	r3, [r3, #12]
 80061b2:	607b      	str	r3, [r7, #4]
 80061b4:	687b      	ldr	r3, [r7, #4]
 80061b6:	3304      	adds	r3, #4
 80061b8:	4618      	mov	r0, r3
 80061ba:	f7fe fd55 	bl	8004c68 <uxListRemove>
 80061be:	4b0c      	ldr	r3, [pc, #48]	; (80061f0 <prvCheckTasksWaitingTermination+0x50>)
 80061c0:	681b      	ldr	r3, [r3, #0]
 80061c2:	3b01      	subs	r3, #1
 80061c4:	4a0a      	ldr	r2, [pc, #40]	; (80061f0 <prvCheckTasksWaitingTermination+0x50>)
 80061c6:	6013      	str	r3, [r2, #0]
 80061c8:	4b0a      	ldr	r3, [pc, #40]	; (80061f4 <prvCheckTasksWaitingTermination+0x54>)
 80061ca:	681b      	ldr	r3, [r3, #0]
 80061cc:	3b01      	subs	r3, #1
 80061ce:	4a09      	ldr	r2, [pc, #36]	; (80061f4 <prvCheckTasksWaitingTermination+0x54>)
 80061d0:	6013      	str	r3, [r2, #0]
 80061d2:	f000 fe45 	bl	8006e60 <vPortExitCritical>
 80061d6:	6878      	ldr	r0, [r7, #4]
 80061d8:	f000 f80e 	bl	80061f8 <prvDeleteTCB>
 80061dc:	4b05      	ldr	r3, [pc, #20]	; (80061f4 <prvCheckTasksWaitingTermination+0x54>)
 80061de:	681b      	ldr	r3, [r3, #0]
 80061e0:	2b00      	cmp	r3, #0
 80061e2:	d1e1      	bne.n	80061a8 <prvCheckTasksWaitingTermination+0x8>
 80061e4:	bf00      	nop
 80061e6:	3708      	adds	r7, #8
 80061e8:	46bd      	mov	sp, r7
 80061ea:	bd80      	pop	{r7, pc}
 80061ec:	20000b04 	.word	0x20000b04
 80061f0:	20000b30 	.word	0x20000b30
 80061f4:	20000b18 	.word	0x20000b18

080061f8 <prvDeleteTCB>:
 80061f8:	b580      	push	{r7, lr}
 80061fa:	b084      	sub	sp, #16
 80061fc:	af00      	add	r7, sp, #0
 80061fe:	6078      	str	r0, [r7, #4]
 8006200:	687b      	ldr	r3, [r7, #4]
 8006202:	3350      	adds	r3, #80	; 0x50
 8006204:	4618      	mov	r0, r3
 8006206:	f000 ffe1 	bl	80071cc <_reclaim_reent>
 800620a:	687b      	ldr	r3, [r7, #4]
 800620c:	f893 30b5 	ldrb.w	r3, [r3, #181]	; 0xb5
 8006210:	2b00      	cmp	r3, #0
 8006212:	d108      	bne.n	8006226 <prvDeleteTCB+0x2e>
 8006214:	687b      	ldr	r3, [r7, #4]
 8006216:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8006218:	4618      	mov	r0, r3
 800621a:	f000 fee3 	bl	8006fe4 <vPortFree>
 800621e:	6878      	ldr	r0, [r7, #4]
 8006220:	f000 fee0 	bl	8006fe4 <vPortFree>
 8006224:	e017      	b.n	8006256 <prvDeleteTCB+0x5e>
 8006226:	687b      	ldr	r3, [r7, #4]
 8006228:	f893 30b5 	ldrb.w	r3, [r3, #181]	; 0xb5
 800622c:	2b01      	cmp	r3, #1
 800622e:	d103      	bne.n	8006238 <prvDeleteTCB+0x40>
 8006230:	6878      	ldr	r0, [r7, #4]
 8006232:	f000 fed7 	bl	8006fe4 <vPortFree>
 8006236:	e00e      	b.n	8006256 <prvDeleteTCB+0x5e>
 8006238:	687b      	ldr	r3, [r7, #4]
 800623a:	f893 30b5 	ldrb.w	r3, [r3, #181]	; 0xb5
 800623e:	2b02      	cmp	r3, #2
 8006240:	d009      	beq.n	8006256 <prvDeleteTCB+0x5e>
 8006242:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006246:	f383 8811 	msr	BASEPRI, r3
 800624a:	f3bf 8f6f 	isb	sy
 800624e:	f3bf 8f4f 	dsb	sy
 8006252:	60fb      	str	r3, [r7, #12]
 8006254:	e7fe      	b.n	8006254 <prvDeleteTCB+0x5c>
 8006256:	bf00      	nop
 8006258:	3710      	adds	r7, #16
 800625a:	46bd      	mov	sp, r7
 800625c:	bd80      	pop	{r7, pc}
	...

08006260 <prvResetNextTaskUnblockTime>:
 8006260:	b480      	push	{r7}
 8006262:	b083      	sub	sp, #12
 8006264:	af00      	add	r7, sp, #0
 8006266:	4b0c      	ldr	r3, [pc, #48]	; (8006298 <prvResetNextTaskUnblockTime+0x38>)
 8006268:	681b      	ldr	r3, [r3, #0]
 800626a:	681b      	ldr	r3, [r3, #0]
 800626c:	2b00      	cmp	r3, #0
 800626e:	d104      	bne.n	800627a <prvResetNextTaskUnblockTime+0x1a>
 8006270:	4b0a      	ldr	r3, [pc, #40]	; (800629c <prvResetNextTaskUnblockTime+0x3c>)
 8006272:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8006276:	601a      	str	r2, [r3, #0]
 8006278:	e008      	b.n	800628c <prvResetNextTaskUnblockTime+0x2c>
 800627a:	4b07      	ldr	r3, [pc, #28]	; (8006298 <prvResetNextTaskUnblockTime+0x38>)
 800627c:	681b      	ldr	r3, [r3, #0]
 800627e:	68db      	ldr	r3, [r3, #12]
 8006280:	68db      	ldr	r3, [r3, #12]
 8006282:	607b      	str	r3, [r7, #4]
 8006284:	687b      	ldr	r3, [r7, #4]
 8006286:	685b      	ldr	r3, [r3, #4]
 8006288:	4a04      	ldr	r2, [pc, #16]	; (800629c <prvResetNextTaskUnblockTime+0x3c>)
 800628a:	6013      	str	r3, [r2, #0]
 800628c:	bf00      	nop
 800628e:	370c      	adds	r7, #12
 8006290:	46bd      	mov	sp, r7
 8006292:	bc80      	pop	{r7}
 8006294:	4770      	bx	lr
 8006296:	bf00      	nop
 8006298:	20000ae8 	.word	0x20000ae8
 800629c:	20000b50 	.word	0x20000b50

080062a0 <xTaskGetCurrentTaskHandle>:
 80062a0:	b480      	push	{r7}
 80062a2:	b083      	sub	sp, #12
 80062a4:	af00      	add	r7, sp, #0
 80062a6:	4b04      	ldr	r3, [pc, #16]	; (80062b8 <xTaskGetCurrentTaskHandle+0x18>)
 80062a8:	681b      	ldr	r3, [r3, #0]
 80062aa:	607b      	str	r3, [r7, #4]
 80062ac:	687b      	ldr	r3, [r7, #4]
 80062ae:	4618      	mov	r0, r3
 80062b0:	370c      	adds	r7, #12
 80062b2:	46bd      	mov	sp, r7
 80062b4:	bc80      	pop	{r7}
 80062b6:	4770      	bx	lr
 80062b8:	20000a58 	.word	0x20000a58

080062bc <xTaskGetSchedulerState>:
 80062bc:	b480      	push	{r7}
 80062be:	b083      	sub	sp, #12
 80062c0:	af00      	add	r7, sp, #0
 80062c2:	4b0b      	ldr	r3, [pc, #44]	; (80062f0 <xTaskGetSchedulerState+0x34>)
 80062c4:	681b      	ldr	r3, [r3, #0]
 80062c6:	2b00      	cmp	r3, #0
 80062c8:	d102      	bne.n	80062d0 <xTaskGetSchedulerState+0x14>
 80062ca:	2301      	movs	r3, #1
 80062cc:	607b      	str	r3, [r7, #4]
 80062ce:	e008      	b.n	80062e2 <xTaskGetSchedulerState+0x26>
 80062d0:	4b08      	ldr	r3, [pc, #32]	; (80062f4 <xTaskGetSchedulerState+0x38>)
 80062d2:	681b      	ldr	r3, [r3, #0]
 80062d4:	2b00      	cmp	r3, #0
 80062d6:	d102      	bne.n	80062de <xTaskGetSchedulerState+0x22>
 80062d8:	2302      	movs	r3, #2
 80062da:	607b      	str	r3, [r7, #4]
 80062dc:	e001      	b.n	80062e2 <xTaskGetSchedulerState+0x26>
 80062de:	2300      	movs	r3, #0
 80062e0:	607b      	str	r3, [r7, #4]
 80062e2:	687b      	ldr	r3, [r7, #4]
 80062e4:	4618      	mov	r0, r3
 80062e6:	370c      	adds	r7, #12
 80062e8:	46bd      	mov	sp, r7
 80062ea:	bc80      	pop	{r7}
 80062ec:	4770      	bx	lr
 80062ee:	bf00      	nop
 80062f0:	20000b3c 	.word	0x20000b3c
 80062f4:	20000b58 	.word	0x20000b58

080062f8 <xTaskPriorityDisinherit>:
 80062f8:	b580      	push	{r7, lr}
 80062fa:	b086      	sub	sp, #24
 80062fc:	af00      	add	r7, sp, #0
 80062fe:	6078      	str	r0, [r7, #4]
 8006300:	687b      	ldr	r3, [r7, #4]
 8006302:	613b      	str	r3, [r7, #16]
 8006304:	2300      	movs	r3, #0
 8006306:	617b      	str	r3, [r7, #20]
 8006308:	687b      	ldr	r3, [r7, #4]
 800630a:	2b00      	cmp	r3, #0
 800630c:	d06c      	beq.n	80063e8 <xTaskPriorityDisinherit+0xf0>
 800630e:	4b39      	ldr	r3, [pc, #228]	; (80063f4 <xTaskPriorityDisinherit+0xfc>)
 8006310:	681b      	ldr	r3, [r3, #0]
 8006312:	693a      	ldr	r2, [r7, #16]
 8006314:	429a      	cmp	r2, r3
 8006316:	d009      	beq.n	800632c <xTaskPriorityDisinherit+0x34>
 8006318:	f04f 0350 	mov.w	r3, #80	; 0x50
 800631c:	f383 8811 	msr	BASEPRI, r3
 8006320:	f3bf 8f6f 	isb	sy
 8006324:	f3bf 8f4f 	dsb	sy
 8006328:	60fb      	str	r3, [r7, #12]
 800632a:	e7fe      	b.n	800632a <xTaskPriorityDisinherit+0x32>
 800632c:	693b      	ldr	r3, [r7, #16]
 800632e:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8006330:	2b00      	cmp	r3, #0
 8006332:	d109      	bne.n	8006348 <xTaskPriorityDisinherit+0x50>
 8006334:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006338:	f383 8811 	msr	BASEPRI, r3
 800633c:	f3bf 8f6f 	isb	sy
 8006340:	f3bf 8f4f 	dsb	sy
 8006344:	60bb      	str	r3, [r7, #8]
 8006346:	e7fe      	b.n	8006346 <xTaskPriorityDisinherit+0x4e>
 8006348:	693b      	ldr	r3, [r7, #16]
 800634a:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800634c:	1e5a      	subs	r2, r3, #1
 800634e:	693b      	ldr	r3, [r7, #16]
 8006350:	64da      	str	r2, [r3, #76]	; 0x4c
 8006352:	693b      	ldr	r3, [r7, #16]
 8006354:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8006356:	693b      	ldr	r3, [r7, #16]
 8006358:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 800635a:	429a      	cmp	r2, r3
 800635c:	d044      	beq.n	80063e8 <xTaskPriorityDisinherit+0xf0>
 800635e:	693b      	ldr	r3, [r7, #16]
 8006360:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8006362:	2b00      	cmp	r3, #0
 8006364:	d140      	bne.n	80063e8 <xTaskPriorityDisinherit+0xf0>
 8006366:	693b      	ldr	r3, [r7, #16]
 8006368:	3304      	adds	r3, #4
 800636a:	4618      	mov	r0, r3
 800636c:	f7fe fc7c 	bl	8004c68 <uxListRemove>
 8006370:	4603      	mov	r3, r0
 8006372:	2b00      	cmp	r3, #0
 8006374:	d115      	bne.n	80063a2 <xTaskPriorityDisinherit+0xaa>
 8006376:	693b      	ldr	r3, [r7, #16]
 8006378:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800637a:	491f      	ldr	r1, [pc, #124]	; (80063f8 <xTaskPriorityDisinherit+0x100>)
 800637c:	4613      	mov	r3, r2
 800637e:	009b      	lsls	r3, r3, #2
 8006380:	4413      	add	r3, r2
 8006382:	009b      	lsls	r3, r3, #2
 8006384:	440b      	add	r3, r1
 8006386:	681b      	ldr	r3, [r3, #0]
 8006388:	2b00      	cmp	r3, #0
 800638a:	d10a      	bne.n	80063a2 <xTaskPriorityDisinherit+0xaa>
 800638c:	693b      	ldr	r3, [r7, #16]
 800638e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8006390:	2201      	movs	r2, #1
 8006392:	fa02 f303 	lsl.w	r3, r2, r3
 8006396:	43da      	mvns	r2, r3
 8006398:	4b18      	ldr	r3, [pc, #96]	; (80063fc <xTaskPriorityDisinherit+0x104>)
 800639a:	681b      	ldr	r3, [r3, #0]
 800639c:	4013      	ands	r3, r2
 800639e:	4a17      	ldr	r2, [pc, #92]	; (80063fc <xTaskPriorityDisinherit+0x104>)
 80063a0:	6013      	str	r3, [r2, #0]
 80063a2:	693b      	ldr	r3, [r7, #16]
 80063a4:	6c9a      	ldr	r2, [r3, #72]	; 0x48
 80063a6:	693b      	ldr	r3, [r7, #16]
 80063a8:	62da      	str	r2, [r3, #44]	; 0x2c
 80063aa:	693b      	ldr	r3, [r7, #16]
 80063ac:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80063ae:	f1c3 0205 	rsb	r2, r3, #5
 80063b2:	693b      	ldr	r3, [r7, #16]
 80063b4:	619a      	str	r2, [r3, #24]
 80063b6:	693b      	ldr	r3, [r7, #16]
 80063b8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80063ba:	2201      	movs	r2, #1
 80063bc:	409a      	lsls	r2, r3
 80063be:	4b0f      	ldr	r3, [pc, #60]	; (80063fc <xTaskPriorityDisinherit+0x104>)
 80063c0:	681b      	ldr	r3, [r3, #0]
 80063c2:	4313      	orrs	r3, r2
 80063c4:	4a0d      	ldr	r2, [pc, #52]	; (80063fc <xTaskPriorityDisinherit+0x104>)
 80063c6:	6013      	str	r3, [r2, #0]
 80063c8:	693b      	ldr	r3, [r7, #16]
 80063ca:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80063cc:	4613      	mov	r3, r2
 80063ce:	009b      	lsls	r3, r3, #2
 80063d0:	4413      	add	r3, r2
 80063d2:	009b      	lsls	r3, r3, #2
 80063d4:	4a08      	ldr	r2, [pc, #32]	; (80063f8 <xTaskPriorityDisinherit+0x100>)
 80063d6:	441a      	add	r2, r3
 80063d8:	693b      	ldr	r3, [r7, #16]
 80063da:	3304      	adds	r3, #4
 80063dc:	4619      	mov	r1, r3
 80063de:	4610      	mov	r0, r2
 80063e0:	f7fe fbe7 	bl	8004bb2 <vListInsertEnd>
 80063e4:	2301      	movs	r3, #1
 80063e6:	617b      	str	r3, [r7, #20]
 80063e8:	697b      	ldr	r3, [r7, #20]
 80063ea:	4618      	mov	r0, r3
 80063ec:	3718      	adds	r7, #24
 80063ee:	46bd      	mov	sp, r7
 80063f0:	bd80      	pop	{r7, pc}
 80063f2:	bf00      	nop
 80063f4:	20000a58 	.word	0x20000a58
 80063f8:	20000a5c 	.word	0x20000a5c
 80063fc:	20000b38 	.word	0x20000b38

08006400 <ulTaskNotifyTake>:
 8006400:	b580      	push	{r7, lr}
 8006402:	b084      	sub	sp, #16
 8006404:	af00      	add	r7, sp, #0
 8006406:	6078      	str	r0, [r7, #4]
 8006408:	6039      	str	r1, [r7, #0]
 800640a:	f000 fcfb 	bl	8006e04 <vPortEnterCritical>
 800640e:	4b20      	ldr	r3, [pc, #128]	; (8006490 <ulTaskNotifyTake+0x90>)
 8006410:	681b      	ldr	r3, [r3, #0]
 8006412:	f8d3 30b0 	ldr.w	r3, [r3, #176]	; 0xb0
 8006416:	2b00      	cmp	r3, #0
 8006418:	d113      	bne.n	8006442 <ulTaskNotifyTake+0x42>
 800641a:	4b1d      	ldr	r3, [pc, #116]	; (8006490 <ulTaskNotifyTake+0x90>)
 800641c:	681b      	ldr	r3, [r3, #0]
 800641e:	2201      	movs	r2, #1
 8006420:	f883 20b4 	strb.w	r2, [r3, #180]	; 0xb4
 8006424:	683b      	ldr	r3, [r7, #0]
 8006426:	2b00      	cmp	r3, #0
 8006428:	d00b      	beq.n	8006442 <ulTaskNotifyTake+0x42>
 800642a:	2101      	movs	r1, #1
 800642c:	6838      	ldr	r0, [r7, #0]
 800642e:	f000 f8c3 	bl	80065b8 <prvAddCurrentTaskToDelayedList>
 8006432:	4b18      	ldr	r3, [pc, #96]	; (8006494 <ulTaskNotifyTake+0x94>)
 8006434:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8006438:	601a      	str	r2, [r3, #0]
 800643a:	f3bf 8f4f 	dsb	sy
 800643e:	f3bf 8f6f 	isb	sy
 8006442:	f000 fd0d 	bl	8006e60 <vPortExitCritical>
 8006446:	f000 fcdd 	bl	8006e04 <vPortEnterCritical>
 800644a:	4b11      	ldr	r3, [pc, #68]	; (8006490 <ulTaskNotifyTake+0x90>)
 800644c:	681b      	ldr	r3, [r3, #0]
 800644e:	f8d3 30b0 	ldr.w	r3, [r3, #176]	; 0xb0
 8006452:	60fb      	str	r3, [r7, #12]
 8006454:	68fb      	ldr	r3, [r7, #12]
 8006456:	2b00      	cmp	r3, #0
 8006458:	d00e      	beq.n	8006478 <ulTaskNotifyTake+0x78>
 800645a:	687b      	ldr	r3, [r7, #4]
 800645c:	2b00      	cmp	r3, #0
 800645e:	d005      	beq.n	800646c <ulTaskNotifyTake+0x6c>
 8006460:	4b0b      	ldr	r3, [pc, #44]	; (8006490 <ulTaskNotifyTake+0x90>)
 8006462:	681b      	ldr	r3, [r3, #0]
 8006464:	2200      	movs	r2, #0
 8006466:	f8c3 20b0 	str.w	r2, [r3, #176]	; 0xb0
 800646a:	e005      	b.n	8006478 <ulTaskNotifyTake+0x78>
 800646c:	4b08      	ldr	r3, [pc, #32]	; (8006490 <ulTaskNotifyTake+0x90>)
 800646e:	681b      	ldr	r3, [r3, #0]
 8006470:	68fa      	ldr	r2, [r7, #12]
 8006472:	3a01      	subs	r2, #1
 8006474:	f8c3 20b0 	str.w	r2, [r3, #176]	; 0xb0
 8006478:	4b05      	ldr	r3, [pc, #20]	; (8006490 <ulTaskNotifyTake+0x90>)
 800647a:	681b      	ldr	r3, [r3, #0]
 800647c:	2200      	movs	r2, #0
 800647e:	f883 20b4 	strb.w	r2, [r3, #180]	; 0xb4
 8006482:	f000 fced 	bl	8006e60 <vPortExitCritical>
 8006486:	68fb      	ldr	r3, [r7, #12]
 8006488:	4618      	mov	r0, r3
 800648a:	3710      	adds	r7, #16
 800648c:	46bd      	mov	sp, r7
 800648e:	bd80      	pop	{r7, pc}
 8006490:	20000a58 	.word	0x20000a58
 8006494:	e000ed04 	.word	0xe000ed04

08006498 <vTaskNotifyGiveFromISR>:
 8006498:	b580      	push	{r7, lr}
 800649a:	b08a      	sub	sp, #40	; 0x28
 800649c:	af00      	add	r7, sp, #0
 800649e:	6078      	str	r0, [r7, #4]
 80064a0:	6039      	str	r1, [r7, #0]
 80064a2:	687b      	ldr	r3, [r7, #4]
 80064a4:	2b00      	cmp	r3, #0
 80064a6:	d109      	bne.n	80064bc <vTaskNotifyGiveFromISR+0x24>
 80064a8:	f04f 0350 	mov.w	r3, #80	; 0x50
 80064ac:	f383 8811 	msr	BASEPRI, r3
 80064b0:	f3bf 8f6f 	isb	sy
 80064b4:	f3bf 8f4f 	dsb	sy
 80064b8:	61bb      	str	r3, [r7, #24]
 80064ba:	e7fe      	b.n	80064ba <vTaskNotifyGiveFromISR+0x22>
 80064bc:	f000 fd56 	bl	8006f6c <vPortValidateInterruptPriority>
 80064c0:	687b      	ldr	r3, [r7, #4]
 80064c2:	627b      	str	r3, [r7, #36]	; 0x24
 80064c4:	f3ef 8211 	mrs	r2, BASEPRI
 80064c8:	f04f 0350 	mov.w	r3, #80	; 0x50
 80064cc:	f383 8811 	msr	BASEPRI, r3
 80064d0:	f3bf 8f6f 	isb	sy
 80064d4:	f3bf 8f4f 	dsb	sy
 80064d8:	617a      	str	r2, [r7, #20]
 80064da:	613b      	str	r3, [r7, #16]
 80064dc:	697b      	ldr	r3, [r7, #20]
 80064de:	623b      	str	r3, [r7, #32]
 80064e0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80064e2:	f893 30b4 	ldrb.w	r3, [r3, #180]	; 0xb4
 80064e6:	77fb      	strb	r3, [r7, #31]
 80064e8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80064ea:	2202      	movs	r2, #2
 80064ec:	f883 20b4 	strb.w	r2, [r3, #180]	; 0xb4
 80064f0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80064f2:	f8d3 30b0 	ldr.w	r3, [r3, #176]	; 0xb0
 80064f6:	1c5a      	adds	r2, r3, #1
 80064f8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80064fa:	f8c3 20b0 	str.w	r2, [r3, #176]	; 0xb0
 80064fe:	7ffb      	ldrb	r3, [r7, #31]
 8006500:	2b01      	cmp	r3, #1
 8006502:	d144      	bne.n	800658e <vTaskNotifyGiveFromISR+0xf6>
 8006504:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006506:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8006508:	2b00      	cmp	r3, #0
 800650a:	d009      	beq.n	8006520 <vTaskNotifyGiveFromISR+0x88>
 800650c:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006510:	f383 8811 	msr	BASEPRI, r3
 8006514:	f3bf 8f6f 	isb	sy
 8006518:	f3bf 8f4f 	dsb	sy
 800651c:	60fb      	str	r3, [r7, #12]
 800651e:	e7fe      	b.n	800651e <vTaskNotifyGiveFromISR+0x86>
 8006520:	4b1f      	ldr	r3, [pc, #124]	; (80065a0 <vTaskNotifyGiveFromISR+0x108>)
 8006522:	681b      	ldr	r3, [r3, #0]
 8006524:	2b00      	cmp	r3, #0
 8006526:	d11c      	bne.n	8006562 <vTaskNotifyGiveFromISR+0xca>
 8006528:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800652a:	3304      	adds	r3, #4
 800652c:	4618      	mov	r0, r3
 800652e:	f7fe fb9b 	bl	8004c68 <uxListRemove>
 8006532:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006534:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8006536:	2201      	movs	r2, #1
 8006538:	409a      	lsls	r2, r3
 800653a:	4b1a      	ldr	r3, [pc, #104]	; (80065a4 <vTaskNotifyGiveFromISR+0x10c>)
 800653c:	681b      	ldr	r3, [r3, #0]
 800653e:	4313      	orrs	r3, r2
 8006540:	4a18      	ldr	r2, [pc, #96]	; (80065a4 <vTaskNotifyGiveFromISR+0x10c>)
 8006542:	6013      	str	r3, [r2, #0]
 8006544:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006546:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8006548:	4613      	mov	r3, r2
 800654a:	009b      	lsls	r3, r3, #2
 800654c:	4413      	add	r3, r2
 800654e:	009b      	lsls	r3, r3, #2
 8006550:	4a15      	ldr	r2, [pc, #84]	; (80065a8 <vTaskNotifyGiveFromISR+0x110>)
 8006552:	441a      	add	r2, r3
 8006554:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006556:	3304      	adds	r3, #4
 8006558:	4619      	mov	r1, r3
 800655a:	4610      	mov	r0, r2
 800655c:	f7fe fb29 	bl	8004bb2 <vListInsertEnd>
 8006560:	e005      	b.n	800656e <vTaskNotifyGiveFromISR+0xd6>
 8006562:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006564:	3318      	adds	r3, #24
 8006566:	4619      	mov	r1, r3
 8006568:	4810      	ldr	r0, [pc, #64]	; (80065ac <vTaskNotifyGiveFromISR+0x114>)
 800656a:	f7fe fb22 	bl	8004bb2 <vListInsertEnd>
 800656e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006570:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8006572:	4b0f      	ldr	r3, [pc, #60]	; (80065b0 <vTaskNotifyGiveFromISR+0x118>)
 8006574:	681b      	ldr	r3, [r3, #0]
 8006576:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8006578:	429a      	cmp	r2, r3
 800657a:	d908      	bls.n	800658e <vTaskNotifyGiveFromISR+0xf6>
 800657c:	683b      	ldr	r3, [r7, #0]
 800657e:	2b00      	cmp	r3, #0
 8006580:	d002      	beq.n	8006588 <vTaskNotifyGiveFromISR+0xf0>
 8006582:	683b      	ldr	r3, [r7, #0]
 8006584:	2201      	movs	r2, #1
 8006586:	601a      	str	r2, [r3, #0]
 8006588:	4b0a      	ldr	r3, [pc, #40]	; (80065b4 <vTaskNotifyGiveFromISR+0x11c>)
 800658a:	2201      	movs	r2, #1
 800658c:	601a      	str	r2, [r3, #0]
 800658e:	6a3b      	ldr	r3, [r7, #32]
 8006590:	60bb      	str	r3, [r7, #8]
 8006592:	68bb      	ldr	r3, [r7, #8]
 8006594:	f383 8811 	msr	BASEPRI, r3
 8006598:	bf00      	nop
 800659a:	3728      	adds	r7, #40	; 0x28
 800659c:	46bd      	mov	sp, r7
 800659e:	bd80      	pop	{r7, pc}
 80065a0:	20000b58 	.word	0x20000b58
 80065a4:	20000b38 	.word	0x20000b38
 80065a8:	20000a5c 	.word	0x20000a5c
 80065ac:	20000af0 	.word	0x20000af0
 80065b0:	20000a58 	.word	0x20000a58
 80065b4:	20000b44 	.word	0x20000b44

080065b8 <prvAddCurrentTaskToDelayedList>:
 80065b8:	b580      	push	{r7, lr}
 80065ba:	b084      	sub	sp, #16
 80065bc:	af00      	add	r7, sp, #0
 80065be:	6078      	str	r0, [r7, #4]
 80065c0:	6039      	str	r1, [r7, #0]
 80065c2:	4b29      	ldr	r3, [pc, #164]	; (8006668 <prvAddCurrentTaskToDelayedList+0xb0>)
 80065c4:	681b      	ldr	r3, [r3, #0]
 80065c6:	60fb      	str	r3, [r7, #12]
 80065c8:	4b28      	ldr	r3, [pc, #160]	; (800666c <prvAddCurrentTaskToDelayedList+0xb4>)
 80065ca:	681b      	ldr	r3, [r3, #0]
 80065cc:	3304      	adds	r3, #4
 80065ce:	4618      	mov	r0, r3
 80065d0:	f7fe fb4a 	bl	8004c68 <uxListRemove>
 80065d4:	4603      	mov	r3, r0
 80065d6:	2b00      	cmp	r3, #0
 80065d8:	d10b      	bne.n	80065f2 <prvAddCurrentTaskToDelayedList+0x3a>
 80065da:	4b24      	ldr	r3, [pc, #144]	; (800666c <prvAddCurrentTaskToDelayedList+0xb4>)
 80065dc:	681b      	ldr	r3, [r3, #0]
 80065de:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80065e0:	2201      	movs	r2, #1
 80065e2:	fa02 f303 	lsl.w	r3, r2, r3
 80065e6:	43da      	mvns	r2, r3
 80065e8:	4b21      	ldr	r3, [pc, #132]	; (8006670 <prvAddCurrentTaskToDelayedList+0xb8>)
 80065ea:	681b      	ldr	r3, [r3, #0]
 80065ec:	4013      	ands	r3, r2
 80065ee:	4a20      	ldr	r2, [pc, #128]	; (8006670 <prvAddCurrentTaskToDelayedList+0xb8>)
 80065f0:	6013      	str	r3, [r2, #0]
 80065f2:	687b      	ldr	r3, [r7, #4]
 80065f4:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 80065f8:	d10a      	bne.n	8006610 <prvAddCurrentTaskToDelayedList+0x58>
 80065fa:	683b      	ldr	r3, [r7, #0]
 80065fc:	2b00      	cmp	r3, #0
 80065fe:	d007      	beq.n	8006610 <prvAddCurrentTaskToDelayedList+0x58>
 8006600:	4b1a      	ldr	r3, [pc, #104]	; (800666c <prvAddCurrentTaskToDelayedList+0xb4>)
 8006602:	681b      	ldr	r3, [r3, #0]
 8006604:	3304      	adds	r3, #4
 8006606:	4619      	mov	r1, r3
 8006608:	481a      	ldr	r0, [pc, #104]	; (8006674 <prvAddCurrentTaskToDelayedList+0xbc>)
 800660a:	f7fe fad2 	bl	8004bb2 <vListInsertEnd>
 800660e:	e026      	b.n	800665e <prvAddCurrentTaskToDelayedList+0xa6>
 8006610:	68fa      	ldr	r2, [r7, #12]
 8006612:	687b      	ldr	r3, [r7, #4]
 8006614:	4413      	add	r3, r2
 8006616:	60bb      	str	r3, [r7, #8]
 8006618:	4b14      	ldr	r3, [pc, #80]	; (800666c <prvAddCurrentTaskToDelayedList+0xb4>)
 800661a:	681b      	ldr	r3, [r3, #0]
 800661c:	68ba      	ldr	r2, [r7, #8]
 800661e:	605a      	str	r2, [r3, #4]
 8006620:	68ba      	ldr	r2, [r7, #8]
 8006622:	68fb      	ldr	r3, [r7, #12]
 8006624:	429a      	cmp	r2, r3
 8006626:	d209      	bcs.n	800663c <prvAddCurrentTaskToDelayedList+0x84>
 8006628:	4b13      	ldr	r3, [pc, #76]	; (8006678 <prvAddCurrentTaskToDelayedList+0xc0>)
 800662a:	681a      	ldr	r2, [r3, #0]
 800662c:	4b0f      	ldr	r3, [pc, #60]	; (800666c <prvAddCurrentTaskToDelayedList+0xb4>)
 800662e:	681b      	ldr	r3, [r3, #0]
 8006630:	3304      	adds	r3, #4
 8006632:	4619      	mov	r1, r3
 8006634:	4610      	mov	r0, r2
 8006636:	f7fe fadf 	bl	8004bf8 <vListInsert>
 800663a:	e010      	b.n	800665e <prvAddCurrentTaskToDelayedList+0xa6>
 800663c:	4b0f      	ldr	r3, [pc, #60]	; (800667c <prvAddCurrentTaskToDelayedList+0xc4>)
 800663e:	681a      	ldr	r2, [r3, #0]
 8006640:	4b0a      	ldr	r3, [pc, #40]	; (800666c <prvAddCurrentTaskToDelayedList+0xb4>)
 8006642:	681b      	ldr	r3, [r3, #0]
 8006644:	3304      	adds	r3, #4
 8006646:	4619      	mov	r1, r3
 8006648:	4610      	mov	r0, r2
 800664a:	f7fe fad5 	bl	8004bf8 <vListInsert>
 800664e:	4b0c      	ldr	r3, [pc, #48]	; (8006680 <prvAddCurrentTaskToDelayedList+0xc8>)
 8006650:	681b      	ldr	r3, [r3, #0]
 8006652:	68ba      	ldr	r2, [r7, #8]
 8006654:	429a      	cmp	r2, r3
 8006656:	d202      	bcs.n	800665e <prvAddCurrentTaskToDelayedList+0xa6>
 8006658:	4a09      	ldr	r2, [pc, #36]	; (8006680 <prvAddCurrentTaskToDelayedList+0xc8>)
 800665a:	68bb      	ldr	r3, [r7, #8]
 800665c:	6013      	str	r3, [r2, #0]
 800665e:	bf00      	nop
 8006660:	3710      	adds	r7, #16
 8006662:	46bd      	mov	sp, r7
 8006664:	bd80      	pop	{r7, pc}
 8006666:	bf00      	nop
 8006668:	20000b34 	.word	0x20000b34
 800666c:	20000a58 	.word	0x20000a58
 8006670:	20000b38 	.word	0x20000b38
 8006674:	20000b1c 	.word	0x20000b1c
 8006678:	20000aec 	.word	0x20000aec
 800667c:	20000ae8 	.word	0x20000ae8
 8006680:	20000b50 	.word	0x20000b50

08006684 <xTimerCreateTimerTask>:
 8006684:	b580      	push	{r7, lr}
 8006686:	b08a      	sub	sp, #40	; 0x28
 8006688:	af04      	add	r7, sp, #16
 800668a:	2300      	movs	r3, #0
 800668c:	617b      	str	r3, [r7, #20]
 800668e:	f000 faa7 	bl	8006be0 <prvCheckForValidListAndQueue>
 8006692:	4b1c      	ldr	r3, [pc, #112]	; (8006704 <xTimerCreateTimerTask+0x80>)
 8006694:	681b      	ldr	r3, [r3, #0]
 8006696:	2b00      	cmp	r3, #0
 8006698:	d021      	beq.n	80066de <xTimerCreateTimerTask+0x5a>
 800669a:	2300      	movs	r3, #0
 800669c:	60fb      	str	r3, [r7, #12]
 800669e:	2300      	movs	r3, #0
 80066a0:	60bb      	str	r3, [r7, #8]
 80066a2:	1d3a      	adds	r2, r7, #4
 80066a4:	f107 0108 	add.w	r1, r7, #8
 80066a8:	f107 030c 	add.w	r3, r7, #12
 80066ac:	4618      	mov	r0, r3
 80066ae:	f7fc fd15 	bl	80030dc <vApplicationGetTimerTaskMemory>
 80066b2:	6879      	ldr	r1, [r7, #4]
 80066b4:	68bb      	ldr	r3, [r7, #8]
 80066b6:	68fa      	ldr	r2, [r7, #12]
 80066b8:	9202      	str	r2, [sp, #8]
 80066ba:	9301      	str	r3, [sp, #4]
 80066bc:	2302      	movs	r3, #2
 80066be:	9300      	str	r3, [sp, #0]
 80066c0:	2300      	movs	r3, #0
 80066c2:	460a      	mov	r2, r1
 80066c4:	4910      	ldr	r1, [pc, #64]	; (8006708 <xTimerCreateTimerTask+0x84>)
 80066c6:	4811      	ldr	r0, [pc, #68]	; (800670c <xTimerCreateTimerTask+0x88>)
 80066c8:	f7fe ffcc 	bl	8005664 <xTaskCreateStatic>
 80066cc:	4602      	mov	r2, r0
 80066ce:	4b10      	ldr	r3, [pc, #64]	; (8006710 <xTimerCreateTimerTask+0x8c>)
 80066d0:	601a      	str	r2, [r3, #0]
 80066d2:	4b0f      	ldr	r3, [pc, #60]	; (8006710 <xTimerCreateTimerTask+0x8c>)
 80066d4:	681b      	ldr	r3, [r3, #0]
 80066d6:	2b00      	cmp	r3, #0
 80066d8:	d001      	beq.n	80066de <xTimerCreateTimerTask+0x5a>
 80066da:	2301      	movs	r3, #1
 80066dc:	617b      	str	r3, [r7, #20]
 80066de:	697b      	ldr	r3, [r7, #20]
 80066e0:	2b00      	cmp	r3, #0
 80066e2:	d109      	bne.n	80066f8 <xTimerCreateTimerTask+0x74>
 80066e4:	f04f 0350 	mov.w	r3, #80	; 0x50
 80066e8:	f383 8811 	msr	BASEPRI, r3
 80066ec:	f3bf 8f6f 	isb	sy
 80066f0:	f3bf 8f4f 	dsb	sy
 80066f4:	613b      	str	r3, [r7, #16]
 80066f6:	e7fe      	b.n	80066f6 <xTimerCreateTimerTask+0x72>
 80066f8:	697b      	ldr	r3, [r7, #20]
 80066fa:	4618      	mov	r0, r3
 80066fc:	3718      	adds	r7, #24
 80066fe:	46bd      	mov	sp, r7
 8006700:	bd80      	pop	{r7, pc}
 8006702:	bf00      	nop
 8006704:	20000b8c 	.word	0x20000b8c
 8006708:	0800749c 	.word	0x0800749c
 800670c:	0800682d 	.word	0x0800682d
 8006710:	20000b90 	.word	0x20000b90

08006714 <xTimerGenericCommand>:
 8006714:	b580      	push	{r7, lr}
 8006716:	b08a      	sub	sp, #40	; 0x28
 8006718:	af00      	add	r7, sp, #0
 800671a:	60f8      	str	r0, [r7, #12]
 800671c:	60b9      	str	r1, [r7, #8]
 800671e:	607a      	str	r2, [r7, #4]
 8006720:	603b      	str	r3, [r7, #0]
 8006722:	2300      	movs	r3, #0
 8006724:	627b      	str	r3, [r7, #36]	; 0x24
 8006726:	68fb      	ldr	r3, [r7, #12]
 8006728:	2b00      	cmp	r3, #0
 800672a:	d109      	bne.n	8006740 <xTimerGenericCommand+0x2c>
 800672c:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006730:	f383 8811 	msr	BASEPRI, r3
 8006734:	f3bf 8f6f 	isb	sy
 8006738:	f3bf 8f4f 	dsb	sy
 800673c:	623b      	str	r3, [r7, #32]
 800673e:	e7fe      	b.n	800673e <xTimerGenericCommand+0x2a>
 8006740:	4b19      	ldr	r3, [pc, #100]	; (80067a8 <xTimerGenericCommand+0x94>)
 8006742:	681b      	ldr	r3, [r3, #0]
 8006744:	2b00      	cmp	r3, #0
 8006746:	d02a      	beq.n	800679e <xTimerGenericCommand+0x8a>
 8006748:	68bb      	ldr	r3, [r7, #8]
 800674a:	617b      	str	r3, [r7, #20]
 800674c:	687b      	ldr	r3, [r7, #4]
 800674e:	61bb      	str	r3, [r7, #24]
 8006750:	68fb      	ldr	r3, [r7, #12]
 8006752:	61fb      	str	r3, [r7, #28]
 8006754:	68bb      	ldr	r3, [r7, #8]
 8006756:	2b05      	cmp	r3, #5
 8006758:	dc18      	bgt.n	800678c <xTimerGenericCommand+0x78>
 800675a:	f7ff fdaf 	bl	80062bc <xTaskGetSchedulerState>
 800675e:	4603      	mov	r3, r0
 8006760:	2b02      	cmp	r3, #2
 8006762:	d109      	bne.n	8006778 <xTimerGenericCommand+0x64>
 8006764:	4b10      	ldr	r3, [pc, #64]	; (80067a8 <xTimerGenericCommand+0x94>)
 8006766:	6818      	ldr	r0, [r3, #0]
 8006768:	f107 0114 	add.w	r1, r7, #20
 800676c:	2300      	movs	r3, #0
 800676e:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8006770:	f7fe fba2 	bl	8004eb8 <xQueueGenericSend>
 8006774:	6278      	str	r0, [r7, #36]	; 0x24
 8006776:	e012      	b.n	800679e <xTimerGenericCommand+0x8a>
 8006778:	4b0b      	ldr	r3, [pc, #44]	; (80067a8 <xTimerGenericCommand+0x94>)
 800677a:	6818      	ldr	r0, [r3, #0]
 800677c:	f107 0114 	add.w	r1, r7, #20
 8006780:	2300      	movs	r3, #0
 8006782:	2200      	movs	r2, #0
 8006784:	f7fe fb98 	bl	8004eb8 <xQueueGenericSend>
 8006788:	6278      	str	r0, [r7, #36]	; 0x24
 800678a:	e008      	b.n	800679e <xTimerGenericCommand+0x8a>
 800678c:	4b06      	ldr	r3, [pc, #24]	; (80067a8 <xTimerGenericCommand+0x94>)
 800678e:	6818      	ldr	r0, [r3, #0]
 8006790:	f107 0114 	add.w	r1, r7, #20
 8006794:	2300      	movs	r3, #0
 8006796:	683a      	ldr	r2, [r7, #0]
 8006798:	f7fe fc88 	bl	80050ac <xQueueGenericSendFromISR>
 800679c:	6278      	str	r0, [r7, #36]	; 0x24
 800679e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80067a0:	4618      	mov	r0, r3
 80067a2:	3728      	adds	r7, #40	; 0x28
 80067a4:	46bd      	mov	sp, r7
 80067a6:	bd80      	pop	{r7, pc}
 80067a8:	20000b8c 	.word	0x20000b8c

080067ac <prvProcessExpiredTimer>:
 80067ac:	b580      	push	{r7, lr}
 80067ae:	b088      	sub	sp, #32
 80067b0:	af02      	add	r7, sp, #8
 80067b2:	6078      	str	r0, [r7, #4]
 80067b4:	6039      	str	r1, [r7, #0]
 80067b6:	4b1c      	ldr	r3, [pc, #112]	; (8006828 <prvProcessExpiredTimer+0x7c>)
 80067b8:	681b      	ldr	r3, [r3, #0]
 80067ba:	68db      	ldr	r3, [r3, #12]
 80067bc:	68db      	ldr	r3, [r3, #12]
 80067be:	617b      	str	r3, [r7, #20]
 80067c0:	697b      	ldr	r3, [r7, #20]
 80067c2:	3304      	adds	r3, #4
 80067c4:	4618      	mov	r0, r3
 80067c6:	f7fe fa4f 	bl	8004c68 <uxListRemove>
 80067ca:	697b      	ldr	r3, [r7, #20]
 80067cc:	69db      	ldr	r3, [r3, #28]
 80067ce:	2b01      	cmp	r3, #1
 80067d0:	d121      	bne.n	8006816 <prvProcessExpiredTimer+0x6a>
 80067d2:	697b      	ldr	r3, [r7, #20]
 80067d4:	699a      	ldr	r2, [r3, #24]
 80067d6:	687b      	ldr	r3, [r7, #4]
 80067d8:	18d1      	adds	r1, r2, r3
 80067da:	687b      	ldr	r3, [r7, #4]
 80067dc:	683a      	ldr	r2, [r7, #0]
 80067de:	6978      	ldr	r0, [r7, #20]
 80067e0:	f000 f8c6 	bl	8006970 <prvInsertTimerInActiveList>
 80067e4:	4603      	mov	r3, r0
 80067e6:	2b00      	cmp	r3, #0
 80067e8:	d015      	beq.n	8006816 <prvProcessExpiredTimer+0x6a>
 80067ea:	2300      	movs	r3, #0
 80067ec:	9300      	str	r3, [sp, #0]
 80067ee:	2300      	movs	r3, #0
 80067f0:	687a      	ldr	r2, [r7, #4]
 80067f2:	2100      	movs	r1, #0
 80067f4:	6978      	ldr	r0, [r7, #20]
 80067f6:	f7ff ff8d 	bl	8006714 <xTimerGenericCommand>
 80067fa:	6138      	str	r0, [r7, #16]
 80067fc:	693b      	ldr	r3, [r7, #16]
 80067fe:	2b00      	cmp	r3, #0
 8006800:	d109      	bne.n	8006816 <prvProcessExpiredTimer+0x6a>
 8006802:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006806:	f383 8811 	msr	BASEPRI, r3
 800680a:	f3bf 8f6f 	isb	sy
 800680e:	f3bf 8f4f 	dsb	sy
 8006812:	60fb      	str	r3, [r7, #12]
 8006814:	e7fe      	b.n	8006814 <prvProcessExpiredTimer+0x68>
 8006816:	697b      	ldr	r3, [r7, #20]
 8006818:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800681a:	6978      	ldr	r0, [r7, #20]
 800681c:	4798      	blx	r3
 800681e:	bf00      	nop
 8006820:	3718      	adds	r7, #24
 8006822:	46bd      	mov	sp, r7
 8006824:	bd80      	pop	{r7, pc}
 8006826:	bf00      	nop
 8006828:	20000b84 	.word	0x20000b84

0800682c <prvTimerTask>:
 800682c:	b580      	push	{r7, lr}
 800682e:	b084      	sub	sp, #16
 8006830:	af00      	add	r7, sp, #0
 8006832:	6078      	str	r0, [r7, #4]
 8006834:	f107 0308 	add.w	r3, r7, #8
 8006838:	4618      	mov	r0, r3
 800683a:	f000 f857 	bl	80068ec <prvGetNextExpireTime>
 800683e:	60f8      	str	r0, [r7, #12]
 8006840:	68bb      	ldr	r3, [r7, #8]
 8006842:	4619      	mov	r1, r3
 8006844:	68f8      	ldr	r0, [r7, #12]
 8006846:	f000 f803 	bl	8006850 <prvProcessTimerOrBlockTask>
 800684a:	f000 f8d3 	bl	80069f4 <prvProcessReceivedCommands>
 800684e:	e7f1      	b.n	8006834 <prvTimerTask+0x8>

08006850 <prvProcessTimerOrBlockTask>:
 8006850:	b580      	push	{r7, lr}
 8006852:	b084      	sub	sp, #16
 8006854:	af00      	add	r7, sp, #0
 8006856:	6078      	str	r0, [r7, #4]
 8006858:	6039      	str	r1, [r7, #0]
 800685a:	f7ff f917 	bl	8005a8c <vTaskSuspendAll>
 800685e:	f107 0308 	add.w	r3, r7, #8
 8006862:	4618      	mov	r0, r3
 8006864:	f000 f864 	bl	8006930 <prvSampleTimeNow>
 8006868:	60f8      	str	r0, [r7, #12]
 800686a:	68bb      	ldr	r3, [r7, #8]
 800686c:	2b00      	cmp	r3, #0
 800686e:	d130      	bne.n	80068d2 <prvProcessTimerOrBlockTask+0x82>
 8006870:	683b      	ldr	r3, [r7, #0]
 8006872:	2b00      	cmp	r3, #0
 8006874:	d10a      	bne.n	800688c <prvProcessTimerOrBlockTask+0x3c>
 8006876:	687a      	ldr	r2, [r7, #4]
 8006878:	68fb      	ldr	r3, [r7, #12]
 800687a:	429a      	cmp	r2, r3
 800687c:	d806      	bhi.n	800688c <prvProcessTimerOrBlockTask+0x3c>
 800687e:	f7ff f913 	bl	8005aa8 <xTaskResumeAll>
 8006882:	68f9      	ldr	r1, [r7, #12]
 8006884:	6878      	ldr	r0, [r7, #4]
 8006886:	f7ff ff91 	bl	80067ac <prvProcessExpiredTimer>
 800688a:	e024      	b.n	80068d6 <prvProcessTimerOrBlockTask+0x86>
 800688c:	683b      	ldr	r3, [r7, #0]
 800688e:	2b00      	cmp	r3, #0
 8006890:	d008      	beq.n	80068a4 <prvProcessTimerOrBlockTask+0x54>
 8006892:	4b13      	ldr	r3, [pc, #76]	; (80068e0 <prvProcessTimerOrBlockTask+0x90>)
 8006894:	681b      	ldr	r3, [r3, #0]
 8006896:	681b      	ldr	r3, [r3, #0]
 8006898:	2b00      	cmp	r3, #0
 800689a:	d101      	bne.n	80068a0 <prvProcessTimerOrBlockTask+0x50>
 800689c:	2301      	movs	r3, #1
 800689e:	e000      	b.n	80068a2 <prvProcessTimerOrBlockTask+0x52>
 80068a0:	2300      	movs	r3, #0
 80068a2:	603b      	str	r3, [r7, #0]
 80068a4:	4b0f      	ldr	r3, [pc, #60]	; (80068e4 <prvProcessTimerOrBlockTask+0x94>)
 80068a6:	6818      	ldr	r0, [r3, #0]
 80068a8:	687a      	ldr	r2, [r7, #4]
 80068aa:	68fb      	ldr	r3, [r7, #12]
 80068ac:	1ad3      	subs	r3, r2, r3
 80068ae:	683a      	ldr	r2, [r7, #0]
 80068b0:	4619      	mov	r1, r3
 80068b2:	f7fe fea3 	bl	80055fc <vQueueWaitForMessageRestricted>
 80068b6:	f7ff f8f7 	bl	8005aa8 <xTaskResumeAll>
 80068ba:	4603      	mov	r3, r0
 80068bc:	2b00      	cmp	r3, #0
 80068be:	d10a      	bne.n	80068d6 <prvProcessTimerOrBlockTask+0x86>
 80068c0:	4b09      	ldr	r3, [pc, #36]	; (80068e8 <prvProcessTimerOrBlockTask+0x98>)
 80068c2:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 80068c6:	601a      	str	r2, [r3, #0]
 80068c8:	f3bf 8f4f 	dsb	sy
 80068cc:	f3bf 8f6f 	isb	sy
 80068d0:	e001      	b.n	80068d6 <prvProcessTimerOrBlockTask+0x86>
 80068d2:	f7ff f8e9 	bl	8005aa8 <xTaskResumeAll>
 80068d6:	bf00      	nop
 80068d8:	3710      	adds	r7, #16
 80068da:	46bd      	mov	sp, r7
 80068dc:	bd80      	pop	{r7, pc}
 80068de:	bf00      	nop
 80068e0:	20000b88 	.word	0x20000b88
 80068e4:	20000b8c 	.word	0x20000b8c
 80068e8:	e000ed04 	.word	0xe000ed04

080068ec <prvGetNextExpireTime>:
 80068ec:	b480      	push	{r7}
 80068ee:	b085      	sub	sp, #20
 80068f0:	af00      	add	r7, sp, #0
 80068f2:	6078      	str	r0, [r7, #4]
 80068f4:	4b0d      	ldr	r3, [pc, #52]	; (800692c <prvGetNextExpireTime+0x40>)
 80068f6:	681b      	ldr	r3, [r3, #0]
 80068f8:	681b      	ldr	r3, [r3, #0]
 80068fa:	2b00      	cmp	r3, #0
 80068fc:	d101      	bne.n	8006902 <prvGetNextExpireTime+0x16>
 80068fe:	2201      	movs	r2, #1
 8006900:	e000      	b.n	8006904 <prvGetNextExpireTime+0x18>
 8006902:	2200      	movs	r2, #0
 8006904:	687b      	ldr	r3, [r7, #4]
 8006906:	601a      	str	r2, [r3, #0]
 8006908:	687b      	ldr	r3, [r7, #4]
 800690a:	681b      	ldr	r3, [r3, #0]
 800690c:	2b00      	cmp	r3, #0
 800690e:	d105      	bne.n	800691c <prvGetNextExpireTime+0x30>
 8006910:	4b06      	ldr	r3, [pc, #24]	; (800692c <prvGetNextExpireTime+0x40>)
 8006912:	681b      	ldr	r3, [r3, #0]
 8006914:	68db      	ldr	r3, [r3, #12]
 8006916:	681b      	ldr	r3, [r3, #0]
 8006918:	60fb      	str	r3, [r7, #12]
 800691a:	e001      	b.n	8006920 <prvGetNextExpireTime+0x34>
 800691c:	2300      	movs	r3, #0
 800691e:	60fb      	str	r3, [r7, #12]
 8006920:	68fb      	ldr	r3, [r7, #12]
 8006922:	4618      	mov	r0, r3
 8006924:	3714      	adds	r7, #20
 8006926:	46bd      	mov	sp, r7
 8006928:	bc80      	pop	{r7}
 800692a:	4770      	bx	lr
 800692c:	20000b84 	.word	0x20000b84

08006930 <prvSampleTimeNow>:
 8006930:	b580      	push	{r7, lr}
 8006932:	b084      	sub	sp, #16
 8006934:	af00      	add	r7, sp, #0
 8006936:	6078      	str	r0, [r7, #4]
 8006938:	f7ff f952 	bl	8005be0 <xTaskGetTickCount>
 800693c:	60f8      	str	r0, [r7, #12]
 800693e:	4b0b      	ldr	r3, [pc, #44]	; (800696c <prvSampleTimeNow+0x3c>)
 8006940:	681b      	ldr	r3, [r3, #0]
 8006942:	68fa      	ldr	r2, [r7, #12]
 8006944:	429a      	cmp	r2, r3
 8006946:	d205      	bcs.n	8006954 <prvSampleTimeNow+0x24>
 8006948:	f000 f8ea 	bl	8006b20 <prvSwitchTimerLists>
 800694c:	687b      	ldr	r3, [r7, #4]
 800694e:	2201      	movs	r2, #1
 8006950:	601a      	str	r2, [r3, #0]
 8006952:	e002      	b.n	800695a <prvSampleTimeNow+0x2a>
 8006954:	687b      	ldr	r3, [r7, #4]
 8006956:	2200      	movs	r2, #0
 8006958:	601a      	str	r2, [r3, #0]
 800695a:	4a04      	ldr	r2, [pc, #16]	; (800696c <prvSampleTimeNow+0x3c>)
 800695c:	68fb      	ldr	r3, [r7, #12]
 800695e:	6013      	str	r3, [r2, #0]
 8006960:	68fb      	ldr	r3, [r7, #12]
 8006962:	4618      	mov	r0, r3
 8006964:	3710      	adds	r7, #16
 8006966:	46bd      	mov	sp, r7
 8006968:	bd80      	pop	{r7, pc}
 800696a:	bf00      	nop
 800696c:	20000b94 	.word	0x20000b94

08006970 <prvInsertTimerInActiveList>:
 8006970:	b580      	push	{r7, lr}
 8006972:	b086      	sub	sp, #24
 8006974:	af00      	add	r7, sp, #0
 8006976:	60f8      	str	r0, [r7, #12]
 8006978:	60b9      	str	r1, [r7, #8]
 800697a:	607a      	str	r2, [r7, #4]
 800697c:	603b      	str	r3, [r7, #0]
 800697e:	2300      	movs	r3, #0
 8006980:	617b      	str	r3, [r7, #20]
 8006982:	68fb      	ldr	r3, [r7, #12]
 8006984:	68ba      	ldr	r2, [r7, #8]
 8006986:	605a      	str	r2, [r3, #4]
 8006988:	68fb      	ldr	r3, [r7, #12]
 800698a:	68fa      	ldr	r2, [r7, #12]
 800698c:	611a      	str	r2, [r3, #16]
 800698e:	68ba      	ldr	r2, [r7, #8]
 8006990:	687b      	ldr	r3, [r7, #4]
 8006992:	429a      	cmp	r2, r3
 8006994:	d812      	bhi.n	80069bc <prvInsertTimerInActiveList+0x4c>
 8006996:	687a      	ldr	r2, [r7, #4]
 8006998:	683b      	ldr	r3, [r7, #0]
 800699a:	1ad2      	subs	r2, r2, r3
 800699c:	68fb      	ldr	r3, [r7, #12]
 800699e:	699b      	ldr	r3, [r3, #24]
 80069a0:	429a      	cmp	r2, r3
 80069a2:	d302      	bcc.n	80069aa <prvInsertTimerInActiveList+0x3a>
 80069a4:	2301      	movs	r3, #1
 80069a6:	617b      	str	r3, [r7, #20]
 80069a8:	e01b      	b.n	80069e2 <prvInsertTimerInActiveList+0x72>
 80069aa:	4b10      	ldr	r3, [pc, #64]	; (80069ec <prvInsertTimerInActiveList+0x7c>)
 80069ac:	681a      	ldr	r2, [r3, #0]
 80069ae:	68fb      	ldr	r3, [r7, #12]
 80069b0:	3304      	adds	r3, #4
 80069b2:	4619      	mov	r1, r3
 80069b4:	4610      	mov	r0, r2
 80069b6:	f7fe f91f 	bl	8004bf8 <vListInsert>
 80069ba:	e012      	b.n	80069e2 <prvInsertTimerInActiveList+0x72>
 80069bc:	687a      	ldr	r2, [r7, #4]
 80069be:	683b      	ldr	r3, [r7, #0]
 80069c0:	429a      	cmp	r2, r3
 80069c2:	d206      	bcs.n	80069d2 <prvInsertTimerInActiveList+0x62>
 80069c4:	68ba      	ldr	r2, [r7, #8]
 80069c6:	683b      	ldr	r3, [r7, #0]
 80069c8:	429a      	cmp	r2, r3
 80069ca:	d302      	bcc.n	80069d2 <prvInsertTimerInActiveList+0x62>
 80069cc:	2301      	movs	r3, #1
 80069ce:	617b      	str	r3, [r7, #20]
 80069d0:	e007      	b.n	80069e2 <prvInsertTimerInActiveList+0x72>
 80069d2:	4b07      	ldr	r3, [pc, #28]	; (80069f0 <prvInsertTimerInActiveList+0x80>)
 80069d4:	681a      	ldr	r2, [r3, #0]
 80069d6:	68fb      	ldr	r3, [r7, #12]
 80069d8:	3304      	adds	r3, #4
 80069da:	4619      	mov	r1, r3
 80069dc:	4610      	mov	r0, r2
 80069de:	f7fe f90b 	bl	8004bf8 <vListInsert>
 80069e2:	697b      	ldr	r3, [r7, #20]
 80069e4:	4618      	mov	r0, r3
 80069e6:	3718      	adds	r7, #24
 80069e8:	46bd      	mov	sp, r7
 80069ea:	bd80      	pop	{r7, pc}
 80069ec:	20000b88 	.word	0x20000b88
 80069f0:	20000b84 	.word	0x20000b84

080069f4 <prvProcessReceivedCommands>:
 80069f4:	b580      	push	{r7, lr}
 80069f6:	b08c      	sub	sp, #48	; 0x30
 80069f8:	af02      	add	r7, sp, #8
 80069fa:	e07f      	b.n	8006afc <prvProcessReceivedCommands+0x108>
 80069fc:	68bb      	ldr	r3, [r7, #8]
 80069fe:	2b00      	cmp	r3, #0
 8006a00:	db7b      	blt.n	8006afa <prvProcessReceivedCommands+0x106>
 8006a02:	693b      	ldr	r3, [r7, #16]
 8006a04:	627b      	str	r3, [r7, #36]	; 0x24
 8006a06:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006a08:	695b      	ldr	r3, [r3, #20]
 8006a0a:	2b00      	cmp	r3, #0
 8006a0c:	d004      	beq.n	8006a18 <prvProcessReceivedCommands+0x24>
 8006a0e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006a10:	3304      	adds	r3, #4
 8006a12:	4618      	mov	r0, r3
 8006a14:	f7fe f928 	bl	8004c68 <uxListRemove>
 8006a18:	1d3b      	adds	r3, r7, #4
 8006a1a:	4618      	mov	r0, r3
 8006a1c:	f7ff ff88 	bl	8006930 <prvSampleTimeNow>
 8006a20:	6238      	str	r0, [r7, #32]
 8006a22:	68bb      	ldr	r3, [r7, #8]
 8006a24:	2b09      	cmp	r3, #9
 8006a26:	d869      	bhi.n	8006afc <prvProcessReceivedCommands+0x108>
 8006a28:	a201      	add	r2, pc, #4	; (adr r2, 8006a30 <prvProcessReceivedCommands+0x3c>)
 8006a2a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8006a2e:	bf00      	nop
 8006a30:	08006a59 	.word	0x08006a59
 8006a34:	08006a59 	.word	0x08006a59
 8006a38:	08006a59 	.word	0x08006a59
 8006a3c:	08006afd 	.word	0x08006afd
 8006a40:	08006ab3 	.word	0x08006ab3
 8006a44:	08006ae9 	.word	0x08006ae9
 8006a48:	08006a59 	.word	0x08006a59
 8006a4c:	08006a59 	.word	0x08006a59
 8006a50:	08006afd 	.word	0x08006afd
 8006a54:	08006ab3 	.word	0x08006ab3
 8006a58:	68fa      	ldr	r2, [r7, #12]
 8006a5a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006a5c:	699b      	ldr	r3, [r3, #24]
 8006a5e:	18d1      	adds	r1, r2, r3
 8006a60:	68fb      	ldr	r3, [r7, #12]
 8006a62:	6a3a      	ldr	r2, [r7, #32]
 8006a64:	6a78      	ldr	r0, [r7, #36]	; 0x24
 8006a66:	f7ff ff83 	bl	8006970 <prvInsertTimerInActiveList>
 8006a6a:	4603      	mov	r3, r0
 8006a6c:	2b00      	cmp	r3, #0
 8006a6e:	d045      	beq.n	8006afc <prvProcessReceivedCommands+0x108>
 8006a70:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006a72:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8006a74:	6a78      	ldr	r0, [r7, #36]	; 0x24
 8006a76:	4798      	blx	r3
 8006a78:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006a7a:	69db      	ldr	r3, [r3, #28]
 8006a7c:	2b01      	cmp	r3, #1
 8006a7e:	d13d      	bne.n	8006afc <prvProcessReceivedCommands+0x108>
 8006a80:	68fa      	ldr	r2, [r7, #12]
 8006a82:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006a84:	699b      	ldr	r3, [r3, #24]
 8006a86:	441a      	add	r2, r3
 8006a88:	2300      	movs	r3, #0
 8006a8a:	9300      	str	r3, [sp, #0]
 8006a8c:	2300      	movs	r3, #0
 8006a8e:	2100      	movs	r1, #0
 8006a90:	6a78      	ldr	r0, [r7, #36]	; 0x24
 8006a92:	f7ff fe3f 	bl	8006714 <xTimerGenericCommand>
 8006a96:	61f8      	str	r0, [r7, #28]
 8006a98:	69fb      	ldr	r3, [r7, #28]
 8006a9a:	2b00      	cmp	r3, #0
 8006a9c:	d12e      	bne.n	8006afc <prvProcessReceivedCommands+0x108>
 8006a9e:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006aa2:	f383 8811 	msr	BASEPRI, r3
 8006aa6:	f3bf 8f6f 	isb	sy
 8006aaa:	f3bf 8f4f 	dsb	sy
 8006aae:	61bb      	str	r3, [r7, #24]
 8006ab0:	e7fe      	b.n	8006ab0 <prvProcessReceivedCommands+0xbc>
 8006ab2:	68fa      	ldr	r2, [r7, #12]
 8006ab4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006ab6:	619a      	str	r2, [r3, #24]
 8006ab8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006aba:	699b      	ldr	r3, [r3, #24]
 8006abc:	2b00      	cmp	r3, #0
 8006abe:	d109      	bne.n	8006ad4 <prvProcessReceivedCommands+0xe0>
 8006ac0:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006ac4:	f383 8811 	msr	BASEPRI, r3
 8006ac8:	f3bf 8f6f 	isb	sy
 8006acc:	f3bf 8f4f 	dsb	sy
 8006ad0:	617b      	str	r3, [r7, #20]
 8006ad2:	e7fe      	b.n	8006ad2 <prvProcessReceivedCommands+0xde>
 8006ad4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006ad6:	699a      	ldr	r2, [r3, #24]
 8006ad8:	6a3b      	ldr	r3, [r7, #32]
 8006ada:	18d1      	adds	r1, r2, r3
 8006adc:	6a3b      	ldr	r3, [r7, #32]
 8006ade:	6a3a      	ldr	r2, [r7, #32]
 8006ae0:	6a78      	ldr	r0, [r7, #36]	; 0x24
 8006ae2:	f7ff ff45 	bl	8006970 <prvInsertTimerInActiveList>
 8006ae6:	e009      	b.n	8006afc <prvProcessReceivedCommands+0x108>
 8006ae8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006aea:	f893 302c 	ldrb.w	r3, [r3, #44]	; 0x2c
 8006aee:	2b00      	cmp	r3, #0
 8006af0:	d104      	bne.n	8006afc <prvProcessReceivedCommands+0x108>
 8006af2:	6a78      	ldr	r0, [r7, #36]	; 0x24
 8006af4:	f000 fa76 	bl	8006fe4 <vPortFree>
 8006af8:	e000      	b.n	8006afc <prvProcessReceivedCommands+0x108>
 8006afa:	bf00      	nop
 8006afc:	4b07      	ldr	r3, [pc, #28]	; (8006b1c <prvProcessReceivedCommands+0x128>)
 8006afe:	681b      	ldr	r3, [r3, #0]
 8006b00:	f107 0108 	add.w	r1, r7, #8
 8006b04:	2200      	movs	r2, #0
 8006b06:	4618      	mov	r0, r3
 8006b08:	f7fe fb64 	bl	80051d4 <xQueueReceive>
 8006b0c:	4603      	mov	r3, r0
 8006b0e:	2b00      	cmp	r3, #0
 8006b10:	f47f af74 	bne.w	80069fc <prvProcessReceivedCommands+0x8>
 8006b14:	bf00      	nop
 8006b16:	3728      	adds	r7, #40	; 0x28
 8006b18:	46bd      	mov	sp, r7
 8006b1a:	bd80      	pop	{r7, pc}
 8006b1c:	20000b8c 	.word	0x20000b8c

08006b20 <prvSwitchTimerLists>:
 8006b20:	b580      	push	{r7, lr}
 8006b22:	b088      	sub	sp, #32
 8006b24:	af02      	add	r7, sp, #8
 8006b26:	e044      	b.n	8006bb2 <prvSwitchTimerLists+0x92>
 8006b28:	4b2b      	ldr	r3, [pc, #172]	; (8006bd8 <prvSwitchTimerLists+0xb8>)
 8006b2a:	681b      	ldr	r3, [r3, #0]
 8006b2c:	68db      	ldr	r3, [r3, #12]
 8006b2e:	681b      	ldr	r3, [r3, #0]
 8006b30:	613b      	str	r3, [r7, #16]
 8006b32:	4b29      	ldr	r3, [pc, #164]	; (8006bd8 <prvSwitchTimerLists+0xb8>)
 8006b34:	681b      	ldr	r3, [r3, #0]
 8006b36:	68db      	ldr	r3, [r3, #12]
 8006b38:	68db      	ldr	r3, [r3, #12]
 8006b3a:	60fb      	str	r3, [r7, #12]
 8006b3c:	68fb      	ldr	r3, [r7, #12]
 8006b3e:	3304      	adds	r3, #4
 8006b40:	4618      	mov	r0, r3
 8006b42:	f7fe f891 	bl	8004c68 <uxListRemove>
 8006b46:	68fb      	ldr	r3, [r7, #12]
 8006b48:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8006b4a:	68f8      	ldr	r0, [r7, #12]
 8006b4c:	4798      	blx	r3
 8006b4e:	68fb      	ldr	r3, [r7, #12]
 8006b50:	69db      	ldr	r3, [r3, #28]
 8006b52:	2b01      	cmp	r3, #1
 8006b54:	d12d      	bne.n	8006bb2 <prvSwitchTimerLists+0x92>
 8006b56:	68fb      	ldr	r3, [r7, #12]
 8006b58:	699b      	ldr	r3, [r3, #24]
 8006b5a:	693a      	ldr	r2, [r7, #16]
 8006b5c:	4413      	add	r3, r2
 8006b5e:	60bb      	str	r3, [r7, #8]
 8006b60:	68ba      	ldr	r2, [r7, #8]
 8006b62:	693b      	ldr	r3, [r7, #16]
 8006b64:	429a      	cmp	r2, r3
 8006b66:	d90e      	bls.n	8006b86 <prvSwitchTimerLists+0x66>
 8006b68:	68fb      	ldr	r3, [r7, #12]
 8006b6a:	68ba      	ldr	r2, [r7, #8]
 8006b6c:	605a      	str	r2, [r3, #4]
 8006b6e:	68fb      	ldr	r3, [r7, #12]
 8006b70:	68fa      	ldr	r2, [r7, #12]
 8006b72:	611a      	str	r2, [r3, #16]
 8006b74:	4b18      	ldr	r3, [pc, #96]	; (8006bd8 <prvSwitchTimerLists+0xb8>)
 8006b76:	681a      	ldr	r2, [r3, #0]
 8006b78:	68fb      	ldr	r3, [r7, #12]
 8006b7a:	3304      	adds	r3, #4
 8006b7c:	4619      	mov	r1, r3
 8006b7e:	4610      	mov	r0, r2
 8006b80:	f7fe f83a 	bl	8004bf8 <vListInsert>
 8006b84:	e015      	b.n	8006bb2 <prvSwitchTimerLists+0x92>
 8006b86:	2300      	movs	r3, #0
 8006b88:	9300      	str	r3, [sp, #0]
 8006b8a:	2300      	movs	r3, #0
 8006b8c:	693a      	ldr	r2, [r7, #16]
 8006b8e:	2100      	movs	r1, #0
 8006b90:	68f8      	ldr	r0, [r7, #12]
 8006b92:	f7ff fdbf 	bl	8006714 <xTimerGenericCommand>
 8006b96:	6078      	str	r0, [r7, #4]
 8006b98:	687b      	ldr	r3, [r7, #4]
 8006b9a:	2b00      	cmp	r3, #0
 8006b9c:	d109      	bne.n	8006bb2 <prvSwitchTimerLists+0x92>
 8006b9e:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006ba2:	f383 8811 	msr	BASEPRI, r3
 8006ba6:	f3bf 8f6f 	isb	sy
 8006baa:	f3bf 8f4f 	dsb	sy
 8006bae:	603b      	str	r3, [r7, #0]
 8006bb0:	e7fe      	b.n	8006bb0 <prvSwitchTimerLists+0x90>
 8006bb2:	4b09      	ldr	r3, [pc, #36]	; (8006bd8 <prvSwitchTimerLists+0xb8>)
 8006bb4:	681b      	ldr	r3, [r3, #0]
 8006bb6:	681b      	ldr	r3, [r3, #0]
 8006bb8:	2b00      	cmp	r3, #0
 8006bba:	d1b5      	bne.n	8006b28 <prvSwitchTimerLists+0x8>
 8006bbc:	4b06      	ldr	r3, [pc, #24]	; (8006bd8 <prvSwitchTimerLists+0xb8>)
 8006bbe:	681b      	ldr	r3, [r3, #0]
 8006bc0:	617b      	str	r3, [r7, #20]
 8006bc2:	4b06      	ldr	r3, [pc, #24]	; (8006bdc <prvSwitchTimerLists+0xbc>)
 8006bc4:	681b      	ldr	r3, [r3, #0]
 8006bc6:	4a04      	ldr	r2, [pc, #16]	; (8006bd8 <prvSwitchTimerLists+0xb8>)
 8006bc8:	6013      	str	r3, [r2, #0]
 8006bca:	4a04      	ldr	r2, [pc, #16]	; (8006bdc <prvSwitchTimerLists+0xbc>)
 8006bcc:	697b      	ldr	r3, [r7, #20]
 8006bce:	6013      	str	r3, [r2, #0]
 8006bd0:	bf00      	nop
 8006bd2:	3718      	adds	r7, #24
 8006bd4:	46bd      	mov	sp, r7
 8006bd6:	bd80      	pop	{r7, pc}
 8006bd8:	20000b84 	.word	0x20000b84
 8006bdc:	20000b88 	.word	0x20000b88

08006be0 <prvCheckForValidListAndQueue>:
 8006be0:	b580      	push	{r7, lr}
 8006be2:	b082      	sub	sp, #8
 8006be4:	af02      	add	r7, sp, #8
 8006be6:	f000 f90d 	bl	8006e04 <vPortEnterCritical>
 8006bea:	4b15      	ldr	r3, [pc, #84]	; (8006c40 <prvCheckForValidListAndQueue+0x60>)
 8006bec:	681b      	ldr	r3, [r3, #0]
 8006bee:	2b00      	cmp	r3, #0
 8006bf0:	d120      	bne.n	8006c34 <prvCheckForValidListAndQueue+0x54>
 8006bf2:	4814      	ldr	r0, [pc, #80]	; (8006c44 <prvCheckForValidListAndQueue+0x64>)
 8006bf4:	f7fd ffb2 	bl	8004b5c <vListInitialise>
 8006bf8:	4813      	ldr	r0, [pc, #76]	; (8006c48 <prvCheckForValidListAndQueue+0x68>)
 8006bfa:	f7fd ffaf 	bl	8004b5c <vListInitialise>
 8006bfe:	4b13      	ldr	r3, [pc, #76]	; (8006c4c <prvCheckForValidListAndQueue+0x6c>)
 8006c00:	4a10      	ldr	r2, [pc, #64]	; (8006c44 <prvCheckForValidListAndQueue+0x64>)
 8006c02:	601a      	str	r2, [r3, #0]
 8006c04:	4b12      	ldr	r3, [pc, #72]	; (8006c50 <prvCheckForValidListAndQueue+0x70>)
 8006c06:	4a10      	ldr	r2, [pc, #64]	; (8006c48 <prvCheckForValidListAndQueue+0x68>)
 8006c08:	601a      	str	r2, [r3, #0]
 8006c0a:	2300      	movs	r3, #0
 8006c0c:	9300      	str	r3, [sp, #0]
 8006c0e:	4b11      	ldr	r3, [pc, #68]	; (8006c54 <prvCheckForValidListAndQueue+0x74>)
 8006c10:	4a11      	ldr	r2, [pc, #68]	; (8006c58 <prvCheckForValidListAndQueue+0x78>)
 8006c12:	210c      	movs	r1, #12
 8006c14:	200a      	movs	r0, #10
 8006c16:	f7fe f8b9 	bl	8004d8c <xQueueGenericCreateStatic>
 8006c1a:	4602      	mov	r2, r0
 8006c1c:	4b08      	ldr	r3, [pc, #32]	; (8006c40 <prvCheckForValidListAndQueue+0x60>)
 8006c1e:	601a      	str	r2, [r3, #0]
 8006c20:	4b07      	ldr	r3, [pc, #28]	; (8006c40 <prvCheckForValidListAndQueue+0x60>)
 8006c22:	681b      	ldr	r3, [r3, #0]
 8006c24:	2b00      	cmp	r3, #0
 8006c26:	d005      	beq.n	8006c34 <prvCheckForValidListAndQueue+0x54>
 8006c28:	4b05      	ldr	r3, [pc, #20]	; (8006c40 <prvCheckForValidListAndQueue+0x60>)
 8006c2a:	681b      	ldr	r3, [r3, #0]
 8006c2c:	490b      	ldr	r1, [pc, #44]	; (8006c5c <prvCheckForValidListAndQueue+0x7c>)
 8006c2e:	4618      	mov	r0, r3
 8006c30:	f7fe fcbc 	bl	80055ac <vQueueAddToRegistry>
 8006c34:	f000 f914 	bl	8006e60 <vPortExitCritical>
 8006c38:	bf00      	nop
 8006c3a:	46bd      	mov	sp, r7
 8006c3c:	bd80      	pop	{r7, pc}
 8006c3e:	bf00      	nop
 8006c40:	20000b8c 	.word	0x20000b8c
 8006c44:	20000b5c 	.word	0x20000b5c
 8006c48:	20000b70 	.word	0x20000b70
 8006c4c:	20000b84 	.word	0x20000b84
 8006c50:	20000b88 	.word	0x20000b88
 8006c54:	20000c10 	.word	0x20000c10
 8006c58:	20000b98 	.word	0x20000b98
 8006c5c:	080074a4 	.word	0x080074a4

08006c60 <pxPortInitialiseStack>:
 8006c60:	b480      	push	{r7}
 8006c62:	b085      	sub	sp, #20
 8006c64:	af00      	add	r7, sp, #0
 8006c66:	60f8      	str	r0, [r7, #12]
 8006c68:	60b9      	str	r1, [r7, #8]
 8006c6a:	607a      	str	r2, [r7, #4]
 8006c6c:	68fb      	ldr	r3, [r7, #12]
 8006c6e:	3b04      	subs	r3, #4
 8006c70:	60fb      	str	r3, [r7, #12]
 8006c72:	68fb      	ldr	r3, [r7, #12]
 8006c74:	f04f 7280 	mov.w	r2, #16777216	; 0x1000000
 8006c78:	601a      	str	r2, [r3, #0]
 8006c7a:	68fb      	ldr	r3, [r7, #12]
 8006c7c:	3b04      	subs	r3, #4
 8006c7e:	60fb      	str	r3, [r7, #12]
 8006c80:	68bb      	ldr	r3, [r7, #8]
 8006c82:	f023 0201 	bic.w	r2, r3, #1
 8006c86:	68fb      	ldr	r3, [r7, #12]
 8006c88:	601a      	str	r2, [r3, #0]
 8006c8a:	68fb      	ldr	r3, [r7, #12]
 8006c8c:	3b04      	subs	r3, #4
 8006c8e:	60fb      	str	r3, [r7, #12]
 8006c90:	4a08      	ldr	r2, [pc, #32]	; (8006cb4 <pxPortInitialiseStack+0x54>)
 8006c92:	68fb      	ldr	r3, [r7, #12]
 8006c94:	601a      	str	r2, [r3, #0]
 8006c96:	68fb      	ldr	r3, [r7, #12]
 8006c98:	3b14      	subs	r3, #20
 8006c9a:	60fb      	str	r3, [r7, #12]
 8006c9c:	687a      	ldr	r2, [r7, #4]
 8006c9e:	68fb      	ldr	r3, [r7, #12]
 8006ca0:	601a      	str	r2, [r3, #0]
 8006ca2:	68fb      	ldr	r3, [r7, #12]
 8006ca4:	3b20      	subs	r3, #32
 8006ca6:	60fb      	str	r3, [r7, #12]
 8006ca8:	68fb      	ldr	r3, [r7, #12]
 8006caa:	4618      	mov	r0, r3
 8006cac:	3714      	adds	r7, #20
 8006cae:	46bd      	mov	sp, r7
 8006cb0:	bc80      	pop	{r7}
 8006cb2:	4770      	bx	lr
 8006cb4:	08006cb9 	.word	0x08006cb9

08006cb8 <prvTaskExitError>:
 8006cb8:	b480      	push	{r7}
 8006cba:	b083      	sub	sp, #12
 8006cbc:	af00      	add	r7, sp, #0
 8006cbe:	4b0c      	ldr	r3, [pc, #48]	; (8006cf0 <prvTaskExitError+0x38>)
 8006cc0:	681b      	ldr	r3, [r3, #0]
 8006cc2:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8006cc6:	d009      	beq.n	8006cdc <prvTaskExitError+0x24>
 8006cc8:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006ccc:	f383 8811 	msr	BASEPRI, r3
 8006cd0:	f3bf 8f6f 	isb	sy
 8006cd4:	f3bf 8f4f 	dsb	sy
 8006cd8:	607b      	str	r3, [r7, #4]
 8006cda:	e7fe      	b.n	8006cda <prvTaskExitError+0x22>
 8006cdc:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006ce0:	f383 8811 	msr	BASEPRI, r3
 8006ce4:	f3bf 8f6f 	isb	sy
 8006ce8:	f3bf 8f4f 	dsb	sy
 8006cec:	603b      	str	r3, [r7, #0]
 8006cee:	e7fe      	b.n	8006cee <prvTaskExitError+0x36>
 8006cf0:	20000010 	.word	0x20000010
	...

08006d00 <SVC_Handler>:
 8006d00:	4b07      	ldr	r3, [pc, #28]	; (8006d20 <pxCurrentTCBConst2>)
 8006d02:	6819      	ldr	r1, [r3, #0]
 8006d04:	6808      	ldr	r0, [r1, #0]
 8006d06:	e8b0 0ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8006d0a:	f380 8809 	msr	PSP, r0
 8006d0e:	f3bf 8f6f 	isb	sy
 8006d12:	f04f 0000 	mov.w	r0, #0
 8006d16:	f380 8811 	msr	BASEPRI, r0
 8006d1a:	f04e 0e0d 	orr.w	lr, lr, #13
 8006d1e:	4770      	bx	lr

08006d20 <pxCurrentTCBConst2>:
 8006d20:	20000a58 	.word	0x20000a58
 8006d24:	bf00      	nop
 8006d26:	bf00      	nop

08006d28 <prvPortStartFirstTask>:
 8006d28:	4806      	ldr	r0, [pc, #24]	; (8006d44 <prvPortStartFirstTask+0x1c>)
 8006d2a:	6800      	ldr	r0, [r0, #0]
 8006d2c:	6800      	ldr	r0, [r0, #0]
 8006d2e:	f380 8808 	msr	MSP, r0
 8006d32:	b662      	cpsie	i
 8006d34:	b661      	cpsie	f
 8006d36:	f3bf 8f4f 	dsb	sy
 8006d3a:	f3bf 8f6f 	isb	sy
 8006d3e:	df00      	svc	0
 8006d40:	bf00      	nop
 8006d42:	bf00      	nop
 8006d44:	e000ed08 	.word	0xe000ed08

08006d48 <xPortStartScheduler>:
 8006d48:	b580      	push	{r7, lr}
 8006d4a:	b084      	sub	sp, #16
 8006d4c:	af00      	add	r7, sp, #0
 8006d4e:	4b28      	ldr	r3, [pc, #160]	; (8006df0 <xPortStartScheduler+0xa8>)
 8006d50:	60fb      	str	r3, [r7, #12]
 8006d52:	68fb      	ldr	r3, [r7, #12]
 8006d54:	781b      	ldrb	r3, [r3, #0]
 8006d56:	b2db      	uxtb	r3, r3
 8006d58:	60bb      	str	r3, [r7, #8]
 8006d5a:	68fb      	ldr	r3, [r7, #12]
 8006d5c:	22ff      	movs	r2, #255	; 0xff
 8006d5e:	701a      	strb	r2, [r3, #0]
 8006d60:	68fb      	ldr	r3, [r7, #12]
 8006d62:	781b      	ldrb	r3, [r3, #0]
 8006d64:	b2db      	uxtb	r3, r3
 8006d66:	71fb      	strb	r3, [r7, #7]
 8006d68:	79fb      	ldrb	r3, [r7, #7]
 8006d6a:	b2db      	uxtb	r3, r3
 8006d6c:	f003 0350 	and.w	r3, r3, #80	; 0x50
 8006d70:	b2da      	uxtb	r2, r3
 8006d72:	4b20      	ldr	r3, [pc, #128]	; (8006df4 <xPortStartScheduler+0xac>)
 8006d74:	701a      	strb	r2, [r3, #0]
 8006d76:	4b20      	ldr	r3, [pc, #128]	; (8006df8 <xPortStartScheduler+0xb0>)
 8006d78:	2207      	movs	r2, #7
 8006d7a:	601a      	str	r2, [r3, #0]
 8006d7c:	e009      	b.n	8006d92 <xPortStartScheduler+0x4a>
 8006d7e:	4b1e      	ldr	r3, [pc, #120]	; (8006df8 <xPortStartScheduler+0xb0>)
 8006d80:	681b      	ldr	r3, [r3, #0]
 8006d82:	3b01      	subs	r3, #1
 8006d84:	4a1c      	ldr	r2, [pc, #112]	; (8006df8 <xPortStartScheduler+0xb0>)
 8006d86:	6013      	str	r3, [r2, #0]
 8006d88:	79fb      	ldrb	r3, [r7, #7]
 8006d8a:	b2db      	uxtb	r3, r3
 8006d8c:	005b      	lsls	r3, r3, #1
 8006d8e:	b2db      	uxtb	r3, r3
 8006d90:	71fb      	strb	r3, [r7, #7]
 8006d92:	79fb      	ldrb	r3, [r7, #7]
 8006d94:	b2db      	uxtb	r3, r3
 8006d96:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8006d9a:	2b80      	cmp	r3, #128	; 0x80
 8006d9c:	d0ef      	beq.n	8006d7e <xPortStartScheduler+0x36>
 8006d9e:	4b16      	ldr	r3, [pc, #88]	; (8006df8 <xPortStartScheduler+0xb0>)
 8006da0:	681b      	ldr	r3, [r3, #0]
 8006da2:	021b      	lsls	r3, r3, #8
 8006da4:	4a14      	ldr	r2, [pc, #80]	; (8006df8 <xPortStartScheduler+0xb0>)
 8006da6:	6013      	str	r3, [r2, #0]
 8006da8:	4b13      	ldr	r3, [pc, #76]	; (8006df8 <xPortStartScheduler+0xb0>)
 8006daa:	681b      	ldr	r3, [r3, #0]
 8006dac:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 8006db0:	4a11      	ldr	r2, [pc, #68]	; (8006df8 <xPortStartScheduler+0xb0>)
 8006db2:	6013      	str	r3, [r2, #0]
 8006db4:	68bb      	ldr	r3, [r7, #8]
 8006db6:	b2da      	uxtb	r2, r3
 8006db8:	68fb      	ldr	r3, [r7, #12]
 8006dba:	701a      	strb	r2, [r3, #0]
 8006dbc:	4b0f      	ldr	r3, [pc, #60]	; (8006dfc <xPortStartScheduler+0xb4>)
 8006dbe:	681b      	ldr	r3, [r3, #0]
 8006dc0:	4a0e      	ldr	r2, [pc, #56]	; (8006dfc <xPortStartScheduler+0xb4>)
 8006dc2:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8006dc6:	6013      	str	r3, [r2, #0]
 8006dc8:	4b0c      	ldr	r3, [pc, #48]	; (8006dfc <xPortStartScheduler+0xb4>)
 8006dca:	681b      	ldr	r3, [r3, #0]
 8006dcc:	4a0b      	ldr	r2, [pc, #44]	; (8006dfc <xPortStartScheduler+0xb4>)
 8006dce:	f043 4370 	orr.w	r3, r3, #4026531840	; 0xf0000000
 8006dd2:	6013      	str	r3, [r2, #0]
 8006dd4:	f000 f8b0 	bl	8006f38 <vPortSetupTimerInterrupt>
 8006dd8:	4b09      	ldr	r3, [pc, #36]	; (8006e00 <xPortStartScheduler+0xb8>)
 8006dda:	2200      	movs	r2, #0
 8006ddc:	601a      	str	r2, [r3, #0]
 8006dde:	f7ff ffa3 	bl	8006d28 <prvPortStartFirstTask>
 8006de2:	f7ff ff69 	bl	8006cb8 <prvTaskExitError>
 8006de6:	2300      	movs	r3, #0
 8006de8:	4618      	mov	r0, r3
 8006dea:	3710      	adds	r7, #16
 8006dec:	46bd      	mov	sp, r7
 8006dee:	bd80      	pop	{r7, pc}
 8006df0:	e000e400 	.word	0xe000e400
 8006df4:	20000c60 	.word	0x20000c60
 8006df8:	20000c64 	.word	0x20000c64
 8006dfc:	e000ed20 	.word	0xe000ed20
 8006e00:	20000010 	.word	0x20000010

08006e04 <vPortEnterCritical>:
 8006e04:	b480      	push	{r7}
 8006e06:	b083      	sub	sp, #12
 8006e08:	af00      	add	r7, sp, #0
 8006e0a:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006e0e:	f383 8811 	msr	BASEPRI, r3
 8006e12:	f3bf 8f6f 	isb	sy
 8006e16:	f3bf 8f4f 	dsb	sy
 8006e1a:	607b      	str	r3, [r7, #4]
 8006e1c:	4b0e      	ldr	r3, [pc, #56]	; (8006e58 <vPortEnterCritical+0x54>)
 8006e1e:	681b      	ldr	r3, [r3, #0]
 8006e20:	3301      	adds	r3, #1
 8006e22:	4a0d      	ldr	r2, [pc, #52]	; (8006e58 <vPortEnterCritical+0x54>)
 8006e24:	6013      	str	r3, [r2, #0]
 8006e26:	4b0c      	ldr	r3, [pc, #48]	; (8006e58 <vPortEnterCritical+0x54>)
 8006e28:	681b      	ldr	r3, [r3, #0]
 8006e2a:	2b01      	cmp	r3, #1
 8006e2c:	d10e      	bne.n	8006e4c <vPortEnterCritical+0x48>
 8006e2e:	4b0b      	ldr	r3, [pc, #44]	; (8006e5c <vPortEnterCritical+0x58>)
 8006e30:	681b      	ldr	r3, [r3, #0]
 8006e32:	b2db      	uxtb	r3, r3
 8006e34:	2b00      	cmp	r3, #0
 8006e36:	d009      	beq.n	8006e4c <vPortEnterCritical+0x48>
 8006e38:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006e3c:	f383 8811 	msr	BASEPRI, r3
 8006e40:	f3bf 8f6f 	isb	sy
 8006e44:	f3bf 8f4f 	dsb	sy
 8006e48:	603b      	str	r3, [r7, #0]
 8006e4a:	e7fe      	b.n	8006e4a <vPortEnterCritical+0x46>
 8006e4c:	bf00      	nop
 8006e4e:	370c      	adds	r7, #12
 8006e50:	46bd      	mov	sp, r7
 8006e52:	bc80      	pop	{r7}
 8006e54:	4770      	bx	lr
 8006e56:	bf00      	nop
 8006e58:	20000010 	.word	0x20000010
 8006e5c:	e000ed04 	.word	0xe000ed04

08006e60 <vPortExitCritical>:
 8006e60:	b480      	push	{r7}
 8006e62:	b083      	sub	sp, #12
 8006e64:	af00      	add	r7, sp, #0
 8006e66:	4b10      	ldr	r3, [pc, #64]	; (8006ea8 <vPortExitCritical+0x48>)
 8006e68:	681b      	ldr	r3, [r3, #0]
 8006e6a:	2b00      	cmp	r3, #0
 8006e6c:	d109      	bne.n	8006e82 <vPortExitCritical+0x22>
 8006e6e:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006e72:	f383 8811 	msr	BASEPRI, r3
 8006e76:	f3bf 8f6f 	isb	sy
 8006e7a:	f3bf 8f4f 	dsb	sy
 8006e7e:	607b      	str	r3, [r7, #4]
 8006e80:	e7fe      	b.n	8006e80 <vPortExitCritical+0x20>
 8006e82:	4b09      	ldr	r3, [pc, #36]	; (8006ea8 <vPortExitCritical+0x48>)
 8006e84:	681b      	ldr	r3, [r3, #0]
 8006e86:	3b01      	subs	r3, #1
 8006e88:	4a07      	ldr	r2, [pc, #28]	; (8006ea8 <vPortExitCritical+0x48>)
 8006e8a:	6013      	str	r3, [r2, #0]
 8006e8c:	4b06      	ldr	r3, [pc, #24]	; (8006ea8 <vPortExitCritical+0x48>)
 8006e8e:	681b      	ldr	r3, [r3, #0]
 8006e90:	2b00      	cmp	r3, #0
 8006e92:	d104      	bne.n	8006e9e <vPortExitCritical+0x3e>
 8006e94:	2300      	movs	r3, #0
 8006e96:	603b      	str	r3, [r7, #0]
 8006e98:	683b      	ldr	r3, [r7, #0]
 8006e9a:	f383 8811 	msr	BASEPRI, r3
 8006e9e:	bf00      	nop
 8006ea0:	370c      	adds	r7, #12
 8006ea2:	46bd      	mov	sp, r7
 8006ea4:	bc80      	pop	{r7}
 8006ea6:	4770      	bx	lr
 8006ea8:	20000010 	.word	0x20000010
 8006eac:	00000000 	.word	0x00000000

08006eb0 <PendSV_Handler>:
 8006eb0:	f3ef 8009 	mrs	r0, PSP
 8006eb4:	f3bf 8f6f 	isb	sy
 8006eb8:	4b0d      	ldr	r3, [pc, #52]	; (8006ef0 <pxCurrentTCBConst>)
 8006eba:	681a      	ldr	r2, [r3, #0]
 8006ebc:	e920 0ff0 	stmdb	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8006ec0:	6010      	str	r0, [r2, #0]
 8006ec2:	e92d 4008 	stmdb	sp!, {r3, lr}
 8006ec6:	f04f 0050 	mov.w	r0, #80	; 0x50
 8006eca:	f380 8811 	msr	BASEPRI, r0
 8006ece:	f7fe ff55 	bl	8005d7c <vTaskSwitchContext>
 8006ed2:	f04f 0000 	mov.w	r0, #0
 8006ed6:	f380 8811 	msr	BASEPRI, r0
 8006eda:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8006ede:	6819      	ldr	r1, [r3, #0]
 8006ee0:	6808      	ldr	r0, [r1, #0]
 8006ee2:	e8b0 0ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8006ee6:	f380 8809 	msr	PSP, r0
 8006eea:	f3bf 8f6f 	isb	sy
 8006eee:	4770      	bx	lr

08006ef0 <pxCurrentTCBConst>:
 8006ef0:	20000a58 	.word	0x20000a58
 8006ef4:	bf00      	nop
 8006ef6:	bf00      	nop

08006ef8 <SysTick_Handler>:
 8006ef8:	b580      	push	{r7, lr}
 8006efa:	b082      	sub	sp, #8
 8006efc:	af00      	add	r7, sp, #0
 8006efe:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006f02:	f383 8811 	msr	BASEPRI, r3
 8006f06:	f3bf 8f6f 	isb	sy
 8006f0a:	f3bf 8f4f 	dsb	sy
 8006f0e:	607b      	str	r3, [r7, #4]
 8006f10:	f7fe fe74 	bl	8005bfc <xTaskIncrementTick>
 8006f14:	4603      	mov	r3, r0
 8006f16:	2b00      	cmp	r3, #0
 8006f18:	d003      	beq.n	8006f22 <SysTick_Handler+0x2a>
 8006f1a:	4b06      	ldr	r3, [pc, #24]	; (8006f34 <SysTick_Handler+0x3c>)
 8006f1c:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8006f20:	601a      	str	r2, [r3, #0]
 8006f22:	2300      	movs	r3, #0
 8006f24:	603b      	str	r3, [r7, #0]
 8006f26:	683b      	ldr	r3, [r7, #0]
 8006f28:	f383 8811 	msr	BASEPRI, r3
 8006f2c:	bf00      	nop
 8006f2e:	3708      	adds	r7, #8
 8006f30:	46bd      	mov	sp, r7
 8006f32:	bd80      	pop	{r7, pc}
 8006f34:	e000ed04 	.word	0xe000ed04

08006f38 <vPortSetupTimerInterrupt>:
 8006f38:	b480      	push	{r7}
 8006f3a:	af00      	add	r7, sp, #0
 8006f3c:	4b07      	ldr	r3, [pc, #28]	; (8006f5c <vPortSetupTimerInterrupt+0x24>)
 8006f3e:	681b      	ldr	r3, [r3, #0]
 8006f40:	4a07      	ldr	r2, [pc, #28]	; (8006f60 <vPortSetupTimerInterrupt+0x28>)
 8006f42:	fba2 2303 	umull	r2, r3, r2, r3
 8006f46:	099b      	lsrs	r3, r3, #6
 8006f48:	4a06      	ldr	r2, [pc, #24]	; (8006f64 <vPortSetupTimerInterrupt+0x2c>)
 8006f4a:	3b01      	subs	r3, #1
 8006f4c:	6013      	str	r3, [r2, #0]
 8006f4e:	4b06      	ldr	r3, [pc, #24]	; (8006f68 <vPortSetupTimerInterrupt+0x30>)
 8006f50:	2207      	movs	r2, #7
 8006f52:	601a      	str	r2, [r3, #0]
 8006f54:	bf00      	nop
 8006f56:	46bd      	mov	sp, r7
 8006f58:	bc80      	pop	{r7}
 8006f5a:	4770      	bx	lr
 8006f5c:	20000000 	.word	0x20000000
 8006f60:	10624dd3 	.word	0x10624dd3
 8006f64:	e000e014 	.word	0xe000e014
 8006f68:	e000e010 	.word	0xe000e010

08006f6c <vPortValidateInterruptPriority>:
 8006f6c:	b480      	push	{r7}
 8006f6e:	b085      	sub	sp, #20
 8006f70:	af00      	add	r7, sp, #0
 8006f72:	f3ef 8305 	mrs	r3, IPSR
 8006f76:	60fb      	str	r3, [r7, #12]
 8006f78:	68fb      	ldr	r3, [r7, #12]
 8006f7a:	2b0f      	cmp	r3, #15
 8006f7c:	d913      	bls.n	8006fa6 <vPortValidateInterruptPriority+0x3a>
 8006f7e:	4a15      	ldr	r2, [pc, #84]	; (8006fd4 <vPortValidateInterruptPriority+0x68>)
 8006f80:	68fb      	ldr	r3, [r7, #12]
 8006f82:	4413      	add	r3, r2
 8006f84:	781b      	ldrb	r3, [r3, #0]
 8006f86:	72fb      	strb	r3, [r7, #11]
 8006f88:	4b13      	ldr	r3, [pc, #76]	; (8006fd8 <vPortValidateInterruptPriority+0x6c>)
 8006f8a:	781b      	ldrb	r3, [r3, #0]
 8006f8c:	7afa      	ldrb	r2, [r7, #11]
 8006f8e:	429a      	cmp	r2, r3
 8006f90:	d209      	bcs.n	8006fa6 <vPortValidateInterruptPriority+0x3a>
 8006f92:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006f96:	f383 8811 	msr	BASEPRI, r3
 8006f9a:	f3bf 8f6f 	isb	sy
 8006f9e:	f3bf 8f4f 	dsb	sy
 8006fa2:	607b      	str	r3, [r7, #4]
 8006fa4:	e7fe      	b.n	8006fa4 <vPortValidateInterruptPriority+0x38>
 8006fa6:	4b0d      	ldr	r3, [pc, #52]	; (8006fdc <vPortValidateInterruptPriority+0x70>)
 8006fa8:	681b      	ldr	r3, [r3, #0]
 8006faa:	f403 62e0 	and.w	r2, r3, #1792	; 0x700
 8006fae:	4b0c      	ldr	r3, [pc, #48]	; (8006fe0 <vPortValidateInterruptPriority+0x74>)
 8006fb0:	681b      	ldr	r3, [r3, #0]
 8006fb2:	429a      	cmp	r2, r3
 8006fb4:	d909      	bls.n	8006fca <vPortValidateInterruptPriority+0x5e>
 8006fb6:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006fba:	f383 8811 	msr	BASEPRI, r3
 8006fbe:	f3bf 8f6f 	isb	sy
 8006fc2:	f3bf 8f4f 	dsb	sy
 8006fc6:	603b      	str	r3, [r7, #0]
 8006fc8:	e7fe      	b.n	8006fc8 <vPortValidateInterruptPriority+0x5c>
 8006fca:	bf00      	nop
 8006fcc:	3714      	adds	r7, #20
 8006fce:	46bd      	mov	sp, r7
 8006fd0:	bc80      	pop	{r7}
 8006fd2:	4770      	bx	lr
 8006fd4:	e000e3f0 	.word	0xe000e3f0
 8006fd8:	20000c60 	.word	0x20000c60
 8006fdc:	e000ed0c 	.word	0xe000ed0c
 8006fe0:	20000c64 	.word	0x20000c64

08006fe4 <vPortFree>:
 8006fe4:	b580      	push	{r7, lr}
 8006fe6:	b086      	sub	sp, #24
 8006fe8:	af00      	add	r7, sp, #0
 8006fea:	6078      	str	r0, [r7, #4]
 8006fec:	687b      	ldr	r3, [r7, #4]
 8006fee:	617b      	str	r3, [r7, #20]
 8006ff0:	687b      	ldr	r3, [r7, #4]
 8006ff2:	2b00      	cmp	r3, #0
 8006ff4:	d046      	beq.n	8007084 <vPortFree+0xa0>
 8006ff6:	2308      	movs	r3, #8
 8006ff8:	425b      	negs	r3, r3
 8006ffa:	697a      	ldr	r2, [r7, #20]
 8006ffc:	4413      	add	r3, r2
 8006ffe:	617b      	str	r3, [r7, #20]
 8007000:	697b      	ldr	r3, [r7, #20]
 8007002:	613b      	str	r3, [r7, #16]
 8007004:	693b      	ldr	r3, [r7, #16]
 8007006:	685a      	ldr	r2, [r3, #4]
 8007008:	4b20      	ldr	r3, [pc, #128]	; (800708c <vPortFree+0xa8>)
 800700a:	681b      	ldr	r3, [r3, #0]
 800700c:	4013      	ands	r3, r2
 800700e:	2b00      	cmp	r3, #0
 8007010:	d109      	bne.n	8007026 <vPortFree+0x42>
 8007012:	f04f 0350 	mov.w	r3, #80	; 0x50
 8007016:	f383 8811 	msr	BASEPRI, r3
 800701a:	f3bf 8f6f 	isb	sy
 800701e:	f3bf 8f4f 	dsb	sy
 8007022:	60fb      	str	r3, [r7, #12]
 8007024:	e7fe      	b.n	8007024 <vPortFree+0x40>
 8007026:	693b      	ldr	r3, [r7, #16]
 8007028:	681b      	ldr	r3, [r3, #0]
 800702a:	2b00      	cmp	r3, #0
 800702c:	d009      	beq.n	8007042 <vPortFree+0x5e>
 800702e:	f04f 0350 	mov.w	r3, #80	; 0x50
 8007032:	f383 8811 	msr	BASEPRI, r3
 8007036:	f3bf 8f6f 	isb	sy
 800703a:	f3bf 8f4f 	dsb	sy
 800703e:	60bb      	str	r3, [r7, #8]
 8007040:	e7fe      	b.n	8007040 <vPortFree+0x5c>
 8007042:	693b      	ldr	r3, [r7, #16]
 8007044:	685a      	ldr	r2, [r3, #4]
 8007046:	4b11      	ldr	r3, [pc, #68]	; (800708c <vPortFree+0xa8>)
 8007048:	681b      	ldr	r3, [r3, #0]
 800704a:	4013      	ands	r3, r2
 800704c:	2b00      	cmp	r3, #0
 800704e:	d019      	beq.n	8007084 <vPortFree+0xa0>
 8007050:	693b      	ldr	r3, [r7, #16]
 8007052:	681b      	ldr	r3, [r3, #0]
 8007054:	2b00      	cmp	r3, #0
 8007056:	d115      	bne.n	8007084 <vPortFree+0xa0>
 8007058:	693b      	ldr	r3, [r7, #16]
 800705a:	685a      	ldr	r2, [r3, #4]
 800705c:	4b0b      	ldr	r3, [pc, #44]	; (800708c <vPortFree+0xa8>)
 800705e:	681b      	ldr	r3, [r3, #0]
 8007060:	43db      	mvns	r3, r3
 8007062:	401a      	ands	r2, r3
 8007064:	693b      	ldr	r3, [r7, #16]
 8007066:	605a      	str	r2, [r3, #4]
 8007068:	f7fe fd10 	bl	8005a8c <vTaskSuspendAll>
 800706c:	693b      	ldr	r3, [r7, #16]
 800706e:	685a      	ldr	r2, [r3, #4]
 8007070:	4b07      	ldr	r3, [pc, #28]	; (8007090 <vPortFree+0xac>)
 8007072:	681b      	ldr	r3, [r3, #0]
 8007074:	4413      	add	r3, r2
 8007076:	4a06      	ldr	r2, [pc, #24]	; (8007090 <vPortFree+0xac>)
 8007078:	6013      	str	r3, [r2, #0]
 800707a:	6938      	ldr	r0, [r7, #16]
 800707c:	f000 f80a 	bl	8007094 <prvInsertBlockIntoFreeList>
 8007080:	f7fe fd12 	bl	8005aa8 <xTaskResumeAll>
 8007084:	bf00      	nop
 8007086:	3718      	adds	r7, #24
 8007088:	46bd      	mov	sp, r7
 800708a:	bd80      	pop	{r7, pc}
 800708c:	20000c78 	.word	0x20000c78
 8007090:	20000c74 	.word	0x20000c74

08007094 <prvInsertBlockIntoFreeList>:
 8007094:	b480      	push	{r7}
 8007096:	b085      	sub	sp, #20
 8007098:	af00      	add	r7, sp, #0
 800709a:	6078      	str	r0, [r7, #4]
 800709c:	4b27      	ldr	r3, [pc, #156]	; (800713c <prvInsertBlockIntoFreeList+0xa8>)
 800709e:	60fb      	str	r3, [r7, #12]
 80070a0:	e002      	b.n	80070a8 <prvInsertBlockIntoFreeList+0x14>
 80070a2:	68fb      	ldr	r3, [r7, #12]
 80070a4:	681b      	ldr	r3, [r3, #0]
 80070a6:	60fb      	str	r3, [r7, #12]
 80070a8:	68fb      	ldr	r3, [r7, #12]
 80070aa:	681b      	ldr	r3, [r3, #0]
 80070ac:	687a      	ldr	r2, [r7, #4]
 80070ae:	429a      	cmp	r2, r3
 80070b0:	d8f7      	bhi.n	80070a2 <prvInsertBlockIntoFreeList+0xe>
 80070b2:	68fb      	ldr	r3, [r7, #12]
 80070b4:	60bb      	str	r3, [r7, #8]
 80070b6:	68fb      	ldr	r3, [r7, #12]
 80070b8:	685b      	ldr	r3, [r3, #4]
 80070ba:	68ba      	ldr	r2, [r7, #8]
 80070bc:	4413      	add	r3, r2
 80070be:	687a      	ldr	r2, [r7, #4]
 80070c0:	429a      	cmp	r2, r3
 80070c2:	d108      	bne.n	80070d6 <prvInsertBlockIntoFreeList+0x42>
 80070c4:	68fb      	ldr	r3, [r7, #12]
 80070c6:	685a      	ldr	r2, [r3, #4]
 80070c8:	687b      	ldr	r3, [r7, #4]
 80070ca:	685b      	ldr	r3, [r3, #4]
 80070cc:	441a      	add	r2, r3
 80070ce:	68fb      	ldr	r3, [r7, #12]
 80070d0:	605a      	str	r2, [r3, #4]
 80070d2:	68fb      	ldr	r3, [r7, #12]
 80070d4:	607b      	str	r3, [r7, #4]
 80070d6:	687b      	ldr	r3, [r7, #4]
 80070d8:	60bb      	str	r3, [r7, #8]
 80070da:	687b      	ldr	r3, [r7, #4]
 80070dc:	685b      	ldr	r3, [r3, #4]
 80070de:	68ba      	ldr	r2, [r7, #8]
 80070e0:	441a      	add	r2, r3
 80070e2:	68fb      	ldr	r3, [r7, #12]
 80070e4:	681b      	ldr	r3, [r3, #0]
 80070e6:	429a      	cmp	r2, r3
 80070e8:	d118      	bne.n	800711c <prvInsertBlockIntoFreeList+0x88>
 80070ea:	68fb      	ldr	r3, [r7, #12]
 80070ec:	681a      	ldr	r2, [r3, #0]
 80070ee:	4b14      	ldr	r3, [pc, #80]	; (8007140 <prvInsertBlockIntoFreeList+0xac>)
 80070f0:	681b      	ldr	r3, [r3, #0]
 80070f2:	429a      	cmp	r2, r3
 80070f4:	d00d      	beq.n	8007112 <prvInsertBlockIntoFreeList+0x7e>
 80070f6:	687b      	ldr	r3, [r7, #4]
 80070f8:	685a      	ldr	r2, [r3, #4]
 80070fa:	68fb      	ldr	r3, [r7, #12]
 80070fc:	681b      	ldr	r3, [r3, #0]
 80070fe:	685b      	ldr	r3, [r3, #4]
 8007100:	441a      	add	r2, r3
 8007102:	687b      	ldr	r3, [r7, #4]
 8007104:	605a      	str	r2, [r3, #4]
 8007106:	68fb      	ldr	r3, [r7, #12]
 8007108:	681b      	ldr	r3, [r3, #0]
 800710a:	681a      	ldr	r2, [r3, #0]
 800710c:	687b      	ldr	r3, [r7, #4]
 800710e:	601a      	str	r2, [r3, #0]
 8007110:	e008      	b.n	8007124 <prvInsertBlockIntoFreeList+0x90>
 8007112:	4b0b      	ldr	r3, [pc, #44]	; (8007140 <prvInsertBlockIntoFreeList+0xac>)
 8007114:	681a      	ldr	r2, [r3, #0]
 8007116:	687b      	ldr	r3, [r7, #4]
 8007118:	601a      	str	r2, [r3, #0]
 800711a:	e003      	b.n	8007124 <prvInsertBlockIntoFreeList+0x90>
 800711c:	68fb      	ldr	r3, [r7, #12]
 800711e:	681a      	ldr	r2, [r3, #0]
 8007120:	687b      	ldr	r3, [r7, #4]
 8007122:	601a      	str	r2, [r3, #0]
 8007124:	68fa      	ldr	r2, [r7, #12]
 8007126:	687b      	ldr	r3, [r7, #4]
 8007128:	429a      	cmp	r2, r3
 800712a:	d002      	beq.n	8007132 <prvInsertBlockIntoFreeList+0x9e>
 800712c:	68fb      	ldr	r3, [r7, #12]
 800712e:	687a      	ldr	r2, [r7, #4]
 8007130:	601a      	str	r2, [r3, #0]
 8007132:	bf00      	nop
 8007134:	3714      	adds	r7, #20
 8007136:	46bd      	mov	sp, r7
 8007138:	bc80      	pop	{r7}
 800713a:	4770      	bx	lr
 800713c:	20000c68 	.word	0x20000c68
 8007140:	20000c70 	.word	0x20000c70

08007144 <__libc_init_array>:
 8007144:	b570      	push	{r4, r5, r6, lr}
 8007146:	2500      	movs	r5, #0
 8007148:	4e0c      	ldr	r6, [pc, #48]	; (800717c <__libc_init_array+0x38>)
 800714a:	4c0d      	ldr	r4, [pc, #52]	; (8007180 <__libc_init_array+0x3c>)
 800714c:	1ba4      	subs	r4, r4, r6
 800714e:	10a4      	asrs	r4, r4, #2
 8007150:	42a5      	cmp	r5, r4
 8007152:	d109      	bne.n	8007168 <__libc_init_array+0x24>
 8007154:	f000 f8e4 	bl	8007320 <_init>
 8007158:	2500      	movs	r5, #0
 800715a:	4e0a      	ldr	r6, [pc, #40]	; (8007184 <__libc_init_array+0x40>)
 800715c:	4c0a      	ldr	r4, [pc, #40]	; (8007188 <__libc_init_array+0x44>)
 800715e:	1ba4      	subs	r4, r4, r6
 8007160:	10a4      	asrs	r4, r4, #2
 8007162:	42a5      	cmp	r5, r4
 8007164:	d105      	bne.n	8007172 <__libc_init_array+0x2e>
 8007166:	bd70      	pop	{r4, r5, r6, pc}
 8007168:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
 800716c:	4798      	blx	r3
 800716e:	3501      	adds	r5, #1
 8007170:	e7ee      	b.n	8007150 <__libc_init_array+0xc>
 8007172:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
 8007176:	4798      	blx	r3
 8007178:	3501      	adds	r5, #1
 800717a:	e7f2      	b.n	8007162 <__libc_init_array+0x1e>
 800717c:	08007a5c 	.word	0x08007a5c
 8007180:	08007a5c 	.word	0x08007a5c
 8007184:	08007a5c 	.word	0x08007a5c
 8007188:	08007a60 	.word	0x08007a60

0800718c <memcpy>:
 800718c:	b510      	push	{r4, lr}
 800718e:	1e43      	subs	r3, r0, #1
 8007190:	440a      	add	r2, r1
 8007192:	4291      	cmp	r1, r2
 8007194:	d100      	bne.n	8007198 <memcpy+0xc>
 8007196:	bd10      	pop	{r4, pc}
 8007198:	f811 4b01 	ldrb.w	r4, [r1], #1
 800719c:	f803 4f01 	strb.w	r4, [r3, #1]!
 80071a0:	e7f7      	b.n	8007192 <memcpy+0x6>

080071a2 <memset>:
 80071a2:	4603      	mov	r3, r0
 80071a4:	4402      	add	r2, r0
 80071a6:	4293      	cmp	r3, r2
 80071a8:	d100      	bne.n	80071ac <memset+0xa>
 80071aa:	4770      	bx	lr
 80071ac:	f803 1b01 	strb.w	r1, [r3], #1
 80071b0:	e7f9      	b.n	80071a6 <memset+0x4>

080071b2 <cleanup_glue>:
 80071b2:	b538      	push	{r3, r4, r5, lr}
 80071b4:	460c      	mov	r4, r1
 80071b6:	6809      	ldr	r1, [r1, #0]
 80071b8:	4605      	mov	r5, r0
 80071ba:	b109      	cbz	r1, 80071c0 <cleanup_glue+0xe>
 80071bc:	f7ff fff9 	bl	80071b2 <cleanup_glue>
 80071c0:	4621      	mov	r1, r4
 80071c2:	4628      	mov	r0, r5
 80071c4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80071c8:	f000 b85e 	b.w	8007288 <_free_r>

080071cc <_reclaim_reent>:
 80071cc:	4b2c      	ldr	r3, [pc, #176]	; (8007280 <_reclaim_reent+0xb4>)
 80071ce:	b570      	push	{r4, r5, r6, lr}
 80071d0:	681b      	ldr	r3, [r3, #0]
 80071d2:	4604      	mov	r4, r0
 80071d4:	4283      	cmp	r3, r0
 80071d6:	d051      	beq.n	800727c <_reclaim_reent+0xb0>
 80071d8:	6a43      	ldr	r3, [r0, #36]	; 0x24
 80071da:	b143      	cbz	r3, 80071ee <_reclaim_reent+0x22>
 80071dc:	68db      	ldr	r3, [r3, #12]
 80071de:	2b00      	cmp	r3, #0
 80071e0:	d14a      	bne.n	8007278 <_reclaim_reent+0xac>
 80071e2:	6a63      	ldr	r3, [r4, #36]	; 0x24
 80071e4:	6819      	ldr	r1, [r3, #0]
 80071e6:	b111      	cbz	r1, 80071ee <_reclaim_reent+0x22>
 80071e8:	4620      	mov	r0, r4
 80071ea:	f000 f84d 	bl	8007288 <_free_r>
 80071ee:	6961      	ldr	r1, [r4, #20]
 80071f0:	b111      	cbz	r1, 80071f8 <_reclaim_reent+0x2c>
 80071f2:	4620      	mov	r0, r4
 80071f4:	f000 f848 	bl	8007288 <_free_r>
 80071f8:	6a61      	ldr	r1, [r4, #36]	; 0x24
 80071fa:	b111      	cbz	r1, 8007202 <_reclaim_reent+0x36>
 80071fc:	4620      	mov	r0, r4
 80071fe:	f000 f843 	bl	8007288 <_free_r>
 8007202:	6ba1      	ldr	r1, [r4, #56]	; 0x38
 8007204:	b111      	cbz	r1, 800720c <_reclaim_reent+0x40>
 8007206:	4620      	mov	r0, r4
 8007208:	f000 f83e 	bl	8007288 <_free_r>
 800720c:	6be1      	ldr	r1, [r4, #60]	; 0x3c
 800720e:	b111      	cbz	r1, 8007216 <_reclaim_reent+0x4a>
 8007210:	4620      	mov	r0, r4
 8007212:	f000 f839 	bl	8007288 <_free_r>
 8007216:	6c21      	ldr	r1, [r4, #64]	; 0x40
 8007218:	b111      	cbz	r1, 8007220 <_reclaim_reent+0x54>
 800721a:	4620      	mov	r0, r4
 800721c:	f000 f834 	bl	8007288 <_free_r>
 8007220:	6de1      	ldr	r1, [r4, #92]	; 0x5c
 8007222:	b111      	cbz	r1, 800722a <_reclaim_reent+0x5e>
 8007224:	4620      	mov	r0, r4
 8007226:	f000 f82f 	bl	8007288 <_free_r>
 800722a:	6da1      	ldr	r1, [r4, #88]	; 0x58
 800722c:	b111      	cbz	r1, 8007234 <_reclaim_reent+0x68>
 800722e:	4620      	mov	r0, r4
 8007230:	f000 f82a 	bl	8007288 <_free_r>
 8007234:	6b61      	ldr	r1, [r4, #52]	; 0x34
 8007236:	b111      	cbz	r1, 800723e <_reclaim_reent+0x72>
 8007238:	4620      	mov	r0, r4
 800723a:	f000 f825 	bl	8007288 <_free_r>
 800723e:	69a3      	ldr	r3, [r4, #24]
 8007240:	b1e3      	cbz	r3, 800727c <_reclaim_reent+0xb0>
 8007242:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 8007244:	4620      	mov	r0, r4
 8007246:	4798      	blx	r3
 8007248:	6ca1      	ldr	r1, [r4, #72]	; 0x48
 800724a:	b1b9      	cbz	r1, 800727c <_reclaim_reent+0xb0>
 800724c:	4620      	mov	r0, r4
 800724e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8007252:	f7ff bfae 	b.w	80071b2 <cleanup_glue>
 8007256:	5949      	ldr	r1, [r1, r5]
 8007258:	b941      	cbnz	r1, 800726c <_reclaim_reent+0xa0>
 800725a:	3504      	adds	r5, #4
 800725c:	6a63      	ldr	r3, [r4, #36]	; 0x24
 800725e:	2d80      	cmp	r5, #128	; 0x80
 8007260:	68d9      	ldr	r1, [r3, #12]
 8007262:	d1f8      	bne.n	8007256 <_reclaim_reent+0x8a>
 8007264:	4620      	mov	r0, r4
 8007266:	f000 f80f 	bl	8007288 <_free_r>
 800726a:	e7ba      	b.n	80071e2 <_reclaim_reent+0x16>
 800726c:	680e      	ldr	r6, [r1, #0]
 800726e:	4620      	mov	r0, r4
 8007270:	f000 f80a 	bl	8007288 <_free_r>
 8007274:	4631      	mov	r1, r6
 8007276:	e7ef      	b.n	8007258 <_reclaim_reent+0x8c>
 8007278:	2500      	movs	r5, #0
 800727a:	e7ef      	b.n	800725c <_reclaim_reent+0x90>
 800727c:	bd70      	pop	{r4, r5, r6, pc}
 800727e:	bf00      	nop
 8007280:	20000014 	.word	0x20000014

08007284 <__malloc_lock>:
 8007284:	4770      	bx	lr

08007286 <__malloc_unlock>:
 8007286:	4770      	bx	lr

08007288 <_free_r>:
 8007288:	b538      	push	{r3, r4, r5, lr}
 800728a:	4605      	mov	r5, r0
 800728c:	2900      	cmp	r1, #0
 800728e:	d043      	beq.n	8007318 <_free_r+0x90>
 8007290:	f851 3c04 	ldr.w	r3, [r1, #-4]
 8007294:	1f0c      	subs	r4, r1, #4
 8007296:	2b00      	cmp	r3, #0
 8007298:	bfb8      	it	lt
 800729a:	18e4      	addlt	r4, r4, r3
 800729c:	f7ff fff2 	bl	8007284 <__malloc_lock>
 80072a0:	4a1e      	ldr	r2, [pc, #120]	; (800731c <_free_r+0x94>)
 80072a2:	6813      	ldr	r3, [r2, #0]
 80072a4:	4610      	mov	r0, r2
 80072a6:	b933      	cbnz	r3, 80072b6 <_free_r+0x2e>
 80072a8:	6063      	str	r3, [r4, #4]
 80072aa:	6014      	str	r4, [r2, #0]
 80072ac:	4628      	mov	r0, r5
 80072ae:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80072b2:	f7ff bfe8 	b.w	8007286 <__malloc_unlock>
 80072b6:	42a3      	cmp	r3, r4
 80072b8:	d90b      	bls.n	80072d2 <_free_r+0x4a>
 80072ba:	6821      	ldr	r1, [r4, #0]
 80072bc:	1862      	adds	r2, r4, r1
 80072be:	4293      	cmp	r3, r2
 80072c0:	bf01      	itttt	eq
 80072c2:	681a      	ldreq	r2, [r3, #0]
 80072c4:	685b      	ldreq	r3, [r3, #4]
 80072c6:	1852      	addeq	r2, r2, r1
 80072c8:	6022      	streq	r2, [r4, #0]
 80072ca:	6063      	str	r3, [r4, #4]
 80072cc:	6004      	str	r4, [r0, #0]
 80072ce:	e7ed      	b.n	80072ac <_free_r+0x24>
 80072d0:	4613      	mov	r3, r2
 80072d2:	685a      	ldr	r2, [r3, #4]
 80072d4:	b10a      	cbz	r2, 80072da <_free_r+0x52>
 80072d6:	42a2      	cmp	r2, r4
 80072d8:	d9fa      	bls.n	80072d0 <_free_r+0x48>
 80072da:	6819      	ldr	r1, [r3, #0]
 80072dc:	1858      	adds	r0, r3, r1
 80072de:	42a0      	cmp	r0, r4
 80072e0:	d10b      	bne.n	80072fa <_free_r+0x72>
 80072e2:	6820      	ldr	r0, [r4, #0]
 80072e4:	4401      	add	r1, r0
 80072e6:	1858      	adds	r0, r3, r1
 80072e8:	4282      	cmp	r2, r0
 80072ea:	6019      	str	r1, [r3, #0]
 80072ec:	d1de      	bne.n	80072ac <_free_r+0x24>
 80072ee:	6810      	ldr	r0, [r2, #0]
 80072f0:	6852      	ldr	r2, [r2, #4]
 80072f2:	4401      	add	r1, r0
 80072f4:	6019      	str	r1, [r3, #0]
 80072f6:	605a      	str	r2, [r3, #4]
 80072f8:	e7d8      	b.n	80072ac <_free_r+0x24>
 80072fa:	d902      	bls.n	8007302 <_free_r+0x7a>
 80072fc:	230c      	movs	r3, #12
 80072fe:	602b      	str	r3, [r5, #0]
 8007300:	e7d4      	b.n	80072ac <_free_r+0x24>
 8007302:	6820      	ldr	r0, [r4, #0]
 8007304:	1821      	adds	r1, r4, r0
 8007306:	428a      	cmp	r2, r1
 8007308:	bf01      	itttt	eq
 800730a:	6811      	ldreq	r1, [r2, #0]
 800730c:	6852      	ldreq	r2, [r2, #4]
 800730e:	1809      	addeq	r1, r1, r0
 8007310:	6021      	streq	r1, [r4, #0]
 8007312:	6062      	str	r2, [r4, #4]
 8007314:	605c      	str	r4, [r3, #4]
 8007316:	e7c9      	b.n	80072ac <_free_r+0x24>
 8007318:	bd38      	pop	{r3, r4, r5, pc}
 800731a:	bf00      	nop
 800731c:	20000c7c 	.word	0x20000c7c

08007320 <_init>:
 8007320:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007322:	bf00      	nop
 8007324:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007326:	bc08      	pop	{r3}
 8007328:	469e      	mov	lr, r3
 800732a:	4770      	bx	lr

0800732c <_fini>:
 800732c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800732e:	bf00      	nop
 8007330:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007332:	bc08      	pop	{r3}
 8007334:	469e      	mov	lr, r3
 8007336:	4770      	bx	lr
