; z80dasm 1.1.4
; command line: z80dasm -t -v -o z80withctc-code.asm z80withCTC

	org	00100h

	di			;0100	f3 	. 
	ld sp,08100h		;0101	31 00 81 	1 . . 
	xor a			;0104	af 	. 
	out (083h),a		;0105	d3 83 	. . 
	out (08fh),a		;0107	d3 8f 	. . 
	out (089h),a		;0109	d3 89 	. . 
	out (09ah),a		;010b	d3 9a 	. . 
	out (09bh),a		;010d	d3 9b 	. . 
	out (09ch),a		;010f	d3 9c 	. . 
	ld a,0d1h		;0111	3e d1 	> . 
	out (081h),a		;0113	d3 81 	. . 
	ld b,00ah		;0115	06 0a 	. . 
	call 00545h		;0117	cd 45 05 	. E . 
	ld a,003h		;011a	3e 03 	> . 
	out (09fh),a		;011c	d3 9f 	. . 
	ld b,004h		;011e	06 04 	. . 
	call 00545h		;0120	cd 45 05 	. E . 
	xor a			;0123	af 	. 
	out (09fh),a		;0124	d3 9f 	. . 
	ld a,00dh		;0126	3e 0d 	> . 
	ld (0a476h),a		;0128	32 76 a4 	2 v . 
	jr $+59		;012b	18 39 	. 9 
	jr nc,$+59		;012d	30 39 	0 9 
	ld sp,03930h		;012f	31 30 39 	1 0 9 
	ld sp,00000h		;0132	31 00 00 	1 . . 
	nop			;0135	00 	. 
	nop			;0136	00 	. 
	nop			;0137	00 	. 
	jr $+46		;0138	18 2c 	. , 
	jr z,$+69		;013a	28 43 	( C 
	add hl,hl			;013c	29 	) 
	jr c,$+56		;013d	38 36 	8 6 
	cpl			;013f	2f 	/ 
	add hl,sp			;0140	39 	9 
	ld sp,0432dh		;0141	31 2d 43 	1 - C 
	ld b,c			;0144	41 	A 
	ld d,d			;0145	52 	R 
	ld c,h			;0146	4c 	L 
	jr nz,$+92		;0147	20 5a 	  Z 
	ld b,l			;0149	45 	E 
	ld c,c			;014a	49 	I 
	ld d,e			;014b	53 	S 
	ld d,e			;014c	53 	S 
	jr nz,$+89		;014d	20 57 	  W 
	ld l,047h		;014f	2e 47 	. G 
	ld b,l			;0151	45 	E 
	ld d,d			;0152	52 	R 
	ld c,l			;0153	4d 	M 
	ld b,c			;0154	41 	A 
	ld c,(hl)			;0155	4e 	N 
	ld e,c			;0156	59 	Y 
	nop			;0157	00 	. 
	nop			;0158	00 	. 
	nop			;0159	00 	. 
	nop			;015a	00 	. 
	nop			;015b	00 	. 
	nop			;015c	00 	. 
	nop			;015d	00 	. 
	nop			;015e	00 	. 
	nop			;015f	00 	. 
	nop			;0160	00 	. 
	nop			;0161	00 	. 
	nop			;0162	00 	. 
	nop			;0163	00 	. 
	nop			;0164	00 	. 
	nop			;0165	00 	. 
	ld sp,08100h		;0166	31 00 81 	1 . . 
	call 00415h		;0169	cd 15 04 	. . . 
	call 008dch		;016c	cd dc 08 	. . . 
	in a,(0f0h)		;016f	db f0 	. . 
	and 040h		;0171	e6 40 	. @ 
	jp nz,0007ch		;0173	c2 7c 00 	. | . 
	ld (0e41dh),a		;0176	32 1d e4 	2 . . 
	jp 00081h		;0179	c3 81 00 	. . . 
	ld a,001h		;017c	3e 01 	> . 
	ld (0e41dh),a		;017e	32 1d e4 	2 . . 
	ld a,000h		;0181	3e 00 	> . 
	ld (0e441h),a		;0183	32 41 e4 	2 A . 
	call 0045ch		;0186	cd 5c 04 	. \ . 
	call 008d7h		;0189	cd d7 08 	. . . 
	call 007f8h		;018c	cd f8 07 	. . . 
	call 001bbh		;018f	cd bb 01 	. . . 
	call 038b4h		;0192	cd b4 38 	. . 8 
	ld a,(0a015h)		;0195	3a 15 a0 	: . . 
	ld (08121h),a		;0198	32 21 81 	2 ! . 
	ld (0e416h),a		;019b	32 16 e4 	2 . . 
	ld a,001h		;019e	3e 01 	> . 
	ld (0e40dh),a		;01a0	32 0d e4 	2 . . 
	ld a,000h		;01a3	3e 00 	> . 
	ld (08233h),a		;01a5	32 33 82 	2 3 . 
	ld a,(0814ah)		;01a8	3a 4a 81 	: J . 
	cp 013h		;01ab	fe 13 	. . 
	call z,03845h		;01ad	cc 45 38 	. E 8 
	ld a,(0822eh)		;01b0	3a 2e 82 	: . . 
	or a			;01b3	b7 	. 
	jr z,$+11		;01b4	28 09 	( . 
	ld hl,07203h		;01b6	21 03 72 	! . r 
	ld de,0e580h		;01b9	11 80 e5 	. . . 
	call 0717ah		;01bc	cd 7a 71 	. z q 
	ld a,(08358h)		;01bf	3a 58 83 	: X . 
	or a			;01c2	b7 	. 
	jr z,$+19		;01c3	28 11 	( . 
	ld hl,07070h		;01c5	21 70 70 	! p p 
	call 07249h		;01c8	cd 49 72 	. I r 
	ld hl,045e4h		;01cb	21 e4 45 	! . E 
	ld de,0e680h		;01ce	11 80 e6 	. . . 
	ld bc,00007h		;01d1	01 07 00 	. . . 
	ldir		;01d4	ed b0 	. . 
	call 000deh		;01d6	cd de 00 	. . . 
	call 005beh		;01d9	cd be 05 	. . . 
	jr $-29		;01dc	18 e1 	. . 
	call 006e6h		;01de	cd e6 06 	. . . 
	ld a,(0e412h)		;01e1	3a 12 e4 	: . . 
	or a			;01e4	b7 	. 
	jr nz,$+11		;01e5	20 09 	  . 
	call 02b83h		;01e7	cd 83 2b 	. . + 
	call 0051dh		;01ea	cd 1d 05 	. . . 
	call 0526bh		;01ed	cd 6b 52 	. k R 
	call 003a4h		;01f0	cd a4 03 	. . . 
	ld a,(08239h)		;01f3	3a 39 82 	: 9 . 
	or a			;01f6	b7 	. 
	jr nz,$+13		;01f7	20 0b 	  . 
	ld a,(0823ah)		;01f9	3a 3a 82 	: : . 
	or a			;01fc	b7 	. 
	jr z,$+11		;01fd	28 09 	( . 
	ld a,04fh		;01ff	3e 4f 	> O 
	call 048f2h		;0201	cd f2 48 	. . H 
	xor a			;0204	af 	. 
	ld (0823ah),a		;0205	32 3a 82 	2 : . 
	ld a,(0810fh)		;0208	3a 0f 81 	: . . 
	or a			;020b	b7 	. 
	jp nz,0013eh		;020c	c2 3e 01 	. > . 
	ld a,(0e40dh)		;020f	3a 0d e4 	: . . 
	cp 004h		;0212	fe 04 	. . 
	jr nz,$+42		;0214	20 28 	  ( 
	ld a,(08242h)		;0216	3a 42 82 	: B . 
	or a			;0219	b7 	. 
	jr nz,$+51		;021a	20 31 	  1 
	ld a,058h		;021c	3e 58 	> X 
	call 048f2h		;021e	cd f2 48 	. . H 
	call 01e0dh		;0221	cd 0d 1e 	. . . 
	ld a,(08109h)		;0224	3a 09 81 	: . . 
	cp 001h		;0227	fe 01 	. . 
	jr nz,$+8		;0229	20 06 	  . 
	call 02cdbh		;022b	cd db 2c 	. . , 
	ld (08101h),a		;022e	32 01 81 	2 . . 
	ld a,001h		;0231	3e 01 	> . 
	ld (08242h),a		;0233	32 42 82 	2 B . 
	ld (0823fh),a		;0236	32 3f 82 	2 ? . 
	call 02e18h		;0239	cd 18 2e 	. . . 
	jr $+17		;023c	18 0f 	. . 
	ld a,(08242h)		;023e	3a 42 82 	: B . 
	or a			;0241	b7 	. 
	jr z,$+11		;0242	28 09 	( . 
	ld a,059h		;0244	3e 59 	> Y 
	call 048f2h		;0246	cd f2 48 	. . H 
	xor a			;0249	af 	. 
	ld (08242h),a		;024a	32 42 82 	2 B . 
	call 05616h		;024d	cd 16 56 	. . V 
	call 01bc5h		;0250	cd c5 1b 	. . . 
	call 01f36h		;0253	cd 36 1f 	. 6 . 
	call 01075h		;0256	cd 75 10 	. u . 
	call 00f22h		;0259	cd 22 0f 	. " . 
	call 043c2h		;025c	cd c2 43 	. . C 
	call 00cddh		;025f	cd dd 0c 	. . . 
	call 00d61h		;0262	cd 61 0d 	. a . 
	call 01f37h		;0265	cd 37 1f 	. 7 . 
	call 015efh		;0268	cd ef 15 	. . . 
	call 01251h		;026b	cd 51 12 	. Q . 
	call 01416h		;026e	cd 16 14 	. . . 
	call 0171fh		;0271	cd 1f 17 	. . . 
	call 0182ah		;0274	cd 2a 18 	. * . 
	call 01882h		;0277	cd 82 18 	. . . 
	call 04cfbh		;027a	cd fb 4c 	. . L 
	call 01abah		;027d	cd ba 1a 	. . . 
	call 01987h		;0280	cd 87 19 	. . . 
	call 049abh		;0283	cd ab 49 	. . I 
	call 04a40h		;0286	cd 40 4a 	. @ J 
	call 04b1ah		;0289	cd 1a 4b 	. . K 
	call 04ef4h		;028c	cd f4 4e 	. . N 
	call 04cfah		;028f	cd fa 4c 	. . L 
	call 02634h		;0292	cd 34 26 	. 4 & 
	call 02673h		;0295	cd 73 26 	. s & 
	call 00603h		;0298	cd 03 06 	. . . 
	call 04b68h		;029b	cd 68 4b 	. h K 
	call 04bdfh		;029e	cd df 4b 	. . K 
	call 01a2dh		;02a1	cd 2d 1a 	. - . 
	call 019a4h		;02a4	cd a4 19 	. . . 
	call 005d3h		;02a7	cd d3 05 	. . . 
	call 02026h		;02aa	cd 26 20 	. &   
	call 05362h		;02ad	cd 62 53 	. b S 
	call 001bbh		;02b0	cd bb 01 	. . . 
	push bc			;02b3	c5 	. 
	ld b,001h		;02b4	06 01 	. . 
	call 00552h		;02b6	cd 52 05 	. R . 
	pop bc			;02b9	c1 	. 
	ret			;02ba	c9 	. 
	in a,(0f0h)		;02bb	db f0 	. . 
	and 040h		;02bd	e6 40 	. @ 
	jp nz,001c8h		;02bf	c2 c8 01 	. . . 
	ld (0e41dh),a		;02c2	32 1d e4 	2 . . 
	jp 001cdh		;02c5	c3 cd 01 	. . . 
	ld a,001h		;02c8	3e 01 	> . 
	ld (0e41dh),a		;02ca	32 1d e4 	2 . . 
	ld a,000h		;02cd	3e 00 	> . 
	ld (0e441h),a		;02cf	32 41 e4 	2 A . 
	ld a,080h		;02d2	3e 80 	> . 
	ld (0a800h),a		;02d4	32 00 a8 	2 . . 
	ld a,000h		;02d7	3e 00 	> . 
	ld (0a800h),a		;02d9	32 00 a8 	2 . . 
	ld a,080h		;02dc	3e 80 	> . 
	ld (0a800h),a		;02de	32 00 a8 	2 . . 
	ld a,0d5h		;02e1	3e d5 	> . 
	ld (0a800h),a		;02e3	32 00 a8 	2 . . 
	ld a,(0a800h)		;02e6	3a 00 a8 	: . . 
	cp 053h		;02e9	fe 53 	. S 
	jr nz,$+10		;02eb	20 08 	  . 
	ld a,000h		;02ed	3e 00 	> . 
	ld (0e41ah),a		;02ef	32 1a e4 	2 . . 
	jp 001fah		;02f2	c3 fa 01 	. . . 
	ld a,001h		;02f5	3e 01 	> . 
	ld (0e41ah),a		;02f7	32 1a e4 	2 . . 
	ld a,0cbh		;02fa	3e cb 	> . 
	ld (0a800h),a		;02fc	32 00 a8 	2 . . 
	ld a,(0a800h)		;02ff	3a 00 a8 	: . . 
	cp 0e4h		;0302	fe e4 	. . 
	jr nz,$+10		;0304	20 08 	  . 
	ld a,000h		;0306	3e 00 	> . 
	ld (0e41bh),a		;0308	32 1b e4 	2 . . 
	jp 00213h		;030b	c3 13 02 	. . . 
	ld a,001h		;030e	3e 01 	> . 
	ld (0e41bh),a		;0310	32 1b e4 	2 . . 
	ld a,0c1h		;0313	3e c1 	> . 
	ld (0a800h),a		;0315	32 00 a8 	2 . . 
	ld a,(0a800h)		;0318	3a 00 a8 	: . . 
	cp 049h		;031b	fe 49 	. I 
	jr nz,$+10		;031d	20 08 	  . 
	ld a,000h		;031f	3e 00 	> . 
	ld (0e41ch),a		;0321	32 1c e4 	2 . . 
	jp 0022ch		;0324	c3 2c 02 	. , . 
	ld a,001h		;0327	3e 01 	> . 
	ld (0e41ch),a		;0329	32 1c e4 	2 . . 
	ld a,0b7h		;032c	3e b7 	> . 
	ld (0a800h),a		;032e	32 00 a8 	2 . . 
	ld a,(0a800h)		;0331	3a 00 a8 	: . . 
	cp 0dfh		;0334	fe df 	. . 
	jr nz,$+10		;0336	20 08 	  . 
	ld a,000h		;0338	3e 00 	> . 
	ld (0e41eh),a		;033a	32 1e e4 	2 . . 
	jp 00245h		;033d	c3 45 02 	. E . 
	ld a,001h		;0340	3e 01 	> . 
	ld (0e41eh),a		;0342	32 1e e4 	2 . . 
	ld a,0adh		;0345	3e ad 	> . 
	ld (0a800h),a		;0347	32 00 a8 	2 . . 
	ld a,(0a800h)		;034a	3a 00 a8 	: . . 
	cp 09ch		;034d	fe 9c 	. . 
	jr nz,$+10		;034f	20 08 	  . 
	ld a,000h		;0351	3e 00 	> . 
	ld (0e41fh),a		;0353	32 1f e4 	2 . . 
	jp 0025eh		;0356	c3 5e 02 	. ^ . 
	ld a,001h		;0359	3e 01 	> . 
	ld (0e41fh),a		;035b	32 1f e4 	2 . . 
	ld a,0a3h		;035e	3e a3 	> . 
	ld (0a800h),a		;0360	32 00 a8 	2 . . 
	ld a,(0a800h)		;0363	3a 00 a8 	: . . 
	cp 014h		;0366	fe 14 	. . 
	jr nz,$+10		;0368	20 08 	  . 
	ld a,000h		;036a	3e 00 	> . 
	ld (0e440h),a		;036c	32 40 e4 	2 @ . 
	jp 00277h		;036f	c3 77 02 	. w . 
	ld a,001h		;0372	3e 01 	> . 
	ld (0e440h),a		;0374	32 40 e4 	2 @ . 
	ld a,099h		;0377	3e 99 	> . 
	ld (0a800h),a		;0379	32 00 a8 	2 . . 
	ld a,(0a800h)		;037c	3a 00 a8 	: . . 
	cp 0a5h		;037f	fe a5 	. . 
	jr nz,$+10		;0381	20 08 	  . 
	ld a,000h		;0383	3e 00 	> . 
	ld (0e442h),a		;0385	32 42 e4 	2 B . 
	jp 00290h		;0388	c3 90 02 	. . . 
	ld a,001h		;038b	3e 01 	> . 
	ld (0e442h),a		;038d	32 42 e4 	2 B . 
	ld a,08fh		;0390	3e 8f 	> . 
	ld (0a800h),a		;0392	32 00 a8 	2 . . 
	ld a,(0a800h)		;0395	3a 00 a8 	: . . 
	cp 0cfh		;0398	fe cf 	. . 
	jr nz,$+10		;039a	20 08 	  . 
	ld a,000h		;039c	3e 00 	> . 
	ld (0e443h),a		;039e	32 43 e4 	2 C . 
	jp 002a9h		;03a1	c3 a9 02 	. . . 
	ld a,001h		;03a4	3e 01 	> . 
	ld (0e443h),a		;03a6	32 43 e4 	2 C . 
	ld a,085h		;03a9	3e 85 	> . 
	ld (0a800h),a		;03ab	32 00 a8 	2 . . 
	ld a,(0a800h)		;03ae	3a 00 a8 	: . . 
	cp 0b1h		;03b1	fe b1 	. . 
	jr nz,$+10		;03b3	20 08 	  . 
	ld a,000h		;03b5	3e 00 	> . 
	ld (0e444h),a		;03b7	32 44 e4 	2 D . 
	jp 002c2h		;03ba	c3 c2 02 	. . . 
	ld a,001h		;03bd	3e 01 	> . 
	ld (0e444h),a		;03bf	32 44 e4 	2 D . 
	ld a,0f8h		;03c2	3e f8 	> . 
	ld (0a800h),a		;03c4	32 00 a8 	2 . . 
	ld a,(0a800h)		;03c7	3a 00 a8 	: . . 
	cp 025h		;03ca	fe 25 	. % 
	jr nz,$+10		;03cc	20 08 	  . 
	ld a,000h		;03ce	3e 00 	> . 
	ld (0e445h),a		;03d0	32 45 e4 	2 E . 
	jp 002dbh		;03d3	c3 db 02 	. . . 
	ld a,001h		;03d6	3e 01 	> . 
	ld (0e445h),a		;03d8	32 45 e4 	2 E . 
	ld a,0eeh		;03db	3e ee 	> . 
	ld (0a800h),a		;03dd	32 00 a8 	2 . . 
	ld a,(0a800h)		;03e0	3a 00 a8 	: . . 
	cp 092h		;03e3	fe 92 	. . 
	jr nz,$+10		;03e5	20 08 	  . 
	ld a,000h		;03e7	3e 00 	> . 
	ld (0e446h),a		;03e9	32 46 e4 	2 F . 
	jp 002f4h		;03ec	c3 f4 02 	. . . 
	ld a,001h		;03ef	3e 01 	> . 
	ld (0e446h),a		;03f1	32 46 e4 	2 F . 
	ld a,0e4h		;03f4	3e e4 	> . 
	ld (0a800h),a		;03f6	32 00 a8 	2 . . 
	ld a,(0a800h)		;03f9	3a 00 a8 	: . . 
	cp 05eh		;03fc	fe 5e 	. ^ 
	jr nz,$+10		;03fe	20 08 	  . 
	ld a,000h		;0400	3e 00 	> . 
	ld (0e447h),a		;0402	32 47 e4 	2 G . 
	jp 0030dh		;0405	c3 0d 03 	. . . 
	ld a,001h		;0408	3e 01 	> . 
	ld (0e447h),a		;040a	32 47 e4 	2 G . 
	ld a,0dah		;040d	3e da 	> . 
	ld (0a800h),a		;040f	32 00 a8 	2 . . 
	ld a,(0a800h)		;0412	3a 00 a8 	: . . 
	cp 07bh		;0415	fe 7b 	. { 
	jr nz,$+10		;0417	20 08 	  . 
	ld a,000h		;0419	3e 00 	> . 
	ld (0e448h),a		;041b	32 48 e4 	2 H . 
	jp 00326h		;041e	c3 26 03 	. & . 
	ld a,001h		;0421	3e 01 	> . 
	ld (0e448h),a		;0423	32 48 e4 	2 H . 
	ld a,0d0h		;0426	3e d0 	> . 
	ld (0a800h),a		;0428	32 00 a8 	2 . . 
	ld a,(0a800h)		;042b	3a 00 a8 	: . . 
	cp 01ch		;042e	fe 1c 	. . 
	jr nz,$+10		;0430	20 08 	  . 
	ld a,000h		;0432	3e 00 	> . 
	ld (0e449h),a		;0434	32 49 e4 	2 I . 
	jp 0033fh		;0437	c3 3f 03 	. ? . 
	ld a,001h		;043a	3e 01 	> . 
	ld (0e449h),a		;043c	32 49 e4 	2 I . 
	ld a,0c6h		;043f	3e c6 	> . 
	ld (0a800h),a		;0441	32 00 a8 	2 . . 
	ld a,(0a800h)		;0444	3a 00 a8 	: . . 
	cp 08dh		;0447	fe 8d 	. . 
	jr nz,$+10		;0449	20 08 	  . 
	ld a,000h		;044b	3e 00 	> . 
	ld (0e44ah),a		;044d	32 4a e4 	2 J . 
	jp 00358h		;0450	c3 58 03 	. X . 
	ld a,001h		;0453	3e 01 	> . 
	ld (0e44ah),a		;0455	32 4a e4 	2 J . 
	ld a,0bch		;0458	3e bc 	> . 
	ld (0a800h),a		;045a	32 00 a8 	2 . . 
	ld a,(0a800h)		;045d	3a 00 a8 	: . . 
	cp 06bh		;0460	fe 6b 	. k 
	jr nz,$+10		;0462	20 08 	  . 
	ld a,000h		;0464	3e 00 	> . 
	ld (0e44bh),a		;0466	32 4b e4 	2 K . 
	jp 00371h		;0469	c3 71 03 	. q . 
	ld a,001h		;046c	3e 01 	> . 
	ld (0e44bh),a		;046e	32 4b e4 	2 K . 
	ld a,0b2h		;0471	3e b2 	> . 
	ld (0a800h),a		;0473	32 00 a8 	2 . . 
	ld a,(0a800h)		;0476	3a 00 a8 	: . . 
	cp 038h		;0479	fe 38 	. 8 
	jr nz,$+10		;047b	20 08 	  . 
	ld a,000h		;047d	3e 00 	> . 
	ld (0e44ch),a		;047f	32 4c e4 	2 L . 
	jp 0038ah		;0482	c3 8a 03 	. . . 
	ld a,001h		;0485	3e 01 	> . 
	ld (0e44ch),a		;0487	32 4c e4 	2 L . 
	ld a,0a8h		;048a	3e a8 	> . 
	ld (0a800h),a		;048c	32 00 a8 	2 . . 
	ld a,(0a800h)		;048f	3a 00 a8 	: . . 
	cp 0c0h		;0492	fe c0 	. . 
	jr nz,$+10		;0494	20 08 	  . 
	ld a,000h		;0496	3e 00 	> . 
	ld (0e44dh),a		;0498	32 4d e4 	2 M . 
	jp 003a3h		;049b	c3 a3 03 	. . . 
	ld a,001h		;049e	3e 01 	> . 
	ld (0e44dh),a		;04a0	32 4d e4 	2 M . 
	ret			;04a3	c9 	. 
	push bc			;04a4	c5 	. 
	ld a,(08234h)		;04a5	3a 34 82 	: 4 . 
	or a			;04a8	b7 	. 
	jr nz,$+10		;04a9	20 08 	  . 
	ld a,(08236h)		;04ab	3a 36 82 	: 6 . 
	or a			;04ae	b7 	. 
	jr z,$+100		;04af	28 62 	( b 
	jr $+76		;04b1	18 4a 	. J 
	ld a,(08236h)		;04b3	3a 36 82 	: 6 . 
	or a			;04b6	b7 	. 
	ld a,001h		;04b7	3e 01 	> . 
	jr z,$+5		;04b9	28 03 	( . 
	ld a,(081eeh)		;04bb	3a ee 81 	: . . 
	ld b,a			;04be	47 	G 
	in a,(056h)		;04bf	db 56 	. V 
	and 0fch		;04c1	e6 fc 	. . 
	jr nz,$+7		;04c3	20 05 	  . 
	call 00640h		;04c5	cd 40 06 	. @ . 
	jr $+6		;04c8	18 04 	. . 
	xor a			;04ca	af 	. 
	ld (0823eh),a		;04cb	32 3e 82 	2 > . 
	in a,(057h)		;04ce	db 57 	. W 
	cp b			;04d0	b8 	. 
	jr nz,$+66		;04d1	20 40 	  @ 
	ld a,(0813ch)		;04d3	3a 3c 81 	: < . 
	or a			;04d6	b7 	. 
	jr z,$+25		;04d7	28 17 	( . 
	ld a,0ffh		;04d9	3e ff 	> . 
	ld (081eeh),a		;04db	32 ee 81 	2 . . 
	ld a,082h		;04de	3e 82 	> . 
	out (081h),a		;04e0	d3 81 	. . 
	ld a,(0818ah)		;04e2	3a 8a 81 	: . . 
	res 0,a		;04e5	cb 87 	. . 
	res 1,a		;04e7	cb 8f 	. . 
	ld (0818ah),a		;04e9	32 8a 81 	2 . . 
	out (080h),a		;04ec	d3 80 	. . 
	jr $+5		;04ee	18 03 	. . 
	call 00610h		;04f0	cd 10 06 	. . . 
	xor a			;04f3	af 	. 
	ld (08234h),a		;04f4	32 34 82 	2 4 . 
	ld a,(08236h)		;04f7	3a 36 82 	: 6 . 
	or a			;04fa	b7 	. 
	jr z,$+24		;04fb	28 16 	( . 
	in a,(056h)		;04fd	db 56 	. V 
	and 0fch		;04ff	e6 fc 	. . 
	jr nz,$+7		;0501	20 05 	  . 
	call 00640h		;0503	cd 40 06 	. @ . 
	jr $+6		;0506	18 04 	. . 
	xor a			;0508	af 	. 
	ld (0823eh),a		;0509	32 3e 82 	2 > . 
	in a,(057h)		;050c	db 57 	. W 
	cp 001h		;050e	fe 01 	. . 
	call z,00611h		;0510	cc 11 06 	. . . 
	pop bc			;0513	c1 	. 
	ret			;0514	c9 	. 
	im 2		;0515	ed 5e 	. ^ 
	di			;0517	f3 	. 
	ld hl,00763h		;0518	21 63 07 	! c . 
	call 0043fh		;051b	cd 3f 04 	. ? . 
	ld b,004h		;051e	06 04 	. . 
	call 00545h		;0520	cd 45 05 	. E . 
	xor a			;0523	af 	. 
	call 048f2h		;0524	cd f2 48 	. . H 
	call 0423dh		;0527	cd 3d 42 	. = B 
	ld a,0aah		;052a	3e aa 	> . 
	call 00697h		;052c	cd 97 06 	. . . 
	cp 0aah		;052f	fe aa 	. . 
	jp nz,006d0h		;0531	c2 d0 06 	. . . 
	xor a			;0534	af 	. 
	call 0495ah		;0535	cd 5a 49 	. Z I 
	jp 0043bh		;0538	c3 3b 04 	. ; . 
	call 040c4h		;053b	cd c4 40 	. . @ 
	ret			;053e	c9 	. 
	push bc			;053f	c5 	. 
	ld a,080h		;0540	3e 80 	> . 
	ld b,(hl)			;0542	46 	F 
	inc hl			;0543	23 	# 
	ld c,(hl)			;0544	4e 	N 
	inc hl			;0545	23 	# 
	otir		;0546	ed b3 	. . 
	cp (hl)			;0548	be 	. 
	jr nz,$-7		;0549	20 f7 	  . 
	pop bc			;054b	c1 	. 
	ret			;054c	c9 	. 
	in a,(0e2h)		;054d	db e2 	. . 
	and 020h		;054f	e6 20 	.   
	ld (08298h),a		;0551	32 98 82 	2 . . 
	in a,(0e3h)		;0554	db e3 	. . 
	and 020h		;0556	e6 20 	.   
	ld (08299h),a		;0558	32 99 82 	2 . . 
	ret			;055b	c9 	. 
	ld bc,002ffh		;055c	01 ff 02 	. . . 
	ld hl,083feh		;055f	21 fe 83 	! . . 
	call 00514h		;0562	cd 14 05 	. . . 
	ld bc,00400h		;0565	01 00 04 	. . . 
	ld hl,08bffh		;0568	21 ff 8b 	! . . 
	call 00514h		;056b	cd 14 05 	. . . 
	ld a,0ffh		;056e	3e ff 	> . 
	ld (0e40eh),a		;0570	32 0e e4 	2 . . 
	ld a,000h		;0573	3e 00 	> . 
	ld (0e412h),a		;0575	32 12 e4 	2 . . 
	ld a,001h		;0578	3e 01 	> . 
	ld (08233h),a		;057a	32 33 82 	2 3 . 
	call 0044dh		;057d	cd 4d 04 	. M . 
	call 03eb6h		;0580	cd b6 3e 	. . > 
	xor a			;0583	af 	. 
	out (089h),a		;0584	d3 89 	. . 
	out (08ch),a		;0586	d3 8c 	. . 
	out (08dh),a		;0588	d3 8d 	. . 
	out (08eh),a		;058a	d3 8e 	. . 
	out (098h),a		;058c	d3 98 	. . 
	out (09fh),a		;058e	d3 9f 	. . 
	inc a			;0590	3c 	< 
	ld (08142h),a		;0591	32 42 81 	2 B . 
	ld (08101h),a		;0594	32 01 81 	2 . . 
	ld (08131h),a		;0597	32 31 81 	2 1 . 
	ld (0810fh),a		;059a	32 0f 81 	2 . . 
	ld (08102h),a		;059d	32 02 81 	2 . . 
	ld (08117h),a		;05a0	32 17 81 	2 . . 
	ld a,006h		;05a3	3e 06 	> . 
	ld (081c6h),a		;05a5	32 c6 81 	2 . . 
	out (0a0h),a		;05a8	d3 a0 	. . 
	ld b,00ch		;05aa	06 0c 	. . 
	call 00545h		;05ac	cd 45 05 	. E . 
	call 0051dh		;05af	cd 1d 05 	. . . 
	call 02026h		;05b2	cd 26 20 	. &   
	xor a			;05b5	af 	. 
	set 5,a		;05b6	cb ef 	. . 
	set 6,a		;05b8	cb f7 	. . 
	ld (08152h),a		;05ba	32 52 81 	2 R . 
	out (083h),a		;05bd	d3 83 	. . 
	set 7,a		;05bf	cb ff 	. . 
	res 5,a		;05c1	cb af 	. . 
	out (083h),a		;05c3	d3 83 	. . 
	ld a,000h		;05c5	3e 00 	> . 
	ld (0822fh),a		;05c7	32 2f 82 	2 / . 
	ld a,0e0h		;05ca	3e e0 	> . 
	out (083h),a		;05cc	d3 83 	. . 
	ld (08291h),a		;05ce	32 91 82 	2 . . 
	ld a,050h		;05d1	3e 50 	> P 
	out (089h),a		;05d3	d3 89 	. . 
	ld a,(0a015h)		;05d5	3a 15 a0 	: . . 
	ld (08120h),a		;05d8	32 20 81 	2   . 
	ld (08121h),a		;05db	32 21 81 	2 ! . 
	ld a,(0e4c0h)		;05de	3a c0 e4 	: . . 
	ld (081c7h),a		;05e1	32 c7 81 	2 . . 
	ld bc,00004h		;05e4	01 04 00 	. . . 
	ld de,08280h		;05e7	11 80 82 	. . . 
	ld hl,004fbh		;05ea	21 fb 04 	! . . 
	ldir		;05ed	ed b0 	. . 
	ld a,001h		;05ef	3e 01 	> . 
	or a			;05f1	b7 	. 
	ret z			;05f2	c8 	. 
	call 005e6h		;05f3	cd e6 05 	. . . 
	ret c			;05f6	d8 	. 
	call 070dbh		;05f7	cd db 70 	. . p 
	ret			;05fa	c9 	. 
	add hl,bc			;05fb	09 	. 
	ld d,b			;05fc	50 	P 
	ld h,b			;05fd	60 	` 
	ld b,b			;05fe	40 	@ 
	push af			;05ff	f5 	. 
	ld a,057h		;0600	3e 57 	> W 
	out (055h),a		;0602	d3 55 	. U 
	out (056h),a		;0604	d3 56 	. V 
	out (057h),a		;0606	d3 57 	. W 
	ld a,0c0h		;0608	3e c0 	> . 
	out (055h),a		;060a	d3 55 	. U 
	ld a,048h		;060c	3e 48 	> H 
	out (056h),a		;060e	d3 56 	. V 
	pop af			;0610	f1 	. 
	out (057h),a		;0611	d3 57 	. W 
	ret			;0613	c9 	. 
	xor a			;0614	af 	. 
	ld (hl),a			;0615	77 	w 
	dec hl			;0616	2b 	+ 
	dec bc			;0617	0b 	. 
	ld a,b			;0618	78 	x 
	or c			;0619	b1 	. 
	jr nz,$-6		;061a	20 f8 	  . 
	ret			;061c	c9 	. 
	push af			;061d	f5 	. 
	ld a,0ffh		;061e	3e ff 	> . 
	ld (0814ah),a		;0620	32 4a 81 	2 J . 
	ld a,(0e40eh)		;0623	3a 0e e4 	: . . 
	cp 0ffh		;0626	fe ff 	. . 
	jr z,$+27		;0628	28 19 	( . 
	ld a,(0e40eh)		;062a	3a 0e e4 	: . . 
	ld (0814ah),a		;062d	32 4a 81 	2 J . 
	ld a,0ffh		;0630	3e ff 	> . 
	ld (0e40eh),a		;0632	32 0e e4 	2 . . 
	jr $+2		;0635	18 00 	. . 
	ld a,(0829ah)		;0637	3a 9a 82 	: . . 
	or a			;063a	b7 	. 
	call nz,0413bh		;063b	c4 3b 41 	. ; A 
	ld a,000h		;063e	3e 00 	> . 
	ld (0829ah),a		;0640	32 9a 82 	2 . . 
	pop af			;0643	f1 	. 
	ret			;0644	c9 	. 
	push de			;0645	d5 	. 
	ld de,012c5h		;0646	11 c5 12 	. . . 
	dec de			;0649	1b 	. 
	ld a,d			;064a	7a 	z 
	or e			;064b	b3 	. 
	jr nz,$-3		;064c	20 fb 	  . 
	djnz $-8		;064e	10 f6 	. . 
	pop de			;0650	d1 	. 
	ret			;0651	c9 	. 
	push de			;0652	d5 	. 
	ld de,00400h		;0653	11 00 04 	. . . 
	dec de			;0656	1b 	. 
	ld a,d			;0657	7a 	z 
	or e			;0658	b3 	. 
	jr nz,$-3		;0659	20 fb 	  . 
	djnz $-8		;065b	10 f6 	. . 
	pop de			;065d	d1 	. 
	ret			;065e	c9 	. 
	push af			;065f	f5 	. 
	push de			;0660	d5 	. 
	push hl			;0661	e5 	. 
	ld de,(081b1h)		;0662	ed 5b b1 81 	. [ . . 
	ld hl,081b7h		;0666	21 b7 81 	! . . 
	ld a,(de)			;0669	1a 	. 
	ld (hl),a			;066a	77 	w 
	call 00572h		;066b	cd 72 05 	. r . 
	pop hl			;066e	e1 	. 
	pop de			;066f	d1 	. 
	pop af			;0670	f1 	. 
	ret			;0671	c9 	. 
	push af			;0672	f5 	. 
	push hl			;0673	e5 	. 
	push de			;0674	d5 	. 
	push bc			;0675	c5 	. 
	ld a,087h		;0676	3e 87 	> . 
	ld (de),a			;0678	12 	. 
	ld bc,01000h		;0679	01 00 10 	. . . 
	dec bc			;067c	0b 	. 
	call 003a4h		;067d	cd a4 03 	. . . 
	call 0051dh		;0680	cd 1d 05 	. . . 
	ld a,(0814ah)		;0683	3a 4a 81 	: J . 
	cp 0ffh		;0686	fe ff 	. . 
	jp nz,005a7h		;0688	c2 a7 05 	. . . 
	ld a,b			;068b	78 	x 
	or c			;068c	b1 	. 
	jr nz,$-17		;068d	20 ed 	  . 
	call 005afh		;068f	cd af 05 	. . . 
	ld bc,02000h		;0692	01 00 20 	. .   
	dec bc			;0695	0b 	. 
	call 003a4h		;0696	cd a4 03 	. . . 
	call 0051dh		;0699	cd 1d 05 	. . . 
	ld a,(0814ah)		;069c	3a 4a 81 	: J . 
	cp 0ffh		;069f	fe ff 	. . 
	jr nz,$+6		;06a1	20 04 	  . 
	ld a,b			;06a3	78 	x 
	or c			;06a4	b1 	. 
	jr nz,$-16		;06a5	20 ee 	  . 
	call 005afh		;06a7	cd af 05 	. . . 
	pop bc			;06aa	c1 	. 
	pop de			;06ab	d1 	. 
	pop hl			;06ac	e1 	. 
	pop af			;06ad	f1 	. 
	ret			;06ae	c9 	. 
	ld a,(08261h)		;06af	3a 61 82 	: a . 
	cp 001h		;06b2	fe 01 	. . 
	jp z,005bah		;06b4	ca ba 05 	. . . 
	ld a,(hl)			;06b7	7e 	~ 
	jr $+4		;06b8	18 02 	. . 
	ld a,020h		;06ba	3e 20 	>   
	ld (de),a			;06bc	12 	. 
	ret			;06bd	c9 	. 
	push hl			;06be	e5 	. 
	ld hl,081c0h		;06bf	21 c0 81 	! . . 
	bit 7,(hl)		;06c2	cb 7e 	. ~ 
	pop hl			;06c4	e1 	. 
	ret nz			;06c5	c0 	. 
	call 005e6h		;06c6	cd e6 05 	. . . 
	ret c			;06c9	d8 	. 
	ld a,(0e412h)		;06ca	3a 12 e4 	: . . 
	jr nz,$+5		;06cd	20 03 	  . 
	call 0590dh		;06cf	cd 0d 59 	. . Y 
	ret			;06d2	c9 	. 
	ld a,001h		;06d3	3e 01 	> . 
	or a			;06d5	b7 	. 
	ret z			;06d6	c8 	. 
	call 005e6h		;06d7	cd e6 05 	. . . 
	ret c			;06da	d8 	. 
	call 070e4h		;06db	cd e4 70 	. . p 
	ld a,(08228h)		;06de	3a 28 82 	: ( . 
	or a			;06e1	b7 	. 
	call z,07873h		;06e2	cc 73 78 	. s x 
	ret			;06e5	c9 	. 
	xor a			;06e6	af 	. 
	ret			;06e7	c9 	. 
	push de			;06e8	d5 	. 
	push hl			;06e9	e5 	. 
	push bc			;06ea	c5 	. 
	ld hl,005fch		;06eb	21 fc 05 	! . . 
	ld bc,00007h		;06ee	01 07 00 	. . . 
	ld de,0e660h		;06f1	11 60 e6 	. ` . 
	ldir		;06f4	ed b0 	. . 
	pop bc			;06f6	c1 	. 
	pop hl			;06f7	e1 	. 
	pop de			;06f8	d1 	. 
	scf			;06f9	37 	7 
	jr $-19		;06fa	18 eb 	. . 
	ld c,(hl)			;06fc	4e 	N 
	ld c,a			;06fd	4f 	O 
	jr nz,$+90		;06fe	20 58 	  X 
	ld c,l			;0700	4d 	M 
	ld b,l			;0701	45 	E 
	ld c,l			;0702	4d 	M 
	ld a,(081c0h)		;0703	3a c0 81 	: . . 
	bit 3,a		;0706	cb 5f 	. _ 
	ret nz			;0708	c0 	. 
	call 005e6h		;0709	cd e6 05 	. . . 
	call nc,045f9h		;070c	d4 f9 45 	. . E 
	ret			;070f	c9 	. 
	ret			;0710	c9 	. 
	push hl			;0711	e5 	. 
	push de			;0712	d5 	. 
	push bc			;0713	c5 	. 
	ld a,000h		;0714	3e 00 	> . 
	ld (08236h),a		;0716	32 36 82 	2 6 . 
	ld a,(081c6h)		;0719	3a c6 81 	: . . 
	set 2,a		;071c	cb d7 	. . 
	ld (081c6h),a		;071e	32 c6 81 	2 . . 
	out (0a0h),a		;0721	d3 a0 	. . 
	ld a,083h		;0723	3e 83 	> . 
	out (081h),a		;0725	d3 81 	. . 
	ld a,(081efh)		;0727	3a ef 81 	: . . 
	and 004h		;072a	e6 04 	. . 
	ld hl,0818bh		;072c	21 8b 81 	! . . 
	jr nz,$+6		;072f	20 04 	  . 
	res 4,(hl)		;0731	cb a6 	. . 
	jr $+4		;0733	18 02 	. . 
	set 4,(hl)		;0735	cb e6 	. . 
	ld a,(0818bh)		;0737	3a 8b 81 	: . . 
	out (080h),a		;073a	d3 80 	. . 
	pop bc			;073c	c1 	. 
	pop de			;073d	d1 	. 
	pop hl			;073e	e1 	. 
	ret			;073f	c9 	. 
	ld a,(0823eh)		;0740	3a 3e 82 	: > . 
	or a			;0743	b7 	. 
	jr nz,$+52		;0744	20 32 	  2 
	ld a,(08234h)		;0746	3a 34 82 	: 4 . 
	or a			;0749	b7 	. 
	jr z,$+21		;074a	28 13 	( . 
	ld a,082h		;074c	3e 82 	> . 
	out (081h),a		;074e	d3 81 	. . 
	ld a,(0818ah)		;0750	3a 8a 81 	: . . 
	xor 003h		;0753	ee 03 	. . 
	ld (0818ah),a		;0755	32 8a 81 	2 . . 
	out (080h),a		;0758	d3 80 	. . 
	ld a,001h		;075a	3e 01 	> . 
	ld (0823eh),a		;075c	32 3e 82 	2 > . 
	ld a,(08236h)		;075f	3a 36 82 	: 6 . 
	or a			;0762	b7 	. 
	jr z,$+21		;0763	28 13 	( . 
	ld a,083h		;0765	3e 83 	> . 
	out (081h),a		;0767	d3 81 	. . 
	ld a,(0818bh)		;0769	3a 8b 81 	: . . 
	xor 004h		;076c	ee 04 	. . 
	ld (0818bh),a		;076e	32 8b 81 	2 . . 
	out (080h),a		;0771	d3 80 	. . 
	ld a,001h		;0773	3e 01 	> . 
	ld (0823eh),a		;0775	32 3e 82 	2 > . 
	ret			;0778	c9 	. 
	in a,(0e2h)		;0779	db e2 	. . 
	bit 5,a		;077b	cb 6f 	. o 
	jr z,$+6		;077d	28 04 	( . 
	in a,(0e3h)		;077f	db e3 	. . 
	bit 5,a		;0781	cb 6f 	. o 
	ret			;0783	c9 	. 
	ld hl,(081ech)		;0784	2a ec 81 	* . . 
	push hl			;0787	e5 	. 
	pop de			;0788	d1 	. 
	add hl,de			;0789	19 	. 
	ld (081ech),hl		;078a	22 ec 81 	" . . 
	ret			;078d	c9 	. 
	ld hl,081edh		;078e	21 ed 81 	! . . 
	sra (hl)		;0791	cb 2e 	. . 
	dec hl			;0793	2b 	+ 
	rr (hl)		;0794	cb 1e 	. . 
	ret			;0796	c9 	. 
	push hl			;0797	e5 	. 
	push bc			;0798	c5 	. 
	push de			;0799	d5 	. 
	push af			;079a	f5 	. 
	ld b,003h		;079b	06 03 	. . 
	ld de,08000h		;079d	11 00 80 	. . . 
	in a,(087h)		;07a0	db 87 	. . 
	and 004h		;07a2	e6 04 	. . 
	jr z,$-4		;07a4	28 fa 	( . 
	pop af			;07a6	f1 	. 
	ld l,a			;07a7	6f 	o 
	out (085h),a		;07a8	d3 85 	. . 
	ld c,087h		;07aa	0e 87 	. . 
	in h,(c)		;07ac	ed 60 	. ` 
	rr h		;07ae	cb 1c 	. . 
	jr nc,$+10		;07b0	30 08 	0 . 
	res 1,c		;07b2	cb 89 	. . 
	in h,(c)		;07b4	ed 60 	. ` 
	ld a,l			;07b6	7d 	} 
	cp h			;07b7	bc 	. 
	jr z,$+11		;07b8	28 09 	( . 
	dec de			;07ba	1b 	. 
	ld a,d			;07bb	7a 	z 
	or e			;07bc	b3 	. 
	jr nz,$-19		;07bd	20 eb 	  . 
	djnz $-21		;07bf	10 e9 	. . 
	ld h,000h		;07c1	26 00 	& . 
	ld a,h			;07c3	7c 	| 
	pop de			;07c4	d1 	. 
	pop bc			;07c5	c1 	. 
	pop hl			;07c6	e1 	. 
	ret			;07c7	c9 	. 
	in a,(087h)		;07c8	db 87 	. . 
	rrca			;07ca	0f 	. 
	jr nc,$+4		;07cb	30 02 	0 . 
	in a,(085h)		;07cd	db 85 	. . 
	ret			;07cf	c9 	. 
	ld a,008h		;07d0	3e 08 	> . 
	out (09fh),a		;07d2	d3 9f 	. . 
	ld b,004h		;07d4	06 04 	. . 
	call 00545h		;07d6	cd 45 05 	. E . 
	xor a			;07d9	af 	. 
	out (09fh),a		;07da	d3 9f 	. . 
	call 006c8h		;07dc	cd c8 06 	. . . 
	cp 0aah		;07df	fe aa 	. . 
	jr nz,$-5		;07e1	20 f9 	  . 
	jp 00434h		;07e3	c3 34 04 	. 4 . 
	ld a,(0e40dh)		;07e6	3a 0d e4 	: . . 
	cp 001h		;07e9	fe 01 	. . 
	jr z,$+56		;07eb	28 36 	( 6 
	cp 000h		;07ed	fe 00 	. . 
	jr nz,$+16		;07ef	20 0e 	  . 
	ld a,001h		;07f1	3e 01 	> . 
	ld (0823fh),a		;07f3	32 3f 82 	2 ? . 
	xor a			;07f6	af 	. 
	ld (08241h),a		;07f7	32 41 82 	2 A . 
	ld (08240h),a		;07fa	32 40 82 	2 @ . 
	jr $+48		;07fd	18 2e 	. . 
	cp 002h		;07ff	fe 02 	. . 
	jr nz,$+16		;0801	20 0e 	  . 
	ld a,001h		;0803	3e 01 	> . 
	ld (08240h),a		;0805	32 40 82 	2 @ . 
	xor a			;0808	af 	. 
	ld (0823fh),a		;0809	32 3f 82 	2 ? . 
	ld (08241h),a		;080c	32 41 82 	2 A . 
	jr $+30		;080f	18 1c 	. . 
	cp 003h		;0811	fe 03 	. . 
	jr nz,$+26		;0813	20 18 	  . 
	ld a,001h		;0815	3e 01 	> . 
	ld (08241h),a		;0817	32 41 82 	2 A . 
	xor a			;081a	af 	. 
	ld (0823fh),a		;081b	32 3f 82 	2 ? . 
	ld (08240h),a		;081e	32 40 82 	2 @ . 
	jr $+12		;0821	18 0a 	. . 
	xor a			;0823	af 	. 
	ld (0823fh),a		;0824	32 3f 82 	2 ? . 
	ld (08240h),a		;0827	32 40 82 	2 @ . 
	ld (08241h),a		;082a	32 41 82 	2 A . 
	ld a,(0e414h)		;082d	3a 14 e4 	: . . 
	cp 000h		;0830	fe 00 	. . 
	jr z,$+20		;0832	28 12 	( . 
	cp 001h		;0834	fe 01 	. . 
	jr z,$+27		;0836	28 19 	( . 
	cp 002h		;0838	fe 02 	. . 
	jr z,$+31		;083a	28 1d 	( . 
	cp 003h		;083c	fe 03 	. . 
	jr z,$+32		;083e	28 1e 	( . 
	ld a,0ffh		;0840	3e ff 	> . 
	ld (0e414h),a		;0842	32 14 e4 	2 . . 
	ret			;0845	c9 	. 
	ld a,(08117h)		;0846	3a 17 81 	: . . 
	or a			;0849	b7 	. 
	jr z,$-10		;084a	28 f4 	( . 
	call 02df1h		;084c	cd f1 2d 	. . - 
	jr $-15		;084f	18 ef 	. . 
	ld a,(08117h)		;0851	3a 17 81 	: . . 
	or a			;0854	b7 	. 
	jr nz,$-21		;0855	20 e9 	  . 
	jr $-11		;0857	18 f3 	. . 
	call 02e08h		;0859	cd 08 2e 	. . . 
	jr $-28		;085c	18 e2 	. . 
	call 02e18h		;085e	cd 18 2e 	. . . 
	jr $-33		;0861	18 dd 	. . 
	inc bc			;0863	03 	. 
	add a,c			;0864	81 	. 
	ex af,af'			;0865	08 	. 
	ld (001c1h),hl		;0866	22 c1 01 	" . . 
	ld d,a			;0869	57 	W 
	ld b,e			;086a	43 	C 
	ld bc,04356h		;086b	01 56 43 	. V C 
	ld bc,04355h		;086e	01 55 43 	. U C 
	ld bc,04354h		;0871	01 54 43 	. T C 
	add hl,bc			;0874	09 	. 
	ld d,d			;0875	52 	R 
	jr $+22		;0876	18 14 	. . 
	ld c,h			;0878	4c 	L 
	inc de			;0879	13 	. 
	pop bc			;087a	c1 	. 
	dec d			;087b	15 	. 
	jp pe,00011h		;087c	ea 11 00 	. . . 
	add hl,bc			;087f	09 	. 
	ld d,e			;0880	53 	S 
	jr $+22		;0881	18 14 	. . 
	ld c,h			;0883	4c 	L 
	inc de			;0884	13 	. 
	pop bc			;0885	c1 	. 
	dec d			;0886	15 	. 
	jp pe,00011h		;0887	ea 11 00 	. . . 
	ld (bc),a			;088a	02 	. 
	ld c,(hl)			;088b	4e 	N 
	inc bc			;088c	03 	. 
	rrca			;088d	0f 	. 
	inc b			;088e	04 	. 
	ld c,a			;088f	4f 	O 
	inc bc			;0890	03 	. 
	rst 8			;0891	cf 	. 
	ld e,067h		;0892	1e 67 	. g 
	add hl,bc			;0894	09 	. 
	jp po,01418h		;0895	e2 18 14 	. . . 
	ld c,h			;0898	4c 	L 
	inc de			;0899	13 	. 
	pop bc			;089a	c1 	. 
	dec d			;089b	15 	. 
	jp pe,00011h		;089c	ea 11 00 	. . . 
	add hl,bc			;089f	09 	. 
	ex (sp),hl			;08a0	e3 	. 
	jr $+22		;08a1	18 14 	. . 
	ld c,h			;08a3	4c 	L 
	inc de			;08a4	13 	. 
	pop bc			;08a5	c1 	. 
	dec d			;08a6	15 	. 
	jp pe,00011h		;08a7	ea 11 00 	. . . 
	add hl,bc			;08aa	09 	. 
	add a,(hl)			;08ab	86 	. 
	jr $+22		;08ac	18 14 	. . 
	ld c,h			;08ae	4c 	L 
	inc de			;08af	13 	. 
	pop bc			;08b0	c1 	. 
	dec d			;08b1	15 	. 
	jp pe,00011h		;08b2	ea 11 00 	. . . 
	add hl,bc			;08b5	09 	. 
	add a,a			;08b6	87 	. 
	jr $+22		;08b7	18 14 	. . 
	ld c,h			;08b9	4c 	L 
	inc de			;08ba	13 	. 
	pop bc			;08bb	c1 	. 
	dec d			;08bc	15 	. 
	jp pe,00011h		;08bd	ea 11 00 	. . . 
	add a,b			;08c0	80 	. 
	add hl,bc			;08c1	09 	. 
	jp po,01418h		;08c2	e2 18 14 	. . . 
	ld c,h			;08c5	4c 	L 
	inc de			;08c6	13 	. 
	pop bc			;08c7	c1 	. 
	dec d			;08c8	15 	. 
	jp pe,00011h		;08c9	ea 11 00 	. . . 
	add a,b			;08cc	80 	. 
	add hl,bc			;08cd	09 	. 
	ex (sp),hl			;08ce	e3 	. 
	jr $+22		;08cf	18 14 	. . 
	ld c,h			;08d1	4c 	L 
	inc de			;08d2	13 	. 
	pop bc			;08d3	c1 	. 
	dec d			;08d4	15 	. 
	jp pe,00011h		;08d5	ea 11 00 	. . . 
	add a,b			;08d8	80 	. 
	ld b,(hl)			;08d9	46 	F 
	inc sp			;08da	33 	3 
	ld (04552h),a		;08db	32 52 45 	2 R E 
	ld c,l			;08de	4d 	M 
	ld c,a			;08df	4f 	O 
	ld d,h			;08e0	54 	T 
	ld b,l			;08e1	45 	E 
	dec l			;08e2	2d 	- 
	ld b,l			;08e3	45 	E 
	ld d,d			;08e4	52 	R 
	ld d,d			;08e5	52 	R 
	ld c,a			;08e6	4f 	O 
	ld d,d			;08e7	52 	R 
	jr nz,$+97		;08e8	20 5f 	  _ 
	jr nz,$+34		;08ea	20 20 	    
	jr nz,$+34		;08ec	20 20 	    
	jr nz,$+34		;08ee	20 20 	    
	jr nz,$+34		;08f0	20 20 	    
	jr nz,$+34		;08f2	20 20 	    
	jr nz,$+34		;08f4	20 20 	    
	jr nz,$+34		;08f6	20 20 	    
	ld hl,00100h		;08f8	21 00 01 	! . . 
	ld (08000h),hl		;08fb	22 00 80 	" . . 
	ld a,030h		;08fe	3e 30 	> 0 
	ld (08002h),a		;0900	32 02 80 	2 . . 
	ld hl,07f7fh		;0903	21 7f 7f 	!   
	ld (08004h),hl		;0906	22 04 80 	" . . 
	ld (0800ch),hl		;0909	22 0c 80 	" . . 
	ld hl,04040h		;090c	21 40 40 	! @ @ 
	ld (0800ah),hl		;090f	22 0a 80 	" . . 
	ld (08006h),hl		;0912	22 06 80 	" . . 
	ld a,000h		;0915	3e 00 	> . 
	ld (08014h),a		;0917	32 14 80 	2 . . 
	call 00c70h		;091a	cd 70 0c 	. p . 
	call 008d7h		;091d	cd d7 08 	. . . 
	ld a,000h		;0920	3e 00 	> . 
	ld (0e800h),a		;0922	32 00 e8 	2 . . 
	ret			;0925	c9 	. 
	call 009d9h		;0926	cd d9 09 	. . . 
	call 008d0h		;0929	cd d0 08 	. . . 
	call 00837h		;092c	cd 37 08 	. 7 . 
	cp 01bh		;092f	fe 1b 	. . 
	ret z			;0931	c8 	. 
	call 00872h		;0932	cd 72 08 	. r . 
	jr $-9		;0935	18 f5 	. . 
	call 00860h		;0937	cd 60 08 	. ` . 
	jr c,$-3		;093a	38 fb 	8 . 
	ld hl,(08012h)		;093c	2a 12 80 	* . . 
	ex de,hl			;093f	eb 	. 
	ld hl,(08010h)		;0940	2a 10 80 	* . . 
	add hl,de			;0943	19 	. 
	ld b,(hl)			;0944	46 	F 
	ld (hl),087h		;0945	36 87 	6 . 
	ld de,01800h		;0947	11 00 18 	. . . 
	call 00860h		;094a	cd 60 08 	. ` . 
	jr c,$+17		;094d	38 0f 	8 . 
	call 003a4h		;094f	cd a4 03 	. . . 
	dec de			;0952	1b 	. 
	ld a,d			;0953	7a 	z 
	or e			;0954	b3 	. 
	jr nz,$-11		;0955	20 f3 	  . 
	ld a,b			;0957	78 	x 
	cp (hl)			;0958	be 	. 
	jr z,$-20		;0959	28 ea 	( . 
	ld (hl),b			;095b	70 	p 
	jr $-21		;095c	18 e9 	. . 
	ld (hl),b			;095e	70 	p 
	ret			;095f	c9 	. 
	in a,(052h)		;0960	db 52 	. R 
	rrca			;0962	0f 	. 
	jr nc,$+10		;0963	30 08 	0 . 
	in a,(052h)		;0965	db 52 	. R 
	rrca			;0967	0f 	. 
	jr nc,$-3		;0968	30 fb 	0 . 
	in a,(050h)		;096a	db 50 	. P 
	ret			;096c	c9 	. 
	in a,(052h)		;096d	db 52 	. R 
	ld a,000h		;096f	3e 00 	> . 
	ret			;0971	c9 	. 
	cp 00dh		;0972	fe 0d 	. . 
	jp z,008b6h		;0974	ca b6 08 	. . . 
	cp 01eh		;0977	fe 1e 	. . 
	jp z,008d0h		;0979	ca d0 08 	. . . 
	cp 01ah		;097c	fe 1a 	. . 
	jp z,008d7h		;097e	ca d7 08 	. . . 
	cp 008h		;0981	fe 08 	. . 
	jp z,008f1h		;0983	ca f1 08 	. . . 
	cp 00bh		;0986	fe 0b 	. . 
	jp z,008fch		;0988	ca fc 08 	. . . 
	cp 00ch		;098b	fe 0c 	. . 
	jp z,0090bh		;098d	ca 0b 09 	. . . 
	cp 00ah		;0990	fe 0a 	. . 
	jp z,0091dh		;0992	ca 1d 09 	. . . 
	cp 07fh		;0995	fe 7f 	.  
	jp z,008aah		;0997	ca aa 08 	. . . 
	cp 093h		;099a	fe 93 	. . 
	ret p			;099c	f0 	. 
	cp 020h		;099d	fe 20 	.   
	ret c			;099f	d8 	. 
	ld hl,(08012h)		;09a0	2a 12 80 	* . . 
	call 009fdh		;09a3	cd fd 09 	. . . 
	ld (08012h),hl		;09a6	22 12 80 	" . . 
	ret			;09a9	c9 	. 
	call 008f1h		;09aa	cd f1 08 	. . . 
	ld a,020h		;09ad	3e 20 	>   
	call 008a0h		;09af	cd a0 08 	. . . 
	call 008f1h		;09b2	cd f1 08 	. . . 
	ret			;09b5	c9 	. 
	push af			;09b6	f5 	. 
	ld hl,(08012h)		;09b7	2a 12 80 	* . . 
	ld a,l			;09ba	7d 	} 
	or 01fh		;09bb	f6 1f 	. . 
	ld l,a			;09bd	6f 	o 
	inc hl			;09be	23 	# 
	call 00ccdh		;09bf	cd cd 0c 	. . . 
	ld a,h			;09c2	7c 	| 
	cp 004h		;09c3	fe 04 	. . 
	call 00cd4h		;09c5	cd d4 0c 	. . . 
	jp z,008ceh		;09c8	ca ce 08 	. . . 
	ld (08012h),hl		;09cb	22 12 80 	" . . 
	pop af			;09ce	f1 	. 
	ret			;09cf	c9 	. 
	ld hl,00000h		;09d0	21 00 00 	! . . 
	ld (08012h),hl		;09d3	22 12 80 	" . . 
	ret			;09d6	c9 	. 
	call 009d9h		;09d7	cd d9 09 	. . . 
	jr $+5		;09da	18 03 	. . 
	call 009e2h		;09dc	cd e2 09 	. . . 
	call 008d0h		;09df	cd d0 08 	. . . 
	ld hl,(08010h)		;09e2	2a 10 80 	* . . 
	ld bc,00400h		;09e5	01 00 04 	. . . 
	ld (hl),000h		;09e8	36 00 	6 . 
	inc hl			;09ea	23 	# 
	dec bc			;09eb	0b 	. 
	ld a,b			;09ec	78 	x 
	or c			;09ed	b1 	. 
	jr nz,$-6		;09ee	20 f8 	  . 
	ret			;09f0	c9 	. 
	ld hl,(08012h)		;09f1	2a 12 80 	* . . 
	ld a,h			;09f4	7c 	| 
	or l			;09f5	b5 	. 
	ret z			;09f6	c8 	. 
	dec hl			;09f7	2b 	+ 
	ld (08012h),hl		;09f8	22 12 80 	" . . 
	ret			;09fb	c9 	. 
	ld de,0ffe0h		;09fc	11 e0 ff 	. . . 
	ld hl,(08012h)		;09ff	2a 12 80 	* . . 
	add hl,de			;0a02	19 	. 
	ld a,h			;0a03	7c 	| 
	cp 0ffh		;0a04	fe ff 	. . 
	ret z			;0a06	c8 	. 
	ld (08012h),hl		;0a07	22 12 80 	" . . 
	ret			;0a0a	c9 	. 
	ld hl,(08012h)		;0a0b	2a 12 80 	* . . 
	inc hl			;0a0e	23 	# 
	call 00ccdh		;0a0f	cd cd 0c 	. . . 
	ld a,h			;0a12	7c 	| 
	cp 004h		;0a13	fe 04 	. . 
	call 00cd4h		;0a15	cd d4 0c 	. . . 
	ret z			;0a18	c8 	. 
	ld (08012h),hl		;0a19	22 12 80 	" . . 
	ret			;0a1c	c9 	. 
	ld de,00020h		;0a1d	11 20 00 	.   . 
	ld hl,(08012h)		;0a20	2a 12 80 	* . . 
	add hl,de			;0a23	19 	. 
	call 00ccdh		;0a24	cd cd 0c 	. . . 
	ld a,h			;0a27	7c 	| 
	cp 004h		;0a28	fe 04 	. . 
	call 00cd4h		;0a2a	cd d4 0c 	. . . 
	ret z			;0a2d	c8 	. 
	ld (08012h),hl		;0a2e	22 12 80 	" . . 
	ret			;0a31	c9 	. 
	call 009e2h		;0a32	cd e2 09 	. . . 
	xor a			;0a35	af 	. 
	ld (08014h),a		;0a36	32 14 80 	2 . . 
	call 0097dh		;0a39	cd 7d 09 	. } . 
	ld a,(08012h)		;0a3c	3a 12 80 	: . . 
	and 01fh		;0a3f	e6 1f 	. . 
	cp 007h		;0a41	fe 07 	. . 
	call nc,00979h		;0a43	d4 79 09 	. y . 
	call 00837h		;0a46	cd 37 08 	. 7 . 
	cp 01bh		;0a49	fe 1b 	. . 
	ret z			;0a4b	c8 	. 
	call 00951h		;0a4c	cd 51 09 	. Q . 
	jr $-19		;0a4f	18 eb 	. . 
	cp 00dh		;0a51	fe 0d 	. . 
	jp z,00979h		;0a53	ca 79 09 	. y . 
	cp 008h		;0a56	fe 08 	. . 
	jp z,009a8h		;0a58	ca a8 09 	. . . 
	cp 00bh		;0a5b	fe 0b 	. . 
	jp z,009ceh		;0a5d	ca ce 09 	. . . 
	cp 00ch		;0a60	fe 0c 	. . 
	jp z,0090bh		;0a62	ca 0b 09 	. . . 
	cp 00ah		;0a65	fe 0a 	. . 
	jp z,00979h		;0a67	ca 79 09 	. y . 
	cp 07fh		;0a6a	fe 7f 	.  
	jp z,00996h		;0a6c	ca 96 09 	. . . 
	cp 093h		;0a6f	fe 93 	. . 
	ret p			;0a71	f0 	. 
	cp 020h		;0a72	fe 20 	.   
	ret c			;0a74	d8 	. 
	call 008a0h		;0a75	cd a0 08 	. . . 
	ret			;0a78	c9 	. 
	ld hl,08014h		;0a79	21 14 80 	! . . 
	inc (hl)			;0a7c	34 	4 
	ld hl,08014h		;0a7d	21 14 80 	! . . 
	ld l,(hl)			;0a80	6e 	n 
	ld h,000h		;0a81	26 00 	& . 
	add hl,hl			;0a83	29 	) 
	ld de,009a2h		;0a84	11 a2 09 	. . . 
	add hl,de			;0a87	19 	. 
	ld e,(hl)			;0a88	5e 	^ 
	inc hl			;0a89	23 	# 
	ld d,(hl)			;0a8a	56 	V 
	ld a,(hl)			;0a8b	7e 	~ 
	cp 004h		;0a8c	fe 04 	. . 
	jp nc,009ceh		;0a8e	d2 ce 09 	. . . 
	ex de,hl			;0a91	eb 	. 
	ld (08012h),hl		;0a92	22 12 80 	" . . 
	ret			;0a95	c9 	. 
	call 009a8h		;0a96	cd a8 09 	. . . 
	ld a,020h		;0a99	3e 20 	>   
	call 008a0h		;0a9b	cd a0 08 	. . . 
	call 009a8h		;0a9e	cd a8 09 	. . . 
	ret			;0aa1	c9 	. 
	nop			;0aa2	00 	. 
	inc bc			;0aa3	03 	. 
	jr nz,$+5		;0aa4	20 03 	  . 
	rst 38h			;0aa6	ff 	. 
	rst 38h			;0aa7	ff 	. 
	ld hl,(08012h)		;0aa8	2a 12 80 	* . . 
	push hl			;0aab	e5 	. 
	call 0097dh		;0aac	cd 7d 09 	. } . 
	ld a,(08012h)		;0aaf	3a 12 80 	: . . 
	pop hl			;0ab2	e1 	. 
	cp l			;0ab3	bd 	. 
	dec hl			;0ab4	2b 	+ 
	ex af,af'			;0ab5	08 	. 
	ld a,h			;0ab6	7c 	| 
	cp 002h		;0ab7	fe 02 	. . 
	jr nz,$+3		;0ab9	20 01 	  . 
	inc hl			;0abb	23 	# 
	ex af,af'			;0abc	08 	. 
	ld (08012h),hl		;0abd	22 12 80 	" . . 
	ret nz			;0ac0	c0 	. 
	call 009ceh		;0ac1	cd ce 09 	. . . 
	ld hl,08012h		;0ac4	21 12 80 	! . . 
	ld a,(hl)			;0ac7	7e 	~ 
	and 0e0h		;0ac8	e6 e0 	. . 
	add a,006h		;0aca	c6 06 	. . 
	ld (hl),a			;0acc	77 	w 
	ret			;0acd	c9 	. 
	ld hl,08014h		;0ace	21 14 80 	! . . 
	xor a			;0ad1	af 	. 
	cp (hl)			;0ad2	be 	. 
	ret z			;0ad3	c8 	. 
	dec (hl)			;0ad4	35 	5 
	call 0097dh		;0ad5	cd 7d 09 	. } . 
	ret			;0ad8	c9 	. 
	push hl			;0ad9	e5 	. 
	ld hl,0e000h		;0ada	21 00 e0 	! . . 
	ld (08010h),hl		;0add	22 10 80 	" . . 
	pop hl			;0ae0	e1 	. 
	ret			;0ae1	c9 	. 
	push hl			;0ae2	e5 	. 
	ld hl,0e400h		;0ae3	21 00 e4 	! . . 
	ld (08010h),hl		;0ae6	22 10 80 	" . . 
	pop hl			;0ae9	e1 	. 
	ret			;0aea	c9 	. 
	push af			;0aeb	f5 	. 
	ld a,0ffh		;0aec	3e ff 	> . 
	ld (08015h),a		;0aee	32 15 80 	2 . . 
	pop af			;0af1	f1 	. 
	ret			;0af2	c9 	. 
	push af			;0af3	f5 	. 
	xor a			;0af4	af 	. 
	ld (08017h),a		;0af5	32 17 80 	2 . . 
	ld (08015h),a		;0af8	32 15 80 	2 . . 
	pop af			;0afb	f1 	. 
	ret			;0afc	c9 	. 
	push de			;0afd	d5 	. 
	push af			;0afe	f5 	. 
	push hl			;0aff	e5 	. 
	ex de,hl			;0b00	eb 	. 
	ld hl,(08010h)		;0b01	2a 10 80 	* . . 
	add hl,de			;0b04	19 	. 
	ld (hl),a			;0b05	77 	w 
	pop hl			;0b06	e1 	. 
	inc hl			;0b07	23 	# 
	call 00ccdh		;0b08	cd cd 0c 	. . . 
	ld a,h			;0b0b	7c 	| 
	cp 004h		;0b0c	fe 04 	. . 
	call 00cd4h		;0b0e	cd d4 0c 	. . . 
	jr nz,$+3		;0b11	20 01 	  . 
	dec hl			;0b13	2b 	+ 
	pop af			;0b14	f1 	. 
	pop de			;0b15	d1 	. 
	ret			;0b16	c9 	. 
	bit 2,h		;0b17	cb 54 	. T 
	ret nz			;0b19	c0 	. 
	push de			;0b1a	d5 	. 
	push hl			;0b1b	e5 	. 
	push af			;0b1c	f5 	. 
	jr $+8		;0b1d	18 06 	. . 
	push de			;0b1f	d5 	. 
	push hl			;0b20	e5 	. 
	push af			;0b21	f5 	. 
	call 00a38h		;0b22	cd 38 0a 	. 8 . 
	ex de,hl			;0b25	eb 	. 
	ld hl,(08010h)		;0b26	2a 10 80 	* . . 
	add hl,de			;0b29	19 	. 
	ld d,a			;0b2a	57 	W 
	ld a,(08015h)		;0b2b	3a 15 80 	: . . 
	and a			;0b2e	a7 	. 
	jr nz,$+3		;0b2f	20 01 	  . 
	ld d,a			;0b31	57 	W 
	ld a,d			;0b32	7a 	z 
	ld (hl),a			;0b33	77 	w 
	pop af			;0b34	f1 	. 
	pop hl			;0b35	e1 	. 
	pop de			;0b36	d1 	. 
	ret			;0b37	c9 	. 
	push af			;0b38	f5 	. 
	ld a,l			;0b39	7d 	} 
	rrca			;0b3a	0f 	. 
	rrca			;0b3b	0f 	. 
	rrca			;0b3c	0f 	. 
	and 01fh		;0b3d	e6 1f 	. . 
	ld l,a			;0b3f	6f 	o 
	ld a,h			;0b40	7c 	| 
	rlca			;0b41	07 	. 
	rlca			;0b42	07 	. 
	push af			;0b43	f5 	. 
	and 003h		;0b44	e6 03 	. . 
	ld h,a			;0b46	67 	g 
	pop af			;0b47	f1 	. 
	and 0e0h		;0b48	e6 e0 	. . 
	add a,l			;0b4a	85 	. 
	ld l,a			;0b4b	6f 	o 
	pop af			;0b4c	f1 	. 
	ret			;0b4d	c9 	. 
	call 009e2h		;0b4e	cd e2 09 	. . . 
	ld hl,(08000h)		;0b51	2a 00 80 	* . . 
	ld a,(08002h)		;0b54	3a 02 80 	: . . 
	cp 00ah		;0b57	fe 0a 	. . 
	ret c			;0b59	d8 	. 
	cp 03fh		;0b5a	fe 3f 	. ? 
	ret nc			;0b5c	d0 	. 
	ld c,a			;0b5d	4f 	O 
	rrca			;0b5e	0f 	. 
	rrca			;0b5f	0f 	. 
	rrca			;0b60	0f 	. 
	and 00fh		;0b61	e6 0f 	. . 
	ld b,a			;0b63	47 	G 
	ld a,09eh		;0b64	3e 9e 	> . 
	call 009fdh		;0b66	cd fd 09 	. . . 
	ld a,09fh		;0b69	3e 9f 	> . 
	djnz $-5		;0b6b	10 f9 	. . 
	ld a,c			;0b6d	79 	y 
	and 007h		;0b6e	e6 07 	. . 
	add a,0a0h		;0b70	c6 a0 	. . 
	ld b,006h		;0b72	06 06 	. . 
	call 009fdh		;0b74	cd fd 09 	. . . 
	xor a			;0b77	af 	. 
	djnz $-4		;0b78	10 fa 	. . 
	ret			;0b7a	c9 	. 
	ld hl,(0800ah)		;0b7b	2a 0a 80 	* . . 
	ex de,hl			;0b7e	eb 	. 
	ld hl,(08004h)		;0b7f	2a 04 80 	* . . 
	ld a,l			;0b82	7d 	} 
	and 0f8h		;0b83	e6 f8 	. . 
	ld l,a			;0b85	6f 	o 
	ld a,e			;0b86	7b 	{ 
	or 00fh		;0b87	f6 0f 	. . 
	ld e,a			;0b89	5f 	_ 
	and 0feh		;0b8a	e6 fe 	. . 
	rrca			;0b8c	0f 	. 
	ld b,a			;0b8d	47 	G 
	cpl			;0b8e	2f 	/ 
	add a,l			;0b8f	85 	. 
	jr c,$+3		;0b90	38 01 	8 . 
	xor a			;0b92	af 	. 
	ld l,a			;0b93	6f 	o 
	add a,e			;0b94	83 	. 
	jr nc,$+5		;0b95	30 03 	0 . 
	ld a,e			;0b97	7b 	{ 
	cpl			;0b98	2f 	/ 
	ld l,a			;0b99	6f 	o 
	ld a,h			;0b9a	7c 	| 
	and 0f8h		;0b9b	e6 f8 	. . 
	ld h,a			;0b9d	67 	g 
	ld a,d			;0b9e	7a 	z 
	or 00fh		;0b9f	f6 0f 	. . 
	ld b,a			;0ba1	47 	G 
	ld a,(0814eh)		;0ba2	3a 4e 81 	: N . 
	cp 001h		;0ba5	fe 01 	. . 
	jr nz,$+3		;0ba7	20 01 	  . 
	ld b,d			;0ba9	42 	B 
	ld a,b			;0baa	78 	x 
	ld d,a			;0bab	57 	W 
	and 0feh		;0bac	e6 fe 	. . 
	rrca			;0bae	0f 	. 
	ld b,a			;0baf	47 	G 
	add a,000h		;0bb0	c6 00 	. . 
	cpl			;0bb2	2f 	/ 
	add a,000h		;0bb3	c6 00 	. . 
	add a,h			;0bb5	84 	. 
	push af			;0bb6	f5 	. 
	sub 000h		;0bb7	d6 00 	. . 
	pop af			;0bb9	f1 	. 
	jr c,$+3		;0bba	38 01 	8 . 
	xor a			;0bbc	af 	. 
	ld h,a			;0bbd	67 	g 
	add a,000h		;0bbe	c6 00 	. . 
	add a,d			;0bc0	82 	. 
	push af			;0bc1	f5 	. 
	sub 000h		;0bc2	d6 00 	. . 
	pop af			;0bc4	f1 	. 
	jr nc,$+7		;0bc5	30 05 	0 . 
	ld a,d			;0bc7	7a 	z 
	add a,000h		;0bc8	c6 00 	. . 
	cpl			;0bca	2f 	/ 
	ld h,a			;0bcb	67 	g 
	ld (08008h),hl		;0bcc	22 08 80 	" . . 
	ex de,hl			;0bcf	eb 	. 
	ld (0800eh),hl		;0bd0	22 0e 80 	" . . 
	call 00af4h		;0bd3	cd f4 0a 	. . . 
	ld hl,(08008h)		;0bd6	2a 08 80 	* . . 
	ld (08006h),hl		;0bd9	22 06 80 	" . . 
	ld hl,(0800eh)		;0bdc	2a 0e 80 	* . . 
	ld (0800ch),hl		;0bdf	22 0c 80 	" . . 
	ret			;0be2	c9 	. 
	call 009d9h		;0be3	cd d9 09 	. . . 
	ld hl,(0800ch)		;0be6	2a 0c 80 	* . . 
	ex de,hl			;0be9	eb 	. 
	ld hl,(08006h)		;0bea	2a 06 80 	* . . 
	call 009f3h		;0bed	cd f3 09 	. . . 
	call 00b0ah		;0bf0	cd 0a 0b 	. . . 
	ret			;0bf3	c9 	. 
	call 00ae3h		;0bf4	cd e3 0a 	. . . 
	ld hl,08017h		;0bf7	21 17 80 	! . . 
	set 3,(hl)		;0bfa	cb de 	. . 
	call 009ebh		;0bfc	cd eb 09 	. . . 
	ld hl,(0800eh)		;0bff	2a 0e 80 	* . . 
	ex de,hl			;0c02	eb 	. 
	ld hl,(08008h)		;0c03	2a 08 80 	* . . 
	call 00b0ah		;0c06	cd 0a 0b 	. . . 
	ret			;0c09	c9 	. 
	ld a,e			;0c0a	7b 	{ 
	and 0f8h		;0c0b	e6 f8 	. . 
	rrca			;0c0d	0f 	. 
	rrca			;0c0e	0f 	. 
	rrca			;0c0f	0f 	. 
	ld e,a			;0c10	5f 	_ 
	ld a,d			;0c11	7a 	z 
	and 0f8h		;0c12	e6 f8 	. . 
	rrca			;0c14	0f 	. 
	rrca			;0c15	0f 	. 
	rrca			;0c16	0f 	. 
	ld d,a			;0c17	57 	W 
	push de			;0c18	d5 	. 
	ld bc,00020h		;0c19	01 20 00 	.   . 
	call 00a38h		;0c1c	cd 38 0a 	. 8 . 
	pop de			;0c1f	d1 	. 
	ld a,d			;0c20	7a 	z 
	cp 000h		;0c21	fe 00 	. . 
	jr nz,$+10		;0c23	20 08 	  . 
	ld a,e			;0c25	7b 	{ 
	cp 000h		;0c26	fe 00 	. . 
	ld a,0e4h		;0c28	3e e4 	> . 
	jp z,00b5fh		;0c2a	ca 5f 0b 	. _ . 
	push de			;0c2d	d5 	. 
	push hl			;0c2e	e5 	. 
	ld a,0a8h		;0c2f	3e a8 	> . 
	call 00a17h		;0c31	cd 17 0a 	. . . 
	inc hl			;0c34	23 	# 
	dec e			;0c35	1d 	. 
	jr nz,$-5		;0c36	20 f9 	  . 
	ld a,0bfh		;0c38	3e bf 	> . 
	call 00a17h		;0c3a	cd 17 0a 	. . . 
	add hl,bc			;0c3d	09 	. 
	ld a,0bch		;0c3e	3e bc 	> . 
	dec d			;0c40	15 	. 
	jr nz,$-7		;0c41	20 f7 	  . 
	pop hl			;0c43	e1 	. 
	pop de			;0c44	d1 	. 
	ld a,0c0h		;0c45	3e c0 	> . 
	call 00a17h		;0c47	cd 17 0a 	. . . 
	add hl,bc			;0c4a	09 	. 
	ld a,0c2h		;0c4b	3e c2 	> . 
	dec d			;0c4d	15 	. 
	jp nz,00b47h		;0c4e	c2 47 0b 	. G . 
	ld a,0beh		;0c51	3e be 	> . 
	call 00a17h		;0c53	cd 17 0a 	. . . 
	inc hl			;0c56	23 	# 
	ld a,0afh		;0c57	3e af 	> . 
	dec e			;0c59	1d 	. 
	jp nz,00b53h		;0c5a	c2 53 0b 	. S . 
	ld a,0bdh		;0c5d	3e bd 	> . 
	call 00a17h		;0c5f	cd 17 0a 	. . . 
	ret			;0c62	c9 	. 
	ld hl,(0800ah)		;0c63	2a 0a 80 	* . . 
	ex de,hl			;0c66	eb 	. 
	ld hl,(08004h)		;0c67	2a 04 80 	* . . 
	ld a,0f7h		;0c6a	3e f7 	> . 
	cp l			;0c6c	bd 	. 
	jr nc,$+3		;0c6d	30 01 	0 . 
	ld l,a			;0c6f	6f 	o 
	ld a,008h		;0c70	3e 08 	> . 
	cp e			;0c72	bb 	. 
	jr c,$+3		;0c73	38 01 	8 . 
	ld e,a			;0c75	5f 	_ 
	ld a,e			;0c76	7b 	{ 
	add a,l			;0c77	85 	. 
	jr nc,$+5		;0c78	30 03 	0 . 
	ld a,l			;0c7a	7d 	} 
	cpl			;0c7b	2f 	/ 
	ld e,a			;0c7c	5f 	_ 
	ld (08008h),hl		;0c7d	22 08 80 	" . . 
	ex de,hl			;0c80	eb 	. 
	ld (0800eh),hl		;0c81	22 0e 80 	" . . 
	call 00baah		;0c84	cd aa 0b 	. . . 
	ld hl,(08008h)		;0c87	2a 08 80 	* . . 
	ld (08006h),hl		;0c8a	22 06 80 	" . . 
	ld hl,(0800eh)		;0c8d	2a 0e 80 	* . . 
	ld (0800ch),hl		;0c90	22 0c 80 	" . . 
	ret			;0c93	c9 	. 
	call 009d9h		;0c94	cd d9 09 	. . . 
	ld a,(08271h)		;0c97	3a 71 82 	: q . 
	or a			;0c9a	b7 	. 
	ret z			;0c9b	c8 	. 
	ld hl,(0800ch)		;0c9c	2a 0c 80 	* . . 
	ex de,hl			;0c9f	eb 	. 
	ld hl,(08006h)		;0ca0	2a 06 80 	* . . 
	call 009f3h		;0ca3	cd f3 09 	. . . 
	call 00bbch		;0ca6	cd bc 0b 	. . . 
	ret			;0ca9	c9 	. 
	call 00b94h		;0caa	cd 94 0b 	. . . 
	ld hl,08017h		;0cad	21 17 80 	! . . 
	set 0,(hl)		;0cb0	cb c6 	. . 
	ld hl,(0800eh)		;0cb2	2a 0e 80 	* . . 
	ex de,hl			;0cb5	eb 	. 
	ld hl,(08008h)		;0cb6	2a 08 80 	* . . 
	call 009ebh		;0cb9	cd eb 09 	. . . 
	call 00bc3h		;0cbc	cd c3 0b 	. . . 
	ld a,e			;0cbf	7b 	{ 
	add a,l			;0cc0	85 	. 
	ret c			;0cc1	d8 	. 
	ld l,a			;0cc2	6f 	o 
	push hl			;0cc3	e5 	. 
	push de			;0cc4	d5 	. 
	ld h,018h		;0cc5	26 18 	& . 
	ld b,01ah		;0cc7	06 1a 	. . 
	ld a,l			;0cc9	7d 	} 
	and 007h		;0cca	e6 07 	. . 
	add a,0b0h		;0ccc	c6 b0 	. . 
	ld de,00020h		;0cce	11 20 00 	.   . 
	call 00a38h		;0cd1	cd 38 0a 	. 8 . 
	call 00a17h		;0cd4	cd 17 0a 	. . . 
	add hl,de			;0cd7	19 	. 
	djnz $-4		;0cd8	10 fa 	. . 
	pop de			;0cda	d1 	. 
	pop hl			;0cdb	e1 	. 
	ret			;0cdc	c9 	. 
	call 00c01h		;0cdd	cd 01 0c 	. . . 
	ld hl,08017h		;0ce0	21 17 80 	! . . 
	set 1,(hl)		;0ce3	cb ce 	. . 
	call 009ebh		;0ce5	cd eb 09 	. . . 
	ld hl,(08004h)		;0ce8	2a 04 80 	* . . 
	ld (08006h),hl		;0ceb	22 06 80 	" . . 
	ld l,000h		;0cee	2e 00 	. . 
	ld b,020h		;0cf0	06 20 	.   
	ld a,h			;0cf2	7c 	| 
	and 007h		;0cf3	e6 07 	. . 
	add a,0a8h		;0cf5	c6 a8 	. . 
	call 00a38h		;0cf7	cd 38 0a 	. 8 . 
	call 00a17h		;0cfa	cd 17 0a 	. . . 
	inc hl			;0cfd	23 	# 
	djnz $-4		;0cfe	10 fa 	. . 
	ret			;0d00	c9 	. 
	call 009d9h		;0d01	cd d9 09 	. . . 
	ld hl,(08006h)		;0d04	2a 06 80 	* . . 
	call 009f3h		;0d07	cd f3 09 	. . . 
	call 00beeh		;0d0a	cd ee 0b 	. . . 
	ret			;0d0d	c9 	. 
	call 00c63h		;0d0e	cd 63 0c 	. c . 
	ld hl,08017h		;0d11	21 17 80 	! . . 
	set 2,(hl)		;0d14	cb d6 	. . 
	ld hl,(08004h)		;0d16	2a 04 80 	* . . 
	call 009ebh		;0d19	cd eb 09 	. . . 
	ld (08006h),hl		;0d1c	22 06 80 	" . . 
	ld c,008h		;0d1f	0e 08 	. . 
	ld b,0d0h		;0d21	06 d0 	. . 
	ld a,l			;0d23	7d 	} 
	and 004h		;0d24	e6 04 	. . 
	jr z,$+4		;0d26	28 02 	( . 
	ld b,0d5h		;0d28	06 d5 	. . 
	ld a,h			;0d2a	7c 	| 
	and 004h		;0d2b	e6 04 	. . 
	ld a,b			;0d2d	78 	x 
	jr z,$+5		;0d2e	28 03 	( . 
	add a,00ah		;0d30	c6 0a 	. . 
	ld b,a			;0d32	47 	G 
	call 00a1fh		;0d33	cd 1f 0a 	. . . 
	push hl			;0d36	e5 	. 
	pop de			;0d37	d1 	. 
	inc b			;0d38	04 	. 
	ld a,d			;0d39	7a 	z 
	sub c			;0d3a	91 	. 
	jr c,$+7		;0d3b	38 05 	8 . 
	ld h,a			;0d3d	67 	g 
	ld a,b			;0d3e	78 	x 
	call 00a1fh		;0d3f	cd 1f 0a 	. . . 
	inc b			;0d42	04 	. 
	ld h,d			;0d43	62 	b 
	ld a,e			;0d44	7b 	{ 
	add a,c			;0d45	81 	. 
	jr c,$+7		;0d46	38 05 	8 . 
	ld l,a			;0d48	6f 	o 
	ld a,b			;0d49	78 	x 
	call 00a1fh		;0d4a	cd 1f 0a 	. . . 
	inc b			;0d4d	04 	. 
	ld l,e			;0d4e	6b 	k 
	ld a,d			;0d4f	7a 	z 
	add a,c			;0d50	81 	. 
	jr c,$+7		;0d51	38 05 	8 . 
	ld h,a			;0d53	67 	g 
	ld a,b			;0d54	78 	x 
	call 00a1fh		;0d55	cd 1f 0a 	. . . 
	inc b			;0d58	04 	. 
	ld h,d			;0d59	62 	b 
	ld a,e			;0d5a	7b 	{ 
	sub c			;0d5b	91 	. 
	ret c			;0d5c	d8 	. 
	ld l,a			;0d5d	6f 	o 
	ld a,b			;0d5e	78 	x 
	call 00a1fh		;0d5f	cd 1f 0a 	. . . 
	ret			;0d62	c9 	. 
	call 009d9h		;0d63	cd d9 09 	. . . 
	ld hl,(08006h)		;0d66	2a 06 80 	* . . 
	call 009f3h		;0d69	cd f3 09 	. . . 
	call 00c1fh		;0d6c	cd 1f 0c 	. . . 
	ret			;0d6f	c9 	. 
	call 008dch		;0d70	cd dc 08 	. . . 
	ld de,045ach		;0d73	11 ac 45 	. . E 
	jr $+31		;0d76	18 1d 	. . 
	ld hl,083ffh		;0d78	21 ff 83 	! . . 
	ld de,0e000h		;0d7b	11 00 e0 	. . . 
	ld bc,00400h		;0d7e	01 00 04 	. . . 
	ldir		;0d81	ed b0 	. . 
	xor a			;0d83	af 	. 
	ret			;0d84	c9 	. 
	push de			;0d85	d5 	. 
	ld hl,0e000h		;0d86	21 00 e0 	! . . 
	ld de,083ffh		;0d89	11 ff 83 	. . . 
	ld bc,00400h		;0d8c	01 00 04 	. . . 
	ldir		;0d8f	ed b0 	. . 
	pop de			;0d91	d1 	. 
	call 008d7h		;0d92	cd d7 08 	. . . 
	ld a,(de)			;0d95	1a 	. 
	inc de			;0d96	13 	. 
	cp 00dh		;0d97	fe 0d 	. . 
	ret z			;0d99	c8 	. 
	cp 00ah		;0d9a	fe 0a 	. . 
	jr z,$+7		;0d9c	28 05 	( . 
	call 008a0h		;0d9e	cd a0 08 	. . . 
	jr $-12		;0da1	18 f2 	. . 
	call 008b6h		;0da3	cd b6 08 	. . . 
	jr $-17		;0da6	18 ed 	. . 
	xor a			;0da8	af 	. 
	ret			;0da9	c9 	. 
	push bc			;0daa	c5 	. 
	push hl			;0dab	e5 	. 
	ld bc,00401h		;0dac	01 01 04 	. . . 
	ld hl,0e000h		;0daf	21 00 e0 	! . . 
	xor a			;0db2	af 	. 
	ld (08016h),a		;0db3	32 16 80 	2 . . 
	cpi		;0db6	ed a1 	. . 
	jp po,00ccah		;0db8	e2 ca 0c 	. . . 
	jr z,$-9		;0dbb	28 f5 	( . 
	or 020h		;0dbd	f6 20 	.   
	inc bc			;0dbf	03 	. 
	dec hl			;0dc0	2b 	+ 
	cpi		;0dc1	ed a1 	. . 
	jr z,$-17		;0dc3	28 ed 	( . 
	ld a,001h		;0dc5	3e 01 	> . 
	ld (08016h),a		;0dc7	32 16 80 	2 . . 
	pop hl			;0dca	e1 	. 
	pop bc			;0dcb	c1 	. 
	ret			;0dcc	c9 	. 
	push de			;0dcd	d5 	. 
	ld de,00000h		;0dce	11 00 00 	. . . 
	add hl,de			;0dd1	19 	. 
	pop de			;0dd2	d1 	. 
	ret			;0dd3	c9 	. 
	push af			;0dd4	f5 	. 
	push de			;0dd5	d5 	. 
	ld de,00000h		;0dd6	11 00 00 	. . . 
	add hl,de			;0dd9	19 	. 
	pop de			;0dda	d1 	. 
	pop af			;0ddb	f1 	. 
	ret			;0ddc	c9 	. 
	ld a,(0821ch)		;0ddd	3a 1c 82 	: . . 
	cp 001h		;0de0	fe 01 	. . 
	jp z,00d18h		;0de2	ca 18 0d 	. . . 
	ld a,(08217h)		;0de5	3a 17 82 	: . . 
	cp 001h		;0de8	fe 01 	. . 
	jp z,00cf8h		;0dea	ca f8 0c 	. . . 
	ld a,(0810fh)		;0ded	3a 0f 81 	: . . 
	ld hl,0810eh		;0df0	21 0e 81 	! . . 
	cp (hl)			;0df3	be 	. 
	jp z,00d18h		;0df4	ca 18 0d 	. . . 
	ld (hl),a			;0df7	77 	w 
	ld a,(0810fh)		;0df8	3a 0f 81 	: . . 
	cp 001h		;0dfb	fe 01 	. . 
	jp z,00d19h		;0dfd	ca 19 0d 	. . . 
	xor a			;0e00	af 	. 
	ld (08215h),a		;0e01	32 15 82 	2 . . 
	ld (08216h),a		;0e04	32 16 82 	2 . . 
	ld (08210h),a		;0e07	32 10 82 	2 . . 
	ld a,082h		;0e0a	3e 82 	> . 
	out (081h),a		;0e0c	d3 81 	. . 
	ld a,(0818ah)		;0e0e	3a 8a 81 	: . . 
	res 6,a		;0e11	cb b7 	. . 
	ld (0818ah),a		;0e13	32 8a 81 	2 . . 
	out (080h),a		;0e16	d3 80 	. . 
	ret			;0e18	c9 	. 
	ld a,038h		;0e19	3e 38 	> 8 
	call 017b3h		;0e1b	cd b3 17 	. . . 
	call 00ef0h		;0e1e	cd f0 0e 	. . . 
	ld hl,0818ah		;0e21	21 8a 81 	! . . 
	set 6,(hl)		;0e24	cb f6 	. . 
	ld a,(hl)			;0e26	7e 	~ 
	out (080h),a		;0e27	d3 80 	. . 
	call 025c3h		;0e29	cd c3 25 	. . % 
	ld a,041h		;0e2c	3e 41 	> A 
	call 0495ah		;0e2e	cd 5a 49 	. Z I 
	ld a,06fh		;0e31	3e 6f 	> o 
	call 048f2h		;0e33	cd f2 48 	. . H 
	ld a,075h		;0e36	3e 75 	> u 
	call 048f2h		;0e38	cd f2 48 	. . H 
	ld a,046h		;0e3b	3e 46 	> F 
	call 048f2h		;0e3d	cd f2 48 	. . H 
	xor a			;0e40	af 	. 
	ld (08253h),a		;0e41	32 53 82 	2 S . 
	ld (08217h),a		;0e44	32 17 82 	2 . . 
	ld (08212h),a		;0e47	32 12 82 	2 . . 
	ld (08211h),a		;0e4a	32 11 82 	2 . . 
	inc a			;0e4d	3c 	< 
	ld (08215h),a		;0e4e	32 15 82 	2 . . 
	ld (08216h),a		;0e51	32 16 82 	2 . . 
	ld (08210h),a		;0e54	32 10 82 	2 . . 
	ld a,(08116h)		;0e57	3a 16 81 	: . . 
	xor 001h		;0e5a	ee 01 	. . 
	ld (08116h),a		;0e5c	32 16 81 	2 . . 
	jr $-71		;0e5f	18 b7 	. . 
	ld a,(08217h)		;0e61	3a 17 82 	: . . 
	cp 001h		;0e64	fe 01 	. . 
	jp z,00d9eh		;0e66	ca 9e 0d 	. . . 
	ld a,(08143h)		;0e69	3a 43 81 	: C . 
	cp 001h		;0e6c	fe 01 	. . 
	jp z,00df0h		;0e6e	ca f0 0d 	. . . 
	ld a,(0821ch)		;0e71	3a 1c 82 	: . . 
	cp 001h		;0e74	fe 01 	. . 
	jp z,00dfah		;0e76	ca fa 0d 	. . . 
	ld a,(0810dh)		;0e79	3a 0d 81 	: . . 
	ld hl,0810ch		;0e7c	21 0c 81 	! . . 
	cp (hl)			;0e7f	be 	. 
	jp nz,00df1h		;0e80	c2 f1 0d 	. . . 
	ld a,(08117h)		;0e83	3a 17 81 	: . . 
	ld hl,08116h		;0e86	21 16 81 	! . . 
	cp (hl)			;0e89	be 	. 
	jp nz,00e1bh		;0e8a	c2 1b 0e 	. . . 
	ld a,(08140h)		;0e8d	3a 40 81 	: @ . 
	cp 004h		;0e90	fe 04 	. . 
	jr z,$+94		;0e92	28 5c 	( \ 
	ld a,(08119h)		;0e94	3a 19 81 	: . . 
	ld hl,08118h		;0e97	21 18 81 	! . . 
	cp (hl)			;0e9a	be 	. 
	jp z,00df0h		;0e9b	ca f0 0d 	. . . 
	ld a,(0810dh)		;0e9e	3a 0d 81 	: . . 
	or a			;0ea1	b7 	. 
	jp z,00e5bh		;0ea2	ca 5b 0e 	. [ . 
	ld a,(08224h)		;0ea5	3a 24 82 	: $ . 
	or a			;0ea8	b7 	. 
	jr z,$+9		;0ea9	28 07 	( . 
	xor a			;0eab	af 	. 
	ld (08224h),a		;0eac	32 24 82 	2 $ . 
	jp 00e2dh		;0eaf	c3 2d 0e 	. - . 
	xor a			;0eb2	af 	. 
	ld (08141h),a		;0eb3	32 41 81 	2 A . 
	ld a,028h		;0eb6	3e 28 	> ( 
	call 017b3h		;0eb8	cd b3 17 	. . . 
	xor a			;0ebb	af 	. 
	ld (08253h),a		;0ebc	32 53 82 	2 S . 
	ld (08217h),a		;0ebf	32 17 82 	2 . . 
	ld a,(08119h)		;0ec2	3a 19 81 	: . . 
	ld (08118h),a		;0ec5	32 18 81 	2 . . 
	ld a,082h		;0ec8	3e 82 	> . 
	out (081h),a		;0eca	d3 81 	. . 
	ld a,(0818ah)		;0ecc	3a 8a 81 	: . . 
	set 7,a		;0ecf	cb ff 	. . 
	set 5,a		;0ed1	cb ef 	. . 
	ld (0818ah),a		;0ed3	32 8a 81 	2 . . 
	out (080h),a		;0ed6	d3 80 	. . 
	call 02fd4h		;0ed8	cd d4 2f 	. . / 
	ld a,001h		;0edb	3e 01 	> . 
	ld (08116h),a		;0edd	32 16 81 	2 . . 
	ld (08117h),a		;0ee0	32 17 81 	2 . . 
	ld (0822ah),a		;0ee3	32 2a 82 	2 * . 
	ld a,(08218h)		;0ee6	3a 18 82 	: . . 
	or a			;0ee9	b7 	. 
	jp nz,00e6ch		;0eea	c2 6c 0e 	. l . 
	call 00e8fh		;0eed	cd 8f 0e 	. . . 
	ret			;0ef0	c9 	. 
	ld a,(0810dh)		;0ef1	3a 0d 81 	: . . 
	ld (0810ch),a		;0ef4	32 0c 81 	2 . . 
	jp 00d9eh		;0ef7	c3 9e 0d 	. . . 
	ld a,0ffh		;0efa	3e ff 	> . 
	call 04999h		;0efc	cd 99 49 	. . I 
	or a			;0eff	b7 	. 
	jp nz,00d79h		;0f00	c2 79 0d 	. y . 
	ld (0821ch),a		;0f03	32 1c 82 	2 . . 
	ld (08117h),a		;0f06	32 17 81 	2 . . 
	ld (08116h),a		;0f09	32 16 81 	2 . . 
	call 048f2h		;0f0c	cd f2 48 	. . H 
	call 00efbh		;0f0f	cd fb 0e 	. . . 
	inc a			;0f12	3c 	< 
	ld (08229h),a		;0f13	32 29 82 	2 ) . 
	call 016a5h		;0f16	cd a5 16 	. . . 
	jr $-41		;0f19	18 d5 	. . 
	ld a,(0810dh)		;0f1b	3a 0d 81 	: . . 
	or a			;0f1e	b7 	. 
	jr z,$-47		;0f1f	28 cf 	( . 
	ld a,(08143h)		;0f21	3a 43 81 	: C . 
	or a			;0f24	b7 	. 
	jr nz,$-53		;0f25	20 c9 	  . 
	ld a,(0822dh)		;0f27	3a 2d 82 	: - . 
	or a			;0f2a	b7 	. 
	jr nz,$-59		;0f2b	20 c3 	  . 
	ld a,(08117h)		;0f2d	3a 17 81 	: . . 
	ld (08116h),a		;0f30	32 16 81 	2 . . 
	or a			;0f33	b7 	. 
	jp nz,00d9eh		;0f34	c2 9e 0d 	. . . 
	xor a			;0f37	af 	. 
	ld (0821ch),a		;0f38	32 1c 82 	2 . . 
	ld (08224h),a		;0f3b	32 24 82 	2 $ . 
	call 048f2h		;0f3e	cd f2 48 	. . H 
	call 0495ah		;0f41	cd 5a 49 	. Z I 
	inc a			;0f44	3c 	< 
	ld (08229h),a		;0f45	32 29 82 	2 ) . 
	call 016a5h		;0f48	cd a5 16 	. . . 
	call 00efbh		;0f4b	cd fb 0e 	. . . 
	ld a,(08143h)		;0f4e	3a 43 81 	: C . 
	or a			;0f51	b7 	. 
	jp z,00df0h		;0f52	ca f0 0d 	. . . 
	ld (08224h),a		;0f55	32 24 82 	2 $ . 
	jp 00df0h		;0f58	c3 f0 0d 	. . . 
	call 00ef0h		;0f5b	cd f0 0e 	. . . 
	xor a			;0f5e	af 	. 
	ld (0821ch),a		;0f5f	32 1c 82 	2 . . 
	inc a			;0f62	3c 	< 
	ld (08229h),a		;0f63	32 29 82 	2 ) . 
	call 016a5h		;0f66	cd a5 16 	. . . 
	jp 00df0h		;0f69	c3 f0 0d 	. . . 
	ld a,(08119h)		;0f6c	3a 19 81 	: . . 
	cp 031h		;0f6f	fe 31 	. 1 
	jr z,$+27		;0f71	28 19 	( . 
	ld a,001h		;0f73	3e 01 	> . 
	ld (0821ch),a		;0f75	32 1c 82 	2 . . 
	ld (08837h),a		;0f78	32 37 88 	2 7 . 
	ld a,058h		;0f7b	3e 58 	> X 
	call 0495ah		;0f7d	cd 5a 49 	. Z I 
	ld a,(08121h)		;0f80	3a 21 81 	: ! . 
	ld (08120h),a		;0f83	32 20 81 	2   . 
	call 00ee1h		;0f86	cd e1 0e 	. . . 
	jp 00df0h		;0f89	c3 f0 0d 	. . . 
	xor a			;0f8c	af 	. 
	jr $-24		;0f8d	18 e6 	. . 
	ld a,(0e40dh)		;0f8f	3a 0d e4 	: . . 
	cp 000h		;0f92	fe 00 	. . 
	jr z,$+16		;0f94	28 0e 	( . 
	cp 001h		;0f96	fe 01 	. . 
	jr z,$+12		;0f98	28 0a 	( . 
	cp 002h		;0f9a	fe 02 	. . 
	jp z,00eb1h		;0f9c	ca b1 0e 	. . . 
	cp 003h		;0f9f	fe 03 	. . 
	jp z,00ebah		;0fa1	ca ba 0e 	. . . 
	ld a,(08119h)		;0fa4	3a 19 81 	: . . 
	sub 034h		;0fa7	d6 34 	. 4 
	jr nc,$+26		;0fa9	30 18 	0 . 
	xor a			;0fab	af 	. 
	ld (0821ch),a		;0fac	32 1c 82 	2 . . 
	jr $+28		;0faf	18 1a 	. . 
	ld a,(08119h)		;0fb1	3a 19 81 	: . . 
	sub 033h		;0fb4	d6 33 	. 3 
	jr nc,$+13		;0fb6	30 0b 	0 . 
	jr $-13		;0fb8	18 f1 	. . 
	ld a,(08119h)		;0fba	3a 19 81 	: . . 
	sub 033h		;0fbd	d6 33 	. 3 
	jr nc,$+4		;0fbf	30 02 	0 . 
	jr $-22		;0fc1	18 e8 	. . 
	ld a,001h		;0fc3	3e 01 	> . 
	ld (0821ch),a		;0fc5	32 1c 82 	2 . . 
	ld (08837h),a		;0fc8	32 37 88 	2 7 . 
	ld a,(0822bh)		;0fcb	3a 2b 82 	: + . 
	cp 001h		;0fce	fe 01 	. . 
	jr nz,$+15		;0fd0	20 0d 	  . 
	ld hl,0b934h		;0fd2	21 34 b9 	! 4 . 
	call 01b10h		;0fd5	cd 10 1b 	. . . 
	call 025e1h		;0fd8	cd e1 25 	. . % 
	ld a,056h		;0fdb	3e 56 	> V 
	jr $+4		;0fdd	18 02 	. . 
	ld a,042h		;0fdf	3e 42 	> B 
	call 0495ah		;0fe1	cd 5a 49 	. Z I 
	ld a,(08119h)		;0fe4	3a 19 81 	: . . 
	call 0495ah		;0fe7	cd 5a 49 	. Z I 
	ld a,068h		;0fea	3e 68 	> h 
	call 048f2h		;0fec	cd f2 48 	. . H 
	ret			;0fef	c9 	. 
	ld a,082h		;0ff0	3e 82 	> . 
	out (081h),a		;0ff2	d3 81 	. . 
	ld a,(0818ah)		;0ff4	3a 8a 81 	: . . 
	res 7,a		;0ff7	cb bf 	. . 
	jr $+9		;0ff9	18 07 	. . 
	ld a,082h		;0ffb	3e 82 	> . 
	out (081h),a		;0ffd	d3 81 	. . 
	ld a,(0818ah)		;0fff	3a 8a 81 	: . . 
	res 5,a		;1002	cb af 	. . 
	ld (0818ah),a		;1004	32 8a 81 	2 . . 
	out (080h),a		;1007	d3 80 	. . 
	ret			;1009	c9 	. 
	ld a,082h		;100a	3e 82 	> . 
	out (081h),a		;100c	d3 81 	. . 
	ld a,(0818ah)		;100e	3a 8a 81 	: . . 
	res 7,a		;1011	cb bf 	. . 
	set 5,a		;1013	cb ef 	. . 
	jr $-17		;1015	18 ed 	. . 
	ld a,082h		;1017	3e 82 	> . 
	out (081h),a		;1019	d3 81 	. . 
	ld a,(0818ah)		;101b	3a 8a 81 	: . . 
	res 7,a		;101e	cb bf 	. . 
	jr $-28		;1020	18 e2 	. . 
	ld a,(08241h)		;1022	3a 41 82 	: A . 
	or a			;1025	b7 	. 
	jp nz,01050h		;1026	c2 50 10 	. P . 
	ld a,(0823fh)		;1029	3a 3f 82 	: ? . 
	or a			;102c	b7 	. 
	jp nz,01050h		;102d	c2 50 10 	. P . 
	ld a,(08242h)		;1030	3a 42 82 	: B . 
	or a			;1033	b7 	. 
	jp nz,01050h		;1034	c2 50 10 	. P . 
	ld a,(08239h)		;1037	3a 39 82 	: 9 . 
	or a			;103a	b7 	. 
	jp nz,01000h		;103b	c2 00 10 	. . . 
	ld a,(08111h)		;103e	3a 11 81 	: . . 
	ld hl,08110h		;1041	21 10 81 	! . . 
	cp (hl)			;1044	be 	. 
	jp nz,00f48h		;1045	c2 48 0f 	. H . 
	ld a,(08111h)		;1048	3a 11 81 	: . . 
	ld (08110h),a		;104b	32 10 81 	2 . . 
	or a			;104e	b7 	. 
	jp z,01012h		;104f	ca 12 10 	. . . 
	call 00f17h		;1052	cd 17 0f 	. . . 
	ld hl,0818ah		;1055	21 8a 81 	! . . 
	set 4,(hl)		;1058	cb e6 	. . 
	ld a,(hl)			;105a	7e 	~ 
	out (080h),a		;105b	d3 80 	. . 
	ld a,(08118h)		;105d	3a 18 81 	: . . 
	ld hl,08119h		;1060	21 19 81 	! . . 
	cp (hl)			;1063	be 	. 
	jp nz,00fd9h		;1064	c2 d9 0f 	. . . 
	ld a,(08117h)		;1067	3a 17 81 	: . . 
	or a			;106a	b7 	. 
	jr z,$+7		;106b	28 05 	( . 
	ld a,068h		;106d	3e 68 	> h 
	call 048f2h		;106f	cd f2 48 	. . H 
	ld a,(0825ch)		;1072	3a 5c 82 	: \ . 
	or a			;1075	b7 	. 
	jr nz,$+7		;1076	20 05 	  . 
	ld a,03fh		;1078	3e 3f 	> ? 
	call 017b3h		;107a	cd b3 17 	. . . 
	xor a			;107d	af 	. 
	ld (08253h),a		;107e	32 53 82 	2 S . 
	inc a			;1081	3c 	< 
	ld (08211h),a		;1082	32 11 82 	2 . . 
	ld (08212h),a		;1085	32 12 82 	2 . . 
	call 0120bh		;1088	cd 0b 12 	. . . 
	ld a,(08117h)		;108b	3a 17 81 	: . . 
	ld hl,08116h		;108e	21 16 81 	! . . 
	cp (hl)			;1091	be 	. 
	jp nz,00fd1h		;1092	c2 d1 0f 	. . . 
	ld a,(08224h)		;1095	3a 24 82 	: $ . 
	or a			;1098	b7 	. 
	ld a,000h		;1099	3e 00 	> . 
	ld (08224h),a		;109b	32 24 82 	2 $ . 
	ld a,(08117h)		;109e	3a 17 81 	: . . 
	jr nz,$+48		;10a1	20 2e 	  . 
	ld a,(0825ch)		;10a3	3a 5c 82 	: \ . 
	or a			;10a6	b7 	. 
	jr nz,$+33		;10a7	20 1f 	  . 
	inc a			;10a9	3c 	< 
	ld (0825ch),a		;10aa	32 5c 82 	2 \ . 
	ld a,(08117h)		;10ad	3a 17 81 	: . . 
	or a			;10b0	b7 	. 
	jr nz,$+40		;10b1	20 26 	  & 
	ld a,(08119h)		;10b3	3a 19 81 	: . . 
	push af			;10b6	f5 	. 
	ld a,038h		;10b7	3e 38 	> 8 
	ld (08119h),a		;10b9	32 19 81 	2 . . 
	call 00fefh		;10bc	cd ef 0f 	. . . 
	pop af			;10bf	f1 	. 
	ld (08119h),a		;10c0	32 19 81 	2 . . 
	call 00e37h		;10c3	cd 37 0e 	. 7 . 
	jr $+58		;10c6	18 38 	. 8 
	ld a,(08117h)		;10c8	3a 17 81 	: . . 
	or a			;10cb	b7 	. 
	call nz,00f0ah		;10cc	c4 0a 0f 	. . . 
	jr $+49		;10cf	18 2f 	. / 
	or a			;10d1	b7 	. 
	jr nz,$+7		;10d2	20 05 	  . 
	call 00e37h		;10d4	cd 37 0e 	. 7 . 
	jr $+41		;10d7	18 27 	. ' 
	ld a,(08119h)		;10d9	3a 19 81 	: . . 
	ld (08118h),a		;10dc	32 18 81 	2 . . 
	ld a,001h		;10df	3e 01 	> . 
	ld (08117h),a		;10e1	32 17 81 	2 . . 
	ld (08116h),a		;10e4	32 16 81 	2 . . 
	ld a,068h		;10e7	3e 68 	> h 
	call 048f2h		;10e9	cd f2 48 	. . H 
	call 00f0ah		;10ec	cd 0a 0f 	. . . 
	ld a,057h		;10ef	3e 57 	> W 
	call 0495ah		;10f1	cd 5a 49 	. Z I 
	call 01057h		;10f4	cd 57 10 	. W . 
	call 01b76h		;10f7	cd 76 1b 	. v . 
	ld a,(08119h)		;10fa	3a 19 81 	: . . 
	call 0495ah		;10fd	cd 5a 49 	. Z I 
	ret			;1100	c9 	. 
	ld a,001h		;1101	3e 01 	> . 
	ld (0810dh),a		;1103	32 0d 81 	2 . . 
	ld (0810ch),a		;1106	32 0c 81 	2 . . 
	xor a			;1109	af 	. 
	ld (08111h),a		;110a	32 11 81 	2 . . 
	ld (08110h),a		;110d	32 10 81 	2 . . 
	jr $-16		;1110	18 ee 	. . 
	ld a,(0825ch)		;1112	3a 5c 82 	: \ . 
	or a			;1115	b7 	. 
	jp z,01000h		;1116	ca 00 10 	. . . 
	ld a,(0e40dh)		;1119	3a 0d e4 	: . . 
	cp 000h		;111c	fe 00 	. . 
	jr z,$+6		;111e	28 04 	( . 
	cp 003h		;1120	fe 03 	. . 
	jr nz,$+5		;1122	20 03 	  . 
	call 02e18h		;1124	cd 18 2e 	. . . 
	ld a,082h		;1127	3e 82 	> . 
	out (081h),a		;1129	d3 81 	. . 
	ld a,(0818ah)		;112b	3a 8a 81 	: . . 
	res 4,a		;112e	cb a7 	. . 
	ld (0818ah),a		;1130	32 8a 81 	2 . . 
	out (080h),a		;1133	d3 80 	. . 
	xor a			;1135	af 	. 
	call 0120bh		;1136	cd 0b 12 	. . . 
	ld (0825ch),a		;1139	32 5c 82 	2 \ . 
	ld a,(08115h)		;113c	3a 15 81 	: . . 
	or a			;113f	b7 	. 
	jp nz,0104dh		;1140	c2 4d 10 	. M . 
	ld (08211h),a		;1143	32 11 82 	2 . . 
	ld (08212h),a		;1146	32 12 82 	2 . . 
	xor a			;1149	af 	. 
	ld (0e408h),a		;114a	32 08 e4 	2 . . 
	jp 01000h		;114d	c3 00 10 	. . . 
	xor a			;1150	af 	. 
	ld (08111h),a		;1151	32 11 81 	2 . . 
	jp 01012h		;1154	c3 12 10 	. . . 
	ld hl,08080h		;1157	21 80 80 	! . . 
	ld (08004h),hl		;115a	22 04 80 	" . . 
	ld (08006h),hl		;115d	22 06 80 	" . . 
	ld (0e40bh),hl		;1160	22 0b e4 	" . . 
	ld hl,03f3fh		;1163	21 3f 3f 	! ? ? 
	ld (0800ah),hl		;1166	22 0a 80 	" . . 
	ld (0800ch),hl		;1169	22 0c 80 	" . . 
	ld (0e409h),hl		;116c	22 09 e4 	" . . 
	ld a,002h		;116f	3e 02 	> . 
	ld (0e408h),a		;1171	32 08 e4 	2 . . 
	ret			;1174	c9 	. 
	ld a,(08241h)		;1175	3a 41 82 	: A . 
	or a			;1178	b7 	. 
	jp nz,011f7h		;1179	c2 f7 11 	. . . 
	ld a,(0823fh)		;117c	3a 3f 82 	: ? . 
	or a			;117f	b7 	. 
	jp nz,011f7h		;1180	c2 f7 11 	. . . 
	ld a,(08242h)		;1183	3a 42 82 	: B . 
	or a			;1186	b7 	. 
	jp nz,011f7h		;1187	c2 f7 11 	. . . 
	ld a,(08239h)		;118a	3a 39 82 	: 9 . 
	or a			;118d	b7 	. 
	jp nz,010a1h		;118e	c2 a1 10 	. . . 
	ld a,(08115h)		;1191	3a 15 81 	: . . 
	ld hl,08114h		;1194	21 14 81 	! . . 
	cp (hl)			;1197	be 	. 
	jr nz,$+10		;1198	20 08 	  . 
	ld a,(08253h)		;119a	3a 53 82 	: S . 
	or a			;119d	b7 	. 
	jp nz,010ebh		;119e	c2 eb 10 	. . . 
	ret			;11a1	c9 	. 
	ld a,(08115h)		;11a2	3a 15 81 	: . . 
	ld (08114h),a		;11a5	32 14 81 	2 . . 
	or a			;11a8	b7 	. 
	jp z,011afh		;11a9	ca af 11 	. . . 
	call 00f17h		;11ac	cd 17 0f 	. . . 
	ld hl,0818ah		;11af	21 8a 81 	! . . 
	set 2,(hl)		;11b2	cb d6 	. . 
	ld a,(hl)			;11b4	7e 	~ 
	out (080h),a		;11b5	d3 80 	. . 
	ld a,(0825bh)		;11b7	3a 5b 82 	: [ . 
	or a			;11ba	b7 	. 
	jr nz,$+7		;11bb	20 05 	  . 
	ld a,03fh		;11bd	3e 3f 	> ? 
	call 017b3h		;11bf	cd b3 17 	. . . 
	ld hl,00000h		;11c2	21 00 00 	! . . 
	ld (08004h),hl		;11c5	22 04 80 	" . . 
	call 01215h		;11c8	cd 15 12 	. . . 
	call 01233h		;11cb	cd 33 12 	. 3 . 
	ld a,06ch		;11ce	3e 6c 	> l 
	call 048f2h		;11d0	cd f2 48 	. . H 
	ld a,(08117h)		;11d3	3a 17 81 	: . . 
	or a			;11d6	b7 	. 
	jr z,$+7		;11d7	28 05 	( . 
	ld a,068h		;11d9	3e 68 	> h 
	call 048f2h		;11db	cd f2 48 	. . H 
	ld a,001h		;11de	3e 01 	> . 
	ld (08211h),a		;11e0	32 11 82 	2 . . 
	ld (08212h),a		;11e3	32 12 82 	2 . . 
	call 01205h		;11e6	cd 05 12 	. . . 
	jr $+89		;11e9	18 57 	. W 
	ld a,(08117h)		;11eb	3a 17 81 	: . . 
	ld hl,08116h		;11ee	21 16 81 	! . . 
	cp (hl)			;11f1	be 	. 
	jr z,$+11		;11f2	28 09 	( . 
	ld (08116h),a		;11f4	32 16 81 	2 . . 
	or a			;11f7	b7 	. 
	jr nz,$-86		;11f8	20 a8 	  . 
	call 00e37h		;11fa	cd 37 0e 	. 7 . 
	ld a,(08117h)		;11fd	3a 17 81 	: . . 
	or a			;1200	b7 	. 
	call nz,00f0ah		;1201	c4 0a 0f 	. . . 
	ld hl,(08004h)		;1204	2a 04 80 	* . . 
	ld a,(08182h)		;1207	3a 82 81 	: . . 
	cp l			;120a	bd 	. 
	jr nz,$+55		;120b	20 35 	  5 
	ld a,(08183h)		;120d	3a 83 81 	: . . 
	cp 0f8h		;1210	fe f8 	. . 
	jr c,$+7		;1212	38 05 	8 . 
	ld a,0f8h		;1214	3e f8 	> . 
	ld (08183h),a		;1216	32 83 81 	2 . . 
	cp h			;1219	bc 	. 
	jr nz,$+40		;121a	20 26 	  & 
	ld hl,(0800ah)		;121c	2a 0a 80 	* . . 
	ld a,(08184h)		;121f	3a 84 81 	: . . 
	cp l			;1222	bd 	. 
	jr nz,$+31		;1223	20 1d 	  . 
	ld a,(08185h)		;1225	3a 85 81 	: . . 
	ld (08185h),a		;1228	32 85 81 	2 . . 
	cp h			;122b	bc 	. 
	jr nz,$+22		;122c	20 14 	  . 
	ld a,(08119h)		;122e	3a 19 81 	: . . 
	ld hl,08118h		;1231	21 18 81 	! . . 
	cp (hl)			;1234	be 	. 
	jp z,010a1h		;1235	ca a1 10 	. . . 
	ld a,001h		;1238	3e 01 	> . 
	ld (08117h),a		;123a	32 17 81 	2 . . 
	ld (08116h),a		;123d	32 16 81 	2 . . 
	jr $+75		;1240	18 49 	. I 
	ld a,(08182h)		;1242	3a 82 81 	: . . 
	ld l,a			;1245	6f 	o 
	ld a,(08183h)		;1246	3a 83 81 	: . . 
	ld h,a			;1249	67 	g 
	ld (08004h),hl		;124a	22 04 80 	" . . 
	ld (08006h),hl		;124d	22 06 80 	" . . 
	ld (0e40bh),hl		;1250	22 0b e4 	" . . 
	ld a,(08184h)		;1253	3a 84 81 	: . . 
	ld l,a			;1256	6f 	o 
	ld a,(08185h)		;1257	3a 85 81 	: . . 
	ld h,a			;125a	67 	g 
	ld (0800ah),hl		;125b	22 0a 80 	" . . 
	ld (0800ch),hl		;125e	22 0c 80 	" . . 
	ld (0e409h),hl		;1261	22 09 e4 	" . . 
	ld a,001h		;1264	3e 01 	> . 
	ld (0e408h),a		;1266	32 08 e4 	2 . . 
	ld a,(08117h)		;1269	3a 17 81 	: . . 
	or a			;126c	b7 	. 
	jr nz,$+30		;126d	20 1c 	  . 
	ld a,(0825bh)		;126f	3a 5b 82 	: [ . 
	or a			;1272	b7 	. 
	ld a,(08119h)		;1273	3a 19 81 	: . . 
	ld b,a			;1276	47 	G 
	push bc			;1277	c5 	. 
	ld a,038h		;1278	3e 38 	> 8 
	ld (08119h),a		;127a	32 19 81 	2 . . 
	call z,0119eh		;127d	cc 9e 11 	. . . 
	pop bc			;1280	c1 	. 
	ld a,b			;1281	78 	x 
	ld (08119h),a		;1282	32 19 81 	2 . . 
	call 00e37h		;1285	cd 37 0e 	. 7 . 
	jp 010a1h		;1288	c3 a1 10 	. . . 
	call 00f0ah		;128b	cd 0a 0f 	. . . 
	ld a,(08119h)		;128e	3a 19 81 	: . . 
	ld (08118h),a		;1291	32 18 81 	2 . . 
	ld a,068h		;1294	3e 68 	> h 
	call 048f2h		;1296	cd f2 48 	. . H 
	ld a,06ch		;1299	3e 6c 	> l 
	call 048f2h		;129b	cd f2 48 	. . H 
	ld a,057h		;129e	3e 57 	> W 
	call 0495ah		;12a0	cd 5a 49 	. Z I 
	call 01b76h		;12a3	cd 76 1b 	. v . 
	ld a,(08119h)		;12a6	3a 19 81 	: . . 
	call 0495ah		;12a9	cd 5a 49 	. Z I 
	jp 010a1h		;12ac	c3 a1 10 	. . . 
	ld a,(0825bh)		;12af	3a 5b 82 	: [ . 
	or a			;12b2	b7 	. 
	jp z,011feh		;12b3	ca fe 11 	. . . 
	ld a,(0e40dh)		;12b6	3a 0d e4 	: . . 
	cp 000h		;12b9	fe 00 	. . 
	jr z,$+6		;12bb	28 04 	( . 
	cp 003h		;12bd	fe 03 	. . 
	jr nz,$+5		;12bf	20 03 	  . 
	call 02e18h		;12c1	cd 18 2e 	. . . 
	ld a,082h		;12c4	3e 82 	> . 
	out (081h),a		;12c6	d3 81 	. . 
	ld a,(0818ah)		;12c8	3a 8a 81 	: . . 
	res 2,a		;12cb	cb 97 	. . 
	ld (0818ah),a		;12cd	32 8a 81 	2 . . 
	out (080h),a		;12d0	d3 80 	. . 
	call 01224h		;12d2	cd 24 12 	. $ . 
	call 01242h		;12d5	cd 42 12 	. B . 
	ld a,06bh		;12d8	3e 6b 	> k 
	call 048f2h		;12da	cd f2 48 	. . H 
	ld a,(08111h)		;12dd	3a 11 81 	: . . 
	or a			;12e0	b7 	. 
	jr nz,$+8		;12e1	20 06 	  . 
	ld (08212h),a		;12e3	32 12 82 	2 . . 
	ld (08211h),a		;12e6	32 11 82 	2 . . 
	xor a			;12e9	af 	. 
	ld (08017h),a		;12ea	32 17 80 	2 . . 
	xor a			;12ed	af 	. 
	ld (0e408h),a		;12ee	32 08 e4 	2 . . 
	call 01205h		;12f1	cd 05 12 	. . . 
	jp 010a1h		;12f4	c3 a1 10 	. . . 
	xor a			;12f7	af 	. 
	ld (08115h),a		;12f8	32 15 81 	2 . . 
	jp 011afh		;12fb	c3 af 11 	. . . 
	xor a			;12fe	af 	. 
	ld (08253h),a		;12ff	32 53 82 	2 S . 
	jp 010a1h		;1302	c3 a1 10 	. . . 
	ld (08253h),a		;1305	32 53 82 	2 S . 
	ld (0825bh),a		;1308	32 5b 82 	2 [ . 
	ld (08210h),a		;130b	32 10 82 	2 . . 
	ld (08213h),a		;130e	32 13 82 	2 . . 
	ld (08214h),a		;1311	32 14 82 	2 . . 
	ret			;1314	c9 	. 
	ld a,084h		;1315	3e 84 	> . 
	out (081h),a		;1317	d3 81 	. . 
	ld a,(0818ch)		;1319	3a 8c 81 	: . . 
	or 0c0h		;131c	f6 c0 	. . 
	ld (0818ch),a		;131e	32 8c 81 	2 . . 
	out (080h),a		;1321	d3 80 	. . 
	ret			;1323	c9 	. 
	ld a,084h		;1324	3e 84 	> . 
	out (081h),a		;1326	d3 81 	. . 
	ld a,(0818ch)		;1328	3a 8c 81 	: . . 
	and 03fh		;132b	e6 3f 	. ? 
	ld (0818ch),a		;132d	32 8c 81 	2 . . 
	out (080h),a		;1330	d3 80 	. . 
	ret			;1332	c9 	. 
	ld a,085h		;1333	3e 85 	> . 
	out (081h),a		;1335	d3 81 	. . 
	ld a,(0818dh)		;1337	3a 8d 81 	: . . 
	or 030h		;133a	f6 30 	. 0 
	ld (0818dh),a		;133c	32 8d 81 	2 . . 
	out (080h),a		;133f	d3 80 	. . 
	ret			;1341	c9 	. 
	ld a,085h		;1342	3e 85 	> . 
	out (081h),a		;1344	d3 81 	. . 
	ld a,(0818dh)		;1346	3a 8d 81 	: . . 
	and 0cfh		;1349	e6 cf 	. . 
	ld (0818dh),a		;134b	32 8d 81 	2 . . 
	out (080h),a		;134e	d3 80 	. . 
	ret			;1350	c9 	. 
	ld a,(08241h)		;1351	3a 41 82 	: A . 
	or a			;1354	b7 	. 
	jp nz,01376h		;1355	c2 76 13 	. v . 
	ld a,(0823fh)		;1358	3a 3f 82 	: ? . 
	or a			;135b	b7 	. 
	jp nz,01376h		;135c	c2 76 13 	. v . 
	ld a,(08242h)		;135f	3a 42 82 	: B . 
	or a			;1362	b7 	. 
	jp nz,01376h		;1363	c2 76 13 	. v . 
	ld a,(08239h)		;1366	3a 39 82 	: 9 . 
	or a			;1369	b7 	. 
	jp nz,0131ch		;136a	c2 1c 13 	. . . 
	ld a,(08211h)		;136d	3a 11 82 	: . . 
	or a			;1370	b7 	. 
	jp nz,0132ah		;1371	c2 2a 13 	. * . 
	ld a,(08140h)		;1374	3a 40 81 	: @ . 
	and 008h		;1377	e6 08 	. . 
	or a			;1379	b7 	. 
	jp z,01376h		;137a	ca 76 13 	. v . 
	ld a,(0826ah)		;137d	3a 6a 82 	: j . 
	or a			;1380	b7 	. 
	jr nz,$+9		;1381	20 07 	  . 
	ld a,003h		;1383	3e 03 	> . 
	call 017b3h		;1385	cd b3 17 	. . . 
	jr $+38		;1388	18 24 	. $ 
	call 01215h		;138a	cd 15 12 	. . . 
	set 5,a		;138d	cb ef 	. . 
	ld (0818ch),a		;138f	32 8c 81 	2 . . 
	out (080h),a		;1392	d3 80 	. . 
	ld a,(0822ah)		;1394	3a 2a 82 	: * . 
	or a			;1397	b7 	. 
	jr nz,$+22		;1398	20 14 	  . 
	ld a,001h		;139a	3e 01 	> . 
	ld (0e402h),a		;139c	32 02 e4 	2 . . 
	ld hl,(08004h)		;139f	2a 04 80 	* . . 
	ld a,(08182h)		;13a2	3a 82 81 	: . . 
	cp l			;13a5	bd 	. 
	jr nz,$+8		;13a6	20 06 	  . 
	ld a,(08183h)		;13a8	3a 83 81 	: . . 
	cp h			;13ab	bc 	. 
	jr z,$+113		;13ac	28 6f 	( o 
	ld a,06ch		;13ae	3e 6c 	> l 
	call 048f2h		;13b0	cd f2 48 	. . H 
	ld a,(08182h)		;13b3	3a 82 81 	: . . 
	ld l,a			;13b6	6f 	o 
	ld a,(08183h)		;13b7	3a 83 81 	: . . 
	ld h,a			;13ba	67 	g 
	ld (08004h),hl		;13bb	22 04 80 	" . . 
	ld (08006h),hl		;13be	22 06 80 	" . . 
	ld (0e403h),hl		;13c1	22 03 e4 	" . . 
	ld a,001h		;13c4	3e 01 	> . 
	ld (0e402h),a		;13c6	32 02 e4 	2 . . 
	ld a,001h		;13c9	3e 01 	> . 
	ld (0826ah),a		;13cb	32 6a 82 	2 j . 
	ld (08231h),a		;13ce	32 31 82 	2 1 . 
	ld a,(08220h)		;13d1	3a 20 82 	:   . 
	or a			;13d4	b7 	. 
	jr z,$+58		;13d5	28 38 	( 8 
	ld a,(0822ah)		;13d7	3a 2a 82 	: * . 
	or a			;13da	b7 	. 
	jr nz,$+8		;13db	20 06 	  . 
	ld a,(0822dh)		;13dd	3a 2d 82 	: - . 
	or a			;13e0	b7 	. 
	jr z,$+46		;13e1	28 2c 	( , 
	ld a,053h		;13e3	3e 53 	> S 
	call 0495ah		;13e5	cd 5a 49 	. Z I 
	call 01b8bh		;13e8	cd 8b 1b 	. . . 
	ld a,068h		;13eb	3e 68 	> h 
	call 048f2h		;13ed	cd f2 48 	. . H 
	ld a,06ch		;13f0	3e 6c 	> l 
	call 048f2h		;13f2	cd f2 48 	. . H 
	ld hl,0b91fh		;13f5	21 1f b9 	! . . 
	call 01b10h		;13f8	cd 10 1b 	. . . 
	call 02fd4h		;13fb	cd d4 2f 	. . / 
	call 04cebh		;13fe	cd eb 4c 	. . L 
	ld a,001h		;1401	3e 01 	> . 
	ld (08229h),a		;1403	32 29 82 	2 ) . 
	call 01e80h		;1406	cd 80 1e 	. . . 
	call 01710h		;1409	cd 10 17 	. . . 
	call 01785h		;140c	cd 85 17 	. . . 
	xor a			;140f	af 	. 
	ld (08217h),a		;1410	32 17 82 	2 . . 
	ld (08252h),a		;1413	32 52 82 	2 R . 
	ld (0822ch),a		;1416	32 2c 82 	2 , . 
	ld (0822ah),a		;1419	32 2a 82 	2 * . 
	ret			;141c	c9 	. 
	ld a,06ch		;141d	3e 6c 	> l 
	call 048f2h		;141f	cd f2 48 	. . H 
	ld a,(0826ah)		;1422	3a 6a 82 	: j . 
	or a			;1425	b7 	. 
	jr nz,$-23		;1426	20 e7 	  . 
	jr $-122		;1428	18 84 	. . 
	ld a,084h		;142a	3e 84 	> . 
	out (081h),a		;142c	d3 81 	. . 
	ld a,(0818ch)		;142e	3a 8c 81 	: . . 
	res 5,a		;1431	cb af 	. . 
	ld (0818ch),a		;1433	32 8c 81 	2 . . 
	out (080h),a		;1436	d3 80 	. . 
	ld a,(08143h)		;1438	3a 43 81 	: C . 
	or a			;143b	b7 	. 
	jr nz,$+30		;143c	20 1c 	  . 
	ld a,(08140h)		;143e	3a 40 81 	: @ . 
	bit 2,a		;1441	cb 57 	. W 
	jr nz,$+23		;1443	20 15 	  . 
	ld a,(08115h)		;1445	3a 15 81 	: . . 
	or a			;1448	b7 	. 
	jr nz,$+17		;1449	20 0f 	  . 
	ld a,(0821eh)		;144b	3a 1e 82 	: . . 
	or a			;144e	b7 	. 
	jr nz,$+11		;144f	20 09 	  . 
	ld a,(08125h)		;1451	3a 25 81 	: % . 
	or a			;1454	b7 	. 
	jr nz,$+5		;1455	20 03 	  . 
	call 01224h		;1457	cd 24 12 	. $ . 
	ld a,(08252h)		;145a	3a 52 82 	: R . 
	or a			;145d	b7 	. 
	jp nz,0131ch		;145e	c2 1c 13 	. . . 
	xor a			;1461	af 	. 
	ld (08217h),a		;1462	32 17 82 	2 . . 
	ld (0826ah),a		;1465	32 6a 82 	2 j . 
	ld a,(08140h)		;1468	3a 40 81 	: @ . 
	res 3,a		;146b	cb 9f 	. . 
	ld (08140h),a		;146d	32 40 81 	2 @ . 
	call 01dech		;1470	cd ec 1d 	. . . 
	jp 013deh		;1473	c3 de 13 	. . . 
	ld a,(08252h)		;1476	3a 52 82 	: R . 
	or a			;1479	b7 	. 
	jp nz,0131ch		;147a	c2 1c 13 	. . . 
	ld a,084h		;147d	3e 84 	> . 
	out (081h),a		;147f	d3 81 	. . 
	ld a,(0818ch)		;1481	3a 8c 81 	: . . 
	res 5,a		;1484	cb af 	. . 
	ld (0818ch),a		;1486	32 8c 81 	2 . . 
	out (080h),a		;1489	d3 80 	. . 
	ld a,000h		;148b	3e 00 	> . 
	ld (0e402h),a		;148d	32 02 e4 	2 . . 
	ld a,(08143h)		;1490	3a 43 81 	: C . 
	or a			;1493	b7 	. 
	jr nz,$+24		;1494	20 16 	  . 
	ld a,(08140h)		;1496	3a 40 81 	: @ . 
	bit 2,a		;1499	cb 57 	. W 
	jr nz,$+17		;149b	20 0f 	  . 
	ld a,(08115h)		;149d	3a 15 81 	: . . 
	or a			;14a0	b7 	. 
	jr nz,$+11		;14a1	20 09 	  . 
	ld a,(0821eh)		;14a3	3a 1e 82 	: . . 
	or a			;14a6	b7 	. 
	jr nz,$+5		;14a7	20 03 	  . 
	call 01224h		;14a9	cd 24 12 	. $ . 
	ld hl,(08004h)		;14ac	2a 04 80 	* . . 
	dec hl			;14af	2b 	+ 
	dec hl			;14b0	2b 	+ 
	ld (08004h),hl		;14b1	22 04 80 	" . . 
	call 0179ch		;14b4	cd 9c 17 	. . . 
	xor a			;14b7	af 	. 
	ld (0e402h),a		;14b8	32 02 e4 	2 . . 
	ld (0826ah),a		;14bb	32 6a 82 	2 j . 
	ld a,(0822dh)		;14be	3a 2d 82 	: - . 
	or a			;14c1	b7 	. 
	jr z,$+9		;14c2	28 07 	( . 
	xor a			;14c4	af 	. 
	ld (0822dh),a		;14c5	32 2d 82 	2 - . 
	ld (08117h),a		;14c8	32 17 81 	2 . . 
	xor a			;14cb	af 	. 
	ld (08231h),a		;14cc	32 31 82 	2 1 . 
	ld a,(0810dh)		;14cf	3a 0d 81 	: . . 
	or a			;14d2	b7 	. 
	jr z,$+8		;14d3	28 06 	( . 
	call 013fdh		;14d5	cd fd 13 	. . . 
	call 01dech		;14d8	cd ec 1d 	. . . 
	call 013e9h		;14db	cd e9 13 	. . . 
	xor a			;14de	af 	. 
	ld (08220h),a		;14df	32 20 82 	2   . 
	inc a			;14e2	3c 	< 
	ld (08252h),a		;14e3	32 52 82 	2 R . 
	jp 0131ch		;14e6	c3 1c 13 	. . . 
	ld a,(0822ch)		;14e9	3a 2c 82 	: , . 
	or a			;14ec	b7 	. 
	ret nz			;14ed	c0 	. 
	inc a			;14ee	3c 	< 
	ld (0822ch),a		;14ef	32 2c 82 	2 , . 
	ld a,(08115h)		;14f2	3a 15 81 	: . . 
	or a			;14f5	b7 	. 
	ret nz			;14f6	c0 	. 
	ld a,06bh		;14f7	3e 6b 	> k 
	call 048f2h		;14f9	cd f2 48 	. . H 
	ret			;14fc	c9 	. 
	ld a,(08140h)		;14fd	3a 40 81 	: @ . 
	and 002h		;1500	e6 02 	. . 
	ret nz			;1502	c0 	. 
	ld a,(0821fh)		;1503	3a 1f 82 	: . . 
	or a			;1506	b7 	. 
	ret nz			;1507	c0 	. 
	ld a,(0822bh)		;1508	3a 2b 82 	: + . 
	or a			;150b	b7 	. 
	ret nz			;150c	c0 	. 
	ld a,(08117h)		;150d	3a 17 81 	: . . 
	or a			;1510	b7 	. 
	ret nz			;1511	c0 	. 
	call 027bch		;1512	cd bc 27 	. . ' 
	ret			;1515	c9 	. 
	ld a,(08241h)		;1516	3a 41 82 	: A . 
	or a			;1519	b7 	. 
	jp nz,01546h		;151a	c2 46 15 	. F . 
	ld a,(0823fh)		;151d	3a 3f 82 	: ? . 
	or a			;1520	b7 	. 
	jp nz,01546h		;1521	c2 46 15 	. F . 
	ld a,(08242h)		;1524	3a 42 82 	: B . 
	or a			;1527	b7 	. 
	jp nz,01546h		;1528	c2 46 15 	. F . 
	ld a,(08239h)		;152b	3a 39 82 	: 9 . 
	or a			;152e	b7 	. 
	jp nz,0151dh		;152f	c2 1d 15 	. . . 
	ld a,(08212h)		;1532	3a 12 82 	: . . 
	or a			;1535	b7 	. 
	jp nz,01546h		;1536	c2 46 15 	. F . 
	ld a,(08140h)		;1539	3a 40 81 	: @ . 
	and 004h		;153c	e6 04 	. . 
	or a			;153e	b7 	. 
	jp z,01564h		;153f	ca 64 15 	. d . 
	ld a,(0826bh)		;1542	3a 6b 82 	: k . 
	or a			;1545	b7 	. 
	jr nz,$+30		;1546	20 1c 	  . 
	ld a,005h		;1548	3e 05 	> . 
	call 017b3h		;154a	cd b3 17 	. . . 
	ld a,084h		;154d	3e 84 	> . 
	out (081h),a		;154f	d3 81 	. . 
	ld a,(0818ch)		;1551	3a 8c 81 	: . . 
	set 4,a		;1554	cb e7 	. . 
	res 6,a		;1556	cb b7 	. . 
	set 7,a		;1558	cb ff 	. . 
	ld (0818ch),a		;155a	32 8c 81 	2 . . 
	out (080h),a		;155d	d3 80 	. . 
	ld a,001h		;155f	3e 01 	> . 
	ld (08231h),a		;1561	32 31 82 	2 1 . 
	ld a,(0822ah)		;1564	3a 2a 82 	: * . 
	or a			;1567	b7 	. 
	jr nz,$+17		;1568	20 0f 	  . 
	ld a,001h		;156a	3e 01 	> . 
	ld (0e400h),a		;156c	32 00 e4 	2 . . 
	ld hl,(08004h)		;156f	2a 04 80 	* . . 
	ld a,(08183h)		;1572	3a 83 81 	: . . 
	cp h			;1575	bc 	. 
	jp z,01531h		;1576	ca 31 15 	. 1 . 
	nop			;1579	00 	. 
	ld a,06ch		;157a	3e 6c 	> l 
	call 048f2h		;157c	cd f2 48 	. . H 
	ld a,(08183h)		;157f	3a 83 81 	: . . 
	ld hl,(08004h)		;1582	2a 04 80 	* . . 
	ld h,a			;1585	67 	g 
	ld (08004h),hl		;1586	22 04 80 	" . . 
	ld (08006h),hl		;1589	22 06 80 	" . . 
	ld (0e401h),a		;158c	32 01 e4 	2 . . 
	ld a,001h		;158f	3e 01 	> . 
	ld (0e400h),a		;1591	32 00 e4 	2 . . 
	ld a,(08220h)		;1594	3a 20 82 	:   . 
	or a			;1597	b7 	. 
	jr z,$+115		;1598	28 71 	( q 
	ld a,(0822ah)		;159a	3a 2a 82 	: * . 
	or a			;159d	b7 	. 
	jr nz,$+8		;159e	20 06 	  . 
	ld a,(0822dh)		;15a0	3a 2d 82 	: - . 
	or a			;15a3	b7 	. 
	jr z,$+103		;15a4	28 65 	( e 
	call 01e53h		;15a6	cd 53 1e 	. S . 
	ld a,(0a016h)		;15a9	3a 16 a0 	: . . 
	cp 04eh		;15ac	fe 4e 	. N 
	jr z,$+93		;15ae	28 5b 	( [ 
	push af			;15b0	f5 	. 
	ld hl,0b926h		;15b1	21 26 b9 	! & . 
	call 01b10h		;15b4	cd 10 1b 	. . . 
	call 04cebh		;15b7	cd eb 4c 	. . L 
	pop af			;15ba	f1 	. 
	ld (0e6a0h),a		;15bb	32 a0 e6 	2 . . 
	ld a,(08119h)		;15be	3a 19 81 	: . . 
	ld hl,08118h		;15c1	21 18 81 	! . . 
	cp (hl)			;15c4	be 	. 
	jr nz,$+12		;15c5	20 0a 	  . 
	cp 031h		;15c7	fe 31 	. 1 
	jr z,$+8		;15c9	28 06 	( . 
	ld a,(0826bh)		;15cb	3a 6b 82 	: k . 
	or a			;15ce	b7 	. 
	jr nz,$+60		;15cf	20 3a 	  : 
	ld a,04ch		;15d1	3e 4c 	> L 
	call 0495ah		;15d3	cd 5a 49 	. Z I 
	call 01b98h		;15d6	cd 98 1b 	. . . 
	ld a,(08119h)		;15d9	3a 19 81 	: . . 
	ld (08118h),a		;15dc	32 18 81 	2 . . 
	call 0495ah		;15df	cd 5a 49 	. Z I 
	ld a,068h		;15e2	3e 68 	> h 
	call 048f2h		;15e4	cd f2 48 	. . H 
	ld a,06ch		;15e7	3e 6c 	> l 
	call 048f2h		;15e9	cd f2 48 	. . H 
	call 02fd4h		;15ec	cd d4 2f 	. . / 
	call 01710h		;15ef	cd 10 17 	. . . 
	ld a,001h		;15f2	3e 01 	> . 
	ld (08229h),a		;15f4	32 29 82 	2 ) . 
	ld (0821ch),a		;15f7	32 1c 82 	2 . . 
	call 01785h		;15fa	cd 85 17 	. . . 
	ld a,082h		;15fd	3e 82 	> . 
	out (081h),a		;15ff	d3 81 	. . 
	ld a,(0818ah)		;1601	3a 8a 81 	: . . 
	set 3,a		;1604	cb df 	. . 
	ld (0818ah),a		;1606	32 8a 81 	2 . . 
	out (080h),a		;1609	d3 80 	. . 
	xor a			;160b	af 	. 
	ld (08254h),a		;160c	32 54 82 	2 T . 
	ld (08217h),a		;160f	32 17 82 	2 . . 
	ld (0822ch),a		;1612	32 2c 82 	2 , . 
	ld (0822ah),a		;1615	32 2a 82 	2 * . 
	ld a,001h		;1618	3e 01 	> . 
	ld (0826bh),a		;161a	32 6b 82 	2 k . 
	ret			;161d	c9 	. 
	ld a,(08119h)		;161e	3a 19 81 	: . . 
	ld hl,08118h		;1621	21 18 81 	! . . 
	cp (hl)			;1624	be 	. 
	jp nz,01479h		;1625	c2 79 14 	. y . 
	ld a,(0826bh)		;1628	3a 6b 82 	: k . 
	or a			;162b	b7 	. 
	jp z,01479h		;162c	ca 79 14 	. y . 
	jr $-36		;162f	18 da 	. . 
	ld a,06ch		;1631	3e 6c 	> l 
	call 048f2h		;1633	cd f2 48 	. . H 
	ld a,(0822dh)		;1636	3a 2d 82 	: - . 
	or a			;1639	b7 	. 
	jp nz,0151eh		;163a	c2 1e 15 	. . . 
	ld a,(0826bh)		;163d	3a 6b 82 	: k . 
	or a			;1640	b7 	. 
	jr nz,$-54		;1641	20 c8 	  . 
	jp 01479h		;1643	c3 79 14 	. y . 
	call 015aah		;1646	cd aa 15 	. . . 
	ld a,(08254h)		;1649	3a 54 82 	: T . 
	or a			;164c	b7 	. 
	jp nz,0151dh		;164d	c2 1d 15 	. . . 
	xor a			;1650	af 	. 
	ld (08217h),a		;1651	32 17 82 	2 . . 
	ld (0826bh),a		;1654	32 6b 82 	2 k . 
	ld a,(08140h)		;1657	3a 40 81 	: @ . 
	res 2,a		;165a	cb 97 	. . 
	ld (08140h),a		;165c	32 40 81 	2 @ . 
	call 01dech		;165f	cd ec 1d 	. . . 
	jr $+61		;1662	18 3b 	. ; 
	call 015aah		;1664	cd aa 15 	. . . 
	ld a,(08254h)		;1667	3a 54 82 	: T . 
	or a			;166a	b7 	. 
	jp nz,0151dh		;166b	c2 1d 15 	. . . 
	ld a,(0822dh)		;166e	3a 2d 82 	: - . 
	or a			;1671	b7 	. 
	call nz,016e5h		;1672	c4 e5 16 	. . . 
	ld a,(08119h)		;1675	3a 19 81 	: . . 
	ld (08118h),a		;1678	32 18 81 	2 . . 
	ld hl,(08004h)		;167b	2a 04 80 	* . . 
	dec hl			;167e	2b 	+ 
	dec hl			;167f	2b 	+ 
	ld (08004h),a		;1680	32 04 80 	2 . . 
	call 0179ch		;1683	cd 9c 17 	. . . 
	xor a			;1686	af 	. 
	ld (0826bh),a		;1687	32 6b 82 	2 k . 
	ld (0822dh),a		;168a	32 2d 82 	2 - . 
	ld (08231h),a		;168d	32 31 82 	2 1 . 
	ld a,(0810dh)		;1690	3a 0d 81 	: . . 
	or a			;1693	b7 	. 
	jr z,$+8		;1694	28 06 	( . 
	call 013fdh		;1696	cd fd 13 	. . . 
	call 01dech		;1699	cd ec 1d 	. . . 
	call 013e9h		;169c	cd e9 13 	. . . 
	xor a			;169f	af 	. 
	ld (08220h),a		;16a0	32 20 82 	2   . 
	inc a			;16a3	3c 	< 
	ld (08254h),a		;16a4	32 54 82 	2 T . 
	jp 0151dh		;16a7	c3 1d 15 	. . . 
	ld a,084h		;16aa	3e 84 	> . 
	out (081h),a		;16ac	d3 81 	. . 
	ld a,(0818ch)		;16ae	3a 8c 81 	: . . 
	res 2,a		;16b1	cb 97 	. . 
	res 4,a		;16b3	cb a7 	. . 
	ld (0818ch),a		;16b5	32 8c 81 	2 . . 
	out (080h),a		;16b8	d3 80 	. . 
	ld a,000h		;16ba	3e 00 	> . 
	ld (0e400h),a		;16bc	32 00 e4 	2 . . 
	ld a,(08140h)		;16bf	3a 40 81 	: @ . 
	bit 3,a		;16c2	cb 5f 	. _ 
	call z,04cdch		;16c4	cc dc 4c 	. . L 
	ld a,(08115h)		;16c7	3a 15 81 	: . . 
	or a			;16ca	b7 	. 
	jr nz,$+35		;16cb	20 21 	  ! 
	ld a,(08125h)		;16cd	3a 25 81 	: % . 
	or a			;16d0	b7 	. 
	jr nz,$+29		;16d1	20 1b 	  . 
	ld a,(08143h)		;16d3	3a 43 81 	: C . 
	or a			;16d6	b7 	. 
	jr nz,$+23		;16d7	20 15 	  . 
	ld a,(08140h)		;16d9	3a 40 81 	: @ . 
	bit 3,a		;16dc	cb 5f 	. _ 
	jr nz,$+16		;16de	20 0e 	  . 
	ld a,084h		;16e0	3e 84 	> . 
	out (081h),a		;16e2	d3 81 	. . 
	ld a,(0818ch)		;16e4	3a 8c 81 	: . . 
	res 7,a		;16e7	cb bf 	. . 
	ld (0818ch),a		;16e9	32 8c 81 	2 . . 
	out (080h),a		;16ec	d3 80 	. . 
	ret			;16ee	c9 	. 
	ld a,(08241h)		;16ef	3a 41 82 	: A . 
	or a			;16f2	b7 	. 
	jp nz,01699h		;16f3	c2 99 16 	. . . 
	ld a,(0823fh)		;16f6	3a 3f 82 	: ? . 
	or a			;16f9	b7 	. 
	jp nz,01699h		;16fa	c2 99 16 	. . . 
	ld a,(08242h)		;16fd	3a 42 82 	: B . 
	or a			;1700	b7 	. 
	jp nz,01699h		;1701	c2 99 16 	. . . 
	ld a,(08239h)		;1704	3a 39 82 	: 9 . 
	or a			;1707	b7 	. 
	ret nz			;1708	c0 	. 
	ld a,(0810dh)		;1709	3a 0d 81 	: . . 
	or a			;170c	b7 	. 
	jp z,01699h		;170d	ca 99 16 	. . . 
	ld a,(08140h)		;1710	3a 40 81 	: @ . 
	bit 2,a		;1713	cb 57 	. W 
	jp z,01699h		;1715	ca 99 16 	. . . 
	ld a,(08218h)		;1718	3a 18 82 	: . . 
	or a			;171b	b7 	. 
	jp nz,01699h		;171c	c2 99 16 	. . . 
	ld a,(08141h)		;171f	3a 41 81 	: A . 
	or a			;1722	b7 	. 
	jp z,01699h		;1723	ca 99 16 	. . . 
	ld a,(0827ah)		;1726	3a 7a 82 	: z . 
	or a			;1729	b7 	. 
	jp z,0163dh		;172a	ca 3d 16 	. = . 
	ld a,(08119h)		;172d	3a 19 81 	: . . 
	ld hl,08118h		;1730	21 18 81 	! . . 
	cp (hl)			;1733	be 	. 
	jr nz,$+26		;1734	20 18 	  . 
	cp 031h		;1736	fe 31 	. 1 
	jp z,016cdh		;1738	ca cd 16 	. . . 
	jr $+78		;173b	18 4c 	. L 
	call 02fd4h		;173d	cd d4 2f 	. . / 
	ld a,084h		;1740	3e 84 	> . 
	out (081h),a		;1742	d3 81 	. . 
	ld a,(0818ch)		;1744	3a 8c 81 	: . . 
	set 2,a		;1747	cb d7 	. . 
	ld (0818ch),a		;1749	32 8c 81 	2 . . 
	out (080h),a		;174c	d3 80 	. . 
	call 01710h		;174e	cd 10 17 	. . . 
	ld a,068h		;1751	3e 68 	> h 
	call 048f2h		;1753	cd f2 48 	. . H 
	ld a,06ch		;1756	3e 6c 	> l 
	call 048f2h		;1758	cd f2 48 	. . H 
	ld a,(0827ah)		;175b	3a 7a 82 	: z . 
	or a			;175e	b7 	. 
	jr z,$+9		;175f	28 07 	( . 
	ld a,(08119h)		;1761	3a 19 81 	: . . 
	cp 031h		;1764	fe 31 	. 1 
	jr nz,$+2		;1766	20 00 	  . 
	ld a,(08183h)		;1768	3a 83 81 	: . . 
	ld hl,(08004h)		;176b	2a 04 80 	* . . 
	ld h,a			;176e	67 	g 
	ld (08004h),hl		;176f	22 04 80 	" . . 
	ld (08006h),hl		;1772	22 06 80 	" . . 
	ld (0e401h),a		;1775	32 01 e4 	2 . . 
	ld a,04ch		;1778	3e 4c 	> L 
	call 0495ah		;177a	cd 5a 49 	. Z I 
	call 01b98h		;177d	cd 98 1b 	. . . 
	call 01b03h		;1780	cd 03 1b 	. . . 
	ld a,(08119h)		;1783	3a 19 81 	: . . 
	call 0495ah		;1786	cd 5a 49 	. Z I 
	call 016c0h		;1789	cd c0 16 	. . . 
	ld a,001h		;178c	3e 01 	> . 
	ld (0821ch),a		;178e	32 1c 82 	2 . . 
	ld (08229h),a		;1791	32 29 82 	2 ) . 
	ld (0827ah),a		;1794	32 7a 82 	2 z . 
	jr $+104		;1797	18 66 	. f 
	ld a,(08141h)		;1799	3a 41 81 	: A . 
	or a			;179c	b7 	. 
	call nz,016dah		;179d	c4 da 16 	. . . 
	xor a			;17a0	af 	. 
	ld (0827ah),a		;17a1	32 7a 82 	2 z . 
	ret			;17a4	c9 	. 
	ld a,084h		;17a5	3e 84 	> . 
	out (081h),a		;17a7	d3 81 	. . 
	ld a,(0818ch)		;17a9	3a 8c 81 	: . . 
	res 2,a		;17ac	cb 97 	. . 
	ld (0818ch),a		;17ae	32 8c 81 	2 . . 
	out (080h),a		;17b1	d3 80 	. . 
	call 04cdch		;17b3	cd dc 4c 	. . L 
	xor a			;17b6	af 	. 
	ld (08141h),a		;17b7	32 41 81 	2 A . 
	ld (0822dh),a		;17ba	32 2d 82 	2 - . 
	ld (0827ah),a		;17bd	32 7a 82 	2 z . 
	call 01dech		;17c0	cd ec 1d 	. . . 
	call 01bc5h		;17c3	cd c5 1b 	. . . 
	ld a,(08117h)		;17c6	3a 17 81 	: . . 
	ld (08116h),a		;17c9	32 16 81 	2 . . 
	ret			;17cc	c9 	. 
	ld hl,(08004h)		;17cd	2a 04 80 	* . . 
	ld a,(08183h)		;17d0	3a 83 81 	: . . 
	cp h			;17d3	bc 	. 
	jp nz,0164eh		;17d4	c2 4e 16 	. N . 
	jp 01689h		;17d7	c3 89 16 	. . . 
	ld a,(0827ah)		;17da	3a 7a 82 	: z . 
	or a			;17dd	b7 	. 
	jr nz,$+7		;17de	20 05 	  . 
	xor a			;17e0	af 	. 
	ld (08141h),a		;17e1	32 41 81 	2 A . 
	ret			;17e4	c9 	. 
	ld a,(08119h)		;17e5	3a 19 81 	: . . 
	cp 031h		;17e8	fe 31 	. 1 
	jr nz,$+15		;17ea	20 0d 	  . 
	ld a,04ch		;17ec	3e 4c 	> L 
	call 0495ah		;17ee	cd 5a 49 	. Z I 
	call 01b98h		;17f1	cd 98 1b 	. . . 
	ld a,038h		;17f4	3e 38 	> 8 
	call 0495ah		;17f6	cd 5a 49 	. Z I 
	call 01706h		;17f9	cd 06 17 	. . . 
	call 016a5h		;17fc	cd a5 16 	. . . 
	ld a,(08119h)		;17ff	3a 19 81 	: . . 
	ld (08118h),a		;1802	32 18 81 	2 . . 
	ret			;1805	c9 	. 
	call 0179ch		;1806	cd 9c 17 	. . . 
	xor a			;1809	af 	. 
	call 0495ah		;180a	cd 5a 49 	. Z I 
	call 048f2h		;180d	cd f2 48 	. . H 
	call 00efbh		;1810	cd fb 0e 	. . . 
	inc a			;1813	3c 	< 
	ld (08229h),a		;1814	32 29 82 	2 ) . 
	xor a			;1817	af 	. 
	ld (08117h),a		;1818	32 17 81 	2 . . 
	ld (08116h),a		;181b	32 16 81 	2 . . 
	ret			;181e	c9 	. 
	ld a,(08241h)		;181f	3a 41 82 	: A . 
	or a			;1822	b7 	. 
	jp nz,01782h		;1823	c2 82 17 	. . . 
	ld a,(0823fh)		;1826	3a 3f 82 	: ? . 
	or a			;1829	b7 	. 
	jp nz,01782h		;182a	c2 82 17 	. . . 
	ld a,(08242h)		;182d	3a 42 82 	: B . 
	or a			;1830	b7 	. 
	jp nz,01782h		;1831	c2 82 17 	. . . 
	ld a,(08239h)		;1834	3a 39 82 	: 9 . 
	or a			;1837	b7 	. 
	jp nz,0179bh		;1838	c2 9b 17 	. . . 
	ld a,(0810dh)		;183b	3a 0d 81 	: . . 
	cp 001h		;183e	fe 01 	. . 
	jr nz,$+66		;1840	20 40 	  @ 
	ld a,(08214h)		;1842	3a 14 82 	: . . 
	cp 001h		;1845	fe 01 	. . 
	jr z,$+62		;1847	28 3c 	( < 
	ld a,(08218h)		;1849	3a 18 82 	: . . 
	or a			;184c	b7 	. 
	jr nz,$+70		;184d	20 44 	  D 
	ld a,(08140h)		;184f	3a 40 81 	: @ . 
	bit 1,a		;1852	cb 4f 	. O 
	jr z,$+40		;1854	28 26 	( & 
	call 02fd4h		;1856	cd d4 2f 	. . / 
	ld a,084h		;1859	3e 84 	> . 
	out (081h),a		;185b	d3 81 	. . 
	ld a,(0818ch)		;185d	3a 8c 81 	: . . 
	set 3,a		;1860	cb df 	. . 
	ld (0818ch),a		;1862	32 8c 81 	2 . . 
	out (080h),a		;1865	d3 80 	. . 
	ld a,068h		;1867	3e 68 	> h 
	call 048f2h		;1869	cd f2 48 	. . H 
	ld a,049h		;186c	3e 49 	> I 
	call 0495ah		;186e	cd 5a 49 	. Z I 
	call 01b03h		;1871	cd 03 1b 	. . . 
	call 016c0h		;1874	cd c0 16 	. . . 
	ld a,001h		;1877	3e 01 	> . 
	ld (0821ch),a		;1879	32 1c 82 	2 . . 
	ld a,(0821ch)		;187c	3a 1c 82 	: . . 
	or a			;187f	b7 	. 
	jr nz,$+19		;1880	20 11 	  . 
	call 0179ch		;1882	cd 9c 17 	. . . 
	ld a,084h		;1885	3e 84 	> . 
	out (081h),a		;1887	d3 81 	. . 
	ld a,(0818ch)		;1889	3a 8c 81 	: . . 
	res 3,a		;188c	cb 9f 	. . 
	ld (0818ch),a		;188e	32 8c 81 	2 . . 
	out (080h),a		;1891	d3 80 	. . 
	ld a,(08140h)		;1893	3a 40 81 	: @ . 
	res 1,a		;1896	cb 8f 	. . 
	ld (08140h),a		;1898	32 40 81 	2 @ . 
	ret			;189b	c9 	. 
	ld a,(08241h)		;189c	3a 41 82 	: A . 
	or a			;189f	b7 	. 
	jr nz,$+18		;18a0	20 10 	  . 
	ld a,(0823fh)		;18a2	3a 3f 82 	: ? . 
	or a			;18a5	b7 	. 
	jr nz,$+12		;18a6	20 0a 	  . 
	ld a,(08242h)		;18a8	3a 42 82 	: B . 
	or a			;18ab	b7 	. 
	jr nz,$+6		;18ac	20 04 	  . 
	xor a			;18ae	af 	. 
	ld (0821ch),a		;18af	32 1c 82 	2 . . 
	ret			;18b2	c9 	. 
	push hl			;18b3	e5 	. 
	push af			;18b4	f5 	. 
	xor a			;18b5	af 	. 
	ld (0e400h),a		;18b6	32 00 e4 	2 . . 
	ld (0e402h),a		;18b9	32 02 e4 	2 . . 
	ld (0e405h),a		;18bc	32 05 e4 	2 . . 
	ld (0e408h),a		;18bf	32 08 e4 	2 . . 
	ld hl,08017h		;18c2	21 17 80 	! . . 
	and (hl)			;18c5	a6 	. 
	bit 0,a		;18c6	cb 47 	. G 
	jr nz,$+26		;18c8	20 18 	  . 
	bit 1,a		;18ca	cb 4f 	. O 
	jr nz,$+28		;18cc	20 1a 	  . 
	bit 2,a		;18ce	cb 57 	. W 
	jr nz,$+52		;18d0	20 32 	  2 
	bit 5,a		;18d2	cb 6f 	. o 
	call nz,01823h		;18d4	c4 23 18 	. # . 
	bit 4,a		;18d7	cb 67 	. g 
	jr nz,$+65		;18d9	20 3f 	  ? 
	bit 3,a		;18db	cb 5f 	. _ 
	jr nz,$+56		;18dd	20 36 	  6 
	pop af			;18df	f1 	. 
	pop hl			;18e0	e1 	. 
	ret			;18e1	c9 	. 
	xor a			;18e2	af 	. 
	ld (0821eh),a		;18e3	32 1e 82 	2 . . 
	jr $-7		;18e6	18 f7 	. . 
	ld hl,08140h		;18e8	21 40 81 	! @ . 
	res 2,(hl)		;18eb	cb 96 	. . 
	ld a,(08141h)		;18ed	3a 41 81 	: A . 
	or a			;18f0	b7 	. 
	call nz,016dah		;18f1	c4 da 16 	. . . 
	ld a,(0822dh)		;18f4	3a 2d 82 	: - . 
	or a			;18f7	b7 	. 
	call nz,016e5h		;18f8	c4 e5 16 	. . . 
	xor a			;18fb	af 	. 
	ld (08141h),a		;18fc	32 41 81 	2 A . 
	call 01416h		;18ff	cd 16 14 	. . . 
	jr $-35		;1902	18 db 	. . 
	ld hl,08140h		;1904	21 40 81 	! @ . 
	res 3,(hl)		;1907	cb 9e 	. . 
	ld a,(0822dh)		;1909	3a 2d 82 	: - . 
	or a			;190c	b7 	. 
	call nz,016f9h		;190d	c4 f9 16 	. . . 
	call 01251h		;1910	cd 51 12 	. Q . 
	jr $-52		;1913	18 ca 	. . 
	call 00ae3h		;1915	cd e3 0a 	. . . 
	jr $-57		;1918	18 c5 	. . 
	xor a			;191a	af 	. 
	ld (08143h),a		;191b	32 43 81 	2 C . 
	call 01b19h		;191e	cd 19 1b 	. . . 
	jr $-66		;1921	18 bc 	. . 
	call 025ffh		;1923	cd ff 25 	. . % 
	ld a,(08017h)		;1926	3a 17 80 	: . . 
	ret			;1929	c9 	. 
	in a,(089h)		;192a	db 89 	. . 
	and 001h		;192c	e6 01 	. . 
	jr z,$+50		;192e	28 30 	( 0 
	ld a,(0813ah)		;1930	3a 3a 81 	: : . 
	or a			;1933	b7 	. 
	jr z,$+23		;1934	28 15 	( . 
	ld a,083h		;1936	3e 83 	> . 
	out (081h),a		;1938	d3 81 	. . 
	ld a,(0818bh)		;193a	3a 8b 81 	: . . 
	res 0,a		;193d	cb 87 	. . 
	set 1,a		;193f	cb cf 	. . 
	ld (0818bh),a		;1941	32 8b 81 	2 . . 
	out (080h),a		;1944	d3 80 	. . 
	ld a,001h		;1946	3e 01 	> . 
	out (08fh),a		;1948	d3 8f 	. . 
	ret			;194a	c9 	. 
	ld a,083h		;194b	3e 83 	> . 
	out (081h),a		;194d	d3 81 	. . 
	ld a,(0818bh)		;194f	3a 8b 81 	: . . 
	set 0,a		;1952	cb c7 	. . 
	res 1,a		;1954	cb 8f 	. . 
	ld (0818bh),a		;1956	32 8b 81 	2 . . 
	out (080h),a		;1959	d3 80 	. . 
	xor a			;195b	af 	. 
	out (08fh),a		;195c	d3 8f 	. . 
	jr $-20		;195e	18 ea 	. . 
	ld a,(0813ah)		;1960	3a 3a 81 	: : . 
	or a			;1963	b7 	. 
	jr z,$+8		;1964	28 06 	( . 
	xor a			;1966	af 	. 
	ld (0813ah),a		;1967	32 3a 81 	2 : . 
	out (08fh),a		;196a	d3 8f 	. . 
	ld a,083h		;196c	3e 83 	> . 
	out (081h),a		;196e	d3 81 	. . 
	ld a,(0818bh)		;1970	3a 8b 81 	: . . 
	res 0,a		;1973	cb 87 	. . 
	res 1,a		;1975	cb 8f 	. . 
	ld (0818bh),a		;1977	32 8b 81 	2 . . 
	out (080h),a		;197a	d3 80 	. . 
	xor a			;197c	af 	. 
	ld (08228h),a		;197d	32 28 82 	2 ( . 
	jr $-54		;1980	18 c8 	. . 
	in a,(089h)		;1982	db 89 	. . 
	and 008h		;1984	e6 08 	. . 
	jr nz,$+105		;1986	20 67 	  g 
	ld a,(0813bh)		;1988	3a 3b 81 	: ; . 
	or a			;198b	b7 	. 
	jr z,$+106		;198c	28 68 	( h 
	ld a,(08236h)		;198e	3a 36 82 	: 6 . 
	or a			;1991	b7 	. 
	jr nz,$+19		;1992	20 11 	  . 
	ld a,083h		;1994	3e 83 	> . 
	out (081h),a		;1996	d3 81 	. . 
	ld a,(0818bh)		;1998	3a 8b 81 	: . . 
	set 2,a		;199b	cb d7 	. . 
	ld (081efh),a		;199d	32 ef 81 	2 . . 
	ld (0818bh),a		;19a0	32 8b 81 	2 . . 
	out (080h),a		;19a3	d3 80 	. . 
	in a,(089h)		;19a5	db 89 	. . 
	and 010h		;19a7	e6 10 	. . 
	jr z,$+49		;19a9	28 2f 	( / 
	ld a,(08235h)		;19ab	3a 35 82 	: 5 . 
	cp 001h		;19ae	fe 01 	. . 
	jr z,$+42		;19b0	28 28 	( ( 
	ld a,001h		;19b2	3e 01 	> . 
	ld (08236h),a		;19b4	32 36 82 	2 6 . 
	ld (0814bh),a		;19b7	32 4b 81 	2 K . 
	ld a,(081c6h)		;19ba	3a c6 81 	: . . 
	res 2,a		;19bd	cb 97 	. . 
	out (0a0h),a		;19bf	d3 a0 	. . 
	ld (081c6h),a		;19c1	32 c6 81 	2 . . 
	ld a,001h		;19c4	3e 01 	> . 
	ld (08235h),a		;19c6	32 35 82 	2 5 . 
	ld a,(08234h)		;19c9	3a 34 82 	: 4 . 
	or a			;19cc	b7 	. 
	ld a,0fah		;19cd	3e fa 	> . 
	call nz,01979h		;19cf	c4 79 19 	. y . 
	call 004ffh		;19d2	cd ff 04 	. . . 
	ld b,001h		;19d5	06 01 	. . 
	call 00552h		;19d7	cd 52 05 	. R . 
	ld a,(081ach)		;19da	3a ac 81 	: . . 
	set 5,a		;19dd	cb ef 	. . 
	ld (081ach),a		;19df	32 ac 81 	2 . . 
	out (089h),a		;19e2	d3 89 	. . 
	ld a,(081c6h)		;19e4	3a c6 81 	: . . 
	set 3,a		;19e7	cb df 	. . 
	out (0a0h),a		;19e9	d3 a0 	. . 
	ld (081c6h),a		;19eb	32 c6 81 	2 . . 
	ret			;19ee	c9 	. 
	xor a			;19ef	af 	. 
	ld (08236h),a		;19f0	32 36 82 	2 6 . 
	ld (08228h),a		;19f3	32 28 82 	2 ( . 
	xor a			;19f6	af 	. 
	ld (0813bh),a		;19f7	32 3b 81 	2 ; . 
	ld a,(08236h)		;19fa	3a 36 82 	: 6 . 
	or a			;19fd	b7 	. 
	jr z,$+9		;19fe	28 07 	( . 
	ld a,(08235h)		;1a00	3a 35 82 	: 5 . 
	cp 002h		;1a03	fe 02 	. . 
	jr z,$-23		;1a05	28 e7 	( . 
	ld a,083h		;1a07	3e 83 	> . 
	out (081h),a		;1a09	d3 81 	. . 
	ld a,(0818bh)		;1a0b	3a 8b 81 	: . . 
	res 2,a		;1a0e	cb 97 	. . 
	ld (0818bh),a		;1a10	32 8b 81 	2 . . 
	ld (081efh),a		;1a13	32 ef 81 	2 . . 
	out (080h),a		;1a16	d3 80 	. . 
	in a,(089h)		;1a18	db 89 	. . 
	ld b,a			;1a1a	47 	G 
	and 008h		;1a1b	e6 08 	. . 
	jr nz,$+65		;1a1d	20 3f 	  ? 
	ld a,b			;1a1f	78 	x 
	and 010h		;1a20	e6 10 	. . 
	jr z,$+60		;1a22	28 3a 	( : 
	ld a,(08235h)		;1a24	3a 35 82 	: 5 . 
	cp 002h		;1a27	fe 02 	. . 
	jr z,$+53		;1a29	28 33 	( 3 
	cp 000h		;1a2b	fe 00 	. . 
	jr z,$+49		;1a2d	28 2f 	( / 
	ld (0814bh),a		;1a2f	32 4b 81 	2 K . 
	ld a,(081c6h)		;1a32	3a c6 81 	: . . 
	res 2,a		;1a35	cb 97 	. . 
	out (0a0h),a		;1a37	d3 a0 	. . 
	ld b,001h		;1a39	06 01 	. . 
	call 00552h		;1a3b	cd 52 05 	. R . 
	res 3,a		;1a3e	cb 9f 	. . 
	out (0a0h),a		;1a40	d3 a0 	. . 
	ld (081c6h),a		;1a42	32 c6 81 	2 . . 
	ld a,002h		;1a45	3e 02 	> . 
	ld (08235h),a		;1a47	32 35 82 	2 5 . 
	ld a,001h		;1a4a	3e 01 	> . 
	ld (08236h),a		;1a4c	32 36 82 	2 6 . 
	ld a,(08234h)		;1a4f	3a 34 82 	: 4 . 
	or a			;1a52	b7 	. 
	ld a,07dh		;1a53	3e 7d 	> } 
	call nz,01979h		;1a55	c4 79 19 	. y . 
	call 004ffh		;1a58	cd ff 04 	. . . 
	jp 018eeh		;1a5b	c3 ee 18 	. . . 
	ld a,(081c6h)		;1a5e	3a c6 81 	: . . 
	res 3,a		;1a61	cb 9f 	. . 
	out (0a0h),a		;1a63	d3 a0 	. . 
	ld (081c6h),a		;1a65	32 c6 81 	2 . . 
	ld a,(081ach)		;1a68	3a ac 81 	: . . 
	res 5,a		;1a6b	cb af 	. . 
	ld (081ach),a		;1a6d	32 ac 81 	2 . . 
	out (089h),a		;1a70	d3 89 	. . 
	xor a			;1a72	af 	. 
	ld (08235h),a		;1a73	32 35 82 	2 5 . 
	jp 018eeh		;1a76	c3 ee 18 	. . . 
	push bc			;1a79	c5 	. 
	push af			;1a7a	f5 	. 
	push af			;1a7b	f5 	. 
	in a,(057h)		;1a7c	db 57 	. W 
	ld b,a			;1a7e	47 	G 
	pop af			;1a7f	f1 	. 
	sub b			;1a80	90 	. 
	ld (081eeh),a		;1a81	32 ee 81 	2 . . 
	pop af			;1a84	f1 	. 
	pop bc			;1a85	c1 	. 
	ret			;1a86	c9 	. 
	ld a,(0814bh)		;1a87	3a 4b 81 	: K . 
	or a			;1a8a	b7 	. 
	jr nz,$+13		;1a8b	20 0b 	  . 
	ld a,(081ach)		;1a8d	3a ac 81 	: . . 
	set 4,a		;1a90	cb e7 	. . 
	ld (081ach),a		;1a92	32 ac 81 	2 . . 
	out (089h),a		;1a95	d3 89 	. . 
	ret			;1a97	c9 	. 
	ld a,(081ach)		;1a98	3a ac 81 	: . . 
	res 4,a		;1a9b	cb a7 	. . 
	ld (081ach),a		;1a9d	32 ac 81 	2 . . 
	out (089h),a		;1aa0	d3 89 	. . 
	jr $-11		;1aa2	18 f3 	. . 
	xor a			;1aa4	af 	. 
	ld (08268h),a		;1aa5	32 68 82 	2 h . 
	ld a,(08134h)		;1aa8	3a 34 81 	: 4 . 
	or a			;1aab	b7 	. 
	jr nz,$+68		;1aac	20 42 	  B 
	ld a,(08135h)		;1aae	3a 35 81 	: 5 . 
	or a			;1ab1	b7 	. 
	jr nz,$+26		;1ab2	20 18 	  . 
	ld a,(08136h)		;1ab4	3a 36 81 	: 6 . 
	or a			;1ab7	b7 	. 
	jr nz,$+52		;1ab8	20 32 	  2 
	ld a,(08137h)		;1aba	3a 37 81 	: 7 . 
	or a			;1abd	b7 	. 
	jr nz,$+10		;1abe	20 08 	  . 
	ld a,(0825fh)		;1ac0	3a 5f 82 	: _ . 
	or a			;1ac3	b7 	. 
	call nz,01a1eh		;1ac4	c4 1e 1a 	. . . 
	ret			;1ac7	c9 	. 
	ld a,077h		;1ac8	3e 77 	> w 
	jr $+4		;1aca	18 02 	. . 
	ld a,071h		;1acc	3e 71 	> q 
	call 048f2h		;1ace	cd f2 48 	. . H 
	ld a,000h		;1ad1	3e 00 	> . 
	ld (08237h),a		;1ad3	32 37 82 	2 7 . 
	ld b,007h		;1ad6	06 07 	. . 
	call 00545h		;1ad8	cd 45 05 	. E . 
	ld a,0c2h		;1adb	3e c2 	> . 
	out (081h),a		;1add	d3 81 	. . 
	xor a			;1adf	af 	. 
	ld (08135h),a		;1ae0	32 35 81 	2 5 . 
	ld (08137h),a		;1ae3	32 37 81 	2 7 . 
	inc a			;1ae6	3c 	< 
	ld (0825fh),a		;1ae7	32 5f 82 	2 _ . 
	jr $-35		;1aea	18 db 	. . 
	ld a,072h		;1aec	3e 72 	> r 
	jr $+4		;1aee	18 02 	. . 
	ld a,065h		;1af0	3e 65 	> e 
	call 048f2h		;1af2	cd f2 48 	. . H 
	ld a,000h		;1af5	3e 00 	> . 
	ld (08237h),a		;1af7	32 37 82 	2 7 . 
	ld a,(08225h)		;1afa	3a 25 82 	: % . 
	or a			;1afd	b7 	. 
	jr nz,$+15		;1afe	20 0d 	  . 
	call 05616h		;1b00	cd 16 56 	. . V 
	ld b,010h		;1b03	06 10 	. . 
	call 00545h		;1b05	cd 45 05 	. E . 
	ld a,001h		;1b08	3e 01 	> . 
	ld (08225h),a		;1b0a	32 25 82 	2 % . 
	ld a,0c2h		;1b0d	3e c2 	> . 
	out (081h),a		;1b0f	d3 81 	. . 
	xor a			;1b11	af 	. 
	ld (08134h),a		;1b12	32 34 81 	2 4 . 
	ld (08136h),a		;1b15	32 36 81 	2 6 . 
	inc a			;1b18	3c 	< 
	ld (0825fh),a		;1b19	32 5f 82 	2 _ . 
	jr $-85		;1b1c	18 a9 	. . 
	ld a,001h		;1b1e	3e 01 	> . 
	or a			;1b20	b7 	. 
	jr z,$+11		;1b21	28 09 	( . 
	ld a,(0822eh)		;1b23	3a 2e 82 	: . . 
	or a			;1b26	b7 	. 
	jr z,$+5		;1b27	28 03 	( . 
	call 07725h		;1b29	cd 25 77 	. % w 
	ret			;1b2c	c9 	. 
	ld a,(0821ah)		;1b2d	3a 1a 82 	: . . 
	or a			;1b30	b7 	. 
	jr nz,$+54		;1b31	20 34 	  4 
	ld a,(08146h)		;1b33	3a 46 81 	: F . 
	or a			;1b36	b7 	. 
	jr z,$+48		;1b37	28 2e 	( . 
	ld a,(08257h)		;1b39	3a 57 82 	: W . 
	or a			;1b3c	b7 	. 
	jr nz,$+29		;1b3d	20 1b 	  . 
	ld a,070h		;1b3f	3e 70 	> p 
	call 048f2h		;1b41	cd f2 48 	. . H 
	xor a			;1b44	af 	. 
	ld (08258h),a		;1b45	32 58 82 	2 X . 
	inc a			;1b48	3c 	< 
	ld (08257h),a		;1b49	32 57 82 	2 W . 
	ld a,086h		;1b4c	3e 86 	> . 
	out (081h),a		;1b4e	d3 81 	. . 
	ld a,(0818eh)		;1b50	3a 8e 81 	: . . 
	set 2,a		;1b53	cb d7 	. . 
	ld (0818eh),a		;1b55	32 8e 81 	2 . . 
	out (080h),a		;1b58	d3 80 	. . 
	ld a,(08148h)		;1b5a	3a 48 81 	: H . 
	or a			;1b5d	b7 	. 
	jr nz,$+51		;1b5e	20 31 	  1 
	ld a,(08147h)		;1b60	3a 47 81 	: G . 
	or a			;1b63	b7 	. 
	jr nz,$+49		;1b64	20 2f 	  / 
	ret			;1b66	c9 	. 
	xor a			;1b67	af 	. 
	ld (08146h),a		;1b68	32 46 81 	2 F . 
	ld a,086h		;1b6b	3e 86 	> . 
	out (081h),a		;1b6d	d3 81 	. . 
	ld a,(0818eh)		;1b6f	3a 8e 81 	: . . 
	res 2,a		;1b72	cb 97 	. . 
	ld (0818eh),a		;1b74	32 8e 81 	2 . . 
	out (080h),a		;1b77	d3 80 	. . 
	ld a,(08258h)		;1b79	3a 58 82 	: X . 
	or a			;1b7c	b7 	. 
	jr nz,$-23		;1b7d	20 e7 	  . 
	ld a,061h		;1b7f	3e 61 	> a 
	call 048f2h		;1b81	cd f2 48 	. . H 
	xor a			;1b84	af 	. 
	ld (08210h),a		;1b85	32 10 82 	2 . . 
	ld (08257h),a		;1b88	32 57 82 	2 W . 
	inc a			;1b8b	3c 	< 
	ld (08258h),a		;1b8c	32 58 82 	2 X . 
	jr $-41		;1b8f	18 d5 	. . 
	ld a,064h		;1b91	3e 64 	> d 
	jr $+4		;1b93	18 02 	. . 
	ld a,073h		;1b95	3e 73 	> s 
	call 048f2h		;1b97	cd f2 48 	. . H 
	ld a,(08225h)		;1b9a	3a 25 82 	: % . 
	or a			;1b9d	b7 	. 
	jr nz,$+12		;1b9e	20 0a 	  . 
	ld b,010h		;1ba0	06 10 	. . 
	call 00545h		;1ba2	cd 45 05 	. E . 
	ld a,001h		;1ba5	3e 01 	> . 
	ld (08225h),a		;1ba7	32 25 82 	2 % . 
	ld a,0c2h		;1baa	3e c2 	> . 
	out (081h),a		;1bac	d3 81 	. . 
	xor a			;1bae	af 	. 
	ld (08148h),a		;1baf	32 48 81 	2 H . 
	ld (08147h),a		;1bb2	32 47 81 	2 G . 
	jr $-79		;1bb5	18 af 	. . 
	call 048f2h		;1bb7	cd f2 48 	. . H 
	ld a,(08219h)		;1bba	3a 19 82 	: . . 
	or a			;1bbd	b7 	. 
	jr nz,$+39		;1bbe	20 25 	  % 
	ld a,(08218h)		;1bc0	3a 18 82 	: . . 
	or a			;1bc3	b7 	. 
	jr nz,$+33		;1bc4	20 1f 	  . 
	ld a,(08139h)		;1bc6	3a 39 81 	: 9 . 
	or a			;1bc9	b7 	. 
	jr z,$+31		;1bca	28 1d 	( . 
	ld a,081h		;1bcc	3e 81 	> . 
	out (081h),a		;1bce	d3 81 	. . 
	ld a,(08189h)		;1bd0	3a 89 81 	: . . 
	set 5,a		;1bd3	cb ef 	. . 
	ld (08189h),a		;1bd5	32 89 81 	2 . . 
	out (080h),a		;1bd8	d3 80 	. . 
	ld a,(081ach)		;1bda	3a ac 81 	: . . 
	res 6,a		;1bdd	cb b7 	. . 
	ld (081ach),a		;1bdf	32 ac 81 	2 . . 
	out (089h),a		;1be2	d3 89 	. . 
	ret			;1be4	c9 	. 
	xor a			;1be5	af 	. 
	ld (08139h),a		;1be6	32 39 81 	2 9 . 
	ld a,081h		;1be9	3e 81 	> . 
	out (081h),a		;1beb	d3 81 	. . 
	ld a,(08189h)		;1bed	3a 89 81 	: . . 
	res 5,a		;1bf0	cb af 	. . 
	ld (08189h),a		;1bf2	32 89 81 	2 . . 
	out (080h),a		;1bf5	d3 80 	. . 
	ld a,(081ach)		;1bf7	3a ac 81 	: . . 
	set 6,a		;1bfa	cb f7 	. . 
	ld (081ach),a		;1bfc	32 ac 81 	2 . . 
	out (089h),a		;1bff	d3 89 	. . 
	jr $-29		;1c01	18 e1 	. . 
	ld a,(0822bh)		;1c03	3a 2b 82 	: + . 
	or a			;1c06	b7 	. 
	ret nz			;1c07	c0 	. 
	ld a,(08143h)		;1c08	3a 43 81 	: C . 
	or a			;1c0b	b7 	. 
	ret nz			;1c0c	c0 	. 
	ld hl,0b8fch		;1c0d	21 fc b8 	! . . 
	ld de,0e6a0h		;1c10	11 a0 e6 	. . . 
	ld bc,00007h		;1c13	01 07 00 	. . . 
	ldir		;1c16	ed b0 	. . 
	ret			;1c18	c9 	. 
	ld hl,00000h		;1c19	21 00 00 	! . . 
	ld (08196h),hl		;1c1c	22 96 81 	" . . 
	ld a,085h		;1c1f	3e 85 	> . 
	out (081h),a		;1c21	d3 81 	. . 
	ld a,(0818dh)		;1c23	3a 8d 81 	: . . 
	res 2,a		;1c26	cb 97 	. . 
	ld (0818dh),a		;1c28	32 8d 81 	2 . . 
	out (080h),a		;1c2b	d3 80 	. . 
	call 01224h		;1c2d	cd 24 12 	. $ . 
	xor a			;1c30	af 	. 
	ld (08269h),a		;1c31	32 69 82 	2 i . 
	ld (08214h),a		;1c34	32 14 82 	2 . . 
	ld (08215h),a		;1c37	32 15 82 	2 . . 
	ld (08216h),a		;1c3a	32 16 82 	2 . . 
	ld (0821ah),a		;1c3d	32 1a 82 	2 . . 
	ld (0821bh),a		;1c40	32 1b 82 	2 . . 
	ld (08259h),a		;1c43	32 59 82 	2 Y . 
	ld (08212h),a		;1c46	32 12 82 	2 . . 
	ld (08211h),a		;1c49	32 11 82 	2 . . 
	ld (0825ah),a		;1c4c	32 5a 82 	2 Z . 
	ld (0810eh),a		;1c4f	32 0e 81 	2 . . 
	ld (08110h),a		;1c52	32 10 81 	2 . . 
	ld (08114h),a		;1c55	32 14 81 	2 . . 
	ld (08143h),a		;1c58	32 43 81 	2 C . 
	ld (08231h),a		;1c5b	32 31 82 	2 1 . 
	inc a			;1c5e	3c 	< 
	ld (08142h),a		;1c5f	32 42 81 	2 B . 
	call 01dech		;1c62	cd ec 1d 	. . . 
	ld a,067h		;1c65	3e 67 	> g 
	call 048f2h		;1c67	cd f2 48 	. . H 
	call 01b03h		;1c6a	cd 03 1b 	. . . 
	xor a			;1c6d	af 	. 
	ld (0e405h),a		;1c6e	32 05 e4 	2 . . 
	xor a			;1c71	af 	. 
	ld (08143h),a		;1c72	32 43 81 	2 C . 
	ret			;1c75	c9 	. 
	ld hl,(0800ch)		;1c76	2a 0c 80 	* . . 
	push hl			;1c79	e5 	. 
	pop bc			;1c7a	c1 	. 
	ld a,l			;1c7b	7d 	} 
	call 01ba6h		;1c7c	cd a6 1b 	. . . 
	ld a,c			;1c7f	79 	y 
	call 01babh		;1c80	cd ab 1b 	. . . 
	ld a,h			;1c83	7c 	| 
	call 01ba6h		;1c84	cd a6 1b 	. . . 
	ld a,b			;1c87	78 	x 
	call 01babh		;1c88	cd ab 1b 	. . . 
	ld hl,(08006h)		;1c8b	2a 06 80 	* . . 
	push hl			;1c8e	e5 	. 
	pop bc			;1c8f	c1 	. 
	ld a,l			;1c90	7d 	} 
	call 01ba6h		;1c91	cd a6 1b 	. . . 
	ld a,c			;1c94	79 	y 
	call 01babh		;1c95	cd ab 1b 	. . . 
	ld hl,(08006h)		;1c98	2a 06 80 	* . . 
	push hl			;1c9b	e5 	. 
	pop bc			;1c9c	c1 	. 
	ld a,h			;1c9d	7c 	| 
	call 01ba6h		;1c9e	cd a6 1b 	. . . 
	ld a,b			;1ca1	78 	x 
	call 01babh		;1ca2	cd ab 1b 	. . . 
	ret			;1ca5	c9 	. 
	call 01bb2h		;1ca6	cd b2 1b 	. . . 
	jr $+5		;1ca9	18 03 	. . 
	call 01bbah		;1cab	cd ba 1b 	. . . 
	call 0495ah		;1cae	cd 5a 49 	. Z I 
	ret			;1cb1	c9 	. 
	srl a		;1cb2	cb 3f 	. ? 
	srl a		;1cb4	cb 3f 	. ? 
	srl a		;1cb6	cb 3f 	. ? 
	srl a		;1cb8	cb 3f 	. ? 
	and 00fh		;1cba	e6 0f 	. . 
	cp 00ah		;1cbc	fe 0a 	. . 
	jr c,$+4		;1cbe	38 02 	8 . 
	add a,007h		;1cc0	c6 07 	. . 
	add a,030h		;1cc2	c6 30 	. 0 
	ret			;1cc4	c9 	. 
	ld hl,08102h		;1cc5	21 02 81 	! . . 
	ld a,(08103h)		;1cc8	3a 03 81 	: . . 
	cp (hl)			;1ccb	be 	. 
	jp nz,01c3bh		;1ccc	c2 3b 1c 	. ; . 
	ld hl,08100h		;1ccf	21 00 81 	! . . 
	ld a,(08101h)		;1cd2	3a 01 81 	: . . 
	cp (hl)			;1cd5	be 	. 
	jp nz,01c3bh		;1cd6	c2 3b 1c 	. ; . 
	ld hl,08104h		;1cd9	21 04 81 	! . . 
	ld a,(08105h)		;1cdc	3a 05 81 	: . . 
	cp (hl)			;1cdf	be 	. 
	jp nz,01c3bh		;1ce0	c2 3b 1c 	. ; . 
	ld hl,08106h		;1ce3	21 06 81 	! . . 
	ld a,(08107h)		;1ce6	3a 07 81 	: . . 
	cp (hl)			;1ce9	be 	. 
	jp nz,01c3bh		;1cea	c2 3b 1c 	. ; . 
	ld hl,08108h		;1ced	21 08 81 	! . . 
	ld a,(08109h)		;1cf0	3a 09 81 	: . . 
	cp (hl)			;1cf3	be 	. 
	jp nz,01c3bh		;1cf4	c2 3b 1c 	. ; . 
	ld hl,0810ah		;1cf7	21 0a 81 	! . . 
	ld a,(0810bh)		;1cfa	3a 0b 81 	: . . 
	cp (hl)			;1cfd	be 	. 
	jp z,01c20h		;1cfe	ca 20 1c 	.   . 
	ld (0810ah),a		;1d01	32 0a 81 	2 . . 
	or a			;1d04	b7 	. 
	jp nz,01c21h		;1d05	c2 21 1c 	. ! . 
	ld a,(08181h)		;1d08	3a 81 81 	: . . 
	res 3,a		;1d0b	cb 9f 	. . 
	ld (08181h),a		;1d0d	32 81 81 	2 . . 
	out (09eh),a		;1d10	d3 9e 	. . 
	ld a,080h		;1d12	3e 80 	> . 
	out (081h),a		;1d14	d3 81 	. . 
	ld a,(08188h)		;1d16	3a 88 81 	: . . 
	res 3,a		;1d19	cb 9f 	. . 
	ld (08188h),a		;1d1b	32 88 81 	2 . . 
	out (080h),a		;1d1e	d3 80 	. . 
	ret			;1d20	c9 	. 
	ld a,(08181h)		;1d21	3a 81 81 	: . . 
	set 3,a		;1d24	cb df 	. . 
	ld (08181h),a		;1d26	32 81 81 	2 . . 
	out (09eh),a		;1d29	d3 9e 	. . 
	ld a,080h		;1d2b	3e 80 	> . 
	out (081h),a		;1d2d	d3 81 	. . 
	ld a,(08188h)		;1d2f	3a 88 81 	: . . 
	set 3,a		;1d32	cb df 	. . 
	ld (08188h),a		;1d34	32 88 81 	2 . . 
	out (080h),a		;1d37	d3 80 	. . 
	jr $-25		;1d39	18 e5 	. . 
	ld a,(08103h)		;1d3b	3a 03 81 	: . . 
	ld (08102h),a		;1d3e	32 02 81 	2 . . 
	ld a,(08101h)		;1d41	3a 01 81 	: . . 
	ld (08100h),a		;1d44	32 00 81 	2 . . 
	ld a,(08105h)		;1d47	3a 05 81 	: . . 
	ld (08104h),a		;1d4a	32 04 81 	2 . . 
	ld a,(08107h)		;1d4d	3a 07 81 	: . . 
	ld (08106h),a		;1d50	32 06 81 	2 . . 
	ld a,(08109h)		;1d53	3a 09 81 	: . . 
	ld (08108h),a		;1d56	32 08 81 	2 . . 
	ld a,(08143h)		;1d59	3a 43 81 	: C . 
	or a			;1d5c	b7 	. 
	jp z,01d21h		;1d5d	ca 21 1d 	. ! . 
	ld a,(08255h)		;1d60	3a 55 82 	: U . 
	or a			;1d63	b7 	. 
	jp nz,01d21h		;1d64	c2 21 1d 	. ! . 
	inc a			;1d67	3c 	< 
	ld (08255h),a		;1d68	32 55 82 	2 U . 
	ld a,(08109h)		;1d6b	3a 09 81 	: . . 
	or a			;1d6e	b7 	. 
	jr nz,$+52		;1d6f	20 32 	  2 
	ld a,(08107h)		;1d71	3a 07 81 	: . . 
	or a			;1d74	b7 	. 
	jr nz,$+76		;1d75	20 4a 	  J 
	ld a,(08105h)		;1d77	3a 05 81 	: . . 
	or a			;1d7a	b7 	. 
	jr nz,$+102		;1d7b	20 64 	  d 
	ld a,(08101h)		;1d7d	3a 01 81 	: . . 
	or a			;1d80	b7 	. 
	jr nz,$+128		;1d81	20 7e 	  ~ 
	ld a,(08181h)		;1d83	3a 81 81 	: . . 
	call 01de3h		;1d86	cd e3 1d 	. . . 
	set 5,a		;1d89	cb ef 	. . 
	ld (08181h),a		;1d8b	32 81 81 	2 . . 
	out (09eh),a		;1d8e	d3 9e 	. . 
	call 01dffh		;1d90	cd ff 1d 	. . . 
	set 5,a		;1d93	cb ef 	. . 
	call 01e07h		;1d95	cd 07 1e 	. . . 
	ld a,(0e40fh)		;1d98	3a 0f e4 	: . . 
	or 020h		;1d9b	f6 20 	.   
	ld (0e40fh),a		;1d9d	32 0f e4 	2 . . 
	jp 01c20h		;1da0	c3 20 1c 	.   . 
	ld a,001h		;1da3	3e 01 	> . 
	ld (08218h),a		;1da5	32 18 82 	2 . . 
	ld (0e415h),a		;1da8	32 15 e4 	2 . . 
	call 01e0dh		;1dab	cd 0d 1e 	. . . 
	call 01dffh		;1dae	cd ff 1d 	. . . 
	set 2,a		;1db1	cb d7 	. . 
	call 01e07h		;1db3	cd 07 1e 	. . . 
	ld a,(0e40fh)		;1db6	3a 0f e4 	: . . 
	or 050h		;1db9	f6 50 	. P 
	ld (0e40fh),a		;1dbb	32 0f e4 	2 . . 
	jp 01c20h		;1dbe	c3 20 1c 	.   . 
	ld a,(08181h)		;1dc1	3a 81 81 	: . . 
	call 01de3h		;1dc4	cd e3 1d 	. . . 
	set 1,a		;1dc7	cb cf 	. . 
	ld (08181h),a		;1dc9	32 81 81 	2 . . 
	out (09eh),a		;1dcc	d3 9e 	. . 
	call 01dffh		;1dce	cd ff 1d 	. . . 
	set 1,a		;1dd1	cb cf 	. . 
	call 01e07h		;1dd3	cd 07 1e 	. . . 
	ld a,(0e40fh)		;1dd6	3a 0f e4 	: . . 
	or 040h		;1dd9	f6 40 	. @ 
	ld (0e40fh),a		;1ddb	32 0f e4 	2 . . 
	jp 01c20h		;1dde	c3 20 1c 	.   . 
	ld a,(08181h)		;1de1	3a 81 81 	: . . 
	call 01de3h		;1de4	cd e3 1d 	. . . 
	set 0,a		;1de7	cb c7 	. . 
	ld (08181h),a		;1de9	32 81 81 	2 . . 
	out (09eh),a		;1dec	d3 9e 	. . 
	call 01dffh		;1dee	cd ff 1d 	. . . 
	set 0,a		;1df1	cb c7 	. . 
	call 01e07h		;1df3	cd 07 1e 	. . . 
	ld a,(0e40fh)		;1df6	3a 0f e4 	: . . 
	or 030h		;1df9	f6 30 	. 0 
	ld (0e40fh),a		;1dfb	32 0f e4 	2 . . 
	jp 01c20h		;1dfe	c3 20 1c 	.   . 
	ld a,(08181h)		;1e01	3a 81 81 	: . . 
	call 01de3h		;1e04	cd e3 1d 	. . . 
	set 4,a		;1e07	cb e7 	. . 
	ld (08181h),a		;1e09	32 81 81 	2 . . 
	out (09eh),a		;1e0c	d3 9e 	. . 
	call 01dffh		;1e0e	cd ff 1d 	. . . 
	set 4,a		;1e11	cb e7 	. . 
	call 01e07h		;1e13	cd 07 1e 	. . . 
	ld a,(0e40fh)		;1e16	3a 0f e4 	: . . 
	or 010h		;1e19	f6 10 	. . 
	ld (0e40fh),a		;1e1b	32 0f e4 	2 . . 
	jp 01c20h		;1e1e	c3 20 1c 	.   . 
	xor a			;1e21	af 	. 
	ld (08255h),a		;1e22	32 55 82 	2 U . 
	ld (08218h),a		;1e25	32 18 82 	2 . . 
	ld (0e415h),a		;1e28	32 15 e4 	2 . . 
	ld a,(08109h)		;1e2b	3a 09 81 	: . . 
	or a			;1e2e	b7 	. 
	jp nz,01d65h		;1e2f	c2 65 1d 	. e . 
	ld a,(08107h)		;1e32	3a 07 81 	: . . 
	or a			;1e35	b7 	. 
	jp nz,01d89h		;1e36	c2 89 1d 	. . . 
	ld a,(08105h)		;1e39	3a 05 81 	: . . 
	or a			;1e3c	b7 	. 
	jp nz,01da7h		;1e3d	c2 a7 1d 	. . . 
	ld a,(08101h)		;1e40	3a 01 81 	: . . 
	or a			;1e43	b7 	. 
	jp nz,01dc5h		;1e44	c2 c5 1d 	. . . 
	call 01dffh		;1e47	cd ff 1d 	. . . 
	and 0c8h		;1e4a	e6 c8 	. . 
	set 5,a		;1e4c	cb ef 	. . 
	call 01e07h		;1e4e	cd 07 1e 	. . . 
	ld a,(08181h)		;1e51	3a 81 81 	: . . 
	and 088h		;1e54	e6 88 	. . 
	set 5,a		;1e56	cb ef 	. . 
	ld (08181h),a		;1e58	32 81 81 	2 . . 
	out (09eh),a		;1e5b	d3 9e 	. . 
	ld a,002h		;1e5d	3e 02 	> . 
	ld (0e40fh),a		;1e5f	32 0f e4 	2 . . 
	jp 01c20h		;1e62	c3 20 1c 	.   . 
	ld a,(08141h)		;1e65	3a 41 81 	: A . 
	or a			;1e68	b7 	. 
	jp nz,01c20h		;1e69	c2 20 1c 	.   . 
	ld a,001h		;1e6c	3e 01 	> . 
	ld (08218h),a		;1e6e	32 18 82 	2 . . 
	ld (0e415h),a		;1e71	32 15 e4 	2 . . 
	call 01e0dh		;1e74	cd 0d 1e 	. . . 
	call 01dffh		;1e77	cd ff 1d 	. . . 
	and 0c8h		;1e7a	e6 c8 	. . 
	set 2,a		;1e7c	cb d7 	. . 
	call 01e07h		;1e7e	cd 07 1e 	. . . 
	ld a,005h		;1e81	3e 05 	> . 
	ld (0e40fh),a		;1e83	32 0f e4 	2 . . 
	jp 01c20h		;1e86	c3 20 1c 	.   . 
	call 01dffh		;1e89	cd ff 1d 	. . . 
	and 0c8h		;1e8c	e6 c8 	. . 
	set 1,a		;1e8e	cb cf 	. . 
	call 01e07h		;1e90	cd 07 1e 	. . . 
	ld a,(08181h)		;1e93	3a 81 81 	: . . 
	and 088h		;1e96	e6 88 	. . 
	set 1,a		;1e98	cb cf 	. . 
	ld (08181h),a		;1e9a	32 81 81 	2 . . 
	out (09eh),a		;1e9d	d3 9e 	. . 
	ld a,004h		;1e9f	3e 04 	> . 
	ld (0e40fh),a		;1ea1	32 0f e4 	2 . . 
	jp 01c20h		;1ea4	c3 20 1c 	.   . 
	call 01dffh		;1ea7	cd ff 1d 	. . . 
	and 0c8h		;1eaa	e6 c8 	. . 
	set 0,a		;1eac	cb c7 	. . 
	call 01e07h		;1eae	cd 07 1e 	. . . 
	ld a,(08181h)		;1eb1	3a 81 81 	: . . 
	and 088h		;1eb4	e6 88 	. . 
	set 0,a		;1eb6	cb c7 	. . 
	ld (08181h),a		;1eb8	32 81 81 	2 . . 
	out (09eh),a		;1ebb	d3 9e 	. . 
	ld a,003h		;1ebd	3e 03 	> . 
	ld (0e40fh),a		;1ebf	32 0f e4 	2 . . 
	jp 01c20h		;1ec2	c3 20 1c 	.   . 
	call 01dffh		;1ec5	cd ff 1d 	. . . 
	and 0c8h		;1ec8	e6 c8 	. . 
	set 4,a		;1eca	cb e7 	. . 
	call 01e07h		;1ecc	cd 07 1e 	. . . 
	ld a,(08181h)		;1ecf	3a 81 81 	: . . 
	and 088h		;1ed2	e6 88 	. . 
	set 4,a		;1ed4	cb e7 	. . 
	ld (08181h),a		;1ed6	32 81 81 	2 . . 
	out (09eh),a		;1ed9	d3 9e 	. . 
	ld a,001h		;1edb	3e 01 	> . 
	ld (0e40fh),a		;1edd	32 0f e4 	2 . . 
	jp 01c20h		;1ee0	c3 20 1c 	.   . 
	ld hl,08188h		;1ee3	21 88 81 	! . . 
	bit 2,(hl)		;1ee6	cb 56 	. V 
	ret z			;1ee8	c8 	. 
	and 0cch		;1ee9	e6 cc 	. . 
	ret			;1eeb	c9 	. 
	ld b,005h		;1eec	06 05 	. . 
	ld hl,08100h		;1eee	21 00 81 	! . . 
	ld (hl),000h		;1ef1	36 00 	6 . 
	inc hl			;1ef3	23 	# 
	inc hl			;1ef4	23 	# 
	djnz $-4		;1ef5	10 fa 	. . 
	ld hl,08181h		;1ef7	21 81 81 	! . . 
	res 2,(hl)		;1efa	cb 96 	. . 
	res 5,(hl)		;1efc	cb ae 	. . 
	ret			;1efe	c9 	. 
	ld a,080h		;1eff	3e 80 	> . 
	out (081h),a		;1f01	d3 81 	. . 
	ld a,(08188h)		;1f03	3a 88 81 	: . . 
	ret			;1f06	c9 	. 
	ld (08188h),a		;1f07	32 88 81 	2 . . 
	out (080h),a		;1f0a	d3 80 	. . 
	ret			;1f0c	c9 	. 
	ld bc,00398h		;1f0d	01 98 03 	. . . 
	ld de,0a019h		;1f10	11 19 a0 	. . . 
	ld hl,081c3h		;1f13	21 c3 81 	! . . 
	ld a,(de)			;1f16	1a 	. 
	cp 04eh		;1f17	fe 4e 	. N 
	call z,01e44h		;1f19	cc 44 1e 	. D . 
	cp 045h		;1f1c	fe 45 	. E 
	call z,01e4eh		;1f1e	cc 4e 1e 	. N . 
	cp 057h		;1f21	fe 57 	. W 
	call z,01e49h		;1f23	cc 49 1e 	. I . 
	dec de			;1f26	1b 	. 
	sla (hl)		;1f27	cb 26 	. & 
	sla (hl)		;1f29	cb 26 	. & 
	djnz $-21		;1f2b	10 e9 	. . 
	srl (hl)		;1f2d	cb 3e 	. > 
	srl (hl)		;1f2f	cb 3e 	. > 
	outi		;1f31	ed a3 	. . 
	ld a,(08181h)		;1f33	3a 81 81 	: . . 
	res 2,a		;1f36	cb 97 	. . 
	res 6,a		;1f38	cb b7 	. . 
	ld (08181h),a		;1f3a	32 81 81 	2 . . 
	out (09eh),a		;1f3d	d3 9e 	. . 
	xor a			;1f3f	af 	. 
	ld (08116h),a		;1f40	32 16 81 	2 . . 
	ret			;1f43	c9 	. 
	res 0,(hl)		;1f44	cb 86 	. . 
	res 1,(hl)		;1f46	cb 8e 	. . 
	ret			;1f48	c9 	. 
	set 0,(hl)		;1f49	cb c6 	. . 
	res 1,(hl)		;1f4b	cb 8e 	. . 
	ret			;1f4d	c9 	. 
	res 0,(hl)		;1f4e	cb 86 	. . 
	set 1,(hl)		;1f50	cb ce 	. . 
	ret			;1f52	c9 	. 
	ld hl,08181h		;1f53	21 81 81 	! . . 
	ld a,(0a016h)		;1f56	3a 16 a0 	: . . 
	cp 04eh		;1f59	fe 4e 	. N 
	call z,01e6dh		;1f5b	cc 6d 1e 	. m . 
	cp 045h		;1f5e	fe 45 	. E 
	call z,01e76h		;1f60	cc 76 1e 	. v . 
	cp 057h		;1f63	fe 57 	. W 
	call z,01e7ah		;1f65	cc 7a 1e 	. z . 
	ld c,09eh		;1f68	0e 9e 	. . 
	outi		;1f6a	ed a3 	. . 
	ret			;1f6c	c9 	. 
	push hl			;1f6d	e5 	. 
	ld hl,0b93bh		;1f6e	21 3b b9 	! ; . 
	call 01b10h		;1f71	cd 10 1b 	. . . 
	pop hl			;1f74	e1 	. 
	ret			;1f75	c9 	. 
	ld (hl),004h		;1f76	36 04 	6 . 
	jr $+4		;1f78	18 02 	. . 
	ld (hl),040h		;1f7a	36 40 	6 @ 
	call 01e80h		;1f7c	cd 80 1e 	. . . 
	ret			;1f7f	c9 	. 
	ld a,080h		;1f80	3e 80 	> . 
	out (081h),a		;1f82	d3 81 	. . 
	ld a,(08188h)		;1f84	3a 88 81 	: . . 
	and 0c0h		;1f87	e6 c0 	. . 
	ld (08188h),a		;1f89	32 88 81 	2 . . 
	out (080h),a		;1f8c	d3 80 	. . 
	ret			;1f8e	c9 	. 
	call 01eabh		;1f8f	cd ab 1e 	. . . 
	set 3,a		;1f92	cb df 	. . 
	call 01eb3h		;1f94	cd b3 1e 	. . . 
	set 3,a		;1f97	cb df 	. . 
	call 01ebch		;1f99	cd bc 1e 	. . . 
	ret			;1f9c	c9 	. 
	call 01eabh		;1f9d	cd ab 1e 	. . . 
	res 3,a		;1fa0	cb 9f 	. . 
	call 01eb3h		;1fa2	cd b3 1e 	. . . 
	res 3,a		;1fa5	cb 9f 	. . 
	call 01ebch		;1fa7	cd bc 1e 	. . . 
	ret			;1faa	c9 	. 
	ld a,085h		;1fab	3e 85 	> . 
	out (081h),a		;1fad	d3 81 	. . 
	ld a,(0818dh)		;1faf	3a 8d 81 	: . . 
	ret			;1fb2	c9 	. 
	ld (0818dh),a		;1fb3	32 8d 81 	2 . . 
	out (080h),a		;1fb6	d3 80 	. . 
	ld a,(081ach)		;1fb8	3a ac 81 	: . . 
	ret			;1fbb	c9 	. 
	ld (081ach),a		;1fbc	32 ac 81 	2 . . 
	out (089h),a		;1fbf	d3 89 	. . 
	ret			;1fc1	c9 	. 
	call 01eabh		;1fc2	cd ab 1e 	. . . 
	set 6,a		;1fc5	cb f7 	. . 
	call 01eb3h		;1fc7	cd b3 1e 	. . . 
	ld a,(081c6h)		;1fca	3a c6 81 	: . . 
	set 0,a		;1fcd	cb c7 	. . 
	ld (081c6h),a		;1fcf	32 c6 81 	2 . . 
	out (0a0h),a		;1fd2	d3 a0 	. . 
	ret			;1fd4	c9 	. 
	call 01eabh		;1fd5	cd ab 1e 	. . . 
	res 6,a		;1fd8	cb b7 	. . 
	call 01eb3h		;1fda	cd b3 1e 	. . . 
	ld a,(081c6h)		;1fdd	3a c6 81 	: . . 
	res 0,a		;1fe0	cb 87 	. . 
	ld (081c6h),a		;1fe2	32 c6 81 	2 . . 
	out (0a0h),a		;1fe5	d3 a0 	. . 
	ret			;1fe7	c9 	. 
	call 01eabh		;1fe8	cd ab 1e 	. . . 
	set 7,a		;1feb	cb ff 	. . 
	call 01eb3h		;1fed	cd b3 1e 	. . . 
	ld a,(081c6h)		;1ff0	3a c6 81 	: . . 
	set 4,a		;1ff3	cb e7 	. . 
	ld (081c6h),a		;1ff5	32 c6 81 	2 . . 
	out (0a0h),a		;1ff8	d3 a0 	. . 
	ret			;1ffa	c9 	. 
	call 01eabh		;1ffb	cd ab 1e 	. . . 
	res 7,a		;1ffe	cb bf 	. . 
	call 01eb3h		;2000	cd b3 1e 	. . . 
	ld a,(081c6h)		;2003	3a c6 81 	: . . 
	res 4,a		;2006	cb a7 	. . 
	ld (081c6h),a		;2008	32 c6 81 	2 . . 
	out (0a0h),a		;200b	d3 a0 	. . 
	ret			;200d	c9 	. 
	ld a,086h		;200e	3e 86 	> . 
	out (081h),a		;2010	d3 81 	. . 
	ld a,(0818eh)		;2012	3a 8e 81 	: . . 
	set 5,a		;2015	cb ef 	. . 
	ld (0818eh),a		;2017	32 8e 81 	2 . . 
	out (080h),a		;201a	d3 80 	. . 
	ld a,041h		;201c	3e 41 	> A 
	call 048f2h		;201e	cd f2 48 	. . H 
	ret			;2021	c9 	. 
	ld a,086h		;2022	3e 86 	> . 
	out (081h),a		;2024	d3 81 	. . 
	ld a,(0818eh)		;2026	3a 8e 81 	: . . 
	res 5,a		;2029	cb af 	. . 
	ld (0818eh),a		;202b	32 8e 81 	2 . . 
	out (080h),a		;202e	d3 80 	. . 
	ld a,042h		;2030	3e 42 	> B 
	call 048f2h		;2032	cd f2 48 	. . H 
	ret			;2035	c9 	. 
	ret			;2036	c9 	. 
	ld a,(0821fh)		;2037	3a 1f 82 	: . . 
	cp 001h		;203a	fe 01 	. . 
	jr z,$+108		;203c	28 6a 	( j 
	ld a,(0810fh)		;203e	3a 0f 81 	: . . 
	or a			;2041	b7 	. 
	jp z,02003h		;2042	ca 03 20 	. .   
	call 02009h		;2045	cd 09 20 	. .   
	ld a,(08131h)		;2048	3a 31 81 	: 1 . 
	or a			;204b	b7 	. 
	jr z,$+93		;204c	28 5b 	( [ 
	ld a,(08119h)		;204e	3a 19 81 	: . . 
	sub 034h		;2051	d6 34 	. 4 
	jp p,01ffch		;2053	f2 fc 1f 	. . . 
	xor a			;2056	af 	. 
	out (08dh),a		;2057	d3 8d 	. . 
	ld a,001h		;2059	3e 01 	> . 
	out (08eh),a		;205b	d3 8e 	. . 
	ld a,080h		;205d	3e 80 	> . 
	out (081h),a		;205f	d3 81 	. . 
	ld a,(08188h)		;2061	3a 88 81 	: . . 
	set 6,a		;2064	cb f7 	. . 
	ld (08188h),a		;2066	32 88 81 	2 . . 
	out (080h),a		;2069	d3 80 	. . 
	ld a,(0825dh)		;206b	3a 5d 82 	: ] . 
	cp 001h		;206e	fe 01 	. . 
	jr z,$+56		;2070	28 36 	( 6 
	ld a,044h		;2072	3e 44 	> D 
	call 0495ah		;2074	cd 5a 49 	. Z I 
	ld a,(08143h)		;2077	3a 43 81 	: C . 
	cp 001h		;207a	fe 01 	. . 
	jr z,$+27		;207c	28 19 	( . 
	ld a,(0822bh)		;207e	3a 2b 82 	: + . 
	cp 001h		;2081	fe 01 	. . 
	jr z,$+20		;2083	28 12 	( . 
	xor a			;2085	af 	. 
	ld (08110h),a		;2086	32 10 81 	2 . . 
	ld (08112h),a		;2089	32 12 81 	2 . . 
	ld (08114h),a		;208c	32 14 81 	2 . . 
	ld a,(08116h)		;208f	3a 16 81 	: . . 
	xor 001h		;2092	ee 01 	. . 
	ld (08116h),a		;2094	32 16 81 	2 . . 
	xor a			;2097	af 	. 
	ld (0825eh),a		;2098	32 5e 82 	2 ^ . 
	ld (0810eh),a		;209b	32 0e 81 	2 . . 
	ld (0810ch),a		;209e	32 0c 81 	2 . . 
	inc a			;20a1	3c 	< 
	ld (08224h),a		;20a2	32 24 82 	2 $ . 
	ld (0825dh),a		;20a5	32 5d 82 	2 ] . 
	ret			;20a8	c9 	. 
	ld a,(0825eh)		;20a9	3a 5e 82 	: ^ . 
	cp 001h		;20ac	fe 01 	. . 
	jr z,$-6		;20ae	28 f8 	( . 
	xor a			;20b0	af 	. 
	out (08eh),a		;20b1	d3 8e 	. . 
	ld a,080h		;20b3	3e 80 	> . 
	out (081h),a		;20b5	d3 81 	. . 
	ld a,(08188h)		;20b7	3a 88 81 	: . . 
	res 6,a		;20ba	cb b7 	. . 
	ld (08188h),a		;20bc	32 88 81 	2 . . 
	out (080h),a		;20bf	d3 80 	. . 
	ld a,045h		;20c1	3e 45 	> E 
	call 0495ah		;20c3	cd 5a 49 	. Z I 
	ld a,(08143h)		;20c6	3a 43 81 	: C . 
	cp 001h		;20c9	fe 01 	. . 
	jr z,$+30		;20cb	28 1c 	( . 
	ld a,(0822bh)		;20cd	3a 2b 82 	: + . 
	cp 001h		;20d0	fe 01 	. . 
	jr z,$+23		;20d2	28 15 	( . 
	xor a			;20d4	af 	. 
	ld (08110h),a		;20d5	32 10 81 	2 . . 
	ld (08112h),a		;20d8	32 12 81 	2 . . 
	ld (08114h),a		;20db	32 14 81 	2 . . 
	ld (08114h),a		;20de	32 14 81 	2 . . 
	ld a,(08116h)		;20e1	3a 16 81 	: . . 
	xor 001h		;20e4	ee 01 	. . 
	ld (08116h),a		;20e6	32 16 81 	2 . . 
	xor a			;20e9	af 	. 
	ld (0825dh),a		;20ea	32 5d 82 	2 ] . 
	ld (0810eh),a		;20ed	32 0e 81 	2 . . 
	ld (0810ch),a		;20f0	32 0c 81 	2 . . 
	inc a			;20f3	3c 	< 
	ld (08224h),a		;20f4	32 24 82 	2 $ . 
	ld (0825eh),a		;20f7	32 5e 82 	2 ^ . 
	jr $-82		;20fa	18 ac 	. . 
	ld a,001h		;20fc	3e 01 	> . 
	out (08dh),a		;20fe	d3 8d 	. . 
	jp 01f59h		;2100	c3 59 1f 	. Y . 
	call 02017h		;2103	cd 17 20 	. .   
	jp 01f48h		;2106	c3 48 1f 	. H . 
	xor a			;2109	af 	. 
	out (08ch),a		;210a	d3 8c 	. . 
	ld a,(081ach)		;210c	3a ac 81 	: . . 
	set 0,a		;210f	cb c7 	. . 
	ld (081ach),a		;2111	32 ac 81 	2 . . 
	out (089h),a		;2114	d3 89 	. . 
	ret			;2116	c9 	. 
	ld a,001h		;2117	3e 01 	> . 
	out (08ch),a		;2119	d3 8c 	. . 
	ld a,(081ach)		;211b	3a ac 81 	: . . 
	res 0,a		;211e	cb 87 	. . 
	ld (081ach),a		;2120	32 ac 81 	2 . . 
	out (089h),a		;2123	d3 89 	. . 
	ret			;2125	c9 	. 
	ld a,(08279h)		;2126	3a 79 82 	: y . 
	cp 001h		;2129	fe 01 	. . 
	jr nz,$+8		;212b	20 06 	  . 
	ld a,(0814dh)		;212d	3a 4d 81 	: M . 
	ld (0814ah),a		;2130	32 4a 81 	2 J . 
	ld hl,081c0h		;2133	21 c0 81 	! . . 
	ld a,(0814ah)		;2136	3a 4a 81 	: J . 
	cp 0ffh		;2139	fe ff 	. . 
	jp z,020cfh		;213b	ca cf 20 	. .   
	ld a,(08359h)		;213e	3a 59 83 	: Y . 
	or a			;2141	b7 	. 
	jr nz,$+9		;2142	20 07 	  . 
	ld a,(0814ah)		;2144	3a 4a 81 	: J . 
	cp 01ch		;2147	fe 1c 	. . 
	jr z,$+2		;2149	28 00 	( . 
	ld a,(0835ah)		;214b	3a 5a 83 	: Z . 
	or a			;214e	b7 	. 
	jr z,$+24		;214f	28 16 	( . 
	ld a,001h		;2151	3e 01 	> . 
	or a			;2153	b7 	. 
	jr z,$+19		;2154	28 11 	( . 
	ld a,(0814ah)		;2156	3a 4a 81 	: J . 
	cp 008h		;2159	fe 08 	. . 
	jp z,076c7h		;215b	ca c7 76 	. . v 
	cp 00dh		;215e	fe 0d 	. . 
	jr nc,$+7		;2160	30 05 	0 . 
	cp 00ah		;2162	fe 0a 	. . 
	jp nc,076c7h		;2164	d2 c7 76 	. . v 
	ld a,(0814ah)		;2167	3a 4a 81 	: J . 
	bit 7,a		;216a	cb 7f 	.  
	jp z,0234eh		;216c	ca 4e 23 	. N # 
	ld b,a			;216f	47 	G 
	ld a,(08239h)		;2170	3a 39 82 	: 9 . 
	or a			;2173	b7 	. 
	ld a,b			;2174	78 	x 
	jp nz,020c7h		;2175	c2 c7 20 	. .   
	cp 080h		;2178	fe 80 	. . 
	jp z,020d8h		;217a	ca d8 20 	. .   
	cp 081h		;217d	fe 81 	. . 
	jp z,02109h		;217f	ca 09 21 	. . ! 
	cp 082h		;2182	fe 82 	. . 
	jp z,02115h		;2184	ca 15 21 	. . ! 
	cp 083h		;2187	fe 83 	. . 
	jp z,02161h		;2189	ca 61 21 	. a ! 
	cp 084h		;218c	fe 84 	. . 
	jp z,02171h		;218e	ca 71 21 	. q ! 
	cp 085h		;2191	fe 85 	. . 
	jp z,021cbh		;2193	ca cb 21 	. . ! 
	cp 086h		;2196	fe 86 	. . 
	jp z,021d8h		;2198	ca d8 21 	. . ! 
	cp 087h		;219b	fe 87 	. . 
	jp z,021e5h		;219d	ca e5 21 	. . ! 
	cp 088h		;21a0	fe 88 	. . 
	jp z,021f4h		;21a2	ca f4 21 	. . ! 
	cp 089h		;21a5	fe 89 	. . 
	jp z,02282h		;21a7	ca 82 22 	. . " 
	cp 08fh		;21aa	fe 8f 	. . 
	jp z,02298h		;21ac	ca 98 22 	. . " 
	cp 090h		;21af	fe 90 	. . 
	jp z,022f0h		;21b1	ca f0 22 	. . " 
	cp 092h		;21b4	fe 92 	. . 
	jp z,0233fh		;21b6	ca 3f 23 	. ? # 
	ld a,001h		;21b9	3e 01 	> . 
	or a			;21bb	b7 	. 
	call nz,070abh		;21bc	c4 ab 70 	. . p 
	call 0051dh		;21bf	cd 1d 05 	. . . 
	ld a,003h		;21c2	3e 03 	> . 
	ld (08292h),a		;21c4	32 92 82 	2 . . 
	in a,(080h)		;21c7	db 80 	. . 
	in a,(04dh)		;21c9	db 4d 	. M 
	bit 1,a		;21cb	cb 4f 	. O 
	jr nz,$-6		;21cd	20 f8 	  . 
	ret			;21cf	c9 	. 
	ld a,002h		;21d0	3e 02 	> . 
	jr $-14		;21d2	18 f0 	. . 
	ld a,001h		;21d4	3e 01 	> . 
	jr $-18		;21d6	18 ec 	. . 
	call 02786h		;21d8	cd 86 27 	. . ' 
	ld de,0b0ebh		;21db	11 eb b0 	. . . 
	call 00c85h		;21de	cd 85 0c 	. . . 
	call 003a4h		;21e1	cd a4 03 	. . . 
	call 0051dh		;21e4	cd 1d 05 	. . . 
	ld a,(0814ah)		;21e7	3a 4a 81 	: J . 
	cp 01bh		;21ea	fe 1b 	. . 
	jr z,$+24		;21ec	28 16 	( . 
	cp 00ah		;21ee	fe 0a 	. . 
	jr nz,$+11		;21f0	20 09 	  . 
	ld de,0b2a7h		;21f2	11 a7 b2 	. . . 
	call 00c92h		;21f5	cd 92 0c 	. . . 
	jp 020e1h		;21f8	c3 e1 20 	. .   
	cp 00bh		;21fb	fe 0b 	. . 
	jr nz,$-28		;21fd	20 e2 	  . 
	ld de,0b0ebh		;21ff	11 eb b0 	. . . 
	jr $-13		;2202	18 f1 	. . 
	call 027b4h		;2204	cd b4 27 	. . ' 
	jr $-64		;2207	18 be 	. . 
	ld a,(08378h)		;2209	3a 78 83 	: x . 
	or a			;220c	b7 	. 
	jp nz,020c7h		;220d	c2 c7 20 	. .   
	call 02830h		;2210	cd 30 28 	. 0 ( 
	jr $-76		;2213	18 b2 	. . 
	jp 020c7h		;2215	c3 c7 20 	. .   
	bit 6,(hl)		;2218	cb 76 	. v 
	jr nz,$-74		;221a	20 b4 	  . 
	ld a,(08111h)		;221c	3a 11 81 	: . . 
	cp 001h		;221f	fe 01 	. . 
	jr z,$-77		;2221	28 b1 	( . 
	ld a,(08143h)		;2223	3a 43 81 	: C . 
	cp 001h		;2226	fe 01 	. . 
	jr z,$-84		;2228	28 aa 	( . 
	ld a,(08115h)		;222a	3a 15 81 	: . . 
	cp 001h		;222d	fe 01 	. . 
	jr z,$-91		;222f	28 a3 	( . 
	ld a,(08140h)		;2231	3a 40 81 	: @ . 
	or a			;2234	b7 	. 
	jr z,$+16		;2235	28 0e 	( . 
	cp 004h		;2237	fe 04 	. . 
	jr z,$+12		;2239	28 0a 	( . 
	cp 008h		;223b	fe 08 	. . 
	jr nz,$-105		;223d	20 95 	  . 
	ld a,(08220h)		;223f	3a 20 82 	:   . 
	or a			;2242	b7 	. 
	jr nz,$-111		;2243	20 8f 	  . 
	ld a,(0821fh)		;2245	3a 1f 82 	: . . 
	or a			;2248	b7 	. 
	jr z,$+9		;2249	28 07 	( . 
	ld a,(08267h)		;224b	3a 67 82 	: g . 
	or a			;224e	b7 	. 
	jp z,020d4h		;224f	ca d4 20 	. .   
	ld a,(0821eh)		;2252	3a 1e 82 	: . . 
	cp 001h		;2255	fe 01 	. . 
	jr z,$+13		;2257	28 0b 	( . 
	ld a,001h		;2259	3e 01 	> . 
	ld (0821eh),a		;225b	32 1e 82 	2 . . 
	jp 020c7h		;225e	c3 c7 20 	. .   
	call 008d7h		;2261	cd d7 08 	. . . 
	xor a			;2264	af 	. 
	ld (0821eh),a		;2265	32 1e 82 	2 . . 
	ld (08220h),a		;2268	32 20 82 	2   . 
	ld (0826bh),a		;226b	32 6b 82 	2 k . 
	jp 020c7h		;226e	c3 c7 20 	. .   
	ld a,(08378h)		;2271	3a 78 83 	: x . 
	or a			;2274	b7 	. 
	jp nz,020c7h		;2275	c2 c7 20 	. .   
	push hl			;2278	e5 	. 
	push bc			;2279	c5 	. 
	ld a,06eh		;227a	3e 6e 	> n 
	call 048f2h		;227c	cd f2 48 	. . H 
	ld a,032h		;227f	3e 32 	> 2 
	call 048f2h		;2281	cd f2 48 	. . H 
	ld b,006h		;2284	06 06 	. . 
	ld hl,0a4bah		;2286	21 ba a4 	! . . 
	ld a,(08237h)		;2289	3a 37 82 	: 7 . 
	or a			;228c	b7 	. 
	jr z,$+5		;228d	28 03 	( . 
	ld hl,081f0h		;228f	21 f0 81 	! . . 
	xor 001h		;2292	ee 01 	. . 
	ld (08237h),a		;2294	32 37 82 	2 7 . 
	ld a,(hl)			;2297	7e 	~ 
	cp 020h		;2298	fe 20 	.   
	jr nz,$+4		;229a	20 02 	  . 
	ld a,030h		;229c	3e 30 	> 0 
	inc hl			;229e	23 	# 
	call 048f2h		;229f	cd f2 48 	. . H 
	djnz $-11		;22a2	10 f3 	. . 
	ld a,001h		;22a4	3e 01 	> . 
	ld (0825fh),a		;22a6	32 5f 82 	2 _ . 
	ld bc,00006h		;22a9	01 06 00 	. . . 
	ld hl,05806h		;22ac	21 06 58 	! . X 
	ld de,081f0h		;22af	11 f0 81 	. . . 
	ldir		;22b2	ed b0 	. . 
	ld b,006h		;22b4	06 06 	. . 
	ld hl,0e4c6h		;22b6	21 c6 e4 	! . . 
	ld de,081f5h		;22b9	11 f5 81 	. . . 
	ld a,(hl)			;22bc	7e 	~ 
	dec hl			;22bd	2b 	+ 
	cp 020h		;22be	fe 20 	.   
	jr z,$+4		;22c0	28 02 	( . 
	ld (de),a			;22c2	12 	. 
	dec de			;22c3	1b 	. 
	djnz $-8		;22c4	10 f6 	. . 
	pop bc			;22c6	c1 	. 
	pop hl			;22c7	e1 	. 
	jp 020c7h		;22c8	c3 c7 20 	. .   
	ld a,(08378h)		;22cb	3a 78 83 	: x . 
	or a			;22ce	b7 	. 
	jp nz,020c7h		;22cf	c2 c7 20 	. .   
	call 02944h		;22d2	cd 44 29 	. D ) 
	jp 020c7h		;22d5	c3 c7 20 	. .   
	ld a,(08378h)		;22d8	3a 78 83 	: x . 
	or a			;22db	b7 	. 
	jp nz,020c7h		;22dc	c2 c7 20 	. .   
	call 027d4h		;22df	cd d4 27 	. . ' 
	jp 020c7h		;22e2	c3 c7 20 	. .   
	ld a,(08378h)		;22e5	3a 78 83 	: x . 
	or a			;22e8	b7 	. 
	jp nz,020c7h		;22e9	c2 c7 20 	. .   
	ld a,001h		;22ec	3e 01 	> . 
	ld (0823ah),a		;22ee	32 3a 82 	2 : . 
	jp 020c7h		;22f1	c3 c7 20 	. .   
	ld a,(08378h)		;22f4	3a 78 83 	: x . 
	or a			;22f7	b7 	. 
	jp nz,020c7h		;22f8	c2 c7 20 	. .   
	push hl			;22fb	e5 	. 
	push de			;22fc	d5 	. 
	ld a,(08238h)		;22fd	3a 38 82 	: 8 . 
	or a			;2300	b7 	. 
	jp nz,0223fh		;2301	c2 3f 22 	. ? " 
	ld a,076h		;2304	3e 76 	> v 
	call 048f2h		;2306	cd f2 48 	. . H 
	ld a,041h		;2309	3e 41 	> A 
	call 048f2h		;230b	cd f2 48 	. . H 
	ld b,003h		;230e	06 03 	. . 
	ld de,081f6h		;2310	11 f6 81 	. . . 
	call 04930h		;2313	cd 30 49 	. 0 I 
	ld (de),a			;2316	12 	. 
	inc de			;2317	13 	. 
	djnz $-5		;2318	10 f9 	. . 
	ld a,06eh		;231a	3e 6e 	> n 
	call 048f2h		;231c	cd f2 48 	. . H 
	ld a,038h		;231f	3e 38 	> 8 
	call 048f2h		;2321	cd f2 48 	. . H 
	ld hl,0a4c0h		;2324	21 c0 a4 	! . . 
	ld b,003h		;2327	06 03 	. . 
	ld a,(hl)			;2329	7e 	~ 
	inc hl			;232a	23 	# 
	call 048f2h		;232b	cd f2 48 	. . H 
	djnz $-5		;232e	10 f9 	. . 
	ld a,001h		;2330	3e 01 	> . 
	ld (08238h),a		;2332	32 38 82 	2 8 . 
	ld a,001h		;2335	3e 01 	> . 
	ld (0825fh),a		;2337	32 5f 82 	2 _ . 
	pop de			;233a	d1 	. 
	pop hl			;233b	e1 	. 
	jp 020c7h		;233c	c3 c7 20 	. .   
	ld a,076h		;233f	3e 76 	> v 
	call 048f2h		;2341	cd f2 48 	. . H 
	ld a,041h		;2344	3e 41 	> A 
	call 048f2h		;2346	cd f2 48 	. . H 
	ld b,003h		;2349	06 03 	. . 
	ld hl,0a4c0h		;234b	21 c0 a4 	! . . 
	call 04930h		;234e	cd 30 49 	. 0 I 
	cp (hl)			;2351	be 	. 
	jp z,0225ah		;2352	ca 5a 22 	. Z " 
	ld a,000h		;2355	3e 00 	> . 
	ld (08238h),a		;2357	32 38 82 	2 8 . 
	inc hl			;235a	23 	# 
	djnz $-13		;235b	10 f1 	. . 
	ld a,(08238h)		;235d	3a 38 82 	: 8 . 
	or a			;2360	b7 	. 
	jp z,02204h		;2361	ca 04 22 	. . " 
	ld a,06eh		;2364	3e 6e 	> n 
	call 048f2h		;2366	cd f2 48 	. . H 
	ld a,038h		;2369	3e 38 	> 8 
	call 048f2h		;236b	cd f2 48 	. . H 
	ld hl,081f6h		;236e	21 f6 81 	! . . 
	ld b,003h		;2371	06 03 	. . 
	ld a,(hl)			;2373	7e 	~ 
	inc hl			;2374	23 	# 
	call 048f2h		;2375	cd f2 48 	. . H 
	djnz $-5		;2378	10 f9 	. . 
	ld a,000h		;237a	3e 00 	> . 
	ld (08238h),a		;237c	32 38 82 	2 8 . 
	jp 02235h		;237f	c3 35 22 	. 5 " 
	ld a,(0822bh)		;2382	3a 2b 82 	: + . 
	cp 001h		;2385	fe 01 	. . 
	jp z,020c7h		;2387	ca c7 20 	. .   
	call 02e45h		;238a	cd 45 2e 	. E . 
	call 02e1fh		;238d	cd 1f 2e 	. . . 
	ld a,001h		;2390	3e 01 	> . 
	ld (08125h),a		;2392	32 25 81 	2 % . 
	jp 020c7h		;2395	c3 c7 20 	. .   
	ld a,(08378h)		;2398	3a 78 83 	: x . 
	or a			;239b	b7 	. 
	jp nz,020c7h		;239c	c2 c7 20 	. .   
	ld a,(08218h)		;239f	3a 18 82 	: . . 
	or a			;23a2	b7 	. 
	jr nz,$+70		;23a3	20 44 	  D 
	ld a,(0822bh)		;23a5	3a 2b 82 	: + . 
	or a			;23a8	b7 	. 
	jr nz,$+64		;23a9	20 3e 	  > 
	ld a,(08141h)		;23ab	3a 41 81 	: A . 
	or a			;23ae	b7 	. 
	jr nz,$+58		;23af	20 38 	  8 
	ld a,(0810dh)		;23b1	3a 0d 81 	: . . 
	or a			;23b4	b7 	. 
	jr z,$+52		;23b5	28 32 	( 2 
	ld a,(0821fh)		;23b7	3a 1f 82 	: . . 
	or a			;23ba	b7 	. 
	jr z,$+9		;23bb	28 07 	( . 
	ld a,(08267h)		;23bd	3a 67 82 	: g . 
	or a			;23c0	b7 	. 
	jp nz,022e9h		;23c1	c2 e9 22 	. . " 
	ld a,(08140h)		;23c4	3a 40 81 	: @ . 
	bit 2,a		;23c7	cb 57 	. W 
	jr nz,$+6		;23c9	20 04 	  . 
	bit 3,a		;23cb	cb 5f 	. _ 
	jr z,$+28		;23cd	28 1a 	( . 
	xor a			;23cf	af 	. 
	ld (08116h),a		;23d0	32 16 81 	2 . . 
	ld (08117h),a		;23d3	32 17 81 	2 . . 
	ld (0826ah),a		;23d6	32 6a 82 	2 j . 
	ld (0826bh),a		;23d9	32 6b 82 	2 k . 
	inc a			;23dc	3c 	< 
	ld (08220h),a		;23dd	32 20 82 	2   . 
	ld (0822dh),a		;23e0	32 2d 82 	2 - . 
	call 02fd4h		;23e3	cd d4 2f 	. . / 
	jp 020c7h		;23e6	c3 c7 20 	. .   
	xor a			;23e9	af 	. 
	ld (08220h),a		;23ea	32 20 82 	2   . 
	jp 020c2h		;23ed	c3 c2 20 	. .   
	bit 0,(hl)		;23f0	cb 46 	. F 
	jp nz,020c2h		;23f2	c2 c2 20 	. .   
	ld a,(0822bh)		;23f5	3a 2b 82 	: + . 
	or a			;23f8	b7 	. 
	call nz,025b9h		;23f9	c4 b9 25 	. . % 
	xor 001h		;23fc	ee 01 	. . 
	ld (08117h),a		;23fe	32 17 81 	2 . . 
	ld (0822bh),a		;2401	32 2b 82 	2 + . 
	push af			;2404	f5 	. 
	call nz,01dech		;2405	c4 ec 1d 	. . . 
	call 01b03h		;2408	cd 03 1b 	. . . 
	pop af			;240b	f1 	. 
	jp z,020c7h		;240c	ca c7 20 	. .   
	ld a,010h		;240f	3e 10 	> . 
	call 017b3h		;2411	cd b3 17 	. . . 
	xor a			;2414	af 	. 
	ld (08116h),a		;2415	32 16 81 	2 . . 
	ld (08220h),a		;2418	32 20 82 	2   . 
	call 025b9h		;241b	cd b9 25 	. . % 
	ld a,(08109h)		;241e	3a 09 81 	: . . 
	or a			;2421	b7 	. 
	jr z,$+12		;2422	28 0a 	( . 
	ld (08101h),a		;2424	32 01 81 	2 . . 
	dec a			;2427	3d 	= 
	ld (08109h),a		;2428	32 09 81 	2 . . 
	ld (08108h),a		;242b	32 08 81 	2 . . 
	ld bc,00007h		;242e	01 07 00 	. . . 
	ld de,081c7h		;2431	11 c7 81 	. . . 
	ld hl,0e4c0h		;2434	21 c0 e4 	! . . 
	ldir		;2437	ed b0 	. . 
	call 02fd4h		;2439	cd d4 2f 	. . / 
	jp 020c7h		;243c	c3 c7 20 	. .   
	ld a,(08378h)		;243f	3a 78 83 	: x . 
	or a			;2442	b7 	. 
	jp nz,020c7h		;2443	c2 c7 20 	. .   
	ld a,001h		;2446	3e 01 	> . 
	ld (08138h),a		;2448	32 38 81 	2 8 . 
	jp 020c2h		;244b	c3 c2 20 	. .   
	ld a,(08117h)		;244e	3a 17 81 	: . . 
	cp 001h		;2451	fe 01 	. . 
	jp z,02380h		;2453	ca 80 23 	. . # 
	ld a,(0814ah)		;2456	3a 4a 81 	: J . 
	cp 003h		;2459	fe 03 	. . 
	jp z,02531h		;245b	ca 31 25 	. 1 % 
	cp 011h		;245e	fe 11 	. . 
	jp z,023b1h		;2460	ca b1 23 	. . # 
	cp 013h		;2463	fe 13 	. . 
	jr z,$+63		;2465	28 3d 	( = 
	cp 01ah		;2467	fe 1a 	. . 
	jp z,02557h		;2469	ca 57 25 	. W % 
	cp 006h		;246c	fe 06 	. . 
	jp z,02564h		;246e	ca 64 25 	. d % 
	cp 018h		;2471	fe 18 	. . 
	jp z,02571h		;2473	ca 71 25 	. q % 
	cp 00eh		;2476	fe 0e 	. . 
	jp z,0259dh		;2478	ca 9d 25 	. . % 
	cp 012h		;247b	fe 12 	. . 
	jp z,02587h		;247d	ca 87 25 	. . % 
	ld a,001h		;2480	3e 01 	> . 
	or a			;2482	b7 	. 
	call nz,070abh		;2483	c4 ab 70 	. . p 
	jp 020c7h		;2486	c3 c7 20 	. .   
	ld a,06ch		;2489	3e 6c 	> l 
	call 048f2h		;248b	cd f2 48 	. . H 
	call 003a4h		;248e	cd a4 03 	. . . 
	call 0051dh		;2491	cd 1d 05 	. . . 
	ld a,(0814ah)		;2494	3a 4a 81 	: J . 
	cp 080h		;2497	fe 80 	. . 
	jr z,$-19		;2499	28 eb 	( . 
	cp 0ffh		;249b	fe ff 	. . 
	jr z,$-15		;249d	28 ef 	( . 
	call 0495ah		;249f	cd 5a 49 	. Z I 
	jr $-20		;24a2	18 ea 	. . 
	ld a,(08378h)		;24a4	3a 78 83 	: x . 
	or a			;24a7	b7 	. 
	jp nz,020c7h		;24a8	c2 c7 20 	. .   
	call 03845h		;24ab	cd 45 38 	. E 8 
	jp 020c7h		;24ae	c3 c7 20 	. .   
	ld a,(08378h)		;24b1	3a 78 83 	: x . 
	or a			;24b4	b7 	. 
	jp nz,020c7h		;24b5	c2 c7 20 	. .   
	ld a,(0810fh)		;24b8	3a 0f 81 	: . . 
	cp 001h		;24bb	fe 01 	. . 
	jp nz,020c7h		;24bd	c2 c7 20 	. .   
	call 0051dh		;24c0	cd 1d 05 	. . . 
	ld a,(0814ah)		;24c3	3a 4a 81 	: J . 
	cp 031h		;24c6	fe 31 	. 1 
	jp z,023dch		;24c8	ca dc 23 	. . # 
	cp 032h		;24cb	fe 32 	. 2 
	jp z,0240ch		;24cd	ca 0c 24 	. . $ 
	cp 033h		;24d0	fe 33 	. 3 
	jp z,0244fh		;24d2	ca 4f 24 	. O $ 
	cp 034h		;24d5	fe 34 	. 4 
	jp z,02489h		;24d7	ca 89 24 	. . $ 
	jr $-41		;24da	18 d5 	. . 
	ld a,050h		;24dc	3e 50 	> P 
	call 0495ah		;24de	cd 5a 49 	. Z I 
	ld a,039h		;24e1	3e 39 	> 9 
	call 0495ah		;24e3	cd 5a 49 	. Z I 
	ld hl,08280h		;24e6	21 80 82 	! . . 
	call 0550eh		;24e9	cd 0e 55 	. . U 
	ld a,001h		;24ec	3e 01 	> . 
	ld (08222h),a		;24ee	32 22 82 	2 " . 
	ld a,096h		;24f1	3e 96 	> . 
	ld (08195h),a		;24f3	32 95 81 	2 . . 
	ld a,00dh		;24f6	3e 0d 	> . 
	ld (087ffh),a		;24f8	32 ff 87 	2 . . 
	call 00c85h		;24fb	cd 85 0c 	. . . 
	ld a,001h		;24fe	3e 01 	> . 
	ld (0e413h),a		;2500	32 13 e4 	2 . . 
	ld de,0c4ffh		;2503	11 ff c4 	. . . 
	call 00c92h		;2506	cd 92 0c 	. . . 
	jp 020c7h		;2509	c3 c7 20 	. .   
	ld a,047h		;250c	3e 47 	> G 
	call 0495ah		;250e	cd 5a 49 	. Z I 
	ld a,034h		;2511	3e 34 	> 4 
	call 0495ah		;2513	cd 5a 49 	. Z I 
	ld a,033h		;2516	3e 33 	> 3 
	out (09ah),a		;2518	d3 9a 	. . 
	out (09bh),a		;251a	d3 9b 	. . 
	ld a,033h		;251c	3e 33 	> 3 
	out (09ah),a		;251e	d3 9a 	. . 
	out (09ch),a		;2520	d3 9c 	. . 
	ld a,001h		;2522	3e 01 	> . 
	out (09ah),a		;2524	d3 9a 	. . 
	out (09dh),a		;2526	d3 9d 	. . 
	ld a,00dh		;2528	3e 0d 	> . 
	ld (087ffh),a		;252a	32 ff 87 	2 . . 
	call 00c85h		;252d	cd 85 0c 	. . . 
	ld a,001h		;2530	3e 01 	> . 
	ld (0e413h),a		;2532	32 13 e4 	2 . . 
	ld de,0c4ffh		;2535	11 ff c4 	. . . 
	call 00c92h		;2538	cd 92 0c 	. . . 
	ld bc,00640h		;253b	01 40 06 	. @ . 
	call 05538h		;253e	cd 38 55 	. 8 U 
	call 00c78h		;2541	cd 78 0c 	. x . 
	ld a,000h		;2544	3e 00 	> . 
	ld (0e413h),a		;2546	32 13 e4 	2 . . 
	ld (0810eh),a		;2549	32 0e 81 	2 . . 
	jp 020c7h		;254c	c3 c7 20 	. .   
	ld a,047h		;254f	3e 47 	> G 
	call 0495ah		;2551	cd 5a 49 	. Z I 
	ld a,038h		;2554	3e 38 	> 8 
	call 0495ah		;2556	cd 5a 49 	. Z I 
	call 03149h		;2559	cd 49 31 	. I 1 
	ld hl,08284h		;255c	21 84 82 	! . . 
	call 0550eh		;255f	cd 0e 55 	. . U 
	ld a,00dh		;2562	3e 0d 	> . 
	ld (087ffh),a		;2564	32 ff 87 	2 . . 
	call 00c85h		;2567	cd 85 0c 	. . . 
	ld a,001h		;256a	3e 01 	> . 
	ld (0e413h),a		;256c	32 13 e4 	2 . . 
	ld de,0c4ffh		;256f	11 ff c4 	. . . 
	call 00c92h		;2572	cd 92 0c 	. . . 
	ld bc,00640h		;2575	01 40 06 	. @ . 
	call 05538h		;2578	cd 38 55 	. 8 U 
	call 00c78h		;257b	cd 78 0c 	. x . 
	ld a,000h		;257e	3e 00 	> . 
	ld (0e413h),a		;2580	32 13 e4 	2 . . 
	ld (0810eh),a		;2583	32 0e 81 	2 . . 
	jp 020c7h		;2586	c3 c7 20 	. .   
	ld a,047h		;2589	3e 47 	> G 
	call 0495ah		;258b	cd 5a 49 	. Z I 
	ld a,037h		;258e	3e 37 	> 7 
	call 0495ah		;2590	cd 5a 49 	. Z I 
	call 03149h		;2593	cd 49 31 	. I 1 
	ld hl,08284h		;2596	21 84 82 	! . . 
	call 0550eh		;2599	cd 0e 55 	. . U 
	ld a,00dh		;259c	3e 0d 	> . 
	ld (087ffh),a		;259e	32 ff 87 	2 . . 
	call 00c85h		;25a1	cd 85 0c 	. . . 
	ld a,001h		;25a4	3e 01 	> . 
	ld (0e413h),a		;25a6	32 13 e4 	2 . . 
	ld de,0c4ffh		;25a9	11 ff c4 	. . . 
	call 00c92h		;25ac	cd 92 0c 	. . . 
	ld bc,012c0h		;25af	01 c0 12 	. . . 
	call 05538h		;25b2	cd 38 55 	. 8 U 
	call 00c78h		;25b5	cd 78 0c 	. x . 
	ld a,000h		;25b8	3e 00 	> . 
	ld (0e413h),a		;25ba	32 13 e4 	2 . . 
	ld (0810eh),a		;25bd	32 0e 81 	2 . . 
	jp 020c7h		;25c0	c3 c7 20 	. .   
	ld a,(08279h)		;25c3	3a 79 82 	: y . 
	or a			;25c6	b7 	. 
	jp z,025aah		;25c7	ca aa 25 	. . % 
	xor a			;25ca	af 	. 
	ld (08279h),a		;25cb	32 79 82 	2 y . 
	ld a,047h		;25ce	3e 47 	> G 
	call 0495ah		;25d0	cd 5a 49 	. Z I 
	ld a,032h		;25d3	3e 32 	> 2 
	call 0495ah		;25d5	cd 5a 49 	. Z I 
	ld a,001h		;25d8	3e 01 	> . 
	ld (0821ch),a		;25da	32 1c 82 	2 . . 
	ld (08837h),a		;25dd	32 37 88 	2 7 . 
	jp 020c7h		;25e0	c3 c7 20 	. .   
	ld a,(08279h)		;25e3	3a 79 82 	: y . 
	or a			;25e6	b7 	. 
	jp z,025aah		;25e7	ca aa 25 	. . % 
	xor a			;25ea	af 	. 
	ld (08279h),a		;25eb	32 79 82 	2 y . 
	ld a,047h		;25ee	3e 47 	> G 
	call 0495ah		;25f0	cd 5a 49 	. Z I 
	ld a,031h		;25f3	3e 31 	> 1 
	call 0495ah		;25f5	cd 5a 49 	. Z I 
	ld a,001h		;25f8	3e 01 	> . 
	ld (0821ch),a		;25fa	32 1c 82 	2 . . 
	ld (08837h),a		;25fd	32 37 88 	2 7 . 
	jp 020c7h		;2600	c3 c7 20 	. .   
	ld a,(08279h)		;2603	3a 79 82 	: y . 
	or a			;2606	b7 	. 
	jp z,025aah		;2607	ca aa 25 	. . % 
	xor a			;260a	af 	. 
	ld (08279h),a		;260b	32 79 82 	2 y . 
	ld a,047h		;260e	3e 47 	> G 
	call 0495ah		;2610	cd 5a 49 	. Z I 
	ld a,033h		;2613	3e 33 	> 3 
	call 0495ah		;2615	cd 5a 49 	. Z I 
	ld a,001h		;2618	3e 01 	> . 
	ld (0821ch),a		;261a	32 1c 82 	2 . . 
	jp 020c7h		;261d	c3 c7 20 	. .   
	bit 5,(hl)		;2620	cb 6e 	. n 
	jp nz,020c7h		;2622	c2 c7 20 	. .   
	call 0261ah		;2625	cd 1a 26 	. . & 
	call 00826h		;2628	cd 26 08 	. & . 
	call 038b4h		;262b	cd b4 38 	. . 8 
	jp 020c7h		;262e	c3 c7 20 	. .   
	ld a,(08378h)		;2631	3a 78 83 	: x . 
	or a			;2634	b7 	. 
	jp nz,020c7h		;2635	c2 c7 20 	. .   
	ld a,(0810fh)		;2638	3a 0f 81 	: . . 
	or a			;263b	b7 	. 
	jp nz,020c7h		;263c	c2 c7 20 	. .   
	ld a,043h		;263f	3e 43 	> C 
	call 0495ah		;2641	cd 5a 49 	. Z I 
	xor a			;2644	af 	. 
	ld (08117h),a		;2645	32 17 81 	2 . . 
	jp 020c7h		;2648	c3 c7 20 	. .   
	call 0261ah		;264b	cd 1a 26 	. . & 
	call 00932h		;264e	cd 32 09 	. 2 . 
	call 038b4h		;2651	cd b4 38 	. . 8 
	jp 020c7h		;2654	c3 c7 20 	. .   
	ld a,(08378h)		;2657	3a 78 83 	: x . 
	or a			;265a	b7 	. 
	jp nz,020c7h		;265b	c2 c7 20 	. .   
	call 0415bh		;265e	cd 5b 41 	. [ A 
	jp 020c7h		;2661	c3 c7 20 	. .   
	ld a,(08378h)		;2664	3a 78 83 	: x . 
	or a			;2667	b7 	. 
	jp nz,020c7h		;2668	c2 c7 20 	. .   
	call 04255h		;266b	cd 55 42 	. U B 
	jp 020c7h		;266e	c3 c7 20 	. .   
	ld a,(08378h)		;2671	3a 78 83 	: x . 
	or a			;2674	b7 	. 
	jp nz,020c7h		;2675	c2 c7 20 	. .   
	ld a,(0822eh)		;2678	3a 2e 82 	: . . 
	or a			;267b	b7 	. 
	jp z,020c7h		;267c	ca c7 20 	. .   
	ld a,075h		;267f	3e 75 	> u 
	call 07844h		;2681	cd 44 78 	. D x 
	jp 020c7h		;2684	c3 c7 20 	. .   
	ld a,(08378h)		;2687	3a 78 83 	: x . 
	or a			;268a	b7 	. 
	jp nz,020c7h		;268b	c2 c7 20 	. .   
	ld a,(0822eh)		;268e	3a 2e 82 	: . . 
	or a			;2691	b7 	. 
	jp z,020c7h		;2692	ca c7 20 	. .   
	ld a,076h		;2695	3e 76 	> v 
	call 07844h		;2697	cd 44 78 	. D x 
	jp 020c7h		;269a	c3 c7 20 	. .   
	ld a,(08378h)		;269d	3a 78 83 	: x . 
	or a			;26a0	b7 	. 
	jp nz,020c7h		;26a1	c2 c7 20 	. .   
	call 03b9ah		;26a4	cd 9a 3b 	. . ; 
	jp 020c7h		;26a7	c3 c7 20 	. .   
	call 025b9h		;26aa	cd b9 25 	. . % 
	ld (08279h),a		;26ad	32 79 82 	2 y . 
	ld a,(0814ah)		;26b0	3a 4a 81 	: J . 
	ld (0814dh),a		;26b3	32 4d 81 	2 M . 
	jp 020c7h		;26b6	c3 c7 20 	. .   
	call 025c3h		;26b9	cd c3 25 	. . % 
	call 02e1fh		;26bc	cd 1f 2e 	. . . 
	ld (0810dh),a		;26bf	32 0d 81 	2 . . 
	ret			;26c2	c9 	. 
	ld bc,00007h		;26c3	01 07 00 	. . . 
	ld de,0e4a6h		;26c6	11 a6 e4 	. . . 
	ld hl,0e418h		;26c9	21 18 e4 	! . . 
	lddr		;26cc	ed b8 	. . 
	ld de,0e4c0h		;26ce	11 c0 e4 	. . . 
	ld hl,045c0h		;26d1	21 c0 45 	! . E 
	ldd		;26d4	ed a8 	. . 
	ld a,(0821eh)		;26d6	3a 1e 82 	: . . 
	or a			;26d9	b7 	. 
	ret z			;26da	c8 	. 
	ld hl,0e028h		;26db	21 28 e0 	! ( . 
	ld (hl),000h		;26de	36 00 	6 . 
	ret			;26e0	c9 	. 
	ld bc,00006h		;26e1	01 06 00 	. . . 
	ld de,0e4a6h		;26e4	11 a6 e4 	. . . 
	ld hl,081cdh		;26e7	21 cd 81 	! . . 
	lddr		;26ea	ed b8 	. . 
	ld a,080h		;26ec	3e 80 	> . 
	ld (de),a			;26ee	12 	. 
	ld a,083h		;26ef	3e 83 	> . 
	ld (0e4c0h),a		;26f1	32 c0 e4 	2 . . 
	ld a,(0821eh)		;26f4	3a 1e 82 	: . . 
	or a			;26f7	b7 	. 
	ret z			;26f8	c8 	. 
	ld a,083h		;26f9	3e 83 	> . 
	ld (0e028h),a		;26fb	32 28 e0 	2 ( . 
	ret			;26fe	c9 	. 
	ld hl,(0810ch)		;26ff	2a 0c 81 	* . . 
	push hl			;2702	e5 	. 
	ld hl,(0810eh)		;2703	2a 0e 81 	* . . 
	push hl			;2706	e5 	. 
	xor a			;2707	af 	. 
	ld (08220h),a		;2708	32 20 82 	2   . 
	call 02749h		;270b	cd 49 27 	. I ' 
	call 01f37h		;270e	cd 37 1f 	. 7 . 
	pop hl			;2711	e1 	. 
	ld (0810eh),hl		;2712	22 0e 81 	" . . 
	pop hl			;2715	e1 	. 
	ld (0810ch),hl		;2716	22 0c 81 	" . . 
	ret			;2719	c9 	. 
	ld hl,02621h		;271a	21 21 26 	! ! & 
	call 02628h		;271d	cd 28 26 	. ( & 
	ret			;2720	c9 	. 
	ld c,a			;2721	4f 	O 
	ld b,(hl)			;2722	46 	F 
	ld b,(hl)			;2723	46 	F 
	add a,d			;2724	82 	. 
	ld b,l			;2725	45 	E 
	ld d,e			;2726	53 	S 
	ld b,e			;2727	43 	C 
	call 038a5h		;2728	cd a5 38 	. . 8 
	ld bc,00007h		;272b	01 07 00 	. . . 
	ld de,0e780h		;272e	11 80 e7 	. . . 
	ldir		;2731	ed b0 	. . 
	ret			;2733	c9 	. 
	ld a,(0813fh)		;2734	3a 3f 81 	: ? . 
	cp 000h		;2737	fe 00 	. . 
	jp z,02657h		;2739	ca 57 26 	. W & 
	ld a,084h		;273c	3e 84 	> . 
	out (081h),a		;273e	d3 81 	. . 
	ld a,(0818ch)		;2740	3a 8c 81 	: . . 
	res 0,a		;2743	cb 87 	. . 
	set 1,a		;2745	cb cf 	. . 
	ld (0818ch),a		;2747	32 8c 81 	2 . . 
	out (080h),a		;274a	d3 80 	. . 
	ld a,(08181h)		;274c	3a 81 81 	: . . 
	set 7,a		;274f	cb ff 	. . 
	ld (08181h),a		;2751	32 81 81 	2 . . 
	out (09eh),a		;2754	d3 9e 	. . 
	ret			;2756	c9 	. 
	ld a,084h		;2757	3e 84 	> . 
	out (081h),a		;2759	d3 81 	. . 
	ld a,(0818ch)		;275b	3a 8c 81 	: . . 
	set 0,a		;275e	cb c7 	. . 
	res 1,a		;2760	cb 8f 	. . 
	ld (0818ch),a		;2762	32 8c 81 	2 . . 
	out (080h),a		;2765	d3 80 	. . 
	ld a,(08181h)		;2767	3a 81 81 	: . . 
	res 7,a		;276a	cb bf 	. . 
	ld (08181h),a		;276c	32 81 81 	2 . . 
	out (09eh),a		;276f	d3 9e 	. . 
	jr $-27		;2771	18 e3 	. . 
	ld a,(08218h)		;2773	3a 18 82 	: . . 
	or a			;2776	b7 	. 
	jp nz,02776h		;2777	c2 76 27 	. v ' 
	ld a,(08143h)		;277a	3a 43 81 	: C . 
	or a			;277d	b7 	. 
	jp nz,02776h		;277e	c2 76 27 	. v ' 
	ld a,(0810dh)		;2781	3a 0d 81 	: . . 
	or a			;2784	b7 	. 
	jp z,0276fh		;2785	ca 6f 27 	. o ' 
	ld a,(08266h)		;2788	3a 66 82 	: f . 
	or a			;278b	b7 	. 
	jp z,026a4h		;278c	ca a4 26 	. . & 
	ld a,(08241h)		;278f	3a 41 82 	: A . 
	or a			;2792	b7 	. 
	jp nz,02749h		;2793	c2 49 27 	. I ' 
	ld a,(0823fh)		;2796	3a 3f 82 	: ? . 
	or a			;2799	b7 	. 
	jp nz,02749h		;279a	c2 49 27 	. I ' 
	ld a,(08242h)		;279d	3a 42 82 	: B . 
	or a			;27a0	b7 	. 
	jp nz,02749h		;27a1	c2 49 27 	. I ' 
	ld a,(08123h)		;27a4	3a 23 81 	: # . 
	ld hl,08122h		;27a7	21 22 81 	! " . 
	cp (hl)			;27aa	be 	. 
	jp z,02720h		;27ab	ca 20 27 	.   ' 
	xor a			;27ae	af 	. 
	ld (08123h),a		;27af	32 23 81 	2 # . 
	ld (08122h),a		;27b2	32 22 81 	2 " . 
	ld a,(08266h)		;27b5	3a 66 82 	: f . 
	or a			;27b8	b7 	. 
	jp nz,02721h		;27b9	c2 21 27 	. ! ' 
	ld a,085h		;27bc	3e 85 	> . 
	out (081h),a		;27be	d3 81 	. . 
	ld a,(0818dh)		;27c0	3a 8d 81 	: . . 
	set 0,a		;27c3	cb c7 	. . 
	ld (0818dh),a		;27c5	32 8d 81 	2 . . 
	out (080h),a		;27c8	d3 80 	. . 
	ld a,068h		;27ca	3e 68 	> h 
	call 048f2h		;27cc	cd f2 48 	. . H 
	ld a,044h		;27cf	3e 44 	> D 
	call 0495ah		;27d1	cd 5a 49 	. Z I 
	ld a,057h		;27d4	3e 57 	> W 
	call 0495ah		;27d6	cd 5a 49 	. Z I 
	call 01b03h		;27d9	cd 03 1b 	. . . 
	xor a			;27dc	af 	. 
	ld (08140h),a		;27dd	32 40 81 	2 @ . 
	inc a			;27e0	3c 	< 
	ld (0821fh),a		;27e1	32 1f 82 	2 . . 
	ld hl,08080h		;27e4	21 80 80 	! . . 
	ld (08004h),hl		;27e7	22 04 80 	" . . 
	ld (0e40bh),hl		;27ea	22 0b e4 	" . . 
	ld hl,03f3fh		;27ed	21 3f 3f 	! ? ? 
	ld (0800ah),hl		;27f0	22 0a 80 	" . . 
	ld (0e409h),hl		;27f3	22 09 e4 	" . . 
	ld a,002h		;27f6	3e 02 	> . 
	ld (0e408h),a		;27f8	32 08 e4 	2 . . 
	call 01b76h		;27fb	cd 76 1b 	. v . 
	ld hl,08017h		;27fe	21 17 80 	! . . 
	set 5,(hl)		;2801	cb ee 	. . 
	ld a,031h		;2803	3e 31 	> 1 
	call 0495ah		;2805	cd 5a 49 	. Z I 
	call 02017h		;2808	cd 17 20 	. .   
	ld a,001h		;280b	3e 01 	> . 
	out (08dh),a		;280d	d3 8d 	. . 
	out (08eh),a		;280f	d3 8e 	. . 
	ld (08211h),a		;2811	32 11 82 	2 . . 
	ld (08212h),a		;2814	32 12 82 	2 . . 
	ld (08229h),a		;2817	32 29 82 	2 ) . 
	ld (08214h),a		;281a	32 14 82 	2 . . 
	ld (08266h),a		;281d	32 66 82 	2 f . 
	ret			;2820	c9 	. 
	ld a,(08267h)		;2821	3a 67 82 	: g . 
	or a			;2824	b7 	. 
	jr nz,$+36		;2825	20 22 	  " 
	ld a,045h		;2827	3e 45 	> E 
	call 0495ah		;2829	cd 5a 49 	. Z I 
	xor a			;282c	af 	. 
	ld (0e408h),a		;282d	32 08 e4 	2 . . 
	call 00e8fh		;2830	cd 8f 0e 	. . . 
	xor a			;2833	af 	. 
	ld (08211h),a		;2834	32 11 82 	2 . . 
	ld (08212h),a		;2837	32 12 82 	2 . . 
	inc a			;283a	3c 	< 
	ld (08267h),a		;283b	32 67 82 	2 g . 
	xor a			;283e	af 	. 
	ld (0e408h),a		;283f	32 08 e4 	2 . . 
	ld hl,08017h		;2842	21 17 80 	! . . 
	set 5,(hl)		;2845	cb ee 	. . 
	jr $-39		;2847	18 d7 	. . 
	xor a			;2849	af 	. 
	ld (0825dh),a		;284a	32 5d 82 	2 ] . 
	ld (0825eh),a		;284d	32 5e 82 	2 ^ . 
	ld (08229h),a		;2850	32 29 82 	2 ) . 
	ld (08214h),a		;2853	32 14 82 	2 . . 
	ld (0821fh),a		;2856	32 1f 82 	2 . . 
	ld hl,08017h		;2859	21 17 80 	! . . 
	res 5,(hl)		;285c	cb ae 	. . 
	ld a,085h		;285e	3e 85 	> . 
	out (081h),a		;2860	d3 81 	. . 
	ld a,(0818dh)		;2862	3a 8d 81 	: . . 
	res 0,a		;2865	cb 87 	. . 
	ld (0818dh),a		;2867	32 8d 81 	2 . . 
	out (080h),a		;286a	d3 80 	. . 
	jp 02776h		;286c	c3 76 27 	. v ' 
	ld a,(08266h)		;286f	3a 66 82 	: f . 
	or a			;2872	b7 	. 
	jp nz,02749h		;2873	c2 49 27 	. I ' 
	xor a			;2876	af 	. 
	ld (08123h),a		;2877	32 23 81 	2 # . 
	ld (08122h),a		;287a	32 22 81 	2 " . 
	ld (08266h),a		;287d	32 66 82 	2 f . 
	ld (08267h),a		;2880	32 67 82 	2 g . 
	jp 02720h		;2883	c3 20 27 	.   ' 
	xor a			;2886	af 	. 
	call 0495ah		;2887	cd 5a 49 	. Z I 
	call 048f2h		;288a	cd f2 48 	. . H 
	call 01b03h		;288d	cd 03 1b 	. . . 
	call 02fd4h		;2890	cd d4 2f 	. . / 
	ld a,(08181h)		;2893	3a 81 81 	: . . 
	and 080h		;2896	e6 80 	. . 
	out (09eh),a		;2898	d3 9e 	. . 
	xor a			;289a	af 	. 
	ld (08261h),a		;289b	32 61 82 	2 a . 
	ld (08262h),a		;289e	32 62 82 	2 b . 
	ld (08263h),a		;28a1	32 63 82 	2 c . 
	ld (08264h),a		;28a4	32 64 82 	2 d . 
	ld (0826dh),a		;28a7	32 6d 82 	2 m . 
	ld (0826eh),a		;28aa	32 6e 82 	2 n . 
	ld (0826fh),a		;28ad	32 6f 82 	2 o . 
	ld (08270h),a		;28b0	32 70 82 	2 p . 
	ret			;28b3	c9 	. 
	call 00c78h		;28b4	cd 78 0c 	. x . 
	ld a,(08181h)		;28b7	3a 81 81 	: . . 
	out (09eh),a		;28ba	d3 9e 	. . 
	xor a			;28bc	af 	. 
	ld (0810ch),a		;28bd	32 0c 81 	2 . . 
	ld (0810eh),a		;28c0	32 0e 81 	2 . . 
	ld (08110h),a		;28c3	32 10 81 	2 . . 
	ld (08112h),a		;28c6	32 12 81 	2 . . 
	ld (08114h),a		;28c9	32 14 81 	2 . . 
	inc a			;28cc	3c 	< 
	ld (08223h),a		;28cd	32 23 82 	2 # . 
	ld (08224h),a		;28d0	32 24 82 	2 $ . 
	ret			;28d3	c9 	. 
	call 02786h		;28d4	cd 86 27 	. . ' 
	ld de,0b4a2h		;28d7	11 a2 b4 	. . . 
	call 00c85h		;28da	cd 85 0c 	. . . 
	ld de,0e33ch		;28dd	11 3c e3 	. < . 
	ld (081b1h),de		;28e0	ed 53 b1 81 	. S . . 
	ld a,(0a01eh)		;28e4	3a 1e a0 	: . . 
	ld (de),a			;28e7	12 	. 
	ld de,0e33ch		;28e8	11 3c e3 	. < . 
	ld (081b1h),de		;28eb	ed 53 b1 81 	. S . . 
	ld a,(0a014h)		;28ef	3a 14 a0 	: . . 
	ld (de),a			;28f2	12 	. 
	call 003a4h		;28f3	cd a4 03 	. . . 
	call 0055fh		;28f6	cd 5f 05 	. _ . 
	ld a,(0814ah)		;28f9	3a 4a 81 	: J . 
	cp 0ffh		;28fc	fe ff 	. . 
	jr z,$-11		;28fe	28 f3 	( . 
	cp 01bh		;2900	fe 1b 	. . 
	jr z,$+42		;2902	28 28 	( ( 
	cp 00ah		;2904	fe 0a 	. . 
	jr z,$+28		;2906	28 1a 	( . 
	cp 00dh		;2908	fe 0d 	. . 
	jr z,$+24		;290a	28 16 	( . 
	cp 031h		;290c	fe 31 	. 1 
	jp m,027f3h		;290e	fa f3 27 	. . ' 
	cp 036h		;2911	fe 36 	. 6 
	jp m,02819h		;2913	fa 19 28 	. . ( 
	jp 027f3h		;2916	c3 f3 27 	. . ' 
	ld de,(081b1h)		;2919	ed 5b b1 81 	. [ . . 
	ld (de),a			;291d	12 	. 
	ld hl,0a014h		;291e	21 14 a0 	! . . 
	ld (hl),a			;2921	77 	w 
	ld de,0e33ch		;2922	11 3c e3 	. < . 
	ld (081b1h),de		;2925	ed 53 b1 81 	. S . . 
	jp 027f3h		;2929	c3 f3 27 	. . ' 
	call 027b4h		;292c	cd b4 27 	. . ' 
	ret			;292f	c9 	. 
	call 02786h		;2930	cd 86 27 	. . ' 
	ld de,0b000h		;2933	11 00 b0 	. . . 
	call 00c85h		;2936	cd 85 0c 	. . . 
	call 003a4h		;2939	cd a4 03 	. . . 
	ld de,0e259h		;293c	11 59 e2 	. Y . 
	ld hl,0a019h		;293f	21 19 a0 	! . . 
	ldd		;2942	ed a8 	. . 
	ld de,0e219h		;2944	11 19 e2 	. . . 
	ldd		;2947	ed a8 	. . 
	ld de,0e1d9h		;2949	11 d9 e1 	. . . 
	ldd		;294c	ed a8 	. . 
	ld de,0e159h		;294e	11 59 e1 	. Y . 
	ldd		;2951	ed a8 	. . 
	ld de,0e0d9h		;2953	11 d9 e0 	. . . 
	ldd		;2956	ed a8 	. . 
	inc de			;2958	13 	. 
	inc hl			;2959	23 	# 
	call 028deh		;295a	cd de 28 	. . ( 
	ld de,0e159h		;295d	11 59 e1 	. Y . 
	call 028e5h		;2960	cd e5 28 	. . ( 
	ld de,0e1d9h		;2963	11 d9 e1 	. . . 
	call 028e5h		;2966	cd e5 28 	. . ( 
	cp 057h		;2969	fe 57 	. W 
	call z,0289ch		;296b	cc 9c 28 	. . ( 
	ld de,0e219h		;296e	11 19 e2 	. . . 
	call 028e5h		;2971	cd e5 28 	. . ( 
	cp 057h		;2974	fe 57 	. W 
	call z,028a5h		;2976	cc a5 28 	. . ( 
	ld de,0e259h		;2979	11 59 e2 	. Y . 
	call 028e5h		;297c	cd e5 28 	. . ( 
	cp 057h		;297f	fe 57 	. W 
	call z,028bbh		;2981	cc bb 28 	. . ( 
	jr $-75		;2984	18 b3 	. . 
	ld a,(0a015h)		;2986	3a 15 a0 	: . . 
	ld (08121h),a		;2989	32 21 81 	2 ! . 
	ld (0e416h),a		;298c	32 16 e4 	2 . . 
	ld a,(08109h)		;298f	3a 09 81 	: . . 
	or a			;2992	b7 	. 
	jr z,$+5		;2993	28 03 	( . 
	call 01e0dh		;2995	cd 0d 1e 	. . . 
	call 027b4h		;2998	cd b4 27 	. . ' 
	ret			;299b	c9 	. 
	push hl			;299c	e5 	. 
	ld de,0e219h		;299d	11 19 e2 	. . . 
	call 028c7h		;29a0	cd c7 28 	. . ( 
	pop hl			;29a3	e1 	. 
	ret			;29a4	c9 	. 
	push hl			;29a5	e5 	. 
	ld de,0e259h		;29a6	11 59 e2 	. Y . 
	cpi		;29a9	ed a1 	. . 
	call z,028d8h		;29ab	cc d8 28 	. . ( 
	ld de,0e1d9h		;29ae	11 d9 e1 	. . . 
	ld hl,0a017h		;29b1	21 17 a0 	! . . 
	cpi		;29b4	ed a1 	. . 
	call z,028d8h		;29b6	cc d8 28 	. . ( 
	pop hl			;29b9	e1 	. 
	ret			;29ba	c9 	. 
	push hl			;29bb	e5 	. 
	ld de,0e1d9h		;29bc	11 d9 e1 	. . . 
	ld hl,0a017h		;29bf	21 17 a0 	! . . 
	call 028c7h		;29c2	cd c7 28 	. . ( 
	pop hl			;29c5	e1 	. 
	ret			;29c6	c9 	. 
	cpi		;29c7	ed a1 	. . 
	call z,028d8h		;29c9	cc d8 28 	. . ( 
	ld ix,00040h		;29cc	dd 21 40 00 	. ! @ . 
	add ix,de		;29d0	dd 19 	. . 
	push ix		;29d2	dd e5 	. . 
	pop de			;29d4	d1 	. 
	cpi		;29d5	ed a1 	. . 
	ret nz			;29d7	c0 	. 
	dec hl			;29d8	2b 	+ 
	ld (hl),04eh		;29d9	36 4e 	6 N 
	ldi		;29db	ed a0 	. . 
	ret			;29dd	c9 	. 
	push hl			;29de	e5 	. 
	push de			;29df	d5 	. 
	ld hl,02930h		;29e0	21 30 29 	! 0 ) 
	jr $+7		;29e3	18 05 	. . 
	push hl			;29e5	e5 	. 
	push de			;29e6	d5 	. 
	ld hl,0293dh		;29e7	21 3d 29 	! = ) 
	call 02910h		;29ea	cd 10 29 	. . ) 
	jr c,$-3		;29ed	38 fb 	8 . 
	pop de			;29ef	d1 	. 
	pop hl			;29f0	e1 	. 
	cp 00ah		;29f1	fe 0a 	. . 
	jr z,$+26		;29f3	28 18 	( . 
	cp 01bh		;29f5	fe 1b 	. . 
	jr z,$+10		;29f7	28 08 	( . 
	cp 00bh		;29f9	fe 0b 	. . 
	jr z,$+12		;29fb	28 0a 	( . 
	ld (hl),a			;29fd	77 	w 
	ldi		;29fe	ed a0 	. . 
	ret			;2a00	c9 	. 
	ld hl,02886h		;2a01	21 86 28 	! . ( 
	ex (sp),hl			;2a04	e3 	. 
	jr $-5		;2a05	18 f9 	. . 
	ld hl,02839h		;2a07	21 39 28 	! 9 ( 
	ex (sp),hl			;2a0a	e3 	. 
	jr $-11		;2a0b	18 f3 	. . 
	inc hl			;2a0d	23 	# 
	jr $-14		;2a0e	18 f0 	. . 
	ld (081b1h),de		;2a10	ed 53 b1 81 	. S . . 
	call 0055fh		;2a14	cd 5f 05 	. _ . 
	ld a,(0814ah)		;2a17	3a 4a 81 	: J . 
	cp 0ffh		;2a1a	fe ff 	. . 
	jr z,$-12		;2a1c	28 f2 	( . 
	push bc			;2a1e	c5 	. 
	push hl			;2a1f	e5 	. 
	ld b,000h		;2a20	06 00 	. . 
	ld c,(hl)			;2a22	4e 	N 
	inc hl			;2a23	23 	# 
	xor a			;2a24	af 	. 
	ld a,(0814ah)		;2a25	3a 4a 81 	: J . 
	cpir		;2a28	ed b1 	. . 
	jr z,$+3		;2a2a	28 01 	( . 
	scf			;2a2c	37 	7 
	pop hl			;2a2d	e1 	. 
	pop bc			;2a2e	c1 	. 
	ret			;2a2f	c9 	. 
	inc c			;2a30	0c 	. 
	ld sp,03332h		;2a31	31 32 33 	1 2 3 
	inc (hl)			;2a34	34 	4 
	dec (hl)			;2a35	35 	5 
	ld (hl),037h		;2a36	36 37 	6 7 
	jr c,$+59		;2a38	38 39 	8 9 
	dec bc			;2a3a	0b 	. 
	ld a,(bc)			;2a3b	0a 	. 
	dec de			;2a3c	1b 	. 
	ld b,045h		;2a3d	06 45 	. E 
	ld d,a			;2a3f	57 	W 
	ld c,(hl)			;2a40	4e 	N 
	dec bc			;2a41	0b 	. 
	ld a,(bc)			;2a42	0a 	. 
	dec de			;2a43	1b 	. 
	call 02786h		;2a44	cd 86 27 	. . ' 
	call 02b47h		;2a47	cd 47 2b 	. G + 
	ld hl,0a000h		;2a4a	21 00 a0 	! . . 
	ld de,0e0f6h		;2a4d	11 f6 e0 	. . . 
	ld bc,00505h		;2a50	01 05 05 	. . . 
	xor a			;2a53	af 	. 
	ld (0883fh),a		;2a54	32 3f 88 	2 ? . 
	call 003a4h		;2a57	cd a4 03 	. . . 
	call 0051dh		;2a5a	cd 1d 05 	. . . 
	ld a,(0814ah)		;2a5d	3a 4a 81 	: J . 
	cp 0ffh		;2a60	fe ff 	. . 
	jp z,029d6h		;2a62	ca d6 29 	. . ) 
	cp 00dh		;2a65	fe 0d 	. . 
	jp z,02a14h		;2a67	ca 14 2a 	. . * 
	cp 01bh		;2a6a	fe 1b 	. . 
	jp z,029e3h		;2a6c	ca e3 29 	. . ) 
	cp 00ah		;2a6f	fe 0a 	. . 
	jp z,02a14h		;2a71	ca 14 2a 	. . * 
	cp 00ch		;2a74	fe 0c 	. . 
	jp z,02aaah		;2a76	ca aa 2a 	. . * 
	cp 008h		;2a79	fe 08 	. . 
	jp z,02abeh		;2a7b	ca be 2a 	. . * 
	cp 080h		;2a7e	fe 80 	. . 
	jp z,02af2h		;2a80	ca f2 2a 	. . * 
	cp 020h		;2a83	fe 20 	.   
	jp m,02957h		;2a85	fa 57 29 	. W ) 
	cp 07eh		;2a88	fe 7e 	. ~ 
	jp p,02957h		;2a8a	f2 57 29 	. W ) 
	ld a,(08261h)		;2a8d	3a 61 82 	: a . 
	cp 001h		;2a90	fe 01 	. . 
	jp z,02957h		;2a92	ca 57 29 	. W ) 
	ld a,(08263h)		;2a95	3a 63 82 	: c . 
	cp 001h		;2a98	fe 01 	. . 
	jp z,02a04h		;2a9a	ca 04 2a 	. . * 
	ld a,(08270h)		;2a9d	3a 70 82 	: p . 
	cp 001h		;2aa0	fe 01 	. . 
	jp z,029e7h		;2aa2	ca e7 29 	. . ) 
	ld a,(0826fh)		;2aa5	3a 6f 82 	: o . 
	cp 001h		;2aa8	fe 01 	. . 
	jp z,029e7h		;2aaa	ca e7 29 	. . ) 
	ld a,(0826eh)		;2aad	3a 6e 82 	: n . 
	cp 001h		;2ab0	fe 01 	. . 
	jp z,029e7h		;2ab2	ca e7 29 	. . ) 
	ld a,(0826dh)		;2ab5	3a 6d 82 	: m . 
	cp 001h		;2ab8	fe 01 	. . 
	jp z,02b2dh		;2aba	ca 2d 2b 	. - + 
	ld a,(08262h)		;2abd	3a 62 82 	: b . 
	cp 001h		;2ac0	fe 01 	. . 
	jp z,02acdh		;2ac2	ca cd 2a 	. . * 
	ld a,(0814ah)		;2ac5	3a 4a 81 	: J . 
	ld (de),a			;2ac8	12 	. 
	ld (hl),a			;2ac9	77 	w 
	inc de			;2aca	13 	. 
	inc hl			;2acb	23 	# 
	dec b			;2acc	05 	. 
	ld a,b			;2acd	78 	x 
	or a			;2ace	b7 	. 
	jp nz,029d6h		;2acf	c2 d6 29 	. . ) 
	inc a			;2ad2	3c 	< 
	ld (08261h),a		;2ad3	32 61 82 	2 a . 
	call 00572h		;2ad6	cd 72 05 	. r . 
	ld a,(0883fh)		;2ad9	3a 3f 88 	: ? . 
	cp 001h		;2adc	fe 01 	. . 
	jr z,$+5		;2ade	28 03 	( . 
	jp 0295dh		;2ae0	c3 5d 29 	. ] ) 
	call 027b4h		;2ae3	cd b4 27 	. . ' 
	ret			;2ae6	c9 	. 
	ld a,(0814ah)		;2ae7	3a 4a 81 	: J . 
	cp 030h		;2aea	fe 30 	. 0 
	jp m,029d6h		;2aec	fa d6 29 	. . ) 
	cp 03ah		;2aef	fe 3a 	. : 
	jp p,029f7h		;2af1	f2 f7 29 	. . ) 
	jp 029c5h		;2af4	c3 c5 29 	. . ) 
	cp 041h		;2af7	fe 41 	. A 
	jp m,029d6h		;2af9	fa d6 29 	. . ) 
	cp 046h		;2afc	fe 46 	. F 
	jp p,029d6h		;2afe	f2 d6 29 	. . ) 
	jp 029c5h		;2b01	c3 c5 29 	. . ) 
	ld a,(0814ah)		;2b04	3a 4a 81 	: J . 
	cp 030h		;2b07	fe 30 	. 0 
	jp m,029d6h		;2b09	fa d6 29 	. . ) 
	cp 03ah		;2b0c	fe 3a 	. : 
	jp p,029d6h		;2b0e	f2 d6 29 	. . ) 
	jp 029c5h		;2b11	c3 c5 29 	. . ) 
	ld a,(08262h)		;2b14	3a 62 82 	: b . 
	cp 001h		;2b17	fe 01 	. . 
	jr z,$+25		;2b19	28 17 	( . 
	xor a			;2b1b	af 	. 
	ld (08261h),a		;2b1c	32 61 82 	2 a . 
	ld hl,0a005h		;2b1f	21 05 a0 	! . . 
	ld de,0e179h		;2b22	11 79 e1 	. y . 
	ld bc,00202h		;2b25	01 02 02 	. . . 
	ld a,001h		;2b28	3e 01 	> . 
	ld (08262h),a		;2b2a	32 62 82 	2 b . 
	call 031aeh		;2b2d	cd ae 31 	. . 1 
	jr $-90		;2b30	18 a4 	. . 
	ld a,(0826dh)		;2b32	3a 6d 82 	: m . 
	cp 001h		;2b35	fe 01 	. . 
	jr z,$+25		;2b37	28 17 	( . 
	xor a			;2b39	af 	. 
	ld (08261h),a		;2b3a	32 61 82 	2 a . 
	ld hl,0a007h		;2b3d	21 07 a0 	! . . 
	ld de,0e23ah		;2b40	11 3a e2 	. : . 
	ld bc,00101h		;2b43	01 01 01 	. . . 
	ld a,c			;2b46	79 	y 
	ld (0826dh),a		;2b47	32 6d 82 	2 m . 
	call 0330bh		;2b4a	cd 0b 33 	. . 3 
	jp 029d6h		;2b4d	c3 d6 29 	. . ) 
	ld a,(0826eh)		;2b50	3a 6e 82 	: n . 
	cp 001h		;2b53	fe 01 	. . 
	jr z,$+23		;2b55	28 15 	( . 
	xor a			;2b57	af 	. 
	ld (08261h),a		;2b58	32 61 82 	2 a . 
	ld hl,0a008h		;2b5b	21 08 a0 	! . . 
	ld de,0e259h		;2b5e	11 59 e2 	. Y . 
	ld bc,00202h		;2b61	01 02 02 	. . . 
	ld a,001h		;2b64	3e 01 	> . 
	ld (0826eh),a		;2b66	32 6e 82 	2 n . 
	jp 029d6h		;2b69	c3 d6 29 	. . ) 
	ld a,(0826fh)		;2b6c	3a 6f 82 	: o . 
	cp 001h		;2b6f	fe 01 	. . 
	jr z,$+23		;2b71	28 15 	( . 
	xor a			;2b73	af 	. 
	ld (08261h),a		;2b74	32 61 82 	2 a . 
	ld hl,0a00ah		;2b77	21 0a a0 	! . . 
	ld de,0e279h		;2b7a	11 79 e2 	. y . 
	ld bc,00202h		;2b7d	01 02 02 	. . . 
	ld a,001h		;2b80	3e 01 	> . 
	ld (0826fh),a		;2b82	32 6f 82 	2 o . 
	jp 029d6h		;2b85	c3 d6 29 	. . ) 
	ld a,(08263h)		;2b88	3a 63 82 	: c . 
	cp 001h		;2b8b	fe 01 	. . 
	jr z,$+23		;2b8d	28 15 	( . 
	xor a			;2b8f	af 	. 
	ld (08261h),a		;2b90	32 61 82 	2 a . 
	ld hl,0a00eh		;2b93	21 0e a0 	! . . 
	ld de,0e2f5h		;2b96	11 f5 e2 	. . . 
	ld bc,00606h		;2b99	01 06 06 	. . . 
	ld a,001h		;2b9c	3e 01 	> . 
	ld (08263h),a		;2b9e	32 63 82 	2 c . 
	jp 029d6h		;2ba1	c3 d6 29 	. . ) 
	call 0279ah		;2ba4	cd 9a 27 	. . ' 
	jp 0294ah		;2ba7	c3 4a 29 	. J ) 
	ld a,b			;2baa	78 	x 
	or a			;2bab	b7 	. 
	jr z,$+10		;2bac	28 08 	( . 
	inc de			;2bae	13 	. 
	inc hl			;2baf	23 	# 
	dec b			;2bb0	05 	. 
	ld a,b			;2bb1	78 	x 
	or a			;2bb2	b7 	. 
	jp nz,029d6h		;2bb3	c2 d6 29 	. . ) 
	ld a,001h		;2bb6	3e 01 	> . 
	ld (08261h),a		;2bb8	32 61 82 	2 a . 
	jp 029d6h		;2bbb	c3 d6 29 	. . ) 
	ld a,c			;2bbe	79 	y 
	cp b			;2bbf	b8 	. 
	jp z,029d6h		;2bc0	ca d6 29 	. . ) 
	dec de			;2bc3	1b 	. 
	dec hl			;2bc4	2b 	+ 
	inc b			;2bc5	04 	. 
	xor a			;2bc6	af 	. 
	ld (08261h),a		;2bc7	32 61 82 	2 a . 
	jp 029d6h		;2bca	c3 d6 29 	. . ) 
	ld a,b			;2bcd	78 	x 
	cp 002h		;2bce	fe 02 	. . 
	jr z,$+18		;2bd0	28 10 	( . 
	ld a,(0814ah)		;2bd2	3a 4a 81 	: J . 
	cp 031h		;2bd5	fe 31 	. 1 
	jp m,029d6h		;2bd7	fa d6 29 	. . ) 
	cp 03ah		;2bda	fe 3a 	. : 
	jp p,029d6h		;2bdc	f2 d6 29 	. . ) 
	jp 029c5h		;2bdf	c3 c5 29 	. . ) 
	ld a,(0814ah)		;2be2	3a 4a 81 	: J . 
	cp 05ah		;2be5	fe 5a 	. Z 
	jp z,029c5h		;2be7	ca c5 29 	. . ) 
	cp 055h		;2bea	fe 55 	. U 
	jp z,029c5h		;2bec	ca c5 29 	. . ) 
	jp 029d6h		;2bef	c3 d6 29 	. . ) 
	ld a,(08264h)		;2bf2	3a 64 82 	: d . 
	cp 001h		;2bf5	fe 01 	. . 
	jp z,02b2ah		;2bf7	ca 2a 2b 	. * + 
	ld a,(08263h)		;2bfa	3a 63 82 	: c . 
	cp 001h		;2bfd	fe 01 	. . 
	jp z,02b2ah		;2bff	ca 2a 2b 	. * + 
	ld a,(0826fh)		;2c02	3a 6f 82 	: o . 
	cp 001h		;2c05	fe 01 	. . 
	jp z,02b2ah		;2c07	ca 2a 2b 	. * + 
	ld a,(0826eh)		;2c0a	3a 6e 82 	: n . 
	cp 001h		;2c0d	fe 01 	. . 
	jp z,02b2ah		;2c0f	ca 2a 2b 	. * + 
	ld a,(0826dh)		;2c12	3a 6d 82 	: m . 
	cp 001h		;2c15	fe 01 	. . 
	jp z,02b2ah		;2c17	ca 2a 2b 	. * + 
	ld a,(08262h)		;2c1a	3a 62 82 	: b . 
	cp 001h		;2c1d	fe 01 	. . 
	jr z,$+8		;2c1f	28 06 	( . 
	call 031e8h		;2c21	cd e8 31 	. . 1 
	jp 029d6h		;2c24	c3 d6 29 	. . ) 
	call 033dah		;2c27	cd da 33 	. . 3 
	jp 029d6h		;2c2a	c3 d6 29 	. . ) 
	ld a,(0814ah)		;2c2d	3a 4a 81 	: J . 
	cp 04ch		;2c30	fe 4c 	. L 
	jp z,029c5h		;2c32	ca c5 29 	. . ) 
	cp 050h		;2c35	fe 50 	. P 
	jp z,029c5h		;2c37	ca c5 29 	. . ) 
	cp 044h		;2c3a	fe 44 	. D 
	jp z,029c5h		;2c3c	ca c5 29 	. . ) 
	cp 053h		;2c3f	fe 53 	. S 
	jp z,029c5h		;2c41	ca c5 29 	. . ) 
	jp 029d6h		;2c44	c3 d6 29 	. . ) 
	ld de,0b3f8h		;2c47	11 f8 b3 	. . . 
	call 00c85h		;2c4a	cd 85 0c 	. . . 
	ld de,0e0f6h		;2c4d	11 f6 e0 	. . . 
	ld hl,0a000h		;2c50	21 00 a0 	! . . 
	ld bc,00005h		;2c53	01 05 00 	. . . 
	ldir		;2c56	ed b0 	. . 
	ld de,0e179h		;2c58	11 79 e1 	. y . 
	ld bc,00002h		;2c5b	01 02 00 	. . . 
	ldir		;2c5e	ed b0 	. . 
	ld de,0e23ah		;2c60	11 3a e2 	. : . 
	ld bc,00001h		;2c63	01 01 00 	. . . 
	ldir		;2c66	ed b0 	. . 
	ld de,0e259h		;2c68	11 59 e2 	. Y . 
	ld bc,00002h		;2c6b	01 02 00 	. . . 
	ldir		;2c6e	ed b0 	. . 
	ld de,0e279h		;2c70	11 79 e2 	. y . 
	ld bc,00002h		;2c73	01 02 00 	. . . 
	ldir		;2c76	ed b0 	. . 
	inc hl			;2c78	23 	# 
	inc hl			;2c79	23 	# 
	ld de,0e2f5h		;2c7a	11 f5 e2 	. . . 
	ld bc,00006h		;2c7d	01 06 00 	. . . 
	ldir		;2c80	ed b0 	. . 
	ret			;2c82	c9 	. 
	in a,(04dh)		;2c83	db 4d 	. M 
	rrca			;2c85	0f 	. 
	rrca			;2c86	0f 	. 
	jr c,$+9		;2c87	38 07 	8 . 
	xor a			;2c89	af 	. 
	ld (08225h),a		;2c8a	32 25 82 	2 % . 
	jp 0312ah		;2c8d	c3 2a 31 	. * 1 
	ld a,(0829ah)		;2c90	3a 9a 82 	: . . 
	or a			;2c93	b7 	. 
	call nz,0413bh		;2c94	c4 3b 41 	. ; A 
	ld a,000h		;2c97	3e 00 	> . 
	ld (0829ah),a		;2c99	32 9a 82 	2 . . 
	ld a,040h		;2c9c	3e 40 	> @ 
	out (081h),a		;2c9e	d3 81 	. . 
	in a,(080h)		;2ca0	db 80 	. . 
	ld (08149h),a		;2ca2	32 49 81 	2 I . 
	cp 088h		;2ca5	fe 88 	. . 
	jp m,02bb2h		;2ca7	fa b2 2b 	. . + 
	cp 08ch		;2caa	fe 8c 	. . 
	jp p,02bb2h		;2cac	f2 b2 2b 	. . + 
	jp 02cf2h		;2caf	c3 f2 2c 	. . , 
	ld de,01000h		;2cb2	11 00 10 	. . . 
	dec de			;2cb5	1b 	. 
	ld a,d			;2cb6	7a 	z 
	or e			;2cb7	b3 	. 
	jr nz,$-3		;2cb8	20 fb 	  . 
	ld a,(08149h)		;2cba	3a 49 81 	: I . 
	cp 0b3h		;2cbd	fe b3 	. . 
	jp z,03097h		;2cbf	ca 97 30 	. . 0 
	cp 0b4h		;2cc2	fe b4 	. . 
	jp z,03097h		;2cc4	ca 97 30 	. . 0 
	in a,(04dh)		;2cc7	db 4d 	. M 
	rrca			;2cc9	0f 	. 
	rrca			;2cca	0f 	. 
	jr c,$-47		;2ccb	38 cf 	8 . 
	ld a,(0883dh)		;2ccd	3a 3d 88 	: = . 
	or a			;2cd0	b7 	. 
	jr nz,$+8		;2cd1	20 06 	  . 
	ld a,(08290h)		;2cd3	3a 90 82 	: . . 
	or a			;2cd6	b7 	. 
	jr z,$+53		;2cd7	28 33 	( 3 
	ld a,(08149h)		;2cd9	3a 49 81 	: I . 
	cp 086h		;2cdc	fe 86 	. . 
	jp z,02cc8h		;2cde	ca c8 2c 	. . , 
	cp 0b2h		;2ce1	fe b2 	. . 
	jp z,030d4h		;2ce3	ca d4 30 	. . 0 
	cp 080h		;2ce6	fe 80 	. . 
	jp z,02c60h		;2ce8	ca 60 2c 	. ` , 
	cp 081h		;2ceb	fe 81 	. . 
	jp z,02c69h		;2ced	ca 69 2c 	. i , 
	cp 084h		;2cf0	fe 84 	. . 
	jp z,02cb6h		;2cf2	ca b6 2c 	. . , 
	cp 085h		;2cf5	fe 85 	. . 
	jp z,02cbfh		;2cf7	ca bf 2c 	. . , 
	cp 0abh		;2cfa	fe ab 	. . 
	jp z,03017h		;2cfc	ca 17 30 	. . 0 
	cp 0aeh		;2cff	fe ae 	. . 
	jp z,03081h		;2d01	ca 81 30 	. . 0 
	cp 0afh		;2d04	fe af 	. . 
	jp z,03133h		;2d06	ca 33 31 	. 3 1 
	jp 03126h		;2d09	c3 26 31 	. & 1 
	ld hl,081c0h		;2d0c	21 c0 81 	! . . 
	ld a,(08149h)		;2d0f	3a 49 81 	: I . 
	and 0f8h		;2d12	e6 f8 	. . 
	cp 080h		;2d14	fe 80 	. . 
	jr z,$+40		;2d16	28 26 	( & 
	cp 088h		;2d18	fe 88 	. . 
	jp z,02cf2h		;2d1a	ca f2 2c 	. . , 
	cp 090h		;2d1d	fe 90 	. . 
	jp z,02d56h		;2d1f	ca 56 2d 	. V - 
	cp 098h		;2d22	fe 98 	. . 
	jp z,02e6fh		;2d24	ca 6f 2e 	. o . 
	cp 0a0h		;2d27	fe a0 	. . 
	jp z,02eebh		;2d29	ca eb 2e 	. . . 
	cp 0a8h		;2d2c	fe a8 	. . 
	jp z,02fe6h		;2d2e	ca e6 2f 	. . / 
	cp 0b0h		;2d31	fe b0 	. . 
	jp z,03097h		;2d33	ca 97 30 	. . 0 
	cp 0b8h		;2d36	fe b8 	. . 
	jp z,0311dh		;2d38	ca 1d 31 	. . 1 
	jp 03121h		;2d3b	c3 21 31 	. ! 1 
	ld a,(08149h)		;2d3e	3a 49 81 	: I . 
	cp 080h		;2d41	fe 80 	. . 
	jr z,$+29		;2d43	28 1b 	( . 
	cp 081h		;2d45	fe 81 	. . 
	jr z,$+34		;2d47	28 20 	(   
	cp 082h		;2d49	fe 82 	. . 
	jr z,$+39		;2d4b	28 25 	( % 
	cp 083h		;2d4d	fe 83 	. . 
	jr z,$+92		;2d4f	28 5a 	( Z 
	cp 084h		;2d51	fe 84 	. . 
	jr z,$+99		;2d53	28 61 	( a 
	cp 085h		;2d55	fe 85 	. . 
	jr z,$+104		;2d57	28 66 	( f 
	cp 086h		;2d59	fe 86 	. . 
	jr z,$+109		;2d5b	28 6b 	( k 
	jp 03121h		;2d5d	c3 21 31 	. ! 1 
	call 02cdbh		;2d60	cd db 2c 	. . , 
	ld (08105h),a		;2d63	32 05 81 	2 . . 
	jp 03126h		;2d66	c3 26 31 	. & 1 
	call 02cdbh		;2d69	cd db 2c 	. . , 
	ld (08107h),a		;2d6c	32 07 81 	2 . . 
	jp 03126h		;2d6f	c3 26 31 	. & 1 
	ld a,(0810dh)		;2d72	3a 0d 81 	: . . 
	or a			;2d75	b7 	. 
	jr nz,$+15		;2d76	20 0d 	  . 
	ld a,(08115h)		;2d78	3a 15 81 	: . . 
	or a			;2d7b	b7 	. 
	jr nz,$+9		;2d7c	20 07 	  . 
	ld a,(08111h)		;2d7e	3a 11 81 	: . . 
	or a			;2d81	b7 	. 
	jp z,0312bh		;2d82	ca 2b 31 	. + 1 
	ld a,(08242h)		;2d85	3a 42 82 	: B . 
	or a			;2d88	b7 	. 
	jp nz,0312bh		;2d89	c2 2b 31 	. + 1 
	ld a,(08241h)		;2d8c	3a 41 82 	: A . 
	or a			;2d8f	b7 	. 
	jp nz,0312bh		;2d90	c2 2b 31 	. + 1 
	ld a,(08220h)		;2d93	3a 20 82 	:   . 
	or a			;2d96	b7 	. 
	jp nz,0312bh		;2d97	c2 2b 31 	. + 1 
	ld a,(0822bh)		;2d9a	3a 2b 82 	: + . 
	cp 001h		;2d9d	fe 01 	. . 
	jp z,0312bh		;2d9f	ca 2b 31 	. + 1 
	call 02cdbh		;2da2	cd db 2c 	. . , 
	ld (08109h),a		;2da5	32 09 81 	2 . . 
	jp 03126h		;2da8	c3 26 31 	. & 1 
	ld a,(0810bh)		;2dab	3a 0b 81 	: . . 
	xor 001h		;2dae	ee 01 	. . 
	ld (0810bh),a		;2db0	32 0b 81 	2 . . 
	jp 03126h		;2db3	c3 26 31 	. & 1 
	call 02cdbh		;2db6	cd db 2c 	. . , 
	ld (08101h),a		;2db9	32 01 81 	2 . . 
	jp 03126h		;2dbc	c3 26 31 	. & 1 
	call 02cdbh		;2dbf	cd db 2c 	. . , 
	ld (08103h),a		;2dc2	32 03 81 	2 . . 
	jp 03126h		;2dc5	c3 26 31 	. & 1 
	ld a,(08131h)		;2dc8	3a 31 81 	: 1 . 
	xor 001h		;2dcb	ee 01 	. . 
	ld (08131h),a		;2dcd	32 31 81 	2 1 . 
	jp 03126h		;2dd0	c3 26 31 	. & 1 
	ld a,001h		;2dd3	3e 01 	> . 
	ld (08138h),a		;2dd5	32 38 81 	2 8 . 
	jp 03126h		;2dd8	c3 26 31 	. & 1 
	ld a,(08188h)		;2ddb	3a 88 81 	: . . 
	and 004h		;2dde	e6 04 	. . 
	jr z,$+6		;2de0	28 04 	( . 
	xor a			;2de2	af 	. 
	ld (08116h),a		;2de3	32 16 81 	2 . . 
	ld b,00ah		;2de6	06 0a 	. . 
	ld hl,08100h		;2de8	21 00 81 	! . . 
	xor a			;2deb	af 	. 
	ld (hl),a			;2dec	77 	w 
	inc hl			;2ded	23 	# 
	djnz $-2		;2dee	10 fc 	. . 
	inc a			;2df0	3c 	< 
	ret			;2df1	c9 	. 
	ld a,(08149h)		;2df2	3a 49 81 	: I . 
	cp 088h		;2df5	fe 88 	. . 
	jr z,$+33		;2df7	28 1f 	( . 
	cp 089h		;2df9	fe 89 	. . 
	jr z,$+37		;2dfb	28 23 	( # 
	cp 08ah		;2dfd	fe 8a 	. . 
	jr z,$+41		;2dff	28 27 	( ' 
	cp 08bh		;2e01	fe 8b 	. . 
	jr z,$+45		;2e03	28 2b 	( + 
	cp 08ch		;2e05	fe 8c 	. . 
	jr z,$+49		;2e07	28 2f 	( / 
	cp 08dh		;2e09	fe 8d 	. . 
	jr z,$+53		;2e0b	28 33 	( 3 
	cp 08eh		;2e0d	fe 8e 	. . 
	jr z,$+60		;2e0f	28 3a 	( : 
	cp 08fh		;2e11	fe 8f 	. . 
	jr z,$-64		;2e13	28 be 	( . 
	jp 03121h		;2e15	c3 21 31 	. ! 1 
	ld a,001h		;2e18	3e 01 	> . 
	ld (08134h),a		;2e1a	32 34 81 	2 4 . 
	jp 03126h		;2e1d	c3 26 31 	. & 1 
	ld a,001h		;2e20	3e 01 	> . 
	ld (08135h),a		;2e22	32 35 81 	2 5 . 
	jp 03126h		;2e25	c3 26 31 	. & 1 
	ld a,001h		;2e28	3e 01 	> . 
	ld (08137h),a		;2e2a	32 37 81 	2 7 . 
	jp 03126h		;2e2d	c3 26 31 	. & 1 
	ld a,001h		;2e30	3e 01 	> . 
	ld (08136h),a		;2e32	32 36 81 	2 6 . 
	jp 03126h		;2e35	c3 26 31 	. & 1 
	ld a,002h		;2e38	3e 02 	> . 
	ld (08138h),a		;2e3a	32 38 81 	2 8 . 
	jp 03126h		;2e3d	c3 26 31 	. & 1 
	ld a,(08139h)		;2e40	3a 39 81 	: 9 . 
	xor 001h		;2e43	ee 01 	. . 
	ld (08139h),a		;2e45	32 39 81 	2 9 . 
	jp 03126h		;2e48	c3 26 31 	. & 1 
	ld a,(0814bh)		;2e4b	3a 4b 81 	: K . 
	xor 001h		;2e4e	ee 01 	. . 
	ld (0814bh),a		;2e50	32 4b 81 	2 K . 
	jp 03126h		;2e53	c3 26 31 	. & 1 
	ld a,(08149h)		;2e56	3a 49 81 	: I . 
	cp 090h		;2e59	fe 90 	. . 
	jr z,$+35		;2e5b	28 21 	( ! 
	cp 091h		;2e5d	fe 91 	. . 
	jr z,$+43		;2e5f	28 29 	( ) 
	cp 092h		;2e61	fe 92 	. . 
	jr z,$+59		;2e63	28 39 	( 9 
	cp 093h		;2e65	fe 93 	. . 
	jr z,$+106		;2e67	28 68 	( h 
	cp 094h		;2e69	fe 94 	. . 
	jr z,$+108		;2e6b	28 6a 	( j 
	cp 095h		;2e6d	fe 95 	. . 
	jr z,$+124		;2e6f	28 7a 	( z 
	cp 096h		;2e71	fe 96 	. . 
	jp z,02e02h		;2e73	ca 02 2e 	. . . 
	cp 097h		;2e76	fe 97 	. . 
	jp z,02e12h		;2e78	ca 12 2e 	. . . 
	jp 03121h		;2e7b	c3 21 31 	. ! 1 
	ld a,001h		;2e7e	3e 01 	> . 
	ld (08132h),a		;2e80	32 32 81 	2 2 . 
	xor a			;2e83	af 	. 
	ld (08133h),a		;2e84	32 33 81 	2 3 . 
	jp 03126h		;2e87	c3 26 31 	. & 1 
	ld a,(0822bh)		;2e8a	3a 2b 82 	: + . 
	cp 001h		;2e8d	fe 01 	. . 
	jp z,0312bh		;2e8f	ca 2b 31 	. + 1 
	ld a,001h		;2e92	3e 01 	> . 
	ld (08133h),a		;2e94	32 33 81 	2 3 . 
	xor a			;2e97	af 	. 
	ld (08132h),a		;2e98	32 32 81 	2 2 . 
	jp 03126h		;2e9b	c3 26 31 	. & 1 
	bit 2,(hl)		;2e9e	cb 56 	. V 
	jp nz,0312fh		;2ea0	c2 2f 31 	. / 1 
	ld a,(0822bh)		;2ea3	3a 2b 82 	: + . 
	cp 001h		;2ea6	fe 01 	. . 
	jp z,0312bh		;2ea8	ca 2b 31 	. + 1 
	call 02e67h		;2eab	cd 67 2e 	. g . 
	call 02e1fh		;2eae	cd 1f 2e 	. . . 
	ld (08115h),a		;2eb1	32 15 81 	2 . . 
	ld a,(08242h)		;2eb4	3a 42 82 	: B . 
	or a			;2eb7	b7 	. 
	jp nz,02dc9h		;2eb8	c2 c9 2d 	. . - 
	ld a,(0823fh)		;2ebb	3a 3f 82 	: ? . 
	or a			;2ebe	b7 	. 
	jp nz,02dc9h		;2ebf	c2 c9 2d 	. . - 
	ld a,(08241h)		;2ec2	3a 41 82 	: A . 
	or a			;2ec5	b7 	. 
	jp z,03126h		;2ec6	ca 26 31 	. & 1 
	ld a,001h		;2ec9	3e 01 	> . 
	ld (0810dh),a		;2ecb	32 0d 81 	2 . . 
	jp 03126h		;2ece	c3 26 31 	. & 1 
	call 02298h		;2ed1	cd 98 22 	. . " 
	jp 03126h		;2ed4	c3 26 31 	. & 1 
	ld a,(0822bh)		;2ed7	3a 2b 82 	: + . 
	cp 001h		;2eda	fe 01 	. . 
	jp z,0312bh		;2edc	ca 2b 31 	. + 1 
	call 02e67h		;2edf	cd 67 2e 	. g . 
	call 02e1fh		;2ee2	cd 1f 2e 	. . . 
	ld (08111h),a		;2ee5	32 11 81 	2 . . 
	jp 02db4h		;2ee8	c3 b4 2d 	. . - 
	call 02df1h		;2eeb	cd f1 2d 	. . - 
	jp 03126h		;2eee	c3 26 31 	. & 1 
	ld a,(0810fh)		;2ef1	3a 0f 81 	: . . 
	or a			;2ef4	b7 	. 
	ret nz			;2ef5	c0 	. 
	ld a,(08117h)		;2ef6	3a 17 81 	: . . 
	xor 001h		;2ef9	ee 01 	. . 
	ld (08117h),a		;2efb	32 17 81 	2 . . 
	call 02fd4h		;2efe	cd d4 2f 	. . / 
	ret			;2f01	c9 	. 
	call 02e08h		;2f02	cd 08 2e 	. . . 
	jp 03126h		;2f05	c3 26 31 	. & 1 
	call 02e45h		;2f08	cd 45 2e 	. E . 
	call 02e1fh		;2f0b	cd 1f 2e 	. . . 
	ld (0810fh),a		;2f0e	32 0f 81 	2 . . 
	ret			;2f11	c9 	. 
	call 02e18h		;2f12	cd 18 2e 	. . . 
	jp 03126h		;2f15	c3 26 31 	. & 1 
	call 02e1fh		;2f18	cd 1f 2e 	. . . 
	ld (0810dh),a		;2f1b	32 0d 81 	2 . . 
	ret			;2f1e	c9 	. 
	ld a,(0822bh)		;2f1f	3a 2b 82 	: + . 
	cp 001h		;2f22	fe 01 	. . 
	jr z,$+5		;2f24	28 03 	( . 
	call 01b03h		;2f26	cd 03 1b 	. . . 
	xor a			;2f29	af 	. 
	ld (0810dh),a		;2f2a	32 0d 81 	2 . . 
	xor a			;2f2d	af 	. 
	ld (0810fh),a		;2f2e	32 0f 81 	2 . . 
	ld (08111h),a		;2f31	32 11 81 	2 . . 
	ld (08113h),a		;2f34	32 13 81 	2 . . 
	ld (08115h),a		;2f37	32 15 81 	2 . . 
	ld (08224h),a		;2f3a	32 24 82 	2 $ . 
	ld (0821ch),a		;2f3d	32 1c 82 	2 . . 
	ld (08125h),a		;2f40	32 25 81 	2 % . 
	inc a			;2f43	3c 	< 
	ret			;2f44	c9 	. 
	ld a,(0810dh)		;2f45	3a 0d 81 	: . . 
	cp 001h		;2f48	fe 01 	. . 
	jr z,$+16		;2f4a	28 0e 	( . 
	ld a,(08111h)		;2f4c	3a 11 81 	: . . 
	cp 001h		;2f4f	fe 01 	. . 
	jr z,$+9		;2f51	28 07 	( . 
	ld a,(08115h)		;2f53	3a 15 81 	: . . 
	cp 001h		;2f56	fe 01 	. . 
	jr nz,$+15		;2f58	20 0d 	  . 
	ld a,(08109h)		;2f5a	3a 09 81 	: . . 
	cp 001h		;2f5d	fe 01 	. . 
	jr nz,$+8		;2f5f	20 06 	  . 
	call 02cdbh		;2f61	cd db 2c 	. . , 
	ld (08101h),a		;2f64	32 01 81 	2 . . 
	ld a,(0822dh)		;2f67	3a 2d 82 	: - . 
	or a			;2f6a	b7 	. 
	call z,01dech		;2f6b	cc ec 1d 	. . . 
	ret			;2f6e	c9 	. 
	ld a,(08149h)		;2f6f	3a 49 81 	: I . 
	cp 098h		;2f72	fe 98 	. . 
	jr z,$+35		;2f74	28 21 	( ! 
	cp 099h		;2f76	fe 99 	. . 
	jr z,$+38		;2f78	28 24 	( $ 
	cp 09ah		;2f7a	fe 9a 	. . 
	jr z,$+42		;2f7c	28 28 	( ( 
	cp 09bh		;2f7e	fe 9b 	. . 
	jr z,$+49		;2f80	28 2f 	( / 
	cp 09ch		;2f82	fe 9c 	. . 
	jr z,$+59		;2f84	28 39 	( 9 
	cp 09dh		;2f86	fe 9d 	. . 
	jr z,$+66		;2f88	28 40 	( @ 
	cp 09eh		;2f8a	fe 9e 	. . 
	jp z,02ed5h		;2f8c	ca d5 2e 	. . . 
	cp 09fh		;2f8f	fe 9f 	. . 
	jp z,02ee0h		;2f91	ca e0 2e 	. . . 
	jp 03121h		;2f94	c3 21 31 	. ! 1 
	xor a			;2f97	af 	. 
	ld (0813ah),a		;2f98	32 3a 81 	2 : . 
	jp 03126h		;2f9b	c3 26 31 	. & 1 
	ld a,001h		;2f9e	3e 01 	> . 
	ld (0813ah),a		;2fa0	32 3a 81 	2 : . 
	jp 03126h		;2fa3	c3 26 31 	. & 1 
	ld a,(0813bh)		;2fa6	3a 3b 81 	: ; . 
	xor 001h		;2fa9	ee 01 	. . 
	ld (0813bh),a		;2fab	32 3b 81 	2 ; . 
	jp 03126h		;2fae	c3 26 31 	. & 1 
	ld a,(0813ch)		;2fb1	3a 3c 81 	: < . 
	xor 001h		;2fb4	ee 01 	. . 
	ld (0813ch),a		;2fb6	32 3c 81 	2 < . 
	call 02fd4h		;2fb9	cd d4 2f 	. . / 
	jp 03126h		;2fbc	c3 26 31 	. & 1 
	ld a,(0813dh)		;2fbf	3a 3d 81 	: = . 
	xor 001h		;2fc2	ee 01 	. . 
	ld (0813dh),a		;2fc4	32 3d 81 	2 = . 
	jp 03126h		;2fc7	c3 26 31 	. & 1 
	ld a,(0813eh)		;2fca	3a 3e 81 	: > . 
	xor 001h		;2fcd	ee 01 	. . 
	ld (0813eh),a		;2fcf	32 3e 81 	2 > . 
	jp 03126h		;2fd2	c3 26 31 	. & 1 
	ld a,(08154h)		;2fd5	3a 54 81 	: T . 
	xor 001h		;2fd8	ee 01 	. . 
	ld (08154h),a		;2fda	32 54 81 	2 T . 
	jp 03126h		;2fdd	c3 26 31 	. & 1 
	ld a,(08155h)		;2fe0	3a 55 81 	: U . 
	xor 001h		;2fe3	ee 01 	. . 
	ld (08155h),a		;2fe5	32 55 81 	2 U . 
	jp 03126h		;2fe8	c3 26 31 	. & 1 
	ld a,(08149h)		;2feb	3a 49 81 	: I . 
	cp 0a0h		;2fee	fe a0 	. . 
	jr z,$+25		;2ff0	28 17 	( . 
	cp 0a1h		;2ff2	fe a1 	. . 
	jr z,$+28		;2ff4	28 1a 	( . 
	cp 0a2h		;2ff6	fe a2 	. . 
	jr z,$+32		;2ff8	28 1e 	( . 
	cp 0a3h		;2ffa	fe a3 	. . 
	jr z,$+49		;2ffc	28 2f 	( / 
	cp 0a4h		;2ffe	fe a4 	. . 
	jr z,$+71		;3000	28 45 	( E 
	cp 0a5h		;3002	fe a5 	. . 
	jr z,$+127		;3004	28 7d 	( } 
	jp 03121h		;3006	c3 21 31 	. ! 1 
	xor a			;3009	af 	. 
	ld (0813fh),a		;300a	32 3f 81 	2 ? . 
	jp 03126h		;300d	c3 26 31 	. & 1 
	ld a,001h		;3010	3e 01 	> . 
	ld (0813fh),a		;3012	32 3f 81 	2 ? . 
	jp 03126h		;3015	c3 26 31 	. & 1 
	call 02fc6h		;3018	cd c6 2f 	. . / 
	ld a,(0822bh)		;301b	3a 2b 82 	: + . 
	or a			;301e	b7 	. 
	jp nz,03126h		;301f	c2 26 31 	. & 1 
	ld a,001h		;3022	3e 01 	> . 
	ld (08141h),a		;3024	32 41 81 	2 A . 
	ld (08230h),a		;3027	32 30 82 	2 0 . 
	jp 03126h		;302a	c3 26 31 	. & 1 
	call 02fc6h		;302d	cd c6 2f 	. . / 
	ld a,(08140h)		;3030	3a 40 81 	: @ . 
	bit 1,a		;3033	cb 4f 	. O 
	jp nz,02fbfh		;3035	c2 bf 2f 	. . / 
	ld a,(0822bh)		;3038	3a 2b 82 	: + . 
	or a			;303b	b7 	. 
	jp nz,03126h		;303c	c2 26 31 	. & 1 
	ld a,002h		;303f	3e 02 	> . 
	ld (08140h),a		;3041	32 40 81 	2 @ . 
	jp 03126h		;3044	c3 26 31 	. & 1 
	ld a,(08241h)		;3047	3a 41 82 	: A . 
	or a			;304a	b7 	. 
	jp nz,03126h		;304b	c2 26 31 	. & 1 
	ld a,(0823fh)		;304e	3a 3f 82 	: ? . 
	or a			;3051	b7 	. 
	jp nz,03126h		;3052	c2 26 31 	. & 1 
	ld a,(08242h)		;3055	3a 42 82 	: B . 
	or a			;3058	b7 	. 
	jp nz,03126h		;3059	c2 26 31 	. & 1 
	call 02fc6h		;305c	cd c6 2f 	. . / 
	ld a,(08140h)		;305f	3a 40 81 	: @ . 
	bit 2,a		;3062	cb 57 	. W 
	jr nz,$+91		;3064	20 59 	  Y 
	ld a,(08143h)		;3066	3a 43 81 	: C . 
	or a			;3069	b7 	. 
	jp nz,03126h		;306a	c2 26 31 	. & 1 
	ld a,(08111h)		;306d	3a 11 81 	: . . 
	or a			;3070	b7 	. 
	jp nz,03126h		;3071	c2 26 31 	. & 1 
	ld a,(08115h)		;3074	3a 15 81 	: . . 
	or a			;3077	b7 	. 
	jp nz,03126h		;3078	c2 26 31 	. & 1 
	ld a,004h		;307b	3e 04 	> . 
	ld (08140h),a		;307d	32 40 81 	2 @ . 
	jp 03126h		;3080	c3 26 31 	. & 1 
	ld a,(08241h)		;3083	3a 41 82 	: A . 
	or a			;3086	b7 	. 
	jp nz,03126h		;3087	c2 26 31 	. & 1 
	ld a,(0823fh)		;308a	3a 3f 82 	: ? . 
	or a			;308d	b7 	. 
	jp nz,03126h		;308e	c2 26 31 	. & 1 
	ld a,(08242h)		;3091	3a 42 82 	: B . 
	or a			;3094	b7 	. 
	jp nz,03126h		;3095	c2 26 31 	. & 1 
	call 02fc6h		;3098	cd c6 2f 	. . / 
	ld a,(08140h)		;309b	3a 40 81 	: @ . 
	bit 3,a		;309e	cb 5f 	. _ 
	jr nz,$+31		;30a0	20 1d 	  . 
	ld a,(08143h)		;30a2	3a 43 81 	: C . 
	or a			;30a5	b7 	. 
	jp nz,03126h		;30a6	c2 26 31 	. & 1 
	ld a,(08111h)		;30a9	3a 11 81 	: . . 
	or a			;30ac	b7 	. 
	jp nz,03126h		;30ad	c2 26 31 	. & 1 
	ld a,(08115h)		;30b0	3a 15 81 	: . . 
	or a			;30b3	b7 	. 
	jp nz,03126h		;30b4	c2 26 31 	. & 1 
	ld a,008h		;30b7	3e 08 	> . 
	ld (08140h),a		;30b9	32 40 81 	2 @ . 
	jp 03126h		;30bc	c3 26 31 	. & 1 
	xor a			;30bf	af 	. 
	ld (08140h),a		;30c0	32 40 81 	2 @ . 
	jp 03126h		;30c3	c3 26 31 	. & 1 
	xor a			;30c6	af 	. 
	ld (08220h),a		;30c7	32 20 82 	2   . 
	ld (08269h),a		;30ca	32 69 82 	2 i . 
	ld (0826ah),a		;30cd	32 6a 82 	2 j . 
	call 01b03h		;30d0	cd 03 1b 	. . . 
	ret			;30d3	c9 	. 
	ld a,084h		;30d4	3e 84 	> . 
	out (081h),a		;30d6	d3 81 	. . 
	ld a,(0818ch)		;30d8	3a 8c 81 	: . . 
	and 0f3h		;30db	e6 f3 	. . 
	ld (0818ch),a		;30dd	32 8c 81 	2 . . 
	out (080h),a		;30e0	d3 80 	. . 
	call 04cdch		;30e2	cd dc 4c 	. . L 
	ret			;30e5	c9 	. 
	ld a,(08149h)		;30e6	3a 49 81 	: I . 
	cp 0abh		;30e9	fe ab 	. . 
	jp z,03017h		;30eb	ca 17 30 	. . 0 
	cp 0aeh		;30ee	fe ae 	. . 
	jp z,03081h		;30f0	ca 81 30 	. . 0 
	cp 0afh		;30f3	fe af 	. . 
	jp z,03133h		;30f5	ca 33 31 	. 3 1 
	bit 3,(hl)		;30f8	cb 5e 	. ^ 
	jp nz,0312fh		;30fa	c2 2f 31 	. / 1 
	ld a,(0822bh)		;30fd	3a 2b 82 	: + . 
	cp 001h		;3100	fe 01 	. . 
	jp z,03126h		;3102	ca 26 31 	. & 1 
	ld a,(08149h)		;3105	3a 49 81 	: I . 
	cp 0a8h		;3108	fe a8 	. . 
	jr z,$+35		;310a	28 21 	( ! 
	cp 0a9h		;310c	fe a9 	. . 
	jr z,$+52		;310e	28 32 	( 2 
	cp 0aah		;3110	fe aa 	. . 
	jr z,$+75		;3112	28 49 	( I 
	jp 03121h		;3114	c3 21 31 	. ! 1 
	ld a,(0814fh)		;3117	3a 4f 81 	: O . 
	xor 001h		;311a	ee 01 	. . 
	ld (0814fh),a		;311c	32 4f 81 	2 O . 
	jr nz,$+8		;311f	20 06 	  . 
	call 01e9dh		;3121	cd 9d 1e 	. . . 
	jp 03126h		;3124	c3 26 31 	. & 1 
	call 01e8fh		;3127	cd 8f 1e 	. . . 
	jp 03126h		;312a	c3 26 31 	. & 1 
	ld a,(0e40dh)		;312d	3a 0d e4 	: . . 
	cp 001h		;3130	fe 01 	. . 
	jp z,0303ah		;3132	ca 3a 30 	. : 0 
	cp 002h		;3135	fe 02 	. . 
	jp nz,03126h		;3137	c2 26 31 	. & 1 
	ld a,001h		;313a	3e 01 	> . 
	ld (08123h),a		;313c	32 23 81 	2 # . 
	jp 03126h		;313f	c3 26 31 	. & 1 
	ld a,(08143h)		;3142	3a 43 81 	: C . 
	or a			;3145	b7 	. 
	jp z,0312bh		;3146	ca 2b 31 	. + 1 
	ld a,(08218h)		;3149	3a 18 82 	: . . 
	or a			;314c	b7 	. 
	jp nz,0312bh		;314d	c2 2b 31 	. + 1 
	ld a,(08142h)		;3150	3a 42 81 	: B . 
	rlc a		;3153	cb 07 	. . 
	rlc a		;3155	cb 07 	. . 
	ld (08142h),a		;3157	32 42 81 	2 B . 
	jp 03126h		;315a	c3 26 31 	. & 1 
	ld a,(0810dh)		;315d	3a 0d 81 	: . . 
	cp 000h		;3160	fe 00 	. . 
	jp z,0312bh		;3162	ca 2b 31 	. + 1 
	ld a,(08143h)		;3165	3a 43 81 	: C . 
	cp 001h		;3168	fe 01 	. . 
	jr z,$+12		;316a	28 0a 	( . 
	inc a			;316c	3c 	< 
	ld (08143h),a		;316d	32 43 81 	2 C . 
	ld (0822ah),a		;3170	32 2a 82 	2 * . 
	jp 03126h		;3173	c3 26 31 	. & 1 
	xor a			;3176	af 	. 
	ld (08143h),a		;3177	32 43 81 	2 C . 
	inc a			;317a	3c 	< 
	ld (08142h),a		;317b	32 42 81 	2 B . 
	jp 03126h		;317e	c3 26 31 	. & 1 
	ld a,(08150h)		;3181	3a 50 81 	: P . 
	xor 001h		;3184	ee 01 	. . 
	ld (08150h),a		;3186	32 50 81 	2 P . 
	jr nz,$+8		;3189	20 06 	  . 
	call 01ed5h		;318b	cd d5 1e 	. . . 
	jp 03126h		;318e	c3 26 31 	. & 1 
	call 01ec2h		;3191	cd c2 1e 	. . . 
	jp 03126h		;3194	c3 26 31 	. & 1 
	ld a,(08149h)		;3197	3a 49 81 	: I . 
	cp 0b6h		;319a	fe b6 	. . 
	jp z,03112h		;319c	ca 12 31 	. . 1 
	cp 0b5h		;319f	fe b5 	. . 
	jr z,$+84		;31a1	28 52 	( R 
	bit 4,(hl)		;31a3	cb 66 	. f 
	jp nz,0312fh		;31a5	c2 2f 31 	. / 1 
	cp 0b0h		;31a8	fe b0 	. . 
	jr z,$+20		;31aa	28 12 	( . 
	cp 0b1h		;31ac	fe b1 	. . 
	jr z,$+27		;31ae	28 19 	( . 
	cp 0b2h		;31b0	fe b2 	. . 
	jr z,$+34		;31b2	28 20 	(   
	cp 0b3h		;31b4	fe b3 	. . 
	jr z,$+41		;31b6	28 27 	( ' 
	cp 0b4h		;31b8	fe b4 	. . 
	jr z,$+48		;31ba	28 2e 	( . 
	jr $+101		;31bc	18 63 	. c 
	ld a,(08144h)		;31be	3a 44 81 	: D . 
	xor 001h		;31c1	ee 01 	. . 
	ld (08144h),a		;31c3	32 44 81 	2 D . 
	jp 03126h		;31c6	c3 26 31 	. & 1 
	ld a,(08145h)		;31c9	3a 45 81 	: E . 
	xor 001h		;31cc	ee 01 	. . 
	ld (08145h),a		;31ce	32 45 81 	2 E . 
	jp 03126h		;31d1	c3 26 31 	. & 1 
	ld a,(08146h)		;31d4	3a 46 81 	: F . 
	xor 001h		;31d7	ee 01 	. . 
	ld (08146h),a		;31d9	32 46 81 	2 F . 
	jp 03126h		;31dc	c3 26 31 	. & 1 
	ld a,(08148h)		;31df	3a 48 81 	: H . 
	ld a,001h		;31e2	3e 01 	> . 
	ld (08148h),a		;31e4	32 48 81 	2 H . 
	jp 03126h		;31e7	c3 26 31 	. & 1 
	ld a,(08147h)		;31ea	3a 47 81 	: G . 
	ld a,001h		;31ed	3e 01 	> . 
	ld (08147h),a		;31ef	32 47 81 	2 G . 
	jp 03126h		;31f2	c3 26 31 	. & 1 
	ld a,(08239h)		;31f5	3a 39 82 	: 9 . 
	or a			;31f8	b7 	. 
	jp nz,03126h		;31f9	c2 26 31 	. & 1 
	ld a,(08151h)		;31fc	3a 51 81 	: Q . 
	xor 001h		;31ff	ee 01 	. . 
	ld (08151h),a		;3201	32 51 81 	2 Q . 
	jr nz,$+8		;3204	20 06 	  . 
	call 01f22h		;3206	cd 22 1f 	. " . 
	jp 03126h		;3209	c3 26 31 	. & 1 
	call 01f0eh		;320c	cd 0e 1f 	. . . 
	jp 03126h		;320f	c3 26 31 	. & 1 
	ld a,(08153h)		;3212	3a 53 81 	: S . 
	xor 001h		;3215	ee 01 	. . 
	ld (08153h),a		;3217	32 53 81 	2 S . 
	jp 03126h		;321a	c3 26 31 	. & 1 
	ld a,(08149h)		;321d	3a 49 81 	: I . 
	nop			;3220	00 	. 
	ld a,003h		;3221	3e 03 	> . 
	ld (08292h),a		;3223	32 92 82 	2 . . 
	xor a			;3226	af 	. 
	ld (08227h),a		;3227	32 27 82 	2 ' . 
	ret			;322a	c9 	. 
	ld a,001h		;322b	3e 01 	> . 
	jr $-10		;322d	18 f4 	. . 
	ld a,002h		;322f	3e 02 	> . 
	jr $-14		;3231	18 f0 	. . 
	ld a,(08156h)		;3233	3a 56 81 	: V . 
	xor 001h		;3236	ee 01 	. . 
	ld (08156h),a		;3238	32 56 81 	2 V . 
	jr nz,$+8		;323b	20 06 	  . 
	call 01efbh		;323d	cd fb 1e 	. . . 
	jp 03126h		;3240	c3 26 31 	. & 1 
	call 01ee8h		;3243	cd e8 1e 	. . . 
	jp 03126h		;3246	c3 26 31 	. & 1 
	ld b,003h		;3249	06 03 	. . 
	ld hl,08284h		;324b	21 84 82 	! . . 
	ld de,0a007h		;324e	11 07 a0 	. . . 
	ld a,(de)			;3251	1a 	. 
	cp 04ch		;3252	fe 4c 	. L 
	jr nz,$+6		;3254	20 04 	  . 
	ld a,001h		;3256	3e 01 	> . 
	jr $+20		;3258	18 12 	. . 
	cp 044h		;325a	fe 44 	. D 
	jr nz,$+6		;325c	20 04 	  . 
	ld a,00ch		;325e	3e 0c 	> . 
	jr $+12		;3260	18 0a 	. . 
	cp 050h		;3262	fe 50 	. P 
	jr nz,$+6		;3264	20 04 	  . 
	ld a,00ah		;3266	3e 0a 	> . 
	jr $+4		;3268	18 02 	. . 
	ld a,006h		;326a	3e 06 	> . 
	ld (hl),a			;326c	77 	w 
	inc hl			;326d	23 	# 
	inc de			;326e	13 	. 
	dec b			;326f	05 	. 
	ld a,(de)			;3270	1a 	. 
	and 00fh		;3271	e6 0f 	. . 
	push de			;3273	d5 	. 
	push hl			;3274	e5 	. 
	ld hl,0319ah		;3275	21 9a 31 	! . 1 
	ld d,000h		;3278	16 00 	. . 
	ld e,a			;327a	5f 	_ 
	add hl,de			;327b	19 	. 
	ld a,(hl)			;327c	7e 	~ 
	pop hl			;327d	e1 	. 
	pop de			;327e	d1 	. 
	ld (hl),a			;327f	77 	w 
	inc de			;3280	13 	. 
	ld a,(de)			;3281	1a 	. 
	and 00fh		;3282	e6 0f 	. . 
	push de			;3284	d5 	. 
	push hl			;3285	e5 	. 
	ld hl,031a4h		;3286	21 a4 31 	! . 1 
	ld d,000h		;3289	16 00 	. . 
	ld e,a			;328b	5f 	_ 
	add hl,de			;328c	19 	. 
	ld a,(hl)			;328d	7e 	~ 
	pop hl			;328e	e1 	. 
	pop de			;328f	d1 	. 
	add a,(hl)			;3290	86 	. 
	ld (hl),a			;3291	77 	w 
	inc de			;3292	13 	. 
	inc hl			;3293	23 	# 
	djnz $-36		;3294	10 da 	. . 
	ld a,00fh		;3296	3e 0f 	> . 
	ld (hl),a			;3298	77 	w 
	ret			;3299	c9 	. 
	nop			;329a	00 	. 
	add hl,de			;329b	19 	. 
	inc sp			;329c	33 	3 
	ld c,l			;329d	4d 	M 
	ld h,a			;329e	67 	g 
	add a,b			;329f	80 	. 
	sbc a,d			;32a0	9a 	. 
	or h			;32a1	b4 	. 
	adc a,0e7h		;32a2	ce e7 	. . 
	nop			;32a4	00 	. 
	ld (bc),a			;32a5	02 	. 
	dec b			;32a6	05 	. 
	ex af,af'			;32a7	08 	. 
	ld a,(bc)			;32a8	0a 	. 
	inc c			;32a9	0c 	. 
	rrca			;32aa	0f 	. 
	ld (de),a			;32ab	12 	. 
	inc d			;32ac	14 	. 
	rla			;32ad	17 	. 
	ld a,(08261h)		;32ae	3a 61 82 	: a . 
	push af			;32b1	f5 	. 
	push bc			;32b2	c5 	. 
	push de			;32b3	d5 	. 
	push hl			;32b4	e5 	. 
	xor a			;32b5	af 	. 
	ld (0a01bh),a		;32b6	32 1b a0 	2 . . 
	ld b,005h		;32b9	06 05 	. . 
	ld de,0a000h		;32bb	11 00 a0 	. . . 
	ld hl,0b81dh		;32be	21 1d b8 	! . . 
	call 032a8h		;32c1	cd a8 32 	. . 2 
	ld a,(0a01bh)		;32c4	3a 1b a0 	: . . 
	or a			;32c7	b7 	. 
	jp z,0329dh		;32c8	ca 9d 32 	. . 2 
	ld de,0a000h		;32cb	11 00 a0 	. . . 
	ld hl,0a020h		;32ce	21 20 a0 	!   . 
	call 032a8h		;32d1	cd a8 32 	. . 2 
	ld a,(08274h)		;32d4	3a 74 82 	: t . 
	or a			;32d7	b7 	. 
	jp z,0329dh		;32d8	ca 9d 32 	. . 2 
	push de			;32db	d5 	. 
	ld de,000deh		;32dc	11 de 00 	. . . 
	add hl,de			;32df	19 	. 
	pop de			;32e0	d1 	. 
	ld a,00dh		;32e1	3e 0d 	> . 
	cp (hl)			;32e3	be 	. 
	jr nz,$-19		;32e4	20 eb 	  . 
	jr $+16		;32e6	18 0e 	. . 
	ld a,(08261h)		;32e8	3a 61 82 	: a . 
	push af			;32eb	f5 	. 
	push bc			;32ec	c5 	. 
	push de			;32ed	d5 	. 
	push hl			;32ee	e5 	. 
	xor a			;32ef	af 	. 
	ld (08261h),a		;32f0	32 61 82 	2 a . 
	ld (08274h),a		;32f3	32 74 82 	2 t . 
	ld de,0b5beh		;32f6	11 be b5 	. . . 
	call 00c92h		;32f9	cd 92 0c 	. . . 
	call 032cdh		;32fc	cd cd 32 	. . 2 
	ld a,(08274h)		;32ff	3a 74 82 	: t . 
	or a			;3302	b7 	. 
	jr z,$+97		;3303	28 5f 	( _ 
	ld de,0b686h		;3305	11 86 b6 	. . . 
	ld hl,002e2h		;3308	21 e2 02 	! . . 
	ld (08012h),hl		;330b	22 12 80 	" . . 
	call 00c95h		;330e	cd 95 0c 	. . . 
	ld hl,0e35eh		;3311	21 5e e3 	! ^ . 
	ld (081b1h),hl		;3314	22 b1 81 	" . . 
	call 0055fh		;3317	cd 5f 05 	. _ . 
	ld a,(0814ah)		;331a	3a 4a 81 	: J . 
	cp 041h		;331d	fe 41 	. A 
	jr z,$+30		;331f	28 1c 	( . 
	cp 042h		;3321	fe 42 	. B 
	jr z,$+31		;3323	28 1d 	( . 
	cp 043h		;3325	fe 43 	. C 
	jr z,$+32		;3327	28 1e 	( . 
	cp 044h		;3329	fe 44 	. D 
	jr z,$+33		;332b	28 1f 	( . 
	cp 045h		;332d	fe 45 	. E 
	jr z,$+34		;332f	28 20 	(   
	cp 01bh		;3331	fe 1b 	. . 
	jr nz,$-28		;3333	20 e2 	  . 
	ld a,001h		;3335	3e 01 	> . 
	ld (0883fh),a		;3337	32 3f 88 	2 ? . 
	jp 03294h		;333a	c3 94 32 	. . 2 
	ld de,0a020h		;333d	11 20 a0 	.   . 
	jr $+20		;3340	18 12 	. . 
	ld de,0a0feh		;3342	11 fe a0 	. . . 
	jr $+15		;3345	18 0d 	. . 
	ld de,0a1dch		;3347	11 dc a1 	. . . 
	jr $+10		;334a	18 08 	. . 
	ld de,0a2bah		;334c	11 ba a2 	. . . 
	jr $+5		;334f	18 03 	. . 
	ld de,0a398h		;3351	11 98 a3 	. . . 
	sub 040h		;3354	d6 40 	. @ 
	ld (0a01bh),a		;3356	32 1b a0 	2 . . 
	ld bc,00005h		;3359	01 05 00 	. . . 
	ld hl,0a000h		;335c	21 00 a0 	! . . 
	ldir		;335f	ed b0 	. . 
	call 032cdh		;3361	cd cd 32 	. . 2 
	ld b,0a0h		;3364	06 a0 	. . 
	ld hl,0e302h		;3366	21 02 e3 	! . . 
	ld (hl),000h		;3369	36 00 	6 . 
	inc hl			;336b	23 	# 
	djnz $-3		;336c	10 fb 	. . 
	ld hl,0032ah		;336e	21 2a 03 	! * . 
	ld (08012h),hl		;3371	22 12 80 	" . . 
	ld de,0b6c3h		;3374	11 c3 b6 	. . . 
	call 00c95h		;3377	cd 95 0c 	. . . 
	ld hl,0e36ah		;337a	21 6a e3 	! j . 
	ld (081b1h),hl		;337d	22 b1 81 	" . . 
	call 0055fh		;3380	cd 5f 05 	. _ . 
	ld a,(0814ah)		;3383	3a 4a 81 	: J . 
	cp 080h		;3386	fe 80 	. . 
	jp z,03294h		;3388	ca 94 32 	. . 2 
	cp 01bh		;338b	fe 1b 	. . 
	jr nz,$-13		;338d	20 f1 	  . 
	ld a,001h		;338f	3e 01 	> . 
	ld (0883fh),a		;3391	32 3f 88 	2 ? . 
	ld de,0b3f8h		;3394	11 f8 b3 	. . . 
	call 00c92h		;3397	cd 92 0c 	. . . 
	call 02b4dh		;339a	cd 4d 2b 	. M + 
	call 0330bh		;339d	cd 0b 33 	. . 3 
	pop hl			;33a0	e1 	. 
	pop de			;33a1	d1 	. 
	pop bc			;33a2	c1 	. 
	pop af			;33a3	f1 	. 
	ld (08261h),a		;33a4	32 61 82 	2 a . 
	ret			;33a7	c9 	. 
	ld a,(de)			;33a8	1a 	. 
	cp (hl)			;33a9	be 	. 
	jr nz,$+12		;33aa	20 0a 	  . 
	inc de			;33ac	13 	. 
	inc hl			;33ad	23 	# 
	djnz $-6		;33ae	10 f8 	. . 
	xor a			;33b0	af 	. 
	ld (08274h),a		;33b1	32 74 82 	2 t . 
	jr $+24		;33b4	18 16 	. . 
	ld a,b			;33b6	78 	x 
	cp 005h		;33b7	fe 05 	. . 
	jr z,$+7		;33b9	28 05 	( . 
	dec de			;33bb	1b 	. 
	dec hl			;33bc	2b 	+ 
	inc b			;33bd	04 	. 
	jr $-8		;33be	18 f6 	. . 
	ld a,(0a01bh)		;33c0	3a 1b a0 	: . . 
	inc a			;33c3	3c 	< 
	ld (0a01bh),a		;33c4	32 1b a0 	2 . . 
	ld a,001h		;33c7	3e 01 	> . 
	ld (08274h),a		;33c9	32 74 82 	2 t . 
	ret			;33cc	c9 	. 
	ld bc,00005h		;33cd	01 05 00 	. . . 
	push bc			;33d0	c5 	. 
	ld de,0e0b0h		;33d1	11 b0 e0 	. . . 
	ld hl,0a000h		;33d4	21 00 a0 	! . . 
	ldir		;33d7	ed b0 	. . 
	pop bc			;33d9	c1 	. 
	push bc			;33da	c5 	. 
	ld de,0e110h		;33db	11 10 e1 	. . . 
	ld hl,0a020h		;33de	21 20 a0 	!   . 
	ldir		;33e1	ed b0 	. . 
	pop bc			;33e3	c1 	. 
	push bc			;33e4	c5 	. 
	ld de,0e150h		;33e5	11 50 e1 	. P . 
	ld hl,0a0feh		;33e8	21 fe a0 	! . . 
	ldir		;33eb	ed b0 	. . 
	pop bc			;33ed	c1 	. 
	push bc			;33ee	c5 	. 
	ld de,0e190h		;33ef	11 90 e1 	. . . 
	ld hl,0a1dch		;33f2	21 dc a1 	! . . 
	ldir		;33f5	ed b0 	. . 
	pop bc			;33f7	c1 	. 
	push bc			;33f8	c5 	. 
	ld de,0e1d0h		;33f9	11 d0 e1 	. . . 
	ld hl,0a2bah		;33fc	21 ba a2 	! . . 
	ldir		;33ff	ed b0 	. . 
	pop bc			;3401	c1 	. 
	ld de,0e210h		;3402	11 10 e2 	. . . 
	ld hl,0a398h		;3405	21 98 a3 	! . . 
	ldir		;3408	ed b0 	. . 
	ret			;340a	c9 	. 
	ld a,(08261h)		;340b	3a 61 82 	: a . 
	push af			;340e	f5 	. 
	push bc			;340f	c5 	. 
	push de			;3410	d5 	. 
	push hl			;3411	e5 	. 
	call 0335dh		;3412	cd 5d 33 	. ] 3 
	ld a,(08275h)		;3415	3a 75 82 	: u . 
	or a			;3418	b7 	. 
	jp nz,03341h		;3419	c2 41 33 	. A 3 
	call 033a6h		;341c	cd a6 33 	. . 3 
	call 03833h		;341f	cd 33 38 	. 3 8 
	or a			;3422	b7 	. 
	jr nz,$+30		;3423	20 1c 	  . 
	push hl			;3425	e5 	. 
	ld a,(0814ah)		;3426	3a 4a 81 	: J . 
	cp 00ah		;3429	fe 0a 	. . 
	jr z,$+26		;342b	28 18 	( . 
	ld de,00013h		;342d	11 13 00 	. . . 
	add hl,de			;3430	19 	. 
	ld bc,00005h		;3431	01 05 00 	. . . 
	ld de,0a007h		;3434	11 07 a0 	. . . 
	ldir		;3437	ed b0 	. . 
	ld hl,0a007h		;3439	21 07 a0 	! . . 
	call 02b60h		;343c	cd 60 2b 	. ` + 
	jr $+6		;343f	18 04 	. . 
	ld hl,0b5abh		;3441	21 ab b5 	! . . 
	push hl			;3444	e5 	. 
	ld de,0e1a6h		;3445	11 a6 e1 	. . . 
	ld a,05bh		;3448	3e 5b 	> [ 
	ld (de),a			;344a	12 	. 
	ld bc,00013h		;344b	01 13 00 	. . . 
	inc de			;344e	13 	. 
	pop hl			;344f	e1 	. 
	ldir		;3450	ed b0 	. . 
	ld a,05dh		;3452	3e 5d 	> ] 
	ld (de),a			;3454	12 	. 
	pop hl			;3455	e1 	. 
	pop de			;3456	d1 	. 
	pop bc			;3457	c1 	. 
	pop af			;3458	f1 	. 
	ld (08261h),a		;3459	32 61 82 	2 a . 
	ret			;345c	c9 	. 
	ld a,(0a005h)		;345d	3a 05 a0 	: . . 
	cp 05ah		;3460	fe 5a 	. Z 
	jr nz,$+7		;3462	20 05 	  . 
	ld hl,0b823h		;3464	21 23 b8 	! # . 
	jr $+48		;3467	18 2e 	. . 
	ld a,(0a01bh)		;3469	3a 1b a0 	: . . 
	cp 001h		;346c	fe 01 	. . 
	jr nz,$+7		;346e	20 05 	  . 
	ld hl,0a026h		;3470	21 26 a0 	! & . 
	jr $+36		;3473	18 22 	. " 
	cp 002h		;3475	fe 02 	. . 
	jr nz,$+7		;3477	20 05 	  . 
	ld hl,0a104h		;3479	21 04 a1 	! . . 
	jr $+27		;347c	18 19 	. . 
	cp 003h		;347e	fe 03 	. . 
	jr nz,$+7		;3480	20 05 	  . 
	ld hl,0a1e2h		;3482	21 e2 a1 	! . . 
	jr $+18		;3485	18 10 	. . 
	cp 004h		;3487	fe 04 	. . 
	jr nz,$+7		;3489	20 05 	  . 
	ld hl,0a2c0h		;348b	21 c0 a2 	! . . 
	jr $+9		;348e	18 07 	. . 
	cp 005h		;3490	fe 05 	. . 
	jr nz,$+14		;3492	20 0c 	  . 
	ld hl,0a39eh		;3494	21 9e a3 	! . . 
	ld (081adh),hl		;3497	22 ad 81 	" . . 
	xor a			;349a	af 	. 
	ld (08275h),a		;349b	32 75 82 	2 u . 
	jr $+7		;349e	18 05 	. . 
	ld a,001h		;34a0	3e 01 	> . 
	ld (08275h),a		;34a2	32 75 82 	2 u . 
	ret			;34a5	c9 	. 
	ld hl,(081adh)		;34a6	2a ad 81 	* . . 
	ld de,00040h		;34a9	11 40 00 	. @ . 
	ld ix,0e0e1h		;34ac	dd 21 e1 e0 	. ! . . 
	ld iy,00101h		;34b0	fd 21 01 01 	. ! . . 
	ld (081b5h),iy		;34b4	fd 22 b5 81 	. " . . 
	ld iy,081b5h		;34b8	fd 21 b5 81 	. ! . . 
	ld a,(0a006h)		;34bc	3a 06 a0 	: . . 
	sub 030h		;34bf	d6 30 	. 0 
	ld b,a			;34c1	47 	G 
	xor a			;34c2	af 	. 
	ld c,a			;34c3	4f 	O 
	djnz $+13		;34c4	10 0b 	. . 
	ld c,a			;34c6	4f 	O 
	or a			;34c7	b7 	. 
	add hl,bc			;34c8	09 	. 
	ld (081b3h),hl		;34c9	22 b3 81 	" . . 
	ld (081b1h),ix		;34cc	dd 22 b1 81 	. " . . 
	ret			;34d0	c9 	. 
	add ix,de		;34d1	dd 19 	. . 
	add a,018h		;34d3	c6 18 	. . 
	inc (iy+001h)		;34d5	fd 34 01 	. 4 . 
	jr $-20		;34d8	18 ea 	. . 
	ld a,(08261h)		;34da	3a 61 82 	: a . 
	push af			;34dd	f5 	. 
	push bc			;34de	c5 	. 
	push de			;34df	d5 	. 
	push hl			;34e0	e5 	. 
	xor a			;34e1	af 	. 
	ld (08261h),a		;34e2	32 61 82 	2 a . 
	call 0335dh		;34e5	cd 5d 33 	. ] 3 
	ld de,000d7h		;34e8	11 d7 00 	. . . 
	add hl,de			;34eb	19 	. 
	ld (081afh),hl		;34ec	22 af 81 	" . . 
	call 033a6h		;34ef	cd a6 33 	. . 3 
	ld a,(0a01bh)		;34f2	3a 1b a0 	: . . 
	or a			;34f5	b7 	. 
	jp z,03520h		;34f6	ca 20 35 	.   5 
	ld a,(0a005h)		;34f9	3a 05 a0 	: . . 
	cp 05ah		;34fc	fe 5a 	. Z 
	jp z,03520h		;34fe	ca 20 35 	.   5 
	ld de,0b6e1h		;3501	11 e1 b6 	. . . 
	call 00c92h		;3504	cd 92 0c 	. . . 
	ld bc,00005h		;3507	01 05 00 	. . . 
	ld hl,(081adh)		;350a	2a ad 81 	* . . 
	dec hl			;350d	2b 	+ 
	dec hl			;350e	2b 	+ 
	dec hl			;350f	2b 	+ 
	dec hl			;3510	2b 	+ 
	dec hl			;3511	2b 	+ 
	dec hl			;3512	2b 	+ 
	ld de,0e027h		;3513	11 27 e0 	. ' . 
	ldir		;3516	ed b0 	. . 
	ld de,0b761h		;3518	11 61 b7 	. a . 
	ld hl,0035fh		;351b	21 5f 03 	! _ . 
	ld (08012h),hl		;351e	22 12 80 	" . . 
	call 00c95h		;3521	cd 95 0c 	. . . 
	ld a,009h		;3524	3e 09 	> . 
	ld de,0e0e4h		;3526	11 e4 e0 	. . . 
	ld hl,(081adh)		;3529	2a ad 81 	* . . 
	call 03811h		;352c	cd 11 38 	. . 8 
	ld de,(081b1h)		;352f	ed 5b b1 81 	. [ . . 
	ld hl,(081b3h)		;3533	2a b3 81 	* . . 
	call 0055fh		;3536	cd 5f 05 	. _ . 
	ld a,(0814ah)		;3539	3a 4a 81 	: J . 
	cp 0ffh		;353c	fe ff 	. . 
	jr z,$-8		;353e	28 f6 	( . 
	cp 080h		;3540	fe 80 	. . 
	jp z,03589h		;3542	ca 89 35 	. . 5 
	cp 01bh		;3545	fe 1b 	. . 
	jr nz,$+10		;3547	20 08 	  . 
	ld a,001h		;3549	3e 01 	> . 
	ld (0883fh),a		;354b	32 3f 88 	2 ? . 
	jp 03589h		;354e	c3 89 35 	. . 5 
	cp 081h		;3551	fe 81 	. . 
	jp z,03520h		;3553	ca 20 35 	.   5 
	cp 00bh		;3556	fe 0b 	. . 
	jr z,$+20		;3558	28 12 	( . 
	cp 00ah		;355a	fe 0a 	. . 
	jr z,$+21		;355c	28 13 	( . 
	cp 00ch		;355e	fe 0c 	. . 
	jr z,$+22		;3560	28 14 	( . 
	cp 008h		;3562	fe 08 	. . 
	jr z,$+23		;3564	28 15 	( . 
	cp 01eh		;3566	fe 1e 	. . 
	jr z,$+24		;3568	28 16 	( . 
	jr $+27		;356a	18 19 	. . 
	call 036ach		;356c	cd ac 36 	. . 6 
	jr $-57		;356f	18 c5 	. . 
	call 036d1h		;3571	cd d1 36 	. . 6 
	jr $-62		;3574	18 c0 	. . 
	call 036f9h		;3576	cd f9 36 	. . 6 
	jr $-67		;3579	18 bb 	. . 
	call 03779h		;357b	cd 79 37 	. y 7 
	jr $-72		;357e	18 b6 	. . 
	call 037feh		;3580	cd fe 37 	. . 7 
	jr $-77		;3583	18 b1 	. . 
	ld hl,(081b5h)		;3585	2a b5 81 	* . . 
	ld a,l			;3588	7d 	} 
	cp 001h		;3589	fe 01 	. . 
	jp z,0359ah		;358b	ca 9a 35 	. . 5 
	ld a,(0814ah)		;358e	3a 4a 81 	: J . 
	cp 020h		;3591	fe 20 	.   
	jp m,03436h		;3593	fa 36 34 	. 6 4 
	cp 07eh		;3596	fe 7e 	. ~ 
	jp p,03436h		;3598	f2 36 34 	. 6 4 
	ld a,l			;359b	7d 	} 
	cp 016h		;359c	fe 16 	. . 
	jr z,$+77		;359e	28 4b 	( K 
	cp 018h		;35a0	fe 18 	. . 
	jr z,$+81		;35a2	28 4f 	( O 
	cp 01ah		;35a4	fe 1a 	. . 
	jr z,$+16		;35a6	28 0e 	( . 
	cp 01bh		;35a8	fe 1b 	. . 
	jr z,$+103		;35aa	28 65 	( e 
	cp 01dh		;35ac	fe 1d 	. . 
	jr z,$+8		;35ae	28 06 	( . 
	cp 01eh		;35b0	fe 1e 	. . 
	jr z,$+25		;35b2	28 17 	( . 
	jr $+15		;35b4	18 0d 	. . 
	ld a,(0814ah)		;35b6	3a 4a 81 	: J . 
	cp 030h		;35b9	fe 30 	. 0 
	jp m,03436h		;35bb	fa 36 34 	. 6 4 
	cp 03ah		;35be	fe 3a 	. : 
	jp p,03436h		;35c0	f2 36 34 	. 6 4 
	ld b,001h		;35c3	06 01 	. . 
	call 03673h		;35c5	cd 73 36 	. s 6 
	jp 03436h		;35c8	c3 36 34 	. 6 4 
	ld a,(0814ah)		;35cb	3a 4a 81 	: J . 
	cp 030h		;35ce	fe 30 	. 0 
	jp m,03436h		;35d0	fa 36 34 	. 6 4 
	cp 03ah		;35d3	fe 3a 	. : 
	jp p,03436h		;35d5	f2 36 34 	. 6 4 
	ld hl,(081b3h)		;35d8	2a b3 81 	* . . 
	ld de,(081b1h)		;35db	ed 5b b1 81 	. [ . . 
	ld (hl),a			;35df	77 	w 
	ld (de),a			;35e0	12 	. 
	ld (081b1h),de		;35e1	ed 53 b1 81 	. S . . 
	call 036f9h		;35e5	cd f9 36 	. . 6 
	jp 03436h		;35e8	c3 36 34 	. 6 4 
	ld b,002h		;35eb	06 02 	. . 
	call 03673h		;35ed	cd 73 36 	. s 6 
	jp 03436h		;35f0	c3 36 34 	. 6 4 
	ld a,(0814ah)		;35f3	3a 4a 81 	: J . 
	cp 04ch		;35f6	fe 4c 	. L 
	jr z,$+17		;35f8	28 0f 	( . 
	cp 050h		;35fa	fe 50 	. P 
	jr z,$+13		;35fc	28 0b 	( . 
	cp 044h		;35fe	fe 44 	. D 
	jr z,$+9		;3600	28 07 	( . 
	cp 053h		;3602	fe 53 	. S 
	jr z,$+5		;3604	28 03 	( . 
	jp 03436h		;3606	c3 36 34 	. 6 4 
	ld b,002h		;3609	06 02 	. . 
	call 03673h		;360b	cd 73 36 	. s 6 
	jp 03436h		;360e	c3 36 34 	. 6 4 
	ld a,(0814ah)		;3611	3a 4a 81 	: J . 
	cp 030h		;3614	fe 30 	. 0 
	jp m,03436h		;3616	fa 36 34 	. 6 4 
	cp 03ah		;3619	fe 3a 	. : 
	jp p,03436h		;361b	f2 36 34 	. 6 4 
	jr $-21		;361e	18 e9 	. . 
	ld de,0b77fh		;3620	11 7f b7 	.  . 
	call 00c92h		;3623	cd 92 0c 	. . . 
	ld a,(0a01bh)		;3626	3a 1b a0 	: . . 
	or a			;3629	b7 	. 
	jr z,$+21		;362a	28 13 	( . 
	ld a,(0a005h)		;362c	3a 05 a0 	: . . 
	cp 05ah		;362f	fe 5a 	. Z 
	jr z,$+14		;3631	28 0c 	( . 
	ld de,0b7ffh		;3633	11 ff b7 	. . . 
	ld hl,0034ch		;3636	21 4c 03 	! L . 
	ld (08012h),hl		;3639	22 12 80 	" . . 
	call 00c95h		;363c	cd 95 0c 	. . . 
	ld a,(0b822h)		;363f	3a 22 b8 	: " . 
	ld de,0e0e4h		;3642	11 e4 e0 	. . . 
	ld hl,0b823h		;3645	21 23 b8 	! # . 
	call 03811h		;3648	cd 11 38 	. . 8 
	ld a,001h		;364b	3e 01 	> . 
	ld (08261h),a		;364d	32 61 82 	2 a . 
	ld de,0e35eh		;3650	11 5e e3 	. ^ . 
	ld (081b1h),de		;3653	ed 53 b1 81 	. S . . 
	call 0055fh		;3657	cd 5f 05 	. _ . 
	ld a,(0814ah)		;365a	3a 4a 81 	: J . 
	cp 080h		;365d	fe 80 	. . 
	jp z,03589h		;365f	ca 89 35 	. . 5 
	cp 01bh		;3662	fe 1b 	. . 
	jr nz,$+10		;3664	20 08 	  . 
	ld a,001h		;3666	3e 01 	> . 
	ld (0883fh),a		;3668	32 3f 88 	2 ? . 
	jp 03589h		;366b	c3 89 35 	. . 5 
	cp 081h		;366e	fe 81 	. . 
	jr nz,$-25		;3670	20 e5 	  . 
	xor a			;3672	af 	. 
	ld (08261h),a		;3673	32 61 82 	2 a . 
	ld a,(0a01bh)		;3676	3a 1b a0 	: . . 
	or a			;3679	b7 	. 
	jr z,$-35		;367a	28 db 	( . 
	ld a,(0a005h)		;367c	3a 05 a0 	: . . 
	cp 05ah		;367f	fe 5a 	. Z 
	jr z,$-42		;3681	28 d4 	( . 
	call 033a6h		;3683	cd a6 33 	. . 3 
	jp 03401h		;3686	c3 01 34 	. . 4 
	ld de,0b3f8h		;3689	11 f8 b3 	. . . 
	call 00c92h		;368c	cd 92 0c 	. . . 
	call 02b4dh		;368f	cd 4d 2b 	. M + 
	pop hl			;3692	e1 	. 
	pop de			;3693	d1 	. 
	pop bc			;3694	c1 	. 
	pop af			;3695	f1 	. 
	ld (08261h),a		;3696	32 61 82 	2 a . 
	ret			;3699	c9 	. 
	ld a,(0814ah)		;369a	3a 4a 81 	: J . 
	cp 055h		;369d	fe 55 	. U 
	jr z,$+22		;369f	28 14 	( . 
	cp 05ah		;36a1	fe 5a 	. Z 
	jr z,$+18		;36a3	28 10 	( . 
	cp 04dh		;36a5	fe 4d 	. M 
	jr z,$+14		;36a7	28 0c 	( . 
	cp 043h		;36a9	fe 43 	. C 
	jr z,$+10		;36ab	28 08 	( . 
	cp 00dh		;36ad	fe 0d 	. . 
	jp z,03615h		;36af	ca 15 36 	. . 6 
	jp 03436h		;36b2	c3 36 34 	. 6 4 
	ld hl,(081b1h)		;36b5	2a b1 81 	* . . 
	ld (hl),a			;36b8	77 	w 
	inc hl			;36b9	23 	# 
	ld (081b1h),hl		;36ba	22 b1 81 	" . . 
	ld hl,081b5h		;36bd	21 b5 81 	! . . 
	inc (hl)			;36c0	34 	4 
	call 0055fh		;36c1	cd 5f 05 	. _ . 
	ld a,(0814ah)		;36c4	3a 4a 81 	: J . 
	cp 00ch		;36c7	fe 0c 	. . 
	jr z,$+35		;36c9	28 21 	( ! 
	cp 008h		;36cb	fe 08 	. . 
	jr z,$+47		;36cd	28 2d 	( - 
	cp 00dh		;36cf	fe 0d 	. . 
	jr z,$+57		;36d1	28 37 	( 7 
	cp 031h		;36d3	fe 31 	. 1 
	jp m,035c1h		;36d5	fa c1 35 	. . 5 
	cp 03ah		;36d8	fe 3a 	. : 
	jp p,035c1h		;36da	f2 c1 35 	. . 5 
	ld hl,(081b1h)		;36dd	2a b1 81 	* . . 
	ld (hl),a			;36e0	77 	w 
	dec hl			;36e1	2b 	+ 
	ld (081b1h),hl		;36e2	22 b1 81 	" . . 
	ld hl,081b5h		;36e5	21 b5 81 	! . . 
	dec (hl)			;36e8	35 	5 
	jp 03436h		;36e9	c3 36 34 	. 6 4 
	ld hl,(081b1h)		;36ec	2a b1 81 	* . . 
	inc hl			;36ef	23 	# 
	inc hl			;36f0	23 	# 
	ld (081b1h),hl		;36f1	22 b1 81 	" . . 
	ld hl,081b5h		;36f4	21 b5 81 	! . . 
	inc (hl)			;36f7	34 	4 
	inc (hl)			;36f8	34 	4 
	jp 03436h		;36f9	c3 36 34 	. 6 4 
	ld hl,(081b1h)		;36fc	2a b1 81 	* . . 
	dec hl			;36ff	2b 	+ 
	ld (081b1h),hl		;3700	22 b1 81 	" . . 
	ld hl,081b5h		;3703	21 b5 81 	! . . 
	dec (hl)			;3706	35 	5 
	jp 03436h		;3707	c3 36 34 	. 6 4 
	ld hl,081b5h		;370a	21 b5 81 	! . . 
	dec (hl)			;370d	35 	5 
	ld hl,(081b1h)		;370e	2a b1 81 	* . . 
	dec hl			;3711	2b 	+ 
	ld (081b1h),hl		;3712	22 b1 81 	" . . 
	ld hl,(081b1h)		;3715	2a b1 81 	* . . 
	ld a,04dh		;3718	3e 4d 	> M 
	cp (hl)			;371a	be 	. 
	jr z,$+53		;371b	28 33 	( 3 
	ld a,055h		;371d	3e 55 	> U 
	cp (hl)			;371f	be 	. 
	jr z,$+12		;3720	28 0a 	( . 
	ld a,043h		;3722	3e 43 	> C 
	cp (hl)			;3724	be 	. 
	jr z,$+64		;3725	28 3e 	( > 
	ld hl,0b823h		;3727	21 23 b8 	! # . 
	jr $+5		;372a	18 03 	. . 
	ld hl,(081adh)		;372c	2a ad 81 	* . . 
	push hl			;372f	e5 	. 
	ld c,000h		;3730	0e 00 	. . 
	ld hl,(081b1h)		;3732	2a b1 81 	* . . 
	inc hl			;3735	23 	# 
	ld a,(hl)			;3736	7e 	~ 
	sub 030h		;3737	d6 30 	. 0 
	ld b,a			;3739	47 	G 
	pop hl			;373a	e1 	. 
	djnz $+15		;373b	10 0d 	. . 
	add hl,bc			;373d	09 	. 
	ld de,(081b3h)		;373e	ed 5b b3 81 	. [ . . 
	ld bc,00018h		;3742	01 18 00 	. . . 
	ldir		;3745	ed b0 	. . 
	jp 03401h		;3747	c3 01 34 	. . 4 
	ld a,c			;374a	79 	y 
	add a,018h		;374b	c6 18 	. . 
	ld c,a			;374d	4f 	O 
	jr $-19		;374e	18 eb 	. . 
	ld hl,0a007h		;3750	21 07 a0 	! . . 
	push hl			;3753	e5 	. 
	ld hl,(081b3h)		;3754	2a b3 81 	* . . 
	ld de,00013h		;3757	11 13 00 	. . . 
	add hl,de			;375a	19 	. 
	ex de,hl			;375b	eb 	. 
	pop hl			;375c	e1 	. 
	ld bc,00005h		;375d	01 05 00 	. . . 
	ldir		;3760	ed b0 	. . 
	jp 03401h		;3762	c3 01 34 	. . 4 
	ld hl,(081b3h)		;3765	2a b3 81 	* . . 
	ld a,0aah		;3768	3e aa 	> . 
	ld b,018h		;376a	06 18 	. . 
	ld (hl),a			;376c	77 	w 
	inc hl			;376d	23 	# 
	djnz $-2		;376e	10 fc 	. . 
	jp 03401h		;3770	c3 01 34 	. . 4 
	push bc			;3773	c5 	. 
	push bc			;3774	c5 	. 
	ld a,(0814ah)		;3775	3a 4a 81 	: J . 
	ld hl,(081b3h)		;3778	2a b3 81 	* . . 
	ld de,(081b1h)		;377b	ed 5b b1 81 	. [ . . 
	ld (hl),a			;377f	77 	w 
	ldi		;3780	ed a0 	. . 
	pop bc			;3782	c1 	. 
	dec de			;3783	1b 	. 
	inc de			;3784	13 	. 
	djnz $-1		;3785	10 fd 	. . 
	ld (081b1h),de		;3787	ed 53 b1 81 	. S . . 
	ld (081b3h),hl		;378b	22 b3 81 	" . . 
	ld hl,081b5h		;378e	21 b5 81 	! . . 
	pop bc			;3791	c1 	. 
	inc (hl)			;3792	34 	4 
	djnz $-1		;3793	10 fd 	. . 
	ret			;3795	c9 	. 
	ld (081b5h),hl		;3796	22 b5 81 	" . . 
	ld hl,(081b1h)		;3799	2a b1 81 	* . . 
	add hl,de			;379c	19 	. 
	ld (081b1h),hl		;379d	22 b1 81 	" . . 
	ld hl,(081b3h)		;37a0	2a b3 81 	* . . 
	ld de,(081b8h)		;37a3	ed 5b b8 81 	. [ . . 
	add hl,de			;37a7	19 	. 
	ld (081b3h),hl		;37a8	22 b3 81 	" . . 
	ret			;37ab	c9 	. 
	ld hl,(081b5h)		;37ac	2a b5 81 	* . . 
	dec h			;37af	25 	% 
	jr z,$+17		;37b0	28 0f 	( . 
	ld de,0ffe8h		;37b2	11 e8 ff 	. . . 
	ld (081b8h),de		;37b5	ed 53 b8 81 	. S . . 
	ld de,0ffc0h		;37b9	11 c0 ff 	. . . 
	call 03696h		;37bc	cd 96 36 	. . 6 
	jr $+17		;37bf	18 0f 	. . 
	ld h,009h		;37c1	26 09 	& . 
	ld de,000c0h		;37c3	11 c0 00 	. . . 
	ld (081b8h),de		;37c6	ed 53 b8 81 	. S . . 
	ld de,00200h		;37ca	11 00 02 	. . . 
	call 03696h		;37cd	cd 96 36 	. . 6 
	ret			;37d0	c9 	. 
	ld hl,(081b5h)		;37d1	2a b5 81 	* . . 
	inc h			;37d4	24 	$ 
	ld a,h			;37d5	7c 	| 
	cp 00ah		;37d6	fe 0a 	. . 
	jr z,$+17		;37d8	28 0f 	( . 
	ld de,00018h		;37da	11 18 00 	. . . 
	ld (081b8h),de		;37dd	ed 53 b8 81 	. S . . 
	ld de,00040h		;37e1	11 40 00 	. @ . 
	call 03696h		;37e4	cd 96 36 	. . 6 
	jr $+17		;37e7	18 0f 	. . 
	ld h,001h		;37e9	26 01 	& . 
	ld de,0ff40h		;37eb	11 40 ff 	. @ . 
	ld (081b8h),de		;37ee	ed 53 b8 81 	. S . . 
	ld de,0fe00h		;37f2	11 00 fe 	. . . 
	call 03696h		;37f5	cd 96 36 	. . 6 
	ret			;37f8	c9 	. 
	ld hl,(081b5h)		;37f9	2a b5 81 	* . . 
	inc l			;37fc	2c 	, 
	push hl			;37fd	e5 	. 
	ld a,l			;37fe	7d 	} 
	cp 002h		;37ff	fe 02 	. . 
	jr z,$+63		;3801	28 3d 	( = 
	cp 017h		;3803	fe 17 	. . 
	jr z,$+46		;3805	28 2c 	( , 
	cp 019h		;3807	fe 19 	. . 
	jr z,$+29		;3809	28 1b 	( . 
	cp 01ch		;380b	fe 1c 	. . 
	jr z,$+25		;380d	28 17 	( . 
	cp 01fh		;380f	fe 1f 	. . 
	jr z,$+61		;3811	28 3b 	( ; 
	ld hl,(081b1h)		;3813	2a b1 81 	* . . 
	inc hl			;3816	23 	# 
	ld (081b1h),hl		;3817	22 b1 81 	" . . 
	ld hl,(081b3h)		;381a	2a b3 81 	* . . 
	inc hl			;381d	23 	# 
	ld (081b3h),hl		;381e	22 b3 81 	" . . 
	pop hl			;3821	e1 	. 
	ld (081b5h),hl		;3822	22 b5 81 	" . . 
	ret			;3825	c9 	. 
	ld hl,(081b1h)		;3826	2a b1 81 	* . . 
	inc hl			;3829	23 	# 
	inc hl			;382a	23 	# 
	ld (081b1h),hl		;382b	22 b1 81 	" . . 
	pop hl			;382e	e1 	. 
	inc hl			;382f	23 	# 
	push hl			;3830	e5 	. 
	jr $-23		;3831	18 e7 	. . 
	ld hl,(081b1h)		;3833	2a b1 81 	* . . 
	inc hl			;3836	23 	# 
	inc hl			;3837	23 	# 
	ld (081b1h),hl		;3838	22 b1 81 	" . . 
	pop hl			;383b	e1 	. 
	inc hl			;383c	23 	# 
	push hl			;383d	e5 	. 
	jr $-36		;383e	18 da 	. . 
	ld hl,(081b1h)		;3840	2a b1 81 	* . . 
	inc hl			;3843	23 	# 
	inc hl			;3844	23 	# 
	inc hl			;3845	23 	# 
	ld (081b1h),hl		;3846	22 b1 81 	" . . 
	pop hl			;3849	e1 	. 
	inc hl			;384a	23 	# 
	inc hl			;384b	23 	# 
	jr $-42		;384c	18 d4 	. . 
	ld a,h			;384e	7c 	| 
	cp 009h		;384f	fe 09 	. . 
	jp z,03767h		;3851	ca 67 37 	. g 7 
	ld de,00001h		;3854	11 01 00 	. . . 
	ld (081b8h),de		;3857	ed 53 b8 81 	. S . . 
	ld de,00023h		;385b	11 23 00 	. # . 
	call 03696h		;385e	cd 96 36 	. . 6 
	pop hl			;3861	e1 	. 
	inc h			;3862	24 	$ 
	ld l,001h		;3863	2e 01 	. . 
	jr $-67		;3865	18 bb 	. . 
	ld hl,0e0e1h		;3867	21 e1 e0 	! . . 
	ld (081b1h),hl		;386a	22 b1 81 	" . . 
	ld hl,(081adh)		;386d	2a ad 81 	* . . 
	ld (081b3h),hl		;3870	22 b3 81 	" . . 
	pop hl			;3873	e1 	. 
	ld hl,00101h		;3874	21 01 01 	! . . 
	jr $-85		;3877	18 a9 	. . 
	ld hl,(081b5h)		;3879	2a b5 81 	* . . 
	dec l			;387c	2d 	- 
	push hl			;387d	e5 	. 
	ld a,l			;387e	7d 	} 
	cp 01ch		;387f	fe 1c 	. . 
	jr z,$+64		;3881	28 3e 	( > 
	cp 019h		;3883	fe 19 	. . 
	jr z,$+60		;3885	28 3a 	( : 
	cp 017h		;3887	fe 17 	. . 
	jr z,$+43		;3889	28 29 	( ) 
	cp 003h		;388b	fe 03 	. . 
	jr z,$+25		;388d	28 17 	( . 
	cp 000h		;388f	fe 00 	. . 
	jr z,$+61		;3891	28 3b 	( ; 
	ld hl,(081b1h)		;3893	2a b1 81 	* . . 
	dec hl			;3896	2b 	+ 
	ld (081b1h),hl		;3897	22 b1 81 	" . . 
	ld hl,(081b3h)		;389a	2a b3 81 	* . . 
	dec hl			;389d	2b 	+ 
	ld (081b3h),hl		;389e	22 b3 81 	" . . 
	pop hl			;38a1	e1 	. 
	ld (081b5h),hl		;38a2	22 b5 81 	" . . 
	ret			;38a5	c9 	. 
	ld hl,(081b1h)		;38a6	2a b1 81 	* . . 
	dec hl			;38a9	2b 	+ 
	dec hl			;38aa	2b 	+ 
	dec hl			;38ab	2b 	+ 
	ld (081b1h),hl		;38ac	22 b1 81 	" . . 
	pop hl			;38af	e1 	. 
	dec hl			;38b0	2b 	+ 
	dec hl			;38b1	2b 	+ 
	jr $-16		;38b2	18 ee 	. . 
	ld hl,(081b1h)		;38b4	2a b1 81 	* . . 
	dec hl			;38b7	2b 	+ 
	dec hl			;38b8	2b 	+ 
	ld (081b1h),hl		;38b9	22 b1 81 	" . . 
	pop hl			;38bc	e1 	. 
	dec hl			;38bd	2b 	+ 
	push hl			;38be	e5 	. 
	jr $-37		;38bf	18 d9 	. . 
	ld hl,(081b1h)		;38c1	2a b1 81 	* . . 
	dec hl			;38c4	2b 	+ 
	dec hl			;38c5	2b 	+ 
	ld (081b1h),hl		;38c6	22 b1 81 	" . . 
	pop hl			;38c9	e1 	. 
	dec hl			;38ca	2b 	+ 
	push hl			;38cb	e5 	. 
	jr $-50		;38cc	18 cc 	. . 
	ld a,h			;38ce	7c 	| 
	cp 001h		;38cf	fe 01 	. . 
	jr z,$+27		;38d1	28 19 	( . 
	ld hl,(081b1h)		;38d3	2a b1 81 	* . . 
	ld de,00023h		;38d6	11 23 00 	. # . 
	or a			;38d9	b7 	. 
	sbc hl,de		;38da	ed 52 	. R 
	ld (081b1h),hl		;38dc	22 b1 81 	" . . 
	ld hl,(081b3h)		;38df	2a b3 81 	* . . 
	dec hl			;38e2	2b 	+ 
	ld (081b3h),hl		;38e3	22 b3 81 	" . . 
	pop hl			;38e6	e1 	. 
	dec h			;38e7	25 	% 
	ld l,01eh		;38e8	2e 1e 	. . 
	jr $-72		;38ea	18 b6 	. . 
	ld hl,0e2feh		;38ec	21 fe e2 	! . . 
	ld (081b1h),hl		;38ef	22 b1 81 	" . . 
	ld hl,(081afh)		;38f2	2a af 81 	* . . 
	ld (081b3h),hl		;38f5	22 b3 81 	" . . 
	pop hl			;38f8	e1 	. 
	ld hl,0091eh		;38f9	21 1e 09 	! . . 
	jr $-90		;38fc	18 a4 	. . 
	ld hl,00101h		;38fe	21 01 01 	! . . 
	ld (081b5h),hl		;3901	22 b5 81 	" . . 
	ld hl,0e0e1h		;3904	21 e1 e0 	! . . 
	ld (081b1h),hl		;3907	22 b1 81 	" . . 
	ld hl,(081adh)		;390a	2a ad 81 	* . . 
	ld (081b3h),hl		;390d	22 b3 81 	" . . 
	ret			;3910	c9 	. 
	push de			;3911	d5 	. 
	push hl			;3912	e5 	. 
	ld bc,00013h		;3913	01 13 00 	. . . 
	ldir		;3916	ed b0 	. . 
	inc de			;3918	13 	. 
	ldi		;3919	ed a0 	. . 
	inc de			;391b	13 	. 
	ldi		;391c	ed a0 	. . 
	ldi		;391e	ed a0 	. . 
	inc de			;3920	13 	. 
	ldi		;3921	ed a0 	. . 
	ldi		;3923	ed a0 	. . 
	push hl			;3925	e5 	. 
	ex de,hl			;3926	eb 	. 
	ld de,00025h		;3927	11 25 00 	. % . 
	add hl,de			;392a	19 	. 
	ex de,hl			;392b	eb 	. 
	pop hl			;392c	e1 	. 
	dec a			;392d	3d 	= 
	jr nz,$-27		;392e	20 e3 	  . 
	pop hl			;3930	e1 	. 
	pop de			;3931	d1 	. 
	ret			;3932	c9 	. 
	push hl			;3933	e5 	. 
	ld b,013h		;3934	06 13 	. . 
	ld a,0aah		;3936	3e aa 	> . 
	cp (hl)			;3938	be 	. 
	jr nz,$+9		;3939	20 07 	  . 
	inc hl			;393b	23 	# 
	djnz $-6		;393c	10 f8 	. . 
	ld a,001h		;393e	3e 01 	> . 
	jr $+3		;3940	18 01 	. . 
	xor a			;3942	af 	. 
	pop hl			;3943	e1 	. 
	ret			;3944	c9 	. 
	call 038a5h		;3945	cd a5 38 	. . 8 
	ld ix,0e760h		;3948	dd 21 60 e7 	. ! ` . 
	ld (ix+000h),03fh		;394c	dd 36 00 3f 	. 6 . ? 
	inc ix		;3950	dd 23 	. # 
	ld (ix+000h),0aeh		;3952	dd 36 00 ae 	. 6 . . 
	ld c,096h		;3956	0e 96 	. . 
	call 003a4h		;3958	cd a4 03 	. . . 
	call 0051dh		;395b	cd 1d 05 	. . . 
	in a,(04dh)		;395e	db 4d 	. M 
	rrca			;3960	0f 	. 
	rrca			;3961	0f 	. 
	jp c,038a1h		;3962	da a1 38 	. . 8 
	ld b,001h		;3965	06 01 	. . 
	call 00545h		;3967	cd 45 05 	. E . 
	dec c			;396a	0d 	. 
	jp z,038a1h		;396b	ca a1 38 	. . 8 
	ld a,(0814ah)		;396e	3a 4a 81 	: J . 
	cp 0ffh		;3971	fe ff 	. . 
	jr z,$-27		;3973	28 e3 	( . 
	cp 041h		;3975	fe 41 	. A 
	call z,03934h		;3977	cc 34 39 	. 4 9 
	cp 042h		;397a	fe 42 	. B 
	call z,03962h		;397c	cc 62 39 	. b 9 
	cp 043h		;397f	fe 43 	. C 
	call z,03a1eh		;3981	cc 1e 3a 	. . : 
	cp 044h		;3984	fe 44 	. D 
	call z,03a79h		;3986	cc 79 3a 	. y : 
	cp 045h		;3989	fe 45 	. E 
	call z,03ac5h		;398b	cc c5 3a 	. . : 
	cp 04dh		;398e	fe 4d 	. M 
	call z,03b77h		;3990	cc 77 3b 	. w ; 
	cp 052h		;3993	fe 52 	. R 
	call z,03ddah		;3995	cc da 3d 	. . = 
	cp 053h		;3998	fe 53 	. S 
	call z,03f46h		;399a	cc 46 3f 	. F ? 
	cp 03fh		;399d	fe 3f 	. ? 
	jr z,$-90		;399f	28 a4 	( . 
	call 038b4h		;39a1	cd b4 38 	. . 8 
	ret			;39a4	c9 	. 
	ld b,040h		;39a5	06 40 	. @ 
	ld ix,0e760h		;39a7	dd 21 60 e7 	. ! ` . 
	ld (ix+000h),000h		;39ab	dd 36 00 00 	. 6 . . 
	inc ix		;39af	dd 23 	. # 
	djnz $-6		;39b1	10 f8 	. . 
	ret			;39b3	c9 	. 
	call 009e2h		;39b4	cd e2 09 	. . . 
	ld hl,00360h		;39b7	21 60 03 	! ` . 
	ld (08012h),hl		;39ba	22 12 80 	" . . 
	ld de,0a7d0h		;39bd	11 d0 a7 	. . . 
	call 00c95h		;39c0	cd 95 0c 	. . . 
	ret			;39c3	c9 	. 
	ld hl,0bb05h		;39c4	21 05 bb 	! . . 
	ld bc,00007h		;39c7	01 07 00 	. . . 
	push bc			;39ca	c5 	. 
	ld de,0e760h		;39cb	11 60 e7 	. ` . 
	ldir		;39ce	ed b0 	. . 
	pop bc			;39d0	c1 	. 
	ld de,0e780h		;39d1	11 80 e7 	. . . 
	ldir		;39d4	ed b0 	. . 
	ret			;39d6	c9 	. 
	ld hl,0c056h		;39d7	21 56 c0 	! V . 
	call 038c7h		;39da	cd c7 38 	. . 8 
	ret			;39dd	c9 	. 
	push hl			;39de	e5 	. 
	ex de,hl			;39df	eb 	. 
	ld de,0001fh		;39e0	11 1f 00 	. . . 
	add hl,de			;39e3	19 	. 
	ex de,hl			;39e4	eb 	. 
	pop hl			;39e5	e1 	. 
	ret			;39e6	c9 	. 
	ld d,006h		;39e7	16 06 	. . 
	ld bc,00009h		;39e9	01 09 00 	. . . 
	cpi		;39ec	ed a1 	. . 
	jr nz,$+34		;39ee	20 20 	    
	jp po,03911h		;39f0	e2 11 39 	. . 9 
	ld (ix+000h),058h		;39f3	dd 36 00 58 	. 6 . X 
	inc ix		;39f7	dd 23 	. # 
	dec d			;39f9	15 	. 
	jr nz,$+6		;39fa	20 04 	  . 
	ld ix,0e780h		;39fc	dd 21 80 e7 	. ! . . 
	ld (ix+000h),0aeh		;3a00	dd 36 00 ae 	. 6 . . 
	call 0051dh		;3a04	cd 1d 05 	. . . 
	ld a,(0814ah)		;3a07	3a 4a 81 	: J . 
	cp 0ffh		;3a0a	fe ff 	. . 
	jr z,$-8		;3a0c	28 f6 	( . 
	jr $-34		;3a0e	18 dc 	. . 
	pop hl			;3a10	e1 	. 
	call 0051dh		;3a11	cd 1d 05 	. . . 
	ld a,(0814ah)		;3a14	3a 4a 81 	: J . 
	ret			;3a17	c9 	. 
	ld a,030h		;3a18	3e 30 	> 0 
	rld		;3a1a	ed 6f 	. o 
	cp 03ah		;3a1c	fe 3a 	. : 
	jp c,03923h		;3a1e	da 23 39 	. # 9 
	add a,007h		;3a21	c6 07 	. . 
	ld (de),a			;3a23	12 	. 
	ld a,030h		;3a24	3e 30 	> 0 
	inc de			;3a26	13 	. 
	rld		;3a27	ed 6f 	. o 
	cp 03ah		;3a29	fe 3a 	. : 
	jp c,03930h		;3a2b	da 30 39 	. 0 9 
	add a,007h		;3a2e	c6 07 	. . 
	ld (de),a			;3a30	12 	. 
	rld		;3a31	ed 6f 	. o 
	ret			;3a33	c9 	. 
	ld hl,0b9f4h		;3a34	21 f4 b9 	! . . 
	call 038e7h		;3a37	cd e7 38 	. . 8 
	ld de,0ba49h		;3a3a	11 49 ba 	. I . 
	call 00c92h		;3a3d	cd 92 0c 	. . . 
	call 003a4h		;3a40	cd a4 03 	. . . 
	call 0526bh		;3a43	cd 6b 52 	. k R 
	ld b,006h		;3a46	06 06 	. . 
	ld de,0e0f7h		;3a48	11 f7 e0 	. . . 
	ld hl,08182h		;3a4b	21 82 81 	! . . 
	call 03918h		;3a4e	cd 18 39 	. . 9 
	call 038deh		;3a51	cd de 38 	. . 8 
	inc hl			;3a54	23 	# 
	djnz $-7		;3a55	10 f7 	. . 
	ld a,(08119h)		;3a57	3a 19 81 	: . . 
	ld (de),a			;3a5a	12 	. 
	ld b,008h		;3a5b	06 08 	. . 
	call 00545h		;3a5d	cd 45 05 	. E . 
	jr $-32		;3a60	18 de 	. . 
	ld hl,0b9fdh		;3a62	21 fd b9 	! . . 
	call 038e7h		;3a65	cd e7 38 	. . 8 
	ld hl,(0a01ch)		;3a68	2a 1c a0 	* . . 
	push hl			;3a6b	e5 	. 
	ld hl,(0a477h)		;3a6c	2a 77 a4 	* w . 
	push hl			;3a6f	e5 	. 
	ld hl,(0a7e0h)		;3a70	2a e0 a7 	* . . 
	push hl			;3a73	e5 	. 
	ld b,006h		;3a74	06 06 	. . 
	ld hl,0a7e2h		;3a76	21 e2 a7 	! . . 
	ld a,(hl)			;3a79	7e 	~ 
	push af			;3a7a	f5 	. 
	inc hl			;3a7b	23 	# 
	djnz $-3		;3a7c	10 fb 	. . 
	ld bc,00006h		;3a7e	01 06 00 	. . . 
	ld de,081a5h		;3a81	11 a5 81 	. . . 
	ld hl,0a00eh		;3a84	21 0e a0 	! . . 
	ldir		;3a87	ed b0 	. . 
	ld bc,00007h		;3a89	01 07 00 	. . . 
	push bc			;3a8c	c5 	. 
	ld de,0e700h		;3a8d	11 00 e7 	. . . 
	ld hl,0a7d0h		;3a90	21 d0 a7 	! . . 
	ldir		;3a93	ed b0 	. . 
	pop bc			;3a95	c1 	. 
	ld de,0e720h		;3a96	11 20 e7 	.   . 
	inc hl			;3a99	23 	# 
	ldir		;3a9a	ed b0 	. . 
	call 038a5h		;3a9c	cd a5 38 	. . 8 
	ld ix,0e780h		;3a9f	dd 21 80 e7 	. ! . . 
	ld bc,0a000h		;3aa3	01 00 a0 	. . . 
	ld hl,00800h		;3aa6	21 00 08 	! . . 
	ld a,058h		;3aa9	3e 58 	> X 
	ld (bc),a			;3aab	02 	. 
	ld a,(bc)			;3aac	0a 	. 
	cp 058h		;3aad	fe 58 	. X 
	jp nz,039fah		;3aaf	c2 fa 39 	. . 9 
	call 003a4h		;3ab2	cd a4 03 	. . . 
	inc bc			;3ab5	03 	. 
	ld a,c			;3ab6	79 	y 
	or a			;3ab7	b7 	. 
	call z,039ech		;3ab8	cc ec 39 	. . 9 
	dec hl			;3abb	2b 	+ 
	ld a,h			;3abc	7c 	| 
	or l			;3abd	b5 	. 
	jr nz,$-21		;3abe	20 e9 	  . 
	ld a,00dh		;3ac0	3e 0d 	> . 
	ld (0a476h),a		;3ac2	32 76 a4 	2 v . 
	call 03b59h		;3ac5	cd 59 3b 	. Y ; 
	ld bc,00006h		;3ac8	01 06 00 	. . . 
	ld de,0a00eh		;3acb	11 0e a0 	. . . 
	ld hl,081a5h		;3ace	21 a5 81 	! . . 
	ldir		;3ad1	ed b0 	. . 
	ld b,006h		;3ad3	06 06 	. . 
	ld hl,0a7e7h		;3ad5	21 e7 a7 	! . . 
	pop af			;3ad8	f1 	. 
	ld (hl),a			;3ad9	77 	w 
	dec hl			;3ada	2b 	+ 
	djnz $-3		;3adb	10 fb 	. . 
	pop hl			;3add	e1 	. 
	ld (0a7e0h),hl		;3ade	22 e0 a7 	" . . 
	pop hl			;3ae1	e1 	. 
	ld (0a477h),hl		;3ae2	22 77 a4 	" w . 
	pop hl			;3ae5	e1 	. 
	ld (0a01ch),hl		;3ae6	22 1c a0 	" . . 
	ld a,03fh		;3ae9	3e 3f 	> ? 
	ret			;3aeb	c9 	. 
	push bc			;3aec	c5 	. 
	ld (ix+000h),058h		;3aed	dd 36 00 58 	. 6 . X 
	inc ix		;3af1	dd 23 	. # 
	ld b,00ah		;3af3	06 0a 	. . 
	call 00545h		;3af5	cd 45 05 	. E . 
	pop bc			;3af8	c1 	. 
	ret			;3af9	c9 	. 
	ld hl,0bae2h		;3afa	21 e2 ba 	! . . 
	call 038c7h		;3afd	cd c7 38 	. . 8 
	ld de,0e783h		;3b00	11 83 e7 	. . . 
	ld hl,081bfh		;3b03	21 bf 81 	! . . 
	call 03918h		;3b06	cd 18 39 	. . 9 
	inc de			;3b09	13 	. 
	dec hl			;3b0a	2b 	+ 
	call 03918h		;3b0b	cd 18 39 	. . 9 
	ld b,00ah		;3b0e	06 0a 	. . 
	call 00545h		;3b10	cd 45 05 	. E . 
	call 003a4h		;3b13	cd a4 03 	. . . 
	ld b,00ah		;3b16	06 0a 	. . 
	call 00545h		;3b18	cd 45 05 	. E . 
	jp 0399ch		;3b1b	c3 9c 39 	. . 9 
	ld hl,0ba06h		;3b1e	21 06 ba 	! . . 
	call 038e7h		;3b21	cd e7 38 	. . 8 
	call 038a5h		;3b24	cd a5 38 	. . 8 
	ld ix,0e760h		;3b27	dd 21 60 e7 	. ! ` . 
	ld (ix+000h),03fh		;3b2b	dd 36 00 3f 	. 6 . ? 
	call 003a4h		;3b2f	cd a4 03 	. . . 
	in a,(04dh)		;3b32	db 4d 	. M 
	rrca			;3b34	0f 	. 
	rrca			;3b35	0f 	. 
	jr nc,$-7		;3b36	30 f7 	0 . 
	ld a,0c1h		;3b38	3e c1 	> . 
	out (081h),a		;3b3a	d3 81 	. . 
	ld b,001h		;3b3c	06 01 	. . 
	call 00545h		;3b3e	cd 45 05 	. E . 
	ld a,040h		;3b41	3e 40 	> @ 
	out (081h),a		;3b43	d3 81 	. . 
	in a,(080h)		;3b45	db 80 	. . 
	ld (08149h),a		;3b47	32 49 81 	2 I . 
	and 038h		;3b4a	e6 38 	. 8 
	srl a		;3b4c	cb 3f 	. ? 
	srl a		;3b4e	cb 3f 	. ? 
	srl a		;3b50	cb 3f 	. ? 
	ld h,080h		;3b52	26 80 	& . 
	jr z,$+6		;3b54	28 04 	( . 
	inc h			;3b56	24 	$ 
	dec a			;3b57	3d 	= 
	jr $-4		;3b58	18 fa 	. . 
	ld a,h			;3b5a	7c 	| 
	out (081h),a		;3b5b	d3 81 	. . 
	ld h,001h		;3b5d	26 01 	& . 
	ld a,(08149h)		;3b5f	3a 49 81 	: I . 
	and 007h		;3b62	e6 07 	. . 
	jr z,$+7		;3b64	28 05 	( . 
	sla h		;3b66	cb 24 	. $ 
	dec a			;3b68	3d 	= 
	jr $-5		;3b69	18 f9 	. . 
	ld a,h			;3b6b	7c 	| 
	out (080h),a		;3b6c	d3 80 	. . 
	ld de,0e761h		;3b6e	11 61 e7 	. a . 
	ld hl,08149h		;3b71	21 49 81 	! I . 
	call 03918h		;3b74	cd 18 39 	. . 9 
	jr $-72		;3b77	18 b6 	. . 
	ld hl,0ba0fh		;3b79	21 0f ba 	! . . 
	call 038e7h		;3b7c	cd e7 38 	. . 8 
	ld hl,0baf0h		;3b7f	21 f0 ba 	! . . 
	call 03aafh		;3b82	cd af 3a 	. . : 
	cp 000h		;3b85	fe 00 	. . 
	ret nz			;3b87	c0 	. 
	in a,(09fh)		;3b88	db 9f 	. . 
	ld (081beh),a		;3b8a	32 be 81 	2 . . 
	call 03aafh		;3b8d	cd af 3a 	. . : 
	cp 000h		;3b90	fe 00 	. . 
	ret nz			;3b92	c0 	. 
	in a,(0f0h)		;3b93	db f0 	. . 
	ld (081bfh),a		;3b95	32 bf 81 	2 . . 
	call 03aafh		;3b98	cd af 3a 	. . : 
	cp 000h		;3b9b	fe 00 	. . 
	ret nz			;3b9d	c0 	. 
	ld hl,(081beh)		;3b9e	2a be 81 	* . . 
	ld (0a01ch),hl		;3ba1	22 1c a0 	" . . 
	ld (0a477h),hl		;3ba4	22 77 a4 	" w . 
	ld (0a7e0h),hl		;3ba7	22 e0 a7 	" . . 
	call 038c4h		;3baa	cd c4 38 	. . 8 
	jr $+0		;3bad	18 fe 	. . 
	call 038a5h		;3baf	cd a5 38 	. . 8 
	ld bc,00004h		;3bb2	01 04 00 	. . . 
	ld de,0e760h		;3bb5	11 60 e7 	. ` . 
	ldir		;3bb8	ed b0 	. . 
	ld c,(hl)			;3bba	4e 	N 
	inc hl			;3bbb	23 	# 
	ld ix,0e780h		;3bbc	dd 21 80 e7 	. ! . . 
	call 03900h		;3bc0	cd 00 39 	. . 9 
	xor a			;3bc3	af 	. 
	ret			;3bc4	c9 	. 
	ld hl,0ba18h		;3bc5	21 18 ba 	! . . 
	call 038e7h		;3bc8	cd e7 38 	. . 8 
	ld a,00dh		;3bcb	3e 0d 	> . 
	ld (087ffh),a		;3bcd	32 ff 87 	2 . . 
	call 00c85h		;3bd0	cd 85 0c 	. . . 
	ld de,0bb13h		;3bd3	11 13 bb 	. . . 
	call 00c92h		;3bd6	cd 92 0c 	. . . 
	ld de,0e0dbh		;3bd9	11 db e0 	. . . 
	ld hl,0a7f0h		;3bdc	21 f0 a7 	! . . 
	ld b,007h		;3bdf	06 07 	. . 
	call 03b1fh		;3be1	cd 1f 3b 	. . ; 
	ld b,006h		;3be4	06 06 	. . 
	inc de			;3be6	13 	. 
	call 038deh		;3be7	cd de 38 	. . 8 
	call 03b1fh		;3bea	cd 1f 3b 	. . ; 
	call 038a5h		;3bed	cd a5 38 	. . 8 
	ld bc,00007h		;3bf0	01 07 00 	. . . 
	ld de,0e760h		;3bf3	11 60 e7 	. ` . 
	ld hl,0c05dh		;3bf6	21 5d c0 	! ] . 
	ldir		;3bf9	ed b0 	. . 
	call 003a4h		;3bfb	cd a4 03 	. . . 
	call 0051dh		;3bfe	cd 1d 05 	. . . 
	ld a,(0814ah)		;3c01	3a 4a 81 	: J . 
	cp 04ah		;3c04	fe 4a 	. J 
	jr z,$+13		;3c06	28 0b 	( . 
	cp 01bh		;3c08	fe 1b 	. . 
	jr nz,$-15		;3c0a	20 ef 	  . 
	call 00c78h		;3c0c	cd 78 0c 	. x . 
	call 038b4h		;3c0f	cd b4 38 	. . 8 
	ret			;3c12	c9 	. 
	ld b,00fh		;3c13	06 0f 	. . 
	ld hl,0a7f0h		;3c15	21 f0 a7 	! . . 
	ld (hl),000h		;3c18	36 00 	6 . 
	inc hl			;3c1a	23 	# 
	djnz $-3		;3c1b	10 fb 	. . 
	jr $-74		;3c1d	18 b4 	. . 
	call 03918h		;3c1f	cd 18 39 	. . 9 
	inc hl			;3c22	23 	# 
	call 038deh		;3c23	cd de 38 	. . 8 
	djnz $-7		;3c26	10 f7 	. . 
	ret			;3c28	c9 	. 
	ld hl,0ba21h		;3c29	21 21 ba 	! ! . 
	ld bc,00004h		;3c2c	01 04 00 	. . . 
	ld d,c			;3c2f	51 	Q 
	call 038ech		;3c30	cd ec 38 	. . 8 
	call 04121h		;3c33	cd 21 41 	. ! A 
	ld hl,007eah		;3c36	21 ea 07 	! . . 
	call 04155h		;3c39	cd 55 41 	. U A 
	call 0254bh		;3c3c	cd 4b 25 	. K % 
	call 03b59h		;3c3f	cd 59 3b 	. Y ; 
	call 003a4h		;3c42	cd a4 03 	. . . 
	call 0051dh		;3c45	cd 1d 05 	. . . 
	ld a,(0814ah)		;3c48	3a 4a 81 	: J . 
	cp 01bh		;3c4b	fe 1b 	. . 
	jr nz,$-11		;3c4d	20 f3 	  . 
	call 00c78h		;3c4f	cd 78 0c 	. x . 
	call 038b4h		;3c52	cd b4 38 	. . 8 
	call 0413bh		;3c55	cd 3b 41 	. ; A 
	ret			;3c58	c9 	. 
	ld bc,00007h		;3c59	01 07 00 	. . . 
	push bc			;3c5c	c5 	. 
	ld de,0a7d0h		;3c5d	11 d0 a7 	. . . 
	ld hl,0e700h		;3c60	21 00 e7 	! . . 
	ldir		;3c63	ed b0 	. . 
	ex de,hl			;3c65	eb 	. 
	ld (hl),00ah		;3c66	36 0a 	6 . 
	ex de,hl			;3c68	eb 	. 
	pop bc			;3c69	c1 	. 
	inc de			;3c6a	13 	. 
	ld hl,0e720h		;3c6b	21 20 e7 	!   . 
	ldir		;3c6e	ed b0 	. . 
	ex de,hl			;3c70	eb 	. 
	ld (hl),00dh		;3c71	36 0d 	6 . 
	call 038d7h		;3c73	cd d7 38 	. . 8 
	ret			;3c76	c9 	. 
	call 0051dh		;3c77	cd 1d 05 	. . . 
	ld a,(0814ah)		;3c7a	3a 4a 81 	: J . 
	cp 0ffh		;3c7d	fe ff 	. . 
	jr z,$-8		;3c7f	28 f6 	( . 
	cp 053h		;3c81	fe 53 	. S 
	jp nz,03b77h		;3c83	c2 77 3b 	. w ; 
	ld hl,0ba34h		;3c86	21 34 ba 	! 4 . 
	ld bc,00008h		;3c89	01 08 00 	. . . 
	ld d,006h		;3c8c	16 06 	. . 
	call 038ech		;3c8e	cd ec 38 	. . 8 
	ld a,001h		;3c91	3e 01 	> . 
	or a			;3c93	b7 	. 
	call nz,078a3h		;3c94	c4 a3 78 	. . x 
	ld a,03fh		;3c97	3e 3f 	> ? 
	ret			;3c99	c9 	. 
	push hl			;3c9a	e5 	. 
	push bc			;3c9b	c5 	. 
	push de			;3c9c	d5 	. 
	ld a,00dh		;3c9d	3e 0d 	> . 
	ld (087ffh),a		;3c9f	32 ff 87 	2 . . 
	call 00c85h		;3ca2	cd 85 0c 	. . . 
	ld a,(0822eh)		;3ca5	3a 2e 82 	: . . 
	or a			;3ca8	b7 	. 
	jp z,03d66h		;3ca9	ca 66 3d 	. f = 
	ld a,(0e581h)		;3cac	3a 81 e5 	: . . 
	cp 030h		;3caf	fe 30 	. 0 
	jp m,03d5dh		;3cb1	fa 5d 3d 	. ] = 
	cp 03ah		;3cb4	fe 3a 	. : 
	jp p,03d5dh		;3cb6	f2 5d 3d 	. ] = 
	ld de,0c064h		;3cb9	11 64 c0 	. d . 
	call 00c92h		;3cbc	cd 92 0c 	. . . 
	ld hl,0835dh		;3cbf	21 5d 83 	! ] . 
	ld (hl),000h		;3cc2	36 00 	6 . 
	ld hl,0a496h		;3cc4	21 96 a4 	! . . 
	ld de,0e131h		;3cc7	11 31 e1 	. 1 . 
	ld b,002h		;3cca	06 02 	. . 
	push bc			;3ccc	c5 	. 
	ld bc,00006h		;3ccd	01 06 00 	. . . 
	ldir		;3cd0	ed b0 	. . 
	push hl			;3cd2	e5 	. 
	ld hl,0835dh		;3cd3	21 5d 83 	! ] . 
	inc (hl)			;3cd6	34 	4 
	pop hl			;3cd7	e1 	. 
	ex de,hl			;3cd8	eb 	. 
	ld bc,0001ah		;3cd9	01 1a 00 	. . . 
	add hl,bc			;3cdc	09 	. 
	ex de,hl			;3cdd	eb 	. 
	ld bc,00006h		;3cde	01 06 00 	. . . 
	ldir		;3ce1	ed b0 	. . 
	push hl			;3ce3	e5 	. 
	ld hl,0835dh		;3ce4	21 5d 83 	! ] . 
	inc (hl)			;3ce7	34 	4 
	pop hl			;3ce8	e1 	. 
	ex de,hl			;3ce9	eb 	. 
	ld bc,0003ah		;3cea	01 3a 00 	. : . 
	add hl,bc			;3ced	09 	. 
	ex de,hl			;3cee	eb 	. 
	pop bc			;3cef	c1 	. 
	djnz $-36		;3cf0	10 da 	. . 
	ld hl,0e280h		;3cf2	21 80 e2 	! . . 
	ld (08376h),hl		;3cf5	22 76 83 	" v . 
	ld hl,03d97h		;3cf8	21 97 3d 	! . = 
	ld bc,0000bh		;3cfb	01 0b 00 	. . . 
	ld de,08365h		;3cfe	11 65 83 	. e . 
	ldir		;3d01	ed b0 	. . 
	ld a,(08365h)		;3d03	3a 65 83 	: e . 
	cp 080h		;3d06	fe 80 	. . 
	jp z,03c4ch		;3d08	ca 4c 3c 	. L < 
	push hl			;3d0b	e5 	. 
	ld hl,(0836ah)		;3d0c	2a 6a 83 	* j . 
	ld a,(hl)			;3d0f	7e 	~ 
	cp 020h		;3d10	fe 20 	.   
	jp z,03c3ah		;3d12	ca 3a 3c 	. : < 
	ld de,(08376h)		;3d15	ed 5b 76 83 	. [ v . 
	ld hl,00020h		;3d19	21 20 00 	!   . 
	add hl,de			;3d1c	19 	. 
	ld (08376h),hl		;3d1d	22 76 83 	" v . 
	ld hl,(08366h)		;3d20	2a 66 83 	* f . 
	ld bc,(08368h)		;3d23	ed 4b 68 83 	. K h . 
	ldir		;3d27	ed b0 	. . 
	ld hl,(0836eh)		;3d29	2a 6e 83 	* n . 
	ld bc,(0836ch)		;3d2c	ed 4b 6c 83 	. K l . 
	ldir		;3d30	ed b0 	. . 
	ld hl,0835dh		;3d32	21 5d 83 	! ] . 
	inc (hl)			;3d35	34 	4 
	pop hl			;3d36	e1 	. 
	jp 03bfbh		;3d37	c3 fb 3b 	. . ; 
	ld hl,(0836eh)		;3d3a	2a 6e 83 	* n . 
	ld bc,(0836ch)		;3d3d	ed 4b 6c 83 	. K l . 
	ld b,c			;3d41	41 	A 
	ld a,030h		;3d42	3e 30 	> 0 
	ld (hl),a			;3d44	77 	w 
	inc hl			;3d45	23 	# 
	djnz $-2		;3d46	10 fc 	. . 
	pop hl			;3d48	e1 	. 
	jp 03bfbh		;3d49	c3 fb 3b 	. . ; 
	ld a,(0835dh)		;3d4c	3a 5d 83 	: ] . 
	ld (08364h),a		;3d4f	32 64 83 	2 d . 
	ld hl,0c155h		;3d52	21 55 c1 	! U . 
	ld de,0e360h		;3d55	11 60 e3 	. ` . 
	ld bc,0005ch		;3d58	01 5c 00 	. \ . 
	ldir		;3d5b	ed b0 	. . 
	ld a,(08364h)		;3d5d	3a 64 83 	: d . 
	ld (0835dh),a		;3d60	32 5d 83 	2 ] . 
	ld hl,0e131h		;3d63	21 31 e1 	! 1 . 
	ld (08376h),hl		;3d66	22 76 83 	" v . 
	ld de,0a496h		;3d69	11 96 a4 	. . . 
	ld c,000h		;3d6c	0e 00 	. . 
	ld b,006h		;3d6e	06 06 	. . 
	ld a,006h		;3d70	3e 06 	> . 
	ld (0836ch),a		;3d72	32 6c 83 	2 l . 
	jp 03cd6h		;3d75	c3 d6 3c 	. . < 
	ld hl,(08376h)		;3d78	2a 76 83 	* v . 
	push bc			;3d7b	c5 	. 
	ex de,hl			;3d7c	eb 	. 
	ld c,b			;3d7d	48 	H 
	ld b,000h		;3d7e	06 00 	. . 
	add hl,bc			;3d80	09 	. 
	ex de,hl			;3d81	eb 	. 
	ld bc,00020h		;3d82	01 20 00 	.   . 
	add hl,bc			;3d85	09 	. 
	bit 0,a		;3d86	cb 47 	. G 
	jr nz,$+3		;3d88	20 01 	  . 
	add hl,bc			;3d8a	09 	. 
	ld (08376h),hl		;3d8b	22 76 83 	" v . 
	pop bc			;3d8e	c1 	. 
	jr $-33		;3d8f	18 dd 	. . 
	ld hl,0e284h		;3d91	21 84 e2 	! . . 
	ld (08376h),hl		;3d94	22 76 83 	" v . 
	ld a,(hl)			;3d97	7e 	~ 
	cp 058h		;3d98	fe 58 	. X 
	jp z,03d79h		;3d9a	ca 79 3d 	. y = 
	cp 059h		;3d9d	fe 59 	. Y 
	jp z,03d7fh		;3d9f	ca 7f 3d 	.  = 
	cp 05ah		;3da2	fe 5a 	. Z 
	jp z,03d85h		;3da4	ca 85 3d 	. . = 
	cp 07ah		;3da7	fe 7a 	. z 
	jp z,03d8bh		;3da9	ca 8b 3d 	. . = 
	cp 052h		;3dac	fe 52 	. R 
	jp z,03d91h		;3dae	ca 91 3d 	. . = 
	cp 054h		;3db1	fe 54 	. T 
	jp nz,03cd9h		;3db3	c2 d9 3c 	. . < 
	ld hl,03dceh		;3db6	21 ce 3d 	! . = 
	push bc			;3db9	c5 	. 
	ld bc,0000bh		;3dba	01 0b 00 	. . . 
	ld de,08365h		;3dbd	11 65 83 	. e . 
	ldir		;3dc0	ed b0 	. . 
	pop bc			;3dc2	c1 	. 
	ld de,(08376h)		;3dc3	ed 5b 76 83 	. [ v . 
	ld hl,0000ch		;3dc7	21 0c 00 	! . . 
	add hl,de			;3dca	19 	. 
	ld de,(0836ch)		;3dcb	ed 5b 6c 83 	. [ l . 
	sbc hl,de		;3dcf	ed 52 	. R 
	ld b,e			;3dd1	43 	C 
	ld de,(0836eh)		;3dd2	ed 5b 6e 83 	. [ n . 
	ld (081b1h),hl		;3dd6	22 b1 81 	" . . 
	call 0055fh		;3dd9	cd 5f 05 	. _ . 
	ld a,(0814ah)		;3ddc	3a 4a 81 	: J . 
	cp 0ffh		;3ddf	fe ff 	. . 
	jr z,$-8		;3de1	28 f6 	( . 
	cp 01bh		;3de3	fe 1b 	. . 
	jp z,03d50h		;3de5	ca 50 3d 	. P = 
	cp 00dh		;3de8	fe 0d 	. . 
	jp z,03d2dh		;3dea	ca 2d 3d 	. - = 
	cp 00ah		;3ded	fe 0a 	. . 
	jp z,03d2dh		;3def	ca 2d 3d 	. - = 
	cp 00ch		;3df2	fe 0c 	. . 
	jp z,03d17h		;3df4	ca 17 3d 	. . = 
	cp 008h		;3df7	fe 08 	. . 
	jp z,03d20h		;3df9	ca 20 3d 	.   = 
	cp 00bh		;3dfc	fe 0b 	. . 
	jp z,03c5dh		;3dfe	ca 5d 3c 	. ] < 
	cp 030h		;3e01	fe 30 	. 0 
	jp m,03cd9h		;3e03	fa d9 3c 	. . < 
	cp 03ah		;3e06	fe 3a 	. : 
	jp p,03cd9h		;3e08	f2 d9 3c 	. . < 
	ld (hl),a			;3e0b	77 	w 
	ld (de),a			;3e0c	12 	. 
	djnz $+6		;3e0d	10 04 	. . 
	inc b			;3e0f	04 	. 
	jp 03cd9h		;3e10	c3 d9 3c 	. . < 
	inc hl			;3e13	23 	# 
	inc de			;3e14	13 	. 
	jr $-63		;3e15	18 bf 	. . 
	dec b			;3e17	05 	. 
	jp z,03d0fh		;3e18	ca 0f 3d 	. . = 
	inc de			;3e1b	13 	. 
	inc hl			;3e1c	23 	# 
	jp 03cd6h		;3e1d	c3 d6 3c 	. . < 
	ld a,(0836ch)		;3e20	3a 6c 83 	: l . 
	cp b			;3e23	b8 	. 
	jp z,03cd9h		;3e24	ca d9 3c 	. . < 
	dec de			;3e27	1b 	. 
	dec hl			;3e28	2b 	+ 
	inc b			;3e29	04 	. 
	jp 03cd6h		;3e2a	c3 d6 3c 	. . < 
	ld a,(0835dh)		;3e2d	3a 5d 83 	: ] . 
	dec a			;3e30	3d 	= 
	cp 000h		;3e31	fe 00 	. . 
	jp z,03cd9h		;3e33	ca d9 3c 	. . < 
	ld (0835dh),a		;3e36	32 5d 83 	2 ] . 
	inc c			;3e39	0c 	. 
	ld a,c			;3e3a	79 	y 
	cp 004h		;3e3b	fe 04 	. . 
	jp m,03c78h		;3e3d	fa 78 3c 	. x < 
	jp z,03c91h		;3e40	ca 91 3c 	. . < 
	ld hl,(08376h)		;3e43	2a 76 83 	* v . 
	ld de,00020h		;3e46	11 20 00 	.   . 
	add hl,de			;3e49	19 	. 
	ld (08376h),hl		;3e4a	22 76 83 	" v . 
	jp 03c97h		;3e4d	c3 97 3c 	. . < 
	call 079a4h		;3e50	cd a4 79 	. . y 
	call 00c78h		;3e53	cd 78 0c 	. x . 
	call 038b4h		;3e56	cd b4 38 	. . 8 
	pop de			;3e59	d1 	. 
	pop bc			;3e5a	c1 	. 
	pop hl			;3e5b	e1 	. 
	ret			;3e5c	c9 	. 
	ld de,0c244h		;3e5d	11 44 c2 	. D . 
	call 00c92h		;3e60	cd 92 0c 	. . . 
	jp 03d6ch		;3e63	c3 6c 3d 	. l = 
	ld de,0c195h		;3e66	11 95 c1 	. . . 
	call 00c92h		;3e69	cd 92 0c 	. . . 
	call 0051dh		;3e6c	cd 1d 05 	. . . 
	ld a,(0814ah)		;3e6f	3a 4a 81 	: J . 
	cp 01bh		;3e72	fe 1b 	. . 
	jr nz,$-8		;3e74	20 f6 	  . 
	jp 03d53h		;3e76	c3 53 3d 	. S = 
	ld hl,03d97h		;3e79	21 97 3d 	! . = 
	jp 03cb9h		;3e7c	c3 b9 3c 	. . < 
	ld hl,03da2h		;3e7f	21 a2 3d 	! . = 
	jp 03cb9h		;3e82	c3 b9 3c 	. . < 
	ld hl,03dadh		;3e85	21 ad 3d 	! . = 
	jp 03cb9h		;3e88	c3 b9 3c 	. . < 
	ld hl,03db8h		;3e8b	21 b8 3d 	! . = 
	jp 03cb9h		;3e8e	c3 b9 3c 	. . < 
	ld hl,03dc3h		;3e91	21 c3 3d 	! . = 
	jp 03cb9h		;3e94	c3 b9 3c 	. . < 
	ld e,b			;3e97	58 	X 
	inc de			;3e98	13 	. 
	pop bc			;3e99	c1 	. 
	ld a,(bc)			;3e9a	0a 	. 
	nop			;3e9b	00 	. 
	dec h			;3e9c	25 	% 
	add a,e			;3e9d	83 	. 
	ld b,000h		;3e9e	06 00 	. . 
	ld a,e			;3ea0	7b 	{ 
	and h			;3ea1	a4 	. 
	ld e,c			;3ea2	59 	Y 
	ld e,0c1h		;3ea3	1e c1 	. . 
	ld a,(bc)			;3ea5	0a 	. 
	nop			;3ea6	00 	. 
	ld l,083h		;3ea7	2e 83 	. . 
	ld b,000h		;3ea9	06 00 	. . 
	add a,c			;3eab	81 	. 
	and h			;3eac	a4 	. 
	ld e,d			;3ead	5a 	Z 
	add hl,hl			;3eae	29 	) 
	pop bc			;3eaf	c1 	. 
	dec bc			;3eb0	0b 	. 
	nop			;3eb1	00 	. 
	ld (hl),083h		;3eb2	36 83 	6 . 
	dec b			;3eb4	05 	. 
	nop			;3eb5	00 	. 
	add a,a			;3eb6	87 	. 
	and h			;3eb7	a4 	. 
	ld a,d			;3eb8	7a 	z 
	inc (hl)			;3eb9	34 	4 
	pop bc			;3eba	c1 	. 
	dec bc			;3ebb	0b 	. 
	nop			;3ebc	00 	. 
	dec sp			;3ebd	3b 	; 
	add a,e			;3ebe	83 	. 
	dec b			;3ebf	05 	. 
	nop			;3ec0	00 	. 
	adc a,h			;3ec1	8c 	. 
	and h			;3ec2	a4 	. 
	ld d,d			;3ec3	52 	R 
	ccf			;3ec4	3f 	? 
	pop bc			;3ec5	c1 	. 
	dec c			;3ec6	0d 	. 
	nop			;3ec7	00 	. 
	ld a,083h		;3ec8	3e 83 	> . 
	inc bc			;3eca	03 	. 
	nop			;3ecb	00 	. 
	sub c			;3ecc	91 	. 
	and h			;3ecd	a4 	. 
	ld d,h			;3ece	54 	T 
	ld c,d			;3ecf	4a 	J 
	pop bc			;3ed0	c1 	. 
	ld c,000h		;3ed1	0e 00 	. . 
	ld b,e			;3ed3	43 	C 
	add a,e			;3ed4	83 	. 
	ld (bc),a			;3ed5	02 	. 
	nop			;3ed6	00 	. 
	sub h			;3ed7	94 	. 
	and h			;3ed8	a4 	. 
	add a,b			;3ed9	80 	. 
	ld hl,0ba25h		;3eda	21 25 ba 	! % . 
	call 038e7h		;3edd	cd e7 38 	. . 8 
	call 038a5h		;3ee0	cd a5 38 	. . 8 
	ld de,0bce7h		;3ee3	11 e7 bc 	. . . 
	call 00c92h		;3ee6	cd 92 0c 	. . . 
	ld ix,0e333h		;3ee9	dd 21 33 e3 	. ! 3 . 
	ld (ix+001h),03fh		;3eed	dd 36 01 3f 	. 6 . ? 
	call 0051dh		;3ef1	cd 1d 05 	. . . 
	ld a,(0814ah)		;3ef4	3a 4a 81 	: J . 
	cp 0ffh		;3ef7	fe ff 	. . 
	jr z,$-8		;3ef9	28 f6 	( . 
	ld (ix+001h),a		;3efb	dd 77 01 	. w . 
	cp 039h		;3efe	fe 39 	. 9 
	jr z,$+27		;3f00	28 19 	( . 
	sub 030h		;3f02	d6 30 	. 0 
	ld hl,03e89h		;3f04	21 89 3e 	! . > 
	ld de,00004h		;3f07	11 04 00 	. . . 
	cpi		;3f0a	ed a1 	. . 
	jr z,$+5		;3f0c	28 03 	( . 
	add hl,de			;3f0e	19 	. 
	jr $-5		;3f0f	18 f9 	. . 
	ld c,(hl)			;3f11	4e 	N 
	inc hl			;3f12	23 	# 
	outi		;3f13	ed a3 	. . 
	ld c,(hl)			;3f15	4e 	N 
	call 03e23h		;3f16	cd 23 3e 	. # > 
	jr $-57		;3f19	18 c5 	. . 
	call 00415h		;3f1b	cd 15 04 	. . . 
	call 040c4h		;3f1e	cd c4 40 	. . @ 
	jr $-65		;3f21	18 bd 	. . 
	ld ix,0e760h		;3f23	dd 21 60 e7 	. ! ` . 
	ld (ix+001h),03fh		;3f27	dd 36 01 3f 	. 6 . ? 
	push hl			;3f2b	e5 	. 
	pop ix		;3f2c	dd e1 	. . 
	call 0051dh		;3f2e	cd 1d 05 	. . . 
	ld a,(0814ah)		;3f31	3a 4a 81 	: J . 
	cp 0ffh		;3f34	fe ff 	. . 
	jr z,$-8		;3f36	28 f6 	( . 
	cp 01ch		;3f38	fe 1c 	. . 
	ret z			;3f3a	c8 	. 
	call 03e40h		;3f3b	cd 40 3e 	. @ > 
	jr $-16		;3f3e	18 ee 	. . 
	push ix		;3f40	dd e5 	. . 
	call 038a5h		;3f42	cd a5 38 	. . 8 
	pop ix		;3f45	dd e1 	. . 
	ld hl,0bf2bh		;3f47	21 2b bf 	! + . 
	call 038c7h		;3f4a	cd c7 38 	. . 8 
	ld c,(ix+000h)		;3f4d	dd 4e 00 	. N . 
	push af			;3f50	f5 	. 
	out (c),a		;3f51	ed 79 	. y 
	ld b,028h		;3f53	06 28 	. ( 
	ld c,(ix+001h)		;3f55	dd 4e 01 	. N . 
	in a,(c)		;3f58	ed 78 	. x 
	rrc a		;3f5a	cb 0f 	. . 
	jr c,$+15		;3f5c	38 0d 	8 . 
	push bc			;3f5e	c5 	. 
	ld b,001h		;3f5f	06 01 	. . 
	call 00545h		;3f61	cd 45 05 	. E . 
	pop bc			;3f64	c1 	. 
	djnz $-13		;3f65	10 f1 	. . 
	pop af			;3f67	f1 	. 
	xor a			;3f68	af 	. 
	jr $+7		;3f69	18 05 	. . 
	dec c			;3f6b	0d 	. 
	dec c			;3f6c	0d 	. 
	in b,(c)		;3f6d	ed 40 	. @ 
	pop af			;3f6f	f1 	. 
	ld hl,0e765h		;3f70	21 65 e7 	! e . 
	cp 000h		;3f73	fe 00 	. . 
	jr z,$+8		;3f75	28 06 	( . 
	ld (hl),a			;3f77	77 	w 
	ld hl,0e785h		;3f78	21 85 e7 	! . . 
	ld (hl),b			;3f7b	70 	p 
	ret			;3f7c	c9 	. 
	ld de,0e760h		;3f7d	11 60 e7 	. ` . 
	ld hl,0bf39h		;3f80	21 39 bf 	! 9 . 
	ld bc,00007h		;3f83	01 07 00 	. . . 
	ldir		;3f86	ed b0 	. . 
	ret			;3f88	c9 	. 
	nop			;3f89	00 	. 
	add a,e			;3f8a	83 	. 
	ld b,084h		;3f8b	06 84 	. . 
	add a,(hl)			;3f8d	86 	. 
	ld bc,00483h		;3f8e	01 83 04 	. . . 
	add a,h			;3f91	84 	. 
	add a,(hl)			;3f92	86 	. 
	ld (bc),a			;3f93	02 	. 
	add a,e			;3f94	83 	. 
	jr $-121		;3f95	18 85 	. . 
	add a,a			;3f97	87 	. 
	inc bc			;3f98	03 	. 
	add a,e			;3f99	83 	. 
	djnz $-121		;3f9a	10 85 	. . 
	add a,a			;3f9c	87 	. 
	inc b			;3f9d	04 	. 
	add a,e			;3f9e	83 	. 
	nop			;3f9f	00 	. 
	add a,h			;3fa0	84 	. 
	add a,a			;3fa1	87 	. 
	dec b			;3fa2	05 	. 
	add a,e			;3fa3	83 	. 
	nop			;3fa4	00 	. 
	add a,l			;3fa5	85 	. 
	add a,(hl)			;3fa6	86 	. 
	ld b,0e5h		;3fa7	06 e5 	. . 
	jr nz,$-30		;3fa9	20 e0 	  . 
	jp po,0e507h		;3fab	e2 07 e5 	. . . 
	djnz $-29		;3fae	10 e1 	. . 
	ex (sp),hl			;3fb0	e3 	. 
	ex af,af'			;3fb1	08 	. 
	add a,e			;3fb2	83 	. 
	nop			;3fb3	00 	. 
	ld d,c			;3fb4	51 	Q 
	ld d,e			;3fb5	53 	S 
	in a,(0f0h)		;3fb6	db f0 	. . 
	ld b,a			;3fb8	47 	G 
	in a,(09fh)		;3fb9	db 9f 	. . 
	ld c,a			;3fbb	4f 	O 
	ld hl,(0a01ch)		;3fbc	2a 1c a0 	* . . 
	call 03f36h		;3fbf	cd 36 3f 	. 6 ? 
	jr nz,$+18		;3fc2	20 10 	  . 
	ld hl,(0a477h)		;3fc4	2a 77 a4 	* w . 
	call 03f36h		;3fc7	cd 36 3f 	. 6 ? 
	jr nz,$+10		;3fca	20 08 	  . 
	ld hl,(0a7e0h)		;3fcc	2a e0 a7 	* . . 
	call 03f36h		;3fcf	cd 36 3f 	. 6 ? 
	jr z,$+89		;3fd2	28 57 	( W 
	ld bc,(0a01ch)		;3fd4	ed 4b 1c a0 	. K . . 
	ld hl,(0a477h)		;3fd8	2a 77 a4 	* w . 
	call 03f36h		;3fdb	cd 36 3f 	. 6 ? 
	jr nz,$+18		;3fde	20 10 	  . 
	ld hl,(0a7e0h)		;3fe0	2a e0 a7 	* . . 
	call 03f36h		;3fe3	cd 36 3f 	. 6 ? 
	jr nz,$+23		;3fe6	20 15 	  . 
	ld hl,0bccbh		;3fe8	21 cb bc 	! . . 
	call 03f3ah		;3feb	cd 3a 3f 	. : ? 
	jr $+61		;3fee	18 3b 	. ; 
	ld hl,(0a7e0h)		;3ff0	2a e0 a7 	* . . 
	call 03f36h		;3ff3	cd 36 3f 	. 6 ? 
	jr nz,$+12		;3ff6	20 0a 	  . 
	ld de,0a477h		;3ff8	11 77 a4 	. w . 
	jr $+41		;3ffb	18 27 	. ' 
	ld de,0a7e0h		;3ffd	11 e0 a7 	. . . 
	jr $+36		;4000	18 22 	. " 
	ld bc,(0a477h)		;4002	ed 4b 77 a4 	. K w . 
	ld hl,(0a7e0h)		;4006	2a e0 a7 	* . . 
	call 03f36h		;4009	cd 36 3f 	. 6 ? 
	jr nz,$+10		;400c	20 08 	  . 
	ld de,0a01ch		;400e	11 1c a0 	. . . 
	ld hl,0a477h		;4011	21 77 a4 	! w . 
	jr $+19		;4014	18 11 	. . 
	ld hl,0ffffh		;4016	21 ff ff 	! . . 
	ld (081c0h),hl		;4019	22 c0 81 	" . . 
	ld hl,0bcd9h		;401c	21 d9 bc 	! . . 
	call 03f3ah		;401f	cd 3a 3f 	. : ? 
	jr $+19		;4022	18 11 	. . 
	ld hl,0a01ch		;4024	21 1c a0 	! . . 
	ldi		;4027	ed a0 	. . 
	ldi		;4029	ed a0 	. . 
	ld de,081c0h		;402b	11 c0 81 	. . . 
	ld hl,0a01ch		;402e	21 1c a0 	! . . 
	ldi		;4031	ed a0 	. . 
	ldi		;4033	ed a0 	. . 
	ret			;4035	c9 	. 
	xor a			;4036	af 	. 
	sbc hl,bc		;4037	ed 42 	. B 
	ret			;4039	c9 	. 
	call 038c7h		;403a	cd c7 38 	. . 8 
	ld b,064h		;403d	06 64 	. d 
	call 00545h		;403f	cd 45 05 	. E . 
	call 038b4h		;4042	cd b4 38 	. . 8 
	ret			;4045	c9 	. 
	ld hl,0ba2eh		;4046	21 2e ba 	! . . 
	ld bc,00006h		;4049	01 06 00 	. . . 
	ld d,c			;404c	51 	Q 
	call 038ech		;404d	cd ec 38 	. . 8 
	ld a,00dh		;4050	3e 0d 	> . 
	ld (087ffh),a		;4052	32 ff 87 	2 . . 
	call 00c85h		;4055	cd 85 0c 	. . . 
	ld de,0bf40h		;4058	11 40 bf 	. @ . 
	call 00c92h		;405b	cd 92 0c 	. . . 
	ld hl,00300h		;405e	21 00 03 	! . . 
	ld (08012h),hl		;4061	22 12 80 	" . . 
	ld de,0c009h		;4064	11 09 c0 	. . . 
	call 00c95h		;4067	cd 95 0c 	. . . 
	ld bc,0001dh		;406a	01 1d 00 	. . . 
	ld hl,0bfech		;406d	21 ec bf 	! . . 
	push bc			;4070	c5 	. 
	push hl			;4071	e5 	. 
	ld de,0e2a0h		;4072	11 a0 e2 	. . . 
	ldir		;4075	ed b0 	. . 
	pop hl			;4077	e1 	. 
	pop bc			;4078	c1 	. 
	ld de,0e2c0h		;4079	11 c0 e2 	. . . 
	ldir		;407c	ed b0 	. . 
	ld hl,0c05dh		;407e	21 5d c0 	! ] . 
	call 040a0h		;4081	cd a0 40 	. . @ 
	ld ix,0e2a9h		;4084	dd 21 a9 e2 	. ! . . 
	ld (ix+000h),031h		;4088	dd 36 00 31 	. 6 . 1 
	ld (ix+020h),032h		;408c	dd 36 20 32 	. 6   2 
	ld de,0e2adh		;4090	11 ad e2 	. . . 
	ld hl,0a7e2h		;4093	21 e2 a7 	! . . 
	call 0405fh		;4096	cd 5f 40 	. _ @ 
	ld de,0e2cdh		;4099	11 cd e2 	. . . 
	call 0405fh		;409c	cd 5f 40 	. _ @ 
	ld ix,0e0b9h		;409f	dd 21 b9 e0 	. ! . . 
	ld hl,040a9h		;40a3	21 a9 40 	! . @ 
	call 0406bh		;40a6	cd 6b 40 	. k @ 
	jr c,$-10		;40a9	38 f4 	8 . 
	ld a,(0814ah)		;40ab	3a 4a 81 	: J . 
	cp 01bh		;40ae	fe 1b 	. . 
	jp z,04055h		;40b0	ca 55 40 	. U @ 
	ld ix,0e0f9h		;40b3	dd 21 f9 e0 	. ! . . 
	ld hl,040adh		;40b7	21 ad 40 	! . @ 
	call 0406bh		;40ba	cd 6b 40 	. k @ 
	jr c,$-10		;40bd	38 f4 	8 . 
	ld a,(0814ah)		;40bf	3a 4a 81 	: J . 
	cp 01bh		;40c2	fe 1b 	. . 
	jp z,04055h		;40c4	ca 55 40 	. U @ 
	ld ix,0e139h		;40c7	dd 21 39 e1 	. ! 9 . 
	ld hl,040b2h		;40cb	21 b2 40 	! . @ 
	call 0406bh		;40ce	cd 6b 40 	. k @ 
	jr c,$-10		;40d1	38 f4 	8 . 
	ld a,(0814ah)		;40d3	3a 4a 81 	: J . 
	cp 01bh		;40d6	fe 1b 	. . 
	jp z,04055h		;40d8	ca 55 40 	. U @ 
	ld ix,0e179h		;40db	dd 21 79 e1 	. ! y . 
	ld hl,040b6h		;40df	21 b6 40 	! . @ 
	call 0406bh		;40e2	cd 6b 40 	. k @ 
	jr c,$-10		;40e5	38 f4 	8 . 
	ld a,(0814ah)		;40e7	3a 4a 81 	: J . 
	cp 01bh		;40ea	fe 1b 	. . 
	jp z,04055h		;40ec	ca 55 40 	. U @ 
	ld ix,0e1b9h		;40ef	dd 21 b9 e1 	. ! . . 
	ld hl,040c0h		;40f3	21 c0 40 	! . @ 
	call 0406bh		;40f6	cd 6b 40 	. k @ 
	jr c,$-10		;40f9	38 f4 	8 . 
	ld a,(0814ah)		;40fb	3a 4a 81 	: J . 
	cp 01bh		;40fe	fe 1b 	. . 
	jp z,04055h		;4100	ca 55 40 	. U @ 
	ld ix,0e1f9h		;4103	dd 21 f9 e1 	. ! . . 
	ld hl,040c0h		;4107	21 c0 40 	! . @ 
	call 0406bh		;410a	cd 6b 40 	. k @ 
	jr c,$-10		;410d	38 f4 	8 . 
	ld a,(0814ah)		;410f	3a 4a 81 	: J . 
	cp 01bh		;4112	fe 1b 	. . 
	jp z,04055h		;4114	ca 55 40 	. U @ 
	ld ix,0e239h		;4117	dd 21 39 e2 	. ! 9 . 
	ld hl,040c0h		;411b	21 c0 40 	! . @ 
	call 0406bh		;411e	cd 6b 40 	. k @ 
	jr c,$-10		;4121	38 f4 	8 . 
	cp 04eh		;4123	fe 4e 	. N 
	jp z,03f9fh		;4125	ca 9f 3f 	. . ? 
	ld a,(0814ah)		;4128	3a 4a 81 	: J . 
	cp 01bh		;412b	fe 1b 	. . 
	jp z,04055h		;412d	ca 55 40 	. U @ 
	ld ix,0e0b9h		;4130	dd 21 b9 e0 	. ! . . 
	ld hl,0a7e2h		;4134	21 e2 a7 	! . . 
	ld a,(ix+000h)		;4137	dd 7e 00 	. ~ . 
	cp 031h		;413a	fe 31 	. 1 
	jr z,$+5		;413c	28 03 	( . 
	ld hl,0a7e7h		;413e	21 e7 a7 	! . . 
	ld b,005h		;4141	06 05 	. . 
	ld de,00040h		;4143	11 40 00 	. @ . 
	add ix,de		;4146	dd 19 	. . 
	ld a,(ix+000h)		;4148	dd 7e 00 	. ~ . 
	ld (hl),a			;414b	77 	w 
	inc hl			;414c	23 	# 
	djnz $-7		;414d	10 f7 	. . 
	call 038d7h		;414f	cd d7 38 	. . 8 
	jp 03f84h		;4152	c3 84 3f 	. . ? 
	call 040c4h		;4155	cd c4 40 	. . @ 
	call 00c78h		;4158	cd 78 0c 	. x . 
	call 038b4h		;415b	cd b4 38 	. . 8 
	ret			;415e	c9 	. 
	ld bc,005ffh		;415f	01 ff 05 	. . . 
	ldi		;4162	ed a0 	. . 
	ld a,e			;4164	7b 	{ 
	add a,003h		;4165	c6 03 	. . 
	ld e,a			;4167	5f 	_ 
	djnz $-6		;4168	10 f8 	. . 
	ret			;416a	c9 	. 
	ld (ix+000h),03fh		;416b	dd 36 00 3f 	. 6 . ? 
	call 003a4h		;416f	cd a4 03 	. . . 
	call 0051dh		;4172	cd 1d 05 	. . . 
	ld a,(0814ah)		;4175	3a 4a 81 	: J . 
	cp 0ffh		;4178	fe ff 	. . 
	jr z,$-11		;417a	28 f3 	( . 
	call 04080h		;417c	cd 80 40 	. . @ 
	ret			;417f	c9 	. 
	ld b,000h		;4180	06 00 	. . 
	ld c,(hl)			;4182	4e 	N 
	inc hl			;4183	23 	# 
	xor a			;4184	af 	. 
	ld a,(0814ah)		;4185	3a 4a 81 	: J . 
	cpir		;4188	ed b1 	. . 
	jr z,$+10		;418a	28 08 	( . 
	ld hl,0c04fh		;418c	21 4f c0 	! O . 
	call 040a0h		;418f	cd a0 40 	. . @ 
	scf			;4192	37 	7 
	ret			;4193	c9 	. 
	push af			;4194	f5 	. 
	ld (ix+000h),a		;4195	dd 77 00 	. w . 
	ld hl,0c05dh		;4198	21 5d c0 	! ] . 
	call 040a0h		;419b	cd a0 40 	. . @ 
	pop af			;419e	f1 	. 
	ret			;419f	c9 	. 
	ld bc,00007h		;41a0	01 07 00 	. . . 
	ld de,0e760h		;41a3	11 60 e7 	. ` . 
	ldir		;41a6	ed b0 	. . 
	ret			;41a8	c9 	. 
	inc bc			;41a9	03 	. 
	ld sp,01b32h		;41aa	31 32 1b 	1 2 . 
	inc b			;41ad	04 	. 
	jr nc,$+51		;41ae	30 31 	0 1 
	ld (0031bh),a		;41b0	32 1b 03 	2 . . 
	scf			;41b3	37 	7 
	jr c,$+29		;41b4	38 1b 	8 . 
	add hl,bc			;41b6	09 	. 
	jr nc,$+51		;41b7	30 31 	0 1 
	ld (03433h),a		;41b9	32 33 34 	2 3 4 
	dec (hl)			;41bc	35 	5 
	ld (hl),037h		;41bd	36 37 	6 7 
	dec de			;41bf	1b 	. 
	inc bc			;41c0	03 	. 
	ld e,c			;41c1	59 	Y 
	ld c,(hl)			;41c2	4e 	N 
	dec de			;41c3	1b 	. 
	call 040cbh		;41c4	cd cb 40 	. . @ 
	call 040d7h		;41c7	cd d7 40 	. . @ 
	ret			;41ca	c9 	. 
	ld ix,0a7e2h		;41cb	dd 21 e2 a7 	. ! . . 
	ld d,000h		;41cf	16 00 	. . 
	ld c,0e2h		;41d1	0e e2 	. . 
	call 040e3h		;41d3	cd e3 40 	. . @ 
	ret			;41d6	c9 	. 
	ld ix,0a7e7h		;41d7	dd 21 e7 a7 	. ! . . 
	ld d,000h		;41db	16 00 	. . 
	ld c,0e3h		;41dd	0e e3 	. . 
	call 040e3h		;41df	cd e3 40 	. . @ 
	ret			;41e2	c9 	. 
	ld hl,04113h		;41e3	21 13 41 	! . A 
	ld a,(ix+000h)		;41e6	dd 7e 00 	. ~ . 
	call 0410ah		;41e9	cd 0a 41 	. . A 
	ld hl,04117h		;41ec	21 17 41 	! . A 
	ld a,(ix+001h)		;41ef	dd 7e 01 	. ~ . 
	sub 035h		;41f2	d6 35 	. 5 
	call 0410ah		;41f4	cd 0a 41 	. . A 
	ld hl,0411ch		;41f7	21 1c 41 	! . A 
	call 0410ah		;41fa	cd 0a 41 	. . A 
	ld hl,081c2h		;41fd	21 c2 81 	! . . 
	ld a,(ix+002h)		;4200	dd 7e 02 	. ~ . 
	rrd		;4203	ed 67 	. g 
	ld c,0e4h		;4205	0e e4 	. . 
	outi		;4207	ed a3 	. . 
	ret			;4209	c9 	. 
	and 007h		;420a	e6 07 	. . 
	ld e,a			;420c	5f 	_ 
	outi		;420d	ed a3 	. . 
	add hl,de			;420f	19 	. 
	outi		;4210	ed a3 	. . 
	ret			;4212	c9 	. 
	inc d			;4213	14 	. 
	ret nz			;4214	c0 	. 
	call nz,013cch		;4215	c4 cc 13 	. . . 
	ld bc,04181h		;4218	01 81 41 	. . A 
	pop bc			;421b	c1 	. 
	dec d			;421c	15 	. 
	adc a,d			;421d	8a 	. 
	jp z,0eaaah		;421e	ca aa ea 	. . . 
	push hl			;4221	e5 	. 
	push de			;4222	d5 	. 
	push bc			;4223	c5 	. 
	ld hl,0e700h		;4224	21 00 e7 	! . . 
	ld bc,00007h		;4227	01 07 00 	. . . 
	ld de,081d6h		;422a	11 d6 81 	. . . 
	ldir		;422d	ed b0 	. . 
	ld hl,0e720h		;422f	21 20 e7 	!   . 
	ld bc,00007h		;4232	01 07 00 	. . . 
	ldir		;4235	ed b0 	. . 
	pop bc			;4237	c1 	. 
	pop de			;4238	d1 	. 
	pop hl			;4239	e1 	. 
	ret			;423a	c9 	. 
	push hl			;423b	e5 	. 
	push de			;423c	d5 	. 
	push bc			;423d	c5 	. 
	ld hl,081d6h		;423e	21 d6 81 	! . . 
	ld de,0e700h		;4241	11 00 e7 	. . . 
	ld bc,00007h		;4244	01 07 00 	. . . 
	ldir		;4247	ed b0 	. . 
	ld de,0e720h		;4249	11 20 e7 	.   . 
	ld bc,00007h		;424c	01 07 00 	. . . 
	ldir		;424f	ed b0 	. . 
	pop bc			;4251	c1 	. 
	pop de			;4252	d1 	. 
	pop hl			;4253	e1 	. 
	ret			;4254	c9 	. 
	push hl			;4255	e5 	. 
	push de			;4256	d5 	. 
	push bc			;4257	c5 	. 
	jp 04141h		;4258	c3 41 41 	. A A 
	ld a,00dh		;425b	3e 0d 	> . 
	ld (087ffh),a		;425d	32 ff 87 	2 . . 
	call 00c85h		;4260	cd 85 0c 	. . . 
	ld de,0c32bh		;4263	11 2b c3 	. + . 
	call 00c92h		;4266	cd 92 0c 	. . . 
	ld hl,0a4aeh		;4269	21 ae a4 	! . . 
	ld de,0e118h		;426c	11 18 e1 	. . . 
	ld bc,00006h		;426f	01 06 00 	. . . 
	ldir		;4272	ed b0 	. . 
	ld de,0e17bh		;4274	11 7b e1 	. { . 
	ld bc,00003h		;4277	01 03 00 	. . . 
	ldir		;427a	ed b0 	. . 
	ld de,0e1dbh		;427c	11 db e1 	. . . 
	ld bc,00003h		;427f	01 03 00 	. . . 
	ldir		;4282	ed b0 	. . 
	ld a,076h		;4284	3e 76 	> v 
	call 048f2h		;4286	cd f2 48 	. . H 
	ld a,041h		;4289	3e 41 	> A 
	call 048f2h		;428b	cd f2 48 	. . H 
	ld b,003h		;428e	06 03 	. . 
	ld de,0e1dbh		;4290	11 db e1 	. . . 
	call 04930h		;4293	cd 30 49 	. 0 I 
	ld (de),a			;4296	12 	. 
	inc de			;4297	13 	. 
	djnz $-5		;4298	10 f9 	. . 
	ld a,001h		;429a	3e 01 	> . 
	ld (0835dh),a		;429c	32 5d 83 	2 ] . 
	ld a,006h		;429f	3e 06 	> . 
	ld (0836ch),a		;42a1	32 6c 83 	2 l . 
	ld b,a			;42a4	47 	G 
	ld de,0a4aeh		;42a5	11 ae a4 	. . . 
	ld hl,0e118h		;42a8	21 18 e1 	! . . 
	ld (081b1h),hl		;42ab	22 b1 81 	" . . 
	call 0055fh		;42ae	cd 5f 05 	. _ . 
	ld a,(0814ah)		;42b1	3a 4a 81 	: J . 
	cp 0ffh		;42b4	fe ff 	. . 
	jr z,$-8		;42b6	28 f6 	( . 
	cp 01bh		;42b8	fe 1b 	. . 
	jp z,04236h		;42ba	ca 36 42 	. 6 B 
	cp 00dh		;42bd	fe 0d 	. . 
	jp z,04216h		;42bf	ca 16 42 	. . B 
	cp 00ah		;42c2	fe 0a 	. . 
	jp z,04216h		;42c4	ca 16 42 	. . B 
	cp 00ch		;42c7	fe 0c 	. . 
	jp z,04200h		;42c9	ca 00 42 	. . B 
	cp 008h		;42cc	fe 08 	. . 
	jp z,04209h		;42ce	ca 09 42 	. . B 
	cp 00bh		;42d1	fe 0b 	. . 
	jp z,0419ah		;42d3	ca 9a 41 	. . A 
	cp 030h		;42d6	fe 30 	. 0 
	jp m,041aeh		;42d8	fa ae 41 	. . A 
	cp 03ah		;42db	fe 3a 	. : 
	jp m,041f4h		;42dd	fa f4 41 	. . A 
	ld c,a			;42e0	4f 	O 
	ld a,(0835dh)		;42e1	3a 5d 83 	: ] . 
	cp 002h		;42e4	fe 02 	. . 
	ld a,c			;42e6	79 	y 
	jp nz,041aeh		;42e7	c2 ae 41 	. . A 
	cp 041h		;42ea	fe 41 	. A 
	jp m,041aeh		;42ec	fa ae 41 	. . A 
	cp 047h		;42ef	fe 47 	. G 
	jp p,041aeh		;42f1	f2 ae 41 	. . A 
	ld (hl),a			;42f4	77 	w 
	ld (de),a			;42f5	12 	. 
	djnz $+6		;42f6	10 04 	. . 
	inc b			;42f8	04 	. 
	jp 041aeh		;42f9	c3 ae 41 	. . A 
	inc hl			;42fc	23 	# 
	inc de			;42fd	13 	. 
	jr $-83		;42fe	18 ab 	. . 
	dec b			;4300	05 	. 
	jp z,041f8h		;4301	ca f8 41 	. . A 
	inc de			;4304	13 	. 
	inc hl			;4305	23 	# 
	jp 041abh		;4306	c3 ab 41 	. . A 
	ld a,(0836ch)		;4309	3a 6c 83 	: l . 
	cp b			;430c	b8 	. 
	jp z,041aeh		;430d	ca ae 41 	. . A 
	dec de			;4310	1b 	. 
	dec hl			;4311	2b 	+ 
	inc b			;4312	04 	. 
	jp 041abh		;4313	c3 ab 41 	. . A 
	ld a,(0835dh)		;4316	3a 5d 83 	: ] . 
	cp 001h		;4319	fe 01 	. . 
	jp z,04223h		;431b	ca 23 42 	. # B 
	cp 002h		;431e	fe 02 	. . 
	jp 0419ah		;4320	c3 9a 41 	. . A 
	inc a			;4323	3c 	< 
	ld (0835dh),a		;4324	32 5d 83 	2 ] . 
	ld a,003h		;4327	3e 03 	> . 
	ld (0836ch),a		;4329	32 6c 83 	2 l . 
	ld b,a			;432c	47 	G 
	ld hl,0e17bh		;432d	21 7b e1 	! { . 
	ld de,0a4b4h		;4330	11 b4 a4 	. . . 
	jp 041abh		;4333	c3 ab 41 	. . A 
	call 00c78h		;4336	cd 78 0c 	. x . 
	call 038b4h		;4339	cd b4 38 	. . 8 
	ret			;433c	c9 	. 
	push hl			;433d	e5 	. 
	push de			;433e	d5 	. 
	push bc			;433f	c5 	. 
	ld a,056h		;4340	3e 56 	> V 
	call 048f2h		;4342	cd f2 48 	. . H 
	ld hl,0a4aeh		;4345	21 ae a4 	! . . 
	ld b,00ch		;4348	06 0c 	. . 
	ld a,(hl)			;434a	7e 	~ 
	inc hl			;434b	23 	# 
	call 048f2h		;434c	cd f2 48 	. . H 
	djnz $-5		;434f	10 f9 	. . 
	pop bc			;4351	c1 	. 
	pop de			;4352	d1 	. 
	pop hl			;4353	e1 	. 
	ret			;4354	c9 	. 
	ld a,00dh		;4355	3e 0d 	> . 
	ld (087ffh),a		;4357	32 ff 87 	2 . . 
	call 00c85h		;435a	cd 85 0c 	. . . 
	ld de,0c415h		;435d	11 15 c4 	. . . 
	call 00c92h		;4360	cd 92 0c 	. . . 
	ld hl,0a4bah		;4363	21 ba a4 	! . . 
	ld de,0e118h		;4366	11 18 e1 	. . . 
	ld bc,00006h		;4369	01 06 00 	. . . 
	ldir		;436c	ed b0 	. . 
	ld de,0e17bh		;436e	11 7b e1 	. { . 
	ld bc,00003h		;4371	01 03 00 	. . . 
	ldir		;4374	ed b0 	. . 
	ld de,0e1dah		;4376	11 da e1 	. . . 
	ld a,076h		;4379	3e 76 	> v 
	call 048f2h		;437b	cd f2 48 	. . H 
	ld a,041h		;437e	3e 41 	> A 
	call 048f2h		;4380	cd f2 48 	. . H 
	ld b,003h		;4383	06 03 	. . 
	ld de,0e1dbh		;4385	11 db e1 	. . . 
	call 04930h		;4388	cd 30 49 	. 0 I 
	ld (de),a			;438b	12 	. 
	inc de			;438c	13 	. 
	djnz $-5		;438d	10 f9 	. . 
	ld a,001h		;438f	3e 01 	> . 
	ld (0835dh),a		;4391	32 5d 83 	2 ] . 
	ld a,006h		;4394	3e 06 	> . 
	ld (0836ch),a		;4396	32 6c 83 	2 l . 
	ld b,a			;4399	47 	G 
	ld de,0a4bah		;439a	11 ba a4 	. . . 
	ld hl,0e118h		;439d	21 18 e1 	! . . 
	ld (081b1h),hl		;43a0	22 b1 81 	" . . 
	call 0055fh		;43a3	cd 5f 05 	. _ . 
	ld a,(0814ah)		;43a6	3a 4a 81 	: J . 
	cp 0ffh		;43a9	fe ff 	. . 
	jr z,$-8		;43ab	28 f6 	( . 
	cp 01bh		;43ad	fe 1b 	. . 
	jp z,04346h		;43af	ca 46 43 	. F C 
	cp 00dh		;43b2	fe 0d 	. . 
	jp z,04315h		;43b4	ca 15 43 	. . C 
	cp 00ah		;43b7	fe 0a 	. . 
	jp z,04315h		;43b9	ca 15 43 	. . C 
	cp 00ch		;43bc	fe 0c 	. . 
	jp z,042ffh		;43be	ca ff 42 	. . B 
	cp 008h		;43c1	fe 08 	. . 
	jp z,04308h		;43c3	ca 08 43 	. . C 
	cp 00bh		;43c6	fe 0b 	. . 
	jp z,0428fh		;43c8	ca 8f 42 	. . B 
	cp 030h		;43cb	fe 30 	. 0 
	jp m,042a3h		;43cd	fa a3 42 	. . B 
	cp 03ah		;43d0	fe 3a 	. : 
	jp m,042e9h		;43d2	fa e9 42 	. . B 
	ld c,a			;43d5	4f 	O 
	ld a,(0835dh)		;43d6	3a 5d 83 	: ] . 
	cp 002h		;43d9	fe 02 	. . 
	ld a,c			;43db	79 	y 
	jp nz,042a3h		;43dc	c2 a3 42 	. . B 
	cp 041h		;43df	fe 41 	. A 
	jp m,042a3h		;43e1	fa a3 42 	. . B 
	cp 047h		;43e4	fe 47 	. G 
	jp p,042a3h		;43e6	f2 a3 42 	. . B 
	ld c,a			;43e9	4f 	O 
	ld a,(0835dh)		;43ea	3a 5d 83 	: ] . 
	cp 003h		;43ed	fe 03 	. . 
	jp z,0434dh		;43ef	ca 4d 43 	. M C 
	ld a,c			;43f2	79 	y 
	ld (hl),a			;43f3	77 	w 
	ld (de),a			;43f4	12 	. 
	djnz $+6		;43f5	10 04 	. . 
	inc b			;43f7	04 	. 
	jp 042a3h		;43f8	c3 a3 42 	. . B 
	inc hl			;43fb	23 	# 
	inc de			;43fc	13 	. 
	jr $-93		;43fd	18 a1 	. . 
	dec b			;43ff	05 	. 
	jp z,042f7h		;4400	ca f7 42 	. . B 
	inc de			;4403	13 	. 
	inc hl			;4404	23 	# 
	jp 042a0h		;4405	c3 a0 42 	. . B 
	ld a,(0836ch)		;4408	3a 6c 83 	: l . 
	cp b			;440b	b8 	. 
	jp z,042a3h		;440c	ca a3 42 	. . B 
	dec de			;440f	1b 	. 
	dec hl			;4410	2b 	+ 
	inc b			;4411	04 	. 
	jp 042a0h		;4412	c3 a0 42 	. . B 
	ld a,(0835dh)		;4415	3a 5d 83 	: ] . 
	cp 001h		;4418	fe 01 	. . 
	jp z,04320h		;441a	ca 20 43 	.   C 
	jp 0428fh		;441d	c3 8f 42 	. . B 
	inc a			;4420	3c 	< 
	ld (0835dh),a		;4421	32 5d 83 	2 ] . 
	ld a,003h		;4424	3e 03 	> . 
	ld (0836ch),a		;4426	32 6c 83 	2 l . 
	ld b,a			;4429	47 	G 
	ld hl,0e17bh		;442a	21 7b e1 	! { . 
	ld de,0a4c0h		;442d	11 c0 a4 	. . . 
	jp 042a0h		;4430	c3 a0 42 	. . B 
	inc a			;4433	3c 	< 
	ld (0835dh),a		;4434	32 5d 83 	2 ] . 
	ld a,004h		;4437	3e 04 	> . 
	ld (0836ch),a		;4439	32 6c 83 	2 l . 
	ld b,a			;443c	47 	G 
	ld hl,0e1dah		;443d	21 da e1 	! . . 
	ld de,0a4c3h		;4440	11 c3 a4 	. . . 
	jp 042a0h		;4443	c3 a0 42 	. . B 
	call 00c78h		;4446	cd 78 0c 	. x . 
	call 038b4h		;4449	cd b4 38 	. . 8 
	ret			;444c	c9 	. 
	ld a,b			;444d	78 	x 
	cp 004h		;444e	fe 04 	. . 
	jr z,$+23		;4450	28 15 	( . 
	cp 003h		;4452	fe 03 	. . 
	jp nz,042f2h		;4454	c2 f2 42 	. . B 
	dec hl			;4457	2b 	+ 
	ld a,(hl)			;4458	7e 	~ 
	inc hl			;4459	23 	# 
	cp 030h		;445a	fe 30 	. 0 
	jp z,04375h		;445c	ca 75 43 	. u C 
	cp 031h		;445f	fe 31 	. 1 
	jp z,0437eh		;4461	ca 7e 43 	. ~ C 
	jp 04337h		;4464	c3 37 43 	. 7 C 
	ld a,c			;4467	79 	y 
	cp 030h		;4468	fe 30 	. 0 
	jp z,042f3h		;446a	ca f3 42 	. . B 
	cp 031h		;446d	fe 31 	. 1 
	jp z,042f3h		;446f	ca f3 42 	. . B 
	jp 042a3h		;4472	c3 a3 42 	. . B 
	ld a,c			;4475	79 	y 
	cp 035h		;4476	fe 35 	. 5 
	jp p,042f3h		;4478	f2 f3 42 	. . B 
	jp 042a3h		;447b	c3 a3 42 	. . B 
	ld a,c			;447e	79 	y 
	cp 035h		;447f	fe 35 	. 5 
	jp m,042f3h		;4481	fa f3 42 	. . B 
	jp 042a3h		;4484	c3 a3 42 	. . B 
	inc sp			;4487	33 	3 
	inc (hl)			;4488	34 	4 
	jr c,$+53		;4489	38 33 	8 3 
	inc sp			;448b	33 	3 
	jr c,$+47		;448c	38 2d 	8 - 
	scf			;448e	37 	7 
	jr nc,$+51		;448f	30 31 	0 1 
	add hl,sp			;4491	39 	9 
	ld l,034h		;4492	2e 34 	. 4 
	inc sp			;4494	33 	3 
	ld (hl),02fh		;4495	36 2f 	6 / 
	ld (0312eh),a		;4497	32 2e 31 	2 . 1 
	jr nz,$+34		;449a	20 20 	    
	ld b,d			;449c	42 	B 
	ld b,c			;449d	41 	A 
	jr nz,$+34		;449e	20 20 	    
	jr nz,$+52		;44a0	20 32 	  2 
	ld l,031h		;44a2	2e 31 	. 1 
	jr nz,$+34		;44a4	20 20 	    
	jr nc,$+59		;44a6	30 39 	0 9 
	ld sp,03930h		;44a8	31 30 39 	1 0 9 
	ld sp,00907h		;44ab	31 07 09 	1 . . 
	rrca			;44ae	0f 	. 
	ld de,02020h		;44af	11 20 20 	.     
	cpl			;44b2	2f 	/ 
	ld sp,0504fh		;44b3	31 4f 50 	1 O P 
	adc a,e			;44b6	8b 	. 
	sbc a,c			;44b7	99 	. 
	rrca			;44b8	0f 	. 
	ld de,02020h		;44b9	11 20 20 	.     
	ld b,b			;44bc	40 	@ 
	ld b,b			;44bd	40 	@ 
	ld l,a			;44be	6f 	o 
	ld (hl),b			;44bf	70 	p 
	cp a			;44c0	bf 	. 
	cp d			;44c1	ba 	. 
	ld a,(08125h)		;44c2	3a 25 81 	: % . 
	ld hl,0812dh		;44c5	21 2d 81 	! - . 
	cp (hl)			;44c8	be 	. 
	jr nz,$+16		;44c9	20 0e 	  . 
	ld a,(08218h)		;44cb	3a 18 82 	: . . 
	or a			;44ce	b7 	. 
	jr nz,$+9		;44cf	20 07 	  . 
	ld a,(0823ch)		;44d1	3a 3c 82 	: < . 
	or a			;44d4	b7 	. 
	jp nz,04417h		;44d5	c2 17 44 	. . D 
	ret			;44d8	c9 	. 
	ld a,(08125h)		;44d9	3a 25 81 	: % . 
	ld (0812dh),a		;44dc	32 2d 81 	2 - . 
	or a			;44df	b7 	. 
	jp z,044a9h		;44e0	ca a9 44 	. . D 
	call 00f17h		;44e3	cd 17 0f 	. . . 
	ld a,(0823dh)		;44e6	3a 3d 82 	: = . 
	or a			;44e9	b7 	. 
	jr nz,$+7		;44ea	20 05 	  . 
	ld a,03fh		;44ec	3e 3f 	> ? 
	call 017b3h		;44ee	cd b3 17 	. . . 
	ld hl,00000h		;44f1	21 00 00 	! . . 
	ld (08004h),hl		;44f4	22 04 80 	" . . 
	call 01215h		;44f7	cd 15 12 	. . . 
	ld a,06ch		;44fa	3e 6c 	> l 
	call 048f2h		;44fc	cd f2 48 	. . H 
	ld a,(08117h)		;44ff	3a 17 81 	: . . 
	or a			;4502	b7 	. 
	jr z,$+7		;4503	28 05 	( . 
	ld a,068h		;4505	3e 68 	> h 
	call 048f2h		;4507	cd f2 48 	. . H 
	ld a,001h		;450a	3e 01 	> . 
	ld (08211h),a		;450c	32 11 82 	2 . . 
	ld (08212h),a		;450f	32 12 82 	2 . . 
	call 044e3h		;4512	cd e3 44 	. . D 
	jr $+71		;4515	18 45 	. E 
	ld a,(08117h)		;4517	3a 17 81 	: . . 
	ld hl,08116h		;451a	21 16 81 	! . . 
	cp (hl)			;451d	be 	. 
	jr z,$+11		;451e	28 09 	( . 
	ld (08116h),a		;4520	32 16 81 	2 . . 
	or a			;4523	b7 	. 
	jr nz,$-75		;4524	20 b3 	  . 
	call 00e37h		;4526	cd 37 0e 	. 7 . 
	ld a,(08117h)		;4529	3a 17 81 	: . . 
	or a			;452c	b7 	. 
	call nz,00f0ah		;452d	c4 0a 0f 	. . . 
	ld hl,(08004h)		;4530	2a 04 80 	* . . 
	ld a,(08182h)		;4533	3a 82 81 	: . . 
	cp l			;4536	bd 	. 
	jr nz,$+37		;4537	20 23 	  # 
	ld a,(08183h)		;4539	3a 83 81 	: . . 
	cp 0f8h		;453c	fe f8 	. . 
	jr c,$+7		;453e	38 05 	8 . 
	ld a,0f8h		;4540	3e f8 	> . 
	ld (08183h),a		;4542	32 83 81 	2 . . 
	cp h			;4545	bc 	. 
	jr nz,$+22		;4546	20 14 	  . 
	ld a,(08119h)		;4548	3a 19 81 	: . . 
	ld hl,08118h		;454b	21 18 81 	! . . 
	cp (hl)			;454e	be 	. 
	jp z,043d8h		;454f	ca d8 43 	. . C 
	ld a,001h		;4552	3e 01 	> . 
	ld (08117h),a		;4554	32 17 81 	2 . . 
	ld (08116h),a		;4557	32 16 81 	2 . . 
	jr $+43		;455a	18 29 	. ) 
	ld a,(08182h)		;455c	3a 82 81 	: . . 
	ld l,a			;455f	6f 	o 
	ld a,(08183h)		;4560	3a 83 81 	: . . 
	ld h,a			;4563	67 	g 
	ld (08004h),hl		;4564	22 04 80 	" . . 
	ld (08006h),hl		;4567	22 06 80 	" . . 
	ld (0e40bh),hl		;456a	22 0b e4 	" . . 
	ld hl,00707h		;456d	21 07 07 	! . . 
	ld (0800ah),hl		;4570	22 0a 80 	" . . 
	ld (0800ch),hl		;4573	22 0c 80 	" . . 
	ld (0e409h),hl		;4576	22 09 e4 	" . . 
	ld a,001h		;4579	3e 01 	> . 
	ld (0e408h),a		;457b	32 08 e4 	2 . . 
	ld a,(08117h)		;457e	3a 17 81 	: . . 
	or a			;4581	b7 	. 
	jp z,043d8h		;4582	ca d8 43 	. . C 
	call 00f0ah		;4585	cd 0a 0f 	. . . 
	ld a,(08119h)		;4588	3a 19 81 	: . . 
	ld (08118h),a		;458b	32 18 81 	2 . . 
	ld a,068h		;458e	3e 68 	> h 
	call 048f2h		;4590	cd f2 48 	. . H 
	ld a,06ch		;4593	3e 6c 	> l 
	call 048f2h		;4595	cd f2 48 	. . H 
	ld a,057h		;4598	3e 57 	> W 
	call 0495ah		;459a	cd 5a 49 	. Z I 
	call 01b76h		;459d	cd 76 1b 	. v . 
	ld a,(08119h)		;45a0	3a 19 81 	: . . 
	call 0495ah		;45a3	cd 5a 49 	. Z I 
	jp 043d8h		;45a6	c3 d8 43 	. . C 
	ld a,(0823dh)		;45a9	3a 3d 82 	: = . 
	or a			;45ac	b7 	. 
	jp z,044dch		;45ad	ca dc 44 	. . D 
	ld a,082h		;45b0	3e 82 	> . 
	out (081h),a		;45b2	d3 81 	. . 
	call 01224h		;45b4	cd 24 12 	. $ . 
	ld a,06bh		;45b7	3e 6b 	> k 
	call 048f2h		;45b9	cd f2 48 	. . H 
	ld a,(08111h)		;45bc	3a 11 81 	: . . 
	or a			;45bf	b7 	. 
	jr nz,$+18		;45c0	20 10 	  . 
	ld a,(08115h)		;45c2	3a 15 81 	: . . 
	or a			;45c5	b7 	. 
	jr nz,$+12		;45c6	20 0a 	  . 
	ld (08212h),a		;45c8	32 12 82 	2 . . 
	ld (08211h),a		;45cb	32 11 82 	2 . . 
	xor a			;45ce	af 	. 
	ld (0e408h),a		;45cf	32 08 e4 	2 . . 
	xor a			;45d2	af 	. 
	ld (08017h),a		;45d3	32 17 80 	2 . . 
	call 044e3h		;45d6	cd e3 44 	. . D 
	jp 043d8h		;45d9	c3 d8 43 	. . C 
	xor a			;45dc	af 	. 
	ld (0823ch),a		;45dd	32 3c 82 	2 < . 
	jp 043d8h		;45e0	c3 d8 43 	. . C 
	ld (0823ch),a		;45e3	32 3c 82 	2 < . 
	ld (0823dh),a		;45e6	32 3d 82 	2 = . 
	ld (08210h),a		;45e9	32 10 82 	2 . . 
	ld (08213h),a		;45ec	32 13 82 	2 . . 
	ld (08214h),a		;45ef	32 14 82 	2 . . 
	ret			;45f2	c9 	. 
	ld hl,(0800ah)		;45f3	2a 0a 80 	* . . 
	ex de,hl			;45f6	eb 	. 
	ld hl,(08004h)		;45f7	2a 04 80 	* . . 
	ld a,l			;45fa	7d 	} 
	and 0f8h		;45fb	e6 f8 	. . 
	ld l,a			;45fd	6f 	o 
	ld a,e			;45fe	7b 	{ 
	or 007h		;45ff	f6 07 	. . 
	ld e,a			;4601	5f 	_ 
	and 0feh		;4602	e6 fe 	. . 
	rrca			;4604	0f 	. 
	ld b,a			;4605	47 	G 
	cpl			;4606	2f 	/ 
	add a,l			;4607	85 	. 
	jr c,$+3		;4608	38 01 	8 . 
	xor a			;460a	af 	. 
	ld l,a			;460b	6f 	o 
	add a,e			;460c	83 	. 
	jr nc,$+5		;460d	30 03 	0 . 
	ld a,e			;460f	7b 	{ 
	cpl			;4610	2f 	/ 
	ld l,a			;4611	6f 	o 
	ld a,h			;4612	7c 	| 
	and 0f8h		;4613	e6 f8 	. . 
	ld h,a			;4615	67 	g 
	ld a,d			;4616	7a 	z 
	or 007h		;4617	f6 07 	. . 
	ld b,a			;4619	47 	G 
	ld a,(0814eh)		;461a	3a 4e 81 	: N . 
	cp 001h		;461d	fe 01 	. . 
	jr nz,$+3		;461f	20 01 	  . 
	ld b,d			;4621	42 	B 
	ld a,b			;4622	78 	x 
	ld d,a			;4623	57 	W 
	and 0feh		;4624	e6 fe 	. . 
	rrca			;4626	0f 	. 
	ld b,a			;4627	47 	G 
	add a,000h		;4628	c6 00 	. . 
	cpl			;462a	2f 	/ 
	add a,000h		;462b	c6 00 	. . 
	add a,h			;462d	84 	. 
	push af			;462e	f5 	. 
	sub 000h		;462f	d6 00 	. . 
	pop af			;4631	f1 	. 
	jr c,$+3		;4632	38 01 	8 . 
	xor a			;4634	af 	. 
	ld h,a			;4635	67 	g 
	add a,000h		;4636	c6 00 	. . 
	add a,d			;4638	82 	. 
	push af			;4639	f5 	. 
	sub 000h		;463a	d6 00 	. . 
	pop af			;463c	f1 	. 
	jr nc,$+7		;463d	30 05 	0 . 
	ld a,d			;463f	7a 	z 
	add a,000h		;4640	c6 00 	. . 
	cpl			;4642	2f 	/ 
	ld h,a			;4643	67 	g 
	ld (08008h),hl		;4644	22 08 80 	" . . 
	ex de,hl			;4647	eb 	. 
	ld (0800eh),hl		;4648	22 0e 80 	" . . 
	call 00af4h		;464b	cd f4 0a 	. . . 
	ld hl,(08008h)		;464e	2a 08 80 	* . . 
	ld a,h			;4651	7c 	| 
	sub 004h		;4652	d6 04 	. . 
	jr nc,$+4		;4654	30 02 	0 . 
	ld a,000h		;4656	3e 00 	> . 
	ld h,a			;4658	67 	g 
	ld a,l			;4659	7d 	} 
	sub 004h		;465a	d6 04 	. . 
	jr nc,$+4		;465c	30 02 	0 . 
	ld a,000h		;465e	3e 00 	> . 
	ld l,a			;4660	6f 	o 
	ld (08006h),hl		;4661	22 06 80 	" . . 
	ld hl,(0800eh)		;4664	2a 0e 80 	* . . 
	ld (0800ch),hl		;4667	22 0c 80 	" . . 
	ret			;466a	c9 	. 
	inc sp			;466b	33 	3 
	inc (hl)			;466c	34 	4 
	jr c,$+53		;466d	38 33 	8 3 
	inc sp			;466f	33 	3 
	jr c,$+47		;4670	38 2d 	8 - 
	scf			;4672	37 	7 
	jr nc,$+51		;4673	30 31 	0 1 
	add hl,sp			;4675	39 	9 
	ld l,031h		;4676	2e 31 	. 1 
	ld (hl),036h		;4678	36 36 	6 6 
	cpl			;467a	2f 	/ 
	ld (0312eh),a		;467b	32 2e 31 	2 . 1 
	jr nz,$+34		;467e	20 20 	    
	ld b,d			;4680	42 	B 
	ld b,c			;4681	41 	A 
	jr nz,$+34		;4682	20 20 	    
	jr z,$+69		;4684	28 43 	( C 
	add hl,hl			;4686	29 	) 
	jr nz,$+69		;4687	20 43 	  C 
	ld b,c			;4689	41 	A 
	ld d,d			;468a	52 	R 
	ld c,h			;468b	4c 	L 
	jr nz,$+92		;468c	20 5a 	  Z 
	ld b,l			;468e	45 	E 
	ld c,c			;468f	49 	I 
	ld d,e			;4690	53 	S 
	ld d,e			;4691	53 	S 
	jr nz,$+89		;4692	20 57 	  W 
	ld l,047h		;4694	2e 47 	. G 
	ld b,l			;4696	45 	E 
	ld d,d			;4697	52 	R 
	ld c,l			;4698	4d 	M 
	ld b,c			;4699	41 	A 
	ld c,(hl)			;469a	4e 	N 
	ld e,c			;469b	59 	Y 
	jr nz,$+51		;469c	20 31 	  1 
	add hl,sp			;469e	39 	9 
	jr c,$+57		;469f	38 37 	8 7 
	inc l			;46a1	2c 	, 
	ld sp,03939h		;46a2	31 39 39 	1 9 9 
	ld sp,03930h		;46a5	31 30 39 	1 0 9 
	ld sp,03930h		;46a8	31 30 39 	1 0 9 
	ld sp,0200ah		;46ab	31 0a 20 	1 .   
	jr nz,$+34		;46ae	20 20 	    
	jr nz,$+34		;46b0	20 20 	    
	ld l,e			;46b2	6b 	k 
	ld d,(hl)			;46b3	56 	V 
	ld a,(bc)			;46b4	0a 	. 
	ld a,(bc)			;46b5	0a 	. 
	jr nz,$+34		;46b6	20 20 	    
	jr nz,$+34		;46b8	20 20 	    
	jr nz,$+111		;46ba	20 6d 	  m 
	ld l,l			;46bc	6d 	m 
	ld a,(bc)			;46bd	0a 	. 
	ld a,(bc)			;46be	0a 	. 
	ld a,(bc)			;46bf	0a 	. 
	ld a,b			;46c0	78 	x 
	ld a,(bc)			;46c1	0a 	. 
	ld a,(bc)			;46c2	0a 	. 
	ld a,(bc)			;46c3	0a 	. 
	jr nz,$+34		;46c4	20 20 	    
	jr nz,$+34		;46c6	20 20 	    
	jr nz,$+34		;46c8	20 20 	    
	jr nz,$+12		;46ca	20 0a 	  . 
	ld a,(bc)			;46cc	0a 	. 
	xor h			;46cd	ac 	. 
	xor h			;46ce	ac 	. 
	xor h			;46cf	ac 	. 
	xor h			;46d0	ac 	. 
	xor h			;46d1	ac 	. 
	xor h			;46d2	ac 	. 
	xor h			;46d3	ac 	. 
	ld a,(bc)			;46d4	0a 	. 
	ld a,(bc)			;46d5	0a 	. 
	ld a,(bc)			;46d6	0a 	. 
	ld a,(bc)			;46d7	0a 	. 
	ld a,(bc)			;46d8	0a 	. 
	ld a,(bc)			;46d9	0a 	. 
	ld a,(bc)			;46da	0a 	. 
	xor h			;46db	ac 	. 
	xor h			;46dc	ac 	. 
	xor h			;46dd	ac 	. 
	xor h			;46de	ac 	. 
	xor h			;46df	ac 	. 
	xor h			;46e0	ac 	. 
	xor h			;46e1	ac 	. 
	ld a,(bc)			;46e2	0a 	. 
	ld a,(bc)			;46e3	0a 	. 
	jr nz,$+34		;46e4	20 20 	    
	jr nz,$+34		;46e6	20 20 	    
	jr nz,$+34		;46e8	20 20 	    
	jr nz,$+12		;46ea	20 0a 	  . 
	ld a,(bc)			;46ec	0a 	. 
	inc hl			;46ed	23 	# 
	ld a,(bc)			;46ee	0a 	. 
	ld a,(bc)			;46ef	0a 	. 
	ld a,(bc)			;46f0	0a 	. 
	ld a,(bc)			;46f1	0a 	. 
	ld a,(bc)			;46f2	0a 	. 
	ld a,(bc)			;46f3	0a 	. 
	ld a,(bc)			;46f4	0a 	. 
	ld a,(bc)			;46f5	0a 	. 
	ld a,(bc)			;46f6	0a 	. 
	ld a,(bc)			;46f7	0a 	. 
	dec c			;46f8	0d 	. 
	ld a,(08241h)		;46f9	3a 41 82 	: A . 
	or a			;46fc	b7 	. 
	jp nz,04882h		;46fd	c2 82 48 	. . H 
	ld a,(0823fh)		;4700	3a 3f 82 	: ? . 
	or a			;4703	b7 	. 
	jp nz,04882h		;4704	c2 82 48 	. . H 
	ld a,(08242h)		;4707	3a 42 82 	: B . 
	or a			;470a	b7 	. 
	jp nz,04882h		;470b	c2 82 48 	. . H 
	ld a,(0810dh)		;470e	3a 0d 81 	: . . 
	or a			;4711	b7 	. 
	jp z,04882h		;4712	ca 82 48 	. . H 
	ld a,(08210h)		;4715	3a 10 82 	: . . 
	or a			;4718	b7 	. 
	jp nz,04882h		;4719	c2 82 48 	. . H 
	ld a,(08143h)		;471c	3a 43 81 	: C . 
	or a			;471f	b7 	. 
	jp z,04882h		;4720	ca 82 48 	. . H 
	ld a,(0821ch)		;4723	3a 1c 82 	: . . 
	or a			;4726	b7 	. 
	call nz,04890h		;4727	c4 90 48 	. . H 
	ld a,(0822ah)		;472a	3a 2a 82 	: * . 
	or a			;472d	b7 	. 
	jr nz,$+89		;472e	20 57 	  W 
	ld a,(08224h)		;4730	3a 24 82 	: $ . 
	or a			;4733	b7 	. 
	jr nz,$+11		;4734	20 09 	  . 
	ld a,(08117h)		;4736	3a 17 81 	: . . 
	ld hl,08116h		;4739	21 16 81 	! . . 
	cp (hl)			;473c	be 	. 
	jr z,$+30		;473d	28 1c 	( . 
	ld a,(08117h)		;473f	3a 17 81 	: . . 
	ld (08116h),a		;4742	32 16 81 	2 . . 
	or a			;4745	b7 	. 
	jr nz,$+65		;4746	20 3f 	  ? 
	call 0179ch		;4748	cd 9c 17 	. . . 
	xor a			;474b	af 	. 
	ld (08224h),a		;474c	32 24 82 	2 $ . 
	call 0495ah		;474f	cd 5a 49 	. Z I 
	call 048f2h		;4752	cd f2 48 	. . H 
	call 00efbh		;4755	cd fb 0e 	. . . 
	jp 0479ch		;4758	c3 9c 47 	. . G 
	ld a,085h		;475b	3e 85 	> . 
	out (081h),a		;475d	d3 81 	. . 
	call 01242h		;475f	cd 42 12 	. B . 
	set 2,a		;4762	cb d7 	. . 
	ld (0818dh),a		;4764	32 8d 81 	2 . . 
	out (080h),a		;4767	d3 80 	. . 
	ld a,001h		;4769	3e 01 	> . 
	ld (08214h),a		;476b	32 14 82 	2 . . 
	ld (08215h),a		;476e	32 15 82 	2 . . 
	ld (08216h),a		;4771	32 16 82 	2 . . 
	ld (08229h),a		;4774	32 29 82 	2 ) . 
	ld a,(08119h)		;4777	3a 19 81 	: . . 
	ld hl,08118h		;477a	21 18 81 	! . . 
	cp (hl)			;477d	be 	. 
	jr nz,$+9		;477e	20 07 	  . 
	ld a,(08259h)		;4780	3a 59 82 	: Y . 
	or a			;4783	b7 	. 
	jp nz,046d7h		;4784	c2 d7 46 	. . F 
	ld a,082h		;4787	3e 82 	> . 
	out (081h),a		;4789	d3 81 	. . 
	ld a,(0818ah)		;478b	3a 8a 81 	: . . 
	set 5,a		;478e	cb ef 	. . 
	ld (0818ah),a		;4790	32 8a 81 	2 . . 
	out (080h),a		;4793	d3 80 	. . 
	ld a,(08119h)		;4795	3a 19 81 	: . . 
	ld (08118h),a		;4798	32 18 81 	2 . . 
	ld a,(0825ah)		;479b	3a 5a 82 	: Z . 
	or a			;479e	b7 	. 
	ld a,02fh		;479f	3e 2f 	> / 
	call z,017b3h		;47a1	cc b3 17 	. . . 
	call 0489dh		;47a4	cd 9d 48 	. . H 
	ld a,068h		;47a7	3e 68 	> h 
	call 048f2h		;47a9	cd f2 48 	. . H 
	xor a			;47ac	af 	. 
	ld (0821fh),a		;47ad	32 1f 82 	2 . . 
	ld (0822ah),a		;47b0	32 2a 82 	2 * . 
	ld (08224h),a		;47b3	32 24 82 	2 $ . 
	ld (08269h),a		;47b6	32 69 82 	2 i . 
	ld (08128h),a		;47b9	32 28 81 	2 ( . 
	inc a			;47bc	3c 	< 
	ld (08117h),a		;47bd	32 17 81 	2 . . 
	ld (08116h),a		;47c0	32 16 81 	2 . . 
	ld (08211h),a		;47c3	32 11 82 	2 . . 
	ld (08212h),a		;47c6	32 12 82 	2 . . 
	ld (08259h),a		;47c9	32 59 82 	2 Y . 
	ld (0825ah),a		;47cc	32 5a 82 	2 Z . 
	ld (08231h),a		;47cf	32 31 82 	2 1 . 
	ld a,001h		;47d2	3e 01 	> . 
	ld (0e405h),a		;47d4	32 05 e4 	2 . . 
	ld a,(08142h)		;47d7	3a 42 81 	: B . 
	bit 0,a		;47da	cb 47 	. G 
	jp z,047a3h		;47dc	ca a3 47 	. . G 
	ld a,(08142h)		;47df	3a 42 81 	: B . 
	ld (08128h),a		;47e2	32 28 81 	2 ( . 
	ld a,(08269h)		;47e5	3a 69 82 	: i . 
	or a			;47e8	b7 	. 
	jp nz,0479ch		;47e9	c2 9c 47 	. . G 
	ld a,066h		;47ec	3e 66 	> f 
	call 048f2h		;47ee	cd f2 48 	. . H 
	ld hl,08142h		;47f1	21 42 81 	! B . 
	ld a,030h		;47f4	3e 30 	> 0 
	rld		;47f6	ed 6f 	. o 
	call 048f2h		;47f8	cd f2 48 	. . H 
	rld		;47fb	ed 6f 	. o 
	call 048f2h		;47fd	cd f2 48 	. . H 
	rld		;4800	ed 6f 	. o 
	ld a,084h		;4802	3e 84 	> . 
	out (081h),a		;4804	d3 81 	. . 
	ld a,(0818ch)		;4806	3a 8c 81 	: . . 
	res 6,a		;4809	cb b7 	. . 
	res 7,a		;480b	cb bf 	. . 
	ld (0818ch),a		;480d	32 8c 81 	2 . . 
	out (080h),a		;4810	d3 80 	. . 
	ld hl,00000h		;4812	21 00 00 	! . . 
	ld (08004h),hl		;4815	22 04 80 	" . . 
	ld hl,07fffh		;4818	21 ff 7f 	! .  
	ld (0800ah),hl		;481b	22 0a 80 	" . . 
	ld a,001h		;481e	3e 01 	> . 
	ld (0e405h),a		;4820	32 05 e4 	2 . . 
	ld (08269h),a		;4823	32 69 82 	2 i . 
	ld (0814eh),a		;4826	32 4e 81 	2 N . 
	ld hl,(08004h)		;4829	2a 04 80 	* . . 
	ld (08006h),hl		;482c	22 06 80 	" . . 
	ld (0e406h),hl		;482f	22 06 e4 	" . . 
	ld hl,08017h		;4832	21 17 80 	! . . 
	sla (hl)		;4835	cb 26 	. & 
	xor a			;4837	af 	. 
	ld (0814eh),a		;4838	32 4e 81 	2 N . 
	ld hl,0b903h		;483b	21 03 b9 	! . . 
	call 01b10h		;483e	cd 10 1b 	. . . 
	ld a,(08142h)		;4841	3a 42 81 	: B . 
	bit 0,a		;4844	cb 47 	. G 
	jp nz,0479ch		;4846	c2 9c 47 	. . G 
	bit 2,a		;4849	cb 57 	. W 
	jp nz,04758h		;484b	c2 58 47 	. X G 
	bit 4,a		;484e	cb 67 	. g 
	jp nz,0475eh		;4850	c2 5e 47 	. ^ G 
	ld hl,0b918h		;4853	21 18 b9 	! . . 
	jr $+11		;4856	18 09 	. . 
	ld hl,0b90ah		;4858	21 0a b9 	! . . 
	jp 04761h		;485b	c3 61 47 	. a G 
	ld hl,0b911h		;485e	21 11 b9 	! . . 
	call 01b10h		;4861	cd 10 1b 	. . . 
	ld a,066h		;4864	3e 66 	> f 
	call 048f2h		;4866	cd f2 48 	. . H 
	ld hl,08142h		;4869	21 42 81 	! B . 
	ld a,030h		;486c	3e 30 	> 0 
	rld		;486e	ed 6f 	. o 
	call 048f2h		;4870	cd f2 48 	. . H 
	rld		;4873	ed 6f 	. o 
	call 048f2h		;4875	cd f2 48 	. . H 
	rld		;4878	ed 6f 	. o 
	ld a,(08006h)		;487a	3a 06 80 	: . . 
	ld l,a			;487d	6f 	o 
	call 01bb2h		;487e	cd b2 1b 	. . . 
	call 048f2h		;4881	cd f2 48 	. . H 
	ld a,l			;4884	7d 	} 
	call 01bbah		;4885	cd ba 1b 	. . . 
	call 048f2h		;4888	cd f2 48 	. . H 
	ld a,(08007h)		;488b	3a 07 80 	: . . 
	ld l,a			;488e	6f 	o 
	call 01bb2h		;488f	cd b2 1b 	. . . 
	call 048f2h		;4892	cd f2 48 	. . H 
	ld a,l			;4895	7d 	} 
	call 01bbah		;4896	cd ba 1b 	. . . 
	call 048f2h		;4899	cd f2 48 	. . H 
	ret			;489c	c9 	. 
	xor a			;489d	af 	. 
	ld (08143h),a		;489e	32 43 81 	2 C . 
	jr $-5		;48a1	18 f9 	. . 
	xor a			;48a3	af 	. 
	ld (08269h),a		;48a4	32 69 82 	2 i . 
	ld a,(08142h)		;48a7	3a 42 81 	: B . 
	ld hl,08128h		;48aa	21 28 81 	! ( . 
	cp (hl)			;48ad	be 	. 
	jp nz,047e0h		;48ae	c2 e0 47 	. . G 
	call 01215h		;48b1	cd 15 12 	. . . 
	ld a,(08142h)		;48b4	3a 42 81 	: B . 
	bit 2,a		;48b7	cb 57 	. W 
	jr nz,$+81		;48b9	20 4f 	  O 
	bit 4,a		;48bb	cb 67 	. g 
	jp nz,04847h		;48bd	c2 47 48 	. G H 
	ld hl,00f1fh		;48c0	21 1f 0f 	! . . 
	ld (0800ah),hl		;48c3	22 0a 80 	" . . 
	ld a,(08182h)		;48c6	3a 82 81 	: . . 
	ld l,a			;48c9	6f 	o 
	ld a,(08183h)		;48ca	3a 83 81 	: . . 
	ld h,a			;48cd	67 	g 
	ld (08004h),hl		;48ce	22 04 80 	" . . 
	ld de,(08196h)		;48d1	ed 5b 96 81 	. [ . . 
	ld a,h			;48d5	7c 	| 
	cp d			;48d6	ba 	. 
	jr nz,$+24		;48d7	20 16 	  . 
	ld a,l			;48d9	7d 	} 
	cp e			;48da	bb 	. 
	jr nz,$+20		;48db	20 12 	  . 
	jp 0479ch		;48dd	c3 9c 47 	. . G 
	ld (08128h),a		;48e0	32 28 81 	2 ( . 
	ld hl,(08196h)		;48e3	2a 96 81 	* . . 
	dec hl			;48e6	2b 	+ 
	dec hl			;48e7	2b 	+ 
	dec hl			;48e8	2b 	+ 
	ld (08196h),hl		;48e9	22 96 81 	" . . 
	jp 047b1h		;48ec	c3 b1 47 	. . G 
	ld (08196h),hl		;48ef	22 96 81 	" . . 
	ld a,h			;48f2	7c 	| 
	bit 7,a		;48f3	cb 7f 	.  
	jp nz,047fdh		;48f5	c2 fd 47 	. . G 
	cp 070h		;48f8	fe 70 	. p 
	jp m,047ffh		;48fa	fa ff 47 	. . G 
	ld h,070h		;48fd	26 70 	& p 
	ld a,l			;48ff	7d 	} 
	cp 0e0h		;4900	fe e0 	. . 
	jp c,04841h		;4902	da 41 48 	. A H 
	ld l,0e0h		;4905	2e e0 	. . 
	jp 04841h		;4907	c3 41 48 	. A H 
	ld hl,03f7fh		;490a	21 7f 3f 	!  ? 
	ld (0800ah),hl		;490d	22 0a 80 	" . . 
	ld a,(08182h)		;4910	3a 82 81 	: . . 
	ld l,a			;4913	6f 	o 
	ld a,(08183h)		;4914	3a 83 81 	: . . 
	ld h,a			;4917	67 	g 
	ld (08004h),hl		;4918	22 04 80 	" . . 
	ld de,(08196h)		;491b	ed 5b 96 81 	. [ . . 
	ld a,h			;491f	7c 	| 
	cp d			;4920	ba 	. 
	jr nz,$+9		;4921	20 07 	  . 
	ld a,l			;4923	7d 	} 
	cp e			;4924	bb 	. 
	jr nz,$+5		;4925	20 03 	  . 
	jp 0479ch		;4927	c3 9c 47 	. . G 
	ld (08196h),hl		;492a	22 96 81 	" . . 
	ld a,h			;492d	7c 	| 
	bit 7,a		;492e	cb 7f 	.  
	jr nz,$+7		;4930	20 05 	  . 
	cp 040h		;4932	fe 40 	. @ 
	jp m,04839h		;4934	fa 39 48 	. 9 H 
	ld h,040h		;4937	26 40 	& @ 
	ld a,l			;4939	7d 	} 
	cp 080h		;493a	fe 80 	. . 
	jp c,04841h		;493c	da 41 48 	. A H 
	ld l,080h		;493f	2e 80 	. . 
	ld (08004h),hl		;4941	22 04 80 	" . . 
	jp 04729h		;4944	c3 29 47 	. ) G 
	ld hl,01f3fh		;4947	21 3f 1f 	! ? . 
	ld (0800ah),hl		;494a	22 0a 80 	" . . 
	ld a,(08182h)		;494d	3a 82 81 	: . . 
	ld l,a			;4950	6f 	o 
	ld a,(08183h)		;4951	3a 83 81 	: . . 
	ld h,a			;4954	67 	g 
	ld (08004h),hl		;4955	22 04 80 	" . . 
	ld de,(08196h)		;4958	ed 5b 96 81 	. [ . . 
	ld a,h			;495c	7c 	| 
	cp d			;495d	ba 	. 
	jr nz,$+9		;495e	20 07 	  . 
	ld a,l			;4960	7d 	} 
	cp e			;4961	bb 	. 
	jr nz,$+5		;4962	20 03 	  . 
	jp 0479ch		;4964	c3 9c 47 	. . G 
	ld (08196h),hl		;4967	22 96 81 	" . . 
	ld a,h			;496a	7c 	| 
	bit 7,a		;496b	cb 7f 	.  
	jp nz,04875h		;496d	c2 75 48 	. u H 
	cp 060h		;4970	fe 60 	. ` 
	jp m,04877h		;4972	fa 77 48 	. w H 
	ld h,060h		;4975	26 60 	& ` 
	ld a,l			;4977	7d 	} 
	cp 0c0h		;4978	fe c0 	. . 
	jp c,04841h		;497a	da 41 48 	. A H 
	ld l,0c0h		;497d	2e c0 	. . 
	jp 04841h		;497f	c3 41 48 	. A H 
	ld a,(0825ah)		;4982	3a 5a 82 	: Z . 
	or a			;4985	b7 	. 
	jp z,0479dh		;4986	ca 9d 47 	. . G 
	xor a			;4989	af 	. 
	ld (08116h),a		;498a	32 16 81 	2 . . 
	jp 01b19h		;498d	c3 19 1b 	. . . 
	call 04999h		;4990	cd 99 49 	. . I 
	or a			;4993	b7 	. 
	ret nz			;4994	c0 	. 
	ld (08117h),a		;4995	32 17 81 	2 . . 
	ld hl,0463fh		;4998	21 3f 46 	! ? F 
	ex (sp),hl			;499b	e3 	. 
	ret			;499c	c9 	. 
	ld a,(08218h)		;499d	3a 18 82 	: . . 
	or a			;49a0	b7 	. 
	jr nz,$+22		;49a1	20 14 	  . 
	ld a,(08119h)		;49a3	3a 19 81 	: . . 
	cp 034h		;49a6	fe 34 	. 4 
	call nc,048ech		;49a8	d4 ec 48 	. . H 
	ld a,052h		;49ab	3e 52 	> R 
	call 0495ah		;49ad	cd 5a 49 	. Z I 
	ld a,(08119h)		;49b0	3a 19 81 	: . . 
	call 0495ah		;49b3	cd 5a 49 	. Z I 
	ret			;49b6	c9 	. 
	ld a,(08142h)		;49b7	3a 42 81 	: B . 
	cp 001h		;49ba	fe 01 	. . 
	call nz,048e6h		;49bc	c4 e6 48 	. . H 
	ld a,(08119h)		;49bf	3a 19 81 	: . . 
	cp 032h		;49c2	fe 32 	. 2 
	call nc,048ech		;49c4	d4 ec 48 	. . H 
	ld a,(08188h)		;49c7	3a 88 81 	: . . 
	and 033h		;49ca	e6 33 	. 3 
	jr z,$+6		;49cc	28 04 	( . 
	ld a,031h		;49ce	3e 31 	> 1 
	jr $+4		;49d0	18 02 	. . 
	ld a,032h		;49d2	3e 32 	> 2 
	push af			;49d4	f5 	. 
	ld a,059h		;49d5	3e 59 	> Y 
	call 0495ah		;49d7	cd 5a 49 	. Z I 
	pop af			;49da	f1 	. 
	call 0495ah		;49db	cd 5a 49 	. Z I 
	ld a,(08121h)		;49de	3a 21 81 	: ! . 
	call 0495ah		;49e1	cd 5a 49 	. Z I 
	jr $-52		;49e4	18 ca 	. . 
	ld a,001h		;49e6	3e 01 	> . 
	ld (08142h),a		;49e8	32 42 81 	2 B . 
	ret			;49eb	c9 	. 
	ld a,001h		;49ec	3e 01 	> . 
	ld (0821ch),a		;49ee	32 1c 82 	2 . . 
	ret			;49f1	c9 	. 
	push bc			;49f2	c5 	. 
	push de			;49f3	d5 	. 
	push hl			;49f4	e5 	. 
	ld b,005h		;49f5	06 05 	. . 
	ld de,08000h		;49f7	11 00 80 	. . . 
	push af			;49fa	f5 	. 
	in a,(086h)		;49fb	db 86 	. . 
	and 004h		;49fd	e6 04 	. . 
	jr z,$-4		;49ff	28 fa 	( . 
	pop af			;4a01	f1 	. 
	ld l,a			;4a02	6f 	o 
	out (084h),a		;4a03	d3 84 	. . 
	ld c,086h		;4a05	0e 86 	. . 
	in h,(c)		;4a07	ed 60 	. ` 
	rr h		;4a09	cb 1c 	. . 
	jr nc,$+18		;4a0b	30 10 	0 . 
	res 1,c		;4a0d	cb 89 	. . 
	in h,(c)		;4a0f	ed 60 	. ` 
	ld a,l			;4a11	7d 	} 
	cp h			;4a12	bc 	. 
	jr z,$+25		;4a13	28 17 	( . 
	ld a,001h		;4a15	3e 01 	> . 
	ld (0a7f0h),a		;4a17	32 f0 a7 	2 . . 
	jp 00000h		;4a1a	c3 00 00 	. . . 
	dec de			;4a1d	1b 	. 
	ld a,d			;4a1e	7a 	z 
	or e			;4a1f	b3 	. 
	jr nz,$-27		;4a20	20 e3 	  . 
	djnz $-29		;4a22	10 e1 	. . 
	ld a,001h		;4a24	3e 01 	> . 
	ld (0a7f2h),a		;4a26	32 f2 a7 	2 . . 
	jp 00000h		;4a29	c3 00 00 	. . . 
	pop hl			;4a2c	e1 	. 
	pop de			;4a2d	d1 	. 
	pop bc			;4a2e	c1 	. 
	ret			;4a2f	c9 	. 
	push bc			;4a30	c5 	. 
	push de			;4a31	d5 	. 
	ld b,005h		;4a32	06 05 	. . 
	ld de,08000h		;4a34	11 00 80 	. . . 
	in a,(086h)		;4a37	db 86 	. . 
	rra			;4a39	1f 	. 
	jr nc,$+17		;4a3a	30 0f 	0 . 
	in a,(084h)		;4a3c	db 84 	. . 
	push af			;4a3e	f5 	. 
	in a,(086h)		;4a3f	db 86 	. . 
	and 004h		;4a41	e6 04 	. . 
	jr z,$-4		;4a43	28 fa 	( . 
	pop af			;4a45	f1 	. 
	out (084h),a		;4a46	d3 84 	. . 
	pop de			;4a48	d1 	. 
	pop bc			;4a49	c1 	. 
	ret			;4a4a	c9 	. 
	dec de			;4a4b	1b 	. 
	ld a,d			;4a4c	7a 	z 
	or e			;4a4d	b3 	. 
	jr nz,$-23		;4a4e	20 e7 	  . 
	djnz $-25		;4a50	10 e5 	. . 
	ld a,001h		;4a52	3e 01 	> . 
	ld (0a7f4h),a		;4a54	32 f4 a7 	2 . . 
	jp 00000h		;4a57	c3 00 00 	. . . 
	push hl			;4a5a	e5 	. 
	push bc			;4a5b	c5 	. 
	push de			;4a5c	d5 	. 
	push af			;4a5d	f5 	. 
	ld b,006h		;4a5e	06 06 	. . 
	ld de,08000h		;4a60	11 00 80 	. . . 
	in a,(087h)		;4a63	db 87 	. . 
	and 004h		;4a65	e6 04 	. . 
	jr z,$-4		;4a67	28 fa 	( . 
	pop af			;4a69	f1 	. 
	ld l,a			;4a6a	6f 	o 
	out (085h),a		;4a6b	d3 85 	. . 
	ld c,087h		;4a6d	0e 87 	. . 
	in h,(c)		;4a6f	ed 60 	. ` 
	rr h		;4a71	cb 1c 	. . 
	jr nc,$+15		;4a73	30 0d 	0 . 
	res 1,c		;4a75	cb 89 	. . 
	in h,(c)		;4a77	ed 60 	. ` 
	ld a,l			;4a79	7d 	} 
	cp h			;4a7a	bc 	. 
	jr z,$+22		;4a7b	28 14 	( . 
	ld a,001h		;4a7d	3e 01 	> . 
	ld (0a7f1h),a		;4a7f	32 f1 a7 	2 . . 
	dec de			;4a82	1b 	. 
	ld a,d			;4a83	7a 	z 
	or e			;4a84	b3 	. 
	jr nz,$-24		;4a85	20 e6 	  . 
	djnz $-26		;4a87	10 e4 	. . 
	ld a,001h		;4a89	3e 01 	> . 
	ld (0a7f3h),a		;4a8b	32 f3 a7 	2 . . 
	jp 00000h		;4a8e	c3 00 00 	. . . 
	xor a			;4a91	af 	. 
	ld (0a7f1h),a		;4a92	32 f1 a7 	2 . . 
	pop de			;4a95	d1 	. 
	pop bc			;4a96	c1 	. 
	pop hl			;4a97	e1 	. 
	ret			;4a98	c9 	. 
	in a,(087h)		;4a99	db 87 	. . 
	rrca			;4a9b	0f 	. 
	jr nc,$+14		;4a9c	30 0c 	0 . 
	in a,(085h)		;4a9e	db 85 	. . 
	push af			;4aa0	f5 	. 
	in a,(087h)		;4aa1	db 87 	. . 
	and 004h		;4aa3	e6 04 	. . 
	jr z,$-4		;4aa5	28 fa 	( . 
	pop af			;4aa7	f1 	. 
	out (085h),a		;4aa8	d3 85 	. . 
	ret			;4aaa	c9 	. 
	ld a,(08231h)		;4aab	3a 31 82 	: 1 . 
	or a			;4aae	b7 	. 
	jp nz,04a02h		;4aaf	c2 02 4a 	. . J 
	ld a,(08153h)		;4ab2	3a 53 81 	: S . 
	or a			;4ab5	b7 	. 
	jp z,04a03h		;4ab6	ca 03 4a 	. . J 
	ld a,(0827ch)		;4ab9	3a 7c 82 	: | . 
	or a			;4abc	b7 	. 
	jp nz,04a02h		;4abd	c2 02 4a 	. . J 
	ld a,075h		;4ac0	3e 75 	> u 
	call 048f2h		;4ac2	cd f2 48 	. . H 
	ld a,067h		;4ac5	3e 67 	> g 
	call 048f2h		;4ac7	cd f2 48 	. . H 
	ld a,06bh		;4aca	3e 6b 	> k 
	call 048f2h		;4acc	cd f2 48 	. . H 
	ld a,043h		;4acf	3e 43 	> C 
	call 048f2h		;4ad1	cd f2 48 	. . H 
	ld a,031h		;4ad4	3e 31 	> 1 
	call 048f2h		;4ad6	cd f2 48 	. . H 
	ld a,001h		;4ad9	3e 01 	> . 
	ld (0827ch),a		;4adb	32 7c 82 	2 | . 
	ld (08215h),a		;4ade	32 15 82 	2 . . 
	ld (08210h),a		;4ae1	32 10 82 	2 . . 
	ld (08211h),a		;4ae4	32 11 82 	2 . . 
	ld (08212h),a		;4ae7	32 12 82 	2 . . 
	ld a,086h		;4aea	3e 86 	> . 
	out (081h),a		;4aec	d3 81 	. . 
	ld a,(0818eh)		;4aee	3a 8e 81 	: . . 
	set 6,a		;4af1	cb f7 	. . 
	ld (0818eh),a		;4af3	32 8e 81 	2 . . 
	out (080h),a		;4af6	d3 80 	. . 
	ld a,(081c6h)		;4af8	3a c6 81 	: . . 
	res 1,a		;4afb	cb 8f 	. . 
	ld (081c6h),a		;4afd	32 c6 81 	2 . . 
	out (0a0h),a		;4b00	d3 a0 	. . 
	ret			;4b02	c9 	. 
	ld a,(0827ch)		;4b03	3a 7c 82 	: | . 
	or a			;4b06	b7 	. 
	jp z,04a02h		;4b07	ca 02 4a 	. . J 
	ld a,000h		;4b0a	3e 00 	> . 
	ld (0827ch),a		;4b0c	32 7c 82 	2 | . 
	ld (08215h),a		;4b0f	32 15 82 	2 . . 
	ld (08210h),a		;4b12	32 10 82 	2 . . 
	ld (08211h),a		;4b15	32 11 82 	2 . . 
	ld (08212h),a		;4b18	32 12 82 	2 . . 
	ld a,086h		;4b1b	3e 86 	> . 
	out (081h),a		;4b1d	d3 81 	. . 
	ld a,(0818eh)		;4b1f	3a 8e 81 	: . . 
	res 6,a		;4b22	cb b7 	. . 
	ld (0818eh),a		;4b24	32 8e 81 	2 . . 
	out (080h),a		;4b27	d3 80 	. . 
	ld a,043h		;4b29	3e 43 	> C 
	call 048f2h		;4b2b	cd f2 48 	. . H 
	ld a,032h		;4b2e	3e 32 	> 2 
	call 048f2h		;4b30	cd f2 48 	. . H 
	ld a,(081c6h)		;4b33	3a c6 81 	: . . 
	set 1,a		;4b36	cb cf 	. . 
	ld (081c6h),a		;4b38	32 c6 81 	2 . . 
	out (0a0h),a		;4b3b	d3 a0 	. . 
	jp 04a02h		;4b3d	c3 02 4a 	. . J 
	ld a,(08154h)		;4b40	3a 54 81 	: T . 
	or a			;4b43	b7 	. 
	jp z,04ae8h		;4b44	ca e8 4a 	. . J 
	ld a,(0810ch)		;4b47	3a 0c 81 	: . . 
	or a			;4b4a	b7 	. 
	jp z,04b02h		;4b4b	ca 02 4b 	. . K 
	ld a,(0883ch)		;4b4e	3a 3c 88 	: < . 
	or a			;4b51	b7 	. 
	jr nz,$+20		;4b52	20 12 	  . 
	ld a,(0883dh)		;4b54	3a 3d 88 	: = . 
	or a			;4b57	b7 	. 
	jr nz,$+14		;4b58	20 0c 	  . 
	ld a,(0827dh)		;4b5a	3a 7d 82 	: } . 
	or a			;4b5d	b7 	. 
	jr nz,$+96		;4b5e	20 5e 	  ^ 
	ld a,(08155h)		;4b60	3a 55 81 	: U . 
	or a			;4b63	b7 	. 
	jr nz,$+89		;4b64	20 57 	  W 
	ld a,083h		;4b66	3e 83 	> . 
	out (081h),a		;4b68	d3 81 	. . 
	ld a,(0818bh)		;4b6a	3a 8b 81 	: . . 
	set 6,a		;4b6d	cb f7 	. . 
	ld (0818bh),a		;4b6f	32 8b 81 	2 . . 
	out (080h),a		;4b72	d3 80 	. . 
	ld a,(0883ch)		;4b74	3a 3c 88 	: < . 
	or a			;4b77	b7 	. 
	jr nz,$+21		;4b78	20 13 	  . 
	ld a,(0883dh)		;4b7a	3a 3d 88 	: = . 
	or a			;4b7d	b7 	. 
	jr nz,$+15		;4b7e	20 0d 	  . 
	ld a,002h		;4b80	3e 02 	> . 
	ld (0827dh),a		;4b82	32 7d 82 	2 } . 
	ld a,(08118h)		;4b85	3a 18 81 	: . . 
	cp 032h		;4b88	fe 32 	. 2 
	jp m,04b02h		;4b8a	fa 02 4b 	. . K 
	ld a,002h		;4b8d	3e 02 	> . 
	ld (0827dh),a		;4b8f	32 7d 82 	2 } . 
	ld a,044h		;4b92	3e 44 	> D 
	call 048f2h		;4b94	cd f2 48 	. . H 
	ld a,031h		;4b97	3e 31 	> 1 
	call 048f2h		;4b99	cd f2 48 	. . H 
	ld a,(081d5h)		;4b9c	3a d5 81 	: . . 
	ld (0812bh),a		;4b9f	32 2b 81 	2 + . 
	call 01bb2h		;4ba2	cd b2 1b 	. . . 
	call 048f2h		;4ba5	cd f2 48 	. . H 
	ld a,(081d5h)		;4ba8	3a d5 81 	: . . 
	call 01bbah		;4bab	cd ba 1b 	. . . 
	call 048f2h		;4bae	cd f2 48 	. . H 
	ld a,(08118h)		;4bb1	3a 18 81 	: . . 
	ld (0812ch),a		;4bb4	32 2c 81 	2 , . 
	call 01bbah		;4bb7	cd ba 1b 	. . . 
	call 048f2h		;4bba	cd f2 48 	. . H 
	ret			;4bbd	c9 	. 
	ld a,(08118h)		;4bbe	3a 18 81 	: . . 
	cp 032h		;4bc1	fe 32 	. 2 
	jp m,04b02h		;4bc3	fa 02 4b 	. . K 
	ld a,(08155h)		;4bc6	3a 55 81 	: U . 
	or a			;4bc9	b7 	. 
	jr nz,$-13		;4bca	20 f1 	  . 
	ld a,(0827dh)		;4bcc	3a 7d 82 	: } . 
	cp 002h		;4bcf	fe 02 	. . 
	jp nz,04a8dh		;4bd1	c2 8d 4a 	. . J 
	ld a,(081d5h)		;4bd4	3a d5 81 	: . . 
	ld hl,0812bh		;4bd7	21 2b 81 	! + . 
	cp (hl)			;4bda	be 	. 
	jr nz,$-78		;4bdb	20 b0 	  . 
	ld a,(08118h)		;4bdd	3a 18 81 	: . . 
	ld hl,0812ch		;4be0	21 2c 81 	! , . 
	cp (hl)			;4be3	be 	. 
	jr nz,$-87		;4be4	20 a7 	  . 
	jr $-41		;4be6	18 d5 	. . 
	ld a,(0827dh)		;4be8	3a 7d 82 	: } . 
	or a			;4beb	b7 	. 
	jr z,$-47		;4bec	28 cf 	( . 
	ld a,083h		;4bee	3e 83 	> . 
	out (081h),a		;4bf0	d3 81 	. . 
	ld a,(0818bh)		;4bf2	3a 8b 81 	: . . 
	res 6,a		;4bf5	cb b7 	. . 
	ld (0818bh),a		;4bf7	32 8b 81 	2 . . 
	out (080h),a		;4bfa	d3 80 	. . 
	xor a			;4bfc	af 	. 
	ld (0827dh),a		;4bfd	32 7d 82 	2 } . 
	jr $+14		;4c00	18 0c 	. . 
	ld a,(0827dh)		;4c02	3a 7d 82 	: } . 
	cp 002h		;4c05	fe 02 	. . 
	jr nz,$-74		;4c07	20 b4 	  . 
	ld a,001h		;4c09	3e 01 	> . 
	ld (0827dh),a		;4c0b	32 7d 82 	2 } . 
	ld a,044h		;4c0e	3e 44 	> D 
	call 048f2h		;4c10	cd f2 48 	. . H 
	ld a,032h		;4c13	3e 32 	> 2 
	call 048f2h		;4c15	cd f2 48 	. . H 
	jr $-91		;4c18	18 a3 	. . 
	ld a,(08155h)		;4c1a	3a 55 81 	: U . 
	or a			;4c1d	b7 	. 
	jr z,$+38		;4c1e	28 24 	( $ 
	ld a,(0827eh)		;4c20	3a 7e 82 	: ~ . 
	or a			;4c23	b7 	. 
	jr nz,$+31		;4c24	20 1d 	  . 
	ld a,083h		;4c26	3e 83 	> . 
	out (081h),a		;4c28	d3 81 	. . 
	ld a,(0818bh)		;4c2a	3a 8b 81 	: . . 
	set 7,a		;4c2d	cb ff 	. . 
	ld (0818bh),a		;4c2f	32 8b 81 	2 . . 
	out (080h),a		;4c32	d3 80 	. . 
	ld a,001h		;4c34	3e 01 	> . 
	ld (0827eh),a		;4c36	32 7e 82 	2 ~ . 
	ld a,044h		;4c39	3e 44 	> D 
	call 048f2h		;4c3b	cd f2 48 	. . H 
	ld a,033h		;4c3e	3e 33 	> 3 
	call 048f2h		;4c40	cd f2 48 	. . H 
	ret			;4c43	c9 	. 
	ld a,(0827eh)		;4c44	3a 7e 82 	: ~ . 
	or a			;4c47	b7 	. 
	jr z,$-5		;4c48	28 f9 	( . 
	ld a,083h		;4c4a	3e 83 	> . 
	out (081h),a		;4c4c	d3 81 	. . 
	ld a,(0818bh)		;4c4e	3a 8b 81 	: . . 
	res 7,a		;4c51	cb bf 	. . 
	ld (0818bh),a		;4c53	32 8b 81 	2 . . 
	out (080h),a		;4c56	d3 80 	. . 
	xor a			;4c58	af 	. 
	ld (0827eh),a		;4c59	32 7e 82 	2 ~ . 
	ld a,044h		;4c5c	3e 44 	> D 
	call 048f2h		;4c5e	cd f2 48 	. . H 
	ld a,034h		;4c61	3e 34 	> 4 
	call 048f2h		;4c63	cd f2 48 	. . H 
	jr $-35		;4c66	18 db 	. . 
	ld a,(08216h)		;4c68	3a 16 82 	: . . 
	and 001h		;4c6b	e6 01 	. . 
	cp 001h		;4c6d	fe 01 	. . 
	jr z,$+9		;4c6f	28 07 	( . 
	ld a,(08144h)		;4c71	3a 44 81 	: D . 
	cp 001h		;4c74	fe 01 	. . 
	jr z,$+41		;4c76	28 27 	( ' 
	xor a			;4c78	af 	. 
	ld (08144h),a		;4c79	32 44 81 	2 D . 
	ld a,086h		;4c7c	3e 86 	> . 
	out (081h),a		;4c7e	d3 81 	. . 
	ld a,(0818eh)		;4c80	3a 8e 81 	: . . 
	res 0,a		;4c83	cb 87 	. . 
	ld (0818eh),a		;4c85	32 8e 81 	2 . . 
	out (080h),a		;4c88	d3 80 	. . 
	ld a,(08251h)		;4c8a	3a 51 82 	: Q . 
	cp 001h		;4c8d	fe 01 	. . 
	jp z,04bdeh		;4c8f	ca de 4b 	. . K 
	ld a,06fh		;4c92	3e 6f 	> o 
	call 048f2h		;4c94	cd f2 48 	. . H 
	ld a,001h		;4c97	3e 01 	> . 
	ld (08251h),a		;4c99	32 51 82 	2 Q . 
	jp 04bdeh		;4c9c	c3 de 4b 	. . K 
	ld a,086h		;4c9f	3e 86 	> . 
	out (081h),a		;4ca1	d3 81 	. . 
	ld a,(0818eh)		;4ca3	3a 8e 81 	: . . 
	set 0,a		;4ca6	cb c7 	. . 
	ld (0818eh),a		;4ca8	32 8e 81 	2 . . 
	out (080h),a		;4cab	d3 80 	. . 
	ld a,(08251h)		;4cad	3a 51 82 	: Q . 
	cp 001h		;4cb0	fe 01 	. . 
	jr z,$+11		;4cb2	28 09 	( . 
	ld a,(08186h)		;4cb4	3a 86 81 	: . . 
	ld hl,0812ah		;4cb7	21 2a 81 	! * . 
	cp (hl)			;4cba	be 	. 
	jr z,$+25		;4cbb	28 17 	( . 
	ld a,069h		;4cbd	3e 69 	> i 
	call 048f2h		;4cbf	cd f2 48 	. . H 
	ld a,(08186h)		;4cc2	3a 86 81 	: . . 
	call 01bb2h		;4cc5	cd b2 1b 	. . . 
	call 048f2h		;4cc8	cd f2 48 	. . H 
	ld a,(08186h)		;4ccb	3a 86 81 	: . . 
	call 01bbah		;4cce	cd ba 1b 	. . . 
	call 048f2h		;4cd1	cd f2 48 	. . H 
	xor a			;4cd4	af 	. 
	ld (08251h),a		;4cd5	32 51 82 	2 Q . 
	ld a,(08186h)		;4cd8	3a 86 81 	: . . 
	ld (0812ah),a		;4cdb	32 2a 81 	2 * . 
	ret			;4cde	c9 	. 
	ld a,(08215h)		;4cdf	3a 15 82 	: . . 
	and 001h		;4ce2	e6 01 	. . 
	cp 001h		;4ce4	fe 01 	. . 
	jr z,$+9		;4ce6	28 07 	( . 
	ld a,(08145h)		;4ce8	3a 45 81 	: E . 
	cp 001h		;4ceb	fe 01 	. . 
	jr z,$+45		;4ced	28 2b 	( + 
	xor a			;4cef	af 	. 
	ld (08145h),a		;4cf0	32 45 81 	2 E . 
	ld a,086h		;4cf3	3e 86 	> . 
	out (081h),a		;4cf5	d3 81 	. . 
	ld a,(0818eh)		;4cf7	3a 8e 81 	: . . 
	res 1,a		;4cfa	cb 8f 	. . 
	ld (0818eh),a		;4cfc	32 8e 81 	2 . . 
	out (080h),a		;4cff	d3 80 	. . 
	ld a,(08250h)		;4d01	3a 50 82 	: P . 
	cp 001h		;4d04	fe 01 	. . 
	jp z,04c5eh		;4d06	ca 5e 4c 	. ^ L 
	ld a,075h		;4d09	3e 75 	> u 
	call 048f2h		;4d0b	cd f2 48 	. . H 
	ld a,001h		;4d0e	3e 01 	> . 
	ld (08250h),a		;4d10	32 50 82 	2 P . 
	xor a			;4d13	af 	. 
	ld (08231h),a		;4d14	32 31 82 	2 1 . 
	jp 04c5eh		;4d17	c3 5e 4c 	. ^ L 
	ld a,086h		;4d1a	3e 86 	> . 
	out (081h),a		;4d1c	d3 81 	. . 
	ld a,(0818eh)		;4d1e	3a 8e 81 	: . . 
	set 1,a		;4d21	cb cf 	. . 
	ld (0818eh),a		;4d23	32 8e 81 	2 . . 
	out (080h),a		;4d26	d3 80 	. . 
	ld a,(08250h)		;4d28	3a 50 82 	: P . 
	cp 001h		;4d2b	fe 01 	. . 
	jr z,$+11		;4d2d	28 09 	( . 
	ld a,(08187h)		;4d2f	3a 87 81 	: . . 
	ld hl,08129h		;4d32	21 29 81 	! ) . 
	cp (hl)			;4d35	be 	. 
	jr z,$+25		;4d36	28 17 	( . 
	ld a,07ah		;4d38	3e 7a 	> z 
	call 048f2h		;4d3a	cd f2 48 	. . H 
	ld a,(08187h)		;4d3d	3a 87 81 	: . . 
	call 01bb2h		;4d40	cd b2 1b 	. . . 
	call 048f2h		;4d43	cd f2 48 	. . H 
	ld a,(08187h)		;4d46	3a 87 81 	: . . 
	call 01bbah		;4d49	cd ba 1b 	. . . 
	call 048f2h		;4d4c	cd f2 48 	. . H 
	xor a			;4d4f	af 	. 
	ld (08250h),a		;4d50	32 50 82 	2 P . 
	ld a,001h		;4d53	3e 01 	> . 
	ld (08231h),a		;4d55	32 31 82 	2 1 . 
	ld a,(08187h)		;4d58	3a 87 81 	: . . 
	ld (08129h),a		;4d5b	32 29 81 	2 ) . 
	ret			;4d5e	c9 	. 
	ld a,(08229h)		;4d5f	3a 29 82 	: ) . 
	or a			;4d62	b7 	. 
	jr nz,$+116		;4d63	20 72 	  r 
	ld a,(08113h)		;4d65	3a 13 81 	: . . 
	or a			;4d68	b7 	. 
	jr z,$+88		;4d69	28 56 	( V 
	ld a,038h		;4d6b	3e 38 	> 8 
	call 017b3h		;4d6d	cd b3 17 	. . . 
	call 00ef0h		;4d70	cd f0 0e 	. . . 
	call 02fd4h		;4d73	cd d4 2f 	. . / 
	ld a,082h		;4d76	3e 82 	> . 
	out (081h),a		;4d78	d3 81 	. . 
	ld a,(0818ah)		;4d7a	3a 8a 81 	: . . 
	set 3,a		;4d7d	cb df 	. . 
	ld (0818ah),a		;4d7f	32 8a 81 	2 . . 
	out (080h),a		;4d82	d3 80 	. . 
	ld hl,0818ah		;4d84	21 8a 81 	! . . 
	call 025c3h		;4d87	cd c3 25 	. . % 
	ld a,04ah		;4d8a	3e 4a 	> J 
	call 0495ah		;4d8c	cd 5a 49 	. Z I 
	ld a,06fh		;4d8f	3e 6f 	> o 
	call 048f2h		;4d91	cd f2 48 	. . H 
	ld a,075h		;4d94	3e 75 	> u 
	call 048f2h		;4d96	cd f2 48 	. . H 
	ld a,06ah		;4d99	3e 6a 	> j 
	call 048f2h		;4d9b	cd f2 48 	. . H 
	xor a			;4d9e	af 	. 
	ld (08253h),a		;4d9f	32 53 82 	2 S . 
	ld (08217h),a		;4da2	32 17 82 	2 . . 
	ld (08212h),a		;4da5	32 12 82 	2 . . 
	ld (08113h),a		;4da8	32 13 81 	2 . . 
	ld (08211h),a		;4dab	32 11 82 	2 . . 
	inc a			;4dae	3c 	< 
	ld (08215h),a		;4daf	32 15 82 	2 . . 
	ld (08216h),a		;4db2	32 16 82 	2 . . 
	ld (08210h),a		;4db5	32 10 82 	2 . . 
	ld a,(08116h)		;4db8	3a 16 81 	: . . 
	xor 001h		;4dbb	ee 01 	. . 
	ld (08116h),a		;4dbd	32 16 81 	2 . . 
	ret			;4dc0	c9 	. 
	xor a			;4dc1	af 	. 
	ld (08215h),a		;4dc2	32 15 82 	2 . . 
	ld (08216h),a		;4dc5	32 16 82 	2 . . 
	ld (08210h),a		;4dc8	32 10 82 	2 . . 
	ret			;4dcb	c9 	. 
	xor a			;4dcc	af 	. 
	ld (08229h),a		;4dcd	32 29 82 	2 ) . 
	ld (08112h),a		;4dd0	32 12 81 	2 . . 
	ld (08113h),a		;4dd3	32 13 81 	2 . . 
	ret			;4dd6	c9 	. 
	call 04cdch		;4dd7	cd dc 4c 	. . L 
	jr $-14		;4dda	18 f0 	. . 
	ld a,082h		;4ddc	3e 82 	> . 
	out (081h),a		;4dde	d3 81 	. . 
	ld a,(0818ah)		;4de0	3a 8a 81 	: . . 
	res 3,a		;4de3	cb 9f 	. . 
	ld (0818ah),a		;4de5	32 8a 81 	2 . . 
	out (080h),a		;4de8	d3 80 	. . 
	ret			;4dea	c9 	. 
	ld a,082h		;4deb	3e 82 	> . 
	out (081h),a		;4ded	d3 81 	. . 
	ld a,(0818ah)		;4def	3a 8a 81 	: . . 
	set 3,a		;4df2	cb df 	. . 
	ld (0818ah),a		;4df4	32 8a 81 	2 . . 
	out (080h),a		;4df7	d3 80 	. . 
	ret			;4df9	c9 	. 
	ret			;4dfa	c9 	. 
	ld a,(081c0h)		;4dfb	3a c0 81 	: . . 
	bit 1,a		;4dfe	cb 4f 	. O 
	jp nz,04de5h		;4e00	c2 e5 4d 	. . M 
	ld a,(08153h)		;4e03	3a 53 81 	: S . 
	or a			;4e06	b7 	. 
	jp nz,04de5h		;4e07	c2 e5 4d 	. . M 
	ld a,(08154h)		;4e0a	3a 54 81 	: T . 
	or a			;4e0d	b7 	. 
	jp nz,04de5h		;4e0e	c2 e5 4d 	. . M 
	ld a,(08155h)		;4e11	3a 55 81 	: U . 
	or a			;4e14	b7 	. 
	jp nz,04de5h		;4e15	c2 e5 4d 	. . M 
	ld a,(0813ah)		;4e18	3a 3a 81 	: : . 
	or a			;4e1b	b7 	. 
	jp z,04de5h		;4e1c	ca e5 4d 	. . M 
	ld a,(0813bh)		;4e1f	3a 3b 81 	: ; . 
	or a			;4e22	b7 	. 
	jp z,04de5h		;4e23	ca e5 4d 	. . M 
	ld a,(08228h)		;4e26	3a 28 82 	: ( . 
	or a			;4e29	b7 	. 
	jr nz,$+7		;4e2a	20 05 	  . 
	ld a,001h		;4e2c	3e 01 	> . 
	ld (08228h),a		;4e2e	32 28 82 	2 ( . 
	ld a,(08227h)		;4e31	3a 27 82 	: ' . 
	or a			;4e34	b7 	. 
	jp nz,04d3fh		;4e35	c2 3f 4d 	. ? M 
	ld a,(08278h)		;4e38	3a 78 82 	: x . 
	or a			;4e3b	b7 	. 
	call nz,04e1dh		;4e3c	c4 1d 4e 	. . N 
	ld a,(08138h)		;4e3f	3a 38 81 	: 8 . 
	or a			;4e42	b7 	. 
	jp z,04de5h		;4e43	ca e5 4d 	. . M 
	ld a,(08139h)		;4e46	3a 39 81 	: 9 . 
	or a			;4e49	b7 	. 
	jp nz,04deah		;4e4a	c2 ea 4d 	. . M 
	ld a,063h		;4e4d	3e 63 	> c 
	call 048f2h		;4e4f	cd f2 48 	. . H 
	ld a,031h		;4e52	3e 31 	> 1 
	call 048f2h		;4e54	cd f2 48 	. . H 
	call 04930h		;4e57	cd 30 49 	. 0 I 
	cp 06eh		;4e5a	fe 6e 	. n 
	jp z,04deah		;4e5c	ca ea 4d 	. . M 
	ld a,001h		;4e5f	3e 01 	> . 
	ld (0e413h),a		;4e61	32 13 e4 	2 . . 
	call 04e0eh		;4e64	cd 0e 4e 	. . N 
	ld de,0b943h		;4e67	11 43 b9 	. C . 
	ld hl,00367h		;4e6a	21 67 03 	! g . 
	ld (08012h),hl		;4e6d	22 12 80 	" . . 
	call 00c95h		;4e70	cd 95 0c 	. . . 
	ld a,081h		;4e73	3e 81 	> . 
	out (081h),a		;4e75	d3 81 	. . 
	ld a,(08138h)		;4e77	3a 38 81 	: 8 . 
	cp 001h		;4e7a	fe 01 	. . 
	jp z,04e06h		;4e7c	ca 06 4e 	. . N 
	ld a,(08189h)		;4e7f	3a 89 81 	: . . 
	set 4,a		;4e82	cb e7 	. . 
	ld (08189h),a		;4e84	32 89 81 	2 . . 
	out (080h),a		;4e87	d3 80 	. . 
	call 04e6ch		;4e89	cd 6c 4e 	. l N 
	xor a			;4e8c	af 	. 
	out (08ch),a		;4e8d	d3 8c 	. . 
	call 04e49h		;4e8f	cd 49 4e 	. I N 
	ld b,00fh		;4e92	06 0f 	. . 
	call 00545h		;4e94	cd 45 05 	. E . 
	ld a,063h		;4e97	3e 63 	> c 
	call 048f2h		;4e99	cd f2 48 	. . H 
	ld a,(08138h)		;4e9c	3a 38 81 	: 8 . 
	inc a			;4e9f	3c 	< 
	or 030h		;4ea0	f6 30 	. 0 
	call 048f2h		;4ea2	cd f2 48 	. . H 
	ld a,046h		;4ea5	3e 46 	> F 
	call 0495ah		;4ea7	cd 5a 49 	. Z I 
	ld a,032h		;4eaa	3e 32 	> 2 
	call 0495ah		;4eac	cd 5a 49 	. Z I 
	call 04e25h		;4eaf	cd 25 4e 	. % N 
	cp 072h		;4eb2	fe 72 	. r 
	jp nz,04dafh		;4eb4	c2 af 4d 	. . M 
	call 027bch		;4eb7	cd bc 27 	. . ' 
	ld a,081h		;4eba	3e 81 	> . 
	out (081h),a		;4ebc	d3 81 	. . 
	ld a,(08189h)		;4ebe	3a 89 81 	: . . 
	res 4,a		;4ec1	cb a7 	. . 
	res 7,a		;4ec3	cb bf 	. . 
	ld (08189h),a		;4ec5	32 89 81 	2 . . 
	out (080h),a		;4ec8	d3 80 	. . 
	call 00c78h		;4eca	cd 78 0c 	. x . 
	ld a,042h		;4ecd	3e 42 	> B 
	call 0495ah		;4ecf	cd 5a 49 	. Z I 
	ld a,(08118h)		;4ed2	3a 18 81 	: . . 
	call 0495ah		;4ed5	cd 5a 49 	. Z I 
	ld a,(08116h)		;4ed8	3a 16 81 	: . . 
	xor 001h		;4edb	ee 01 	. . 
	ld (08116h),a		;4edd	32 16 81 	2 . . 
	ld a,000h		;4ee0	3e 00 	> . 
	ld (0e413h),a		;4ee2	32 13 e4 	2 . . 
	xor a			;4ee5	af 	. 
	ld (08138h),a		;4ee6	32 38 81 	2 8 . 
	ret			;4ee9	c9 	. 
	ld de,0b9f3h		;4eea	11 f3 b9 	. . . 
	call 00c85h		;4eed	cd 85 0c 	. . . 
	ld de,0b9b4h		;4ef0	11 b4 b9 	. . . 
	ld hl,00360h		;4ef3	21 60 03 	! ` . 
	ld (08012h),hl		;4ef6	22 12 80 	" . . 
	call 00c95h		;4ef9	cd 95 0c 	. . . 
	ld a,001h		;4efc	3e 01 	> . 
	ld (08227h),a		;4efe	32 27 82 	2 ' . 
	ld (08278h),a		;4f01	32 78 82 	2 x . 
	jr $-31		;4f04	18 df 	. . 
	ld a,(08189h)		;4f06	3a 89 81 	: . . 
	set 7,a		;4f09	cb ff 	. . 
	jp 04d84h		;4f0b	c3 84 4d 	. . M 
	ld a,(08278h)		;4f0e	3a 78 82 	: x . 
	cp 001h		;4f11	fe 01 	. . 
	call z,04e1dh		;4f13	cc 1d 4e 	. . N 
	ld de,0b9f3h		;4f16	11 f3 b9 	. . . 
	call 00c85h		;4f19	cd 85 0c 	. . . 
	ret			;4f1c	c9 	. 
	call 00c78h		;4f1d	cd 78 0c 	. x . 
	xor a			;4f20	af 	. 
	ld (08278h),a		;4f21	32 78 82 	2 x . 
	ret			;4f24	c9 	. 
	ld c,0c8h		;4f25	0e c8 	. . 
	ld b,010h		;4f27	06 10 	. . 
	call 00545h		;4f29	cd 45 05 	. E . 
	in a,(086h)		;4f2c	db 86 	. . 
	rra			;4f2e	1f 	. 
	jr nc,$+15		;4f2f	30 0d 	0 . 
	in a,(084h)		;4f31	db 84 	. . 
	push af			;4f33	f5 	. 
	in a,(086h)		;4f34	db 86 	. . 
	and 004h		;4f36	e6 04 	. . 
	jr z,$-4		;4f38	28 fa 	( . 
	pop af			;4f3a	f1 	. 
	out (084h),a		;4f3b	d3 84 	. . 
	ret			;4f3d	c9 	. 
	dec c			;4f3e	0d 	. 
	jr nz,$-24		;4f3f	20 e6 	  . 
	ld a,001h		;4f41	3e 01 	> . 
	ld (0a7f6h),a		;4f43	32 f6 a7 	2 . . 
	jp 00000h		;4f46	c3 00 00 	. . . 
	ld a,001h		;4f49	3e 01 	> . 
	out (08dh),a		;4f4b	d3 8d 	. . 
	ld a,068h		;4f4d	3e 68 	> h 
	call 048f2h		;4f4f	cd f2 48 	. . H 
	ld a,057h		;4f52	3e 57 	> W 
	call 0495ah		;4f54	cd 5a 49 	. Z I 
	ld hl,06060h		;4f57	21 60 60 	! ` ` 
	ld (08006h),hl		;4f5a	22 06 80 	" . . 
	ld hl,03f3fh		;4f5d	21 3f 3f 	! ? ? 
	ld (0800ch),hl		;4f60	22 0c 80 	" . . 
	call 01b76h		;4f63	cd 76 1b 	. v . 
	ld a,039h		;4f66	3e 39 	> 9 
	call 0495ah		;4f68	cd 5a 49 	. Z I 
	ret			;4f6b	c9 	. 
	ld a,(0810dh)		;4f6c	3a 0d 81 	: . . 
	push af			;4f6f	f5 	. 
	ld a,(0810fh)		;4f70	3a 0f 81 	: . . 
	push af			;4f73	f5 	. 
	ld a,(08219h)		;4f74	3a 19 82 	: . . 
	push af			;4f77	f5 	. 
	ld a,(08216h)		;4f78	3a 16 82 	: . . 
	push af			;4f7b	f5 	. 
	ld a,(08144h)		;4f7c	3a 44 81 	: D . 
	push af			;4f7f	f5 	. 
	ld a,(08131h)		;4f80	3a 31 81 	: 1 . 
	push af			;4f83	f5 	. 
	xor a			;4f84	af 	. 
	ld (0810fh),a		;4f85	32 0f 81 	2 . . 
	ld a,001h		;4f88	3e 01 	> . 
	ld (08219h),a		;4f8a	32 19 82 	2 . . 
	call 01abah		;4f8d	cd ba 1a 	. . . 
	xor a			;4f90	af 	. 
	ld (08144h),a		;4f91	32 44 81 	2 D . 
	ld (08251h),a		;4f94	32 51 82 	2 Q . 
	inc a			;4f97	3c 	< 
	ld (08216h),a		;4f98	32 16 82 	2 . . 
	call 04b68h		;4f9b	cd 68 4b 	. h K 
	pop af			;4f9e	f1 	. 
	ld (08131h),a		;4f9f	32 31 81 	2 1 . 
	pop af			;4fa2	f1 	. 
	ld (08144h),a		;4fa3	32 44 81 	2 D . 
	pop af			;4fa6	f1 	. 
	ld (08216h),a		;4fa7	32 16 82 	2 . . 
	pop af			;4faa	f1 	. 
	ld (08219h),a		;4fab	32 19 82 	2 . . 
	pop af			;4fae	f1 	. 
	ld (0810fh),a		;4faf	32 0f 81 	2 . . 
	pop af			;4fb2	f1 	. 
	ld (0810dh),a		;4fb3	32 0d 81 	2 . . 
	ret			;4fb6	c9 	. 
	ld a,b			;4fb7	78 	x 
	sub (hl)			;4fb8	96 	. 
	jp p,04ed4h		;4fb9	f2 d4 4e 	. . N 
	ld a,(hl)			;4fbc	7e 	~ 
	sub b			;4fbd	90 	. 
	cp 002h		;4fbe	fe 02 	. . 
	jr z,$+51		;4fc0	28 31 	( 1 
	jp p,04ec8h		;4fc2	f2 c8 4e 	. . N 
	jp 04ef3h		;4fc5	c3 f3 4e 	. . N 
	cp 003h		;4fc8	fe 03 	. . 
	jr nz,$+6		;4fca	20 04 	  . 
	dec (hl)			;4fcc	35 	5 
	jp 04ee7h		;4fcd	c3 e7 4e 	. . N 
	ld (hl),b			;4fd0	70 	p 
	jp 04ee7h		;4fd1	c3 e7 4e 	. . N 
	cp 002h		;4fd4	fe 02 	. . 
	jr z,$+29		;4fd6	28 1b 	( . 
	jp p,04edeh		;4fd8	f2 de 4e 	. . N 
	jp 04ef3h		;4fdb	c3 f3 4e 	. . N 
	cp 003h		;4fde	fe 03 	. . 
	jr nz,$+6		;4fe0	20 04 	  . 
	inc (hl)			;4fe2	34 	4 
	jp 04ee7h		;4fe3	c3 e7 4e 	. . N 
	ld (hl),b			;4fe6	70 	p 
	ld a,(0829ah)		;4fe7	3a 9a 82 	: . . 
	or a			;4fea	b7 	. 
	call nz,0413bh		;4feb	c4 3b 41 	. ; A 
	ld a,000h		;4fee	3e 00 	> . 
	ld (0829ah),a		;4ff0	32 9a 82 	2 . . 
	ret			;4ff3	c9 	. 
	ld a,(0822eh)		;4ff4	3a 2e 82 	: . . 
	push af			;4ff7	f5 	. 
	xor a			;4ff8	af 	. 
	ld (0822eh),a		;4ff9	32 2e 82 	2 . . 
	ld a,(0813ch)		;4ffc	3a 3c 81 	: < . 
	cp 001h		;4fff	fe 01 	. . 
	jp nz,050a7h		;5001	c2 a7 50 	. . P 
	ld a,000h		;5004	3e 00 	> . 
	ld (0e408h),a		;5006	32 08 e4 	2 . . 
	call 04f30h		;5009	cd 30 4f 	. 0 O 
	ld a,(08254h)		;500c	3a 54 82 	: T . 
	or a			;500f	b7 	. 
	jp nz,04f75h		;5010	c2 75 4f 	. u O 
	xor a			;5013	af 	. 
	ld (08217h),a		;5014	32 17 82 	2 . . 
	ld (0826bh),a		;5017	32 6b 82 	2 k . 
	ld a,(08140h)		;501a	3a 40 81 	: @ . 
	res 2,a		;501d	cb 97 	. . 
	ld (08140h),a		;501f	32 40 81 	2 @ . 
	call 01dech		;5022	cd ec 1d 	. . . 
	xor a			;5025	af 	. 
	ld (08220h),a		;5026	32 20 82 	2   . 
	inc a			;5029	3c 	< 
	ld (08254h),a		;502a	32 54 82 	2 T . 
	jp 04f75h		;502d	c3 75 4f 	. u O 
	ld a,084h		;5030	3e 84 	> . 
	out (081h),a		;5032	d3 81 	. . 
	ld a,(0818ch)		;5034	3a 8c 81 	: . . 
	res 2,a		;5037	cb 97 	. . 
	res 4,a		;5039	cb a7 	. . 
	ld (0818ch),a		;503b	32 8c 81 	2 . . 
	out (080h),a		;503e	d3 80 	. . 
	ld a,000h		;5040	3e 00 	> . 
	ld (0e400h),a		;5042	32 00 e4 	2 . . 
	ld a,(08140h)		;5045	3a 40 81 	: @ . 
	bit 3,a		;5048	cb 5f 	. _ 
	call z,04cdch		;504a	cc dc 4c 	. . L 
	ld a,(08115h)		;504d	3a 15 81 	: . . 
	or a			;5050	b7 	. 
	jr nz,$+35		;5051	20 21 	  ! 
	ld a,(08125h)		;5053	3a 25 81 	: % . 
	or a			;5056	b7 	. 
	jr nz,$+29		;5057	20 1b 	  . 
	ld a,(08143h)		;5059	3a 43 81 	: C . 
	or a			;505c	b7 	. 
	jr nz,$+23		;505d	20 15 	  . 
	ld a,(08140h)		;505f	3a 40 81 	: @ . 
	bit 3,a		;5062	cb 5f 	. _ 
	jr nz,$+16		;5064	20 0e 	  . 
	ld a,084h		;5066	3e 84 	> . 
	out (081h),a		;5068	d3 81 	. . 
	ld a,(0818ch)		;506a	3a 8c 81 	: . . 
	res 7,a		;506d	cb bf 	. . 
	ld (0818ch),a		;506f	32 8c 81 	2 . . 
	out (080h),a		;5072	d3 80 	. . 
	ret			;5074	c9 	. 
	ld a,083h		;5075	3e 83 	> . 
	out (081h),a		;5077	d3 81 	. . 
	ld a,(0818bh)		;5079	3a 8b 81 	: . . 
	set 3,a		;507c	cb df 	. . 
	ld (0818bh),a		;507e	32 8b 81 	2 . . 
	out (080h),a		;5081	d3 80 	. . 
	ld a,003h		;5083	3e 03 	> . 
	ld (0e800h),a		;5085	32 00 e8 	2 . . 
	call 02fd4h		;5088	cd d4 2f 	. . / 
	call 02017h		;508b	cd 17 20 	. .   
	xor a			;508e	af 	. 
	out (08dh),a		;508f	d3 8d 	. . 
	ld a,010h		;5091	3e 10 	> . 
	out (09eh),a		;5093	d3 9e 	. . 
	ld a,042h		;5095	3e 42 	> B 
	call 0495ah		;5097	cd 5a 49 	. Z I 
	ld a,031h		;509a	3e 31 	> 1 
	call 0495ah		;509c	cd 5a 49 	. Z I 
	ld a,06fh		;509f	3e 6f 	> o 
	call 048f2h		;50a1	cd f2 48 	. . H 
	ld a,075h		;50a4	3e 75 	> u 
	call 048f2h		;50a6	cd f2 48 	. . H 
	ld a,067h		;50a9	3e 67 	> g 
	call 048f2h		;50ab	cd f2 48 	. . H 
	ld a,061h		;50ae	3e 61 	> a 
	call 048f2h		;50b0	cd f2 48 	. . H 
	ld a,043h		;50b3	3e 43 	> C 
	call 048f2h		;50b5	cd f2 48 	. . H 
	ld a,032h		;50b8	3e 32 	> 2 
	call 048f2h		;50ba	cd f2 48 	. . H 
	ld a,044h		;50bd	3e 44 	> D 
	call 048f2h		;50bf	cd f2 48 	. . H 
	ld a,032h		;50c2	3e 32 	> 2 
	call 048f2h		;50c4	cd f2 48 	. . H 
	ld a,044h		;50c7	3e 44 	> D 
	call 048f2h		;50c9	cd f2 48 	. . H 
	ld a,034h		;50cc	3e 34 	> 4 
	call 048f2h		;50ce	cd f2 48 	. . H 
	ld a,074h		;50d1	3e 74 	> t 
	call 048f2h		;50d3	cd f2 48 	. . H 
	ld a,00dh		;50d6	3e 0d 	> . 
	ld (087ffh),a		;50d8	32 ff 87 	2 . . 
	call 00c85h		;50db	cd 85 0c 	. . . 
	call 008d7h		;50de	cd d7 08 	. . . 
	call 0182ah		;50e1	cd 2a 18 	. * . 
	call 01882h		;50e4	cd 82 18 	. . . 
	call 003a4h		;50e7	cd a4 03 	. . . 
	in a,(04dh)		;50ea	db 4d 	. M 
	rrca			;50ec	0f 	. 
	rrca			;50ed	0f 	. 
	jr nc,$+81		;50ee	30 4f 	0 O 
	ld de,003e8h		;50f0	11 e8 03 	. . . 
	dec de			;50f3	1b 	. 
	ld a,d			;50f4	7a 	z 
	or e			;50f5	b3 	. 
	jr nz,$-3		;50f6	20 fb 	  . 
	ld a,040h		;50f8	3e 40 	> @ 
	out (081h),a		;50fa	d3 81 	. . 
	in a,(080h)		;50fc	db 80 	. . 
	ld (08149h),a		;50fe	32 49 81 	2 I . 
	in a,(04dh)		;5101	db 4d 	. M 
	rrca			;5103	0f 	. 
	rrca			;5104	0f 	. 
	jr c,$-21		;5105	38 e9 	8 . 
	ld a,(08149h)		;5107	3a 49 81 	: I . 
	cp 09bh		;510a	fe 9b 	. . 
	jr z,$+84		;510c	28 52 	( R 
	cp 08eh		;510e	fe 8e 	. . 
	jr z,$+66		;5110	28 40 	( @ 
	cp 0a4h		;5112	fe a4 	. . 
	jp z,050ach		;5114	ca ac 50 	. . P 
	cp 0a2h		;5117	fe a2 	. . 
	jp z,05105h		;5119	ca 05 51 	. . Q 
	cp 086h		;511c	fe 86 	. . 
	jp z,050cdh		;511e	ca cd 50 	. . P 
	cp 0a3h		;5121	fe a3 	. . 
	jp z,051ebh		;5123	ca eb 51 	. . Q 
	cp 095h		;5126	fe 95 	. . 
	jp z,05227h		;5128	ca 27 52 	. ' R 
	cp 088h		;512b	fe 88 	. . 
	jp z,05245h		;512d	ca 45 52 	. E R 
	cp 089h		;5130	fe 89 	. . 
	jp z,0524dh		;5132	ca 4d 52 	. M R 
	cp 08ah		;5135	fe 8a 	. . 
	jp z,05255h		;5137	ca 55 52 	. U R 
	cp 08bh		;513a	fe 8b 	. . 
	jp z,0525dh		;513c	ca 5d 52 	. ] R 
	ld a,(0827bh)		;513f	3a 7b 82 	: { . 
	cp 001h		;5142	fe 01 	. . 
	call z,0517dh		;5144	cc 7d 51 	. } Q 
	ld a,(0827bh)		;5147	3a 7b 82 	: { . 
	cp 002h		;514a	fe 02 	. . 
	call z,05131h		;514c	cc 31 51 	. 1 Q 
	jp 04fe1h		;514f	c3 e1 4f 	. . O 
	ld a,(0814bh)		;5152	3a 4b 81 	: K . 
	xor 001h		;5155	ee 01 	. . 
	ld (0814bh),a		;5157	32 4b 81 	2 K . 
	call 01987h		;515a	cd 87 19 	. . . 
	jp 04fe7h		;515d	c3 e7 4f 	. . O 
	call 051b1h		;5160	cd b1 51 	. . Q 
	call 00c78h		;5163	cd 78 0c 	. x . 
	ld a,083h		;5166	3e 83 	> . 
	out (081h),a		;5168	d3 81 	. . 
	ld a,(0818bh)		;516a	3a 8b 81 	: . . 
	res 3,a		;516d	cb 9f 	. . 
	ld (0818bh),a		;516f	32 8b 81 	2 . . 
	out (080h),a		;5172	d3 80 	. . 
	ld a,030h		;5174	3e 30 	> 0 
	ld (08118h),a		;5176	32 18 81 	2 . . 
	call 01dech		;5179	cd ec 1d 	. . . 
	call 027bch		;517c	cd bc 27 	. . ' 
	ld a,(081eeh)		;517f	3a ee 81 	: . . 
	cp 0ffh		;5182	fe ff 	. . 
	jr nz,$+9		;5184	20 07 	  . 
	call 00610h		;5186	cd 10 06 	. . . 
	xor a			;5189	af 	. 
	ld (081eeh),a		;518a	32 ee 81 	2 . . 
	xor a			;518d	af 	. 
	ld (08257h),a		;518e	32 57 82 	2 W . 
	ld (0e800h),a		;5191	32 00 e8 	2 . . 
	ld (0813ch),a		;5194	32 3c 81 	2 < . 
	ld (0827ch),a		;5197	32 7c 82 	2 | . 
	ld (0827dh),a		;519a	32 7d 82 	2 } . 
	ld (0827eh),a		;519d	32 7e 82 	2 ~ . 
	inc a			;51a0	3c 	< 
	ld (08250h),a		;51a1	32 50 82 	2 P . 
	ld (08251h),a		;51a4	32 51 82 	2 Q . 
	pop af			;51a7	f1 	. 
	ld (0822eh),a		;51a8	32 2e 82 	2 . . 
	ret			;51ab	c9 	. 
	ld a,(0827bh)		;51ac	3a 7b 82 	: { . 
	or a			;51af	b7 	. 
	jp z,0510bh		;51b0	ca 0b 51 	. . Q 
	cp 003h		;51b3	fe 03 	. . 
	jp z,0510bh		;51b5	ca 0b 51 	. . Q 
	call 051b1h		;51b8	cd b1 51 	. . Q 
	ld a,003h		;51bb	3e 03 	> . 
	ld (0e800h),a		;51bd	32 00 e8 	2 . . 
	ld a,042h		;51c0	3e 42 	> B 
	call 0495ah		;51c2	cd 5a 49 	. Z I 
	ld a,031h		;51c5	3e 31 	> 1 
	call 0495ah		;51c7	cd 5a 49 	. Z I 
	jp 04fe1h		;51ca	c3 e1 4f 	. . O 
	ld a,(0827bh)		;51cd	3a 7b 82 	: { . 
	cp 003h		;51d0	fe 03 	. . 
	jp z,04fe1h		;51d2	ca e1 4f 	. . O 
	ld a,(08131h)		;51d5	3a 31 81 	: 1 . 
	add a,044h		;51d8	c6 44 	. D 
	call 0495ah		;51da	cd 5a 49 	. Z I 
	ld a,(08131h)		;51dd	3a 31 81 	: 1 . 
	xor 001h		;51e0	ee 01 	. . 
	ld (08131h),a		;51e2	32 31 81 	2 1 . 
	out (08eh),a		;51e5	d3 8e 	. . 
	ld a,080h		;51e7	3e 80 	> . 
	out (081h),a		;51e9	d3 81 	. . 
	ld a,(08188h)		;51eb	3a 88 81 	: . . 
	xor 040h		;51ee	ee 40 	. @ 
	ld (08188h),a		;51f0	32 88 81 	2 . . 
	out (080h),a		;51f3	d3 80 	. . 
	ld hl,00000h		;51f5	21 00 00 	! . . 
	ld (08004h),hl		;51f8	22 04 80 	" . . 
	ld a,(0827bh)		;51fb	3a 7b 82 	: { . 
	cp 002h		;51fe	fe 02 	. . 
	jr nz,$-64		;5200	20 be 	  . 
	jp 04fe1h		;5202	c3 e1 4f 	. . O 
	call 05111h		;5205	cd 11 51 	. . Q 
	jp 04fe1h		;5208	c3 e1 4f 	. . O 
	call 05144h		;520b	cd 44 51 	. D Q 
	jp 04fe1h		;520e	c3 e1 4f 	. . O 
	ld a,(0827bh)		;5211	3a 7b 82 	: { . 
	cp 001h		;5214	fe 01 	. . 
	jr nz,$+45		;5216	20 2b 	  + 
	ld a,002h		;5218	3e 02 	> . 
	ld (0827bh),a		;521a	32 7b 82 	2 { . 
	ld a,084h		;521d	3e 84 	> . 
	out (081h),a		;521f	d3 81 	. . 
	ld a,(0818ch)		;5221	3a 8c 81 	: . . 
	set 2,a		;5224	cb d7 	. . 
	ld (0818ch),a		;5226	32 8c 81 	2 . . 
	out (080h),a		;5229	d3 80 	. . 
	ld hl,00000h		;522b	21 00 00 	! . . 
	ld (08004h),hl		;522e	22 04 80 	" . . 
	call 0517dh		;5231	cd 7d 51 	. } Q 
	jr z,$+15		;5234	28 0d 	( . 
	ld a,04ch		;5236	3e 4c 	> L 
	call 0495ah		;5238	cd 5a 49 	. Z I 
	call 01b98h		;523b	cd 98 1b 	. . . 
	ld a,031h		;523e	3e 31 	> 1 
	call 0495ah		;5240	cd 5a 49 	. Z I 
	ret			;5243	c9 	. 
	ld a,042h		;5244	3e 42 	> B 
	call 0495ah		;5246	cd 5a 49 	. Z I 
	ld a,031h		;5249	3e 31 	> 1 
	call 0495ah		;524b	cd 5a 49 	. Z I 
	ld a,(0827bh)		;524e	3a 7b 82 	: { . 
	cp 003h		;5251	fe 03 	. . 
	jr nz,$+7		;5253	20 05 	  . 
	ld a,074h		;5255	3e 74 	> t 
	call 048f2h		;5257	cd f2 48 	. . H 
	ld a,001h		;525a	3e 01 	> . 
	ld (0827bh),a		;525c	32 7b 82 	2 { . 
	ld a,084h		;525f	3e 84 	> . 
	out (081h),a		;5261	d3 81 	. . 
	ld a,(0818ch)		;5263	3a 8c 81 	: . . 
	set 4,a		;5266	cb e7 	. . 
	set 7,a		;5268	cb ff 	. . 
	ld (0818ch),a		;526a	32 8c 81 	2 . . 
	out (080h),a		;526d	d3 80 	. . 
	ld a,001h		;526f	3e 01 	> . 
	ld (0e400h),a		;5271	32 00 e4 	2 . . 
	ld (0e800h),a		;5274	32 00 e8 	2 . . 
	ld hl,00000h		;5277	21 00 00 	! . . 
	ld (08004h),hl		;527a	22 04 80 	" . . 
	call 051d2h		;527d	cd d2 51 	. . Q 
	ld a,001h		;5280	3e 01 	> . 
	ld (0e400h),a		;5282	32 00 e4 	2 . . 
	ld a,(08183h)		;5285	3a 83 81 	: . . 
	cp 03fh		;5288	fe 3f 	. ? 
	jr nc,$+9		;528a	30 07 	0 . 
	ld a,03fh		;528c	3e 3f 	> ? 
	ld (08183h),a		;528e	32 83 81 	2 . . 
	jr $+11		;5291	18 09 	. . 
	cp 0bfh		;5293	fe bf 	. . 
	jr c,$+7		;5295	38 05 	8 . 
	ld a,0bfh		;5297	3e bf 	> . 
	ld (08183h),a		;5299	32 83 81 	2 . . 
	ld (0e401h),a		;529c	32 01 e4 	2 . . 
	ld hl,(08004h)		;529f	2a 04 80 	* . . 
	cp h			;52a2	bc 	. 
	jr z,$+13		;52a3	28 0b 	( . 
	ld h,a			;52a5	67 	g 
	xor a			;52a6	af 	. 
	ld l,a			;52a7	6f 	o 
	ld (08004h),hl		;52a8	22 04 80 	" . . 
	call 00bddh		;52ab	cd dd 0b 	. . . 
	or 001h		;52ae	f6 01 	. . 
	ret			;52b0	c9 	. 
	xor a			;52b1	af 	. 
	ld (0827bh),a		;52b2	32 7b 82 	2 { . 
	ld a,084h		;52b5	3e 84 	> . 
	out (081h),a		;52b7	d3 81 	. . 
	ld a,(0818ch)		;52b9	3a 8c 81 	: . . 
	res 2,a		;52bc	cb 97 	. . 
	res 3,a		;52be	cb 9f 	. . 
	res 4,a		;52c0	cb a7 	. . 
	res 7,a		;52c2	cb bf 	. . 
	ld (0818ch),a		;52c4	32 8c 81 	2 . . 
	out (080h),a		;52c7	d3 80 	. . 
	call 00c01h		;52c9	cd 01 0c 	. . . 
	ld a,000h		;52cc	3e 00 	> . 
	ld (0e400h),a		;52ce	32 00 e4 	2 . . 
	ret			;52d1	c9 	. 
	ld a,002h		;52d2	3e 02 	> . 
	out (091h),a		;52d4	d3 91 	. . 
	call 0534ch		;52d6	cd 4c 53 	. L S 
	jr nc,$+17		;52d9	30 0f 	0 . 
	in a,(091h)		;52db	db 91 	. . 
	cp 0ffh		;52dd	fe ff 	. . 
	jr c,$+4		;52df	38 02 	8 . 
	ld a,0ffh		;52e1	3e ff 	> . 
	ld b,a			;52e3	47 	G 
	ld hl,08183h		;52e4	21 83 81 	! . . 
	call 04eb7h		;52e7	cd b7 4e 	. . N 
	ret			;52ea	c9 	. 
	call 051b5h		;52eb	cd b5 51 	. . Q 
	ld a,(0827bh)		;52ee	3a 7b 82 	: { . 
	cp 003h		;52f1	fe 03 	. . 
	jr nz,$+7		;52f3	20 05 	  . 
	ld a,074h		;52f5	3e 74 	> t 
	call 048f2h		;52f7	cd f2 48 	. . H 
	ld a,003h		;52fa	3e 03 	> . 
	ld (0827bh),a		;52fc	32 7b 82 	2 { . 
	ld a,084h		;52ff	3e 84 	> . 
	out (081h),a		;5301	d3 81 	. . 
	ld a,(0818ch)		;5303	3a 8c 81 	: . . 
	set 3,a		;5306	cb df 	. . 
	ld (0818ch),a		;5308	32 8c 81 	2 . . 
	out (080h),a		;530b	d3 80 	. . 
	ld a,049h		;530d	3e 49 	> I 
	call 0495ah		;530f	cd 5a 49 	. Z I 
	call 04999h		;5312	cd 99 49 	. . I 
	cp 000h		;5315	fe 00 	. . 
	jr nz,$-5		;5317	20 f9 	  . 
	xor a			;5319	af 	. 
	call 0495ah		;531a	cd 5a 49 	. Z I 
	xor a			;531d	af 	. 
	call 048f2h		;531e	cd f2 48 	. . H 
	call 051b5h		;5321	cd b5 51 	. . Q 
	jp 04fe1h		;5324	c3 e1 4f 	. . O 
	ld a,(0827bh)		;5327	3a 7b 82 	: { . 
	cp 003h		;532a	fe 03 	. . 
	jp nz,0503fh		;532c	c2 3f 50 	. ? P 
	ld a,042h		;532f	3e 42 	> B 
	call 0495ah		;5331	cd 5a 49 	. Z I 
	ld a,031h		;5334	3e 31 	> 1 
	call 0495ah		;5336	cd 5a 49 	. Z I 
	ld a,074h		;5339	3e 74 	> t 
	call 048f2h		;533b	cd f2 48 	. . H 
	xor a			;533e	af 	. 
	ld (0827bh),a		;533f	32 7b 82 	2 { . 
	jp 04fe1h		;5342	c3 e1 4f 	. . O 
	ld a,001h		;5345	3e 01 	> . 
	ld (08134h),a		;5347	32 34 81 	2 4 . 
	jp 05265h		;534a	c3 65 52 	. e R 
	ld a,001h		;534d	3e 01 	> . 
	ld (08135h),a		;534f	32 35 81 	2 5 . 
	jp 05265h		;5352	c3 65 52 	. e R 
	ld a,001h		;5355	3e 01 	> . 
	ld (08137h),a		;5357	32 37 81 	2 7 . 
	jp 05265h		;535a	c3 65 52 	. e R 
	ld a,001h		;535d	3e 01 	> . 
	ld (08136h),a		;535f	32 36 81 	2 6 . 
	jp 05265h		;5362	c3 65 52 	. e R 
	call 019a4h		;5365	cd a4 19 	. . . 
	jp 04fe1h		;5368	c3 e1 4f 	. . O 
	ld a,001h		;536b	3e 01 	> . 
	out (090h),a		;536d	d3 90 	. . 
	call 0534ch		;536f	cd 4c 53 	. L S 
	jr c,$+4		;5372	38 02 	8 . 
	jr $+11		;5374	18 09 	. . 
	in a,(090h)		;5376	db 90 	. . 
	ld b,a			;5378	47 	G 
	ld hl,08182h		;5379	21 82 81 	! . . 
	call 04eb7h		;537c	cd b7 4e 	. . N 
	ld a,002h		;537f	3e 02 	> . 
	out (091h),a		;5381	d3 91 	. . 
	call 0534ch		;5383	cd 4c 53 	. L S 
	jr c,$+4		;5386	38 02 	8 . 
	jr $+17		;5388	18 0f 	. . 
	in a,(091h)		;538a	db 91 	. . 
	cp 0ffh		;538c	fe ff 	. . 
	jr c,$+4		;538e	38 02 	8 . 
	ld a,0ffh		;5390	3e ff 	> . 
	ld b,a			;5392	47 	G 
	ld hl,08183h		;5393	21 83 81 	! . . 
	call 04eb7h		;5396	cd b7 4e 	. . N 
	ld a,004h		;5399	3e 04 	> . 
	out (092h),a		;539b	d3 92 	. . 
	call 0534ch		;539d	cd 4c 53 	. L S 
	jr c,$+4		;53a0	38 02 	8 . 
	jr $+11		;53a2	18 09 	. . 
	in a,(092h)		;53a4	db 92 	. . 
	ld b,a			;53a6	47 	G 
	ld hl,08184h		;53a7	21 84 81 	! . . 
	call 04eb7h		;53aa	cd b7 4e 	. . N 
	ld a,008h		;53ad	3e 08 	> . 
	out (093h),a		;53af	d3 93 	. . 
	call 0534ch		;53b1	cd 4c 53 	. L S 
	jr c,$+4		;53b4	38 02 	8 . 
	jr $+17		;53b6	18 0f 	. . 
	in a,(093h)		;53b8	db 93 	. . 
	cp 0ffh		;53ba	fe ff 	. . 
	jr c,$+4		;53bc	38 02 	8 . 
	ld a,0ffh		;53be	3e ff 	> . 
	ld b,a			;53c0	47 	G 
	ld hl,08185h		;53c1	21 85 81 	! . . 
	call 04eb7h		;53c4	cd b7 4e 	. . N 
	ld a,010h		;53c7	3e 10 	> . 
	out (094h),a		;53c9	d3 94 	. . 
	call 0534ch		;53cb	cd 4c 53 	. L S 
	jr c,$+4		;53ce	38 02 	8 . 
	jr $+11		;53d0	18 09 	. . 
	in a,(094h)		;53d2	db 94 	. . 
	ld b,a			;53d4	47 	G 
	ld hl,08186h		;53d5	21 86 81 	! . . 
	call 04eb7h		;53d8	cd b7 4e 	. . N 
	ld a,020h		;53db	3e 20 	>   
	out (095h),a		;53dd	d3 95 	. . 
	call 0534ch		;53df	cd 4c 53 	. L S 
	jr c,$+4		;53e2	38 02 	8 . 
	jr $+11		;53e4	18 09 	. . 
	in a,(095h)		;53e6	db 95 	. . 
	ld b,a			;53e8	47 	G 
	ld hl,08187h		;53e9	21 87 81 	! . . 
	call 04eb7h		;53ec	cd b7 4e 	. . N 
	ld a,040h		;53ef	3e 40 	> @ 
	out (096h),a		;53f1	d3 96 	. . 
	call 0534ch		;53f3	cd 4c 53 	. L S 
	jr c,$+4		;53f6	38 02 	8 . 
	jr $+11		;53f8	18 09 	. . 
	in a,(096h)		;53fa	db 96 	. . 
	ld b,a			;53fc	47 	G 
	ld hl,081d5h		;53fd	21 d5 81 	! . . 
	call 04eb7h		;5400	cd b7 4e 	. . N 
	ld b,0ffh		;5403	06 ff 	. . 
	in a,(088h)		;5405	db 88 	. . 
	or a			;5407	b7 	. 
	jr nz,$+8		;5408	20 06 	  . 
	djnz $-5		;540a	10 f9 	. . 
	ld l,031h		;540c	2e 31 	. 1 
	jr $+54		;540e	18 34 	. 4 
	ld l,031h		;5410	2e 31 	. 1 
	cp 001h		;5412	fe 01 	. . 
	jp z,05344h		;5414	ca 44 53 	. D S 
	inc l			;5417	2c 	, 
	cp 002h		;5418	fe 02 	. . 
	jp z,05344h		;541a	ca 44 53 	. D S 
	inc l			;541d	2c 	, 
	cp 004h		;541e	fe 04 	. . 
	jp z,05344h		;5420	ca 44 53 	. D S 
	inc l			;5423	2c 	, 
	cp 008h		;5424	fe 08 	. . 
	jp z,05344h		;5426	ca 44 53 	. D S 
	inc l			;5429	2c 	, 
	cp 010h		;542a	fe 10 	. . 
	jp z,05344h		;542c	ca 44 53 	. D S 
	inc l			;542f	2c 	, 
	cp 020h		;5430	fe 20 	.   
	jp z,05344h		;5432	ca 44 53 	. D S 
	inc l			;5435	2c 	, 
	cp 040h		;5436	fe 40 	. @ 
	jp z,05344h		;5438	ca 44 53 	. D S 
	inc l			;543b	2c 	, 
	cp 080h		;543c	fe 80 	. . 
	jp z,05344h		;543e	ca 44 53 	. D S 
	jp 05305h		;5441	c3 05 53 	. . S 
	ld a,l			;5444	7d 	} 
	ld (0e419h),a		;5445	32 19 e4 	2 . . 
	ld (08119h),a		;5448	32 19 81 	2 . . 
	ret			;544b	c9 	. 
	ld b,005h		;544c	06 05 	. . 
	nop			;544e	00 	. 
	djnz $-1		;544f	10 fd 	. . 
	in a,(04dh)		;5451	db 4d 	. M 
	rra			;5453	1f 	. 
	rra			;5454	1f 	. 
	rra			;5455	1f 	. 
	ret c			;5456	d8 	. 
	djnz $-6		;5457	10 f8 	. . 
	xor a			;5459	af 	. 
	ret			;545a	c9 	. 
	ld b,l			;545b	45 	E 
	ld d,e			;545c	53 	S 
	ld b,e			;545d	43 	C 
	add a,d			;545e	82 	. 
	ld e,(hl)			;545f	5e 	^ 
	ld c,a			;5460	4f 	O 
	jr nz,$-33		;5461	20 dd 	  . 
	push hl			;5463	e5 	. 
	ld a,(08132h)		;5464	3a 32 81 	: 2 . 
	cp 001h		;5467	fe 01 	. . 
	jr z,$+33		;5469	28 1f 	( . 
	ld a,(08133h)		;546b	3a 33 81 	: 3 . 
	cp 001h		;546e	fe 01 	. . 
	jp z,053e6h		;5470	ca e6 53 	. . S 
	ld a,(08222h)		;5473	3a 22 82 	: " . 
	cp 001h		;5476	fe 01 	. . 
	jr z,$+12		;5478	28 0a 	( . 
	xor a			;547a	af 	. 
	out (09ah),a		;547b	d3 9a 	. . 
	out (09bh),a		;547d	d3 9b 	. . 
	out (09ch),a		;547f	d3 9c 	. . 
	jp 054b1h		;5481	c3 b1 54 	. . T 
	call 055f9h		;5484	cd f9 55 	. . U 
	jp 054b1h		;5487	c3 b1 54 	. . T 
	ld a,068h		;548a	3e 68 	> h 
	call 048f2h		;548c	cd f2 48 	. . H 
	call 05522h		;548f	cd 22 55 	. " U 
	call 03149h		;5492	cd 49 31 	. I 1 
	ld hl,08284h		;5495	21 84 82 	! . . 
	call 0550eh		;5498	cd 0e 55 	. . U 
	ld a,082h		;549b	3e 82 	> . 
	out (081h),a		;549d	d3 81 	. . 
	ld a,(0818ah)		;549f	3a 8a 81 	: . . 
	set 0,a		;54a2	cb c7 	. . 
	ld (0818ah),a		;54a4	32 8a 81 	2 . . 
	out (080h),a		;54a7	d3 80 	. . 
	ld a,030h		;54a9	3e 30 	> 0 
	call 05503h		;54ab	cd 03 55 	. . U 
	ld bc,0000ah		;54ae	01 0a 00 	. . . 
	call 05538h		;54b1	cd 38 55 	. 8 U 
	ld a,031h		;54b4	3e 31 	> 1 
	call 05503h		;54b6	cd 03 55 	. . U 
	ld hl,00b04h		;54b9	21 04 0b 	! . . 
	call 055c9h		;54bc	cd c9 55 	. . U 
	ld bc,00320h		;54bf	01 20 03 	.   . 
	call 05538h		;54c2	cd 38 55 	. 8 U 
	call 055e3h		;54c5	cd e3 55 	. . U 
	call 0552dh		;54c8	cd 2d 55 	. - U 
	ld a,082h		;54cb	3e 82 	> . 
	out (081h),a		;54cd	d3 81 	. . 
	ld a,(0818ah)		;54cf	3a 8a 81 	: . . 
	res 0,a		;54d2	cb 87 	. . 
	ld (0818ah),a		;54d4	32 8a 81 	2 . . 
	out (080h),a		;54d7	d3 80 	. . 
	xor a			;54d9	af 	. 
	ld (08132h),a		;54da	32 32 81 	2 2 . 
	call 054b4h		;54dd	cd b4 54 	. . T 
	call 0559bh		;54e0	cd 9b 55 	. . U 
	jp 054b1h		;54e3	c3 b1 54 	. . T 
	ld a,(08218h)		;54e6	3a 18 82 	: . . 
	or a			;54e9	b7 	. 
	jp nz,054aah		;54ea	c2 aa 54 	. . T 
	ld a,079h		;54ed	3e 79 	> y 
	call 048f2h		;54ef	cd f2 48 	. . H 
	ld hl,(08196h)		;54f2	2a 96 81 	* . . 
	dec hl			;54f5	2b 	+ 
	dec hl			;54f6	2b 	+ 
	dec hl			;54f7	2b 	+ 
	ld (08196h),hl		;54f8	22 96 81 	" . . 
	ld a,000h		;54fb	3e 00 	> . 
	ld (08269h),a		;54fd	32 69 82 	2 i . 
	ld a,(08143h)		;5500	3a 43 81 	: C . 
	or a			;5503	b7 	. 
	jp nz,054aah		;5504	c2 aa 54 	. . T 
	call 03149h		;5507	cd 49 31 	. I 1 
	ld hl,08284h		;550a	21 84 82 	! . . 
	call 0550eh		;550d	cd 0e 55 	. . U 
	call 05522h		;5510	cd 22 55 	. " U 
	ld a,082h		;5513	3e 82 	> . 
	out (081h),a		;5515	d3 81 	. . 
	ld a,(0818ah)		;5517	3a 8a 81 	: . . 
	set 1,a		;551a	cb cf 	. . 
	ld (0818ah),a		;551c	32 8a 81 	2 . . 
	out (080h),a		;551f	d3 80 	. . 
	ld a,001h		;5521	3e 01 	> . 
	out (08dh),a		;5523	d3 8d 	. . 
	ld a,030h		;5525	3e 30 	> 0 
	call 05503h		;5527	cd 03 55 	. . U 
	ld bc,00050h		;552a	01 50 00 	. P . 
	call 05538h		;552d	cd 38 55 	. 8 U 
	ld a,(0a014h)		;5530	3a 14 a0 	: . . 
	cp 031h		;5533	fe 31 	. 1 
	jp m,05496h		;5535	fa 96 54 	. . T 
	cp 036h		;5538	fe 36 	. 6 
	jp p,05496h		;553a	f2 96 54 	. . T 
	add a,003h		;553d	c6 03 	. . 
	call 054f8h		;553f	cd f8 54 	. . T 
	ld hl,0535bh		;5542	21 5b 53 	! [ S 
	call 02628h		;5545	cd 28 26 	. ( & 
	call 055b1h		;5548	cd b1 55 	. . U 
	ld bc,03000h		;554b	01 00 30 	. . 0 
	call 05538h		;554e	cd 38 55 	. 8 U 
	or a			;5551	b7 	. 
	jr z,$+11		;5552	28 09 	( . 
	call 055e3h		;5554	cd e3 55 	. . U 
	call 038b4h		;5557	cd b4 38 	. . 8 
	jp 05496h		;555a	c3 96 54 	. . T 
	call 055e3h		;555d	cd e3 55 	. . U 
	call 038b4h		;5560	cd b4 38 	. . 8 
	ld a,090h		;5563	3e 90 	> . 
	ld (0e800h),a		;5565	32 00 e8 	2 . . 
	ld a,032h		;5568	3e 32 	> 2 
	call 05503h		;556a	cd 03 55 	. . U 
	ld bc,00078h		;556d	01 78 00 	. x . 
	call 05538h		;5570	cd 38 55 	. 8 U 
	call 00caah		;5573	cd aa 0c 	. . . 
	ld a,(08016h)		;5576	3a 16 80 	: . . 
	cp 000h		;5579	fe 00 	. . 
	jr z,$+24		;557b	28 16 	( . 
	ld hl,08287h		;557d	21 87 82 	! . . 
	call 0551ch		;5580	cd 1c 55 	. . U 
	ld a,081h		;5583	3e 81 	> . 
	ld (0e800h),a		;5585	32 00 e8 	2 . . 
	ld a,033h		;5588	3e 33 	> 3 
	call 05503h		;558a	cd 03 55 	. . U 
	ld bc,00100h		;558d	01 00 01 	. . . 
	call 05538h		;5590	cd 38 55 	. 8 U 
	call 054b4h		;5593	cd b4 54 	. . T 
	call 0552dh		;5596	cd 2d 55 	. - U 
	ld a,082h		;5599	3e 82 	> . 
	out (081h),a		;559b	d3 81 	. . 
	ld a,(0818ah)		;559d	3a 8a 81 	: . . 
	res 1,a		;55a0	cb 8f 	. . 
	ld (0818ah),a		;55a2	32 8a 81 	2 . . 
	out (080h),a		;55a5	d3 80 	. . 
	call 0559bh		;55a7	cd 9b 55 	. . U 
	xor a			;55aa	af 	. 
	ld (0e800h),a		;55ab	32 00 e8 	2 . . 
	ld (08133h),a		;55ae	32 33 81 	2 3 . 
	pop ix		;55b1	dd e1 	. . 
	ret			;55b3	c9 	. 
	ld b,003h		;55b4	06 03 	. . 
	ld hl,0817ah		;55b6	21 7a 81 	! z . 
	ld de,0a00eh		;55b9	11 0e a0 	. . . 
	ld a,(de)			;55bc	1a 	. 
	rld		;55bd	ed 6f 	. o 
	inc de			;55bf	13 	. 
	ld a,(de)			;55c0	1a 	. 
	rld		;55c1	ed 6f 	. o 
	inc de			;55c3	13 	. 
	inc hl			;55c4	23 	# 
	djnz $-9		;55c5	10 f5 	. . 
	ld hl,0817ch		;55c7	21 7c 81 	! | . 
	ld a,001h		;55ca	3e 01 	> . 
	add a,(hl)			;55cc	86 	. 
	daa			;55cd	27 	' 
	ld (hl),a			;55ce	77 	w 
	ld a,000h		;55cf	3e 00 	> . 
	dec hl			;55d1	2b 	+ 
	adc a,(hl)			;55d2	8e 	. 
	daa			;55d3	27 	' 
	ld (hl),a			;55d4	77 	w 
	ld a,000h		;55d5	3e 00 	> . 
	dec hl			;55d7	2b 	+ 
	adc a,(hl)			;55d8	8e 	. 
	daa			;55d9	27 	' 
	ld (hl),a			;55da	77 	w 
	ld b,003h		;55db	06 03 	. . 
	ld de,0a00eh		;55dd	11 0e a0 	. . . 
	ld hl,0817ah		;55e0	21 7a 81 	! z . 
	ld a,030h		;55e3	3e 30 	> 0 
	rld		;55e5	ed 6f 	. o 
	ld (de),a			;55e7	12 	. 
	inc de			;55e8	13 	. 
	rld		;55e9	ed 6f 	. o 
	ld (de),a			;55eb	12 	. 
	rld		;55ec	ed 6f 	. o 
	inc de			;55ee	13 	. 
	inc hl			;55ef	23 	# 
	djnz $-13		;55f0	10 f1 	. . 
	ld a,001h		;55f2	3e 01 	> . 
	ld (08223h),a		;55f4	32 23 82 	2 # . 
	ret			;55f7	c9 	. 
	push af			;55f8	f5 	. 
	ld a,(08143h)		;55f9	3a 43 81 	: C . 
	or a			;55fc	b7 	. 
	jr z,$+7		;55fd	28 05 	( . 
	ld a,05ah		;55ff	3e 5a 	> Z 
	jr $+5		;5601	18 03 	. . 
	push af			;5603	f5 	. 
	ld a,050h		;5604	3e 50 	> P 
	call 0495ah		;5606	cd 5a 49 	. Z I 
	pop af			;5609	f1 	. 
	call 0495ah		;560a	cd 5a 49 	. Z I 
	ret			;560d	c9 	. 
	inc hl			;560e	23 	# 
	inc hl			;560f	23 	# 
	ld a,(hl)			;5610	7e 	~ 
	out (09ah),a		;5611	d3 9a 	. . 
	out (09bh),a		;5613	d3 9b 	. . 
	dec hl			;5615	2b 	+ 
	ld a,(hl)			;5616	7e 	~ 
	out (09ah),a		;5617	d3 9a 	. . 
	out (09ch),a		;5619	d3 9c 	. . 
	dec hl			;561b	2b 	+ 
	ld a,(hl)			;561c	7e 	~ 
	out (09ah),a		;561d	d3 9a 	. . 
	out (09dh),a		;561f	d3 9d 	. . 
	ret			;5621	c9 	. 
	ld a,(081ach)		;5622	3a ac 81 	: . . 
	set 7,a		;5625	cb ff 	. . 
	ld (081ach),a		;5627	32 ac 81 	2 . . 
	out (089h),a		;562a	d3 89 	. . 
	ret			;562c	c9 	. 
	ld a,(081ach)		;562d	3a ac 81 	: . . 
	res 7,a		;5630	cb bf 	. . 
	ld (081ach),a		;5632	32 ac 81 	2 . . 
	out (089h),a		;5635	d3 89 	. . 
	ret			;5637	c9 	. 
	ld de,01c00h		;5638	11 00 1c 	. . . 
	in a,(087h)		;563b	db 87 	. . 
	rra			;563d	1f 	. 
	jr nc,$+8		;563e	30 06 	0 . 
	in a,(085h)		;5640	db 85 	. . 
	or a			;5642	b7 	. 
	jp z,0559ah		;5643	ca 9a 55 	. . U 
	dec de			;5646	1b 	. 
	ld a,d			;5647	7a 	z 
	or e			;5648	b3 	. 
	jr nz,$-14		;5649	20 f0 	  . 
	ld a,(08273h)		;564b	3a 73 82 	: s . 
	or a			;564e	b7 	. 
	jr z,$+47		;564f	28 2d 	( - 
	call 0051dh		;5651	cd 1d 05 	. . . 
	ld a,(0814ah)		;5654	3a 4a 81 	: J . 
	cp 00fh		;5657	fe 0f 	. . 
	jr z,$+56		;5659	28 36 	( 6 
	dec h			;565b	25 	% 
	ld a,h			;565c	7c 	| 
	or a			;565d	b7 	. 
	jr nz,$+32		;565e	20 1e 	  . 
	ld (ix+000h),0bch		;5660	dd 36 00 bc 	. 6 . . 
	push de			;5664	d5 	. 
	ld de,00020h		;5665	11 20 00 	.   . 
	add ix,de		;5668	dd 19 	. . 
	push hl			;566a	e5 	. 
	ld hl,0e7ffh		;566b	21 ff e7 	! . . 
	push ix		;566e	dd e5 	. . 
	pop de			;5670	d1 	. 
	or a			;5671	b7 	. 
	sbc hl,de		;5672	ed 52 	. R 
	jr nc,$+7		;5674	30 05 	0 . 
	ld de,0ffe0h		;5676	11 e0 ff 	. . . 
	add ix,de		;5679	dd 19 	. . 
	pop hl			;567b	e1 	. 
	pop de			;567c	d1 	. 
	ld h,l			;567d	65 	e 
	call 003a4h		;567e	cd a4 03 	. . . 
	ld de,01c00h		;5681	11 00 1c 	. . . 
	dec bc			;5684	0b 	. 
	ld a,b			;5685	78 	x 
	or c			;5686	b1 	. 
	jr nz,$-76		;5687	20 b2 	  . 
	ld a,001h		;5689	3e 01 	> . 
	ld (0a7f5h),a		;568b	32 f5 a7 	2 . . 
	jp 00000h		;568e	c3 00 00 	. . . 
	push af			;5691	f5 	. 
	xor a			;5692	af 	. 
	out (09ah),a		;5693	d3 9a 	. . 
	out (09bh),a		;5695	d3 9b 	. . 
	out (09ch),a		;5697	d3 9c 	. . 
	pop af			;5699	f1 	. 
	ret			;569a	c9 	. 
	ld a,06ah		;569b	3e 6a 	> j 
	call 048f2h		;569d	cd f2 48 	. . H 
	xor a			;56a0	af 	. 
	call 0495ah		;56a1	cd 5a 49 	. Z I 
	ld (0810eh),a		;56a4	32 0e 81 	2 . . 
	ld (08117h),a		;56a7	32 17 81 	2 . . 
	ld (08110h),a		;56aa	32 10 81 	2 . . 
	ld (08114h),a		;56ad	32 14 81 	2 . . 
	ret			;56b0	c9 	. 
	ld a,(0a014h)		;56b1	3a 14 a0 	: . . 
	sub 030h		;56b4	d6 30 	. 0 
	cp 00ah		;56b6	fe 0a 	. . 
	jp m,055bdh		;56b8	fa bd 55 	. . U 
	sub 007h		;56bb	d6 07 	. . 
	ld hl,043aah		;56bd	21 aa 43 	! . C 
	ld c,a			;56c0	4f 	O 
	ld b,000h		;56c1	06 00 	. . 
	add hl,bc			;56c3	09 	. 
	add hl,bc			;56c4	09 	. 
	ld d,(hl)			;56c5	56 	V 
	inc hl			;56c6	23 	# 
	ld e,(hl)			;56c7	5e 	^ 
	ex de,hl			;56c8	eb 	. 
	ld ix,0e427h		;56c9	dd 21 27 e4 	. ! ' . 
	ld (ix+000h),0bch		;56cd	dd 36 00 bc 	. 6 . . 
	ld ix,0e447h		;56d1	dd 21 47 e4 	. ! G . 
	ld (ix+000h),0bch		;56d5	dd 36 00 bc 	. 6 . . 
	ld ix,0e447h		;56d9	dd 21 47 e4 	. ! G . 
	ld a,001h		;56dd	3e 01 	> . 
	ld (08273h),a		;56df	32 73 82 	2 s . 
	ret			;56e2	c9 	. 
	ld ix,0e427h		;56e3	dd 21 27 e4 	. ! ' . 
	ld de,00020h		;56e7	11 20 00 	.   . 
	ld b,021h		;56ea	06 21 	. ! 
	ld (ix+000h),000h		;56ec	dd 36 00 00 	. 6 . . 
	add ix,de		;56f0	dd 19 	. . 
	djnz $-6		;56f2	10 f8 	. . 
	xor a			;56f4	af 	. 
	ld (08273h),a		;56f5	32 73 82 	2 s . 
	ret			;56f8	c9 	. 
	ld b,00ah		;56f9	06 0a 	. . 
	call 00545h		;56fb	cd 45 05 	. E . 
	ld a,(08195h)		;56fe	3a 95 81 	: . . 
	dec a			;5701	3d 	= 
	jr nz,$+16		;5702	20 0e 	  . 
	ld (08222h),a		;5704	32 22 82 	2 " . 
	call 00c78h		;5707	cd 78 0c 	. x . 
	ld a,000h		;570a	3e 00 	> . 
	ld (0e413h),a		;570c	32 13 e4 	2 . . 
	ld (0810eh),a		;570f	32 0e 81 	2 . . 
	ld (08195h),a		;5712	32 95 81 	2 . . 
	ret			;5715	c9 	. 
	call 058f9h		;5716	cd f9 58 	. . X 
	ret nz			;5719	c0 	. 
	ld a,062h		;571a	3e 62 	> b 
	call 048f2h		;571c	cd f2 48 	. . H 
	ld b,06eh		;571f	06 6e 	. n 
	call 04930h		;5721	cd 30 49 	. 0 I 
	cp b			;5724	b8 	. 
	jr nz,$+17		;5725	20 0f 	  . 
	ld a,(08223h)		;5727	3a 23 82 	: # . 
	cp 001h		;572a	fe 01 	. . 
	jp z,056d7h		;572c	ca d7 56 	. . V 
	xor a			;572f	af 	. 
	ld (08221h),a		;5730	32 21 82 	2 ! . 
	jp 05805h		;5733	c3 05 58 	. . X 
	ld a,001h		;5736	3e 01 	> . 
	ld (08221h),a		;5738	32 21 82 	2 ! . 
	ld hl,08160h		;573b	21 60 81 	! ` . 
	ld b,00ch		;573e	06 0c 	. . 
	call 04930h		;5740	cd 30 49 	. 0 I 
	ld (hl),a			;5743	77 	w 
	inc hl			;5744	23 	# 
	djnz $-5		;5745	10 f9 	. . 
	ld hl,08174h		;5747	21 74 81 	! t . 
	call 04930h		;574a	cd 30 49 	. 0 I 
	cp 041h		;574d	fe 41 	. A 
	jp m,05654h		;574f	fa 54 56 	. T V 
	sub 037h		;5752	d6 37 	. 7 
	rld		;5754	ed 6f 	. o 
	call 04930h		;5756	cd 30 49 	. 0 I 
	cp 041h		;5759	fe 41 	. A 
	jp m,05660h		;575b	fa 60 56 	. ` V 
	sub 037h		;575e	d6 37 	. 7 
	rld		;5760	ed 6f 	. o 
	ld a,(hl)			;5762	7e 	~ 
	ld (0e410h),a		;5763	32 10 e4 	2 . . 
	ld hl,08170h		;5766	21 70 81 	! p . 
	call 04930h		;5769	cd 30 49 	. 0 I 
	rld		;576c	ed 6f 	. o 
	call 04930h		;576e	cd 30 49 	. 0 I 
	cp 041h		;5771	fe 41 	. A 
	jp m,05678h		;5773	fa 78 56 	. x V 
	sub 037h		;5776	d6 37 	. 7 
	rld		;5778	ed 6f 	. o 
	ld a,(hl)			;577a	7e 	~ 
	ld (0e411h),a		;577b	32 11 e4 	2 . . 
	call 04930h		;577e	cd 30 49 	. 0 I 
	cp 040h		;5781	fe 40 	. @ 
	jp nz,056a7h		;5783	c2 a7 56 	. . V 
	ld a,(08239h)		;5786	3a 39 82 	: 9 . 
	or a			;5789	b7 	. 
	jr nz,$+65		;578a	20 3f 	  ? 
	ld a,001h		;578c	3e 01 	> . 
	ld (0e413h),a		;578e	32 13 e4 	2 . . 
	call 04e0eh		;5791	cd 0e 4e 	. . N 
	ld de,0c56dh		;5794	11 6d c5 	. m . 
	ld hl,00180h		;5797	21 80 01 	! . . 
	ld (08012h),hl		;579a	22 12 80 	" . . 
	call 00c95h		;579d	cd 95 0c 	. . . 
	ld a,001h		;57a0	3e 01 	> . 
	ld (08239h),a		;57a2	32 39 82 	2 9 . 
	jr $+38		;57a5	18 24 	. $ 
	push af			;57a7	f5 	. 
	ld a,(08239h)		;57a8	3a 39 82 	: 9 . 
	or a			;57ab	b7 	. 
	jr z,$+17		;57ac	28 0f 	( . 
	ld a,000h		;57ae	3e 00 	> . 
	ld (0e413h),a		;57b0	32 13 e4 	2 . . 
	call 00c78h		;57b3	cd 78 0c 	. x . 
	call 027bch		;57b6	cd bc 27 	. . ' 
	xor a			;57b9	af 	. 
	ld (08239h),a		;57ba	32 39 82 	2 9 . 
	pop af			;57bd	f1 	. 
	ld hl,08293h		;57be	21 93 82 	! . . 
	sub 030h		;57c1	d6 30 	. 0 
	cp 011h		;57c3	fe 11 	. . 
	jp m,056cah		;57c5	fa ca 56 	. . V 
	sub 007h		;57c8	d6 07 	. . 
	ld (hl),a			;57ca	77 	w 
	call 04930h		;57cb	cd 30 49 	. 0 I 
	ld hl,0e417h		;57ce	21 17 e4 	! . . 
	ld (hl),a			;57d1	77 	w 
	call 04930h		;57d2	cd 30 49 	. 0 I 
	inc hl			;57d5	23 	# 
	ld (hl),a			;57d6	77 	w 
	ld de,0e420h		;57d7	11 20 e4 	.   . 
	ld hl,08160h		;57da	21 60 81 	! ` . 
	ld a,(hl)			;57dd	7e 	~ 
	and 00fh		;57de	e6 0f 	. . 
	ld b,a			;57e0	47 	G 
	inc b			;57e1	04 	. 
	ld a,0f6h		;57e2	3e f6 	> . 
	add a,00ah		;57e4	c6 0a 	. . 
	djnz $-2		;57e6	10 fc 	. . 
	ld b,a			;57e8	47 	G 
	ld a,(08161h)		;57e9	3a 61 81 	: a . 
	and 00fh		;57ec	e6 0f 	. . 
	add a,b			;57ee	80 	. 
	cp 005h		;57ef	fe 05 	. . 
	jp m,05742h		;57f1	fa 42 57 	. B W 
	jp z,0580dh		;57f4	ca 0d 58 	. . X 
	ld c,a			;57f7	4f 	O 
	ld a,(0e422h)		;57f8	3a 22 e4 	: " . 
	cp 02eh		;57fb	fe 2e 	. . 
	jr z,$+33		;57fd	28 1f 	( . 
	ld de,0e423h		;57ff	11 23 e4 	. # . 
	ld a,(de)			;5802	1a 	. 
	and 00fh		;5803	e6 0f 	. . 
	ld b,a			;5805	47 	G 
	inc b			;5806	04 	. 
	ld a,0f6h		;5807	3e f6 	> . 
	add a,00ah		;5809	c6 0a 	. . 
	djnz $-2		;580b	10 fc 	. . 
	ld b,a			;580d	47 	G 
	inc de			;580e	13 	. 
	ld a,(de)			;580f	1a 	. 
	and 00fh		;5810	e6 0f 	. . 
	add a,b			;5812	80 	. 
	sub c			;5813	91 	. 
	jp p,05719h		;5814	f2 19 57 	. . W 
	neg		;5817	ed 44 	. D 
	cp 005h		;5819	fe 05 	. . 
	jp m,05723h		;581b	fa 23 57 	. # W 
	ld a,001h		;581e	3e 01 	> . 
	ld (0823ah),a		;5820	32 3a 82 	2 : . 
	ld a,(08291h)		;5823	3a 91 82 	: . . 
	set 0,a		;5826	cb c7 	. . 
	ld (08291h),a		;5828	32 91 82 	2 . . 
	out (083h),a		;582b	d3 83 	. . 
	ld bc,00003h		;582d	01 03 00 	. . . 
	ld de,0e420h		;5830	11 20 e4 	.   . 
	ld hl,05806h		;5833	21 06 58 	! . X 
	ldir		;5836	ed b0 	. . 
	ld bc,00002h		;5838	01 02 00 	. . . 
	ld hl,08160h		;583b	21 60 81 	! ` . 
	ldir		;583e	ed b0 	. . 
	jr $+62		;5840	18 3c 	. < 
	ld c,a			;5842	4f 	O 
	ld a,(0e422h)		;5843	3a 22 e4 	: " . 
	cp 02eh		;5846	fe 2e 	. . 
	jp nz,0575fh		;5848	c2 5f 57 	. _ W 
	ld de,0e421h		;584b	11 21 e4 	. ! . 
	ld a,(de)			;584e	1a 	. 
	and 00fh		;584f	e6 0f 	. . 
	sub c			;5851	91 	. 
	jp p,05757h		;5852	f2 57 57 	. W W 
	neg		;5855	ed 44 	. D 
	cp 001h		;5857	fe 01 	. . 
	jp m,05764h		;5859	fa 64 57 	. d W 
	jp z,05853h		;585c	ca 53 58 	. S X 
	ld a,001h		;585f	3e 01 	> . 
	ld (0823ah),a		;5861	32 3a 82 	2 : . 
	ld a,(08291h)		;5864	3a 91 82 	: . . 
	res 0,a		;5867	cb 87 	. . 
	ld (08291h),a		;5869	32 91 82 	2 . . 
	out (083h),a		;586c	d3 83 	. . 
	ld hl,08163h		;586e	21 63 81 	! c . 
	ld de,0e424h		;5871	11 24 e4 	. $ . 
	ldd		;5874	ed a8 	. . 
	ldd		;5876	ed a8 	. . 
	ld a,02eh		;5878	3e 2e 	> . 
	ld (de),a			;587a	12 	. 
	dec de			;587b	1b 	. 
	ldd		;587c	ed a8 	. . 
	ld de,0e464h		;587e	11 64 e4 	. d . 
	ld hl,08165h		;5881	21 65 81 	! e . 
	ldd		;5884	ed a8 	. . 
	ldd		;5886	ed a8 	. . 
	ld de,0e4c1h		;5888	11 c1 e4 	. . . 
	ld hl,08165h		;588b	21 65 81 	! e . 
	ld b,007h		;588e	06 07 	. . 
	dec b			;5890	05 	. 
	jr z,$+15		;5891	28 0d 	( . 
	inc hl			;5893	23 	# 
	ld a,(hl)			;5894	7e 	~ 
	cp 020h		;5895	fe 20 	.   
	jr z,$-7		;5897	28 f7 	( . 
	push bc			;5899	c5 	. 
	ld c,b			;589a	48 	H 
	ld b,000h		;589b	06 00 	. . 
	ldir		;589d	ed b0 	. . 
	pop bc			;589f	c1 	. 
	ld a,006h		;58a0	3e 06 	> . 
	sub b			;58a2	90 	. 
	jr z,$+10		;58a3	28 08 	( . 
	ld c,a			;58a5	4f 	O 
	ld b,000h		;58a6	06 00 	. . 
	ld hl,05806h		;58a8	21 06 58 	! . X 
	ldir		;58ab	ed b0 	. . 
	ld a,(08174h)		;58ad	3a 74 81 	: t . 
	ld (08002h),a		;58b0	32 02 80 	2 . . 
	call 00a4eh		;58b3	cd 4e 0a 	. N . 
	ld bc,00000h		;58b6	01 00 00 	. . . 
	ld hl,05893h		;58b9	21 93 58 	! . X 
	ld a,(08170h)		;58bc	3a 70 81 	: p . 
	sla a		;58bf	cb 27 	. ' 
	ld c,a			;58c1	4f 	O 
	sla a		;58c2	cb 27 	. ' 
	add a,c			;58c4	81 	. 
	ld c,a			;58c5	4f 	O 
	add hl,bc			;58c6	09 	. 
	ld de,0e521h		;58c7	11 21 e5 	. ! . 
	ld bc,00006h		;58ca	01 06 00 	. . . 
	ldir		;58cd	ed b0 	. . 
	ld de,0e6c1h		;58cf	11 c1 e6 	. . . 
	ld hl,0a00dh		;58d2	21 0d a0 	! . . 
	ld b,007h		;58d5	06 07 	. . 
	dec b			;58d7	05 	. 
	jr z,$+19		;58d8	28 11 	( . 
	inc hl			;58da	23 	# 
	ld a,(hl)			;58db	7e 	~ 
	cp 020h		;58dc	fe 20 	.   
	jr z,$-7		;58de	28 f7 	( . 
	cp 030h		;58e0	fe 30 	. 0 
	jr z,$-11		;58e2	28 f3 	( . 
	push bc			;58e4	c5 	. 
	ld c,b			;58e5	48 	H 
	ld b,000h		;58e6	06 00 	. . 
	ldir		;58e8	ed b0 	. . 
	pop bc			;58ea	c1 	. 
	ld a,006h		;58eb	3e 06 	> . 
	sub b			;58ed	90 	. 
	jr z,$+19		;58ee	28 11 	( . 
	ld c,a			;58f0	4f 	O 
	ld b,000h		;58f1	06 00 	. . 
	cp 006h		;58f3	fe 06 	. . 
	jr nz,$+7		;58f5	20 05 	  . 
	ld a,030h		;58f7	3e 30 	> 0 
	ld (de),a			;58f9	12 	. 
	dec bc			;58fa	0b 	. 
	inc de			;58fb	13 	. 
	ld hl,05806h		;58fc	21 06 58 	! . X 
	ldir		;58ff	ed b0 	. . 
	xor a			;5901	af 	. 
	ld (08223h),a		;5902	32 23 82 	2 # . 
	ret			;5905	c9 	. 
	jr nz,$+34		;5906	20 20 	    
	jr nz,$+34		;5908	20 20 	    
	jr nz,$+34		;590a	20 20 	    
	jr nz,$+81		;590c	20 4f 	  O 
	ld de,0e422h		;590e	11 22 e4 	. " . 
	ld a,(de)			;5911	1a 	. 
	cp 02eh		;5912	fe 2e 	. . 
	jr z,$+31		;5914	28 1d 	( . 
	inc de			;5916	13 	. 
	ld a,(de)			;5917	1a 	. 
	and 00fh		;5918	e6 0f 	. . 
	ld b,a			;591a	47 	G 
	inc b			;591b	04 	. 
	ld a,0f6h		;591c	3e f6 	> . 
	add a,00ah		;591e	c6 0a 	. . 
	djnz $-2		;5920	10 fc 	. . 
	ld b,a			;5922	47 	G 
	inc de			;5923	13 	. 
	ld a,(de)			;5924	1a 	. 
	and 00fh		;5925	e6 0f 	. . 
	add a,b			;5927	80 	. 
	sub c			;5928	91 	. 
	jp p,0582eh		;5929	f2 2e 58 	. . X 
	neg		;592c	ed 44 	. D 
	cp 005h		;592e	fe 05 	. . 
	jp m,05723h		;5930	fa 23 57 	. # W 
	ld a,001h		;5933	3e 01 	> . 
	ld (0823ah),a		;5935	32 3a 82 	2 : . 
	jp 05723h		;5938	c3 23 57 	. # W 
	inc hl			;593b	23 	# 
	ld a,(hl)			;593c	7e 	~ 
	inc hl			;593d	23 	# 
	add a,(hl)			;593e	86 	. 
	cp 060h		;593f	fe 60 	. ` 
	jr nz,$-9		;5941	20 f5 	  . 
	ex de,hl			;5943	eb 	. 
	inc hl			;5944	23 	# 
	ld a,(hl)			;5945	7e 	~ 
	inc hl			;5946	23 	# 
	add a,(hl)			;5947	86 	. 
	cp 060h		;5948	fe 60 	. ` 
	jr nz,$-18		;594a	20 ec 	  . 
	ld a,001h		;594c	3e 01 	> . 
	ld (0823ah),a		;594e	32 3a 82 	2 : . 
	jr $-25		;5951	18 e5 	. . 
	ld hl,08162h		;5953	21 62 81 	! b . 
	ld de,0e423h		;5956	11 23 e4 	. # . 
	ld a,(hl)			;5959	7e 	~ 
	inc hl			;595a	23 	# 
	add a,(hl)			;595b	86 	. 
	cp 060h		;595c	fe 60 	. ` 
	jp nz,05764h		;595e	c2 64 57 	. d W 
	ex de,hl			;5961	eb 	. 
	ld a,(hl)			;5962	7e 	~ 
	inc hl			;5963	23 	# 
	add a,(hl)			;5964	86 	. 
	cp 060h		;5965	fe 60 	. ` 
	jp z,0575fh		;5967	ca 5f 57 	. _ W 
	ld de,0e421h		;596a	11 21 e4 	. ! . 
	ld a,(de)			;596d	1a 	. 
	and 00fh		;596e	e6 0f 	. . 
	sub c			;5970	91 	. 
	jp m,05764h		;5971	fa 64 57 	. d W 
	jp 0575fh		;5974	c3 5f 57 	. _ W 
	ex de,hl			;5977	eb 	. 
	dec hl			;5978	2b 	+ 
	ld a,(hl)			;5979	7e 	~ 
	and 00fh		;597a	e6 0f 	. . 
	ld b,a			;597c	47 	G 
	inc b			;597d	04 	. 
	ld a,0f6h		;597e	3e f6 	> . 
	add a,00ah		;5980	c6 0a 	. . 
	djnz $-2		;5982	10 fc 	. . 
	ld b,a			;5984	47 	G 
	inc hl			;5985	23 	# 
	ld a,(hl)			;5986	7e 	~ 
	and 00fh		;5987	e6 0f 	. . 
	add a,b			;5989	80 	. 
	ex de,hl			;598a	eb 	. 
	cp 005h		;598b	fe 05 	. . 
	jp z,0575fh		;598d	ca 5f 57 	. _ W 
	jp 05751h		;5990	c3 51 57 	. Q W 
	jr nz,$+34		;5993	20 20 	    
	ld sp,06d30h		;5995	31 30 6d 	1 0 m 
	ld l,l			;5998	6d 	m 
	jr nz,$+34		;5999	20 20 	    
	jr nz,$+55		;599b	20 35 	  5 
	ld l,l			;599d	6d 	m 
	ld l,l			;599e	6d 	m 
	jr nz,$+34		;599f	20 20 	    
	jr nz,$+52		;59a1	20 32 	  2 
	ld l,l			;59a3	6d 	m 
	ld l,l			;59a4	6d 	m 
	jr nz,$+34		;59a5	20 20 	    
	jr nz,$+51		;59a7	20 31 	  1 
	ld l,l			;59a9	6d 	m 
	ld l,l			;59aa	6d 	m 
	jr nz,$+55		;59ab	20 35 	  5 
	jr nc,$+50		;59ad	30 30 	0 0 
	add a,(hl)			;59af	86 	. 
	ld l,l			;59b0	6d 	m 
	jr nz,$+52		;59b1	20 32 	  2 
	jr nc,$+50		;59b3	30 30 	0 0 
	add a,(hl)			;59b5	86 	. 
	ld l,l			;59b6	6d 	m 
	jr nz,$+51		;59b7	20 31 	  1 
	jr nc,$+50		;59b9	30 30 	0 0 
	add a,(hl)			;59bb	86 	. 
	ld l,l			;59bc	6d 	m 
	jr nz,$+34		;59bd	20 20 	    
	dec (hl)			;59bf	35 	5 
	jr nc,$-120		;59c0	30 86 	0 . 
	ld l,l			;59c2	6d 	m 
	jr nz,$+34		;59c3	20 20 	    
	ld (08630h),a		;59c5	32 30 86 	2 0 . 
	ld l,l			;59c8	6d 	m 
	jr nz,$+34		;59c9	20 20 	    
	ld sp,08630h		;59cb	31 30 86 	1 0 . 
	ld l,l			;59ce	6d 	m 
	jr nz,$+34		;59cf	20 20 	    
	jr nz,$+55		;59d1	20 35 	  5 
	add a,(hl)			;59d3	86 	. 
	ld l,l			;59d4	6d 	m 
	jr nz,$+34		;59d5	20 20 	    
	jr nz,$+52		;59d7	20 32 	  2 
	add a,(hl)			;59d9	86 	. 
	ld l,l			;59da	6d 	m 
	jr nz,$+34		;59db	20 20 	    
	jr nz,$+51		;59dd	20 31 	  1 
	add a,(hl)			;59df	86 	. 
	ld l,l			;59e0	6d 	m 
	jr nz,$+55		;59e1	20 35 	  5 
	jr nc,$+50		;59e3	30 30 	0 0 
	ld l,(hl)			;59e5	6e 	n 
	ld l,l			;59e6	6d 	m 
	jr nz,$+52		;59e7	20 32 	  2 
	jr nc,$+50		;59e9	30 30 	0 0 
	ld l,(hl)			;59eb	6e 	n 
	ld l,l			;59ec	6d 	m 
	jr nz,$+51		;59ed	20 31 	  1 
	jr nc,$+50		;59ef	30 30 	0 0 
	ld l,(hl)			;59f1	6e 	n 
	ld l,l			;59f2	6d 	m 
	jr nz,$+34		;59f3	20 20 	    
	dec (hl)			;59f5	35 	5 
	jr nc,$+112		;59f6	30 6e 	0 n 
	ld l,l			;59f8	6d 	m 
	ld hl,081c4h		;59f9	21 c4 81 	! . . 
	in a,(086h)		;59fc	db 86 	. . 
	cpl			;59fe	2f 	/ 
	and 010h		;59ff	e6 10 	. . 
	cp (hl)			;5a01	be 	. 
	jr z,$+9		;5a02	28 07 	( . 
	ld (hl),a			;5a04	77 	w 
	ld hl,007aah		;5a05	21 aa 07 	! . . 
	call 0043fh		;5a08	cd 3f 04 	. ? . 
	or a			;5a0b	b7 	. 
	ret			;5a0c	c9 	. 
	push hl			;5a0d	e5 	. 
	push de			;5a0e	d5 	. 
	push bc			;5a0f	c5 	. 
	ld de,0015eh		;5a10	11 5e 01 	. ^ . 
	ld (08a88h),de		;5a13	ed 53 88 8a 	. S . . 
	ld hl,08801h		;5a17	21 01 88 	! . . 
	push hl			;5a1a	e5 	. 
	push de			;5a1b	d5 	. 
	in a,(04dh)		;5a1c	db 4d 	. M 
	bit 3,a		;5a1e	cb 5f 	. _ 
	jp nz,059edh		;5a20	c2 ed 59 	. . Y 
	call 05f92h		;5a23	cd 92 5f 	. . _ 
	jp nz,05aa6h		;5a26	c2 a6 5a 	. . Z 
	ld a,(0883dh)		;5a29	3a 3d 88 	: = . 
	or a			;5a2c	b7 	. 
	jp nz,05967h		;5a2d	c2 67 59 	. g Y 
	ld a,(0829ah)		;5a30	3a 9a 82 	: . . 
	or a			;5a33	b7 	. 
	jr z,$+10		;5a34	28 08 	( . 
	ld a,000h		;5a36	3e 00 	> . 
	ld (0829ah),a		;5a38	32 9a 82 	2 . . 
	call 0413bh		;5a3b	cd 3b 41 	. ; A 
	push hl			;5a3e	e5 	. 
	ld hl,06025h		;5a3f	21 25 60 	! % ` 
	call 0600ah		;5a42	cd 0a 60 	. . ` 
	pop hl			;5a45	e1 	. 
	ld de,08801h		;5a46	11 01 88 	. . . 
	ld hl,059abh		;5a49	21 ab 59 	! . Y 
	ld bc,(059a9h)		;5a4c	ed 4b a9 59 	. K . Y 
	ldir		;5a50	ed b0 	. . 
	ld a,0e0h		;5a52	3e e0 	> . 
	ld (08a82h),a		;5a54	32 82 8a 	2 . . 
	ld a,(08290h)		;5a57	3a 90 82 	: . . 
	or a			;5a5a	b7 	. 
	ld a,002h		;5a5b	3e 02 	> . 
	jr nz,$+4		;5a5d	20 02 	  . 
	ld a,001h		;5a5f	3e 01 	> . 
	ld (0883dh),a		;5a61	32 3d 88 	2 = . 
	jp 05c38h		;5a64	c3 38 5c 	. 8 \ 
	push hl			;5a67	e5 	. 
	push de			;5a68	d5 	. 
	call 05616h		;5a69	cd 16 56 	. . V 
	call 0182ah		;5a6c	cd 2a 18 	. * . 
	call 01882h		;5a6f	cd 82 18 	. . . 
	call 07873h		;5a72	cd 73 78 	. s x 
	call 005d3h		;5a75	cd d3 05 	. . . 
	call 02b83h		;5a78	cd 83 2b 	. . + 
	ld a,(08131h)		;5a7b	3a 31 81 	: 1 . 
	or a			;5a7e	b7 	. 
	call z,01f37h		;5a7f	cc 37 1f 	. 7 . 
	call 019a4h		;5a82	cd a4 19 	. . . 
	call 01a2dh		;5a85	cd 2d 1a 	. - . 
	call 01bc5h		;5a88	cd c5 1b 	. . . 
	pop de			;5a8b	d1 	. 
	pop hl			;5a8c	e1 	. 
	in a,(04dh)		;5a8d	db 4d 	. M 
	bit 3,a		;5a8f	cb 5f 	. _ 
	jp z,05929h		;5a91	ca 29 59 	. ) Y 
	push hl			;5a94	e5 	. 
	ld hl,0601eh		;5a95	21 1e 60 	! . ` 
	ld a,(0883dh)		;5a98	3a 3d 88 	: = . 
	cp 002h		;5a9b	fe 02 	. . 
	jr nz,$+5		;5a9d	20 03 	  . 
	ld hl,06017h		;5a9f	21 17 60 	! . ` 
	call 0600ah		;5aa2	cd 0a 60 	. . ` 
	pop hl			;5aa5	e1 	. 
	jp 059c5h		;5aa6	c3 c5 59 	. . Y 
	ld a,(de)			;5aa9	1a 	. 
	nop			;5aaa	00 	. 
	ld b,(hl)			;5aab	46 	F 
	jr nc,$+50		;5aac	30 30 	0 0 
	ld d,h			;5aae	54 	T 
	add hl,sp			;5aaf	39 	9 
	scf			;5ab0	37 	7 
	ld d,e			;5ab1	53 	S 
	jr nc,$+50		;5ab2	30 30 	0 0 
	ld sp,03954h		;5ab4	31 54 39 	1 T 9 
	dec (hl)			;5ab7	35 	5 
	ld c,a			;5ab8	4f 	O 
	ld b,c			;5ab9	41 	A 
	dec (hl)			;5aba	35 	5 
	ld c,a			;5abb	4f 	O 
	ld b,c			;5abc	41 	A 
	inc (hl)			;5abd	34 	4 
	ld c,a			;5abe	4f 	O 
	ld b,c			;5abf	41 	A 
	ld b,c			;5ac0	41 	A 
	ld b,(hl)			;5ac1	46 	F 
	jr nc,$+52		;5ac2	30 32 	0 2 
	rla			;5ac4	17 	. 
	ld a,(0883dh)		;5ac5	3a 3d 88 	: = . 
	cp 002h		;5ac8	fe 02 	. . 
	jp z,05a84h		;5aca	ca 84 5a 	. . Z 
	ld a,(0883eh)		;5acd	3a 3e 88 	: > . 
	cp 002h		;5ad0	fe 02 	. . 
	jp z,05a84h		;5ad2	ca 84 5a 	. . Z 
	xor a			;5ad5	af 	. 
	ld (0883dh),a		;5ad6	32 3d 88 	2 = . 
	ld (0883eh),a		;5ad9	32 3e 88 	2 > . 
	ld (08290h),a		;5adc	32 90 82 	2 . . 
	ld (0e44eh),a		;5adf	32 4e e4 	2 N . 
	ld (0883ah),a		;5ae2	32 3a 88 	2 : . 
	ld (08837h),a		;5ae5	32 37 88 	2 7 . 
	pop de			;5ae8	d1 	. 
	pop hl			;5ae9	e1 	. 
	jp 05d5dh		;5aea	c3 5d 5d 	. ] ] 
	bit 4,a		;5aed	cb 67 	. g 
	jp nz,05aa6h		;5aef	c2 a6 5a 	. . Z 
	call 05f92h		;5af2	cd 92 5f 	. . _ 
	jp nz,05aa6h		;5af5	c2 a6 5a 	. . Z 
	ld a,(0883eh)		;5af8	3a 3e 88 	: > . 
	or a			;5afb	b7 	. 
	jp nz,05a36h		;5afc	c2 36 5a 	. 6 Z 
	ld a,(0829ah)		;5aff	3a 9a 82 	: . . 
	or a			;5b02	b7 	. 
	jr z,$+10		;5b03	28 08 	( . 
	ld a,000h		;5b05	3e 00 	> . 
	ld (0829ah),a		;5b07	32 9a 82 	2 . . 
	call 0413bh		;5b0a	cd 3b 41 	. ; A 
	ld a,(08290h)		;5b0d	3a 90 82 	: . . 
	or a			;5b10	b7 	. 
	ld a,002h		;5b11	3e 02 	> . 
	jr nz,$+4		;5b13	20 02 	  . 
	ld a,001h		;5b15	3e 01 	> . 
	ld (0883eh),a		;5b17	32 3e 88 	2 > . 
	push hl			;5b1a	e5 	. 
	ld hl,0602ch		;5b1b	21 2c 60 	! , ` 
	call 0600ah		;5b1e	cd 0a 60 	. . ` 
	pop hl			;5b21	e1 	. 
	ld de,08801h		;5b22	11 01 88 	. . . 
	ld hl,05a67h		;5b25	21 67 5a 	! g Z 
	ld bc,(05a65h)		;5b28	ed 4b 65 5a 	. K e Z 
	ldir		;5b2c	ed b0 	. . 
	ld a,0e0h		;5b2e	3e e0 	> . 
	ld (08a82h),a		;5b30	32 82 8a 	2 . . 
	jp 05c38h		;5b33	c3 38 5c 	. 8 \ 
	push hl			;5b36	e5 	. 
	push de			;5b37	d5 	. 
	call 05616h		;5b38	cd 16 56 	. . V 
	call 0182ah		;5b3b	cd 2a 18 	. * . 
	call 01882h		;5b3e	cd 82 18 	. . . 
	call 07873h		;5b41	cd 73 78 	. s x 
	call 005d3h		;5b44	cd d3 05 	. . . 
	pop de			;5b47	d1 	. 
	pop hl			;5b48	e1 	. 
	in a,(04dh)		;5b49	db 4d 	. M 
	bit 4,a		;5b4b	cb 67 	. g 
	jp z,059f8h		;5b4d	ca f8 59 	. . Y 
	push hl			;5b50	e5 	. 
	ld hl,0601eh		;5b51	21 1e 60 	! . ` 
	ld a,(0883eh)		;5b54	3a 3e 88 	: > . 
	cp 002h		;5b57	fe 02 	. . 
	jr nz,$+5		;5b59	20 03 	  . 
	ld hl,06017h		;5b5b	21 17 60 	! . ` 
	call 0600ah		;5b5e	cd 0a 60 	. . ` 
	pop hl			;5b61	e1 	. 
	jp 059c5h		;5b62	c3 c5 59 	. . Y 
	dec e			;5b65	1d 	. 
	nop			;5b66	00 	. 
	ld b,(hl)			;5b67	46 	F 
	jr nc,$+50		;5b68	30 30 	0 0 
	ld d,h			;5b6a	54 	T 
	add hl,sp			;5b6b	39 	9 
	scf			;5b6c	37 	7 
	ld d,e			;5b6d	53 	S 
	jr nc,$+50		;5b6e	30 30 	0 0 
	ld sp,03954h		;5b70	31 54 39 	1 T 9 
	dec (hl)			;5b73	35 	5 
	ld c,a			;5b74	4f 	O 
	ld b,c			;5b75	41 	A 
	dec (hl)			;5b76	35 	5 
	ld c,a			;5b77	4f 	O 
	ld b,c			;5b78	41 	A 
	inc (hl)			;5b79	34 	4 
	ld c,a			;5b7a	4f 	O 
	ld b,c			;5b7b	41 	A 
	ld b,c			;5b7c	41 	A 
	ld b,(hl)			;5b7d	46 	F 
	jr nc,$+54		;5b7e	30 34 	0 4 
	ld b,(hl)			;5b80	46 	F 
	jr nc,$+55		;5b81	30 35 	0 5 
	rla			;5b83	17 	. 
	ld a,(08291h)		;5b84	3a 91 82 	: . . 
	or 0e0h		;5b87	f6 e0 	. . 
	ld (08291h),a		;5b89	32 91 82 	2 . . 
	out (083h),a		;5b8c	d3 83 	. . 
	call 0552dh		;5b8e	cd 2d 55 	. - U 
	xor a			;5b91	af 	. 
	ld (0883dh),a		;5b92	32 3d 88 	2 = . 
	ld (0883eh),a		;5b95	32 3e 88 	2 > . 
	ld (0883ch),a		;5b98	32 3c 88 	2 < . 
	ld (0883bh),a		;5b9b	32 3b 88 	2 ; . 
	ld a,001h		;5b9e	3e 01 	> . 
	ld (0e44eh),a		;5ba0	32 4e e4 	2 N . 
	jp 05aa6h		;5ba3	c3 a6 5a 	. . Z 
	ld a,(08290h)		;5ba6	3a 90 82 	: . . 
	or a			;5ba9	b7 	. 
	jr nz,$+15		;5baa	20 0d 	  . 
	ld de,(08a88h)		;5bac	ed 5b 88 8a 	. [ . . 
	ld a,d			;5bb0	7a 	z 
	or e			;5bb1	b3 	. 
	jr nz,$+7		;5bb2	20 05 	  . 
	pop de			;5bb4	d1 	. 
	pop hl			;5bb5	e1 	. 
	jp 060c1h		;5bb6	c3 c1 60 	. . ` 
	in a,(0e2h)		;5bb9	db e2 	. . 
	and 020h		;5bbb	e6 20 	.   
	ld hl,08298h		;5bbd	21 98 82 	! . . 
	cp (hl)			;5bc0	be 	. 
	call nz,05ae7h		;5bc1	c4 e7 5a 	. . Z 
	in a,(0e3h)		;5bc4	db e3 	. . 
	and 020h		;5bc6	e6 20 	.   
	ld hl,08299h		;5bc8	21 99 82 	! . . 
	cp (hl)			;5bcb	be 	. 
	call nz,05af5h		;5bcc	c4 f5 5a 	. . Z 
	pop de			;5bcf	d1 	. 
	pop hl			;5bd0	e1 	. 
	in a,(0e2h)		;5bd1	db e2 	. . 
	bit 5,a		;5bd3	cb 6f 	. o 
	jr z,$+55		;5bd5	28 35 	( 5 
	in a,(0e3h)		;5bd7	db e3 	. . 
	bit 5,a		;5bd9	cb 6f 	. o 
	jr z,$+49		;5bdb	28 2f 	( / 
	ld a,(08290h)		;5bdd	3a 90 82 	: . . 
	or a			;5be0	b7 	. 
	jp nz,060c1h		;5be1	c2 c1 60 	. . ` 
	jp 05d8eh		;5be4	c3 8e 5d 	. . ] 
	ld hl,007c1h		;5be7	21 c1 07 	! . . 
	call 05b03h		;5bea	cd 03 5b 	. . [ 
	in a,(0e2h)		;5bed	db e2 	. . 
	and 020h		;5bef	e6 20 	.   
	ld (08298h),a		;5bf1	32 98 82 	2 . . 
	ret			;5bf4	c9 	. 
	ld hl,007cdh		;5bf5	21 cd 07 	! . . 
	call 05b03h		;5bf8	cd 03 5b 	. . [ 
	in a,(0e3h)		;5bfb	db e3 	. . 
	and 020h		;5bfd	e6 20 	.   
	ld (08299h),a		;5bff	32 99 82 	2 . . 
	ret			;5c02	c9 	. 
	push hl			;5c03	e5 	. 
	call 0043fh		;5c04	cd 3f 04 	. ? . 
	call 040c4h		;5c07	cd c4 40 	. . @ 
	pop hl			;5c0a	e1 	. 
	ret			;5c0b	c9 	. 
	push hl			;5c0c	e5 	. 
	push de			;5c0d	d5 	. 
	call 05616h		;5c0e	cd 16 56 	. . V 
	call 0182ah		;5c11	cd 2a 18 	. * . 
	call 01882h		;5c14	cd 82 18 	. . . 
	call 07873h		;5c17	cd 73 78 	. s x 
	call 005d3h		;5c1a	cd d3 05 	. . . 
	pop de			;5c1d	d1 	. 
	pop hl			;5c1e	e1 	. 
	ld a,(0883ah)		;5c1f	3a 3a 88 	: : . 
	or a			;5c22	b7 	. 
	jr nz,$+85		;5c23	20 53 	  S 
	ld b,0e0h		;5c25	06 e0 	. . 
	ld c,0e2h		;5c27	0e e2 	. . 
	ld de,(0a7e5h)		;5c29	ed 5b e5 a7 	. [ . . 
	exx			;5c2d	d9 	. 
	ld b,0e1h		;5c2e	06 e1 	. . 
	ld c,0e3h		;5c30	0e e3 	. . 
	ld de,(0a7eah)		;5c32	ed 5b ea a7 	. [ . . 
	exx			;5c36	d9 	. 
	in a,(c)		;5c37	ed 78 	. x 
	rr a		;5c39	cb 1f 	. . 
	jr c,$+32		;5c3b	38 1e 	8 . 
	ld b,0e1h		;5c3d	06 e1 	. . 
	ld c,0e3h		;5c3f	0e e3 	. . 
	ld de,(0a7eah)		;5c41	ed 5b ea a7 	. [ . . 
	exx			;5c45	d9 	. 
	ld b,0e0h		;5c46	06 e0 	. . 
	ld c,0e2h		;5c48	0e e2 	. . 
	ld de,(0a7e5h)		;5c4a	ed 5b e5 a7 	. [ . . 
	exx			;5c4e	d9 	. 
	in a,(c)		;5c4f	ed 78 	. x 
	bit 5,a		;5c51	cb 6f 	. o 
	jp nz,05addh		;5c53	c2 dd 5a 	. . Z 
	rr a		;5c56	cb 1f 	. . 
	jp nc,05d8eh		;5c58	d2 8e 5d 	. . ] 
	call 05ebch		;5c5b	cd bc 5e 	. . ^ 
	ld a,001h		;5c5e	3e 01 	> . 
	ld (0883ah),a		;5c60	32 3a 88 	2 : . 
	ld a,b			;5c63	78 	x 
	ld (08a82h),a		;5c64	32 82 8a 	2 . . 
	ld a,c			;5c67	79 	y 
	ld (08a81h),a		;5c68	32 81 8a 	2 . . 
	ld a,e			;5c6b	7b 	{ 
	ld (08295h),a		;5c6c	32 95 82 	2 . . 
	ld a,d			;5c6f	7a 	z 
	ld (08296h),a		;5c70	32 96 82 	2 . . 
	call 05e3eh		;5c73	cd 3e 5e 	. > ^ 
	jr $+8		;5c76	18 06 	. . 
	call 05ed2h		;5c78	cd d2 5e 	. . ^ 
	call 05e12h		;5c7b	cd 12 5e 	. . ^ 
	jr c,$+118		;5c7e	38 74 	8 t 
	push de			;5c80	d5 	. 
	push hl			;5c81	e5 	. 
	call 02b83h		;5c82	cd 83 2b 	. . + 
	ld a,(0883bh)		;5c85	3a 3b 88 	: ; . 
	or a			;5c88	b7 	. 
	jp nz,05ba3h		;5c89	c2 a3 5b 	. . [ 
	ld a,(0883ch)		;5c8c	3a 3c 88 	: < . 
	or a			;5c8f	b7 	. 
	jp z,05beeh		;5c90	ca ee 5b 	. . [ 
	ld a,(08131h)		;5c93	3a 31 81 	: 1 . 
	or a			;5c96	b7 	. 
	call z,01f37h		;5c97	cc 37 1f 	. 7 . 
	call 019a4h		;5c9a	cd a4 19 	. . . 
	call 01a2dh		;5c9d	cd 2d 1a 	. - . 
	call 01bc5h		;5ca0	cd c5 1b 	. . . 
	pop hl			;5ca3	e1 	. 
	pop de			;5ca4	d1 	. 
	call 0051dh		;5ca5	cd 1d 05 	. . . 
	ld a,(0822fh)		;5ca8	3a 2f 82 	: / . 
	or a			;5cab	b7 	. 
	jr z,$+38		;5cac	28 24 	( $ 
	ld a,(0814ah)		;5cae	3a 4a 81 	: J . 
	cp 080h		;5cb1	fe 80 	. . 
	jp c,05bc6h		;5cb3	da c6 5b 	. . [ 
	cp 091h		;5cb6	fe 91 	. . 
	jp z,060c1h		;5cb8	ca c1 60 	. . ` 
	cp 088h		;5cbb	fe 88 	. . 
	jr z,$+9		;5cbd	28 07 	( . 
	cp 089h		;5cbf	fe 89 	. . 
	jr z,$+5		;5cc1	28 03 	( . 
	jp 05bcdh		;5cc3	c3 cd 5b 	. . [ 
	push hl			;5cc6	e5 	. 
	push de			;5cc7	d5 	. 
	call 02026h		;5cc8	cd 26 20 	. &   
	pop de			;5ccb	d1 	. 
	pop hl			;5ccc	e1 	. 
	ld a,0ffh		;5ccd	3e ff 	> . 
	ld (0814ah),a		;5ccf	32 4a 81 	2 J . 
	ld a,(08290h)		;5cd2	3a 90 82 	: . . 
	or a			;5cd5	b7 	. 
	jr nz,$+13		;5cd6	20 0b 	  . 
	push de			;5cd8	d5 	. 
	ld de,(08a88h)		;5cd9	ed 5b 88 8a 	. [ . . 
	dec de			;5cdd	1b 	. 
	ld (08a88h),de		;5cde	ed 53 88 8a 	. S . . 
	pop de			;5ce2	d1 	. 
	ld a,(0814ah)		;5ce3	3a 4a 81 	: J . 
	cp 091h		;5ce6	fe 91 	. . 
	jp z,060c1h		;5ce8	ca c1 60 	. . ` 
	jp 0591ah		;5ceb	c3 1a 59 	. . Y 
	call 05fbah		;5cee	cd ba 5f 	. . _ 
	jp 05ba3h		;5cf1	c3 a3 5b 	. . [ 
	push af			;5cf4	f5 	. 
	ld a,(0829ah)		;5cf5	3a 9a 82 	: . . 
	or a			;5cf8	b7 	. 
	jr z,$+10		;5cf9	28 08 	( . 
	ld a,000h		;5cfb	3e 00 	> . 
	ld (0829ah),a		;5cfd	32 9a 82 	2 . . 
	call 0413bh		;5d00	cd 3b 41 	. ; A 
	ld a,(08290h)		;5d03	3a 90 82 	: . . 
	or a			;5d06	b7 	. 
	jr nz,$+11		;5d07	20 09 	  . 
	push de			;5d09	d5 	. 
	ld de,0015eh		;5d0a	11 5e 01 	. ^ . 
	ld (08a88h),de		;5d0d	ed 53 88 8a 	. S . . 
	pop de			;5d11	d1 	. 
	pop af			;5d12	f1 	. 
	ld (hl),a			;5d13	77 	w 
	inc hl			;5d14	23 	# 
	cp 017h		;5d15	fe 17 	. . 
	jp z,05c38h		;5d17	ca 38 5c 	. 8 \ 
	ld de,08833h		;5d1a	11 33 88 	. 3 . 
	ex de,hl			;5d1d	eb 	. 
	or a			;5d1e	b7 	. 
	sbc hl,de		;5d1f	ed 52 	. R 
	ex de,hl			;5d21	eb 	. 
	jp p,0591ah		;5d22	f2 1a 59 	. . Y 
	ld de,08840h		;5d25	11 40 88 	. @ . 
	ld ix,08800h		;5d28	dd 21 00 88 	. ! . . 
	ld (ix+000h),032h		;5d2c	dd 36 00 32 	. 6 . 2 
	ld a,091h		;5d30	3e 91 	> . 
	ld (08835h),a		;5d32	32 35 88 	2 5 . 
	jp 05d92h		;5d35	c3 92 5d 	. . ] 
	ld hl,08801h		;5d38	21 01 88 	! . . 
	ld ix,08800h		;5d3b	dd 21 00 88 	. ! . . 
	ld (ix+000h),001h		;5d3f	dd 36 00 01 	. 6 . . 
	ld de,08840h		;5d43	11 40 88 	. @ . 
	ld a,(08290h)		;5d46	3a 90 82 	: . . 
	or a			;5d49	b7 	. 
	jp nz,05ca8h		;5d4a	c2 a8 5c 	. . \ 
	ld a,001h		;5d4d	3e 01 	> . 
	ld (08835h),a		;5d4f	32 35 88 	2 5 . 
	xor a			;5d52	af 	. 
	ld (0883ah),a		;5d53	32 3a 88 	2 : . 
	inc (ix+000h)		;5d56	dd 34 00 	. 4 . 
	ld a,(hl)			;5d59	7e 	~ 
	call 05dddh		;5d5a	cd dd 5d 	. . ] 
	cp 046h		;5d5d	fe 46 	. F 
	jp nz,05d92h		;5d5f	c2 92 5d 	. . ] 
	inc hl			;5d62	23 	# 
	ld a,(hl)			;5d63	7e 	~ 
	cp 030h		;5d64	fe 30 	. 0 
	jp nz,05d92h		;5d66	c2 92 5d 	. . ] 
	inc hl			;5d69	23 	# 
	ld a,(hl)			;5d6a	7e 	~ 
	cp 030h		;5d6b	fe 30 	. 0 
	jp nz,05d92h		;5d6d	c2 92 5d 	. . ] 
	ld a,000h		;5d70	3e 00 	> . 
	ld (08139h),a		;5d72	32 39 81 	2 9 . 
	ld (0813ch),a		;5d75	32 3c 81 	2 < . 
	ld (08837h),a		;5d78	32 37 88 	2 7 . 
	push hl			;5d7b	e5 	. 
	push de			;5d7c	d5 	. 
	push bc			;5d7d	c5 	. 
	call 02749h		;5d7e	cd 49 27 	. I ' 
	pop bc			;5d81	c1 	. 
	pop de			;5d82	d1 	. 
	pop hl			;5d83	e1 	. 
	inc hl			;5d84	23 	# 
	push hl			;5d85	e5 	. 
	ld a,001h		;5d86	3e 01 	> . 
	ld (08290h),a		;5d88	32 90 82 	2 . . 
	ld (0e44eh),a		;5d8b	32 4e e4 	2 N . 
	ld (0883ah),a		;5d8e	32 3a 88 	2 : . 
	ld a,(0883dh)		;5d91	3a 3d 88 	: = . 
	or a			;5d94	b7 	. 
	jr nz,$+16		;5d95	20 0e 	  . 
	ld a,(0883eh)		;5d97	3a 3e 88 	: > . 
	or a			;5d9a	b7 	. 
	jr nz,$+10		;5d9b	20 08 	  . 
	push hl			;5d9d	e5 	. 
	ld hl,06017h		;5d9e	21 17 60 	! . ` 
	call 0600ah		;5da1	cd 0a 60 	. . ` 
	pop hl			;5da4	e1 	. 
	jp 0609fh		;5da5	c3 9f 60 	. . ` 
	call 0051dh		;5da8	cd 1d 05 	. . . 
	ld a,(0822fh)		;5dab	3a 2f 82 	: / . 
	or a			;5dae	b7 	. 
	jr z,$+38		;5daf	28 24 	( $ 
	ld a,(0814ah)		;5db1	3a 4a 81 	: J . 
	cp 080h		;5db4	fe 80 	. . 
	jp c,05cc9h		;5db6	da c9 5c 	. . \ 
	cp 091h		;5db9	fe 91 	. . 
	jp z,060c1h		;5dbb	ca c1 60 	. . ` 
	cp 088h		;5dbe	fe 88 	. . 
	jr z,$+9		;5dc0	28 07 	( . 
	cp 089h		;5dc2	fe 89 	. . 
	jr z,$+5		;5dc4	28 03 	( . 
	jp 05cd0h		;5dc6	c3 d0 5c 	. . \ 
	push hl			;5dc9	e5 	. 
	push de			;5dca	d5 	. 
	call 02026h		;5dcb	cd 26 20 	. &   
	pop de			;5dce	d1 	. 
	pop hl			;5dcf	e1 	. 
	ld a,0ffh		;5dd0	3e ff 	> . 
	ld (0814ah),a		;5dd2	32 4a 81 	2 J . 
	ld a,(0814ah)		;5dd5	3a 4a 81 	: J . 
	cp 091h		;5dd8	fe 91 	. . 
	jp z,060c1h		;5dda	ca c1 60 	. . ` 
	ld a,(08837h)		;5ddd	3a 37 88 	: 7 . 
	or a			;5de0	b7 	. 
	jr z,$+12		;5de1	28 0a 	( . 
	ld a,(0821ch)		;5de3	3a 1c 82 	: . . 
	or a			;5de6	b7 	. 
	jp nz,05d3fh		;5de7	c2 3f 5d 	. ? ] 
	ld (08837h),a		;5dea	32 37 88 	2 7 . 
	ld a,(hl)			;5ded	7e 	~ 
	inc hl			;5dee	23 	# 
	inc (ix+000h)		;5def	dd 34 00 	. 4 . 
	cp 017h		;5df2	fe 17 	. . 
	jp z,06f96h		;5df4	ca 96 6f 	. . o 
	call 05dddh		;5df7	cd dd 5d 	. . ] 
	push af			;5dfa	f5 	. 
	ld a,(0883ch)		;5dfb	3a 3c 88 	: < . 
	or a			;5dfe	b7 	. 
	jp nz,05d45h		;5dff	c2 45 5d 	. E ] 
	ld a,(0883bh)		;5e02	3a 3b 88 	: ; . 
	or a			;5e05	b7 	. 
	jp nz,05d45h		;5e06	c2 45 5d 	. E ] 
	pop af			;5e09	f1 	. 
	cp 054h		;5e0a	fe 54 	. T 
	jp z,06e65h		;5e0c	ca 65 6e 	. e n 
	cp 04fh		;5e0f	fe 4f 	. O 
	jp z,068e5h		;5e11	ca e5 68 	. . h 
	cp 04bh		;5e14	fe 4b 	. K 
	jp z,063ach		;5e16	ca ac 63 	. . c 
	cp 04dh		;5e19	fe 4d 	. M 
	jp z,06500h		;5e1b	ca 00 65 	. . e 
	cp 050h		;5e1e	fe 50 	. P 
	jp z,069c8h		;5e20	ca c8 69 	. . i 
	cp 051h		;5e23	fe 51 	. Q 
	jp z,06ae5h		;5e25	ca e5 6a 	. . j 
	cp 053h		;5e28	fe 53 	. S 
	jp z,06df1h		;5e2a	ca f1 6d 	. . m 
	cp 046h		;5e2d	fe 46 	. F 
	jp z,06033h		;5e2f	ca 33 60 	. 3 ` 
	cp 048h		;5e32	fe 48 	. H 
	jp z,062eeh		;5e34	ca ee 62 	. . b 
	ld a,090h		;5e37	3e 90 	> . 
	ld (08835h),a		;5e39	32 35 88 	2 5 . 
	jp 05d92h		;5e3c	c3 92 5d 	. . ] 
	call 05fbah		;5e3f	cd ba 5f 	. . _ 
	jp 05ca8h		;5e42	c3 a8 5c 	. . \ 
	pop af			;5e45	f1 	. 
	cp 046h		;5e46	fe 46 	. F 
	jp z,06033h		;5e48	ca 33 60 	. 3 ` 
	cp 04dh		;5e4b	fe 4d 	. M 
	jp z,06500h		;5e4d	ca 00 65 	. . e 
	cp 051h		;5e50	fe 51 	. Q 
	jp z,06ae5h		;5e52	ca e5 6a 	. . j 
	ld a,003h		;5e55	3e 03 	> . 
	ld (08835h),a		;5e57	32 35 88 	2 5 . 
	jp 05d92h		;5e5a	c3 92 5d 	. . ] 
	ld a,076h		;5e5d	3e 76 	> v 
	call 048f2h		;5e5f	cd f2 48 	. . H 
	ld a,032h		;5e62	3e 32 	> 2 
	call 048f2h		;5e64	cd f2 48 	. . H 
	ld a,(08291h)		;5e67	3a 91 82 	: . . 
	or 0e0h		;5e6a	f6 e0 	. . 
	ld (08291h),a		;5e6c	32 91 82 	2 . . 
	out (083h),a		;5e6f	d3 83 	. . 
	call 0552dh		;5e71	cd 2d 55 	. - U 
	xor a			;5e74	af 	. 
	ld (0883ch),a		;5e75	32 3c 88 	2 < . 
	ld (0883bh),a		;5e78	32 3b 88 	2 ; . 
	ld (08118h),a		;5e7b	32 18 81 	2 . . 
	ld a,000h		;5e7e	3e 00 	> . 
	ld (0e44eh),a		;5e80	32 4e e4 	2 N . 
	ld a,(0822eh)		;5e83	3a 2e 82 	: . . 
	or a			;5e86	b7 	. 
	jr z,$+7		;5e87	28 05 	( . 
	ld a,048h		;5e89	3e 48 	> H 
	call 07844h		;5e8b	cd 44 78 	. D x 
	pop bc			;5e8e	c1 	. 
	pop de			;5e8f	d1 	. 
	pop hl			;5e90	e1 	. 
	ret			;5e91	c9 	. 
	ld a,(0883dh)		;5e92	3a 3d 88 	: = . 
	or a			;5e95	b7 	. 
	jp nz,05994h		;5e96	c2 94 59 	. . Y 
	ld a,(0883eh)		;5e99	3a 3e 88 	: > . 
	or a			;5e9c	b7 	. 
	jp nz,05a50h		;5e9d	c2 50 5a 	. P Z 
	ld a,045h		;5ea0	3e 45 	> E 
	ld (de),a			;5ea2	12 	. 
	inc de			;5ea3	13 	. 
	ld a,(08835h)		;5ea4	3a 35 88 	: 5 . 
	ld b,002h		;5ea7	06 02 	. . 
	push af			;5ea9	f5 	. 
	srl a		;5eaa	cb 3f 	. ? 
	srl a		;5eac	cb 3f 	. ? 
	srl a		;5eae	cb 3f 	. ? 
	srl a		;5eb0	cb 3f 	. ? 
	ld c,030h		;5eb2	0e 30 	. 0 
	cp 00ah		;5eb4	fe 0a 	. . 
	jp m,05dbbh		;5eb6	fa bb 5d 	. . ] 
	ld c,037h		;5eb9	0e 37 	. 7 
	add a,c			;5ebb	81 	. 
	ld (de),a			;5ebc	12 	. 
	inc de			;5ebd	13 	. 
	pop af			;5ebe	f1 	. 
	and 00fh		;5ebf	e6 0f 	. . 
	ld c,030h		;5ec1	0e 30 	. 0 
	cp 00ah		;5ec3	fe 0a 	. . 
	jp m,05dcah		;5ec5	fa ca 5d 	. . ] 
	ld c,037h		;5ec8	0e 37 	. 7 
	add a,c			;5eca	81 	. 
	ld (de),a			;5ecb	12 	. 
	inc de			;5ecc	13 	. 
	ld a,(ix+000h)		;5ecd	dd 7e 00 	. ~ . 
	dec a			;5ed0	3d 	= 
	djnz $-40		;5ed1	10 d6 	. . 
	ld a,017h		;5ed3	3e 17 	> . 
	ld (de),a			;5ed5	12 	. 
	xor a			;5ed6	af 	. 
	ld (08836h),a		;5ed7	32 36 88 	2 6 . 
	jp 06fc3h		;5eda	c3 c3 6f 	. . o 
	push af			;5edd	f5 	. 
	ld a,000h		;5ede	3e 00 	> . 
	ld (de),a			;5ee0	12 	. 
	inc de			;5ee1	13 	. 
	ld (de),a			;5ee2	12 	. 
	inc de			;5ee3	13 	. 
	ld (de),a			;5ee4	12 	. 
	inc de			;5ee5	13 	. 
	pop af			;5ee6	f1 	. 
	ret			;5ee7	c9 	. 
	push bc			;5ee8	c5 	. 
	push de			;5ee9	d5 	. 
	ld b,005h		;5eea	06 05 	. . 
	ld de,08000h		;5eec	11 00 80 	. . . 
	in a,(087h)		;5eef	db 87 	. . 
	rra			;5ef1	1f 	. 
	jr nc,$+17		;5ef2	30 0f 	0 . 
	in a,(085h)		;5ef4	db 85 	. . 
	push af			;5ef6	f5 	. 
	in a,(087h)		;5ef7	db 87 	. . 
	and 004h		;5ef9	e6 04 	. . 
	jr z,$-4		;5efb	28 fa 	( . 
	pop af			;5efd	f1 	. 
	out (085h),a		;5efe	d3 85 	. . 
	pop de			;5f00	d1 	. 
	pop bc			;5f01	c1 	. 
	ret			;5f02	c9 	. 
	dec de			;5f03	1b 	. 
	ld a,d			;5f04	7a 	z 
	or e			;5f05	b3 	. 
	jr nz,$-23		;5f06	20 e7 	  . 
	djnz $-25		;5f08	10 e5 	. . 
	ld a,001h		;5f0a	3e 01 	> . 
	ld (0a7fdh),a		;5f0c	32 fd a7 	2 . . 
	jp 00000h		;5f0f	c3 00 00 	. . . 
	push hl			;5f12	e5 	. 
	push bc			;5f13	c5 	. 
	push de			;5f14	d5 	. 
	ld hl,08a81h		;5f15	21 81 8a 	! . . 
	ld c,(hl)			;5f18	4e 	N 
	in a,(c)		;5f19	ed 78 	. x 
	rr a		;5f1b	cb 1f 	. . 
	jr nc,$+29		;5f1d	30 1b 	0 . 
	res 1,c		;5f1f	cb 89 	. . 
	in a,(c)		;5f21	ed 78 	. x 
	ld de,(08295h)		;5f23	ed 5b 95 82 	. [ . . 
	bit 0,e		;5f27	cb 43 	. C 
	jp z,05e3ah		;5f29	ca 3a 5e 	. : ^ 
	push af			;5f2c	f5 	. 
	set 1,c		;5f2d	cb c9 	. . 
	in a,(c)		;5f2f	ed 78 	. x 
	and 004h		;5f31	e6 04 	. . 
	jr z,$-4		;5f33	28 fa 	( . 
	pop af			;5f35	f1 	. 
	res 1,c		;5f36	cb 89 	. . 
	out (c),a		;5f38	ed 79 	. y 
	pop de			;5f3a	d1 	. 
	pop bc			;5f3b	c1 	. 
	pop hl			;5f3c	e1 	. 
	ret			;5f3d	c9 	. 
	push hl			;5f3e	e5 	. 
	push bc			;5f3f	c5 	. 
	push de			;5f40	d5 	. 
	ld hl,08a81h		;5f41	21 81 8a 	! . . 
	ld c,(hl)			;5f44	4e 	N 
	scf			;5f45	37 	7 
	jp 05e1fh		;5f46	c3 1f 5e 	. . ^ 
	push bc			;5f49	c5 	. 
	push de			;5f4a	d5 	. 
	push hl			;5f4b	e5 	. 
	cp 000h		;5f4c	fe 00 	. . 
	jp z,05eb8h		;5f4e	ca b8 5e 	. . ^ 
	ld b,005h		;5f51	06 05 	. . 
	ld de,08000h		;5f53	11 00 80 	. . . 
	ld hl,08a81h		;5f56	21 81 8a 	! . . 
	ld c,(hl)			;5f59	4e 	N 
	push af			;5f5a	f5 	. 
	in a,(c)		;5f5b	ed 78 	. x 
	and 004h		;5f5d	e6 04 	. . 
	jr z,$-4		;5f5f	28 fa 	( . 
	pop af			;5f61	f1 	. 
	ld l,a			;5f62	6f 	o 
	res 1,c		;5f63	cb 89 	. . 
	out (c),a		;5f65	ed 79 	. y 
	push de			;5f67	d5 	. 
	ld de,(08295h)		;5f68	ed 5b 95 82 	. [ . . 
	bit 0,d		;5f6c	cb 42 	. B 
	pop de			;5f6e	d1 	. 
	jp z,05eb8h		;5f6f	ca b8 5e 	. . ^ 
	set 1,c		;5f72	cb c9 	. . 
	in h,(c)		;5f74	ed 60 	. ` 
	rr h		;5f76	cb 1c 	. . 
	jr nc,$+25		;5f78	30 17 	0 . 
	res 1,c		;5f7a	cb 89 	. . 
	in h,(c)		;5f7c	ed 60 	. ` 
	ld a,l			;5f7e	7d 	} 
	cp h			;5f7f	bc 	. 
	jr z,$+56		;5f80	28 36 	( 6 
	ld a,(08a82h)		;5f82	3a 82 8a 	: . . 
	and 001h		;5f85	e6 01 	. . 
	ld hl,0a7f7h		;5f87	21 f7 a7 	! . . 
	add a,l			;5f8a	85 	. 
	ld a,001h		;5f8b	3e 01 	> . 
	ld (hl),a			;5f8d	77 	w 
	jp 05eb8h		;5f8e	c3 b8 5e 	. . ^ 
	ld a,(0822fh)		;5f91	3a 2f 82 	: / . 
	or a			;5f94	b7 	. 
	jr z,$+14		;5f95	28 0c 	( . 
	push hl			;5f97	e5 	. 
	push de			;5f98	d5 	. 
	push bc			;5f99	c5 	. 
	call 0051dh		;5f9a	cd 1d 05 	. . . 
	call 02026h		;5f9d	cd 26 20 	. &   
	pop bc			;5fa0	c1 	. 
	pop de			;5fa1	d1 	. 
	pop hl			;5fa2	e1 	. 
	dec de			;5fa3	1b 	. 
	ld a,d			;5fa4	7a 	z 
	or e			;5fa5	b3 	. 
	jr nz,$-52		;5fa6	20 ca 	  . 
	djnz $-54		;5fa8	10 c8 	. . 
	ld a,(08a82h)		;5faa	3a 82 8a 	: . . 
	and 001h		;5fad	e6 01 	. . 
	ld hl,0a7fah		;5faf	21 fa a7 	! . . 
	add a,l			;5fb2	85 	. 
	ld l,a			;5fb3	6f 	o 
	ld a,001h		;5fb4	3e 01 	> . 
	ld (hl),a			;5fb6	77 	w 
	inc a			;5fb7	3c 	< 
	pop hl			;5fb8	e1 	. 
	pop de			;5fb9	d1 	. 
	pop bc			;5fba	c1 	. 
	ret			;5fbb	c9 	. 
	exx			;5fbc	d9 	. 
	ld a,b			;5fbd	78 	x 
	ld (08a84h),a		;5fbe	32 84 8a 	2 . . 
	ld a,c			;5fc1	79 	y 
	ld (08a83h),a		;5fc2	32 83 8a 	2 . . 
	ld a,e			;5fc5	7b 	{ 
	ld (08297h),a		;5fc6	32 97 82 	2 . . 
	ld a,d			;5fc9	7a 	z 
	ld (08297h),a		;5fca	32 97 82 	2 . . 
	exx			;5fcd	d9 	. 
	call 05ed2h		;5fce	cd d2 5e 	. . ^ 
	ret			;5fd1	c9 	. 
	push hl			;5fd2	e5 	. 
	push de			;5fd3	d5 	. 
	push bc			;5fd4	c5 	. 
	ld hl,08a83h		;5fd5	21 83 8a 	! . . 
	ld c,(hl)			;5fd8	4e 	N 
	in a,(c)		;5fd9	ed 78 	. x 
	bit 5,a		;5fdb	cb 6f 	. o 
	jr nz,$+90		;5fdd	20 58 	  X 
	rr a		;5fdf	cb 1f 	. . 
	jr nc,$+86		;5fe1	30 54 	0 T 
	res 1,c		;5fe3	cb 89 	. . 
	in a,(c)		;5fe5	ed 78 	. x 
	ld de,(08297h)		;5fe7	ed 5b 97 82 	. [ . . 
	jr z,$+16		;5feb	28 0e 	( . 
	push af			;5fed	f5 	. 
	set 1,c		;5fee	cb c9 	. . 
	in a,(c)		;5ff0	ed 78 	. x 
	and 004h		;5ff2	e6 04 	. . 
	jr z,$-4		;5ff4	28 fa 	( . 
	pop af			;5ff6	f1 	. 
	res 1,c		;5ff7	cb 89 	. . 
	out (c),a		;5ff9	ed 79 	. y 
	cp 017h		;5ffb	fe 17 	. . 
	jp nz,05f37h		;5ffd	c2 37 5f 	. 7 _ 
	ld b,004h		;6000	06 04 	. . 
	ld hl,05f43h		;6002	21 43 5f 	! C _ 
	ld a,(hl)			;6005	7e 	~ 
	ld de,00800h		;6006	11 00 08 	. . . 
	set 1,c		;6009	cb c9 	. . 
	push af			;600b	f5 	. 
	in a,(c)		;600c	ed 78 	. x 
	and 004h		;600e	e6 04 	. . 
	jr z,$-4		;6010	28 fa 	( . 
	pop af			;6012	f1 	. 
	res 1,c		;6013	cb 89 	. . 
	out (c),a		;6015	ed 79 	. y 
	push de			;6017	d5 	. 
	ld de,(08297h)		;6018	ed 5b 97 82 	. [ . . 
	bit 0,d		;601c	cb 42 	. B 
	pop de			;601e	d1 	. 
	jp z,05f34h		;601f	ca 34 5f 	. 4 _ 
	push hl			;6022	e5 	. 
	set 1,c		;6023	cb c9 	. . 
	in h,(c)		;6025	ed 60 	. ` 
	rr h		;6027	cb 1c 	. . 
	jr nc,$+18		;6029	30 10 	0 . 
	res 1,c		;602b	cb 89 	. . 
	in h,(c)		;602d	ed 60 	. ` 
	ld a,l			;602f	7d 	} 
	cp h			;6030	bc 	. 
	pop hl			;6031	e1 	. 
	jr nz,$+5		;6032	20 03 	  . 
	inc hl			;6034	23 	# 
	djnz $-48		;6035	10 ce 	. . 
	pop bc			;6037	c1 	. 
	pop de			;6038	d1 	. 
	pop hl			;6039	e1 	. 
	ret			;603a	c9 	. 
	dec de			;603b	1b 	. 
	ld a,d			;603c	7a 	z 
	or e			;603d	b3 	. 
	jr nz,$-28		;603e	20 e2 	  . 
	pop hl			;6040	e1 	. 
	jr $-10		;6041	18 f4 	. . 
	ld b,l			;6043	45 	E 
	jr nc,$+50		;6044	30 30 	0 0 
	rla			;6046	17 	. 
	push hl			;6047	e5 	. 
	push de			;6048	d5 	. 
	cp 030h		;6049	fe 30 	. 0 
	jp m,05f6dh		;604b	fa 6d 5f 	. m _ 
	cp 03ah		;604e	fe 3a 	. : 
	jp p,05f5bh		;6050	f2 5b 5f 	. [ _ 
	sub 030h		;6053	d6 30 	. 0 
	ex de,hl			;6055	eb 	. 
	rld		;6056	ed 6f 	. o 
	jp 05f6ah		;6058	c3 6a 5f 	. j _ 
	cp 041h		;605b	fe 41 	. A 
	jp m,05f6dh		;605d	fa 6d 5f 	. m _ 
	cp 047h		;6060	fe 47 	. G 
	jp p,05f6dh		;6062	f2 6d 5f 	. m _ 
	sub 037h		;6065	d6 37 	. 7 
	ex de,hl			;6067	eb 	. 
	rld		;6068	ed 6f 	. o 
	pop de			;606a	d1 	. 
	pop hl			;606b	e1 	. 
	ret			;606c	c9 	. 
	ld a,090h		;606d	3e 90 	> . 
	ld (08835h),a		;606f	32 35 88 	2 5 . 
	ld a,001h		;6072	3e 01 	> . 
	ld (08836h),a		;6074	32 36 88 	2 6 . 
	jp 05f6ah		;6077	c3 6a 5f 	. j _ 
	nop			;607a	00 	. 
	ld a,(hl)			;607b	7e 	~ 
	inc hl			;607c	23 	# 
	push de			;607d	d5 	. 
	ld de,08149h		;607e	11 49 81 	. I . 
	call 05f47h		;6081	cd 47 5f 	. G _ 
	ld a,(08836h)		;6084	3a 36 88 	: 6 . 
	or a			;6087	b7 	. 
	jp nz,05f90h		;6088	c2 90 5f 	. . _ 
	ld a,(hl)			;608b	7e 	~ 
	inc hl			;608c	23 	# 
	call 05f47h		;608d	cd 47 5f 	. G _ 
	pop de			;6090	d1 	. 
	ret			;6091	c9 	. 
	ld a,(0883bh)		;6092	3a 3b 88 	: ; . 
	or a			;6095	b7 	. 
	jp nz,05f9eh		;6096	c2 9e 5f 	. . _ 
	ld a,(0883ch)		;6099	3a 3c 88 	: < . 
	or a			;609c	b7 	. 
	ret z			;609d	c8 	. 
	ld a,003h		;609e	3e 03 	> . 
	ld (08835h),a		;60a0	32 35 88 	2 5 . 
	ret			;60a3	c9 	. 
	push af			;60a4	f5 	. 
	push bc			;60a5	c5 	. 
	dec hl			;60a6	2b 	+ 
	dec hl			;60a7	2b 	+ 
	dec hl			;60a8	2b 	+ 
	ld bc,00003h		;60a9	01 03 00 	. . . 
	ldir		;60ac	ed b0 	. . 
	pop bc			;60ae	c1 	. 
	pop af			;60af	f1 	. 
	ret			;60b0	c9 	. 
	ld a,00dh		;60b1	3e 0d 	> . 
	ld (de),a			;60b3	12 	. 
	inc de			;60b4	13 	. 
	ld a,00ah		;60b5	3e 0a 	> . 
	ld (de),a			;60b7	12 	. 
	inc de			;60b8	13 	. 
	ret			;60b9	c9 	. 
	push hl			;60ba	e5 	. 
	push de			;60bb	d5 	. 
	call 000f0h		;60bc	cd f0 00 	. . . 
	call 000f0h		;60bf	cd f0 00 	. . . 
	pop de			;60c2	d1 	. 
	pop hl			;60c3	e1 	. 
	ret			;60c4	c9 	. 
	push hl			;60c5	e5 	. 
	push de			;60c6	d5 	. 
	ld a,02fh		;60c7	3e 2f 	> / 
	ld (08a85h),a		;60c9	32 85 8a 	2 . . 
	ld hl,0b8fch		;60cc	21 fc b8 	! . . 
	push hl			;60cf	e5 	. 
	ld hl,08a85h		;60d0	21 85 8a 	! . . 
	inc (hl)			;60d3	34 	4 
	pop hl			;60d4	e1 	. 
	ld bc,00007h		;60d5	01 07 00 	. . . 
	ld de,0e6a0h		;60d8	11 a0 e6 	. . . 
	ld a,(de)			;60db	1a 	. 
	cpi		;60dc	ed a1 	. . 
	jr nz,$+8		;60de	20 06 	  . 
	jp po,05ff0h		;60e0	e2 f0 5f 	. . _ 
	inc de			;60e3	13 	. 
	jr $-9		;60e4	18 f5 	. . 
	add hl,bc			;60e6	09 	. 
	ld a,00dh		;60e7	3e 0d 	> . 
	cp (hl)			;60e9	be 	. 
	jr nz,$-27		;60ea	20 e3 	  . 
	xor a			;60ec	af 	. 
	ld (08a85h),a		;60ed	32 85 8a 	2 . . 
	pop de			;60f0	d1 	. 
	pop hl			;60f1	e1 	. 
	ret			;60f2	c9 	. 
	ld a,080h		;60f3	3e 80 	> . 
	out (097h),a		;60f5	d3 97 	. . 
	call 0534ch		;60f7	cd 4c 53 	. L S 
	jr c,$+4		;60fa	38 02 	8 . 
	jr $+12		;60fc	18 0a 	. . 
	in a,(097h)		;60fe	db 97 	. . 
	ld b,a			;6100	47 	G 
	ld hl,081d4h		;6101	21 d4 81 	! . . 
	call 04eb7h		;6104	cd b7 4e 	. . N 
	scf			;6107	37 	7 
	ccf			;6108	3f 	? 
	ret			;6109	c9 	. 
	push bc			;610a	c5 	. 
	push de			;610b	d5 	. 
	ld bc,00007h		;610c	01 07 00 	. . . 
	ld de,0e660h		;610f	11 60 e6 	. ` . 
	ldir		;6112	ed b0 	. . 
	pop de			;6114	d1 	. 
	pop bc			;6115	c1 	. 
	ret			;6116	c9 	. 
	ld d,d			;6117	52 	R 
	ld b,l			;6118	45 	E 
	ld c,l			;6119	4d 	M 
	ld c,a			;611a	4f 	O 
	ld d,h			;611b	54 	T 
	ld b,l			;611c	45 	E 
	jr nz,$+34		;611d	20 20 	    
	jr nz,$+34		;611f	20 20 	    
	jr nz,$+34		;6121	20 20 	    
	jr nz,$+34		;6123	20 20 	    
	ld b,l			;6125	45 	E 
	ld e,b			;6126	58 	X 
	ld d,h			;6127	54 	T 
	dec l			;6128	2d 	- 
	ld d,e			;6129	53 	S 
	ld b,e			;612a	43 	C 
	ld c,(hl)			;612b	4e 	N 
	ld b,l			;612c	45 	E 
	ld e,b			;612d	58 	X 
	ld d,h			;612e	54 	T 
	dec l			;612f	2d 	- 
	ld d,d			;6130	52 	R 
	ld b,l			;6131	45 	E 
	ld b,e			;6132	43 	C 
	call 05f7ah		;6133	cd 7a 5f 	. z _ 
	ld a,(08836h)		;6136	3a 36 88 	: 6 . 
	or a			;6139	b7 	. 
	jp nz,05d92h		;613a	c2 92 5d 	. . ] 
	ld a,(08149h)		;613d	3a 49 81 	: I . 
	cp 00fh		;6140	fe 0f 	. . 
	jp m,0605ch		;6142	fa 5c 60 	. \ ` 
	cp 099h		;6145	fe 99 	. . 
	jp z,062cdh		;6147	ca cd 62 	. . b 
	cp 010h		;614a	fe 10 	. . 
	jp z,062b1h		;614c	ca b1 62 	. . b 
	cp 011h		;614f	fe 11 	. . 
	jp z,062beh		;6151	ca be 62 	. . b 
	ld a,090h		;6154	3e 90 	> . 
	ld (08835h),a		;6156	32 35 88 	2 5 . 
	jp 05d92h		;6159	c3 92 5d 	. . ] 
	push hl			;615c	e5 	. 
	ld c,a			;615d	4f 	O 
	ld b,000h		;615e	06 00 	. . 
	sla c		;6160	cb 21 	. ! 
	add a,c			;6162	81 	. 
	ld c,a			;6163	4f 	O 
	ld hl,06072h		;6164	21 72 60 	! r ` 
	add hl,bc			;6167	09 	. 
	jp (hl)			;6168	e9 	. 
	pop hl			;6169	e1 	. 
	ld a,090h		;616a	3e 90 	> . 
	ld (08835h),a		;616c	32 35 88 	2 5 . 
	jp 05d92h		;616f	c3 92 5d 	. . ] 
	jp 0609fh		;6172	c3 9f 60 	. . ` 
	jp 060b9h		;6175	c3 b9 60 	. . ` 
	jp 060e5h		;6178	c3 e5 60 	. . ` 
	jp 06185h		;617b	c3 85 61 	. . a 
	jp 061a9h		;617e	c3 a9 61 	. . a 
	jp 06202h		;6181	c3 02 62 	. . b 
	jp 06264h		;6184	c3 64 62 	. d b 
	jp 062cbh		;6187	c3 cb 62 	. . b 
	jp 062cch		;618a	c3 cc 62 	. . b 
	jp 06294h		;618d	c3 94 62 	. . b 
	jp 062a2h		;6190	c3 a2 62 	. . b 
	jp 06069h		;6193	c3 69 60 	. i ` 
	jp 06069h		;6196	c3 69 60 	. i ` 
	jp 06069h		;6199	c3 69 60 	. i ` 
	jp 06069h		;619c	c3 69 60 	. i ` 
	pop hl			;619f	e1 	. 
	ld a,046h		;61a0	3e 46 	> F 
	ld (de),a			;61a2	12 	. 
	inc de			;61a3	13 	. 
	ld a,032h		;61a4	3e 32 	> 2 
	ld (de),a			;61a6	12 	. 
	inc de			;61a7	13 	. 
	ld a,030h		;61a8	3e 30 	> 0 
	ld (de),a			;61aa	12 	. 
	inc de			;61ab	13 	. 
	call 05f92h		;61ac	cd 92 5f 	. . _ 
	or a			;61af	b7 	. 
	jp nz,05ca8h		;61b0	c2 a8 5c 	. . \ 
	call 05fbah		;61b3	cd ba 5f 	. . _ 
	jp 05ca8h		;61b6	c3 a8 5c 	. . \ 
	pop hl			;61b9	e1 	. 
	call 05f92h		;61ba	cd 92 5f 	. . _ 
	or a			;61bd	b7 	. 
	jp nz,05d92h		;61be	c2 92 5d 	. . ] 
	push hl			;61c1	e5 	. 
	ld hl,0601eh		;61c2	21 1e 60 	! . ` 
	call 0600ah		;61c5	cd 0a 60 	. . ` 
	pop hl			;61c8	e1 	. 
	xor a			;61c9	af 	. 
	ld (08290h),a		;61ca	32 90 82 	2 . . 
	ld (0e44eh),a		;61cd	32 4e e4 	2 N . 
	ld (0883ah),a		;61d0	32 3a 88 	2 : . 
	ld (08837h),a		;61d3	32 37 88 	2 7 . 
	ld a,(0822eh)		;61d6	3a 2e 82 	: . . 
	or a			;61d9	b7 	. 
	jp z,05d5dh		;61da	ca 5d 5d 	. ] ] 
	ld a,048h		;61dd	3e 48 	> H 
	call 07844h		;61df	cd 44 78 	. D x 
	jp 05d5dh		;61e2	c3 5d 5d 	. ] ] 
	pop hl			;61e5	e1 	. 
	call 05f92h		;61e6	cd 92 5f 	. . _ 
	jp nz,05d92h		;61e9	c2 92 5d 	. . ] 
	ld a,(0810ch)		;61ec	3a 0c 81 	: . . 
	or a			;61ef	b7 	. 
	jp z,0617dh		;61f0	ca 7d 61 	. } a 
	ld a,(08116h)		;61f3	3a 16 81 	: . . 
	or a			;61f6	b7 	. 
	jp z,0617dh		;61f7	ca 7d 61 	. } a 
	ld a,(08119h)		;61fa	3a 19 81 	: . . 
	cp 031h		;61fd	fe 31 	. 1 
	jp nz,0617dh		;61ff	c2 7d 61 	. } a 
	call 062d2h		;6202	cd d2 62 	. . b 
	ld a,(08131h)		;6205	3a 31 81 	: 1 . 
	or a			;6208	b7 	. 
	jp z,06126h		;6209	ca 26 61 	. & a 
	push bc			;620c	c5 	. 
	ld b,00ah		;620d	06 0a 	. . 
	call 00545h		;620f	cd 45 05 	. E . 
	pop bc			;6212	c1 	. 
	ld a,001h		;6213	3e 01 	> . 
	out (08dh),a		;6215	d3 8d 	. . 
	ld a,045h		;6217	3e 45 	> E 
	call 0495ah		;6219	cd 5a 49 	. Z I 
	ld a,042h		;621c	3e 42 	> B 
	call 0495ah		;621e	cd 5a 49 	. Z I 
	ld a,031h		;6221	3e 31 	> 1 
	call 0495ah		;6223	cd 5a 49 	. Z I 
	ld a,06eh		;6226	3e 6e 	> n 
	call 048f2h		;6228	cd f2 48 	. . H 
	ld a,039h		;622b	3e 39 	> 9 
	call 048f2h		;622d	cd f2 48 	. . H 
	xor a			;6230	af 	. 
	ld (0825dh),a		;6231	32 5d 82 	2 ] . 
	ld (0825eh),a		;6234	32 5e 82 	2 ^ . 
	ld a,(08a82h)		;6237	3a 82 8a 	: . . 
	cp 0e0h		;623a	fe e0 	. . 
	jp z,0616eh		;623c	ca 6e 61 	. n a 
	call 062d2h		;623f	cd d2 62 	. . b 
	ld a,(08291h)		;6242	3a 91 82 	: . . 
	res 5,a		;6245	cb af 	. . 
	res 7,a		;6247	cb bf 	. . 
	set 6,a		;6249	cb f7 	. . 
	ld (08291h),a		;624b	32 91 82 	2 . . 
	out (083h),a		;624e	d3 83 	. . 
	ld a,001h		;6250	3e 01 	> . 
	ld (0883ch),a		;6252	32 3c 88 	2 < . 
	ld a,002h		;6255	3e 02 	> . 
	ld (0e44eh),a		;6257	32 4e e4 	2 N . 
	push hl			;625a	e5 	. 
	push de			;625b	d5 	. 
	call 04a40h		;625c	cd 40 4a 	. @ J 
	pop de			;625f	d1 	. 
	pop hl			;6260	e1 	. 
	ld a,046h		;6261	3e 46 	> F 
	ld (de),a			;6263	12 	. 
	inc de			;6264	13 	. 
	ld a,032h		;6265	3e 32 	> 2 
	ld (de),a			;6267	12 	. 
	inc de			;6268	13 	. 
	ld (de),a			;6269	12 	. 
	inc de			;626a	13 	. 
	jp 05ca8h		;626b	c3 a8 5c 	. . \ 
	call 062d2h		;626e	cd d2 62 	. . b 
	ld a,(08291h)		;6271	3a 91 82 	: . . 
	res 6,a		;6274	cb b7 	. . 
	res 7,a		;6276	cb bf 	. . 
	set 5,a		;6278	cb ef 	. . 
	jp 0614bh		;627a	c3 4b 61 	. K a 
	ld a,002h		;627d	3e 02 	> . 
	ld (08835h),a		;627f	32 35 88 	2 5 . 
	jp 05d92h		;6282	c3 92 5d 	. . ] 
	pop hl			;6285	e1 	. 
	ld a,(0883ch)		;6286	3a 3c 88 	: < . 
	or a			;6289	b7 	. 
	jp z,061a6h		;628a	ca a6 61 	. . a 
	ld a,(08291h)		;628d	3a 91 82 	: . . 
	or 0e0h		;6290	f6 e0 	. . 
	ld (08291h),a		;6292	32 91 82 	2 . . 
	out (083h),a		;6295	d3 83 	. . 
	xor a			;6297	af 	. 
	ld (0883ch),a		;6298	32 3c 88 	2 < . 
	ld (08118h),a		;629b	32 18 81 	2 . . 
	ld a,001h		;629e	3e 01 	> . 
	ld (0e44eh),a		;62a0	32 4e e4 	2 N . 
	call 05fbah		;62a3	cd ba 5f 	. . _ 
	jp 05ca8h		;62a6	c3 a8 5c 	. . \ 
	pop hl			;62a9	e1 	. 
	call 05f92h		;62aa	cd 92 5f 	. . _ 
	jp nz,05d92h		;62ad	c2 92 5d 	. . ] 
	ld a,(08116h)		;62b0	3a 16 81 	: . . 
	or a			;62b3	b7 	. 
	jp z,061feh		;62b4	ca fe 61 	. . a 
	ld a,(0810ch)		;62b7	3a 0c 81 	: . . 
	or a			;62ba	b7 	. 
	jp z,061feh		;62bb	ca fe 61 	. . a 
	ld a,(08119h)		;62be	3a 19 81 	: . . 
	cp 031h		;62c1	fe 31 	. 1 
	jp nz,061feh		;62c3	c2 fe 61 	. . a 
	push hl			;62c6	e5 	. 
	push de			;62c7	d5 	. 
	call 03149h		;62c8	cd 49 31 	. I 1 
	ld hl,08284h		;62cb	21 84 82 	! . . 
	call 0550eh		;62ce	cd 0e 55 	. . U 
	ld a,030h		;62d1	3e 30 	> 0 
	call 05503h		;62d3	cd 03 55 	. . U 
	ld bc,00050h		;62d6	01 50 00 	. P . 
	call 05538h		;62d9	cd 38 55 	. 8 U 
	cp 00fh		;62dc	fe 0f 	. . 
	pop de			;62de	d1 	. 
	pop hl			;62df	e1 	. 
	jp z,061ffh		;62e0	ca ff 61 	. . a 
	ld a,046h		;62e3	3e 46 	> F 
	ld (de),a			;62e5	12 	. 
	inc de			;62e6	13 	. 
	ld a,032h		;62e7	3e 32 	> 2 
	ld (de),a			;62e9	12 	. 
	inc de			;62ea	13 	. 
	ld a,034h		;62eb	3e 34 	> 4 
	ld (de),a			;62ed	12 	. 
	inc de			;62ee	13 	. 
	ld a,001h		;62ef	3e 01 	> . 
	ld (08838h),a		;62f1	32 38 88 	2 8 . 
	xor a			;62f4	af 	. 
	ld (08116h),a		;62f5	32 16 81 	2 . . 
	call 05fbah		;62f8	cd ba 5f 	. . _ 
	jp 05ca8h		;62fb	c3 a8 5c 	. . \ 
	nop			;62fe	00 	. 
	jp 0617dh		;62ff	c3 7d 61 	. } a 
	pop hl			;6302	e1 	. 
	call 05f92h		;6303	cd 92 5f 	. . _ 
	jp nz,05d92h		;6306	c2 92 5d 	. . ] 
	ld a,(0810ch)		;6309	3a 0c 81 	: . . 
	or a			;630c	b7 	. 
	jp z,06261h		;630d	ca 61 62 	. a b 
	ld a,(08119h)		;6310	3a 19 81 	: . . 
	cp 031h		;6313	fe 31 	. 1 
	jp nz,06261h		;6315	c2 61 62 	. a b 
	ld a,(08838h)		;6318	3a 38 88 	: 8 . 
	or a			;631b	b7 	. 
	jp z,06261h		;631c	ca 61 62 	. a b 
	push hl			;631f	e5 	. 
	push de			;6320	d5 	. 
	call 05522h		;6321	cd 22 55 	. " U 
	call 03149h		;6324	cd 49 31 	. I 1 
	ld hl,08284h		;6327	21 84 82 	! . . 
	call 0550eh		;632a	cd 0e 55 	. . U 
	pop de			;632d	d1 	. 
	pop hl			;632e	e1 	. 
	ld a,(08131h)		;632f	3a 31 81 	: 1 . 
	or a			;6332	b7 	. 
	jp z,0623ah		;6333	ca 3a 62 	. : b 
	ld a,001h		;6336	3e 01 	> . 
	out (08dh),a		;6338	d3 8d 	. . 
	ld a,(08291h)		;633a	3a 91 82 	: . . 
	set 5,a		;633d	cb ef 	. . 
	res 6,a		;633f	cb b7 	. . 
	set 7,a		;6341	cb ff 	. . 
	ld (08291h),a		;6343	32 91 82 	2 . . 
	out (083h),a		;6346	d3 83 	. . 
	ld a,001h		;6348	3e 01 	> . 
	ld (0883bh),a		;634a	32 3b 88 	2 ; . 
	ld a,003h		;634d	3e 03 	> . 
	ld (0e44eh),a		;634f	32 4e e4 	2 N . 
	ld a,046h		;6352	3e 46 	> F 
	ld (de),a			;6354	12 	. 
	inc de			;6355	13 	. 
	ld a,032h		;6356	3e 32 	> 2 
	ld (de),a			;6358	12 	. 
	inc de			;6359	13 	. 
	ld a,035h		;635a	3e 35 	> 5 
	ld (de),a			;635c	12 	. 
	inc de			;635d	13 	. 
	jp 05ca8h		;635e	c3 a8 5c 	. . \ 
	jp 0617dh		;6361	c3 7d 61 	. } a 
	pop hl			;6364	e1 	. 
	ld a,(0883bh)		;6365	3a 3b 88 	: ; . 
	or a			;6368	b7 	. 
	jp z,0628eh		;6369	ca 8e 62 	. . b 
	call 0552dh		;636c	cd 2d 55 	. - U 
	xor a			;636f	af 	. 
	ld (0883bh),a		;6370	32 3b 88 	2 ; . 
	ld (08838h),a		;6373	32 38 88 	2 8 . 
	ld (08118h),a		;6376	32 18 81 	2 . . 
	ld a,001h		;6379	3e 01 	> . 
	ld (0e44eh),a		;637b	32 4e e4 	2 N . 
	ld a,(08291h)		;637e	3a 91 82 	: . . 
	or 0e0h		;6381	f6 e0 	. . 
	ld (08291h),a		;6383	32 91 82 	2 . . 
	out (083h),a		;6386	d3 83 	. . 
	call 05fbah		;6388	cd ba 5f 	. . _ 
	jp 05ca8h		;638b	c3 a8 5c 	. . \ 
	ld (08838h),a		;638e	32 38 88 	2 8 . 
	jp 0628bh		;6391	c3 8b 62 	. . b 
	pop hl			;6394	e1 	. 
	ld a,076h		;6395	3e 76 	> v 
	call 048f2h		;6397	cd f2 48 	. . H 
	ld a,034h		;639a	3e 34 	> 4 
	call 048f2h		;639c	cd f2 48 	. . H 
	jp 05ca8h		;639f	c3 a8 5c 	. . \ 
	pop hl			;63a2	e1 	. 
	ld a,076h		;63a3	3e 76 	> v 
	call 048f2h		;63a5	cd f2 48 	. . H 
	ld a,037h		;63a8	3e 37 	> 7 
	call 048f2h		;63aa	cd f2 48 	. . H 
	jp 05ca8h		;63ad	c3 a8 5c 	. . \ 
	pop hl			;63b0	e1 	. 
	ld a,045h		;63b1	3e 45 	> E 
	call 048f2h		;63b3	cd f2 48 	. . H 
	ld a,031h		;63b6	3e 31 	> 1 
	call 048f2h		;63b8	cd f2 48 	. . H 
	jp 05ca8h		;63bb	c3 a8 5c 	. . \ 
	ld a,045h		;63be	3e 45 	> E 
	call 048f2h		;63c0	cd f2 48 	. . H 
	ld a,032h		;63c3	3e 32 	> 2 
	call 048f2h		;63c5	cd f2 48 	. . H 
	jp 05ca8h		;63c8	c3 a8 5c 	. . \ 
	nop			;63cb	00 	. 
	nop			;63cc	00 	. 
	nop			;63cd	00 	. 
	pop hl			;63ce	e1 	. 
	jp 0606ah		;63cf	c3 6a 60 	. j ` 
	push hl			;63d2	e5 	. 
	ld a,057h		;63d3	3e 57 	> W 
	call 0495ah		;63d5	cd 5a 49 	. Z I 
	ld hl,06060h		;63d8	21 60 60 	! ` ` 
	ld (08006h),hl		;63db	22 06 80 	" . . 
	ld hl,03f3fh		;63de	21 3f 3f 	! ? ? 
	ld (0800ch),hl		;63e1	22 0c 80 	" . . 
	call 01b76h		;63e4	cd 76 1b 	. v . 
	ld a,039h		;63e7	3e 39 	> 9 
	call 0495ah		;63e9	cd 5a 49 	. Z I 
	pop hl			;63ec	e1 	. 
	ret			;63ed	c9 	. 
	call 05f7ah		;63ee	cd 7a 5f 	. z _ 
	ld a,(08836h)		;63f1	3a 36 88 	: 6 . 
	or a			;63f4	b7 	. 
	jp nz,05d92h		;63f5	c2 92 5d 	. . ] 
	ld a,(08149h)		;63f8	3a 49 81 	: I . 
	or a			;63fb	b7 	. 
	jp z,06311h		;63fc	ca 11 63 	. . c 
	cp 001h		;63ff	fe 01 	. . 
	jp z,0636dh		;6401	ca 6d 63 	. m c 
	cp 002h		;6404	fe 02 	. . 
	jp z,0639fh		;6406	ca 9f 63 	. . c 
	ld a,090h		;6409	3e 90 	> . 
	ld (08835h),a		;640b	32 35 88 	2 5 . 
	jp 05d92h		;640e	c3 92 5d 	. . ] 
	push hl			;6411	e5 	. 
	ld a,(hl)			;6412	7e 	~ 
	inc hl			;6413	23 	# 
	cp 030h		;6414	fe 30 	. 0 
	jp nz,0634ah		;6416	c2 4a 63 	. J c 
	ld a,(hl)			;6419	7e 	~ 
	inc hl			;641a	23 	# 
	cp 035h		;641b	fe 35 	. 5 
	jp p,06351h		;641d	f2 51 63 	. Q c 
	ld b,002h		;6420	06 02 	. . 
	ld a,(hl)			;6422	7e 	~ 
	inc hl			;6423	23 	# 
	cp 030h		;6424	fe 30 	. 0 
	jp m,06364h		;6426	fa 64 63 	. d c 
	cp 03ah		;6429	fe 3a 	. : 
	jp p,06364h		;642b	f2 64 63 	. d c 
	djnz $-12		;642e	10 f2 	. . 
	pop hl			;6430	e1 	. 
	ld a,06eh		;6431	3e 6e 	> n 
	call 048f2h		;6433	cd f2 48 	. . H 
	ld a,034h		;6436	3e 34 	> 4 
	call 048f2h		;6438	cd f2 48 	. . H 
	ld b,004h		;643b	06 04 	. . 
	ld a,(hl)			;643d	7e 	~ 
	inc hl			;643e	23 	# 
	call 048f2h		;643f	cd f2 48 	. . H 
	djnz $-5		;6442	10 f9 	. . 
	call 05fbah		;6444	cd ba 5f 	. . _ 
	jp 05ca8h		;6447	c3 a8 5c 	. . \ 
	cp 034h		;644a	fe 34 	. 4 
	jp p,06364h		;644c	f2 64 63 	. d c 
	ld a,(hl)			;644f	7e 	~ 
	inc hl			;6450	23 	# 
	cp 03ah		;6451	fe 3a 	. : 
	jp p,06364h		;6453	f2 64 63 	. d c 
	ld b,002h		;6456	06 02 	. . 
	ld a,(hl)			;6458	7e 	~ 
	inc hl			;6459	23 	# 
	cp 030h		;645a	fe 30 	. 0 
	jp nz,06364h		;645c	c2 64 63 	. d c 
	djnz $-7		;645f	10 f7 	. . 
	jp 06330h		;6461	c3 30 63 	. 0 c 
	pop hl			;6464	e1 	. 
	ld a,00ch		;6465	3e 0c 	> . 
	ld (08835h),a		;6467	32 35 88 	2 5 . 
	jp 05d92h		;646a	c3 92 5d 	. . ] 
	ld a,06eh		;646d	3e 6e 	> n 
	call 048f2h		;646f	cd f2 48 	. . H 
	ld a,035h		;6472	3e 35 	> 5 
	call 048f2h		;6474	cd f2 48 	. . H 
	ld b,002h		;6477	06 02 	. . 
	ld a,(hl)			;6479	7e 	~ 
	inc hl			;647a	23 	# 
	cp 030h		;647b	fe 30 	. 0 
	jp m,06397h		;647d	fa 97 63 	. . c 
	cp 03ah		;6480	fe 3a 	. : 
	jp m,0638fh		;6482	fa 8f 63 	. . c 
	cp 041h		;6485	fe 41 	. A 
	jp m,06397h		;6487	fa 97 63 	. . c 
	cp 047h		;648a	fe 47 	. G 
	jp p,06397h		;648c	f2 97 63 	. . c 
	call 048f2h		;648f	cd f2 48 	. . H 
	djnz $-25		;6492	10 e5 	. . 
	jp 05ca8h		;6494	c3 a8 5c 	. . \ 
	ld a,090h		;6497	3e 90 	> . 
	ld (08835h),a		;6499	32 35 88 	2 5 . 
	jp 05d92h		;649c	c3 92 5d 	. . ] 
	ld a,06eh		;649f	3e 6e 	> n 
	call 048f2h		;64a1	cd f2 48 	. . H 
	ld a,036h		;64a4	3e 36 	> 6 
	call 048f2h		;64a6	cd f2 48 	. . H 
	jp 06377h		;64a9	c3 77 63 	. w c 
	call 05f7ah		;64ac	cd 7a 5f 	. z _ 
	ld a,(08836h)		;64af	3a 36 88 	: 6 . 
	or a			;64b2	b7 	. 
	jp nz,05d92h		;64b3	c2 92 5d 	. . ] 
	xor a			;64b6	af 	. 
	ld (08292h),a		;64b7	32 92 82 	2 . . 
	ld a,(08149h)		;64ba	3a 49 81 	: I . 
	cp 013h		;64bd	fe 13 	. . 
	jp p,06409h		;64bf	f2 09 64 	. . d 
	ld c,a			;64c2	4f 	O 
	ld b,000h		;64c3	06 00 	. . 
	sla c		;64c5	cb 21 	. ! 
	add a,c			;64c7	81 	. 
	ld c,a			;64c8	4f 	O 
	push hl			;64c9	e5 	. 
	ld hl,063cfh		;64ca	21 cf 63 	! . c 
	add hl,bc			;64cd	09 	. 
	jp (hl)			;64ce	e9 	. 
	jp 06411h		;64cf	c3 11 64 	. . d 
	jp 06408h		;64d2	c3 08 64 	. . d 
	jp 06408h		;64d5	c3 08 64 	. . d 
	jp 06408h		;64d8	c3 08 64 	. . d 
	jp 06454h		;64db	c3 54 64 	. T d 
	jp 06462h		;64de	c3 62 64 	. b d 
	jp 0646ah		;64e1	c3 6a 64 	. j d 
	jp 06475h		;64e4	c3 75 64 	. u d 
	jp 0647bh		;64e7	c3 7b 64 	. { d 
	jp 06408h		;64ea	c3 08 64 	. . d 
	jp 06408h		;64ed	c3 08 64 	. . d 
	jp 06408h		;64f0	c3 08 64 	. . d 
	jp 06408h		;64f3	c3 08 64 	. . d 
	jp 06408h		;64f6	c3 08 64 	. . d 
	jp 064a4h		;64f9	c3 a4 64 	. . d 
	jp 06408h		;64fc	c3 08 64 	. . d 
	jp 06408h		;64ff	c3 08 64 	. . d 
	jp 064d4h		;6502	c3 d4 64 	. . d 
	jp 064ddh		;6505	c3 dd 64 	. . d 
	pop hl			;6508	e1 	. 
	ld a,090h		;6509	3e 90 	> . 
	ld (08835h),a		;650b	32 35 88 	2 5 . 
	jp 05d92h		;650e	c3 92 5d 	. . ] 
	pop hl			;6511	e1 	. 
	push de			;6512	d5 	. 
	ld de,0a015h		;6513	11 15 a0 	. . . 
	ld bc,00005h		;6516	01 05 00 	. . . 
	ldir		;6519	ed b0 	. . 
	pop de			;651b	d1 	. 
	jp 05ca8h		;651c	c3 a8 5c 	. . \ 
	pop hl			;651f	e1 	. 
	ld a,(0821eh)		;6520	3a 1e 82 	: . . 
	or a			;6523	b7 	. 
	jp nz,05ca8h		;6524	c2 a8 5c 	. . \ 
	ld a,082h		;6527	3e 82 	> . 
	jp 06442h		;6529	c3 42 64 	. B d 
	call 05fbah		;652c	cd ba 5f 	. . _ 
	jp 05ca8h		;652f	c3 a8 5c 	. . \ 
	pop hl			;6532	e1 	. 
	ld a,(0821eh)		;6533	3a 1e 82 	: . . 
	or a			;6536	b7 	. 
	jp z,05ca8h		;6537	ca a8 5c 	. . \ 
	ld a,082h		;653a	3e 82 	> . 
	jp 06442h		;653c	c3 42 64 	. B d 
	pop hl			;653f	e1 	. 
	ld a,083h		;6540	3e 83 	> . 
	ld (0814ah),a		;6542	32 4a 81 	2 J . 
	push hl			;6545	e5 	. 
	push de			;6546	d5 	. 
	call 02026h		;6547	cd 26 20 	. &   
	ld a,0ffh		;654a	3e ff 	> . 
	ld (0814ah),a		;654c	32 4a 81 	2 J . 
	pop de			;654f	d1 	. 
	pop hl			;6550	e1 	. 
	jp 0642ch		;6551	c3 2c 64 	. , d 
	pop hl			;6554	e1 	. 
	push de			;6555	d5 	. 
	ld bc,00002h		;6556	01 02 00 	. . . 
	ld de,0a005h		;6559	11 05 a0 	. . . 
	ldir		;655c	ed b0 	. . 
	pop de			;655e	d1 	. 
	jp 05ca8h		;655f	c3 a8 5c 	. . \ 
	pop hl			;6562	e1 	. 
	push de			;6563	d5 	. 
	ld de,0a007h		;6564	11 07 a0 	. . . 
	jp 06416h		;6567	c3 16 64 	. . d 
	pop hl			;656a	e1 	. 
	push de			;656b	d5 	. 
	ld de,0a014h		;656c	11 14 a0 	. . . 
	ldi		;656f	ed a0 	. . 
	pop de			;6571	d1 	. 
	jp 05ca8h		;6572	c3 a8 5c 	. . \ 
	pop hl			;6575	e1 	. 
	ld a,08fh		;6576	3e 8f 	> . 
	jp 06442h		;6578	c3 42 64 	. B d 
	pop hl			;657b	e1 	. 
	ld a,092h		;657c	3e 92 	> . 
	jp 06442h		;657e	c3 42 64 	. B d 
	pop hl			;6581	e1 	. 
	ld a,090h		;6582	3e 90 	> . 
	jp 06442h		;6584	c3 42 64 	. B d 
	pop hl			;6587	e1 	. 
	ld a,(0822bh)		;6588	3a 2b 82 	: + . 
	or a			;658b	b7 	. 
	jp nz,06482h		;658c	c2 82 64 	. . d 
	jp 05ca8h		;658f	c3 a8 5c 	. . \ 
	pop hl			;6592	e1 	. 
	ld a,003h		;6593	3e 03 	> . 
	jp 06442h		;6595	c3 42 64 	. B d 
	pop hl			;6598	e1 	. 
	ld a,007h		;6599	3e 07 	> . 
	jp 06442h		;659b	c3 42 64 	. B d 
	pop hl			;659e	e1 	. 
	ld a,010h		;659f	3e 10 	> . 
	jp 06442h		;65a1	c3 42 64 	. B d 
	pop hl			;65a4	e1 	. 
	ld a,(08133h)		;65a5	3a 33 81 	: 3 . 
	or a			;65a8	b7 	. 
	jp z,05ca8h		;65a9	ca a8 5c 	. . \ 
	ld a,00fh		;65ac	3e 0f 	> . 
	jp 06442h		;65ae	c3 42 64 	. B d 
	pop hl			;65b1	e1 	. 
	push de			;65b2	d5 	. 
	ld bc,00006h		;65b3	01 06 00 	. . . 
	ld de,0a00eh		;65b6	11 0e a0 	. . . 
	ldir		;65b9	ed b0 	. . 
	pop de			;65bb	d1 	. 
	jp 05ca8h		;65bc	c3 a8 5c 	. . \ 
	pop hl			;65bf	e1 	. 
	push de			;65c0	d5 	. 
	ld bc,00007h		;65c1	01 07 00 	. . . 
	ld de,0e700h		;65c4	11 00 e7 	. . . 
	push bc			;65c7	c5 	. 
	ldir		;65c8	ed b0 	. . 
	ld de,0e720h		;65ca	11 20 e7 	.   . 
	pop bc			;65cd	c1 	. 
	ldir		;65ce	ed b0 	. . 
	pop de			;65d0	d1 	. 
	jp 05ca8h		;65d1	c3 a8 5c 	. . \ 
	pop hl			;65d4	e1 	. 
	ld a,04fh		;65d5	3e 4f 	> O 
	call 048f2h		;65d7	cd f2 48 	. . H 
	jp 05ca8h		;65da	c3 a8 5c 	. . \ 
	ld a,(0822bh)		;65dd	3a 2b 82 	: + . 
	cp 001h		;65e0	fe 01 	. . 
	jp z,064f7h		;65e2	ca f7 64 	. . d 
	call 02e45h		;65e5	cd 45 2e 	. E . 
	call 02e1fh		;65e8	cd 1f 2e 	. . . 
	ld a,001h		;65eb	3e 01 	> . 
	ld (08125h),a		;65ed	32 25 81 	2 % . 
	pop hl			;65f0	e1 	. 
	call 05fbah		;65f1	cd ba 5f 	. . _ 
	jp 05ca8h		;65f4	c3 a8 5c 	. . \ 
	pop hl			;65f7	e1 	. 
	ld a,004h		;65f8	3e 04 	> . 
	ld (08835h),a		;65fa	32 35 88 	2 5 . 
	jp 05d92h		;65fd	c3 92 5d 	. . ] 
	ld a,001h		;6600	3e 01 	> . 
	or a			;6602	b7 	. 
	jp z,0658bh		;6603	ca 8b 65 	. . e 
	ld a,(0822eh)		;6606	3a 2e 82 	: . . 
	or a			;6609	b7 	. 
	jp z,06644h		;660a	ca 44 66 	. D f 
	ld a,047h		;660d	3e 47 	> G 
	call 07844h		;660f	cd 44 78 	. D x 
	jp z,06644h		;6612	ca 44 66 	. D f 
	ld a,000h		;6615	3e 00 	> . 
	ld (0829ch),a		;6617	32 9c 82 	2 . . 
	ld a,(0822eh)		;661a	3a 2e 82 	: . . 
	or a			;661d	b7 	. 
	jp z,06644h		;661e	ca 44 66 	. D f 
	call 05f7ah		;6621	cd 7a 5f 	. z _ 
	ld a,(08836h)		;6624	3a 36 88 	: 6 . 
	or a			;6627	b7 	. 
	jp nz,05d92h		;6628	c2 92 5d 	. . ] 
	ld a,(08149h)		;662b	3a 49 81 	: I . 
	cp 015h		;662e	fe 15 	. . 
	jp p,0658bh		;6630	f2 8b 65 	. . e 
	cp 00ch		;6633	fe 0c 	. . 
	jp z,06866h		;6635	ca 66 68 	. f h 
	ld c,a			;6638	4f 	O 
	ld b,000h		;6639	06 00 	. . 
	sla c		;663b	cb 21 	. ! 
	add a,c			;663d	81 	. 
	ld c,a			;663e	4f 	O 
	push hl			;663f	e5 	. 
	ld hl,0654ch		;6640	21 4c 65 	! L e 
	add hl,bc			;6643	09 	. 
	push hl			;6644	e5 	. 
	push de			;6645	d5 	. 
	call 07710h		;6646	cd 10 77 	. . w 
	pop de			;6649	d1 	. 
	pop hl			;664a	e1 	. 
	jp (hl)			;664b	e9 	. 
	jp 06593h		;664c	c3 93 65 	. . e 
	jp 0664ch		;664f	c3 4c 66 	. L f 
	jp 0669dh		;6652	c3 9d 66 	. . f 
	jp 066bbh		;6655	c3 bb 66 	. . f 
	jp 066d9h		;6658	c3 d9 66 	. . f 
	jp 066f7h		;665b	c3 f7 66 	. . f 
	jp 06715h		;665e	c3 15 67 	. . g 
	jp 06733h		;6661	c3 33 67 	. 3 g 
	jp 06774h		;6664	c3 74 67 	. t g 
	jp 06800h		;6667	c3 00 68 	. . h 
	jp 06822h		;666a	c3 22 68 	. " h 
	jp 06844h		;666d	c3 44 68 	. D h 
	jp 0658bh		;6670	c3 8b 65 	. . e 
	jp 0658bh		;6673	c3 8b 65 	. . e 
	jp 06890h		;6676	c3 90 68 	. . h 
	jp 0689ch		;6679	c3 9c 68 	. . h 
	jp 0658bh		;667c	c3 8b 65 	. . e 
	jp 068beh		;667f	c3 be 68 	. . h 
	jp 068d6h		;6682	c3 d6 68 	. . h 
	jp 068dbh		;6685	c3 db 68 	. . h 
	jp 068e0h		;6688	c3 e0 68 	. . h 
	ld a,090h		;668b	3e 90 	> . 
	ld (08835h),a		;668d	32 35 88 	2 5 . 
	jp 05d92h		;6690	c3 92 5d 	. . ] 
	pop hl			;6693	e1 	. 
	ld a,042h		;6694	3e 42 	> B 
	call 07844h		;6696	cd 44 78 	. D x 
	jp z,06644h		;6699	ca 44 66 	. D f 
	ld b,009h		;669c	06 09 	. . 
	ld a,058h		;669e	3e 58 	> X 
	call 07844h		;66a0	cd 44 78 	. D x 
	jp z,06644h		;66a3	ca 44 66 	. D f 
	ld a,(hl)			;66a6	7e 	~ 
	inc hl			;66a7	23 	# 
	call 07844h		;66a8	cd 44 78 	. D x 
	jp z,06644h		;66ab	ca 44 66 	. D f 
	djnz $-8		;66ae	10 f6 	. . 
	ld b,009h		;66b0	06 09 	. . 
	ld a,059h		;66b2	3e 59 	> Y 
	call 07844h		;66b4	cd 44 78 	. D x 
	jp z,06644h		;66b7	ca 44 66 	. D f 
	ld a,(hl)			;66ba	7e 	~ 
	inc hl			;66bb	23 	# 
	call 07844h		;66bc	cd 44 78 	. D x 
	jp z,06644h		;66bf	ca 44 66 	. D f 
	djnz $-8		;66c2	10 f6 	. . 
	ld b,005h		;66c4	06 05 	. . 
	ld a,05ah		;66c6	3e 5a 	> Z 
	call 07844h		;66c8	cd 44 78 	. D x 
	jp z,06644h		;66cb	ca 44 66 	. D f 
	ld a,(hl)			;66ce	7e 	~ 
	inc hl			;66cf	23 	# 
	call 07844h		;66d0	cd 44 78 	. D x 
	jp z,06644h		;66d3	ca 44 66 	. D f 
	djnz $-8		;66d6	10 f6 	. . 
	ld a,02ah		;66d8	3e 2a 	> * 
	call 07844h		;66da	cd 44 78 	. D x 
	jp z,06644h		;66dd	ca 44 66 	. D f 
	ld a,000h		;66e0	3e 00 	> . 
	ld (08353h),a		;66e2	32 53 83 	2 S . 
	ld bc,00010h		;66e5	01 10 00 	. . . 
	push bc			;66e8	c5 	. 
	ld bc,01388h		;66e9	01 88 13 	. . . 
	push hl			;66ec	e5 	. 
	push de			;66ed	d5 	. 
	push bc			;66ee	c5 	. 
	call 0182ah		;66ef	cd 2a 18 	. * . 
	call 01882h		;66f2	cd 82 18 	. . . 
	call 07873h		;66f5	cd 73 78 	. s x 
	call 070e4h		;66f8	cd e4 70 	. . p 
	pop bc			;66fb	c1 	. 
	pop de			;66fc	d1 	. 
	pop hl			;66fd	e1 	. 
	ld a,(08353h)		;66fe	3a 53 83 	: S . 
	cp 045h		;6701	fe 45 	. E 
	jp z,06634h		;6703	ca 34 66 	. 4 f 
	cp 046h		;6706	fe 46 	. F 
	jp z,06626h		;6708	ca 26 66 	. & f 
	ld a,(08232h)		;670b	3a 32 82 	: 2 . 
	or a			;670e	b7 	. 
	jr z,$+7		;670f	28 05 	( . 
	ld a,030h		;6711	3e 30 	> 0 
	jp 06644h		;6713	c3 44 66 	. D f 
	dec bc			;6716	0b 	. 
	ld a,b			;6717	78 	x 
	or c			;6718	b1 	. 
	jp nz,065ech		;6719	c2 ec 65 	. . e 
	pop bc			;671c	c1 	. 
	dec bc			;671d	0b 	. 
	ld a,b			;671e	78 	x 
	or c			;671f	b1 	. 
	jp nz,065e8h		;6720	c2 e8 65 	. . e 
	jp 06644h		;6723	c3 44 66 	. D f 
	pop bc			;6726	c1 	. 
	push hl			;6727	e5 	. 
	ld bc,00003h		;6728	01 03 00 	. . . 
	ld hl,08353h		;672b	21 53 83 	! S . 
	ldir		;672e	ed b0 	. . 
	pop hl			;6730	e1 	. 
	jp 05ca8h		;6731	c3 a8 5c 	. . \ 
	pop bc			;6734	c1 	. 
	push hl			;6735	e5 	. 
	ld bc,00003h		;6736	01 03 00 	. . . 
	ld hl,08353h		;6739	21 53 83 	! S . 
	ldir		;673c	ed b0 	. . 
	pop hl			;673e	e1 	. 
	ld b,002h		;673f	06 02 	. . 
	jp 05dcdh		;6741	c3 cd 5d 	. . ] 
	ld a,031h		;6744	3e 31 	> 1 
	ld (08835h),a		;6746	32 35 88 	2 5 . 
	jp 05d92h		;6749	c3 92 5d 	. . ] 
	pop hl			;674c	e1 	. 
	ld a,(0829ch)		;674d	3a 9c 82 	: . . 
	cp 001h		;6750	fe 01 	. . 
	jp z,0665dh		;6752	ca 5d 66 	. ] f 
	ld a,042h		;6755	3e 42 	> B 
	call 07844h		;6757	cd 44 78 	. D x 
	jp z,06644h		;675a	ca 44 66 	. D f 
	ld a,058h		;675d	3e 58 	> X 
	call 07844h		;675f	cd 44 78 	. D x 
	jp z,06644h		;6762	ca 44 66 	. D f 
	ld b,009h		;6765	06 09 	. . 
	ld a,(hl)			;6767	7e 	~ 
	inc hl			;6768	23 	# 
	call 07844h		;6769	cd 44 78 	. D x 
	jp z,06644h		;676c	ca 44 66 	. D f 
	djnz $-8		;676f	10 f6 	. . 
	ld a,(hl)			;6771	7e 	~ 
	cp 04dh		;6772	fe 4d 	. M 
	jp nz,06695h		;6774	c2 95 66 	. . f 
	inc hl			;6777	23 	# 
	ld a,(hl)			;6778	7e 	~ 
	cp 030h		;6779	fe 30 	. 0 
	jp nz,06694h		;677b	c2 94 66 	. . f 
	inc hl			;677e	23 	# 
	ld a,(hl)			;677f	7e 	~ 
	cp 031h		;6780	fe 31 	. 1 
	jp m,06693h		;6782	fa 93 66 	. . f 
	cp 037h		;6785	fe 37 	. 7 
	jp p,06693h		;6787	f2 93 66 	. . f 
	dec hl			;678a	2b 	+ 
	ld a,001h		;678b	3e 01 	> . 
	ld (0829ch),a		;678d	32 9c 82 	2 . . 
	jp 0651ah		;6790	c3 1a 65 	. . e 
	dec hl			;6793	2b 	+ 
	dec hl			;6794	2b 	+ 
	ld a,000h		;6795	3e 00 	> . 
	ld (0829ch),a		;6797	32 9c 82 	2 . . 
	jp 065d8h		;679a	c3 d8 65 	. . e 
	pop hl			;679d	e1 	. 
	ld a,(0829ch)		;679e	3a 9c 82 	: . . 
	cp 001h		;67a1	fe 01 	. . 
	jp z,066aeh		;67a3	ca ae 66 	. . f 
	ld a,042h		;67a6	3e 42 	> B 
	call 07844h		;67a8	cd 44 78 	. D x 
	jp z,06644h		;67ab	ca 44 66 	. D f 
	ld a,059h		;67ae	3e 59 	> Y 
	call 07844h		;67b0	cd 44 78 	. D x 
	jp z,06644h		;67b3	ca 44 66 	. D f 
	ld b,009h		;67b6	06 09 	. . 
	jp 06667h		;67b8	c3 67 66 	. g f 
	pop hl			;67bb	e1 	. 
	ld a,(0829ch)		;67bc	3a 9c 82 	: . . 
	cp 001h		;67bf	fe 01 	. . 
	jp z,066cch		;67c1	ca cc 66 	. . f 
	ld a,042h		;67c4	3e 42 	> B 
	call 07844h		;67c6	cd 44 78 	. D x 
	jp z,06644h		;67c9	ca 44 66 	. D f 
	ld a,05ah		;67cc	3e 5a 	> Z 
	call 07844h		;67ce	cd 44 78 	. D x 
	jp z,06644h		;67d1	ca 44 66 	. D f 
	ld b,005h		;67d4	06 05 	. . 
	jp 06667h		;67d6	c3 67 66 	. g f 
	pop hl			;67d9	e1 	. 
	ld a,(0829ch)		;67da	3a 9c 82 	: . . 
	cp 001h		;67dd	fe 01 	. . 
	jp z,066eah		;67df	ca ea 66 	. . f 
	ld a,042h		;67e2	3e 42 	> B 
	call 07844h		;67e4	cd 44 78 	. D x 
	jp z,06644h		;67e7	ca 44 66 	. D f 
	ld a,07ah		;67ea	3e 7a 	> z 
	call 07844h		;67ec	cd 44 78 	. D x 
	jp z,06644h		;67ef	ca 44 66 	. D f 
	ld b,005h		;67f2	06 05 	. . 
	jp 06667h		;67f4	c3 67 66 	. g f 
	pop hl			;67f7	e1 	. 
	ld a,(0829ch)		;67f8	3a 9c 82 	: . . 
	cp 001h		;67fb	fe 01 	. . 
	jp z,06708h		;67fd	ca 08 67 	. . g 
	ld a,042h		;6800	3e 42 	> B 
	call 07844h		;6802	cd 44 78 	. D x 
	jp z,06644h		;6805	ca 44 66 	. D f 
	ld a,052h		;6808	3e 52 	> R 
	call 07844h		;680a	cd 44 78 	. D x 
	jp z,06644h		;680d	ca 44 66 	. D f 
	ld b,005h		;6810	06 05 	. . 
	jp 06667h		;6812	c3 67 66 	. g f 
	pop hl			;6815	e1 	. 
	ld a,(0829ch)		;6816	3a 9c 82 	: . . 
	cp 001h		;6819	fe 01 	. . 
	jp z,06726h		;681b	ca 26 67 	. & g 
	ld a,042h		;681e	3e 42 	> B 
	call 07844h		;6820	cd 44 78 	. D x 
	jp z,06644h		;6823	ca 44 66 	. D f 
	ld a,054h		;6826	3e 54 	> T 
	call 07844h		;6828	cd 44 78 	. D x 
	jp z,06644h		;682b	ca 44 66 	. D f 
	ld b,003h		;682e	06 03 	. . 
	jp 06667h		;6830	c3 67 66 	. g f 
	pop hl			;6833	e1 	. 
	ld a,000h		;6834	3e 00 	> . 
	ld (0835bh),a		;6836	32 5b 83 	2 [ . 
	ld a,053h		;6839	3e 53 	> S 
	call 07844h		;683b	cd 44 78 	. D x 
	ld a,(hl)			;683e	7e 	~ 
	ld (0835ch),a		;683f	32 5c 83 	2 \ . 
	inc hl			;6842	23 	# 
	call 067c6h		;6843	cd c6 67 	. . g 
	ld a,(08344h)		;6846	3a 44 83 	: D . 
	cp 05ch		;6849	fe 5c 	. \ 
	jr z,$+20		;684b	28 12 	( . 
	cp 065h		;684d	fe 65 	. e 
	jr z,$+16		;684f	28 0e 	( . 
	cp 03eh		;6851	fe 3e 	. > 
	jr z,$+27		;6853	28 19 	( . 
	cp 03fh		;6855	fe 3f 	. ? 
	jr z,$+16		;6857	28 0e 	( . 
	cp 060h		;6859	fe 60 	. ` 
	jr z,$-29		;685b	28 e1 	( . 
	jr $+2		;685d	18 00 	. . 
	ld a,00dh		;685f	3e 0d 	> . 
	ld (08835h),a		;6861	32 35 88 	2 5 . 
	jp 05d92h		;6864	c3 92 5d 	. . ] 
	ld a,059h		;6867	3e 59 	> Y 
	call 067fbh		;6869	cd fb 67 	. . g 
	jr $-38		;686c	18 d8 	. . 
	call 067b4h		;686e	cd b4 67 	. . g 
	jp 05ca8h		;6871	c3 a8 5c 	. . \ 
	pop hl			;6874	e1 	. 
	ld a,000h		;6875	3e 00 	> . 
	ld (0835bh),a		;6877	32 5b 83 	2 [ . 
	ld a,04ch		;687a	3e 4c 	> L 
	call 07844h		;687c	cd 44 78 	. D x 
	jp z,06644h		;687f	ca 44 66 	. D f 
	ld a,(hl)			;6882	7e 	~ 
	inc hl			;6883	23 	# 
	ld (0835ch),a		;6884	32 5c 83 	2 \ . 
	call 067c6h		;6887	cd c6 67 	. . g 
	ld a,(08344h)		;688a	3a 44 83 	: D . 
	cp 05ch		;688d	fe 5c 	. \ 
	jr z,$+20		;688f	28 12 	( . 
	cp 065h		;6891	fe 65 	. e 
	jr z,$+16		;6893	28 0e 	( . 
	cp 03eh		;6895	fe 3e 	. > 
	jr z,$+15		;6897	28 0d 	( . 
	cp 021h		;6899	fe 21 	. ! 
	jr z,$+17		;689b	28 0f 	( . 
	cp 060h		;689d	fe 60 	. ` 
	jr z,$-29		;689f	28 e1 	( . 
	jr $+2		;68a1	18 00 	. . 
	jp 0675fh		;68a3	c3 5f 67 	. _ g 
	call 067b4h		;68a6	cd b4 67 	. . g 
	jp 065e0h		;68a9	c3 e0 65 	. . e 
	ld a,030h		;68ac	3e 30 	> 0 
	ld (08835h),a		;68ae	32 35 88 	2 5 . 
	jp 05d92h		;68b1	c3 92 5d 	. . ] 
	push hl			;68b4	e5 	. 
	push de			;68b5	d5 	. 
	push bc			;68b6	c5 	. 
	ld de,0e682h		;68b7	11 82 e6 	. . . 
	dec hl			;68ba	2b 	+ 
	dec hl			;68bb	2b 	+ 
	dec hl			;68bc	2b 	+ 
	ld bc,00003h		;68bd	01 03 00 	. . . 
	ldir		;68c0	ed b0 	. . 
	pop bc			;68c2	c1 	. 
	pop de			;68c3	d1 	. 
	pop hl			;68c4	e1 	. 
	ret			;68c5	c9 	. 
	push bc			;68c6	c5 	. 
	push de			;68c7	d5 	. 
	push hl			;68c8	e5 	. 
	call 070e4h		;68c9	cd e4 70 	. . p 
	ld a,(0835bh)		;68cc	3a 5b 83 	: [ . 
	cp 003h		;68cf	fe 03 	. . 
	jp p,067e7h		;68d1	f2 e7 67 	. . g 
	inc a			;68d4	3c 	< 
	ld (0835bh),a		;68d5	32 5b 83 	2 [ . 
	ld a,(0835ch)		;68d8	3a 5c 83 	: \ . 
	call 07844h		;68db	cd 44 78 	. D x 
	call 07810h		;68de	cd 10 78 	. . x 
	jr nc,$-3		;68e1	30 fb 	0 . 
	pop hl			;68e3	e1 	. 
	pop de			;68e4	d1 	. 
	pop bc			;68e5	c1 	. 
	ret			;68e6	c9 	. 
	pop hl			;68e7	e1 	. 
	dec hl			;68e8	2b 	+ 
	push hl			;68e9	e5 	. 
	jp nz,067f4h		;68ea	c2 f4 67 	. . g 
	ld a,00dh		;68ed	3e 0d 	> . 
	call 07844h		;68ef	cd 44 78 	. D x 
	jr $-20		;68f2	18 ea 	. . 
	ld a,065h		;68f4	3e 65 	> e 
	ld (08344h),a		;68f6	32 44 83 	2 D . 
	jr $-22		;68f9	18 e8 	. . 
	push bc			;68fb	c5 	. 
	push de			;68fc	d5 	. 
	push hl			;68fd	e5 	. 
	jr $-35		;68fe	18 db 	. . 
	pop hl			;6900	e1 	. 
	ld a,04ch		;6901	3e 4c 	> L 
	call 07844h		;6903	cd 44 78 	. D x 
	jp z,06644h		;6906	ca 44 66 	. D f 
	ld a,033h		;6909	3e 33 	> 3 
	call 07844h		;690b	cd 44 78 	. D x 
	jp z,06644h		;690e	ca 44 66 	. D f 
	call 07816h		;6911	cd 16 78 	. . x 
	ld a,00dh		;6914	3e 0d 	> . 
	call 07844h		;6916	cd 44 78 	. D x 
	jp z,06644h		;6919	ca 44 66 	. D f 
	call 07816h		;691c	cd 16 78 	. . x 
	jp 065e0h		;691f	c3 e0 65 	. . e 
	pop hl			;6922	e1 	. 
	ld a,04ch		;6923	3e 4c 	> L 
	call 07844h		;6925	cd 44 78 	. D x 
	jp z,06644h		;6928	ca 44 66 	. D f 
	ld a,031h		;692b	3e 31 	> 1 
	call 07844h		;692d	cd 44 78 	. D x 
	jp z,06644h		;6930	ca 44 66 	. D f 
	call 07816h		;6933	cd 16 78 	. . x 
	ld a,00dh		;6936	3e 0d 	> . 
	call 07844h		;6938	cd 44 78 	. D x 
	jp z,06644h		;693b	ca 44 66 	. D f 
	call 07816h		;693e	cd 16 78 	. . x 
	jp 065e0h		;6941	c3 e0 65 	. . e 
	pop hl			;6944	e1 	. 
	ld a,04ch		;6945	3e 4c 	> L 
	call 07844h		;6947	cd 44 78 	. D x 
	jp z,06644h		;694a	ca 44 66 	. D f 
	ld a,038h		;694d	3e 38 	> 8 
	call 07844h		;694f	cd 44 78 	. D x 
	jp z,06644h		;6952	ca 44 66 	. D f 
	call 07816h		;6955	cd 16 78 	. . x 
	ld a,00dh		;6958	3e 0d 	> . 
	call 07844h		;695a	cd 44 78 	. D x 
	jp z,06644h		;695d	ca 44 66 	. D f 
	call 07816h		;6960	cd 16 78 	. . x 
	jp 065e0h		;6963	c3 e0 65 	. . e 
	push hl			;6966	e5 	. 
	push de			;6967	d5 	. 
	call 076e3h		;6968	cd e3 76 	. . v 
	pop de			;696b	d1 	. 
	pop hl			;696c	e1 	. 
	jp 05ca8h		;696d	c3 a8 5c 	. . \ 
	push de			;6970	d5 	. 
	call 077efh		;6971	cd ef 77 	. . w 
	ld hl,0834fh		;6974	21 4f 83 	! O . 
	ld a,(08351h)		;6977	3a 51 83 	: Q . 
	or (hl)			;697a	b6 	. 
	ld (hl),a			;697b	77 	w 
	inc hl			;697c	23 	# 
	ld a,(08352h)		;697d	3a 52 83 	: R . 
	or (hl)			;6980	b6 	. 
	ld (hl),a			;6981	77 	w 
	pop de			;6982	d1 	. 
	ld hl,0834fh		;6983	21 4f 83 	! O . 
	ld bc,00002h		;6986	01 02 00 	. . . 
	call 07901h		;6989	cd 01 79 	. . y 
	pop hl			;698c	e1 	. 
	jp 05ca8h		;698d	c3 a8 5c 	. . \ 
	pop hl			;6990	e1 	. 
	ld a,048h		;6991	3e 48 	> H 
	call 07844h		;6993	cd 44 78 	. D x 
	jp z,06644h		;6996	ca 44 66 	. D f 
	jp 05ca8h		;6999	c3 a8 5c 	. . \ 
	pop hl			;699c	e1 	. 
	ld a,04ch		;699d	3e 4c 	> L 
	call 07844h		;699f	cd 44 78 	. D x 
	jp z,06644h		;69a2	ca 44 66 	. D f 
	ld a,037h		;69a5	3e 37 	> 7 
	call 07844h		;69a7	cd 44 78 	. D x 
	jp z,06644h		;69aa	ca 44 66 	. D f 
	call 07816h		;69ad	cd 16 78 	. . x 
	ld a,00dh		;69b0	3e 0d 	> . 
	call 07844h		;69b2	cd 44 78 	. D x 
	jp z,06644h		;69b5	ca 44 66 	. D f 
	call 07816h		;69b8	cd 16 78 	. . x 
	jp 065e0h		;69bb	c3 e0 65 	. . e 
	ld b,008h		;69be	06 08 	. . 
	pop hl			;69c0	e1 	. 
	ld a,046h		;69c1	3e 46 	> F 
	call 07844h		;69c3	cd 44 78 	. D x 
	jp z,06644h		;69c6	ca 44 66 	. D f 
	ld a,b			;69c9	78 	x 
	call 07844h		;69ca	cd 44 78 	. D x 
	jp z,06644h		;69cd	ca 44 66 	. D f 
	call 07816h		;69d0	cd 16 78 	. . x 
	jp 065e0h		;69d3	c3 e0 65 	. . e 
	ld b,00ch		;69d6	06 0c 	. . 
	jp 068c0h		;69d8	c3 c0 68 	. . h 
	ld b,00bh		;69db	06 0b 	. . 
	jp 068c0h		;69dd	c3 c0 68 	. . h 
	ld b,00ah		;69e0	06 0a 	. . 
	jp 068c0h		;69e2	c3 c0 68 	. . h 
	call 05f7ah		;69e5	cd 7a 5f 	. z _ 
	ld a,(08836h)		;69e8	3a 36 88 	: 6 . 
	or a			;69eb	b7 	. 
	jp nz,05d92h		;69ec	c2 92 5d 	. . ] 
	ld a,(08149h)		;69ef	3a 49 81 	: I . 
	cp 086h		;69f2	fe 86 	. . 
	jp z,06951h		;69f4	ca 51 69 	. Q i 
	cp 095h		;69f7	fe 95 	. . 
	jp z,06957h		;69f9	ca 57 69 	. W i 
	cp 09ah		;69fc	fe 9a 	. . 
	jp z,0695dh		;69fe	ca 5d 69 	. ] i 
	cp 0a4h		;6a01	fe a4 	. . 
	jp z,06963h		;6a03	ca 63 69 	. c i 
	cp 0a5h		;6a06	fe a5 	. . 
	jp z,0696bh		;6a08	ca 6b 69 	. k i 
	cp 0aah		;6a0b	fe aa 	. . 
	jp z,06973h		;6a0d	ca 73 69 	. s i 
	cp 0b5h		;6a10	fe b5 	. . 
	jp z,06979h		;6a12	ca 79 69 	. y i 
	cp 0abh		;6a15	fe ab 	. . 
	jp z,0697fh		;6a17	ca 7f 69 	.  i 
	cp 0aeh		;6a1a	fe ae 	. . 
	jp z,06985h		;6a1c	ca 85 69 	. . i 
	cp 0afh		;6a1f	fe af 	. . 
	jp z,069bah		;6a21	ca ba 69 	. . i 
	cp 08eh		;6a24	fe 8e 	. . 
	jp z,0698bh		;6a26	ca 8b 69 	. . i 
	cp 0b2h		;6a29	fe b2 	. . 
	jp z,06996h		;6a2b	ca 96 69 	. . i 
	cp 0b6h		;6a2e	fe b6 	. . 
	jp z,0699ch		;6a30	ca 9c 69 	. . i 
	cp 09eh		;6a33	fe 9e 	. . 
	jp z,069a2h		;6a35	ca a2 69 	. . i 
	cp 09fh		;6a38	fe 9f 	. . 
	jp z,069a8h		;6a3a	ca a8 69 	. . i 
	cp 0b0h		;6a3d	fe b0 	. . 
	jp z,069aeh		;6a3f	ca ae 69 	. . i 
	cp 0b1h		;6a42	fe b1 	. . 
	jp z,069b4h		;6a44	ca b4 69 	. . i 
	jp 069c0h		;6a47	c3 c0 69 	. . i 
	or a			;6a4a	b7 	. 
	jp nz,06eeeh		;6a4b	c2 ee 6e 	. . n 
	jp 05ca8h		;6a4e	c3 a8 5c 	. . \ 
	ld a,(08131h)		;6a51	3a 31 81 	: 1 . 
	jp 0694ah		;6a54	c3 4a 69 	. J i 
	ld a,(08117h)		;6a57	3a 17 81 	: . . 
	jp 0694ah		;6a5a	c3 4a 69 	. J i 
	ld a,(0813bh)		;6a5d	3a 3b 81 	: ; . 
	jp 0694ah		;6a60	c3 4a 69 	. J i 
	ld a,(08140h)		;6a63	3a 40 81 	: @ . 
	and 004h		;6a66	e6 04 	. . 
	jp 0694ah		;6a68	c3 4a 69 	. J i 
	ld a,(08140h)		;6a6b	3a 40 81 	: @ . 
	and 008h		;6a6e	e6 08 	. . 
	jp 0694ah		;6a70	c3 4a 69 	. J i 
	ld a,(08143h)		;6a73	3a 43 81 	: C . 
	jp 0694ah		;6a76	c3 4a 69 	. J i 
	ld a,(08151h)		;6a79	3a 51 81 	: Q . 
	jp 0694ah		;6a7c	c3 4a 69 	. J i 
	ld a,(0814fh)		;6a7f	3a 4f 81 	: O . 
	jp 0694ah		;6a82	c3 4a 69 	. J i 
	ld a,(08150h)		;6a85	3a 50 81 	: P . 
	jp 0694ah		;6a88	c3 4a 69 	. J i 
	ld a,(081ach)		;6a8b	3a ac 81 	: . . 
	bit 4,a		;6a8e	cb 67 	. g 
	jp z,06eeeh		;6a90	ca ee 6e 	. . n 
	jp 05ca8h		;6a93	c3 a8 5c 	. . \ 
	ld a,(08146h)		;6a96	3a 46 81 	: F . 
	jp 0694ah		;6a99	c3 4a 69 	. J i 
	ld a,(08153h)		;6a9c	3a 53 81 	: S . 
	jp 0694ah		;6a9f	c3 4a 69 	. J i 
	ld a,(08154h)		;6aa2	3a 54 81 	: T . 
	jp 0694ah		;6aa5	c3 4a 69 	. J i 
	ld a,(08155h)		;6aa8	3a 55 81 	: U . 
	jp 0694ah		;6aab	c3 4a 69 	. J i 
	ld a,(08144h)		;6aae	3a 44 81 	: D . 
	jp 0694ah		;6ab1	c3 4a 69 	. J i 
	ld a,(08145h)		;6ab4	3a 45 81 	: E . 
	jp 0694ah		;6ab7	c3 4a 69 	. J i 
	ld a,(08156h)		;6aba	3a 56 81 	: V . 
	jp 0694ah		;6abd	c3 4a 69 	. J i 
	ld a,090h		;6ac0	3e 90 	> . 
	ld (08835h),a		;6ac2	32 35 88 	2 5 . 
	jp 05d92h		;6ac5	c3 92 5d 	. . ] 
	call 05f7ah		;6ac8	cd 7a 5f 	. z _ 
	ld a,(08836h)		;6acb	3a 36 88 	: 6 . 
	or a			;6ace	b7 	. 
	jp nz,05d92h		;6acf	c2 92 5d 	. . ] 
	ld a,(08149h)		;6ad2	3a 49 81 	: I . 
	cp 00bh		;6ad5	fe 0b 	. . 
	jp p,06a08h		;6ad7	f2 08 6a 	. . j 
	push hl			;6ada	e5 	. 
	ld c,a			;6adb	4f 	O 
	sla c		;6adc	cb 21 	. ! 
	add a,c			;6ade	81 	. 
	ld c,a			;6adf	4f 	O 
	ld b,000h		;6ae0	06 00 	. . 
	ld hl,069e7h		;6ae2	21 e7 69 	! . i 
	add hl,bc			;6ae5	09 	. 
	jp (hl)			;6ae6	e9 	. 
	jp 06a10h		;6ae7	c3 10 6a 	. . j 
	jp 06a2ah		;6aea	c3 2a 6a 	. * j 
	jp 06a32h		;6aed	c3 32 6a 	. 2 j 
	jp 06a3ah		;6af0	c3 3a 6a 	. : j 
	jp 06a42h		;6af3	c3 42 6a 	. B j 
	jp 06aa2h		;6af6	c3 a2 6a 	. . j 
	jp 06ab2h		;6af9	c3 b2 6a 	. . j 
	jp 06ac2h		;6afc	c3 c2 6a 	. . j 
	jp 06acdh		;6aff	c3 cd 6a 	. . j 
	jp 06ad5h		;6b02	c3 d5 6a 	. . j 
	jp 06addh		;6b05	c3 dd 6a 	. . j 
	ld a,090h		;6b08	3e 90 	> . 
	ld (08835h),a		;6b0a	32 35 88 	2 5 . 
	jp 05d92h		;6b0d	c3 92 5d 	. . ] 
	pop hl			;6b10	e1 	. 
	push de			;6b11	d5 	. 
	ld de,08182h		;6b12	11 82 81 	. . . 
	call 05f7bh		;6b15	cd 7b 5f 	. { _ 
	ld a,(08836h)		;6b18	3a 36 88 	: 6 . 
	or a			;6b1b	b7 	. 
	jp nz,05d92h		;6b1c	c2 92 5d 	. . ] 
	ld a,(08149h)		;6b1f	3a 49 81 	: I . 
	ld (de),a			;6b22	12 	. 
	pop de			;6b23	d1 	. 
	call 05fbah		;6b24	cd ba 5f 	. . _ 
	jp 05ca8h		;6b27	c3 a8 5c 	. . \ 
	pop hl			;6b2a	e1 	. 
	push de			;6b2b	d5 	. 
	ld de,08183h		;6b2c	11 83 81 	. . . 
	jp 06a15h		;6b2f	c3 15 6a 	. . j 
	pop hl			;6b32	e1 	. 
	push de			;6b33	d5 	. 
	ld de,08184h		;6b34	11 84 81 	. . . 
	jp 06a15h		;6b37	c3 15 6a 	. . j 
	pop hl			;6b3a	e1 	. 
	push de			;6b3b	d5 	. 
	ld de,08185h		;6b3c	11 85 81 	. . . 
	jp 06a15h		;6b3f	c3 15 6a 	. . j 
	pop hl			;6b42	e1 	. 
	ld a,06eh		;6b43	3e 6e 	> n 
	call 048f2h		;6b45	cd f2 48 	. . H 
	ld a,032h		;6b48	3e 32 	> 2 
	call 048f2h		;6b4a	cd f2 48 	. . H 
	ld b,006h		;6b4d	06 06 	. . 
	ld a,(hl)			;6b4f	7e 	~ 
	inc hl			;6b50	23 	# 
	call 048f2h		;6b51	cd f2 48 	. . H 
	djnz $-5		;6b54	10 f9 	. . 
	call 05fbah		;6b56	cd ba 5f 	. . _ 
	push hl			;6b59	e5 	. 
	push de			;6b5a	d5 	. 
	call 01a1eh		;6b5b	cd 1e 1a 	. . . 
	pop de			;6b5e	d1 	. 
	pop hl			;6b5f	e1 	. 
	ld a,(08293h)		;6b60	3a 93 82 	: . . 
	or a			;6b63	b7 	. 
	jp nz,06a6ah		;6b64	c2 6a 6a 	. j j 
	jp 05ca8h		;6b67	c3 a8 5c 	. . \ 
	cp 001h		;6b6a	fe 01 	. . 
	ld b,090h		;6b6c	06 90 	. . 
	jp z,06a96h		;6b6e	ca 96 6a 	. . j 
	cp 002h		;6b71	fe 02 	. . 
	ld b,010h		;6b73	06 10 	. . 
	jp z,06a96h		;6b75	ca 96 6a 	. . j 
	ld b,007h		;6b78	06 07 	. . 
	cp 003h		;6b7a	fe 03 	. . 
	jp z,06a96h		;6b7c	ca 96 6a 	. . j 
	ld b,00dh		;6b7f	06 0d 	. . 
	cp 004h		;6b81	fe 04 	. . 
	jp z,06a96h		;6b83	ca 96 6a 	. . j 
	ld b,005h		;6b86	06 05 	. . 
	cp 005h		;6b88	fe 05 	. . 
	jp z,06a96h		;6b8a	ca 96 6a 	. . j 
	ld b,006h		;6b8d	06 06 	. . 
	cp 006h		;6b8f	fe 06 	. . 
	jp z,06a96h		;6b91	ca 96 6a 	. . j 
	ld b,099h		;6b94	06 99 	. . 
	ld a,b			;6b96	78 	x 
	ld (08835h),a		;6b97	32 35 88 	2 5 . 
	ld a,000h		;6b9a	3e 00 	> . 
	ld (08293h),a		;6b9c	32 93 82 	2 . . 
	jp 05d92h		;6b9f	c3 92 5d 	. . ] 
	pop hl			;6ba2	e1 	. 
	ld a,06eh		;6ba3	3e 6e 	> n 
	call 048f2h		;6ba5	cd f2 48 	. . H 
	ld a,033h		;6ba8	3e 33 	> 3 
	call 048f2h		;6baa	cd f2 48 	. . H 
	ld b,003h		;6bad	06 03 	. . 
	jp 06a4fh		;6baf	c3 4f 6a 	. O j 
	pop hl			;6bb2	e1 	. 
	ld a,076h		;6bb3	3e 76 	> v 
	call 048f2h		;6bb5	cd f2 48 	. . H 
	ld a,035h		;6bb8	3e 35 	> 5 
	call 048f2h		;6bba	cd f2 48 	. . H 
	ld b,006h		;6bbd	06 06 	. . 
	jp 06a4fh		;6bbf	c3 4f 6a 	. O j 
	pop hl			;6bc2	e1 	. 
	ld a,06eh		;6bc3	3e 6e 	> n 
	call 048f2h		;6bc5	cd f2 48 	. . H 
	ld a,038h		;6bc8	3e 38 	> 8 
	jp 06aaah		;6bca	c3 aa 6a 	. . j 
	pop hl			;6bcd	e1 	. 
	push de			;6bce	d5 	. 
	ld de,08186h		;6bcf	11 86 81 	. . . 
	jp 06a15h		;6bd2	c3 15 6a 	. . j 
	pop hl			;6bd5	e1 	. 
	push de			;6bd6	d5 	. 
	ld de,08187h		;6bd7	11 87 81 	. . . 
	jp 06a15h		;6bda	c3 15 6a 	. . j 
	pop hl			;6bdd	e1 	. 
	push de			;6bde	d5 	. 
	ld de,081d5h		;6bdf	11 d5 81 	. . . 
	jp 06a15h		;6be2	c3 15 6a 	. . j 
	call 05f7ah		;6be5	cd 7a 5f 	. z _ 
	ld a,(08836h)		;6be8	3a 36 88 	: 6 . 
	or a			;6beb	b7 	. 
	jp nz,05d92h		;6bec	c2 92 5d 	. . ] 
	ld a,(08149h)		;6bef	3a 49 81 	: I . 
	cp 099h		;6bf2	fe 99 	. . 
	jp z,06d46h		;6bf4	ca 46 6d 	. F m 
	cp 01bh		;6bf7	fe 1b 	. . 
	jp p,06b5dh		;6bf9	f2 5d 6b 	. ] k 
	call 05fa4h		;6bfc	cd a4 5f 	. . _ 
	push hl			;6bff	e5 	. 
	ld c,a			;6c00	4f 	O 
	ld b,000h		;6c01	06 00 	. . 
	sla c		;6c03	cb 21 	. ! 
	add a,c			;6c05	81 	. 
	ld c,a			;6c06	4f 	O 
	ld hl,06b0ch		;6c07	21 0c 6b 	! . k 
	add hl,bc			;6c0a	09 	. 
	jp (hl)			;6c0b	e9 	. 
	jp 06b65h		;6c0c	c3 65 6b 	. e k 
	jp 06b89h		;6c0f	c3 89 6b 	. . k 
	jp 06b95h		;6c12	c3 95 6b 	. . k 
	jp 06ba9h		;6c15	c3 a9 6b 	. . k 
	jp 06bb2h		;6c18	c3 b2 6b 	. . k 
	jp 06bb5h		;6c1b	c3 b5 6b 	. . k 
	jp 06bc4h		;6c1e	c3 c4 6b 	. . k 
	jp 06bd3h		;6c21	c3 d3 6b 	. . k 
	jp 06be2h		;6c24	c3 e2 6b 	. . k 
	jp 06bf1h		;6c27	c3 f1 6b 	. . k 
	jp 06c00h		;6c2a	c3 00 6c 	. . l 
	jp 06c0fh		;6c2d	c3 0f 6c 	. . l 
	jp 06c1eh		;6c30	c3 1e 6c 	. . l 
	jp 06c2dh		;6c33	c3 2d 6c 	. - l 
	jp 06b5dh		;6c36	c3 5d 6b 	. ] k 
	jp 06c7fh		;6c39	c3 7f 6c 	.  l 
	jp 06c96h		;6c3c	c3 96 6c 	. . l 
	jp 06cb9h		;6c3f	c3 b9 6c 	. . l 
	jp 06cc9h		;6c42	c3 c9 6c 	. . l 
	jp 06ce0h		;6c45	c3 e0 6c 	. . l 
	jp 06cfah		;6c48	c3 fa 6c 	. . l 
	jp 06cfeh		;6c4b	c3 fe 6c 	. . l 
	jp 06d15h		;6c4e	c3 15 6d 	. . m 
	jp 06d23h		;6c51	c3 23 6d 	. # m 
	jp 06d2fh		;6c54	c3 2f 6d 	. / m 
	jp 06d34h		;6c57	c3 34 6d 	. 4 m 
	jp 06d3ah		;6c5a	c3 3a 6d 	. : m 
	ld a,090h		;6c5d	3e 90 	> . 
	ld (08835h),a		;6c5f	32 35 88 	2 5 . 
	jp 05d92h		;6c62	c3 92 5d 	. . ] 
	ld hl,08160h		;6c65	21 60 81 	! ` . 
	ld bc,00004h		;6c68	01 04 00 	. . . 
	ldir		;6c6b	ed b0 	. . 
	ld b,002h		;6c6d	06 02 	. . 
	ld a,(hl)			;6c6f	7e 	~ 
	cp 03ah		;6c70	fe 3a 	. : 
	jr nz,$+4		;6c72	20 02 	  . 
	ld a,041h		;6c74	3e 41 	> A 
	ld (de),a			;6c76	12 	. 
	inc de			;6c77	13 	. 
	inc hl			;6c78	23 	# 
	djnz $-10		;6c79	10 f4 	. . 
	ld bc,00006h		;6c7b	01 06 00 	. . . 
	ldir		;6c7e	ed b0 	. . 
	ld bc,00006h		;6c80	01 06 00 	. . . 
	ld hl,0a00eh		;6c83	21 0e a0 	! . . 
	jp 06b8fh		;6c86	c3 8f 6b 	. . k 
	ld hl,08160h		;6c89	21 60 81 	! ` . 
	ld bc,00004h		;6c8c	01 04 00 	. . . 
	ldir		;6c8f	ed b0 	. . 
	pop hl			;6c91	e1 	. 
	jp 05ca8h		;6c92	c3 a8 5c 	. . \ 
	ld hl,08164h		;6c95	21 64 81 	! d . 
	ld bc,00002h		;6c98	01 02 00 	. . . 
	ld a,(hl)			;6c9b	7e 	~ 
	cp 03ah		;6c9c	fe 3a 	. : 
	jr nz,$-15		;6c9e	20 ef 	  . 
	ld a,041h		;6ca0	3e 41 	> A 
	ld (de),a			;6ca2	12 	. 
	inc de			;6ca3	13 	. 
	ld (de),a			;6ca4	12 	. 
	inc de			;6ca5	13 	. 
	jp 06b91h		;6ca6	c3 91 6b 	. . k 
	ld hl,08166h		;6ca9	21 66 81 	! f . 
	ld bc,00006h		;6cac	01 06 00 	. . . 
	jp 06b8fh		;6caf	c3 8f 6b 	. . k 
	jp 06b80h		;6cb2	c3 80 6b 	. . k 
	ld a,001h		;6cb5	3e 01 	> . 
	or a			;6cb7	b7 	. 
	jp z,0658bh		;6cb8	ca 8b 65 	. . e 
	ld hl,08320h		;6cbb	21 20 83 	!   . 
	ld bc,00017h		;6cbe	01 17 00 	. . . 
	jp 06b8fh		;6cc1	c3 8f 6b 	. . k 
	ld a,001h		;6cc4	3e 01 	> . 
	or a			;6cc6	b7 	. 
	jp z,0658bh		;6cc7	ca 8b 65 	. . e 
	ld hl,08320h		;6cca	21 20 83 	!   . 
	ld bc,00009h		;6ccd	01 09 00 	. . . 
	jp 06b8fh		;6cd0	c3 8f 6b 	. . k 
	ld a,001h		;6cd3	3e 01 	> . 
	or a			;6cd5	b7 	. 
	jp z,0658bh		;6cd6	ca 8b 65 	. . e 
	ld hl,08329h		;6cd9	21 29 83 	! ) . 
	ld bc,00009h		;6cdc	01 09 00 	. . . 
	jp 06b8fh		;6cdf	c3 8f 6b 	. . k 
	ld a,001h		;6ce2	3e 01 	> . 
	or a			;6ce4	b7 	. 
	jp z,0658bh		;6ce5	ca 8b 65 	. . e 
	ld hl,08332h		;6ce8	21 32 83 	! 2 . 
	ld bc,00005h		;6ceb	01 05 00 	. . . 
	jp 06b8fh		;6cee	c3 8f 6b 	. . k 
	ld a,001h		;6cf1	3e 01 	> . 
	or a			;6cf3	b7 	. 
	jp z,0658bh		;6cf4	ca 8b 65 	. . e 
	ld hl,08337h		;6cf7	21 37 83 	! 7 . 
	ld bc,00005h		;6cfa	01 05 00 	. . . 
	jp 06b8fh		;6cfd	c3 8f 6b 	. . k 
	ld a,001h		;6d00	3e 01 	> . 
	or a			;6d02	b7 	. 
	jp z,0658bh		;6d03	ca 8b 65 	. . e 
	ld hl,0833ch		;6d06	21 3c 83 	! < . 
	ld bc,00005h		;6d09	01 05 00 	. . . 
	jp 06b8fh		;6d0c	c3 8f 6b 	. . k 
	ld a,001h		;6d0f	3e 01 	> . 
	or a			;6d11	b7 	. 
	jp z,0658bh		;6d12	ca 8b 65 	. . e 
	ld hl,08341h		;6d15	21 41 83 	! A . 
	ld bc,00005h		;6d18	01 05 00 	. . . 
	jp 06b8fh		;6d1b	c3 8f 6b 	. . k 
	ld a,001h		;6d1e	3e 01 	> . 
	or a			;6d20	b7 	. 
	jp z,0658bh		;6d21	ca 8b 65 	. . e 
	ld hl,08320h		;6d24	21 20 83 	!   . 
	ld bc,00024h		;6d27	01 24 00 	. $ . 
	jp 06b8fh		;6d2a	c3 8f 6b 	. . k 
	ld hl,08188h		;6d2d	21 88 81 	! . . 
	ld b,007h		;6d30	06 07 	. . 
	call 06c41h		;6d32	cd 41 6c 	. A l 
	call 05fc5h		;6d35	cd c5 5f 	. . _ 
	ld a,(08a85h)		;6d38	3a 85 8a 	: . . 
	ld (de),a			;6d3b	12 	. 
	inc de			;6d3c	13 	. 
	pop hl			;6d3d	e1 	. 
	jp 05ca8h		;6d3e	c3 a8 5c 	. . \ 
	ld a,030h		;6d41	3e 30 	> 0 
	rld		;6d43	ed 6f 	. o 
	cp 03ah		;6d45	fe 3a 	. : 
	call nc,06c65h		;6d47	d4 65 6c 	. e l 
	ld (de),a			;6d4a	12 	. 
	inc de			;6d4b	13 	. 
	bit 4,a		;6d4c	cb 67 	. g 
	call z,06c68h		;6d4e	cc 68 6c 	. h l 
	rld		;6d51	ed 6f 	. o 
	cp 03ah		;6d53	fe 3a 	. : 
	call nc,06c65h		;6d55	d4 65 6c 	. e l 
	ld (de),a			;6d58	12 	. 
	inc de			;6d59	13 	. 
	bit 4,a		;6d5a	cb 67 	. g 
	call z,06c68h		;6d5c	cc 68 6c 	. h l 
	rld		;6d5f	ed 6f 	. o 
	inc hl			;6d61	23 	# 
	djnz $-33		;6d62	10 dd 	. . 
	ret			;6d64	c9 	. 
	add a,007h		;6d65	c6 07 	. . 
	ret			;6d67	c9 	. 
	sub 007h		;6d68	d6 07 	. . 
	ret			;6d6a	c9 	. 
	ld hl,0817dh		;6d6b	21 7d 81 	! } . 
	ld bc,00004h		;6d6e	01 04 00 	. . . 
	ldir		;6d71	ed b0 	. . 
	ld a,064h		;6d73	3e 64 	> d 
	ld hl,08198h		;6d75	21 98 81 	! . . 
	sub (hl)			;6d78	96 	. 
	ld (de),a			;6d79	12 	. 
	inc de			;6d7a	13 	. 
	pop hl			;6d7b	e1 	. 
	jp 05ca8h		;6d7c	c3 a8 5c 	. . \ 
	pop hl			;6d7f	e1 	. 
	ld a,076h		;6d80	3e 76 	> v 
	call 048f2h		;6d82	cd f2 48 	. . H 
	ld a,036h		;6d85	3e 36 	> 6 
	call 048f2h		;6d87	cd f2 48 	. . H 
	ld b,006h		;6d8a	06 06 	. . 
	call 04930h		;6d8c	cd 30 49 	. 0 I 
	ld (de),a			;6d8f	12 	. 
	inc de			;6d90	13 	. 
	djnz $-5		;6d91	10 f9 	. . 
	jp 05ca8h		;6d93	c3 a8 5c 	. . \ 
	pop hl			;6d96	e1 	. 
	ld a,(08a85h)		;6d97	3a 85 8a 	: . . 
	cp 031h		;6d9a	fe 31 	. 1 
	jr z,$+16		;6d9c	28 0e 	( . 
	cp 032h		;6d9e	fe 32 	. 2 
	jr z,$+12		;6da0	28 0a 	( . 
	cp 033h		;6da2	fe 33 	. 3 
	jr z,$+13		;6da4	28 0b 	( . 
	cp 034h		;6da6	fe 34 	. 4 
	jr $+13		;6da8	18 0b 	. . 
	ld a,030h		;6daa	3e 30 	> 0 
	ld (de),a			;6dac	12 	. 
	inc de			;6dad	13 	. 
	jp 05ca8h		;6dae	c3 a8 5c 	. . \ 
	ld a,034h		;6db1	3e 34 	> 4 
	jr $-7		;6db3	18 f7 	. . 
	ld a,038h		;6db5	3e 38 	> 8 
	jr $-11		;6db7	18 f3 	. . 
	pop hl			;6db9	e1 	. 
	ld a,076h		;6dba	3e 76 	> v 
	call 048f2h		;6dbc	cd f2 48 	. . H 
	ld a,038h		;6dbf	3e 38 	> 8 
	call 048f2h		;6dc1	cd f2 48 	. . H 
	ld b,003h		;6dc4	06 03 	. . 
	jp 06cd6h		;6dc6	c3 d6 6c 	. . l 
	pop hl			;6dc9	e1 	. 
	ld a,076h		;6dca	3e 76 	> v 
	call 048f2h		;6dcc	cd f2 48 	. . H 
	ld a,033h		;6dcf	3e 33 	> 3 
	call 048f2h		;6dd1	cd f2 48 	. . H 
	ld b,007h		;6dd4	06 07 	. . 
	call 04930h		;6dd6	cd 30 49 	. 0 I 
	ld (de),a			;6dd9	12 	. 
	inc de			;6dda	13 	. 
	djnz $-5		;6ddb	10 f9 	. . 
	jp 05ca8h		;6ddd	c3 a8 5c 	. . \ 
	ld a,000h		;6de0	3e 00 	> . 
	ld (0814bh),a		;6de2	32 4b 81 	2 K . 
	call 01987h		;6de5	cd 87 19 	. . . 
	call 05ff3h		;6de8	cd f3 5f 	. . _ 
	jp c,06b5dh		;6deb	da 5d 6b 	. ] k 
	ld hl,081d4h		;6dee	21 d4 81 	! . . 
	ld b,001h		;6df1	06 01 	. . 
	call 06c41h		;6df3	cd 41 6c 	. A l 
	pop hl			;6df6	e1 	. 
	jp 05ca8h		;6df7	c3 a8 5c 	. . \ 
	ld a,001h		;6dfa	3e 01 	> . 
	jr $-26		;6dfc	18 e4 	. . 
	pop hl			;6dfe	e1 	. 
	ld a,076h		;6dff	3e 76 	> v 
	call 048f2h		;6e01	cd f2 48 	. . H 
	ld a,039h		;6e04	3e 39 	> 9 
	call 048f2h		;6e06	cd f2 48 	. . H 
	ld b,002h		;6e09	06 02 	. . 
	call 04930h		;6e0b	cd 30 49 	. 0 I 
	ld (de),a			;6e0e	12 	. 
	inc de			;6e0f	13 	. 
	djnz $-5		;6e10	10 f9 	. . 
	jp 06a60h		;6e12	c3 60 6a 	. ` j 
	pop hl			;6e15	e1 	. 
	ld a,076h		;6e16	3e 76 	> v 
	call 048f2h		;6e18	cd f2 48 	. . H 
	ld a,041h		;6e1b	3e 41 	> A 
	call 048f2h		;6e1d	cd f2 48 	. . H 
	jp 06cc4h		;6e20	c3 c4 6c 	. . l 
	ld hl,08182h		;6e23	21 82 81 	! . . 
	ld b,002h		;6e26	06 02 	. . 
	call 06c41h		;6e28	cd 41 6c 	. A l 
	pop hl			;6e2b	e1 	. 
	jp 05ca8h		;6e2c	c3 a8 5c 	. . \ 
	ld hl,08184h		;6e2f	21 84 81 	! . . 
	jr $-12		;6e32	18 f2 	. . 
	ld hl,08186h		;6e34	21 86 81 	! . . 
	jp 06d26h		;6e37	c3 26 6d 	. & m 
	ld hl,081d5h		;6e3a	21 d5 81 	! . . 
	ld b,001h		;6e3d	06 01 	. . 
	call 06c41h		;6e3f	cd 41 6c 	. A l 
	pop hl			;6e42	e1 	. 
	jp 05ca8h		;6e43	c3 a8 5c 	. . \ 
	ld a,(hl)			;6e46	7e 	~ 
	inc hl			;6e47	23 	# 
	cp 044h		;6e48	fe 44 	. D 
	jp nz,06b5dh		;6e4a	c2 5d 6b 	. ] k 
	ld a,(hl)			;6e4d	7e 	~ 
	inc hl			;6e4e	23 	# 
	cp 053h		;6e4f	fe 53 	. S 
	jp nz,06b5dh		;6e51	c2 5d 6b 	. ] k 
	ld a,(hl)			;6e54	7e 	~ 
	inc hl			;6e55	23 	# 
	cp 04dh		;6e56	fe 4d 	. M 
	jp nz,06b5dh		;6e58	c2 5d 6b 	. ] k 
	dec hl			;6e5b	2b 	+ 
	dec hl			;6e5c	2b 	+ 
	dec hl			;6e5d	2b 	+ 
	call 05fa4h		;6e5e	cd a4 5f 	. . _ 
	inc hl			;6e61	23 	# 
	inc hl			;6e62	23 	# 
	inc hl			;6e63	23 	# 
	call 05fb1h		;6e64	cd b1 5f 	. . _ 
	ld a,04dh		;6e67	3e 4d 	> M 
	call 0495ah		;6e69	cd 5a 49 	. Z I 
	ld b,019h		;6e6c	06 19 	. . 
	call 05de8h		;6e6e	cd e8 5d 	. . ] 
	ld (de),a			;6e71	12 	. 
	inc de			;6e72	13 	. 
	djnz $-5		;6e73	10 f9 	. . 
	call 05fb1h		;6e75	cd b1 5f 	. . _ 
	ld a,04dh		;6e78	3e 4d 	> M 
	call 048f2h		;6e7a	cd f2 48 	. . H 
	ld b,019h		;6e7d	06 19 	. . 
	call 04930h		;6e7f	cd 30 49 	. 0 I 
	ld (de),a			;6e82	12 	. 
	inc de			;6e83	13 	. 
	djnz $-5		;6e84	10 f9 	. . 
	call 05fb1h		;6e86	cd b1 5f 	. . _ 
	push hl			;6e89	e5 	. 
	ld hl,04387h		;6e8a	21 87 43 	! . C 
	ld bc,00019h		;6e8d	01 19 00 	. . . 
	ldir		;6e90	ed b0 	. . 
	call 05fb1h		;6e92	cd b1 5f 	. . _ 
	ld hl,0456bh		;6e95	21 6b 45 	! k E 
	ld bc,00019h		;6e98	01 19 00 	. . . 
	ldir		;6e9b	ed b0 	. . 
	call 05fb1h		;6e9d	cd b1 5f 	. . _ 
	in a,(09fh)		;6ea0	db 9f 	. . 
	ld (089d0h),a		;6ea2	32 d0 89 	2 . . 
	ld hl,089d0h		;6ea5	21 d0 89 	! . . 
	ld b,001h		;6ea8	06 01 	. . 
	call 06c41h		;6eaa	cd 41 6c 	. A l 
	in a,(0f0h)		;6ead	db f0 	. . 
	ld (089d0h),a		;6eaf	32 d0 89 	2 . . 
	ld hl,089d0h		;6eb2	21 d0 89 	! . . 
	ld b,001h		;6eb5	06 01 	. . 
	call 06c41h		;6eb7	cd 41 6c 	. A l 
	call 05fb1h		;6eba	cd b1 5f 	. . _ 
	ld hl,0a01ch		;6ebd	21 1c a0 	! . . 
	ld b,002h		;6ec0	06 02 	. . 
	call 06c41h		;6ec2	cd 41 6c 	. A l 
	call 05fb1h		;6ec5	cd b1 5f 	. . _ 
	ld hl,0a477h		;6ec8	21 77 a4 	! w . 
	ld b,002h		;6ecb	06 02 	. . 
	call 06c41h		;6ecd	cd 41 6c 	. A l 
	call 05fb1h		;6ed0	cd b1 5f 	. . _ 
	ld hl,0a7e0h		;6ed3	21 e0 a7 	! . . 
	ld b,002h		;6ed6	06 02 	. . 
	call 06c41h		;6ed8	cd 41 6c 	. A l 
	call 05fb1h		;6edb	cd b1 5f 	. . _ 
	ld hl,0a7d0h		;6ede	21 d0 a7 	! . . 
	ld bc,0000fh		;6ee1	01 0f 00 	. . . 
	ldir		;6ee4	ed b0 	. . 
	pop hl			;6ee6	e1 	. 
	xor a			;6ee7	af 	. 
	call 0495ah		;6ee8	cd 5a 49 	. Z I 
	call 048f2h		;6eeb	cd f2 48 	. . H 
	jp 05ca8h		;6eee	c3 a8 5c 	. . \ 
	call 05f7ah		;6ef1	cd 7a 5f 	. z _ 
	ld a,(08836h)		;6ef4	3a 36 88 	: 6 . 
	or a			;6ef7	b7 	. 
	jp nz,05d92h		;6ef8	c2 92 5d 	. . ] 
	ld a,(08149h)		;6efb	3a 49 81 	: I . 
	or a			;6efe	b7 	. 
	jp z,06e0fh		;6eff	ca 0f 6e 	. . n 
	cp 001h		;6f02	fe 01 	. . 
	jp z,06e24h		;6f04	ca 24 6e 	. $ n 
	ld a,090h		;6f07	3e 90 	> . 
	ld (08835h),a		;6f09	32 35 88 	2 5 . 
	jp 05d92h		;6f0c	c3 92 5d 	. . ] 
	ld a,(hl)			;6f0f	7e 	~ 
	inc hl			;6f10	23 	# 
	cp 031h		;6f11	fe 31 	. 1 
	jp m,06e07h		;6f13	fa 07 6e 	. . n 
	cp 039h		;6f16	fe 39 	. 9 
	jp p,06e07h		;6f18	f2 07 6e 	. . n 
	ld (08119h),a		;6f1b	32 19 81 	2 . . 
	call 05fbah		;6f1e	cd ba 5f 	. . _ 
	jp 05ca8h		;6f21	c3 a8 5c 	. . \ 
	ld a,(hl)			;6f24	7e 	~ 
	inc hl			;6f25	23 	# 
	cp 030h		;6f26	fe 30 	. 0 
	jp m,06e5dh		;6f28	fa 5d 6e 	. ] n 
	cp 033h		;6f2b	fe 33 	. 3 
	jp p,06e5dh		;6f2d	f2 5d 6e 	. ] n 
	ld b,a			;6f30	47 	G 
	ld a,(hl)			;6f31	7e 	~ 
	inc hl			;6f32	23 	# 
	cp 030h		;6f33	fe 30 	. 0 
	jp m,06e5dh		;6f35	fa 5d 6e 	. ] n 
	cp 03ah		;6f38	fe 3a 	. : 
	jp m,06e47h		;6f3a	fa 47 6e 	. G n 
	cp 041h		;6f3d	fe 41 	. A 
	jp m,06e5dh		;6f3f	fa 5d 6e 	. ] n 
	cp 047h		;6f42	fe 47 	. G 
	jp p,06e5dh		;6f44	f2 5d 6e 	. ] n 
	ld c,a			;6f47	4f 	O 
	ld a,06eh		;6f48	3e 6e 	> n 
	call 048f2h		;6f4a	cd f2 48 	. . H 
	ld a,037h		;6f4d	3e 37 	> 7 
	call 048f2h		;6f4f	cd f2 48 	. . H 
	ld a,b			;6f52	78 	x 
	call 048f2h		;6f53	cd f2 48 	. . H 
	ld a,c			;6f56	79 	y 
	call 048f2h		;6f57	cd f2 48 	. . H 
	jp 05ca8h		;6f5a	c3 a8 5c 	. . \ 
	ld a,006h		;6f5d	3e 06 	> . 
	ld (08835h),a		;6f5f	32 35 88 	2 5 . 
	jp 05d92h		;6f62	c3 92 5d 	. . ] 
	call 05f7ah		;6f65	cd 7a 5f 	. z _ 
	ld a,(08836h)		;6f68	3a 36 88 	: 6 . 
	or a			;6f6b	b7 	. 
	jp nz,05d92h		;6f6c	c2 92 5d 	. . ] 
	xor a			;6f6f	af 	. 
	ld (08292h),a		;6f70	32 92 82 	2 . . 
	ld a,(08149h)		;6f73	3a 49 81 	: I . 
	cp 09bh		;6f76	fe 9b 	. . 
	jp z,0606ah		;6f78	ca 6a 60 	. j ` 
	cp 09ch		;6f7b	fe 9c 	. . 
	jp z,0606ah		;6f7d	ca 6a 60 	. j ` 
	cp 09dh		;6f80	fe 9d 	. . 
	jp z,0606ah		;6f82	ca 6a 60 	. j ` 
	cp 0a8h		;6f85	fe a8 	. . 
	jp z,0606ah		;6f87	ca 6a 60 	. j ` 
	cp 08dh		;6f8a	fe 8d 	. . 
	jp z,0606ah		;6f8c	ca 6a 60 	. j ` 
	cp 086h		;6f8f	fe 86 	. . 
	jp z,06f14h		;6f91	ca 14 6f 	. . o 
	cp 095h		;6f94	fe 95 	. . 
	jp z,06f1ah		;6f96	ca 1a 6f 	. . o 
	cp 09ah		;6f99	fe 9a 	. . 
	jp z,06f20h		;6f9b	ca 20 6f 	.   o 
	cp 0a4h		;6f9e	fe a4 	. . 
	jp z,06f26h		;6fa0	ca 26 6f 	. & o 
	cp 0a5h		;6fa3	fe a5 	. . 
	jp z,06f2eh		;6fa5	ca 2e 6f 	. . o 
	cp 0aah		;6fa8	fe aa 	. . 
	jp z,06f36h		;6faa	ca 36 6f 	. 6 o 
	cp 0b2h		;6fad	fe b2 	. . 
	jp z,06f3ch		;6faf	ca 3c 6f 	. < o 
	cp 0b5h		;6fb2	fe b5 	. . 
	jp z,06f42h		;6fb4	ca 42 6f 	. B o 
	cp 0abh		;6fb7	fe ab 	. . 
	jp z,06f48h		;6fb9	ca 48 6f 	. H o 
	cp 0aeh		;6fbc	fe ae 	. . 
	jp z,06f4eh		;6fbe	ca 4e 6f 	. N o 
	cp 0afh		;6fc1	fe af 	. . 
	jp z,06f8ch		;6fc3	ca 8c 6f 	. . o 
	cp 08eh		;6fc6	fe 8e 	. . 
	jp z,06f54h		;6fc8	ca 54 6f 	. T o 
	cp 0b3h		;6fcb	fe b3 	. . 
	jp z,06f5fh		;6fcd	ca 5f 6f 	. _ o 
	cp 0b4h		;6fd0	fe b4 	. . 
	jp z,06f5fh		;6fd2	ca 5f 6f 	. _ o 
	cp 09eh		;6fd5	fe 9e 	. . 
	jp z,06f6eh		;6fd7	ca 6e 6f 	. n o 
	cp 09fh		;6fda	fe 9f 	. . 
	jp z,06f74h		;6fdc	ca 74 6f 	. t o 
	cp 0b6h		;6fdf	fe b6 	. . 
	jp z,06f7ah		;6fe1	ca 7a 6f 	. z o 
	cp 0b0h		;6fe4	fe b0 	. . 
	jp z,06f80h		;6fe6	ca 80 6f 	. . o 
	cp 0b1h		;6fe9	fe b1 	. . 
	jp z,06f86h		;6feb	ca 86 6f 	. . o 
	push hl			;6fee	e5 	. 
	push de			;6fef	d5 	. 
	call 02c0ch		;6ff0	cd 0c 2c 	. . , 
	pop de			;6ff3	d1 	. 
	pop hl			;6ff4	e1 	. 
	call 05fbah		;6ff5	cd ba 5f 	. . _ 
	ld a,(08292h)		;6ff8	3a 92 82 	: . . 
	or a			;6ffb	b7 	. 
	jp z,05ca8h		;6ffc	ca a8 5c 	. . \ 
	ld c,a			;6fff	4f 	O 
	ld b,000h		;7000	06 00 	. . 
	ld hl,06f92h		;7002	21 92 6f 	! . o 
	add hl,bc			;7005	09 	. 
	ld a,(hl)			;7006	7e 	~ 
	ld (08835h),a		;7007	32 35 88 	2 5 . 
	jp 05d92h		;700a	c3 92 5d 	. . ] 
	or a			;700d	b7 	. 
	jp z,06eeeh		;700e	ca ee 6e 	. . n 
	jp 05ca8h		;7011	c3 a8 5c 	. . \ 
	ld a,(08131h)		;7014	3a 31 81 	: 1 . 
	jp 06f0dh		;7017	c3 0d 6f 	. . o 
	ld a,(08117h)		;701a	3a 17 81 	: . . 
	jp 06f0dh		;701d	c3 0d 6f 	. . o 
	ld a,(0813bh)		;7020	3a 3b 81 	: ; . 
	jp 06f0dh		;7023	c3 0d 6f 	. . o 
	ld a,(08140h)		;7026	3a 40 81 	: @ . 
	and 004h		;7029	e6 04 	. . 
	jp 06f0dh		;702b	c3 0d 6f 	. . o 
	ld a,(08140h)		;702e	3a 40 81 	: @ . 
	and 008h		;7031	e6 08 	. . 
	jp 06f0dh		;7033	c3 0d 6f 	. . o 
	ld a,(08143h)		;7036	3a 43 81 	: C . 
	jp 06f0dh		;7039	c3 0d 6f 	. . o 
	ld a,(08146h)		;703c	3a 46 81 	: F . 
	jp 06f0dh		;703f	c3 0d 6f 	. . o 
	ld a,(08151h)		;7042	3a 51 81 	: Q . 
	jp 06f0dh		;7045	c3 0d 6f 	. . o 
	ld a,(0814fh)		;7048	3a 4f 81 	: O . 
	jp 06f0dh		;704b	c3 0d 6f 	. . o 
	ld a,(08150h)		;704e	3a 50 81 	: P . 
	jp 06f0dh		;7051	c3 0d 6f 	. . o 
	ld a,(081ach)		;7054	3a ac 81 	: . . 
	bit 4,a		;7057	cb 67 	. g 
	jp nz,06eeeh		;7059	c2 ee 6e 	. . n 
	jp 05ca8h		;705c	c3 a8 5c 	. . \ 
	ld a,(08146h)		;705f	3a 46 81 	: F . 
	or a			;7062	b7 	. 
	jp nz,06eeeh		;7063	c2 ee 6e 	. . n 
	ld a,004h		;7066	3e 04 	> . 
	ld (08835h),a		;7068	32 35 88 	2 5 . 
	jp 05d92h		;706b	c3 92 5d 	. . ] 
	ld a,(08154h)		;706e	3a 54 81 	: T . 
	jp 06f0dh		;7071	c3 0d 6f 	. . o 
	ld a,(08155h)		;7074	3a 55 81 	: U . 
	jp 06f0dh		;7077	c3 0d 6f 	. . o 
	ld a,(08153h)		;707a	3a 53 81 	: S . 
	jp 06f0dh		;707d	c3 0d 6f 	. . o 
	ld a,(08144h)		;7080	3a 44 81 	: D . 
	jp 06f0dh		;7083	c3 0d 6f 	. . o 
	ld a,(08145h)		;7086	3a 45 81 	: E . 
	jp 06f0dh		;7089	c3 0d 6f 	. . o 
	ld a,(08156h)		;708c	3a 56 81 	: V . 
	jp 06f0dh		;708f	c3 0d 6f 	. . o 
	nop			;7092	00 	. 
	inc b			;7093	04 	. 
	rlca			;7094	07 	. 
	sub b			;7095	90 	. 
	ld a,(0883dh)		;7096	3a 3d 88 	: = . 
	or a			;7099	b7 	. 
	jp nz,05967h		;709a	c2 67 59 	. g Y 
	ld a,(0883eh)		;709d	3a 3e 88 	: > . 
	or a			;70a0	b7 	. 
	jp nz,05a36h		;70a1	c2 36 5a 	. 6 Z 
	ld a,017h		;70a4	3e 17 	> . 
	ld (de),a			;70a6	12 	. 
	push de			;70a7	d5 	. 
	pop hl			;70a8	e1 	. 
	ld bc,08840h		;70a9	01 40 88 	. @ . 
	or a			;70ac	b7 	. 
	sbc hl,bc		;70ad	ed 42 	. B 
	push hl			;70af	e5 	. 
	pop bc			;70b0	c1 	. 
	ex de,hl			;70b1	eb 	. 
	ld a,000h		;70b2	3e 00 	> . 
	cpdr		;70b4	ed b9 	. . 
	inc hl			;70b6	23 	# 
	jp nz,0606ah		;70b7	c2 6a 60 	. j ` 
	ld a,033h		;70ba	3e 33 	> 3 
	ld (hl),a			;70bc	77 	w 
	dec hl			;70bd	2b 	+ 
	ld (hl),a			;70be	77 	w 
	dec hl			;70bf	2b 	+ 
	ld a,046h		;70c0	3e 46 	> F 
	ld (hl),a			;70c2	77 	w 
	ld hl,08840h		;70c3	21 40 88 	! @ . 
	ld a,(hl)			;70c6	7e 	~ 
	call 05e49h		;70c7	cd 49 5e 	. I ^ 
	cp 001h		;70ca	fe 01 	. . 
	jp z,07013h		;70cc	ca 13 70 	. . p 
	cp 002h		;70cf	fe 02 	. . 
	jp z,07013h		;70d1	ca 13 70 	. . p 
	cp 017h		;70d4	fe 17 	. . 
	jp z,06fddh		;70d6	ca dd 6f 	. . o 
	inc hl			;70d9	23 	# 
	jp 06fc6h		;70da	c3 c6 6f 	. . o 
	ld a,(08837h)		;70dd	3a 37 88 	: 7 . 
	or a			;70e0	b7 	. 
	jp z,0700ah		;70e1	ca 0a 70 	. . p 
	ld a,(0821ch)		;70e4	3a 1c 82 	: . . 
	or a			;70e7	b7 	. 
	jp z,06ff1h		;70e8	ca f1 6f 	. . o 
	call 05fbah		;70eb	cd ba 5f 	. . _ 
	jp 06fe4h		;70ee	c3 e4 6f 	. . o 
	ld de,08840h		;70f1	11 40 88 	. @ . 
	ld a,046h		;70f4	3e 46 	> F 
	ld (de),a			;70f6	12 	. 
	inc de			;70f7	13 	. 
	ld a,033h		;70f8	3e 33 	> 3 
	ld (de),a			;70fa	12 	. 
	inc de			;70fb	13 	. 
	ld a,032h		;70fc	3e 32 	> 2 
	ld (de),a			;70fe	12 	. 
	inc de			;70ff	13 	. 
	ld a,017h		;7100	3e 17 	> . 
	ld (de),a			;7102	12 	. 
	xor a			;7103	af 	. 
	ld (08837h),a		;7104	32 37 88 	2 7 . 
	jp 06fc3h		;7107	c3 c3 6f 	. . o 
	ld de,08840h		;710a	11 40 88 	. @ . 
	ld hl,08801h		;710d	21 01 88 	! . . 
	jp 0591ah		;7110	c3 1a 59 	. . Y 
	push de			;7113	d5 	. 
	push hl			;7114	e5 	. 
	push bc			;7115	c5 	. 
	push af			;7116	f5 	. 
	call 04121h		;7117	cd 21 41 	. ! A 
	ld hl,007dch		;711a	21 dc 07 	! . . 
	call 04155h		;711d	cd 55 41 	. U A 
	pop af			;7120	f1 	. 
	or 030h		;7121	f6 30 	. 0 
	ld de,0e726h		;7123	11 26 e7 	. & . 
	ld (de),a			;7126	12 	. 
	ld hl,0601eh		;7127	21 1e 60 	! . ` 
	call 0600ah		;712a	cd 0a 60 	. . ` 
	pop bc			;712d	c1 	. 
	pop hl			;712e	e1 	. 
	pop de			;712f	d1 	. 
	ld a,001h		;7130	3e 01 	> . 
	ld (0829ah),a		;7132	32 9a 82 	2 . . 
	ld a,000h		;7135	3e 00 	> . 
	ld (08290h),a		;7137	32 90 82 	2 . . 
	ld (0e44eh),a		;713a	32 4e e4 	2 N . 
	jp 05d5dh		;713d	c3 5d 5d 	. ] ] 
	ld b,l			;7140	45 	E 
	inc sp			;7141	33 	3 
	ld sp,03020h		;7142	31 20 30 	1   0 
	jr nc,$+75		;7145	30 49 	0 I 
	ld c,(hl)			;7147	4e 	N 
	jr nz,$+91		;7148	20 59 	  Y 
	cpl			;714a	2f 	/ 
	ld c,(hl)			;714b	4e 	N 
	ld hl,04520h		;714c	21 20 45 	!   E 
	ld c,l			;714f	4d 	M 
	ld d,b			;7150	50 	P 
	ld d,h			;7151	54 	T 
	ld e,c			;7152	59 	Y 
	jr nz,$+34		;7153	20 20 	    
	ld d,d			;7155	52 	R 
	ld b,c			;7156	41 	A 
	ld c,(hl)			;7157	4e 	N 
	ld b,a			;7158	47 	G 
	ld b,l			;7159	45 	E 
	jr nz,$+71		;715a	20 45 	  E 
	ld d,e			;715c	53 	S 
	ld b,e			;715d	43 	C 
	add a,d			;715e	82 	. 
	jr nz,$+72		;715f	20 46 	  F 
	scf			;7161	37 	7 
	jr nz,$+85		;7162	20 53 	  S 
	ld d,h			;7164	54 	T 
	ld c,a			;7165	4f 	O 
	ld d,b			;7166	50 	P 
	ld hl,02020h		;7167	21 20 20 	!     
	ld c,c			;716a	49 	I 
	ld c,(hl)			;716b	4e 	N 
	ld c,c			;716c	49 	I 
	ld d,h			;716d	54 	T 
	ld hl,04320h		;716e	21 20 43 	!   C 
	ld c,a			;7171	4f 	O 
	ld c,(hl)			;7172	4e 	N 
	ld d,h			;7173	54 	T 
	ld a,(05c5eh)		;7174	3a 5e 5c 	: ^ \ 
	jr nz,$+69		;7177	20 43 	  C 
	ld c,b			;7179	48 	H 
	ld b,l			;717a	45 	E 
	ld b,e			;717b	43 	C 
	ld c,e			;717c	4b 	K 
	jr nz,$+85		;717d	20 53 	  S 
	ld d,h			;717f	54 	T 
	ld d,d			;7180	52 	R 
	jr nz,$+34		;7181	20 20 	    
	jr nz,$+34		;7183	20 20 	    
	ld d,e			;7185	53 	S 
	ld d,h			;7186	54 	T 
	ld d,d			;7187	52 	R 
	jr nz,$+34		;7188	20 20 	    
	jr nz,$+65		;718a	20 3f 	  ? 
	ld d,d			;718c	52 	R 
	ld b,e			;718d	43 	C 
	ld c,h			;718e	4c 	L 
	jr nz,$+34		;718f	20 20 	    
	jr nz,$+34		;7191	20 20 	    
	ld c,c			;7193	49 	I 
	ld c,(hl)			;7194	4e 	N 
	ld a,(08180h)		;7195	3a 80 81 	: . . 
	add a,d			;7198	82 	. 
	add a,e			;7199	83 	. 
	ret			;719a	c9 	. 
	ld a,(0814ah)		;719b	3a 4a 81 	: J . 
	cp 01ch		;719e	fe 1c 	. . 
	ret nz			;71a0	c0 	. 
	ld a,049h		;71a1	3e 49 	> I 
	call 07844h		;71a3	cd 44 78 	. D x 
	xor a			;71a6	af 	. 
	ld (08358h),a		;71a7	32 58 83 	2 X . 
	ret			;71aa	c9 	. 
	ld a,(08358h)		;71ab	3a 58 83 	: X . 
	or a			;71ae	b7 	. 
	call nz,0709bh		;71af	c4 9b 70 	. . p 
	ld a,(0822eh)		;71b2	3a 2e 82 	: . . 
	or a			;71b5	b7 	. 
	ret z			;71b6	c8 	. 
	ld a,(08378h)		;71b7	3a 78 83 	: x . 
	or a			;71ba	b7 	. 
	jp nz,076e3h		;71bb	c2 e3 76 	. . v 
	ld a,(0814ah)		;71be	3a 4a 81 	: J . 
	cp 08ah		;71c1	fe 8a 	. . 
	jp z,0725dh		;71c3	ca 5d 72 	. ] r 
	cp 08bh		;71c6	fe 8b 	. . 
	jp z,074d5h		;71c8	ca d5 74 	. . t 
	cp 08ch		;71cb	fe 8c 	. . 
	jp z,0752ch		;71cd	ca 2c 75 	. , u 
	cp 08dh		;71d0	fe 8d 	. . 
	jp z,0769eh		;71d2	ca 9e 76 	. . v 
	cp 08eh		;71d5	fe 8e 	. . 
	jp z,076e3h		;71d7	ca e3 76 	. . v 
	ret			;71da	c9 	. 
	ld a,062h		;71db	3e 62 	> b 
	call 07844h		;71dd	cd 44 78 	. D x 
	jr z,$+60		;71e0	28 3a 	( : 
	jr $+8		;71e2	18 06 	. . 
	ld a,(0822eh)		;71e4	3a 2e 82 	: . . 
	or a			;71e7	b7 	. 
	jr z,$+58		;71e8	28 38 	( 8 
	ld a,043h		;71ea	3e 43 	> C 
	call 07844h		;71ec	cd 44 78 	. D x 
	jr z,$+45		;71ef	28 2b 	( + 
	call 07816h		;71f1	cd 16 78 	. . x 
	jr nc,$+40		;71f4	30 26 	0 & 
	call 0713ch		;71f6	cd 3c 71 	. < q 
	ld a,(08344h)		;71f9	3a 44 83 	: D . 
	cp 04eh		;71fc	fe 4e 	. N 
	jr z,$+16		;71fe	28 0e 	( . 
	cp 049h		;7200	fe 49 	. I 
	call z,0775bh		;7202	cc 5b 77 	. [ w 
	cp 042h		;7205	fe 42 	. B 
	call z,07110h		;7207	cc 10 71 	. . q 
	jr nz,$+4		;720a	20 02 	  . 
	scf			;720c	37 	7 
	ret			;720d	c9 	. 
	or a			;720e	b7 	. 
	ret			;720f	c9 	. 
	push af			;7210	f5 	. 
	call 07144h		;7211	cd 44 71 	. D q 
	call 07816h		;7214	cd 16 78 	. . x 
	call 0775bh		;7217	cd 5b 77 	. [ w 
	pop af			;721a	f1 	. 
	ret			;721b	c9 	. 
	xor a			;721c	af 	. 
	ld (0822eh),a		;721d	32 2e 82 	2 . . 
	jr $-18		;7220	18 ec 	. . 
	call 0782fh		;7222	cd 2f 78 	. / x 
	ld a,(08344h)		;7225	3a 44 83 	: D . 
	cp 049h		;7228	fe 49 	. I 
	call z,0775bh		;722a	cc 5b 77 	. [ w 
	cp 042h		;722d	fe 42 	. B 
	call z,0713ch		;722f	cc 3c 71 	. < q 
	call z,07110h		;7232	cc 10 71 	. . q 
	call 07725h		;7235	cd 25 77 	. % w 
	jr z,$-44		;7238	28 d2 	( . 
	jr $-44		;723a	18 d2 	. . 
	push af			;723c	f5 	. 
	ld a,001h		;723d	3e 01 	> . 
	ld (0822eh),a		;723f	32 2e 82 	2 . . 
	pop af			;7242	f1 	. 
	ret			;7243	c9 	. 
	ld bc,00024h		;7244	01 24 00 	. $ . 
	ld de,08320h		;7247	11 20 83 	.   . 
	call 07816h		;724a	cd 16 78 	. . x 
	ld hl,08344h		;724d	21 44 83 	! D . 
	ldi		;7250	ed a0 	. . 
	jp pe,0714ah		;7252	ea 4a 71 	. J q 
	call 07816h		;7255	cd 16 78 	. . x 
	ld a,(08344h)		;7258	3a 44 83 	: D . 
	cp 04eh		;725b	fe 4e 	. N 
	jp z,071ebh		;725d	ca eb 71 	. . q 
	ld a,(08232h)		;7260	3a 32 82 	: 2 . 
	or a			;7263	b7 	. 
	call nz,0413bh		;7264	c4 3b 41 	. ; A 
	ld a,000h		;7267	3e 00 	> . 
	ld (08232h),a		;7269	32 32 82 	2 2 . 
	call 07816h		;726c	cd 16 78 	. . x 
	ld a,(08233h)		;726f	3a 33 82 	: 3 . 
	or a			;7272	b7 	. 
	ret nz			;7273	c0 	. 
	ld hl,07203h		;7274	21 03 72 	! . r 
	ld de,0e580h		;7277	11 80 e5 	. . . 
	ld bc,00005h		;727a	01 05 00 	. . . 
	push de			;727d	d5 	. 
	ld de,08345h		;727e	11 45 83 	. E . 
	ldir		;7281	ed b0 	. . 
	pop de			;7283	d1 	. 
	ld a,(08345h)		;7284	3a 45 83 	: E . 
	cp 080h		;7287	fe 80 	. . 
	jr z,$+84		;7289	28 52 	( R 
	push hl			;728b	e5 	. 
	ld bc,(08348h)		;728c	ed 4b 48 83 	. K H . 
	ld b,c			;7290	41 	A 
	ld hl,(08346h)		;7291	2a 46 83 	* F . 
	ld a,020h		;7294	3e 20 	>   
	cp (hl)			;7296	be 	. 
	jr z,$+67		;7297	28 41 	( A 
	push de			;7299	d5 	. 
	ld a,(08345h)		;729a	3a 45 83 	: E . 
	ld (de),a			;729d	12 	. 
	inc de			;729e	13 	. 
	push de			;729f	d5 	. 
	ld de,(08348h)		;72a0	ed 5b 48 83 	. [ H . 
	or a			;72a4	b7 	. 
	sbc hl,de		;72a5	ed 52 	. R 
	pop de			;72a7	d1 	. 
	inc hl			;72a8	23 	# 
	ld a,(hl)			;72a9	7e 	~ 
	cp 020h		;72aa	fe 20 	.   
	jr z,$+6		;72ac	28 04 	( . 
	cp 030h		;72ae	fe 30 	. 0 
	jr nz,$+7		;72b0	20 05 	  . 
	dec b			;72b2	05 	. 
	jr z,$+11		;72b3	28 09 	( . 
	jr $-13		;72b5	18 f1 	. . 
	push bc			;72b7	c5 	. 
	ld c,b			;72b8	48 	H 
	ld b,000h		;72b9	06 00 	. . 
	ldir		;72bb	ed b0 	. . 
	pop bc			;72bd	c1 	. 
	ld a,006h		;72be	3e 06 	> . 
	sub b			;72c0	90 	. 
	jr z,$+19		;72c1	28 11 	( . 
	ld c,a			;72c3	4f 	O 
	ld b,000h		;72c4	06 00 	. . 
	cp 006h		;72c6	fe 06 	. . 
	jr nz,$+7		;72c8	20 05 	  . 
	ld a,030h		;72ca	3e 30 	> 0 
	ld (de),a			;72cc	12 	. 
	inc de			;72cd	13 	. 
	dec bc			;72ce	0b 	. 
	ld hl,05806h		;72cf	21 06 58 	! . X 
	ldir		;72d2	ed b0 	. . 
	pop de			;72d4	d1 	. 
	ld hl,00020h		;72d5	21 20 00 	!   . 
	add hl,de			;72d8	19 	. 
	ex de,hl			;72d9	eb 	. 
	pop hl			;72da	e1 	. 
	jr $-97		;72db	18 9d 	. . 
	ld hl,0e640h		;72dd	21 40 e6 	! @ . 
	sbc hl,de		;72e0	ed 52 	. R 
	ex de,hl			;72e2	eb 	. 
	inc e			;72e3	1c 	. 
	dec e			;72e4	1d 	. 
	ret z			;72e5	c8 	. 
	ld (hl),000h		;72e6	36 00 	6 . 
	inc hl			;72e8	23 	# 
	jr $-5		;72e9	18 f9 	. . 
	ld a,(08232h)		;72eb	3a 32 82 	: 2 . 
	or a			;72ee	b7 	. 
	jp nz,0716ch		;72ef	c2 6c 71 	. l q 
	call 04121h		;72f2	cd 21 41 	. ! A 
	ld hl,07222h		;72f5	21 22 72 	! " r 
	call 04155h		;72f8	cd 55 41 	. U A 
	ld a,001h		;72fb	3e 01 	> . 
	ld (08232h),a		;72fd	32 32 82 	2 2 . 
	jp 0716ch		;7300	c3 6c 71 	. l q 
	ld e,b			;7303	58 	X 
	dec h			;7304	25 	% 
	add a,e			;7305	83 	. 
	ld b,000h		;7306	06 00 	. . 
	ld e,c			;7308	59 	Y 
	ld l,083h		;7309	2e 83 	. . 
	ld b,000h		;730b	06 00 	. . 
	ld e,d			;730d	5a 	Z 
	ld (hl),083h		;730e	36 83 	6 . 
	dec b			;7310	05 	. 
	nop			;7311	00 	. 
	ld a,d			;7312	7a 	z 
	dec sp			;7313	3b 	; 
	add a,e			;7314	83 	. 
	dec b			;7315	05 	. 
	nop			;7316	00 	. 
	ld d,d			;7317	52 	R 
	ld b,b			;7318	40 	@ 
	add a,e			;7319	83 	. 
	dec b			;731a	05 	. 
	nop			;731b	00 	. 
	ld d,h			;731c	54 	T 
	ld b,e			;731d	43 	C 
	add a,e			;731e	83 	. 
	inc bc			;731f	03 	. 
	nop			;7320	00 	. 
	add a,b			;7321	80 	. 
	jr nz,$+85		;7322	20 53 	  S 
	ld d,h			;7324	54 	T 
	ld b,c			;7325	41 	A 
	ld b,a			;7326	47 	G 
	ld b,l			;7327	45 	E 
	jr nz,$+71		;7328	20 45 	  E 
	ld c,(hl)			;732a	4e 	N 
	ld b,h			;732b	44 	D 
	dec l			;732c	2d 	- 
	ld d,b			;732d	50 	P 
	ld c,a			;732e	4f 	O 
	ld d,e			;732f	53 	S 
	ld c,a			;7330	4f 	O 
	ld d,l			;7331	55 	U 
	ld d,h			;7332	54 	T 
	jr nz,$+81		;7333	20 4f 	  O 
	ld b,(hl)			;7335	46 	F 
	jr nz,$+34		;7336	20 20 	    
	ld d,d			;7338	52 	R 
	ld b,c			;7339	41 	A 
	ld c,(hl)			;733a	4e 	N 
	ld b,a			;733b	47 	G 
	ld b,l			;733c	45 	E 
	jr nz,$-49		;733d	20 cd 	  . 
	ld c,c			;733f	49 	I 
	ld (hl),d			;7340	72 	r 
	push bc			;7341	c5 	. 
	ld b,00ah		;7342	06 0a 	. . 
	call 00545h		;7344	cd 45 05 	. E . 
	pop bc			;7347	c1 	. 
	ret			;7348	c9 	. 
	ld bc,00007h		;7349	01 07 00 	. . . 
	ld de,0e660h		;734c	11 60 e6 	. ` . 
	ldir		;734f	ed b0 	. . 
	ret			;7351	c9 	. 
	ld b,01fh		;7352	06 1f 	. . 
	ld hl,0e660h		;7354	21 60 e6 	! ` . 
	ld (hl),000h		;7357	36 00 	6 . 
	inc hl			;7359	23 	# 
	djnz $-3		;735a	10 fb 	. . 
	ret			;735c	c9 	. 
	ld a,(08378h)		;735d	3a 78 83 	: x . 
	or a			;7360	b7 	. 
	jp nz,0736ch		;7361	c2 6c 73 	. l s 
	ld a,000h		;7364	3e 00 	> . 
	ld (08379h),a		;7366	32 79 83 	2 y . 
	call 07710h		;7369	cd 10 77 	. . w 
	ld a,053h		;736c	3e 53 	> S 
	call 07844h		;736e	cd 44 78 	. D x 
	ld hl,0707eh		;7371	21 7e 70 	! ~ p 
	call 074afh		;7374	cd af 74 	. . t 
	call 073c0h		;7377	cd c0 73 	. . s 
	ld a,(08344h)		;737a	3a 44 83 	: D . 
	cp 05ch		;737d	fe 5c 	. \ 
	jr z,$+110		;737f	28 6c 	( l 
	cp 065h		;7381	fe 65 	. e 
	jr z,$+121		;7383	28 77 	( w 
	cp 03eh		;7385	fe 3e 	. > 
	jp z,0733eh		;7387	ca 3e 73 	. > s 
	cp 03fh		;738a	fe 3f 	. ? 
	jr nz,$-21		;738c	20 e9 	  . 
	ld bc,00003h		;738e	01 03 00 	. . . 
	ld de,0e670h		;7391	11 70 e6 	. p . 
	ld hl,0e663h		;7394	21 63 e6 	! c . 
	ldir		;7397	ed b0 	. . 
	ld hl,07085h		;7399	21 85 70 	! . p 
	call 07249h		;739c	cd 49 72 	. I r 
	ld bc,00003h		;739f	01 03 00 	. . . 
	ld de,0e663h		;73a2	11 63 e6 	. c . 
	ld hl,0e670h		;73a5	21 70 e6 	! p . 
	ldir		;73a8	ed b0 	. . 
	ld (081b1h),de		;73aa	ed 53 b1 81 	. S . . 
	call 0055fh		;73ae	cd 5f 05 	. _ . 
	ld a,(0814ah)		;73b1	3a 4a 81 	: J . 
	cp 080h		;73b4	fe 80 	. . 
	jr nc,$-8		;73b6	30 f6 	0 . 
	cp 04bh		;73b8	fe 4b 	. K 
	jr z,$-12		;73ba	28 f2 	( . 
	cp 079h		;73bc	fe 79 	. y 
	jr nz,$+4		;73be	20 02 	  . 
	ld a,059h		;73c0	3e 59 	> Y 
	cp 04eh		;73c2	fe 4e 	. N 
	jr z,$+6		;73c4	28 04 	( . 
	cp 06eh		;73c6	fe 6e 	. n 
	jr nz,$+9		;73c8	20 07 	  . 
	ld a,001h		;73ca	3e 01 	> . 
	ld (08379h),a		;73cc	32 79 83 	2 y . 
	ld a,04eh		;73cf	3e 4e 	> N 
	call 07844h		;73d1	cd 44 78 	. D x 
	call 07810h		;73d4	cd 10 78 	. . x 
	jr nc,$-3		;73d7	30 fb 	0 . 
	ld a,(08344h)		;73d9	3a 44 83 	: D . 
	cp 03eh		;73dc	fe 3e 	. > 
	jp z,0733eh		;73de	ca 3e 73 	. > s 
	cp 05ch		;73e1	fe 5c 	. \ 
	jr nz,$-53		;73e3	20 c9 	  . 
	ld hl,07046h		;73e5	21 46 70 	! F p 
	call 0723eh		;73e8	cd 3e 72 	. > r 
	jr $-82		;73eb	18 ac 	. . 
	ld hl,0707eh		;73ed	21 7e 70 	! ~ p 
	call 074afh		;73f0	cd af 74 	. . t 
	ld a,(0814ah)		;73f3	3a 4a 81 	: J . 
	call 073deh		;73f6	cd de 73 	. . s 
	jp 0727ah		;73f9	c3 7a 72 	. z r 
	ld hl,07054h		;73fc	21 54 70 	! T p 
	call 0723eh		;73ff	cd 3e 72 	. > r 
	jr $+96		;7402	18 5e 	. ^ 
	push bc			;7404	c5 	. 
	push de			;7405	d5 	. 
	push hl			;7406	e5 	. 
	ld a,02ah		;7407	3e 2a 	> * 
	ld (0e686h),a		;7409	32 86 e6 	2 . . 
	ld (0e682h),a		;740c	32 82 e6 	2 . . 
	ld hl,0e665h		;740f	21 65 e6 	! e . 
	ld de,0e685h		;7412	11 85 e6 	. . . 
	ld b,003h		;7415	06 03 	. . 
	ld c,003h		;7417	0e 03 	. . 
	ld a,(hl)			;7419	7e 	~ 
	dec hl			;741a	2b 	+ 
	cp 000h		;741b	fe 00 	. . 
	jr z,$+6		;741d	28 04 	( . 
	cp 020h		;741f	fe 20 	.   
	jr nz,$+8		;7421	20 06 	  . 
	dec b			;7423	05 	. 
	jr nz,$-11		;7424	20 f3 	  . 
	inc c			;7426	0c 	. 
	jr $+10		;7427	18 08 	. . 
	ld (de),a			;7429	12 	. 
	dec de			;742a	1b 	. 
	dec b			;742b	05 	. 
	jr z,$+5		;742c	28 03 	( . 
	dec c			;742e	0d 	. 
	jr $-22		;742f	18 e8 	. . 
	dec c			;7431	0d 	. 
	jr z,$+8		;7432	28 06 	( . 
	ld a,030h		;7434	3e 30 	> 0 
	ld (de),a			;7436	12 	. 
	dec de			;7437	1b 	. 
	jr $-7		;7438	18 f7 	. . 
	pop hl			;743a	e1 	. 
	pop de			;743b	d1 	. 
	pop bc			;743c	c1 	. 
	ret			;743d	c9 	. 
	ld a,(08379h)		;743e	3a 79 83 	: y . 
	or a			;7441	b7 	. 
	jp nz,07362h		;7442	c2 62 73 	. b s 
	call 07304h		;7445	cd 04 73 	. . s 
	ld hl,0e663h		;7448	21 63 e6 	! c . 
	ld a,(hl)			;744b	7e 	~ 
	cp 031h		;744c	fe 31 	. 1 
	jr nz,$+20		;744e	20 12 	  . 
	inc hl			;7450	23 	# 
	ld a,(hl)			;7451	7e 	~ 
	cp 033h		;7452	fe 33 	. 3 
	jr nz,$+14		;7454	20 0c 	  . 
	inc hl			;7456	23 	# 
	ld a,(hl)			;7457	7e 	~ 
	cp 030h		;7458	fe 30 	. 0 
	jp z,0737fh		;745a	ca 7f 73 	.  s 
	cp 031h		;745d	fe 31 	. 1 
	jp z,07375h		;745f	ca 75 73 	. u s 
	xor a			;7462	af 	. 
	ld (08379h),a		;7463	32 79 83 	2 y . 
	call 07252h		;7466	cd 52 72 	. R r 
	call 07718h		;7469	cd 18 77 	. . w 
	ret			;746c	c9 	. 
	ld sp,03033h		;746d	31 33 30 	1 3 0 
	dec c			;7470	0d 	. 
	ld sp,03133h		;7471	31 33 31 	1 3 1 
	dec c			;7474	0d 	. 
	xor a			;7475	af 	. 
	ld (0823bh),a		;7476	32 3b 82 	2 ; . 
	ld hl,07371h		;7479	21 71 73 	! q s 
	jp 07387h		;747c	c3 87 73 	. . s 
	ld a,001h		;747f	3e 01 	> . 
	ld (0823bh),a		;7481	32 3b 82 	2 ; . 
	ld hl,0736dh		;7484	21 6d 73 	! m s 
	push hl			;7487	e5 	. 
	ld a,04ch		;7488	3e 4c 	> L 
	call 07844h		;748a	cd 44 78 	. D x 
	call 070e4h		;748d	cd e4 70 	. . p 
	pop hl			;7490	e1 	. 
	ld b,004h		;7491	06 04 	. . 
	ld a,(hl)			;7493	7e 	~ 
	inc hl			;7494	23 	# 
	call 07844h		;7495	cd 44 78 	. D x 
	call 07816h		;7498	cd 16 78 	. . x 
	jr nc,$-3		;749b	30 fb 	0 . 
	djnz $-10		;749d	10 f4 	. . 
	call 070e4h		;749f	cd e4 70 	. . p 
	ld a,(08353h)		;74a2	3a 53 83 	: S . 
	cp 046h		;74a5	fe 46 	. F 
	jr nz,$-8		;74a7	20 f6 	  . 
	ld hl,08320h		;74a9	21 20 83 	!   . 
	ld de,0a4c7h		;74ac	11 c7 a4 	. . . 
	ld bc,00024h		;74af	01 24 00 	. $ . 
	ld a,(0823bh)		;74b2	3a 3b 82 	: ; . 
	or a			;74b5	b7 	. 
	jr nz,$+5		;74b6	20 03 	  . 
	ld de,0a4ebh		;74b8	11 eb a4 	. . . 
	ldir		;74bb	ed b0 	. . 
	jp 07362h		;74bd	c3 62 73 	. b s 
	push af			;74c0	f5 	. 
	ld a,001h		;74c1	3e 01 	> . 
	ld (08359h),a		;74c3	32 59 83 	2 Y . 
	pop af			;74c6	f1 	. 
	push de			;74c7	d5 	. 
	call 070e4h		;74c8	cd e4 70 	. . p 
	pop de			;74cb	d1 	. 
	call 0051dh		;74cc	cd 1d 05 	. . . 
	ld a,(0814ah)		;74cf	3a 4a 81 	: J . 
	cp 00dh		;74d2	fe 0d 	. . 
	jr z,$+10		;74d4	28 08 	( . 
	cp 030h		;74d6	fe 30 	. 0 
	jr c,$-24		;74d8	38 e6 	8 . 
	cp 03ah		;74da	fe 3a 	. : 
	jr nc,$-28		;74dc	30 e2 	0 . 
	call 07844h		;74de	cd 44 78 	. D x 
	ld a,(0814ah)		;74e1	3a 4a 81 	: J . 
	cp 00dh		;74e4	fe 0d 	. . 
	jr z,$+9		;74e6	28 07 	( . 
	cp 020h		;74e8	fe 20 	.   
	jr nc,$+3		;74ea	30 01 	0 . 
	xor a			;74ec	af 	. 
	ld (de),a			;74ed	12 	. 
	inc de			;74ee	13 	. 
	call 07810h		;74ef	cd 10 78 	. . x 
	jr nc,$-3		;74f2	30 fb 	0 . 
	ld a,(08344h)		;74f4	3a 44 83 	: D . 
	cp 060h		;74f7	fe 60 	. ` 
	jr z,$-57		;74f9	28 c5 	( . 
	push af			;74fb	f5 	. 
	ld a,000h		;74fc	3e 00 	> . 
	ld (08359h),a		;74fe	32 59 83 	2 Y . 
	pop af			;7501	f1 	. 
	ret			;7502	c9 	. 
	cp 02bh		;7503	fe 2b 	. + 
	jr z,$+72		;7505	28 46 	( F 
	cp 00bh		;7507	fe 0b 	. . 
	jr z,$+68		;7509	28 42 	( B 
	cp 00ah		;750b	fe 0a 	. . 
	jr z,$+7		;750d	28 05 	( . 
	cp 02dh		;750f	fe 2d 	. - 
	jp nz,073c0h		;7511	c2 c0 73 	. . s 
	call 074bdh		;7514	cd bd 74 	. . t 
	jp nz,073c0h		;7517	c2 c0 73 	. . s 
	push hl			;751a	e5 	. 
	push de			;751b	d5 	. 
	push bc			;751c	c5 	. 
	ld hl,0e684h		;751d	21 84 e6 	! . . 
	ld de,0e665h		;7520	11 65 e6 	. e . 
	ld b,003h		;7523	06 03 	. . 
	ld a,(hl)			;7525	7e 	~ 
	dec hl			;7526	2b 	+ 
	cp 030h		;7527	fe 30 	. 0 
	jp c,07486h		;7529	da 86 74 	. . t 
	cp 03ah		;752c	fe 3a 	. : 
	jp nc,07486h		;752e	d2 86 74 	. . t 
	cp 030h		;7531	fe 30 	. 0 
	jr z,$+12		;7533	28 0a 	( . 
	dec a			;7535	3d 	= 
	ld (de),a			;7536	12 	. 
	dec de			;7537	1b 	. 
	dec b			;7538	05 	. 
	jr z,$+83		;7539	28 51 	( Q 
	ld a,(hl)			;753b	7e 	~ 
	dec hl			;753c	2b 	+ 
	jr $-7		;753d	18 f7 	. . 
	ld a,039h		;753f	3e 39 	> 9 
	ld (de),a			;7541	12 	. 
	dec de			;7542	1b 	. 
	dec b			;7543	05 	. 
	ld a,(hl)			;7544	7e 	~ 
	dec hl			;7545	2b 	+ 
	cp 030h		;7546	fe 30 	. 0 
	jr z,$-9		;7548	28 f5 	( . 
	dec a			;754a	3d 	= 
	jr $-21		;754b	18 e9 	. . 
	call 074bdh		;754d	cd bd 74 	. . t 
	jp nz,073c0h		;7550	c2 c0 73 	. . s 
	push hl			;7553	e5 	. 
	push de			;7554	d5 	. 
	push bc			;7555	c5 	. 
	ld hl,0e684h		;7556	21 84 e6 	! . . 
	ld de,0e665h		;7559	11 65 e6 	. e . 
	ld b,003h		;755c	06 03 	. . 
	ld a,(hl)			;755e	7e 	~ 
	dec hl			;755f	2b 	+ 
	cp 030h		;7560	fe 30 	. 0 
	jp c,07486h		;7562	da 86 74 	. . t 
	cp 03ah		;7565	fe 3a 	. : 
	jp nc,07486h		;7567	d2 86 74 	. . t 
	cp 039h		;756a	fe 39 	. 9 
	jr z,$+12		;756c	28 0a 	( . 
	inc a			;756e	3c 	< 
	ld (de),a			;756f	12 	. 
	dec de			;7570	1b 	. 
	dec b			;7571	05 	. 
	jr z,$+26		;7572	28 18 	( . 
	ld a,(hl)			;7574	7e 	~ 
	dec hl			;7575	2b 	+ 
	jr $-7		;7576	18 f7 	. . 
	ld a,030h		;7578	3e 30 	> 0 
	ld (de),a			;757a	12 	. 
	dec de			;757b	1b 	. 
	dec b			;757c	05 	. 
	ld a,(hl)			;757d	7e 	~ 
	dec hl			;757e	2b 	+ 
	cp 039h		;757f	fe 39 	. 9 
	jr z,$-9		;7581	28 f5 	( . 
	inc a			;7583	3c 	< 
	jr $-21		;7584	18 e9 	. . 
	pop bc			;7586	c1 	. 
	pop de			;7587	d1 	. 
	pop hl			;7588	e1 	. 
	jp 073c0h		;7589	c3 c0 73 	. . s 
	ld hl,0e663h		;758c	21 63 e6 	! c . 
	ld b,003h		;758f	06 03 	. . 
	push bc			;7591	c5 	. 
	ld a,(hl)			;7592	7e 	~ 
	inc hl			;7593	23 	# 
	call 07844h		;7594	cd 44 78 	. D x 
	call 07816h		;7597	cd 16 78 	. . x 
	jr nc,$-3		;759a	30 fb 	0 . 
	ld a,(08344h)		;759c	3a 44 83 	: D . 
	cp 060h		;759f	fe 60 	. ` 
	jr nz,$+7		;75a1	20 05 	  . 
	pop bc			;75a3	c1 	. 
	djnz $-19		;75a4	10 eb 	. . 
	jr $-32		;75a6	18 de 	. . 
	pop bc			;75a8	c1 	. 
	pop hl			;75a9	e1 	. 
	pop de			;75aa	d1 	. 
	pop bc			;75ab	c1 	. 
	jp 073fbh		;75ac	c3 fb 73 	. . s 
	call 07249h		;75af	cd 49 72 	. I r 
	ld de,0e663h		;75b2	11 63 e6 	. c . 
	ld a,087h		;75b5	3e 87 	> . 
	ld (de),a			;75b7	12 	. 
	ld (081b1h),de		;75b8	ed 53 b1 81 	. S . . 
	ret			;75bc	c9 	. 
	push bc			;75bd	c5 	. 
	push hl			;75be	e5 	. 
	push de			;75bf	d5 	. 
	ld b,003h		;75c0	06 03 	. . 
	ld hl,0e663h		;75c2	21 63 e6 	! c . 
	ld a,(hl)			;75c5	7e 	~ 
	inc hl			;75c6	23 	# 
	cp 020h		;75c7	fe 20 	.   
	jr z,$+6		;75c9	28 04 	( . 
	cp 087h		;75cb	fe 87 	. . 
	jr nz,$+4		;75cd	20 02 	  . 
	djnz $-10		;75cf	10 f4 	. . 
	pop de			;75d1	d1 	. 
	pop hl			;75d2	e1 	. 
	pop bc			;75d3	c1 	. 
	ret			;75d4	c9 	. 
	ld a,000h		;75d5	3e 00 	> . 
	ld (08379h),a		;75d7	32 79 83 	2 y . 
	ld a,(08378h)		;75da	3a 78 83 	: x . 
	or a			;75dd	b7 	. 
	jp nz,0752bh		;75de	c2 2b 75 	. + u 
	call 07710h		;75e1	cd 10 77 	. . w 
	ld a,04ch		;75e4	3e 4c 	> L 
	call 07844h		;75e6	cd 44 78 	. D x 
	ld hl,0708ch		;75e9	21 8c 70 	! . p 
	call 074afh		;75ec	cd af 74 	. . t 
	call 073c0h		;75ef	cd c0 73 	. . s 
	cp 05ch		;75f2	fe 5c 	. \ 
	jr z,$+23		;75f4	28 15 	( . 
	cp 065h		;75f6	fe 65 	. e 
	jr z,$+34		;75f8	28 20 	(   
	cp 03eh		;75fa	fe 3e 	. > 
	jp z,07522h		;75fc	ca 22 75 	. " u 
	cp 021h		;75ff	fe 21 	. ! 
	jr nz,$-18		;7601	20 ec 	  . 
	ld hl,0704dh		;7603	21 4d 70 	! M p 
	call 0723eh		;7606	cd 3e 72 	. > r 
	jr $+28		;7609	18 1a 	. . 
	ld hl,0708ch		;760b	21 8c 70 	! . p 
	call 074afh		;760e	cd af 74 	. . t 
	ld a,(0814ah)		;7611	3a 4a 81 	: J . 
	call 073deh		;7614	cd de 73 	. . s 
	jp 074f2h		;7617	c3 f2 74 	. . t 
	ld hl,07054h		;761a	21 54 70 	! T p 
	call 0723eh		;761d	cd 3e 72 	. > r 
	jr $+5		;7620	18 03 	. . 
	call 07304h		;7622	cd 04 73 	. . s 
	call 07252h		;7625	cd 52 72 	. R r 
	call 07718h		;7628	cd 18 77 	. . w 
	ret			;762b	c9 	. 
	ld a,(0810fh)		;762c	3a 0f 81 	: . . 
	cp 001h		;762f	fe 01 	. . 
	jp z,0753ch		;7631	ca 3c 75 	. < u 
	ld a,(08117h)		;7634	3a 17 81 	: . . 
	cp 001h		;7637	fe 01 	. . 
	jp z,075b2h		;7639	ca b2 75 	. . u 
	ld a,(08378h)		;763c	3a 78 83 	: x . 
	or a			;763f	b7 	. 
	jp nz,075b2h		;7640	c2 b2 75 	. . u 
	call 07710h		;7643	cd 10 77 	. . w 
	ld a,044h		;7646	3e 44 	> D 
	call 07844h		;7648	cd 44 78 	. D x 
	ld hl,0837ah		;764b	21 7a 83 	! z . 
	call 075b3h		;764e	cd b3 75 	. . u 
	jr nc,$+12		;7651	30 0a 	0 . 
	rld		;7653	ed 6f 	. o 
	call 075b3h		;7655	cd b3 75 	. . u 
	rld		;7658	ed 6f 	. o 
	inc hl			;765a	23 	# 
	jr $-13		;765b	18 f1 	. . 
	ld (hl),a			;765d	77 	w 
	call 075b3h		;765e	cd b3 75 	. . u 
	sub 037h		;7661	d6 37 	. 7 
	ld (0834ah),a		;7663	32 4a 83 	2 J . 
	ld de,07628h		;7666	11 28 76 	. ( v 
	call 00c85h		;7669	cd 85 0c 	. . . 
	ld bc,00003h		;766c	01 03 00 	. . . 
	ld hl,07043h		;766f	21 43 70 	! C p 
	ld de,0834bh		;7672	11 4b 83 	. K . 
	ldir		;7675	ed b0 	. . 
	ld de,0e11ah		;7677	11 1a e1 	. . . 
	ld hl,0837ah		;767a	21 7a 83 	! z . 
	call 075c9h		;767d	cd c9 75 	. . u 
	call 075d5h		;7680	cd d5 75 	. . u 
	call 075cfh		;7683	cd cf 75 	. . u 
	call 075d5h		;7686	cd d5 75 	. . u 
	call 075f0h		;7689	cd f0 75 	. . u 
	ld a,028h		;768c	3e 28 	> ( 
	cp (hl)			;768e	be 	. 
	jr nz,$-18		;768f	20 ec 	  . 
	ld hl,0705bh		;7691	21 5b 70 	! [ p 
	call 07249h		;7694	cd 49 72 	. I r 
	call 070e4h		;7697	cd e4 70 	. . p 
	call 0051dh		;769a	cd 1d 05 	. . . 
	ld a,(0814ah)		;769d	3a 4a 81 	: J . 
	cp 08ch		;76a0	fe 8c 	. . 
	jr nz,$-11		;76a2	20 f3 	  . 
	ld a,029h		;76a4	3e 29 	> ) 
	call 07844h		;76a6	cd 44 78 	. D x 
	call 00c78h		;76a9	cd 78 0c 	. x . 
	call 07252h		;76ac	cd 52 72 	. R r 
	call 07718h		;76af	cd 18 77 	. . w 
	ret			;76b2	c9 	. 
	call 07816h		;76b3	cd 16 78 	. . x 
	jr nc,$-3		;76b6	30 fb 	0 . 
	ld a,(08344h)		;76b8	3a 44 83 	: D . 
	cp 028h		;76bb	fe 28 	. ( 
	jr z,$+10		;76bd	28 08 	( . 
	cp 041h		;76bf	fe 41 	. A 
	jr c,$+4		;76c1	38 02 	8 . 
	sub 007h		;76c3	d6 07 	. . 
	scf			;76c5	37 	7 
	ret			;76c6	c9 	. 
	or a			;76c7	b7 	. 
	ret			;76c8	c9 	. 
	ld a,002h		;76c9	3e 02 	> . 
	ld (0834eh),a		;76cb	32 4e 83 	2 N . 
	ret			;76ce	c9 	. 
	ld a,080h		;76cf	3e 80 	> . 
	ld (0834eh),a		;76d1	32 4e 83 	2 N . 
	ret			;76d4	c9 	. 
	ld a,(0834eh)		;76d5	3a 4e 83 	: N . 
	and (hl)			;76d8	a6 	. 
	jr z,$+6		;76d9	28 04 	( . 
	ld a,031h		;76db	3e 31 	> 1 
	jr $+4		;76dd	18 02 	. . 
	ld a,030h		;76df	3e 30 	> 0 
	ld (de),a			;76e1	12 	. 
	dec de			;76e2	1b 	. 
	dec de			;76e3	1b 	. 
	ld a,(0834eh)		;76e4	3a 4e 83 	: N . 
	srl a		;76e7	cb 3f 	. ? 
	ld (0834eh),a		;76e9	32 4e 83 	2 N . 
	jr nc,$-23		;76ec	30 e7 	0 . 
	inc hl			;76ee	23 	# 
	ret			;76ef	c9 	. 
	push hl			;76f0	e5 	. 
	call 0760eh		;76f1	cd 0e 76 	. . v 
	ld hl,0834ah		;76f4	21 4a 83 	! J . 
	ld b,(hl)			;76f7	46 	F 
	ld hl,00000h		;76f8	21 00 00 	! . . 
	ex de,hl			;76fb	eb 	. 
	push hl			;76fc	e5 	. 
	inc hl			;76fd	23 	# 
	inc hl			;76fe	23 	# 
	inc hl			;76ff	23 	# 
	inc hl			;7700	23 	# 
	ld (hl),07ch		;7701	36 7c 	6 | 
	pop hl			;7703	e1 	. 
	add hl,de			;7704	19 	. 
	djnz $-9		;7705	10 f5 	. . 
	ld de,00037h		;7707	11 37 00 	. 7 . 
	add hl,de			;770a	19 	. 
	ex de,hl			;770b	eb 	. 
	pop hl			;770c	e1 	. 
	ret			;770d	c9 	. 
	ld hl,0834ch		;770e	21 4c 83 	! L . 
	inc (hl)			;7711	34 	4 
	ld a,039h		;7712	3e 39 	> 9 
	cp (hl)			;7714	be 	. 
	jr nc,$+10		;7715	30 08 	0 . 
	ld (hl),030h		;7717	36 30 	6 0 
	dec hl			;7719	2b 	+ 
	inc (hl)			;771a	34 	4 
	ld a,(hl)			;771b	7e 	~ 
	or 030h		;771c	f6 30 	. 0 
	ld (hl),a			;771e	77 	w 
	ld bc,00003h		;771f	01 03 00 	. . . 
	ld hl,0834dh		;7722	21 4d 83 	! M . 
	lddr		;7725	ed b8 	. . 
	ret			;7727	c9 	. 
	ld a,(bc)			;7728	0a 	. 
	ld a,(bc)			;7729	0a 	. 
	ld a,(bc)			;772a	0a 	. 
	jr nz,$+34		;772b	20 20 	    
	jr nz,$+34		;772d	20 20 	    
	jr nz,$+34		;772f	20 20 	    
	jr nz,$+34		;7731	20 20 	    
	jr nz,$+34		;7733	20 20 	    
	jr nz,$+34		;7735	20 20 	    
	jr nz,$+34		;7737	20 20 	    
	jr nz,$+34		;7739	20 20 	    
	jr nz,$+34		;773b	20 20 	    
	jr nz,$+34		;773d	20 20 	    
	jr nz,$+34		;773f	20 20 	    
	jr nc,$+47		;7741	30 2d 	0 - 
	ld b,l			;7743	45 	E 
	ld c,l			;7744	4d 	M 
	ld d,b			;7745	50 	P 
	ld d,h			;7746	54 	T 
	ld e,c			;7747	59 	Y 
	ld a,(bc)			;7748	0a 	. 
	jr nz,$+34		;7749	20 20 	    
	jr nz,$+34		;774b	20 20 	    
	jr nz,$+34		;774d	20 20 	    
	jr nz,$+34		;774f	20 20 	    
	jr nz,$+34		;7751	20 20 	    
	jr nz,$+34		;7753	20 20 	    
	jr nz,$+34		;7755	20 20 	    
	jr nz,$+34		;7757	20 20 	    
	jr nz,$+34		;7759	20 20 	    
	jr nz,$+34		;775b	20 20 	    
	jr nz,$+34		;775d	20 20 	    
	ld sp,0532dh		;775f	31 2d 53 	1 - S 
	ld b,l			;7762	45 	E 
	ld d,h			;7763	54 	T 
	ld a,(bc)			;7764	0a 	. 
	ld a,(bc)			;7765	0a 	. 
	jr nz,$+34		;7766	20 20 	    
	jr nz,$+34		;7768	20 20 	    
	jr nz,$+34		;776a	20 20 	    
	jr nz,$+126		;776c	20 7c 	  | 
	jr nc,$+34		;776e	30 20 	0   
	ld sp,03220h		;7770	31 20 32 	1   2 
	jr nz,$+53		;7773	20 33 	  3 
	jr nz,$+54		;7775	20 34 	  4 
	jr nz,$+55		;7777	20 35 	  5 
	jr nz,$+56		;7779	20 36 	  6 
	jr nz,$+57		;777b	20 37 	  7 
	jr nz,$+58		;777d	20 38 	  8 
	jr nz,$+59		;777f	20 39 	  9 
	ld a,(bc)			;7781	0a 	. 
	jr nz,$+34		;7782	20 20 	    
	jr nz,$+34		;7784	20 20 	    
	ld a,(hl)			;7786	7e 	~ 
	ld a,(hl)			;7787	7e 	~ 
	ld a,(hl)			;7788	7e 	~ 
	ld a,h			;7789	7c 	| 
	ld a,(hl)			;778a	7e 	~ 
	ld a,(hl)			;778b	7e 	~ 
	ld a,(hl)			;778c	7e 	~ 
	ld a,(hl)			;778d	7e 	~ 
	ld a,(hl)			;778e	7e 	~ 
	ld a,(hl)			;778f	7e 	~ 
	ld a,(hl)			;7790	7e 	~ 
	ld a,(hl)			;7791	7e 	~ 
	ld a,(hl)			;7792	7e 	~ 
	ld a,(hl)			;7793	7e 	~ 
	ld a,(hl)			;7794	7e 	~ 
	ld a,(hl)			;7795	7e 	~ 
	ld a,(hl)			;7796	7e 	~ 
	ld a,(hl)			;7797	7e 	~ 
	ld a,(hl)			;7798	7e 	~ 
	ld a,(hl)			;7799	7e 	~ 
	ld a,(hl)			;779a	7e 	~ 
	ld a,(hl)			;779b	7e 	~ 
	ld a,(hl)			;779c	7e 	~ 
	dec c			;779d	0d 	. 
	ld a,(08378h)		;779e	3a 78 83 	: x . 
	or a			;77a1	b7 	. 
	jp nz,076c6h		;77a2	c2 c6 76 	. . v 
	ld a,(0835ah)		;77a5	3a 5a 83 	: Z . 
	or a			;77a8	b7 	. 
	jr nz,$+21		;77a9	20 13 	  . 
	call 07710h		;77ab	cd 10 77 	. . w 
	ld hl,07093h		;77ae	21 93 70 	! . p 
	call 07249h		;77b1	cd 49 72 	. I r 
	call 070e4h		;77b4	cd e4 70 	. . p 
	ld a,001h		;77b7	3e 01 	> . 
	ld (0835ah),a		;77b9	32 5a 83 	2 Z . 
	jr $+10		;77bc	18 08 	. . 
	ld a,000h		;77be	3e 00 	> . 
	ld (0835ah),a		;77c0	32 5a 83 	2 Z . 
	call 07252h		;77c3	cd 52 72 	. R r 
	ret			;77c6	c9 	. 
	push af			;77c7	f5 	. 
	ld hl,07093h		;77c8	21 93 70 	! . p 
	call 07249h		;77cb	cd 49 72 	. I r 
	call 07710h		;77ce	cd 10 77 	. . w 
	call 070e4h		;77d1	cd e4 70 	. . p 
	ld a,046h		;77d4	3e 46 	> F 
	call 07844h		;77d6	cd 44 78 	. D x 
	pop af			;77d9	f1 	. 
	call 07844h		;77da	cd 44 78 	. D x 
	call 0782fh		;77dd	cd 2f 78 	. / x 
	jp 020c7h		;77e0	c3 c7 20 	. .   
	call 070e4h		;77e3	cd e4 70 	. . p 
	ld a,041h		;77e6	3e 41 	> A 
	call 07844h		;77e8	cd 44 78 	. D x 
	call 07816h		;77eb	cd 16 78 	. . x 
	ld a,(08344h)		;77ee	3a 44 83 	: D . 
	cp 023h		;77f1	fe 23 	. # 
	jr z,$+17		;77f3	28 0f 	( . 
	cp 03eh		;77f5	fe 3e 	. > 
	jr nz,$-12		;77f7	20 f2 	  . 
	call 07252h		;77f9	cd 52 72 	. R r 
	call 07718h		;77fc	cd 18 77 	. . w 
	xor a			;77ff	af 	. 
	ld (08356h),a		;7800	32 56 83 	2 V . 
	ret			;7803	c9 	. 
	ld hl,07062h		;7804	21 62 70 	! b p 
	call 07249h		;7807	cd 49 72 	. I r 
	ld a,001h		;780a	3e 01 	> . 
	ld (08356h),a		;780c	32 56 83 	2 V . 
	ret			;780f	c9 	. 
	ld a,(08356h)		;7810	3a 56 83 	: V . 
	or a			;7813	b7 	. 
	call nz,076e3h		;7814	c4 e3 76 	. . v 
	ret			;7817	c9 	. 
	ld a,(0835ah)		;7818	3a 5a 83 	: Z . 
	or a			;781b	b7 	. 
	jr z,$+8		;781c	28 06 	( . 
	ld hl,07093h		;781e	21 93 70 	! . p 
	call 07249h		;7821	cd 49 72 	. I r 
	ret			;7824	c9 	. 
	ld a,(0822eh)		;7825	3a 2e 82 	: . . 
	or a			;7828	b7 	. 
	ret z			;7829	c8 	. 
	ld a,(08356h)		;782a	3a 56 83 	: V . 
	or a			;782d	b7 	. 
	ret nz			;782e	c0 	. 
	call 070e4h		;782f	cd e4 70 	. . p 
	ld a,04dh		;7832	3e 4d 	> M 
	call 07844h		;7834	cd 44 78 	. D x 
	ld b,006h		;7837	06 06 	. . 
	ld hl,08166h		;7839	21 66 81 	! f . 
	call 07753h		;783c	cd 53 77 	. S w 
	ld b,002h		;783f	06 02 	. . 
	ld hl,08164h		;7841	21 64 81 	! d . 
	call 07753h		;7844	cd 53 77 	. S w 
	call 07816h		;7847	cd 16 78 	. . x 
	cp 03eh		;784a	fe 3e 	. > 
	jr nz,$-5		;784c	20 f9 	  . 
	xor a			;784e	af 	. 
	ld (0825fh),a		;784f	32 5f 82 	2 _ . 
	ret			;7852	c9 	. 
	ld a,(hl)			;7853	7e 	~ 
	call 07844h		;7854	cd 44 78 	. D x 
	inc hl			;7857	23 	# 
	djnz $-5		;7858	10 f9 	. . 
	ret			;785a	c9 	. 
	push af			;785b	f5 	. 
	ld hl,08353h		;785c	21 53 83 	! S . 
	ld (hl),a			;785f	77 	w 
	inc hl			;7860	23 	# 
	call 07816h		;7861	cd 16 78 	. . x 
	ld a,(08344h)		;7864	3a 44 83 	: D . 
	cp 03eh		;7867	fe 3e 	. > 
	jr nz,$-10		;7869	20 f4 	  . 
	ld a,(08353h)		;786b	3a 53 83 	: S . 
	cp 049h		;786e	fe 49 	. I 
	jr nz,$+53		;7870	20 33 	  3 
	ld a,(08355h)		;7872	3a 55 83 	: U . 
	cp 031h		;7875	fe 31 	. 1 
	jr z,$+29		;7877	28 1b 	( . 
	cp 033h		;7879	fe 33 	. 3 
	jr z,$+18		;787b	28 10 	( . 
	call 07252h		;787d	cd 52 72 	. R r 
	ld a,000h		;7880	3e 00 	> . 
	ld (08378h),a		;7882	32 78 83 	2 x . 
	call 0797ch		;7885	cd 7c 79 	. | y 
	call 0713ch		;7888	cd 3c 71 	. < q 
	pop af			;788b	f1 	. 
	ret			;788c	c9 	. 
	ld a,001h		;788d	3e 01 	> . 
	ld (08358h),a		;788f	32 58 83 	2 X . 
	jr $-7		;7892	18 f7 	. . 
	ld hl,07069h		;7894	21 69 70 	! i p 
	call 07249h		;7897	cd 49 72 	. I r 
	ld a,001h		;789a	3e 01 	> . 
	ld (08378h),a		;789c	32 78 83 	2 x . 
	xor a			;789f	af 	. 
	ld (0822eh),a		;78a0	32 2e 82 	2 . . 
	jr $-24		;78a3	18 e6 	. . 
	cp 046h		;78a5	fe 46 	. F 
	jp z,077bfh		;78a7	ca bf 77 	. . w 
	cp 045h		;78aa	fe 45 	. E 
	jr nz,$-36		;78ac	20 da 	  . 
	ld a,(08354h)		;78ae	3a 54 83 	: T . 
	cp 034h		;78b1	fe 34 	. 4 
	jr nz,$+30		;78b3	20 1c 	  . 
	ld a,(08355h)		;78b5	3a 55 83 	: U . 
	cp 030h		;78b8	fe 30 	. 0 
	call z,07252h		;78ba	cc 52 72 	. R r 
	jr $-53		;78bd	18 c9 	. . 
	ld a,(08232h)		;78bf	3a 32 82 	: 2 . 
	or a			;78c2	b7 	. 
	jp z,07788h		;78c3	ca 88 77 	. . w 
	ld a,000h		;78c6	3e 00 	> . 
	ld (08232h),a		;78c8	32 32 82 	2 2 . 
	call 0413bh		;78cb	cd 3b 41 	. ; A 
	jp 07788h		;78ce	c3 88 77 	. . w 
	cp 033h		;78d1	fe 33 	. 3 
	jp nz,07788h		;78d3	c2 88 77 	. . w 
	ld a,(08355h)		;78d6	3a 55 83 	: U . 
	cp 030h		;78d9	fe 30 	. 0 
	jp nz,07788h		;78db	c2 88 77 	. . w 
	call 04121h		;78de	cd 21 41 	. ! A 
	ld hl,07230h		;78e1	21 30 72 	! 0 r 
	call 04155h		;78e4	cd 55 41 	. U A 
	ld a,001h		;78e7	3e 01 	> . 
	ld (08232h),a		;78e9	32 32 82 	2 2 . 
	jp 07788h		;78ec	c3 88 77 	. . w 
	ld a,050h		;78ef	3e 50 	> P 
	call 07844h		;78f1	cd 44 78 	. D x 
	ld b,004h		;78f4	06 04 	. . 
	ld hl,0834fh		;78f6	21 4f 83 	! O . 
	call 07803h		;78f9	cd 03 78 	. . x 
	call 07803h		;78fc	cd 03 78 	. . x 
	inc hl			;78ff	23 	# 
	djnz $-7		;7900	10 f7 	. . 
	ret			;7902	c9 	. 
	call 07816h		;7903	cd 16 78 	. . x 
	ld a,(08344h)		;7906	3a 44 83 	: D . 
	cp 0ffh		;7909	fe ff 	. . 
	jr z,$-8		;790b	28 f6 	( . 
	rld		;790d	ed 6f 	. o 
	ret			;790f	c9 	. 
	push bc			;7910	c5 	. 
	ld bc,00064h		;7911	01 64 00 	. d . 
	jr $+6		;7914	18 04 	. . 
	push bc			;7916	c5 	. 
	ld bc,007d0h		;7917	01 d0 07 	. . . 
	call 07826h		;791a	cd 26 78 	. & x 
	jr c,$+7		;791d	38 05 	8 . 
	dec bc			;791f	0b 	. 
	ld a,b			;7920	78 	x 
	or c			;7921	b1 	. 
	jr nz,$-8		;7922	20 f6 	  . 
	pop bc			;7924	c1 	. 
	ret			;7925	c9 	. 
	ld a,0f4h		;7926	3e f4 	> . 
	dec a			;7928	3d 	= 
	jr nz,$-1		;7929	20 fd 	  . 
	call 0782fh		;792b	cd 2f 78 	. / x 
	ret			;792e	c9 	. 
	ld a,0ffh		;792f	3e ff 	> . 
	ld (08344h),a		;7931	32 44 83 	2 D . 
	in a,(053h)		;7934	db 53 	. S 
	rra			;7936	1f 	. 
	jr nc,$+12		;7937	30 0a 	0 . 
	in a,(051h)		;7939	db 51 	. Q 
	out (051h),a		;793b	d3 51 	. Q 
	and 07fh		;793d	e6 7f 	.  
	ld (08344h),a		;793f	32 44 83 	2 D . 
	scf			;7942	37 	7 
	ret			;7943	c9 	. 
	push bc			;7944	c5 	. 
	ld b,0ffh		;7945	06 ff 	. . 
	ld c,a			;7947	4f 	O 
	in a,(053h)		;7948	db 53 	. S 
	and 004h		;794a	e6 04 	. . 
	jr z,$-4		;794c	28 fa 	( . 
	ld a,c			;794e	79 	y 
	out (051h),a		;794f	d3 51 	. Q 
	in a,(053h)		;7951	db 53 	. S 
	rra			;7953	1f 	. 
	jr nc,$+15		;7954	30 0d 	0 . 
	in a,(051h)		;7956	db 51 	. Q 
	cp c			;7958	b9 	. 
	jr nz,$+5		;7959	20 03 	  . 
	or a			;795b	b7 	. 
	pop bc			;795c	c1 	. 
	ret			;795d	c9 	. 
	ld a,001h		;795e	3e 01 	> . 
	ld (0a7f9h),a		;7960	32 f9 a7 	2 . . 
	push bc			;7963	c5 	. 
	ld b,001h		;7964	06 01 	. . 
	call 0796fh		;7966	cd 6f 79 	. o y 
	pop bc			;7969	c1 	. 
	djnz $-25		;796a	10 e5 	. . 
	ld a,001h		;796c	3e 01 	> . 
	ld (0a7fch),a		;796e	32 fc a7 	2 . . 
	jr $-21		;7971	18 e9 	. . 
	ld a,(0822eh)		;7973	3a 2e 82 	: . . 
	or a			;7976	b7 	. 
	ret z			;7977	c8 	. 
	in a,(089h)		;7978	db 89 	. . 
	rra			;797a	1f 	. 
	jr c,$+34		;797b	38 20 	8   
	ld a,(08260h)		;797d	3a 60 82 	: ` . 
	or a			;7980	b7 	. 
	jr nz,$+27		;7981	20 19 	  . 
	inc a			;7983	3c 	< 
	ld (08260h),a		;7984	32 60 82 	2 ` . 
	ld a,04ch		;7987	3e 4c 	> L 
	call 07844h		;7989	cd 44 78 	. D x 
	ld a,032h		;798c	3e 32 	> 2 
	call 07844h		;798e	cd 44 78 	. D x 
	call 07816h		;7991	cd 16 78 	. . x 
	ld a,00dh		;7994	3e 0d 	> . 
	call 07844h		;7996	cd 44 78 	. D x 
	call 07816h		;7999	cd 16 78 	. . x 
	ret			;799c	c9 	. 
	xor a			;799d	af 	. 
	ld (08260h),a		;799e	32 60 82 	2 ` . 
	jr $-5		;79a1	18 f9 	. . 
	ld de,079eah		;79a3	11 ea 79 	. . y 
	call 00c92h		;79a6	cd 92 0c 	. . . 
	ld de,0e2e2h		;79a9	11 e2 e2 	. . . 
	ld (0e670h),de		;79ac	ed 53 70 e6 	. S p . 
	call 070e4h		;79b0	cd e4 70 	. . p 
	call c,078d6h		;79b3	dc d6 78 	. . x 
	call 0051dh		;79b6	cd 1d 05 	. . . 
	ld a,(0814ah)		;79b9	3a 4a 81 	: J . 
	cp 0ffh		;79bc	fe ff 	. . 
	jr z,$-14		;79be	28 f0 	( . 
	cp 080h		;79c0	fe 80 	. . 
	jp nc,0794ah		;79c2	d2 4a 79 	. J y 
	cp 00dh		;79c5	fe 0d 	. . 
	jp z,07918h		;79c7	ca 18 79 	. . y 
	cp 01ch		;79ca	fe 1c 	. . 
	jp z,07939h		;79cc	ca 39 79 	. 9 y 
	ld (de),a			;79cf	12 	. 
	inc de			;79d0	13 	. 
	ld a,087h		;79d1	3e 87 	> . 
	ld (de),a			;79d3	12 	. 
	jr $-36		;79d4	18 da 	. . 
	push de			;79d6	d5 	. 
	ld hl,(0e670h)		;79d7	2a 70 e6 	* p . 
	ld de,00040h		;79da	11 40 00 	. @ . 
	add hl,de			;79dd	19 	. 
	ex de,hl			;79de	eb 	. 
	ld hl,0834fh		;79df	21 4f 83 	! O . 
	ld b,004h		;79e2	06 04 	. . 
	call 07901h		;79e4	cd 01 79 	. . y 
	inc de			;79e7	13 	. 
	ld b,003h		;79e8	06 03 	. . 
	ld hl,08353h		;79ea	21 53 83 	! S . 
	ld a,(hl)			;79ed	7e 	~ 
	or a			;79ee	b7 	. 
	jr nz,$+4		;79ef	20 02 	  . 
	or 030h		;79f1	f6 30 	. 0 
	ld (de),a			;79f3	12 	. 
	inc de			;79f4	13 	. 
	inc hl			;79f5	23 	# 
	djnz $-9		;79f6	10 f5 	. . 
	inc de			;79f8	13 	. 
	ld a,(0822eh)		;79f9	3a 2e 82 	: . . 
	or 030h		;79fc	f6 30 	. 0 
	ld (de),a			;79fe	12 	. 
	pop de			;79ff	d1 	. 
	ret			;7a00	c9 	. 
	call 0790bh		;7a01	cd 0b 79 	. . y 
	call 0790bh		;7a04	cd 0b 79 	. . y 
	inc hl			;7a07	23 	# 
	djnz $-7		;7a08	10 f7 	. . 
	ret			;7a0a	c9 	. 
	ld a,030h		;7a0b	3e 30 	> 0 
	rld		;7a0d	ed 6f 	. o 
	cp 03ah		;7a0f	fe 3a 	. : 
	jr c,$+4		;7a11	38 02 	8 . 
	add a,007h		;7a13	c6 07 	. . 
	ld (de),a			;7a15	12 	. 
	inc de			;7a16	13 	. 
	ret			;7a17	c9 	. 
	ld (de),a			;7a18	12 	. 
	ld de,(0e670h)		;7a19	ed 5b 70 e6 	. [ p . 
	push de			;7a1d	d5 	. 
	pop ix		;7a1e	dd e1 	. . 
	ld a,(de)			;7a20	1a 	. 
	cp 00dh		;7a21	fe 0d 	. . 
	push af			;7a23	f5 	. 
	call 07844h		;7a24	cd 44 78 	. D x 
	ld (ix+020h),a		;7a27	dd 77 20 	. w   
	pop af			;7a2a	f1 	. 
	push af			;7a2b	f5 	. 
	call z,078d6h		;7a2c	cc d6 78 	. . x 
	inc de			;7a2f	13 	. 
	inc ix		;7a30	dd 23 	. # 
	pop af			;7a32	f1 	. 
	jr nz,$-19		;7a33	20 eb 	  . 
	dec de			;7a35	1b 	. 
	jp 078d1h		;7a36	c3 d1 78 	. . x 
	ld hl,(0e670h)		;7a39	2a 70 e6 	* p . 
	push hl			;7a3c	e5 	. 
	pop de			;7a3d	d1 	. 
	ld b,040h		;7a3e	06 40 	. @ 
	ld (hl),000h		;7a40	36 00 	6 . 
	inc hl			;7a42	23 	# 
	djnz $-3		;7a43	10 fb 	. . 
	ld a,03fh		;7a45	3e 3f 	> ? 
	jp 078d3h		;7a47	c3 d3 78 	. . x 
	ex de,hl			;7a4a	eb 	. 
	ld (hl),087h		;7a4b	36 87 	6 . 
	cp 082h		;7a4d	fe 82 	. . 
	jr z,$+12		;7a4f	28 0a 	( . 
	cp 083h		;7a51	fe 83 	. . 
	jr z,$+17		;7a53	28 0f 	( . 
	call 070abh		;7a55	cd ab 70 	. . p 
	jp 078a9h		;7a58	c3 a9 78 	. . x 
	call 077efh		;7a5b	cd ef 77 	. . w 
	call 078d6h		;7a5e	cd d6 78 	. . x 
	jp 078a9h		;7a61	c3 a9 78 	. . x 
	ld a,001h		;7a64	3e 01 	> . 
	ld (0822eh),a		;7a66	32 2e 82 	2 . . 
	call 078d6h		;7a69	cd d6 78 	. . x 
	jp 078a9h		;7a6c	c3 a9 78 	. . x 
	push de			;7a6f	d5 	. 
	ld de,00600h		;7a70	11 00 06 	. . . 
	dec de			;7a73	1b 	. 
	ld a,d			;7a74	7a 	z 
	or e			;7a75	b3 	. 
	jr nz,$-3		;7a76	20 fb 	  . 
	djnz $-8		;7a78	10 f6 	. . 
	pop de			;7a7a	d1 	. 
	ret			;7a7b	c9 	. 
	ld a,06ch		;7a7c	3e 6c 	> l 
	call 07844h		;7a7e	cd 44 78 	. D x 
	ld b,033h		;7a81	06 33 	. 3 
	ld hl,0a47bh		;7a83	21 7b a4 	! { . 
	call 079b2h		;7a86	cd b2 79 	. . y 
	ld a,073h		;7a89	3e 73 	> s 
	call 07844h		;7a8b	cd 44 78 	. D x 
	ld b,024h		;7a8e	06 24 	. $ 
	ld hl,0a4c7h		;7a90	21 c7 a4 	! . . 
	call 079ddh		;7a93	cd dd 79 	. . y 
	ld a,074h		;7a96	3e 74 	> t 
	call 07844h		;7a98	cd 44 78 	. D x 
	ld b,024h		;7a9b	06 24 	. $ 
	ld hl,0a4ebh		;7a9d	21 eb a4 	! . . 
	call 079ddh		;7aa0	cd dd 79 	. . y 
	ret			;7aa3	c9 	. 
	ld a,06ch		;7aa4	3e 6c 	> l 
	call 07844h		;7aa6	cd 44 78 	. D x 
	ld b,033h		;7aa9	06 33 	. 3 
	ld hl,0a47bh		;7aab	21 7b a4 	! { . 
	call 079b2h		;7aae	cd b2 79 	. . y 
	ret			;7ab1	c9 	. 
	push bc			;7ab2	c5 	. 
	push hl			;7ab3	e5 	. 
	ld a,02fh		;7ab4	3e 2f 	> / 
	cp (hl)			;7ab6	be 	. 
	jp p,079d2h		;7ab7	f2 d2 79 	. . y 
	ld a,039h		;7aba	3e 39 	> 9 
	cp (hl)			;7abc	be 	. 
	jp m,079d2h		;7abd	fa d2 79 	. . y 
	inc hl			;7ac0	23 	# 
	djnz $-13		;7ac1	10 f1 	. . 
	pop hl			;7ac3	e1 	. 
	pop bc			;7ac4	c1 	. 
	ld a,(hl)			;7ac5	7e 	~ 
	call 07844h		;7ac6	cd 44 78 	. D x 
	inc hl			;7ac9	23 	# 
	djnz $-5		;7aca	10 f9 	. . 
	call 07816h		;7acc	cd 16 78 	. . x 
	jr nc,$-3		;7acf	30 fb 	0 . 
	ret			;7ad1	c9 	. 
	pop hl			;7ad2	e1 	. 
	pop bc			;7ad3	c1 	. 
	ld a,030h		;7ad4	3e 30 	> 0 
	call 07844h		;7ad6	cd 44 78 	. D x 
	djnz $-5		;7ad9	10 f9 	. . 
	jr $-15		;7adb	18 ef 	. . 
	ld a,(hl)			;7add	7e 	~ 
	call 07844h		;7ade	cd 44 78 	. D x 
	inc hl			;7ae1	23 	# 
	djnz $-5		;7ae2	10 f9 	. . 
	call 07816h		;7ae4	cd 16 78 	. . x 
	jr nc,$-3		;7ae7	30 fb 	0 . 
	ret			;7ae9	c9 	. 
	ld a,(bc)			;7aea	0a 	. 
	ld a,(bc)			;7aeb	0a 	. 
	ld a,(bc)			;7aec	0a 	. 
	ld a,(bc)			;7aed	0a 	. 
	jr nz,$+34		;7aee	20 20 	    
	ld c,l			;7af0	4d 	M 
	ld c,a			;7af1	4f 	O 
	ld d,h			;7af2	54 	T 
	ld c,a			;7af3	4f 	O 
	ld d,d			;7af4	52 	R 
	ld d,e			;7af5	53 	S 
	ld d,h			;7af6	54 	T 
	ld b,c			;7af7	41 	A 
	ld b,a			;7af8	47 	G 
	ld b,l			;7af9	45 	E 
	jr nz,$+47		;7afa	20 2d 	  - 
	jr nz,$+86		;7afc	20 54 	  T 
	jr nz,$+71		;7afe	20 45 	  E 
	jr nz,$+85		;7b00	20 53 	  S 
	jr nz,$+86		;7b02	20 54 	  T 
	ld a,(bc)			;7b04	0a 	. 
	jr nz,$+34		;7b05	20 20 	    
	ld a,(bc)			;7b07	0a 	. 
	jr nz,$+34		;7b08	20 20 	    
	ld b,c			;7b0a	41 	A 
	ld c,h			;7b0b	4c 	L 
	ld c,h			;7b0c	4c 	L 
	ld c,a			;7b0d	4f 	O 
	ld d,a			;7b0e	57 	W 
	ld b,l			;7b0f	45 	E 
	ld b,h			;7b10	44 	D 
	jr nz,$+71		;7b11	20 45 	  E 
	ld c,(hl)			;7b13	4e 	N 
	ld d,h			;7b14	54 	T 
	ld d,d			;7b15	52 	R 
	ld e,c			;7b16	59 	Y 
	ld a,(00a0ah)		;7b17	3a 0a 0a 	: . . 
	jr nz,$+34		;7b1a	20 20 	    
	ld b,(hl)			;7b1c	46 	F 
	inc sp			;7b1d	33 	3 
	ld a,(04528h)		;7b1e	3a 28 45 	: ( E 
	ld l,(hl)			;7b21	6e 	n 
	ld h,h			;7b22	64 	d 
	ld (hl),b			;7b23	70 	p 
	ld l,a			;7b24	6f 	o 
	ld (hl),e			;7b25	73 	s 
	add hl,hl			;7b26	29 	) 
	inc l			;7b27	2c 	, 
	jr nz,$+72		;7b28	20 46 	  F 
	inc (hl)			;7b2a	34 	4 
	ld a,(04628h)		;7b2b	3a 28 46 	: ( F 
	ld c,h			;7b2e	4c 	L 
	ld b,a			;7b2f	47 	G 
	ld c,b			;7b30	48 	H 
	ld d,e			;7b31	53 	S 
	ld d,h			;7b32	54 	T 
	dec a			;7b33	3d 	= 
	ld sp,00a29h		;7b34	31 29 0a 	1 ) . 
	jr nz,$+34		;7b37	20 20 	    
	ld b,(hl)			;7b39	46 	F 
	dec (hl)			;7b3a	35 	5 
	dec l			;7b3b	2d 	- 
	ld b,(hl)			;7b3c	46 	F 
	add hl,sp			;7b3d	39 	9 
	ld a,(07320h)		;7b3e	3a 20 73 	:   s 
	ld h,l			;7b41	65 	e 
	ld h,l			;7b42	65 	e 
	jr nz,$+109		;7b43	20 6b 	  k 
	ld h,l			;7b45	65 	e 
	ld a,c			;7b46	79 	y 
	ld h,d			;7b47	62 	b 
	ld l,a			;7b48	6f 	o 
	ld h,c			;7b49	61 	a 
	ld (hl),d			;7b4a	72 	r 
	ld h,h			;7b4b	64 	d 
	ld a,(bc)			;7b4c	0a 	. 
	ld a,(bc)			;7b4d	0a 	. 
	jr nz,$+34		;7b4e	20 20 	    
	ld e,b			;7b50	58 	X 
	ld e,e			;7b51	5b 	[ 
	ld (hl),02eh		;7b52	36 2e 	6 . 
	ld (02c5dh),a		;7b54	32 5d 2c 	2 ] , 
	ld e,c			;7b57	59 	Y 
	ld e,e			;7b58	5b 	[ 
	ld (hl),02eh		;7b59	36 2e 	6 . 
	ld (02c5dh),a		;7b5b	32 5d 2c 	2 ] , 
	ld e,d			;7b5e	5a 	Z 
	ld e,e			;7b5f	5b 	[ 
	dec (hl)			;7b60	35 	5 
	ld e,l			;7b61	5d 	] 
	inc l			;7b62	2c 	, 
	ld a,d			;7b63	7a 	z 
	ld e,e			;7b64	5b 	[ 
	dec (hl)			;7b65	35 	5 
	ld e,l			;7b66	5d 	] 
	ld a,(bc)			;7b67	0a 	. 
	jr nz,$+34		;7b68	20 20 	    
	ld d,d			;7b6a	52 	R 
	ld e,e			;7b6b	5b 	[ 
	inc sp			;7b6c	33 	3 
	ld l,031h		;7b6d	2e 31 	. 1 
	ld e,l			;7b6f	5d 	] 
	inc l			;7b70	2c 	, 
	ld d,h			;7b71	54 	T 
	ld e,e			;7b72	5b 	[ 
	jr z,$+45		;7b73	28 2b 	( + 
	cpl			;7b75	2f 	/ 
	dec l			;7b76	2d 	- 
	add hl,hl			;7b77	29 	) 
	ld (02c5dh),a		;7b78	32 5d 2c 	2 ] , 
	ld b,d			;7b7b	42 	B 
	ld e,e			;7b7c	5b 	[ 
	inc sp			;7b7d	33 	3 
	jr nc,$+95		;7b7e	30 5d 	0 ] 
	ld a,(bc)			;7b80	0a 	. 
	jr nz,$+34		;7b81	20 20 	    
	ld c,l			;7b83	4d 	M 
	jr z,$+111		;7b84	28 6d 	( m 
	ld h,c			;7b86	61 	a 
	ld h,a			;7b87	67 	g 
	ld e,e			;7b88	5b 	[ 
	ld (hl),05dh		;7b89	36 5d 	6 ] 
	inc l			;7b8b	2c 	, 
	ld (hl),a			;7b8c	77 	w 
	ld h,h			;7b8d	64 	d 
	ld e,e			;7b8e	5b 	[ 
	ld (0295dh),a		;7b8f	32 5d 29 	2 ] ) 
	ld a,(bc)			;7b92	0a 	. 
	ld a,(bc)			;7b93	0a 	. 
	jr nz,$+34		;7b94	20 20 	    
	ld b,a			;7b96	47 	G 
	jr z,$+116		;7b97	28 72 	( r 
	ld h,l			;7b99	65 	e 
	ld l,l			;7b9a	6d 	m 
	ld l,a			;7b9b	6f 	o 
	ld (hl),h			;7b9c	74 	t 
	ld h,l			;7b9d	65 	e 
	jr nz,$+113		;7b9e	20 6f 	  o 
	ld l,(hl)			;7ba0	6e 	n 
	add hl,hl			;7ba1	29 	) 
	inc l			;7ba2	2c 	, 
	ld c,b			;7ba3	48 	H 
	jr z,$+116		;7ba4	28 72 	( r 
	ld h,l			;7ba6	65 	e 
	ld l,l			;7ba7	6d 	m 
	ld l,a			;7ba8	6f 	o 
	ld (hl),h			;7ba9	74 	t 
	ld h,l			;7baa	65 	e 
	jr nz,$+113		;7bab	20 6f 	  o 
	ld h,(hl)			;7bad	66 	f 
	ld h,(hl)			;7bae	66 	f 
	add hl,hl			;7baf	29 	) 
	ld a,(bc)			;7bb0	0a 	. 
	jr nz,$+34		;7bb1	20 20 	    
	ld h,h			;7bb3	64 	d 
	jr z,$+93		;7bb4	28 5b 	( [ 
	ld (hl),e			;7bb6	73 	s 
	ld (hl),h			;7bb7	74 	t 
	ld h,c			;7bb8	61 	a 
	ld h,a			;7bb9	67 	g 
	ld h,l			;7bba	65 	e 
	ld e,l			;7bbb	5d 	] 
	inc l			;7bbc	2c 	, 
	ld e,e			;7bbd	5b 	[ 
	ld (hl),e			;7bbe	73 	s 
	ld (hl),h			;7bbf	74 	t 
	ld h,c			;7bc0	61 	a 
	ld h,a			;7bc1	67 	g 
	ld h,l			;7bc2	65 	e 
	jr nz,$+101		;7bc3	20 63 	  c 
	ld l,b			;7bc5	68 	h 
	ld h,c			;7bc6	61 	a 
	ld (hl),d			;7bc7	72 	r 
	ld h,c			;7bc8	61 	a 
	ld h,e			;7bc9	63 	c 
	ld (hl),h			;7bca	74 	t 
	ld h,l			;7bcb	65 	e 
	ld (hl),d			;7bcc	72 	r 
	ld e,l			;7bcd	5d 	] 
	add hl,hl			;7bce	29 	) 
	ld a,(bc)			;7bcf	0a 	. 
	ld a,(bc)			;7bd0	0a 	. 
	jr nz,$+34		;7bd1	20 20 	    
	ld (hl),a			;7bd3	77 	w 
	ld l,c			;7bd4	69 	i 
	ld (hl),h			;7bd5	74 	t 
	ld l,b			;7bd6	68 	h 
	ld a,(0200ah)		;7bd7	3a 0a 20 	: .   
	jr nz,$+72		;7bda	20 46 	  F 
	ld d,l			;7bdc	55 	U 
	ld c,(hl)			;7bdd	4e 	N 
	ld c,e			;7bde	4b 	K 
	ld d,h			;7bdf	54 	T 
	ld c,c			;7be0	49 	I 
	ld c,a			;7be1	4f 	O 
	ld c,(hl)			;7be2	4e 	N 
	ld e,e			;7be3	5b 	[ 
	ld h,e			;7be4	63 	c 
	ld l,b			;7be5	68 	h 
	ld h,c			;7be6	61 	a 
	ld (hl),d			;7be7	72 	r 
	ld h,c			;7be8	61 	a 
	ld h,e			;7be9	63 	c 
	ld (hl),h			;7bea	74 	t 
	ld h,l			;7beb	65 	e 
	ld (hl),d			;7bec	72 	r 
	ld e,l			;7bed	5d 	] 
	ld a,(bc)			;7bee	0a 	. 
	jr nz,$+34		;7bef	20 20 	    
	ld b,(hl)			;7bf1	46 	F 
	ld d,l			;7bf2	55 	U 
	ld c,(hl)			;7bf3	4e 	N 
	ld c,e			;7bf4	4b 	K 
	ld d,h			;7bf5	54 	T 
	ld c,c			;7bf6	49 	I 
	ld c,a			;7bf7	4f 	O 
	ld c,(hl)			;7bf8	4e 	N 
	jr z,$+102		;7bf9	28 64 	( d 
	ld l,c			;7bfb	69 	i 
	ld (hl),e			;7bfc	73 	s 
	ld h,e			;7bfd	63 	c 
	ld (hl),d			;7bfe	72 	r 
	ld l,c			;7bff	69 	i 
	ld (hl),b			;7c00	70 	p 
	ld (hl),h			;7c01	74 	t 
	ld l,c			;7c02	69 	i 
	ld l,a			;7c03	6f 	o 
	ld l,(hl)			;7c04	6e 	n 
	add hl,hl			;7c05	29 	) 
	ld a,(bc)			;7c06	0a 	. 
	ld a,(bc)			;7c07	0a 	. 
	jr nz,$+34		;7c08	20 20 	    
	ld b,e			;7c0a	43 	C 
	ld d,h			;7c0b	54 	T 
	ld d,d			;7c0c	52 	R 
	ld c,h			;7c0d	4c 	L 
	jr nz,$+94		;7c0e	20 5c 	  \ 
	jr nz,$+104		;7c10	20 66 	  f 
	ld l,a			;7c12	6f 	o 
	ld (hl),d			;7c13	72 	r 
	jr nz,$+112		;7c14	20 6e 	  n 
	ld h,l			;7c16	65 	e 
	ld (hl),a			;7c17	77 	w 
	jr nz,$+103		;7c18	20 65 	  e 
	ld l,(hl)			;7c1a	6e 	n 
	ld (hl),h			;7c1b	74 	t 
	ld (hl),d			;7c1c	72 	r 
	ld a,c			;7c1d	79 	y 
	dec c			;7c1e	0d 	. 
	rst 38h			;7c1f	ff 	. 
	rst 38h			;7c20	ff 	. 
	rst 38h			;7c21	ff 	. 
	rst 38h			;7c22	ff 	. 
	rst 38h			;7c23	ff 	. 
	rst 38h			;7c24	ff 	. 
	rst 38h			;7c25	ff 	. 
	rst 38h			;7c26	ff 	. 
	rst 38h			;7c27	ff 	. 
	rst 38h			;7c28	ff 	. 
	rst 38h			;7c29	ff 	. 
	rst 38h			;7c2a	ff 	. 
	rst 38h			;7c2b	ff 	. 
	rst 38h			;7c2c	ff 	. 
	rst 38h			;7c2d	ff 	. 
	rst 38h			;7c2e	ff 	. 
	rst 38h			;7c2f	ff 	. 
	rst 38h			;7c30	ff 	. 
	rst 38h			;7c31	ff 	. 
	rst 38h			;7c32	ff 	. 
	rst 38h			;7c33	ff 	. 
	rst 38h			;7c34	ff 	. 
	rst 38h			;7c35	ff 	. 
	rst 38h			;7c36	ff 	. 
	rst 38h			;7c37	ff 	. 
	rst 38h			;7c38	ff 	. 
	rst 38h			;7c39	ff 	. 
	rst 38h			;7c3a	ff 	. 
	rst 38h			;7c3b	ff 	. 
	rst 38h			;7c3c	ff 	. 
	rst 38h			;7c3d	ff 	. 
	rst 38h			;7c3e	ff 	. 
	rst 38h			;7c3f	ff 	. 
	rst 38h			;7c40	ff 	. 
	rst 38h			;7c41	ff 	. 
	rst 38h			;7c42	ff 	. 
	rst 38h			;7c43	ff 	. 
	rst 38h			;7c44	ff 	. 
	rst 38h			;7c45	ff 	. 
	rst 38h			;7c46	ff 	. 
	rst 38h			;7c47	ff 	. 
	rst 38h			;7c48	ff 	. 
	rst 38h			;7c49	ff 	. 
	rst 38h			;7c4a	ff 	. 
	rst 38h			;7c4b	ff 	. 
	rst 38h			;7c4c	ff 	. 
	rst 38h			;7c4d	ff 	. 
	rst 38h			;7c4e	ff 	. 
	rst 38h			;7c4f	ff 	. 
	rst 38h			;7c50	ff 	. 
	rst 38h			;7c51	ff 	. 
	rst 38h			;7c52	ff 	. 
	rst 38h			;7c53	ff 	. 
	rst 38h			;7c54	ff 	. 
	rst 38h			;7c55	ff 	. 
	rst 38h			;7c56	ff 	. 
	rst 38h			;7c57	ff 	. 
	rst 38h			;7c58	ff 	. 
	rst 38h			;7c59	ff 	. 
	rst 38h			;7c5a	ff 	. 
	rst 38h			;7c5b	ff 	. 
	rst 38h			;7c5c	ff 	. 
	rst 38h			;7c5d	ff 	. 
	rst 38h			;7c5e	ff 	. 
	rst 38h			;7c5f	ff 	. 
	rst 38h			;7c60	ff 	. 
	rst 38h			;7c61	ff 	. 
	rst 38h			;7c62	ff 	. 
	rst 38h			;7c63	ff 	. 
	rst 38h			;7c64	ff 	. 
	rst 38h			;7c65	ff 	. 
	rst 38h			;7c66	ff 	. 
	rst 38h			;7c67	ff 	. 
	rst 38h			;7c68	ff 	. 
	rst 38h			;7c69	ff 	. 
	rst 38h			;7c6a	ff 	. 
	rst 38h			;7c6b	ff 	. 
	rst 38h			;7c6c	ff 	. 
	rst 38h			;7c6d	ff 	. 
	rst 38h			;7c6e	ff 	. 
	rst 38h			;7c6f	ff 	. 
	rst 38h			;7c70	ff 	. 
	rst 38h			;7c71	ff 	. 
	rst 38h			;7c72	ff 	. 
	rst 38h			;7c73	ff 	. 
	rst 38h			;7c74	ff 	. 
	rst 38h			;7c75	ff 	. 
	rst 38h			;7c76	ff 	. 
	rst 38h			;7c77	ff 	. 
	rst 38h			;7c78	ff 	. 
	rst 38h			;7c79	ff 	. 
	rst 38h			;7c7a	ff 	. 
	rst 38h			;7c7b	ff 	. 
	rst 38h			;7c7c	ff 	. 
	rst 38h			;7c7d	ff 	. 
	rst 38h			;7c7e	ff 	. 
	rst 38h			;7c7f	ff 	. 
	rst 38h			;7c80	ff 	. 
	rst 38h			;7c81	ff 	. 
	rst 38h			;7c82	ff 	. 
	rst 38h			;7c83	ff 	. 
	rst 38h			;7c84	ff 	. 
	rst 38h			;7c85	ff 	. 
	rst 38h			;7c86	ff 	. 
	rst 38h			;7c87	ff 	. 
	rst 38h			;7c88	ff 	. 
	rst 38h			;7c89	ff 	. 
	rst 38h			;7c8a	ff 	. 
	rst 38h			;7c8b	ff 	. 
	rst 38h			;7c8c	ff 	. 
	rst 38h			;7c8d	ff 	. 
	rst 38h			;7c8e	ff 	. 
	rst 38h			;7c8f	ff 	. 
	rst 38h			;7c90	ff 	. 
	rst 38h			;7c91	ff 	. 
	rst 38h			;7c92	ff 	. 
	rst 38h			;7c93	ff 	. 
	rst 38h			;7c94	ff 	. 
	rst 38h			;7c95	ff 	. 
	rst 38h			;7c96	ff 	. 
	rst 38h			;7c97	ff 	. 
	rst 38h			;7c98	ff 	. 
	rst 38h			;7c99	ff 	. 
	rst 38h			;7c9a	ff 	. 
	rst 38h			;7c9b	ff 	. 
	rst 38h			;7c9c	ff 	. 
	rst 38h			;7c9d	ff 	. 
	rst 38h			;7c9e	ff 	. 
	rst 38h			;7c9f	ff 	. 
	rst 38h			;7ca0	ff 	. 
	rst 38h			;7ca1	ff 	. 
	rst 38h			;7ca2	ff 	. 
	rst 38h			;7ca3	ff 	. 
	rst 38h			;7ca4	ff 	. 
	rst 38h			;7ca5	ff 	. 
	rst 38h			;7ca6	ff 	. 
	rst 38h			;7ca7	ff 	. 
	rst 38h			;7ca8	ff 	. 
	rst 38h			;7ca9	ff 	. 
	rst 38h			;7caa	ff 	. 
	rst 38h			;7cab	ff 	. 
	rst 38h			;7cac	ff 	. 
	rst 38h			;7cad	ff 	. 
	rst 38h			;7cae	ff 	. 
	rst 38h			;7caf	ff 	. 
	rst 38h			;7cb0	ff 	. 
	rst 38h			;7cb1	ff 	. 
	rst 38h			;7cb2	ff 	. 
	rst 38h			;7cb3	ff 	. 
	rst 38h			;7cb4	ff 	. 
	rst 38h			;7cb5	ff 	. 
	rst 38h			;7cb6	ff 	. 
	rst 38h			;7cb7	ff 	. 
	rst 38h			;7cb8	ff 	. 
	rst 38h			;7cb9	ff 	. 
	rst 38h			;7cba	ff 	. 
	rst 38h			;7cbb	ff 	. 
	rst 38h			;7cbc	ff 	. 
	rst 38h			;7cbd	ff 	. 
	rst 38h			;7cbe	ff 	. 
	rst 38h			;7cbf	ff 	. 
	rst 38h			;7cc0	ff 	. 
	rst 38h			;7cc1	ff 	. 
	rst 38h			;7cc2	ff 	. 
	rst 38h			;7cc3	ff 	. 
	rst 38h			;7cc4	ff 	. 
	rst 38h			;7cc5	ff 	. 
	rst 38h			;7cc6	ff 	. 
	rst 38h			;7cc7	ff 	. 
	rst 38h			;7cc8	ff 	. 
	rst 38h			;7cc9	ff 	. 
	rst 38h			;7cca	ff 	. 
	rst 38h			;7ccb	ff 	. 
	rst 38h			;7ccc	ff 	. 
	rst 38h			;7ccd	ff 	. 
	rst 38h			;7cce	ff 	. 
	rst 38h			;7ccf	ff 	. 
	rst 38h			;7cd0	ff 	. 
	rst 38h			;7cd1	ff 	. 
	rst 38h			;7cd2	ff 	. 
	rst 38h			;7cd3	ff 	. 
	rst 38h			;7cd4	ff 	. 
	rst 38h			;7cd5	ff 	. 
	rst 38h			;7cd6	ff 	. 
	rst 38h			;7cd7	ff 	. 
	rst 38h			;7cd8	ff 	. 
	rst 38h			;7cd9	ff 	. 
	rst 38h			;7cda	ff 	. 
	rst 38h			;7cdb	ff 	. 
	rst 38h			;7cdc	ff 	. 
	rst 38h			;7cdd	ff 	. 
	rst 38h			;7cde	ff 	. 
	rst 38h			;7cdf	ff 	. 
	rst 38h			;7ce0	ff 	. 
	rst 38h			;7ce1	ff 	. 
	rst 38h			;7ce2	ff 	. 
	rst 38h			;7ce3	ff 	. 
	rst 38h			;7ce4	ff 	. 
	rst 38h			;7ce5	ff 	. 
	rst 38h			;7ce6	ff 	. 
	rst 38h			;7ce7	ff 	. 
	rst 38h			;7ce8	ff 	. 
	rst 38h			;7ce9	ff 	. 
	rst 38h			;7cea	ff 	. 
	rst 38h			;7ceb	ff 	. 
	rst 38h			;7cec	ff 	. 
	rst 38h			;7ced	ff 	. 
	rst 38h			;7cee	ff 	. 
	rst 38h			;7cef	ff 	. 
	rst 38h			;7cf0	ff 	. 
	rst 38h			;7cf1	ff 	. 
	rst 38h			;7cf2	ff 	. 
	rst 38h			;7cf3	ff 	. 
	rst 38h			;7cf4	ff 	. 
	rst 38h			;7cf5	ff 	. 
	rst 38h			;7cf6	ff 	. 
	rst 38h			;7cf7	ff 	. 
	rst 38h			;7cf8	ff 	. 
	rst 38h			;7cf9	ff 	. 
	rst 38h			;7cfa	ff 	. 
	rst 38h			;7cfb	ff 	. 
	rst 38h			;7cfc	ff 	. 
	rst 38h			;7cfd	ff 	. 
	rst 38h			;7cfe	ff 	. 
	rst 38h			;7cff	ff 	. 
	rst 38h			;7d00	ff 	. 
	rst 38h			;7d01	ff 	. 
	rst 38h			;7d02	ff 	. 
	rst 38h			;7d03	ff 	. 
	rst 38h			;7d04	ff 	. 
	rst 38h			;7d05	ff 	. 
	rst 38h			;7d06	ff 	. 
	rst 38h			;7d07	ff 	. 
	rst 38h			;7d08	ff 	. 
	rst 38h			;7d09	ff 	. 
	rst 38h			;7d0a	ff 	. 
	rst 38h			;7d0b	ff 	. 
	rst 38h			;7d0c	ff 	. 
	rst 38h			;7d0d	ff 	. 
	rst 38h			;7d0e	ff 	. 
	rst 38h			;7d0f	ff 	. 
	rst 38h			;7d10	ff 	. 
	rst 38h			;7d11	ff 	. 
	rst 38h			;7d12	ff 	. 
	rst 38h			;7d13	ff 	. 
	rst 38h			;7d14	ff 	. 
	rst 38h			;7d15	ff 	. 
	rst 38h			;7d16	ff 	. 
	rst 38h			;7d17	ff 	. 
	rst 38h			;7d18	ff 	. 
	rst 38h			;7d19	ff 	. 
	rst 38h			;7d1a	ff 	. 
	rst 38h			;7d1b	ff 	. 
	rst 38h			;7d1c	ff 	. 
	rst 38h			;7d1d	ff 	. 
	rst 38h			;7d1e	ff 	. 
	rst 38h			;7d1f	ff 	. 
	rst 38h			;7d20	ff 	. 
	rst 38h			;7d21	ff 	. 
	rst 38h			;7d22	ff 	. 
	rst 38h			;7d23	ff 	. 
	rst 38h			;7d24	ff 	. 
	rst 38h			;7d25	ff 	. 
	rst 38h			;7d26	ff 	. 
	rst 38h			;7d27	ff 	. 
	rst 38h			;7d28	ff 	. 
	rst 38h			;7d29	ff 	. 
	rst 38h			;7d2a	ff 	. 
	rst 38h			;7d2b	ff 	. 
	rst 38h			;7d2c	ff 	. 
	rst 38h			;7d2d	ff 	. 
	rst 38h			;7d2e	ff 	. 
	rst 38h			;7d2f	ff 	. 
	rst 38h			;7d30	ff 	. 
	rst 38h			;7d31	ff 	. 
	rst 38h			;7d32	ff 	. 
	rst 38h			;7d33	ff 	. 
	rst 38h			;7d34	ff 	. 
	rst 38h			;7d35	ff 	. 
	rst 38h			;7d36	ff 	. 
	rst 38h			;7d37	ff 	. 
	rst 38h			;7d38	ff 	. 
	rst 38h			;7d39	ff 	. 
	rst 38h			;7d3a	ff 	. 
	rst 38h			;7d3b	ff 	. 
	rst 38h			;7d3c	ff 	. 
	rst 38h			;7d3d	ff 	. 
	rst 38h			;7d3e	ff 	. 
	rst 38h			;7d3f	ff 	. 
	rst 38h			;7d40	ff 	. 
	rst 38h			;7d41	ff 	. 
	rst 38h			;7d42	ff 	. 
	rst 38h			;7d43	ff 	. 
	rst 38h			;7d44	ff 	. 
	rst 38h			;7d45	ff 	. 
	rst 38h			;7d46	ff 	. 
	rst 38h			;7d47	ff 	. 
	rst 38h			;7d48	ff 	. 
	rst 38h			;7d49	ff 	. 
	rst 38h			;7d4a	ff 	. 
	rst 38h			;7d4b	ff 	. 
	rst 38h			;7d4c	ff 	. 
	rst 38h			;7d4d	ff 	. 
	rst 38h			;7d4e	ff 	. 
	rst 38h			;7d4f	ff 	. 
	rst 38h			;7d50	ff 	. 
	rst 38h			;7d51	ff 	. 
	rst 38h			;7d52	ff 	. 
	rst 38h			;7d53	ff 	. 
	rst 38h			;7d54	ff 	. 
	rst 38h			;7d55	ff 	. 
	rst 38h			;7d56	ff 	. 
	rst 38h			;7d57	ff 	. 
	rst 38h			;7d58	ff 	. 
	rst 38h			;7d59	ff 	. 
	rst 38h			;7d5a	ff 	. 
	rst 38h			;7d5b	ff 	. 
	rst 38h			;7d5c	ff 	. 
	rst 38h			;7d5d	ff 	. 
	rst 38h			;7d5e	ff 	. 
	rst 38h			;7d5f	ff 	. 
	rst 38h			;7d60	ff 	. 
	rst 38h			;7d61	ff 	. 
	rst 38h			;7d62	ff 	. 
	rst 38h			;7d63	ff 	. 
	rst 38h			;7d64	ff 	. 
	rst 38h			;7d65	ff 	. 
	rst 38h			;7d66	ff 	. 
	rst 38h			;7d67	ff 	. 
	rst 38h			;7d68	ff 	. 
	rst 38h			;7d69	ff 	. 
	rst 38h			;7d6a	ff 	. 
	rst 38h			;7d6b	ff 	. 
	rst 38h			;7d6c	ff 	. 
	rst 38h			;7d6d	ff 	. 
	rst 38h			;7d6e	ff 	. 
	rst 38h			;7d6f	ff 	. 
	rst 38h			;7d70	ff 	. 
	rst 38h			;7d71	ff 	. 
	rst 38h			;7d72	ff 	. 
	rst 38h			;7d73	ff 	. 
	rst 38h			;7d74	ff 	. 
	rst 38h			;7d75	ff 	. 
	rst 38h			;7d76	ff 	. 
	rst 38h			;7d77	ff 	. 
	rst 38h			;7d78	ff 	. 
	rst 38h			;7d79	ff 	. 
	rst 38h			;7d7a	ff 	. 
	rst 38h			;7d7b	ff 	. 
	rst 38h			;7d7c	ff 	. 
	rst 38h			;7d7d	ff 	. 
	rst 38h			;7d7e	ff 	. 
	rst 38h			;7d7f	ff 	. 
	rst 38h			;7d80	ff 	. 
	rst 38h			;7d81	ff 	. 
	rst 38h			;7d82	ff 	. 
	rst 38h			;7d83	ff 	. 
	rst 38h			;7d84	ff 	. 
	rst 38h			;7d85	ff 	. 
	rst 38h			;7d86	ff 	. 
	rst 38h			;7d87	ff 	. 
	rst 38h			;7d88	ff 	. 
	rst 38h			;7d89	ff 	. 
	rst 38h			;7d8a	ff 	. 
	rst 38h			;7d8b	ff 	. 
	rst 38h			;7d8c	ff 	. 
	rst 38h			;7d8d	ff 	. 
	rst 38h			;7d8e	ff 	. 
	rst 38h			;7d8f	ff 	. 
	rst 38h			;7d90	ff 	. 
	rst 38h			;7d91	ff 	. 
	rst 38h			;7d92	ff 	. 
	rst 38h			;7d93	ff 	. 
	rst 38h			;7d94	ff 	. 
	rst 38h			;7d95	ff 	. 
	rst 38h			;7d96	ff 	. 
	rst 38h			;7d97	ff 	. 
	rst 38h			;7d98	ff 	. 
	rst 38h			;7d99	ff 	. 
	rst 38h			;7d9a	ff 	. 
	rst 38h			;7d9b	ff 	. 
	rst 38h			;7d9c	ff 	. 
	rst 38h			;7d9d	ff 	. 
	rst 38h			;7d9e	ff 	. 
	rst 38h			;7d9f	ff 	. 
	rst 38h			;7da0	ff 	. 
	rst 38h			;7da1	ff 	. 
	rst 38h			;7da2	ff 	. 
	rst 38h			;7da3	ff 	. 
	rst 38h			;7da4	ff 	. 
	rst 38h			;7da5	ff 	. 
	rst 38h			;7da6	ff 	. 
	rst 38h			;7da7	ff 	. 
	rst 38h			;7da8	ff 	. 
	rst 38h			;7da9	ff 	. 
	rst 38h			;7daa	ff 	. 
	rst 38h			;7dab	ff 	. 
	rst 38h			;7dac	ff 	. 
	rst 38h			;7dad	ff 	. 
	rst 38h			;7dae	ff 	. 
	rst 38h			;7daf	ff 	. 
	rst 38h			;7db0	ff 	. 
	rst 38h			;7db1	ff 	. 
	rst 38h			;7db2	ff 	. 
	rst 38h			;7db3	ff 	. 
	rst 38h			;7db4	ff 	. 
	rst 38h			;7db5	ff 	. 
	rst 38h			;7db6	ff 	. 
	rst 38h			;7db7	ff 	. 
	rst 38h			;7db8	ff 	. 
	rst 38h			;7db9	ff 	. 
	rst 38h			;7dba	ff 	. 
	rst 38h			;7dbb	ff 	. 
	rst 38h			;7dbc	ff 	. 
	rst 38h			;7dbd	ff 	. 
	rst 38h			;7dbe	ff 	. 
	rst 38h			;7dbf	ff 	. 
	rst 38h			;7dc0	ff 	. 
	rst 38h			;7dc1	ff 	. 
	rst 38h			;7dc2	ff 	. 
	rst 38h			;7dc3	ff 	. 
	rst 38h			;7dc4	ff 	. 
	rst 38h			;7dc5	ff 	. 
	rst 38h			;7dc6	ff 	. 
	rst 38h			;7dc7	ff 	. 
	rst 38h			;7dc8	ff 	. 
	rst 38h			;7dc9	ff 	. 
	rst 38h			;7dca	ff 	. 
	rst 38h			;7dcb	ff 	. 
	rst 38h			;7dcc	ff 	. 
	rst 38h			;7dcd	ff 	. 
	rst 38h			;7dce	ff 	. 
	rst 38h			;7dcf	ff 	. 
	rst 38h			;7dd0	ff 	. 
	rst 38h			;7dd1	ff 	. 
	rst 38h			;7dd2	ff 	. 
	rst 38h			;7dd3	ff 	. 
	rst 38h			;7dd4	ff 	. 
	rst 38h			;7dd5	ff 	. 
	rst 38h			;7dd6	ff 	. 
	rst 38h			;7dd7	ff 	. 
	rst 38h			;7dd8	ff 	. 
	rst 38h			;7dd9	ff 	. 
	rst 38h			;7dda	ff 	. 
	rst 38h			;7ddb	ff 	. 
	rst 38h			;7ddc	ff 	. 
	rst 38h			;7ddd	ff 	. 
	rst 38h			;7dde	ff 	. 
	rst 38h			;7ddf	ff 	. 
	rst 38h			;7de0	ff 	. 
	rst 38h			;7de1	ff 	. 
	rst 38h			;7de2	ff 	. 
	rst 38h			;7de3	ff 	. 
	rst 38h			;7de4	ff 	. 
	rst 38h			;7de5	ff 	. 
	rst 38h			;7de6	ff 	. 
	rst 38h			;7de7	ff 	. 
	rst 38h			;7de8	ff 	. 
	rst 38h			;7de9	ff 	. 
	rst 38h			;7dea	ff 	. 
	rst 38h			;7deb	ff 	. 
	rst 38h			;7dec	ff 	. 
	rst 38h			;7ded	ff 	. 
	rst 38h			;7dee	ff 	. 
	rst 38h			;7def	ff 	. 
	rst 38h			;7df0	ff 	. 
	rst 38h			;7df1	ff 	. 
	rst 38h			;7df2	ff 	. 
	rst 38h			;7df3	ff 	. 
	rst 38h			;7df4	ff 	. 
	rst 38h			;7df5	ff 	. 
	rst 38h			;7df6	ff 	. 
	rst 38h			;7df7	ff 	. 
	rst 38h			;7df8	ff 	. 
	rst 38h			;7df9	ff 	. 
	rst 38h			;7dfa	ff 	. 
	rst 38h			;7dfb	ff 	. 
	rst 38h			;7dfc	ff 	. 
	rst 38h			;7dfd	ff 	. 
	rst 38h			;7dfe	ff 	. 
	rst 38h			;7dff	ff 	. 
	rst 38h			;7e00	ff 	. 
	rst 38h			;7e01	ff 	. 
	rst 38h			;7e02	ff 	. 
	rst 38h			;7e03	ff 	. 
	rst 38h			;7e04	ff 	. 
	rst 38h			;7e05	ff 	. 
	rst 38h			;7e06	ff 	. 
	rst 38h			;7e07	ff 	. 
	rst 38h			;7e08	ff 	. 
	rst 38h			;7e09	ff 	. 
	rst 38h			;7e0a	ff 	. 
	rst 38h			;7e0b	ff 	. 
	rst 38h			;7e0c	ff 	. 
	rst 38h			;7e0d	ff 	. 
	rst 38h			;7e0e	ff 	. 
	rst 38h			;7e0f	ff 	. 
	rst 38h			;7e10	ff 	. 
	rst 38h			;7e11	ff 	. 
	rst 38h			;7e12	ff 	. 
	rst 38h			;7e13	ff 	. 
	rst 38h			;7e14	ff 	. 
	rst 38h			;7e15	ff 	. 
	rst 38h			;7e16	ff 	. 
	rst 38h			;7e17	ff 	. 
	rst 38h			;7e18	ff 	. 
	rst 38h			;7e19	ff 	. 
	rst 38h			;7e1a	ff 	. 
	rst 38h			;7e1b	ff 	. 
	rst 38h			;7e1c	ff 	. 
	rst 38h			;7e1d	ff 	. 
	rst 38h			;7e1e	ff 	. 
	rst 38h			;7e1f	ff 	. 
	rst 38h			;7e20	ff 	. 
	rst 38h			;7e21	ff 	. 
	rst 38h			;7e22	ff 	. 
	rst 38h			;7e23	ff 	. 
	rst 38h			;7e24	ff 	. 
	rst 38h			;7e25	ff 	. 
	rst 38h			;7e26	ff 	. 
	rst 38h			;7e27	ff 	. 
	rst 38h			;7e28	ff 	. 
	rst 38h			;7e29	ff 	. 
	rst 38h			;7e2a	ff 	. 
	rst 38h			;7e2b	ff 	. 
	rst 38h			;7e2c	ff 	. 
	rst 38h			;7e2d	ff 	. 
	rst 38h			;7e2e	ff 	. 
	rst 38h			;7e2f	ff 	. 
	rst 38h			;7e30	ff 	. 
	rst 38h			;7e31	ff 	. 
	rst 38h			;7e32	ff 	. 
	rst 38h			;7e33	ff 	. 
	rst 38h			;7e34	ff 	. 
	rst 38h			;7e35	ff 	. 
	rst 38h			;7e36	ff 	. 
	rst 38h			;7e37	ff 	. 
	rst 38h			;7e38	ff 	. 
	rst 38h			;7e39	ff 	. 
	rst 38h			;7e3a	ff 	. 
	rst 38h			;7e3b	ff 	. 
	rst 38h			;7e3c	ff 	. 
	rst 38h			;7e3d	ff 	. 
	rst 38h			;7e3e	ff 	. 
	rst 38h			;7e3f	ff 	. 
	rst 38h			;7e40	ff 	. 
	rst 38h			;7e41	ff 	. 
	rst 38h			;7e42	ff 	. 
	rst 38h			;7e43	ff 	. 
	rst 38h			;7e44	ff 	. 
	rst 38h			;7e45	ff 	. 
	rst 38h			;7e46	ff 	. 
	rst 38h			;7e47	ff 	. 
	rst 38h			;7e48	ff 	. 
	rst 38h			;7e49	ff 	. 
	rst 38h			;7e4a	ff 	. 
	rst 38h			;7e4b	ff 	. 
	rst 38h			;7e4c	ff 	. 
	rst 38h			;7e4d	ff 	. 
	rst 38h			;7e4e	ff 	. 
	rst 38h			;7e4f	ff 	. 
	rst 38h			;7e50	ff 	. 
	rst 38h			;7e51	ff 	. 
	rst 38h			;7e52	ff 	. 
	rst 38h			;7e53	ff 	. 
	rst 38h			;7e54	ff 	. 
	rst 38h			;7e55	ff 	. 
	rst 38h			;7e56	ff 	. 
	rst 38h			;7e57	ff 	. 
	rst 38h			;7e58	ff 	. 
	rst 38h			;7e59	ff 	. 
	rst 38h			;7e5a	ff 	. 
	rst 38h			;7e5b	ff 	. 
	rst 38h			;7e5c	ff 	. 
	rst 38h			;7e5d	ff 	. 
	rst 38h			;7e5e	ff 	. 
	rst 38h			;7e5f	ff 	. 
	rst 38h			;7e60	ff 	. 
	rst 38h			;7e61	ff 	. 
	rst 38h			;7e62	ff 	. 
	rst 38h			;7e63	ff 	. 
	rst 38h			;7e64	ff 	. 
	rst 38h			;7e65	ff 	. 
	rst 38h			;7e66	ff 	. 
	rst 38h			;7e67	ff 	. 
	rst 38h			;7e68	ff 	. 
	rst 38h			;7e69	ff 	. 
	rst 38h			;7e6a	ff 	. 
	rst 38h			;7e6b	ff 	. 
	rst 38h			;7e6c	ff 	. 
	rst 38h			;7e6d	ff 	. 
	rst 38h			;7e6e	ff 	. 
	rst 38h			;7e6f	ff 	. 
	rst 38h			;7e70	ff 	. 
	rst 38h			;7e71	ff 	. 
	rst 38h			;7e72	ff 	. 
	rst 38h			;7e73	ff 	. 
	rst 38h			;7e74	ff 	. 
	rst 38h			;7e75	ff 	. 
	rst 38h			;7e76	ff 	. 
	rst 38h			;7e77	ff 	. 
	rst 38h			;7e78	ff 	. 
	rst 38h			;7e79	ff 	. 
	rst 38h			;7e7a	ff 	. 
	rst 38h			;7e7b	ff 	. 
	rst 38h			;7e7c	ff 	. 
	rst 38h			;7e7d	ff 	. 
	rst 38h			;7e7e	ff 	. 
	rst 38h			;7e7f	ff 	. 
	rst 38h			;7e80	ff 	. 
	rst 38h			;7e81	ff 	. 
	rst 38h			;7e82	ff 	. 
	rst 38h			;7e83	ff 	. 
	rst 38h			;7e84	ff 	. 
	rst 38h			;7e85	ff 	. 
	rst 38h			;7e86	ff 	. 
	rst 38h			;7e87	ff 	. 
	rst 38h			;7e88	ff 	. 
	rst 38h			;7e89	ff 	. 
	rst 38h			;7e8a	ff 	. 
	rst 38h			;7e8b	ff 	. 
	rst 38h			;7e8c	ff 	. 
	rst 38h			;7e8d	ff 	. 
	rst 38h			;7e8e	ff 	. 
	rst 38h			;7e8f	ff 	. 
	rst 38h			;7e90	ff 	. 
	rst 38h			;7e91	ff 	. 
	rst 38h			;7e92	ff 	. 
	rst 38h			;7e93	ff 	. 
	rst 38h			;7e94	ff 	. 
	rst 38h			;7e95	ff 	. 
	rst 38h			;7e96	ff 	. 
	rst 38h			;7e97	ff 	. 
	rst 38h			;7e98	ff 	. 
	rst 38h			;7e99	ff 	. 
	rst 38h			;7e9a	ff 	. 
	rst 38h			;7e9b	ff 	. 
	rst 38h			;7e9c	ff 	. 
	rst 38h			;7e9d	ff 	. 
	rst 38h			;7e9e	ff 	. 
	rst 38h			;7e9f	ff 	. 
	rst 38h			;7ea0	ff 	. 
	rst 38h			;7ea1	ff 	. 
	rst 38h			;7ea2	ff 	. 
	rst 38h			;7ea3	ff 	. 
	rst 38h			;7ea4	ff 	. 
	rst 38h			;7ea5	ff 	. 
	rst 38h			;7ea6	ff 	. 
	rst 38h			;7ea7	ff 	. 
	rst 38h			;7ea8	ff 	. 
	rst 38h			;7ea9	ff 	. 
	rst 38h			;7eaa	ff 	. 
	rst 38h			;7eab	ff 	. 
	rst 38h			;7eac	ff 	. 
	rst 38h			;7ead	ff 	. 
	rst 38h			;7eae	ff 	. 
	rst 38h			;7eaf	ff 	. 
	rst 38h			;7eb0	ff 	. 
	rst 38h			;7eb1	ff 	. 
	rst 38h			;7eb2	ff 	. 
	rst 38h			;7eb3	ff 	. 
	rst 38h			;7eb4	ff 	. 
	rst 38h			;7eb5	ff 	. 
	rst 38h			;7eb6	ff 	. 
	rst 38h			;7eb7	ff 	. 
	rst 38h			;7eb8	ff 	. 
	rst 38h			;7eb9	ff 	. 
	rst 38h			;7eba	ff 	. 
	rst 38h			;7ebb	ff 	. 
	rst 38h			;7ebc	ff 	. 
	rst 38h			;7ebd	ff 	. 
	rst 38h			;7ebe	ff 	. 
	rst 38h			;7ebf	ff 	. 
	rst 38h			;7ec0	ff 	. 
	rst 38h			;7ec1	ff 	. 
	rst 38h			;7ec2	ff 	. 
	rst 38h			;7ec3	ff 	. 
	rst 38h			;7ec4	ff 	. 
	rst 38h			;7ec5	ff 	. 
	rst 38h			;7ec6	ff 	. 
	rst 38h			;7ec7	ff 	. 
	rst 38h			;7ec8	ff 	. 
	rst 38h			;7ec9	ff 	. 
	rst 38h			;7eca	ff 	. 
	rst 38h			;7ecb	ff 	. 
	rst 38h			;7ecc	ff 	. 
	rst 38h			;7ecd	ff 	. 
	rst 38h			;7ece	ff 	. 
	rst 38h			;7ecf	ff 	. 
	rst 38h			;7ed0	ff 	. 
	rst 38h			;7ed1	ff 	. 
	rst 38h			;7ed2	ff 	. 
	rst 38h			;7ed3	ff 	. 
	rst 38h			;7ed4	ff 	. 
	rst 38h			;7ed5	ff 	. 
	rst 38h			;7ed6	ff 	. 
	rst 38h			;7ed7	ff 	. 
	rst 38h			;7ed8	ff 	. 
	rst 38h			;7ed9	ff 	. 
	rst 38h			;7eda	ff 	. 
	rst 38h			;7edb	ff 	. 
	rst 38h			;7edc	ff 	. 
	rst 38h			;7edd	ff 	. 
	rst 38h			;7ede	ff 	. 
	rst 38h			;7edf	ff 	. 
	rst 38h			;7ee0	ff 	. 
	rst 38h			;7ee1	ff 	. 
	rst 38h			;7ee2	ff 	. 
	rst 38h			;7ee3	ff 	. 
	rst 38h			;7ee4	ff 	. 
	rst 38h			;7ee5	ff 	. 
	rst 38h			;7ee6	ff 	. 
	rst 38h			;7ee7	ff 	. 
	rst 38h			;7ee8	ff 	. 
	rst 38h			;7ee9	ff 	. 
	rst 38h			;7eea	ff 	. 
	rst 38h			;7eeb	ff 	. 
	rst 38h			;7eec	ff 	. 
	rst 38h			;7eed	ff 	. 
	rst 38h			;7eee	ff 	. 
	rst 38h			;7eef	ff 	. 
	rst 38h			;7ef0	ff 	. 
	rst 38h			;7ef1	ff 	. 
	rst 38h			;7ef2	ff 	. 
	rst 38h			;7ef3	ff 	. 
	rst 38h			;7ef4	ff 	. 
	rst 38h			;7ef5	ff 	. 
	rst 38h			;7ef6	ff 	. 
	rst 38h			;7ef7	ff 	. 
	rst 38h			;7ef8	ff 	. 
	rst 38h			;7ef9	ff 	. 
	rst 38h			;7efa	ff 	. 
	rst 38h			;7efb	ff 	. 
	rst 38h			;7efc	ff 	. 
	rst 38h			;7efd	ff 	. 
	rst 38h			;7efe	ff 	. 
	rst 38h			;7eff	ff 	. 
	rst 38h			;7f00	ff 	. 
	rst 38h			;7f01	ff 	. 
	rst 38h			;7f02	ff 	. 
	rst 38h			;7f03	ff 	. 
	rst 38h			;7f04	ff 	. 
	rst 38h			;7f05	ff 	. 
	rst 38h			;7f06	ff 	. 
	rst 38h			;7f07	ff 	. 
	rst 38h			;7f08	ff 	. 
	rst 38h			;7f09	ff 	. 
	rst 38h			;7f0a	ff 	. 
	rst 38h			;7f0b	ff 	. 
	rst 38h			;7f0c	ff 	. 
	rst 38h			;7f0d	ff 	. 
	rst 38h			;7f0e	ff 	. 
	rst 38h			;7f0f	ff 	. 
	rst 38h			;7f10	ff 	. 
	rst 38h			;7f11	ff 	. 
	rst 38h			;7f12	ff 	. 
	rst 38h			;7f13	ff 	. 
	rst 38h			;7f14	ff 	. 
	rst 38h			;7f15	ff 	. 
	rst 38h			;7f16	ff 	. 
	rst 38h			;7f17	ff 	. 
	rst 38h			;7f18	ff 	. 
	rst 38h			;7f19	ff 	. 
	rst 38h			;7f1a	ff 	. 
	rst 38h			;7f1b	ff 	. 
	rst 38h			;7f1c	ff 	. 
	rst 38h			;7f1d	ff 	. 
	rst 38h			;7f1e	ff 	. 
	rst 38h			;7f1f	ff 	. 
	rst 38h			;7f20	ff 	. 
	rst 38h			;7f21	ff 	. 
	rst 38h			;7f22	ff 	. 
	rst 38h			;7f23	ff 	. 
	rst 38h			;7f24	ff 	. 
	rst 38h			;7f25	ff 	. 
	rst 38h			;7f26	ff 	. 
	rst 38h			;7f27	ff 	. 
	rst 38h			;7f28	ff 	. 
	rst 38h			;7f29	ff 	. 
	rst 38h			;7f2a	ff 	. 
	rst 38h			;7f2b	ff 	. 
	rst 38h			;7f2c	ff 	. 
	rst 38h			;7f2d	ff 	. 
	rst 38h			;7f2e	ff 	. 
	rst 38h			;7f2f	ff 	. 
	rst 38h			;7f30	ff 	. 
	rst 38h			;7f31	ff 	. 
	rst 38h			;7f32	ff 	. 
	rst 38h			;7f33	ff 	. 
	rst 38h			;7f34	ff 	. 
	rst 38h			;7f35	ff 	. 
	rst 38h			;7f36	ff 	. 
	rst 38h			;7f37	ff 	. 
	rst 38h			;7f38	ff 	. 
	rst 38h			;7f39	ff 	. 
	rst 38h			;7f3a	ff 	. 
	rst 38h			;7f3b	ff 	. 
	rst 38h			;7f3c	ff 	. 
	rst 38h			;7f3d	ff 	. 
	rst 38h			;7f3e	ff 	. 
	rst 38h			;7f3f	ff 	. 
	rst 38h			;7f40	ff 	. 
	rst 38h			;7f41	ff 	. 
	rst 38h			;7f42	ff 	. 
	rst 38h			;7f43	ff 	. 
	rst 38h			;7f44	ff 	. 
	rst 38h			;7f45	ff 	. 
	rst 38h			;7f46	ff 	. 
	rst 38h			;7f47	ff 	. 
	rst 38h			;7f48	ff 	. 
	rst 38h			;7f49	ff 	. 
	rst 38h			;7f4a	ff 	. 
	rst 38h			;7f4b	ff 	. 
	rst 38h			;7f4c	ff 	. 
	rst 38h			;7f4d	ff 	. 
	rst 38h			;7f4e	ff 	. 
	rst 38h			;7f4f	ff 	. 
	rst 38h			;7f50	ff 	. 
	rst 38h			;7f51	ff 	. 
	rst 38h			;7f52	ff 	. 
	rst 38h			;7f53	ff 	. 
	rst 38h			;7f54	ff 	. 
	rst 38h			;7f55	ff 	. 
	rst 38h			;7f56	ff 	. 
	rst 38h			;7f57	ff 	. 
	rst 38h			;7f58	ff 	. 
	rst 38h			;7f59	ff 	. 
	rst 38h			;7f5a	ff 	. 
	rst 38h			;7f5b	ff 	. 
	rst 38h			;7f5c	ff 	. 
	rst 38h			;7f5d	ff 	. 
	rst 38h			;7f5e	ff 	. 
	rst 38h			;7f5f	ff 	. 
	rst 38h			;7f60	ff 	. 
	rst 38h			;7f61	ff 	. 
	rst 38h			;7f62	ff 	. 
	rst 38h			;7f63	ff 	. 
	rst 38h			;7f64	ff 	. 
	rst 38h			;7f65	ff 	. 
	rst 38h			;7f66	ff 	. 
	rst 38h			;7f67	ff 	. 
	rst 38h			;7f68	ff 	. 
	rst 38h			;7f69	ff 	. 
	rst 38h			;7f6a	ff 	. 
	rst 38h			;7f6b	ff 	. 
	rst 38h			;7f6c	ff 	. 
	rst 38h			;7f6d	ff 	. 
	rst 38h			;7f6e	ff 	. 
	rst 38h			;7f6f	ff 	. 
	rst 38h			;7f70	ff 	. 
	rst 38h			;7f71	ff 	. 
	rst 38h			;7f72	ff 	. 
	rst 38h			;7f73	ff 	. 
	rst 38h			;7f74	ff 	. 
	rst 38h			;7f75	ff 	. 
	rst 38h			;7f76	ff 	. 
	rst 38h			;7f77	ff 	. 
	rst 38h			;7f78	ff 	. 
	rst 38h			;7f79	ff 	. 
	rst 38h			;7f7a	ff 	. 
	rst 38h			;7f7b	ff 	. 
	rst 38h			;7f7c	ff 	. 
	rst 38h			;7f7d	ff 	. 
	rst 38h			;7f7e	ff 	. 
	rst 38h			;7f7f	ff 	. 
	rst 38h			;7f80	ff 	. 
	rst 38h			;7f81	ff 	. 
	rst 38h			;7f82	ff 	. 
	rst 38h			;7f83	ff 	. 
	rst 38h			;7f84	ff 	. 
	rst 38h			;7f85	ff 	. 
	rst 38h			;7f86	ff 	. 
	rst 38h			;7f87	ff 	. 
	rst 38h			;7f88	ff 	. 
	rst 38h			;7f89	ff 	. 
	rst 38h			;7f8a	ff 	. 
	rst 38h			;7f8b	ff 	. 
	rst 38h			;7f8c	ff 	. 
	rst 38h			;7f8d	ff 	. 
	rst 38h			;7f8e	ff 	. 
	rst 38h			;7f8f	ff 	. 
	rst 38h			;7f90	ff 	. 
	rst 38h			;7f91	ff 	. 
	rst 38h			;7f92	ff 	. 
	rst 38h			;7f93	ff 	. 
	rst 38h			;7f94	ff 	. 
	rst 38h			;7f95	ff 	. 
	rst 38h			;7f96	ff 	. 
	rst 38h			;7f97	ff 	. 
	rst 38h			;7f98	ff 	. 
	rst 38h			;7f99	ff 	. 
	rst 38h			;7f9a	ff 	. 
	rst 38h			;7f9b	ff 	. 
	rst 38h			;7f9c	ff 	. 
	rst 38h			;7f9d	ff 	. 
	rst 38h			;7f9e	ff 	. 
	rst 38h			;7f9f	ff 	. 
	rst 38h			;7fa0	ff 	. 
	rst 38h			;7fa1	ff 	. 
	rst 38h			;7fa2	ff 	. 
	rst 38h			;7fa3	ff 	. 
	rst 38h			;7fa4	ff 	. 
	rst 38h			;7fa5	ff 	. 
	rst 38h			;7fa6	ff 	. 
	rst 38h			;7fa7	ff 	. 
	rst 38h			;7fa8	ff 	. 
	rst 38h			;7fa9	ff 	. 
	rst 38h			;7faa	ff 	. 
	rst 38h			;7fab	ff 	. 
	rst 38h			;7fac	ff 	. 
	rst 38h			;7fad	ff 	. 
	rst 38h			;7fae	ff 	. 
	rst 38h			;7faf	ff 	. 
	rst 38h			;7fb0	ff 	. 
	rst 38h			;7fb1	ff 	. 
	rst 38h			;7fb2	ff 	. 
	rst 38h			;7fb3	ff 	. 
	rst 38h			;7fb4	ff 	. 
	rst 38h			;7fb5	ff 	. 
	rst 38h			;7fb6	ff 	. 
	rst 38h			;7fb7	ff 	. 
	rst 38h			;7fb8	ff 	. 
	rst 38h			;7fb9	ff 	. 
	rst 38h			;7fba	ff 	. 
	rst 38h			;7fbb	ff 	. 
	rst 38h			;7fbc	ff 	. 
	rst 38h			;7fbd	ff 	. 
	rst 38h			;7fbe	ff 	. 
	rst 38h			;7fbf	ff 	. 
	rst 38h			;7fc0	ff 	. 
	rst 38h			;7fc1	ff 	. 
	rst 38h			;7fc2	ff 	. 
	rst 38h			;7fc3	ff 	. 
	rst 38h			;7fc4	ff 	. 
	rst 38h			;7fc5	ff 	. 
	rst 38h			;7fc6	ff 	. 
	rst 38h			;7fc7	ff 	. 
	rst 38h			;7fc8	ff 	. 
	rst 38h			;7fc9	ff 	. 
	rst 38h			;7fca	ff 	. 
	rst 38h			;7fcb	ff 	. 
	rst 38h			;7fcc	ff 	. 
	rst 38h			;7fcd	ff 	. 
	rst 38h			;7fce	ff 	. 
	rst 38h			;7fcf	ff 	. 
	rst 38h			;7fd0	ff 	. 
	rst 38h			;7fd1	ff 	. 
	rst 38h			;7fd2	ff 	. 
	rst 38h			;7fd3	ff 	. 
	rst 38h			;7fd4	ff 	. 
	rst 38h			;7fd5	ff 	. 
	rst 38h			;7fd6	ff 	. 
	rst 38h			;7fd7	ff 	. 
	rst 38h			;7fd8	ff 	. 
	rst 38h			;7fd9	ff 	. 
	rst 38h			;7fda	ff 	. 
	rst 38h			;7fdb	ff 	. 
	rst 38h			;7fdc	ff 	. 
	rst 38h			;7fdd	ff 	. 
	rst 38h			;7fde	ff 	. 
	rst 38h			;7fdf	ff 	. 
	rst 38h			;7fe0	ff 	. 
	rst 38h			;7fe1	ff 	. 
	rst 38h			;7fe2	ff 	. 
	rst 38h			;7fe3	ff 	. 
	rst 38h			;7fe4	ff 	. 
	rst 38h			;7fe5	ff 	. 
	rst 38h			;7fe6	ff 	. 
	rst 38h			;7fe7	ff 	. 
	rst 38h			;7fe8	ff 	. 
	rst 38h			;7fe9	ff 	. 
	rst 38h			;7fea	ff 	. 
	rst 38h			;7feb	ff 	. 
	rst 38h			;7fec	ff 	. 
	rst 38h			;7fed	ff 	. 
	rst 38h			;7fee	ff 	. 
	rst 38h			;7fef	ff 	. 
	rst 38h			;7ff0	ff 	. 
	rst 38h			;7ff1	ff 	. 
	rst 38h			;7ff2	ff 	. 
	rst 38h			;7ff3	ff 	. 
	rst 38h			;7ff4	ff 	. 
	rst 38h			;7ff5	ff 	. 
	rst 38h			;7ff6	ff 	. 
	rst 38h			;7ff7	ff 	. 
	rst 38h			;7ff8	ff 	. 
	rst 38h			;7ff9	ff 	. 
	rst 38h			;7ffa	ff 	. 
	rst 38h			;7ffb	ff 	. 
	rst 38h			;7ffc	ff 	. 
	rst 38h			;7ffd	ff 	. 
	rst 38h			;7ffe	ff 	. 
	rst 38h			;7fff	ff 	. 
	rst 38h			;8000	ff 	. 
	rst 38h			;8001	ff 	. 
	rst 38h			;8002	ff 	. 
	rst 38h			;8003	ff 	. 
	rst 38h			;8004	ff 	. 
	rst 38h			;8005	ff 	. 
	rst 38h			;8006	ff 	. 
	rst 38h			;8007	ff 	. 
	rst 38h			;8008	ff 	. 
	rst 38h			;8009	ff 	. 
	rst 38h			;800a	ff 	. 
	rst 38h			;800b	ff 	. 
	rst 38h			;800c	ff 	. 
	rst 38h			;800d	ff 	. 
	rst 38h			;800e	ff 	. 
	rst 38h			;800f	ff 	. 
	rst 38h			;8010	ff 	. 
	rst 38h			;8011	ff 	. 
	rst 38h			;8012	ff 	. 
	rst 38h			;8013	ff 	. 
	rst 38h			;8014	ff 	. 
	rst 38h			;8015	ff 	. 
	rst 38h			;8016	ff 	. 
	rst 38h			;8017	ff 	. 
	rst 38h			;8018	ff 	. 
	rst 38h			;8019	ff 	. 
	rst 38h			;801a	ff 	. 
	rst 38h			;801b	ff 	. 
	rst 38h			;801c	ff 	. 
	rst 38h			;801d	ff 	. 
	rst 38h			;801e	ff 	. 
	rst 38h			;801f	ff 	. 
	rst 38h			;8020	ff 	. 
	rst 38h			;8021	ff 	. 
	rst 38h			;8022	ff 	. 
	rst 38h			;8023	ff 	. 
	rst 38h			;8024	ff 	. 
	rst 38h			;8025	ff 	. 
	rst 38h			;8026	ff 	. 
	rst 38h			;8027	ff 	. 
	rst 38h			;8028	ff 	. 
	rst 38h			;8029	ff 	. 
	rst 38h			;802a	ff 	. 
	rst 38h			;802b	ff 	. 
	rst 38h			;802c	ff 	. 
	rst 38h			;802d	ff 	. 
	rst 38h			;802e	ff 	. 
	rst 38h			;802f	ff 	. 
	rst 38h			;8030	ff 	. 
	rst 38h			;8031	ff 	. 
	rst 38h			;8032	ff 	. 
	rst 38h			;8033	ff 	. 
	rst 38h			;8034	ff 	. 
	rst 38h			;8035	ff 	. 
	rst 38h			;8036	ff 	. 
	rst 38h			;8037	ff 	. 
	rst 38h			;8038	ff 	. 
	rst 38h			;8039	ff 	. 
	rst 38h			;803a	ff 	. 
	rst 38h			;803b	ff 	. 
	rst 38h			;803c	ff 	. 
	rst 38h			;803d	ff 	. 
	rst 38h			;803e	ff 	. 
	rst 38h			;803f	ff 	. 
	rst 38h			;8040	ff 	. 
	rst 38h			;8041	ff 	. 
	rst 38h			;8042	ff 	. 
	rst 38h			;8043	ff 	. 
	rst 38h			;8044	ff 	. 
	rst 38h			;8045	ff 	. 
	rst 38h			;8046	ff 	. 
	rst 38h			;8047	ff 	. 
	rst 38h			;8048	ff 	. 
	rst 38h			;8049	ff 	. 
	rst 38h			;804a	ff 	. 
	rst 38h			;804b	ff 	. 
	rst 38h			;804c	ff 	. 
	rst 38h			;804d	ff 	. 
	rst 38h			;804e	ff 	. 
	rst 38h			;804f	ff 	. 
	rst 38h			;8050	ff 	. 
	rst 38h			;8051	ff 	. 
	rst 38h			;8052	ff 	. 
	rst 38h			;8053	ff 	. 
	rst 38h			;8054	ff 	. 
	rst 38h			;8055	ff 	. 
	rst 38h			;8056	ff 	. 
	rst 38h			;8057	ff 	. 
	rst 38h			;8058	ff 	. 
	rst 38h			;8059	ff 	. 
	rst 38h			;805a	ff 	. 
	rst 38h			;805b	ff 	. 
	rst 38h			;805c	ff 	. 
	rst 38h			;805d	ff 	. 
	rst 38h			;805e	ff 	. 
	rst 38h			;805f	ff 	. 
	rst 38h			;8060	ff 	. 
	rst 38h			;8061	ff 	. 
	rst 38h			;8062	ff 	. 
	rst 38h			;8063	ff 	. 
	rst 38h			;8064	ff 	. 
	rst 38h			;8065	ff 	. 
	rst 38h			;8066	ff 	. 
	rst 38h			;8067	ff 	. 
	rst 38h			;8068	ff 	. 
	rst 38h			;8069	ff 	. 
	rst 38h			;806a	ff 	. 
	rst 38h			;806b	ff 	. 
	rst 38h			;806c	ff 	. 
	rst 38h			;806d	ff 	. 
	rst 38h			;806e	ff 	. 
	rst 38h			;806f	ff 	. 
	rst 38h			;8070	ff 	. 
	rst 38h			;8071	ff 	. 
	rst 38h			;8072	ff 	. 
	rst 38h			;8073	ff 	. 
	rst 38h			;8074	ff 	. 
	rst 38h			;8075	ff 	. 
	rst 38h			;8076	ff 	. 
	rst 38h			;8077	ff 	. 
	rst 38h			;8078	ff 	. 
	rst 38h			;8079	ff 	. 
	rst 38h			;807a	ff 	. 
	rst 38h			;807b	ff 	. 
	rst 38h			;807c	ff 	. 
	rst 38h			;807d	ff 	. 
	rst 38h			;807e	ff 	. 
	rst 38h			;807f	ff 	. 
	rst 38h			;8080	ff 	. 
	rst 38h			;8081	ff 	. 
	rst 38h			;8082	ff 	. 
	rst 38h			;8083	ff 	. 
	rst 38h			;8084	ff 	. 
	rst 38h			;8085	ff 	. 
	rst 38h			;8086	ff 	. 
	rst 38h			;8087	ff 	. 
	rst 38h			;8088	ff 	. 
	rst 38h			;8089	ff 	. 
	rst 38h			;808a	ff 	. 
	rst 38h			;808b	ff 	. 
	rst 38h			;808c	ff 	. 
	rst 38h			;808d	ff 	. 
	rst 38h			;808e	ff 	. 
	rst 38h			;808f	ff 	. 
	rst 38h			;8090	ff 	. 
	rst 38h			;8091	ff 	. 
	rst 38h			;8092	ff 	. 
	rst 38h			;8093	ff 	. 
	rst 38h			;8094	ff 	. 
	rst 38h			;8095	ff 	. 
	rst 38h			;8096	ff 	. 
	rst 38h			;8097	ff 	. 
	rst 38h			;8098	ff 	. 
	rst 38h			;8099	ff 	. 
	rst 38h			;809a	ff 	. 
	rst 38h			;809b	ff 	. 
	rst 38h			;809c	ff 	. 
	rst 38h			;809d	ff 	. 
	rst 38h			;809e	ff 	. 
	rst 38h			;809f	ff 	. 
	rst 38h			;80a0	ff 	. 
	rst 38h			;80a1	ff 	. 
	rst 38h			;80a2	ff 	. 
	rst 38h			;80a3	ff 	. 
	rst 38h			;80a4	ff 	. 
	rst 38h			;80a5	ff 	. 
	rst 38h			;80a6	ff 	. 
	rst 38h			;80a7	ff 	. 
	rst 38h			;80a8	ff 	. 
	rst 38h			;80a9	ff 	. 
	rst 38h			;80aa	ff 	. 
	rst 38h			;80ab	ff 	. 
	rst 38h			;80ac	ff 	. 
	rst 38h			;80ad	ff 	. 
	rst 38h			;80ae	ff 	. 
	rst 38h			;80af	ff 	. 
	rst 38h			;80b0	ff 	. 
	rst 38h			;80b1	ff 	. 
	rst 38h			;80b2	ff 	. 
	rst 38h			;80b3	ff 	. 
	rst 38h			;80b4	ff 	. 
	rst 38h			;80b5	ff 	. 
	rst 38h			;80b6	ff 	. 
	rst 38h			;80b7	ff 	. 
	rst 38h			;80b8	ff 	. 
	rst 38h			;80b9	ff 	. 
	rst 38h			;80ba	ff 	. 
	rst 38h			;80bb	ff 	. 
	rst 38h			;80bc	ff 	. 
	rst 38h			;80bd	ff 	. 
	rst 38h			;80be	ff 	. 
	rst 38h			;80bf	ff 	. 
	rst 38h			;80c0	ff 	. 
	rst 38h			;80c1	ff 	. 
	rst 38h			;80c2	ff 	. 
	rst 38h			;80c3	ff 	. 
	rst 38h			;80c4	ff 	. 
	rst 38h			;80c5	ff 	. 
	rst 38h			;80c6	ff 	. 
	rst 38h			;80c7	ff 	. 
	rst 38h			;80c8	ff 	. 
	rst 38h			;80c9	ff 	. 
	rst 38h			;80ca	ff 	. 
	rst 38h			;80cb	ff 	. 
	rst 38h			;80cc	ff 	. 
	rst 38h			;80cd	ff 	. 
	rst 38h			;80ce	ff 	. 
	rst 38h			;80cf	ff 	. 
	rst 38h			;80d0	ff 	. 
	rst 38h			;80d1	ff 	. 
	rst 38h			;80d2	ff 	. 
	rst 38h			;80d3	ff 	. 
	rst 38h			;80d4	ff 	. 
	rst 38h			;80d5	ff 	. 
	rst 38h			;80d6	ff 	. 
	rst 38h			;80d7	ff 	. 
	rst 38h			;80d8	ff 	. 
	rst 38h			;80d9	ff 	. 
	rst 38h			;80da	ff 	. 
	rst 38h			;80db	ff 	. 
	rst 38h			;80dc	ff 	. 
	rst 38h			;80dd	ff 	. 
	rst 38h			;80de	ff 	. 
	rst 38h			;80df	ff 	. 
	rst 38h			;80e0	ff 	. 
	rst 38h			;80e1	ff 	. 
	rst 38h			;80e2	ff 	. 
	rst 38h			;80e3	ff 	. 
	rst 38h			;80e4	ff 	. 
	rst 38h			;80e5	ff 	. 
	rst 38h			;80e6	ff 	. 
	rst 38h			;80e7	ff 	. 
	rst 38h			;80e8	ff 	. 
	rst 38h			;80e9	ff 	. 
	rst 38h			;80ea	ff 	. 
	rst 38h			;80eb	ff 	. 
	rst 38h			;80ec	ff 	. 
	rst 38h			;80ed	ff 	. 
	rst 38h			;80ee	ff 	. 
	rst 38h			;80ef	ff 	. 
	rst 38h			;80f0	ff 	. 
	rst 38h			;80f1	ff 	. 
	rst 38h			;80f2	ff 	. 
	rst 38h			;80f3	ff 	. 
	rst 38h			;80f4	ff 	. 
	rst 38h			;80f5	ff 	. 
	rst 38h			;80f6	ff 	. 
	rst 38h			;80f7	ff 	. 
	rst 38h			;80f8	ff 	. 
	rst 38h			;80f9	ff 	. 
	rst 38h			;80fa	ff 	. 
	rst 38h			;80fb	ff 	. 
	rst 38h			;80fc	ff 	. 
	rst 38h			;80fd	ff 	. 
	rst 38h			;80fe	ff 	. 
	rst 38h			;80ff	ff 	. 
