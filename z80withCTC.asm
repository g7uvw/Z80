; z80dasm 1.1.4
; command line: z80dasm -l -g0 -v z80withCTC

	org	00000h

l0000h:
	di
l0001h:
	ld sp,08100h
l0004h:
	xor a					; A = 0
l0005h:
	out (083h),a
l0007h:
	out (08fh),a
l0009h:
	out (089h),a
l000bh:
	out (09ah),a
	out (09bh),a
l000fh:
	out (09ch),a
l0011h:
	ld a,0d1h			; A = 0xD1
l0013h:
	out (081h),a	; Write to port 0x81
	ld b,00ah			; B = 0x0A
l0017h:
	call sub_0545h
l001ah:
	ld a,003h
	out (09fh),a
	ld b,004h
l0020h:
	call sub_0545h
l0023h:
	xor a
l0024h:
	out (09fh),a
	ld a,00dh
	ld (0a476h),a
	jr l0066h
	jr nc,$+59
	ld sp,l3930h
	ld sp,l0000h
	nop
	nop
l0037h:
	nop
	jr l0066h
l003ah:
	jr z,$+69
	add hl,hl
	jr c,$+56
	cpl
l0040h:
	add hl,sp
	ld sp,l432dh
	ld b,c
	ld d,d
	ld c,h
	jr nz,l00a3h
	ld b,l
	ld c,c
	ld d,e
	ld d,e
	jr nz,$+89
	ld l,047h
	ld b,l
	ld d,d
	ld c,l
	ld b,c
	ld c,(hl)
	ld e,c
	nop
	nop
	nop
	nop
	nop
l005ch:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
l0064h:
	nop
	nop
l0066h:							; NMI Handler
	ld sp,08100h			
	call sub_0415h
	call sub_08dch
	in a,(0f0h)
	and 040h
	jp nz,l007ch
	ld (0e41dh),a
	jp l0081h
l007ch:
	ld a,001h
	ld (0e41dh),a
l0081h:
	ld a,000h
	ld (0e441h),a
	call sub_045ch
	call sub_08d7h
	call sub_07f8h
	call sub_01bbh
	call sub_38b4h
	ld a,(0a015h)
	ld (08121h),a
	ld (0e416h),a
	ld a,001h
	ld (0e40dh),a
l00a3h:
	ld a,000h
	ld (08233h),a
	ld a,(0814ah)
	cp 013h
	call z,sub_3845h
	ld a,(0822eh)
	or a
	jr z,l00bfh
	ld hl,l7203h
	ld de,0e580h
	call sub_717ah
l00bfh:
	ld a,(08358h)
	or a
	jr z,l00d6h
	ld hl,07070h
	call sub_7249h
	ld hl,l45e4h
	ld de,0e680h
	ld bc,l0007h
	ldir
l00d6h:
	call sub_00deh
	call sub_05beh
	jr l00bfh
sub_00deh:
	call sub_06e6h
	ld a,(0e412h)
	or a
	jr nz,l00f0h
	call sub_2b83h
	call sub_051dh
	call sub_526bh
l00f0h:
	call sub_03a4h
	ld a,(08239h)
	or a
	jr nz,l0104h
	ld a,(0823ah)
	or a
	jr z,l0108h
	ld a,04fh
l0101h:
	call sub_48f2h
l0104h:
	xor a
	ld (0823ah),a
l0108h:
	ld a,(0810fh)
	or a
	jp nz,l013eh
	ld a,(0e40dh)
	cp 004h
	jr nz,l013eh
	ld a,(08242h)
	or a
	jr nz,l014dh
	ld a,058h
	call sub_48f2h
	call sub_1e0dh
	ld a,(08109h)
	cp 001h
	jr nz,l0131h
	call sub_2cdbh
	ld (08101h),a
l0131h:
	ld a,001h
	ld (08242h),a
	ld (0823fh),a
	call sub_2e18h
	jr l014dh
l013eh:
	ld a,(08242h)
	or a
	jr z,l014dh
	ld a,059h
	call sub_48f2h
	xor a
	ld (08242h),a
l014dh:
	call sub_5616h
	call sub_1bc5h
	call sub_1f36h
	call sub_1075h
	call sub_0f22h
	call sub_43c2h
	call sub_0cddh
	call sub_0d61h
	call sub_1f37h
	call sub_15efh
	call sub_1251h
	call sub_1416h
	call sub_171fh
	call sub_182ah
	call sub_1882h
	call sub_4cfbh
	call sub_1abah
l0180h:
	call sub_1987h
	call sub_49abh
	call sub_4a40h
	call sub_4b1ah
	call sub_4ef4h
	call sub_4cfah
	call sub_2634h
	call sub_2673h
	call sub_0603h
	call sub_4b68h
	call sub_4bdfh
	call sub_1a2dh
	call sub_19a4h
	call sub_05d3h
	call sub_2026h
	call 05362h
	call sub_01bbh
	push bc
	ld b,001h
	call sub_0552h
	pop bc
	ret
sub_01bbh:
	in a,(0f0h)
	and 040h
	jp nz,l01c8h
	ld (0e41dh),a
	jp l01cdh
l01c8h:
	ld a,001h
	ld (0e41dh),a
l01cdh:
	ld a,000h
	ld (0e441h),a
	ld a,080h
	ld (0a800h),a
	ld a,000h
	ld (0a800h),a
	ld a,080h
	ld (0a800h),a
	ld a,0d5h
	ld (0a800h),a
	ld a,(0a800h)
	cp 053h
	jr nz,l01f5h
	ld a,000h
	ld (0e41ah),a
	jp l01fah
l01f5h:
	ld a,001h
	ld (0e41ah),a
l01fah:
	ld a,0cbh
	ld (0a800h),a
	ld a,(0a800h)
l0202h:
	cp 0e4h
	jr nz,l020eh
	ld a,000h
	ld (0e41bh),a
	jp l0213h
l020eh:
	ld a,001h
	ld (0e41bh),a
l0213h:
	ld a,0c1h
	ld (0a800h),a
	ld a,(0a800h)
	cp 049h
	jr nz,l0227h
	ld a,000h
	ld (0e41ch),a
	jp l022ch
l0227h:
	ld a,001h
	ld (0e41ch),a
l022ch:
	ld a,0b7h
	ld (0a800h),a
	ld a,(0a800h)
	cp 0dfh
	jr nz,l0240h
	ld a,000h
	ld (0e41eh),a
	jp l0245h
l0240h:
	ld a,001h
	ld (0e41eh),a
l0245h:
	ld a,0adh
	ld (0a800h),a
	ld a,(0a800h)
	cp 09ch
	jr nz,l0259h
	ld a,000h
	ld (0e41fh),a
	jp l025eh
l0259h:
	ld a,001h
	ld (0e41fh),a
l025eh:
	ld a,0a3h
	ld (0a800h),a
	ld a,(0a800h)
	cp 014h
	jr nz,l0272h
	ld a,000h
	ld (0e440h),a
	jp l0277h
l0272h:
	ld a,001h
	ld (0e440h),a
l0277h:
	ld a,099h
	ld (0a800h),a
	ld a,(0a800h)
	cp 0a5h
	jr nz,l028bh
	ld a,000h
	ld (0e442h),a
	jp l0290h
l028bh:
	ld a,001h
	ld (0e442h),a
l0290h:
	ld a,08fh
	ld (0a800h),a
	ld a,(0a800h)
	cp 0cfh
	jr nz,l02a4h
	ld a,000h
	ld (0e443h),a
	jp l02a9h
l02a4h:
	ld a,001h
	ld (0e443h),a
l02a9h:
	ld a,085h
	ld (0a800h),a
	ld a,(0a800h)
	cp 0b1h
	jr nz,l02bdh
	ld a,000h
	ld (0e444h),a
	jp l02c2h
l02bdh:
	ld a,001h
	ld (0e444h),a
l02c2h:
	ld a,0f8h
	ld (0a800h),a
	ld a,(0a800h)
	cp 025h
	jr nz,l02d6h
	ld a,000h
	ld (0e445h),a
	jp l02dbh
l02d6h:
	ld a,001h
	ld (0e445h),a
l02dbh:
	ld a,0eeh
	ld (0a800h),a
	ld a,(0a800h)
	cp 092h
	jr nz,l02efh
	ld a,000h
	ld (0e446h),a
	jp l02f4h
l02efh:
	ld a,001h
	ld (0e446h),a
l02f4h:
	ld a,0e4h
	ld (0a800h),a
	ld a,(0a800h)
	cp 05eh
	jr nz,l0308h
l0300h:
	ld a,000h
	ld (0e447h),a
	jp l030dh
l0308h:
	ld a,001h
	ld (0e447h),a
l030dh:
	ld a,0dah
	ld (0a800h),a
	ld a,(0a800h)
	cp 07bh
	jr nz,l0321h
	ld a,000h
l031bh:
	ld (0e448h),a
	jp l0326h
l0321h:
	ld a,001h
	ld (0e448h),a
l0326h:
	ld a,0d0h
	ld (0a800h),a
	ld a,(0a800h)
	cp 01ch
	jr nz,l033ah
	ld a,000h
	ld (0e449h),a
	jp l033fh
l033ah:
	ld a,001h
	ld (0e449h),a
l033fh:
	ld a,0c6h
	ld (0a800h),a
	ld a,(0a800h)
	cp 08dh
	jr nz,l0353h
	ld a,000h
	ld (0e44ah),a
	jp l0358h
l0353h:
	ld a,001h
	ld (0e44ah),a
l0358h:
	ld a,0bch
	ld (0a800h),a
	ld a,(0a800h)
l0360h:
	cp 06bh
	jr nz,l036ch
	ld a,000h
	ld (0e44bh),a
	jp l0371h
l036ch:
	ld a,001h
	ld (0e44bh),a
l0371h:
	ld a,0b2h
	ld (0a800h),a
	ld a,(0a800h)
	cp 038h
	jr nz,l0385h
	ld a,000h
	ld (0e44ch),a
	jp l038ah
l0385h:
	ld a,001h
	ld (0e44ch),a
l038ah:
	ld a,0a8h
	ld (0a800h),a
	ld a,(0a800h)
	cp 0c0h
	jr nz,l039eh
	ld a,000h
l0398h:
	ld (0e44dh),a
	jp l03a3h
l039eh:
	ld a,001h
	ld (0e44dh),a
l03a3h:
	ret
sub_03a4h:
	push bc
	ld a,(08234h)
	or a
	jr nz,l03b3h
	ld a,(08236h)
	or a
	jr z,l0413h
	jr l03fdh
l03b3h:
	ld a,(08236h)
	or a
	ld a,001h
	jr z,l03beh
	ld a,(081eeh)
l03beh:
	ld b,a
	in a,(056h)
	and 0fch
	jr nz,l03cah
	call sub_0640h
	jr l03ceh
l03cah:
	xor a
	ld (0823eh),a
l03ceh:
	in a,(057h)
	cp b
	jr nz,l0413h
	ld a,(0813ch)
	or a
	jr z,l03f0h
	ld a,0ffh
	ld (081eeh),a
	ld a,082h
	out (081h),a
	ld a,(0818ah)
	res 0,a
	res 1,a
	ld (0818ah),a
	out (080h),a
	jr l03f3h
l03f0h:
	call sub_0610h
l03f3h:
	xor a
	ld (08234h),a
	ld a,(08236h)
	or a
	jr z,l0413h
l03fdh:
	in a,(056h)
	and 0fch
l0401h:
	jr nz,l0408h
	call sub_0640h
	jr l040ch
l0408h:
	xor a
	ld (0823eh),a
l040ch:
	in a,(057h)
	cp 001h
	call z,sub_0611h
l0413h:
	pop bc
	ret
sub_0415h:
	im 2
	di
	ld hl,l0763h
	call sub_043fh
	ld b,004h
	call sub_0545h
	xor a
	call sub_48f2h
	call sub_423dh
	ld a,0aah
	call sub_0697h
	cp 0aah
	jp nz,l06d0h
l0434h:
	xor a
	call sub_495ah
	jp l043bh
l043bh:
	call sub_40c4h
	ret
sub_043fh:
	push bc
	ld a,080h
l0442h:
	ld b,(hl)
	inc hl
	ld c,(hl)
	inc hl
	otir
	cp (hl)
	jr nz,l0442h
	pop bc
	ret
sub_044dh:
	in a,(0e2h)
	and 020h
	ld (08298h),a
	in a,(0e3h)
	and 020h
	ld (08299h),a
	ret
sub_045ch:
	ld bc,002ffh
	ld hl,083feh
	call sub_0514h
	ld bc,00400h
	ld hl,08bffh
	call sub_0514h
	ld a,0ffh
	ld (0e40eh),a
	ld a,000h
	ld (0e412h),a
	ld a,001h
	ld (08233h),a
	call sub_044dh
	call sub_3eb6h
l0483h:
	xor a
	out (089h),a
	out (08ch),a
	out (08dh),a
	out (08eh),a
	out (098h),a
	out (09fh),a
	inc a
	ld (08142h),a
	ld (08101h),a
	ld (08131h),a
	ld (0810fh),a
	ld (08102h),a
	ld (08117h),a
	ld a,006h
	ld (081c6h),a
	out (0a0h),a
	ld b,00ch
	call sub_0545h
	call sub_051dh
	call sub_2026h
	xor a
	set 5,a
	set 6,a
	ld (08152h),a
	out (083h),a
	set 7,a
	res 5,a
	out (083h),a
	ld a,000h
	ld (0822fh),a
	ld a,0e0h
	out (083h),a
	ld (08291h),a
	ld a,050h
	out (089h),a
	ld a,(0a015h)
	ld (08120h),a
	ld (08121h),a
	ld a,(0e4c0h)
	ld (081c7h),a
	ld bc,l0004h
	ld de,08280h
	ld hl,l04fbh
	ldir
	ld a,001h
	or a
	ret z
	call sub_05e6h
	ret c
	call sub_70dbh
	ret
l04fbh:
	add hl,bc
	ld d,b
	ld h,b
	ld b,b
sub_04ffh:
	push af
	ld a,057h
	out (055h),a
	out (056h),a
	out (057h),a
	ld a,0c0h
	out (055h),a
	ld a,048h
	out (056h),a
	pop af
	out (057h),a
	ret
sub_0514h:
	xor a
	ld (hl),a
	dec hl
	dec bc
	ld a,b
	or c
	jr nz,sub_0514h
	ret
sub_051dh:
	push af
	ld a,0ffh
	ld (0814ah),a
	ld a,(0e40eh)
	cp 0ffh
	jr z,l0543h
	ld a,(0e40eh)
	ld (0814ah),a
	ld a,0ffh
	ld (0e40eh),a
	jr l0537h
l0537h:
	ld a,(0829ah)
	or a
	call nz,sub_413bh
	ld a,000h
	ld (0829ah),a
l0543h:
	pop af
	ret
sub_0545h:			; Start of an infinite loop with a bit of a
	push de				; Delay in it
l0546h:
	ld de,012c5h
l0549h:
	dec de
	ld a,d
	or e
	jr nz,l0549h
	djnz l0546h
	pop de				; can't see how you ever get here (NMI needed)
	ret						; ditto
sub_0552h:
	push de
l0553h:
	ld de,00400h
l0556h:
	dec de
	ld a,d
	or e
	jr nz,l0556h
	djnz l0553h
	pop de
	ret
sub_055fh:
	push af
	push de
	push hl
	ld de,(081b1h)
	ld hl,081b7h
	ld a,(de)
	ld (hl),a
	call sub_0572h
	pop hl
	pop de
	pop af
	ret
sub_0572h:
	push af
	push hl
	push de
	push bc
	ld a,087h
	ld (de),a
	ld bc,l1000h
l057ch:
	dec bc
	call sub_03a4h
	call sub_051dh
	ld a,(0814ah)
	cp 0ffh
	jp nz,l05a7h
	ld a,b
	or c
	jr nz,l057ch
	call sub_05afh
	ld bc,l2000h
l0595h:
	dec bc
	call sub_03a4h
	call sub_051dh
	ld a,(0814ah)
	cp 0ffh
	jr nz,l05a7h
	ld a,b
	or c
	jr nz,l0595h
l05a7h:
	call sub_05afh
	pop bc
	pop de
	pop hl
	pop af
	ret
sub_05afh:
	ld a,(08261h)
	cp 001h
	jp z,l05bah
	ld a,(hl)
	jr l05bch
l05bah:
	ld a,020h
l05bch:
	ld (de),a
	ret
sub_05beh:
	push hl
	ld hl,081c0h
	bit 7,(hl)
	pop hl
	ret nz
	call sub_05e6h
	ret c
	ld a,(0e412h)
	jr nz,l05d2h
	call sub_590dh
l05d2h:
	ret
sub_05d3h:
	ld a,001h
	or a
	ret z
	call sub_05e6h
	ret c
	call sub_70e4h
	ld a,(08228h)
	or a
	call z,sub_7873h
	ret
sub_05e6h:
	xor a
l05e7h:
	ret
	push de
	push hl
	push bc
	ld hl,l05fch
	ld bc,l0007h
	ld de,0e660h
	ldir
	pop bc
	pop hl
	pop de
	scf
	jr l05e7h
l05fch:
	ld c,(hl)
	ld c,a
	jr nz,l0658h
l0600h:
	ld c,l
	ld b,l
	ld c,l
sub_0603h:
	ld a,(081c0h)
l0606h:
	bit 3,a
	ret nz
	call sub_05e6h
	call nc,sub_45f9h
	ret
sub_0610h:
	ret
sub_0611h:
	push hl
	push de
	push bc
	ld a,000h
	ld (08236h),a
	ld a,(081c6h)
	set 2,a
	ld (081c6h),a
	out (0a0h),a
	ld a,083h
	out (081h),a
	ld a,(081efh)
	and 004h
	ld hl,0818bh
	jr nz,l0635h
	res 4,(hl)
	jr l0637h
l0635h:
	set 4,(hl)
l0637h:
	ld a,(0818bh)
	out (080h),a
	pop bc
	pop de
	pop hl
	ret
sub_0640h:
	ld a,(0823eh)
	or a
	jr nz,l0678h
	ld a,(08234h)
	or a
	jr z,l065fh
	ld a,082h
	out (081h),a
	ld a,(0818ah)
	xor 003h
	ld (0818ah),a
l0658h:
	out (080h),a
	ld a,001h
	ld (0823eh),a
l065fh:
	ld a,(08236h)
	or a
	jr z,l0678h
	ld a,083h
	out (081h),a
	ld a,(0818bh)
	xor 004h
	ld (0818bh),a
	out (080h),a
	ld a,001h
	ld (0823eh),a
l0678h:
	ret
	in a,(0e2h)
	bit 5,a
	jr z,l0683h
	in a,(0e3h)
	bit 5,a
l0683h:
	ret
	ld hl,(081ech)
	push hl
	pop de
	add hl,de
	ld (081ech),hl
	ret
	ld hl,081edh
	sra (hl)
	dec hl
	rr (hl)
	ret
sub_0697h:
	push hl
	push bc
	push de
	push af
	ld b,003h
	ld de,08000h
l06a0h:
	in a,(087h)
	and 004h
	jr z,l06a0h
	pop af
	ld l,a
	out (085h),a
l06aah:
	ld c,087h
	in h,(c)
	rr h
	jr nc,l06bah
	res 1,c
	in h,(c)
	ld a,l
	cp h
	jr z,l06c3h
l06bah:
	dec de
	ld a,d
	or e
	jr nz,l06aah
	djnz l06aah
	ld h,000h
l06c3h:
	ld a,h
	pop de
	pop bc
	pop hl
	ret
sub_06c8h:
	in a,(087h)
	rrca
	jr nc,l06cfh
	in a,(085h)
l06cfh:
	ret
l06d0h:
	ld a,008h
	out (09fh),a
	ld b,004h
	call sub_0545h
	xor a
	out (09fh),a
l06dch:
	call sub_06c8h
	cp 0aah
	jr nz,l06dch
	jp l0434h
sub_06e6h:
	ld a,(0e40dh)
	cp 001h
	jr z,l0723h
	cp 000h
	jr nz,l06ffh
	ld a,001h
	ld (0823fh),a
	xor a
	ld (08241h),a
	ld (08240h),a
	jr l072dh
l06ffh:
	cp 002h
	jr nz,l0711h
	ld a,001h
	ld (08240h),a
	xor a
	ld (0823fh),a
	ld (08241h),a
	jr l072dh
l0711h:
	cp 003h
	jr nz,l072dh
	ld a,001h
	ld (08241h),a
	xor a
	ld (0823fh),a
	ld (08240h),a
	jr l072dh
l0723h:
	xor a
	ld (0823fh),a
	ld (08240h),a
	ld (08241h),a
l072dh:
	ld a,(0e414h)
	cp 000h
	jr z,l0746h
	cp 001h
	jr z,l0751h
	cp 002h
	jr z,l0759h
	cp 003h
	jr z,l075eh
l0740h:
	ld a,0ffh
	ld (0e414h),a
	ret
l0746h:
	ld a,(08117h)
	or a
	jr z,l0740h
l074ch:
	call sub_2df1h
	jr l0740h
l0751h:
	ld a,(08117h)
	or a
	jr nz,l0740h
	jr l074ch
l0759h:
	call sub_2e08h
	jr l0740h
l075eh:
	call sub_2e18h
	jr l0740h
l0763h:
	inc bc
	add a,c
	ex af,af'
	ld (001c1h),hl
	ld d,a
	ld b,e
	ld bc,l4354h+2
	ld bc,l4354h+1
	ld bc,l4354h
	add hl,bc
	ld d,d
	jr l078ch
	ld c,h
	inc de
	pop bc
	dec d
	jp pe,l0011h
	add hl,bc
	ld d,e
	jr $+22
	ld c,h
	inc de
	pop bc
	dec d
	jp pe,l0011h
	ld (bc),a
	ld c,(hl)
l078ch:
	inc bc
	rrca
	inc b
	ld c,a
	inc bc
	rst 8
	ld e,067h
	add hl,bc
	jp po,sub_1416h+2
	ld c,h
	inc de
	pop bc
	dec d
	jp pe,l0011h
	add hl,bc
	ex (sp),hl
	jr l07b7h
	ld c,h
	inc de
	pop bc
	dec d
	jp pe,l0011h
l07aah:
	add hl,bc
	add a,(hl)
	jr l07c2h
	ld c,h
	inc de
	pop bc
	dec d
	jp pe,l0011h
	add hl,bc
	add a,a
l07b7h:
	jr l07cdh
	ld c,h
	inc de
	pop bc
	dec d
	jp pe,l0011h
	add a,b
l07c1h:
	add hl,bc
l07c2h:
	jp po,sub_1416h+2
	ld c,h
	inc de
	pop bc
	dec d
	jp pe,l0011h
	add a,b
l07cdh:
	add hl,bc
	ex (sp),hl
	jr l07e5h
	ld c,h
	inc de
	pop bc
	dec d
	jp pe,l0011h
	add a,b
	ld b,(hl)
	inc sp
	ld (l4552h),a
	ld c,l
	ld c,a
	ld d,h
	ld b,l
	dec l
	ld b,l
	ld d,d
l07e5h:
	ld d,d
	ld c,a
	ld d,d
	jr nz,$+97
l07eah:
	jr nz,l080ch
	jr nz,$+34
	jr nz,$+34
	jr nz,l0812h
	jr nz,$+34
	jr nz,$+34
	jr nz,$+34
sub_07f8h:
	ld hl,00100h
	ld (08000h),hl
	ld a,030h
l0800h:
	ld (08002h),a
	ld hl,l7f7fh
	ld (08004h),hl
	ld (0800ch),hl
l080ch:
	ld hl,04040h
	ld (0800ah),hl
l0812h:
	ld (08006h),hl
	ld a,000h
	ld (08014h),a
	call sub_0c70h
	call sub_08d7h
	ld a,000h
	ld (0e800h),a
	ret
sub_0826h:
	call sub_09d9h
	call sub_08d0h
l082ch:
	call sub_0837h
	cp 01bh
	ret z
	call sub_0872h
	jr l082ch
sub_0837h:
	call sub_0860h
	jr c,sub_0837h
	ld hl,(08012h)
	ex de,hl
	ld hl,(08010h)
	add hl,de
	ld b,(hl)
l0845h:
	ld (hl),087h
l0847h:
	ld de,01800h
l084ah:
	call sub_0860h
	jr c,l085eh
	call sub_03a4h
	dec de
	ld a,d
	or e
	jr nz,l084ah
	ld a,b
	cp (hl)
	jr z,l0845h
	ld (hl),b
	jr l0847h
l085eh:
	ld (hl),b
	ret
sub_0860h:
	in a,(052h)
	rrca
	jr nc,l086dh
l0865h:
	in a,(052h)
	rrca
	jr nc,l0865h
	in a,(050h)
	ret
l086dh:
	in a,(052h)
	ld a,000h
	ret
sub_0872h:
	cp 00dh
	jp z,l08b6h
	cp 01eh
	jp z,sub_08d0h
	cp 01ah
	jp z,sub_08d7h
	cp 008h
	jp z,l08f1h
	cp 00bh
	jp z,l08fch
	cp 00ch
	jp z,l090bh
	cp 00ah
	jp z,l091dh
	cp 07fh
	jp z,l08aah
	cp 093h
	ret p
	cp 020h
	ret c
sub_08a0h:
	ld hl,(08012h)
	call sub_09fdh
	ld (08012h),hl
	ret
l08aah:
	call l08f1h
	ld a,020h
	call sub_08a0h
	call l08f1h
	ret
l08b6h:
	push af
	ld hl,(08012h)
	ld a,l
	or 01fh
	ld l,a
	inc hl
	call sub_0ccdh
	ld a,h
	cp 004h
	call sub_0cd4h
	jp z,l08ceh
	ld (08012h),hl
l08ceh:
	pop af
	ret
sub_08d0h:
	ld hl,l0000h
	ld (08012h),hl
	ret
sub_08d7h:
	call sub_09d9h
	jr l08dfh
sub_08dch:
	call sub_09e2h
l08dfh:
	call sub_08d0h
	ld hl,(08010h)
	ld bc,00400h
l08e8h:
	ld (hl),000h
	inc hl
	dec bc
	ld a,b
	or c
	jr nz,l08e8h
	ret
l08f1h:
	ld hl,(08012h)
	ld a,h
	or l
	ret z
	dec hl
	ld (08012h),hl
	ret
l08fch:
	ld de,0ffe0h
	ld hl,(08012h)
	add hl,de
	ld a,h
	cp 0ffh
	ret z
l0907h:
	ld (08012h),hl
	ret
l090bh:
	ld hl,(08012h)
	inc hl
	call sub_0ccdh
	ld a,h
	cp 004h
	call sub_0cd4h
	ret z
	ld (08012h),hl
	ret
l091dh:
	ld de,l0020h
	ld hl,(08012h)
	add hl,de
	call sub_0ccdh
	ld a,h
	cp 004h
	call sub_0cd4h
	ret z
	ld (08012h),hl
	ret
sub_0932h:
	call sub_09e2h
	xor a
	ld (08014h),a
	call sub_097dh
l093ch:
	ld a,(08012h)
	and 01fh
	cp 007h
	call nc,sub_0979h
	call sub_0837h
	cp 01bh
	ret z
	call sub_0951h
	jr l093ch
sub_0951h:
	cp 00dh
	jp z,sub_0979h
	cp 008h
	jp z,l09a8h
	cp 00bh
	jp z,l09ceh
	cp 00ch
	jp z,l090bh
	cp 00ah
	jp z,sub_0979h
	cp 07fh
	jp z,l0996h
	cp 093h
	ret p
	cp 020h
	ret c
	call sub_08a0h
	ret
sub_0979h:
	ld hl,08014h
	inc (hl)
sub_097dh:
	ld hl,08014h
	ld l,(hl)
	ld h,000h
	add hl,hl
	ld de,l09a2h
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(hl)
	cp 004h
	jp nc,l09ceh
	ex de,hl
	ld (08012h),hl
	ret
l0996h:
	call l09a8h
	ld a,020h
	call sub_08a0h
	call l09a8h
	ret
l09a2h:
	nop
	inc bc
	jr nz,$+5
	rst 38h
	rst 38h
l09a8h:
	ld hl,(08012h)
	push hl
	call sub_097dh
	ld a,(08012h)
	pop hl
	cp l
	dec hl
	ex af,af'
	ld a,h
	cp 002h
	jr nz,l09bch
	inc hl
l09bch:
	ex af,af'
	ld (08012h),hl
	ret nz
	call l09ceh
	ld hl,08012h
	ld a,(hl)
	and 0e0h
	add a,006h
	ld (hl),a
	ret
l09ceh:
	ld hl,08014h
	xor a
	cp (hl)
	ret z
	dec (hl)
	call sub_097dh
	ret
sub_09d9h:
	push hl
	ld hl,0e000h
	ld (08010h),hl
	pop hl
	ret
sub_09e2h:
	push hl
	ld hl,0e400h
	ld (08010h),hl
	pop hl
	ret
sub_09ebh:
	push af
	ld a,0ffh
	ld (08015h),a
	pop af
	ret
sub_09f3h:
	push af
	xor a
	ld (08017h),a
	ld (08015h),a
	pop af
	ret
sub_09fdh:
	push de
	push af
	push hl
	ex de,hl
	ld hl,(08010h)
	add hl,de
	ld (hl),a
	pop hl
	inc hl
	call sub_0ccdh
	ld a,h
	cp 004h
	call sub_0cd4h
	jr nz,l0a14h
	dec hl
l0a14h:
	pop af
	pop de
	ret
sub_0a17h:
	bit 2,h
	ret nz
	push de
	push hl
	push af
	jr l0a25h
sub_0a1fh:
	push de
	push hl
	push af
	call sub_0a38h
l0a25h:
	ex de,hl
	ld hl,(08010h)
l0a29h:
	add hl,de
	ld d,a
	ld a,(08015h)
	and a
	jr nz,l0a32h
	ld d,a
l0a32h:
	ld a,d
	ld (hl),a
	pop af
	pop hl
	pop de
	ret
sub_0a38h:
	push af
	ld a,l
	rrca
	rrca
	rrca
	and 01fh
	ld l,a
	ld a,h
	rlca
	rlca
	push af
	and 003h
	ld h,a
	pop af
	and 0e0h
	add a,l
	ld l,a
	pop af
	ret
sub_0a4eh:
	call sub_09e2h
	ld hl,(08000h)
	ld a,(08002h)
	cp 00ah
	ret c
	cp 03fh
	ret nc
	ld c,a
	rrca
	rrca
	rrca
	and 00fh
	ld b,a
	ld a,09eh
l0a66h:
	call sub_09fdh
	ld a,09fh
	djnz l0a66h
	ld a,c
	and 007h
	add a,0a0h
	ld b,006h
l0a74h:
	call sub_09fdh
	xor a
	djnz l0a74h
	ret
	ld hl,(0800ah)
	ex de,hl
	ld hl,(08004h)
	ld a,l
	and 0f8h
	ld l,a
	ld a,e
	or 00fh
	ld e,a
	and 0feh
	rrca
	ld b,a
	cpl
	add a,l
	jr c,l0a93h
	xor a
l0a93h:
	ld l,a
	add a,e
	jr nc,l0a9ah
	ld a,e
	cpl
	ld l,a
l0a9ah:
	ld a,h
	and 0f8h
	ld h,a
	ld a,d
	or 00fh
	ld b,a
	ld a,(0814eh)
	cp 001h
	jr nz,l0aaah
	ld b,d
l0aaah:
	ld a,b
	ld d,a
	and 0feh
	rrca
	ld b,a
	add a,000h
	cpl
	add a,000h
	add a,h
	push af
	sub 000h
	pop af
	jr c,l0abdh
	xor a
l0abdh:
	ld h,a
	add a,000h
	add a,d
	push af
	sub 000h
	pop af
	jr nc,l0acch
	ld a,d
	add a,000h
	cpl
	ld h,a
l0acch:
	ld (08008h),hl
	ex de,hl
	ld (0800eh),hl
	call sub_0af4h
	ld hl,(08008h)
	ld (08006h),hl
	ld hl,(0800eh)
	ld (0800ch),hl
	ret
sub_0ae3h:
	call sub_09d9h
	ld hl,(0800ch)
	ex de,hl
	ld hl,(08006h)
	call sub_09f3h
	call sub_0b0ah
	ret
sub_0af4h:
	call sub_0ae3h
	ld hl,08017h
	set 3,(hl)
	call sub_09ebh
	ld hl,(0800eh)
	ex de,hl
	ld hl,(08008h)
	call sub_0b0ah
	ret
sub_0b0ah:
	ld a,e
	and 0f8h
	rrca
	rrca
	rrca
	ld e,a
	ld a,d
	and 0f8h
	rrca
	rrca
	rrca
	ld d,a
	push de
	ld bc,l0020h
	call sub_0a38h
	pop de
	ld a,d
	cp 000h
	jr nz,l0b2dh
	ld a,e
	cp 000h
	ld a,0e4h
	jp z,l0b5fh
l0b2dh:
	push de
	push hl
	ld a,0a8h
l0b31h:
	call sub_0a17h
	inc hl
	dec e
	jr nz,l0b31h
	ld a,0bfh
l0b3ah:
	call sub_0a17h
	add hl,bc
	ld a,0bch
	dec d
	jr nz,l0b3ah
	pop hl
	pop de
	ld a,0c0h
l0b47h:
	call sub_0a17h
	add hl,bc
	ld a,0c2h
	dec d
	jp nz,l0b47h
	ld a,0beh
l0b53h:
	call sub_0a17h
	inc hl
	ld a,0afh
	dec e
	jp nz,l0b53h
	ld a,0bdh
l0b5fh:
	call sub_0a17h
	ret
	ld hl,(0800ah)
	ex de,hl
	ld hl,(08004h)
	ld a,0f7h
	cp l
	jr nc,l0b70h
	ld l,a
l0b70h:
	ld a,008h
	cp e
	jr c,l0b76h
	ld e,a
l0b76h:
	ld a,e
	add a,l
	jr nc,l0b7dh
	ld a,l
	cpl
	ld e,a
l0b7dh:
	ld (08008h),hl
	ex de,hl
	ld (0800eh),hl
	call sub_0baah
	ld hl,(08008h)
	ld (08006h),hl
	ld hl,(0800eh)
	ld (0800ch),hl
	ret
sub_0b94h:
	call sub_09d9h
	ld a,(08271h)
	or a
	ret z
	ld hl,(0800ch)
	ex de,hl
	ld hl,(08006h)
	call sub_09f3h
	call sub_0bbch
	ret
sub_0baah:
	call sub_0b94h
	ld hl,08017h
	set 0,(hl)
	ld hl,(0800eh)
	ex de,hl
	ld hl,(08008h)
	call sub_09ebh
sub_0bbch:
	call sub_0bc3h
	ld a,e
	add a,l
	ret c
	ld l,a
sub_0bc3h:
	push hl
	push de
	ld h,018h
	ld b,01ah
	ld a,l
	and 007h
	add a,0b0h
	ld de,l0020h
	call sub_0a38h
l0bd4h:
	call sub_0a17h
	add hl,de
	djnz l0bd4h
	pop de
	pop hl
	ret
sub_0bddh:
	call sub_0c01h
	ld hl,08017h
	set 1,(hl)
	call sub_09ebh
	ld hl,(08004h)
	ld (08006h),hl
sub_0beeh:
	ld l,000h
	ld b,020h
	ld a,h
	and 007h
	add a,0a8h
	call sub_0a38h
l0bfah:
	call sub_0a17h
	inc hl
	djnz l0bfah
	ret
sub_0c01h:
	call sub_09d9h
	ld hl,(08006h)
	call sub_09f3h
	call sub_0beeh
	ret
	call sub_0c63h
	ld hl,08017h
	set 2,(hl)
	ld hl,(08004h)
	call sub_09ebh
	ld (08006h),hl
sub_0c1fh:
	ld c,008h
	ld b,0d0h
	ld a,l
	and 004h
	jr z,l0c2ah
	ld b,0d5h
l0c2ah:
	ld a,h
	and 004h
	ld a,b
	jr z,l0c33h
	add a,00ah
	ld b,a
l0c33h:
	call sub_0a1fh
	push hl
	pop de
	inc b
	ld a,d
	sub c
	jr c,l0c42h
	ld h,a
	ld a,b
	call sub_0a1fh
l0c42h:
	inc b
	ld h,d
	ld a,e
	add a,c
	jr c,l0c4dh
	ld l,a
	ld a,b
	call sub_0a1fh
l0c4dh:
	inc b
	ld l,e
	ld a,d
	add a,c
	jr c,l0c58h
	ld h,a
	ld a,b
	call sub_0a1fh
l0c58h:
	inc b
	ld h,d
	ld a,e
	sub c
	ret c
	ld l,a
	ld a,b
	call sub_0a1fh
	ret
sub_0c63h:
	call sub_09d9h
	ld hl,(08006h)
	call sub_09f3h
	call sub_0c1fh
	ret
sub_0c70h:
	call sub_08dch
	ld de,045ach
	jr l0c95h
sub_0c78h:
	ld hl,083ffh
	ld de,0e000h
	ld bc,00400h
	ldir
	xor a
	ret
sub_0c85h:
	push de
	ld hl,0e000h
	ld de,083ffh
	ld bc,00400h
	ldir
	pop de
sub_0c92h:
	call sub_08d7h
l0c95h:
	ld a,(de)
	inc de
	cp 00dh
	ret z
	cp 00ah
	jr z,l0ca3h
	call sub_08a0h
	jr l0c95h
l0ca3h:
	call l08b6h
	jr l0c95h
	xor a
	ret
sub_0caah:
	push bc
	push hl
	ld bc,l0401h
	ld hl,0e000h
l0cb2h:
	xor a
	ld (08016h),a
	cpi
	jp po,l0ccah
	jr z,l0cb2h
	or 020h
	inc bc
	dec hl
	cpi
	jr z,l0cb2h
	ld a,001h
	ld (08016h),a
l0ccah:
	pop hl
	pop bc
	ret
sub_0ccdh:
	push de
	ld de,l0000h
	add hl,de
	pop de
	ret
sub_0cd4h:
	push af
	push de
	ld de,l0000h
	add hl,de
	pop de
	pop af
	ret
sub_0cddh:
	ld a,(0821ch)
	cp 001h
	jp z,l0d18h
	ld a,(08217h)
	cp 001h
	jp z,l0cf8h
	ld a,(0810fh)
	ld hl,0810eh
	cp (hl)
	jp z,l0d18h
	ld (hl),a
l0cf8h:
	ld a,(0810fh)
	cp 001h
	jp z,l0d19h
	xor a
	ld (08215h),a
	ld (08216h),a
	ld (08210h),a
	ld a,082h
	out (081h),a
	ld a,(0818ah)
	res 6,a
	ld (0818ah),a
	out (080h),a
l0d18h:
	ret
l0d19h:
	ld a,038h
	call sub_17b3h
	call sub_0ef0h
	ld hl,0818ah
	set 6,(hl)
	ld a,(hl)
	out (080h),a
	call sub_25c3h
	ld a,041h
	call sub_495ah
	ld a,06fh
	call sub_48f2h
	ld a,075h
	call sub_48f2h
	ld a,046h
	call sub_48f2h
	xor a
	ld (08253h),a
	ld (08217h),a
	ld (08212h),a
	ld (08211h),a
	inc a
	ld (08215h),a
	ld (08216h),a
	ld (08210h),a
	ld a,(08116h)
	xor 001h
	ld (08116h),a
	jr l0d18h
sub_0d61h:
	ld a,(08217h)
	cp 001h
	jp z,l0d9eh
	ld a,(08143h)
	cp 001h
	jp z,l0df0h
	ld a,(0821ch)
	cp 001h
	jp z,l0dfah
l0d79h:
	ld a,(0810dh)
	ld hl,0810ch
	cp (hl)
	jp nz,l0df1h
	ld a,(08117h)
	ld hl,08116h
	cp (hl)
	jp nz,l0e1bh
	ld a,(08140h)
	cp 004h
	jr z,l0df0h
	ld a,(08119h)
	ld hl,08118h
	cp (hl)
	jp z,l0df0h
l0d9eh:
	ld a,(0810dh)
	or a
	jp z,l0e5bh
	ld a,(08224h)
	or a
	jr z,l0db2h
	xor a
	ld (08224h),a
	jp l0e2dh
l0db2h:
	xor a
	ld (08141h),a
	ld a,028h
	call sub_17b3h
	xor a
	ld (08253h),a
	ld (08217h),a
	ld a,(08119h)
	ld (08118h),a
	ld a,082h
	out (081h),a
	ld a,(0818ah)
	set 7,a
	set 5,a
	ld (0818ah),a
	out (080h),a
	call sub_2fd4h
	ld a,001h
	ld (08116h),a
	ld (08117h),a
	ld (0822ah),a
	ld a,(08218h)
	or a
	jp nz,l0e6ch
	call sub_0e8fh
l0df0h:
	ret
l0df1h:
	ld a,(0810dh)
	ld (0810ch),a
	jp l0d9eh
l0dfah:
	ld a,0ffh
	call sub_4999h
	or a
	jp nz,l0d79h
	ld (0821ch),a
	ld (08117h),a
	ld (08116h),a
	call sub_48f2h
	call sub_0efbh
	inc a
	ld (08229h),a
	call sub_16a5h
	jr l0df0h
l0e1bh:
	ld a,(0810dh)
	or a
	jr z,l0df0h
	ld a,(08143h)
	or a
	jr nz,l0df0h
	ld a,(0822dh)
	or a
	jr nz,l0df0h
l0e2dh:
	ld a,(08117h)
	ld (08116h),a
	or a
	jp nz,l0d9eh
sub_0e37h:
	xor a
	ld (0821ch),a
	ld (08224h),a
	call sub_48f2h
	call sub_495ah
	inc a
	ld (08229h),a
	call sub_16a5h
	call sub_0efbh
	ld a,(08143h)
	or a
	jp z,l0df0h
	ld (08224h),a
	jp l0df0h
l0e5bh:
	call sub_0ef0h
	xor a
	ld (0821ch),a
	inc a
	ld (08229h),a
	call sub_16a5h
	jp l0df0h
l0e6ch:
	ld a,(08119h)
	cp 031h
	jr z,l0e8ch
	ld a,001h
l0e75h:
	ld (0821ch),a
	ld (08837h),a
	ld a,058h
	call sub_495ah
	ld a,(08121h)
	ld (08120h),a
	call sub_0ee1h
	jp l0df0h
l0e8ch:
	xor a
	jr l0e75h
sub_0e8fh:
	ld a,(0e40dh)
	cp 000h
	jr z,l0ea4h
	cp 001h
	jr z,l0ea4h
	cp 002h
	jp z,l0eb1h
	cp 003h
	jp z,l0ebah
l0ea4h:
	ld a,(08119h)
	sub 034h
	jr nc,l0ec3h
l0eabh:
	xor a
	ld (0821ch),a
	jr l0ecbh
l0eb1h:
	ld a,(08119h)
	sub 033h
	jr nc,l0ec3h
	jr l0eabh
l0ebah:
	ld a,(08119h)
	sub 033h
	jr nc,l0ec3h
	jr l0eabh
l0ec3h:
	ld a,001h
	ld (0821ch),a
	ld (08837h),a
l0ecbh:
	ld a,(0822bh)
	cp 001h
	jr nz,l0edfh
	ld hl,0b934h
	call sub_1b10h
	call sub_25e1h
	ld a,056h
	jr sub_0ee1h
l0edfh:
	ld a,042h
sub_0ee1h:
	call sub_495ah
	ld a,(08119h)
	call sub_495ah
	ld a,068h
	call sub_48f2h
	ret
sub_0ef0h:
	ld a,082h
	out (081h),a
	ld a,(0818ah)
	res 7,a
	jr l0f02h
sub_0efbh:
	ld a,082h
	out (081h),a
	ld a,(0818ah)
l0f02h:
	res 5,a
l0f04h:
	ld (0818ah),a
	out (080h),a
	ret
sub_0f0ah:
	ld a,082h
	out (081h),a
	ld a,(0818ah)
	res 7,a
	set 5,a
	jr l0f04h
sub_0f17h:
	ld a,082h
	out (081h),a
	ld a,(0818ah)
	res 7,a
	jr l0f04h
sub_0f22h:
	ld a,(08241h)
	or a
	jp nz,l1050h
	ld a,(0823fh)
	or a
	jp nz,l1050h
	ld a,(08242h)
	or a
	jp nz,l1050h
	ld a,(08239h)
	or a
	jp nz,l1000h
	ld a,(08111h)
	ld hl,08110h
	cp (hl)
	jp nz,l0f48h
l0f48h:
	ld a,(08111h)
	ld (08110h),a
	or a
	jp z,l1012h
	call sub_0f17h
	ld hl,0818ah
	set 4,(hl)
	ld a,(hl)
	out (080h),a
	ld a,(08118h)
	ld hl,08119h
	cp (hl)
	jp nz,l0fd9h
	ld a,(08117h)
	or a
	jr z,l0f72h
	ld a,068h
	call sub_48f2h
l0f72h:
	ld a,(0825ch)
	or a
	jr nz,l0f7dh
	ld a,03fh
	call sub_17b3h
l0f7dh:
	xor a
	ld (08253h),a
	inc a
	ld (08211h),a
	ld (08212h),a
	call sub_120bh
	ld a,(08117h)
	ld hl,08116h
	cp (hl)
	jp nz,l0fd1h
	ld a,(08224h)
	or a
	ld a,000h
	ld (08224h),a
	ld a,(08117h)
	jr nz,l0fd1h
	ld a,(0825ch)
	or a
	jr nz,l0fc8h
	inc a
	ld (0825ch),a
	ld a,(08117h)
	or a
	jr nz,l0fd9h
	ld a,(08119h)
	push af
	ld a,038h
	ld (08119h),a
	call sub_0fefh
	pop af
	ld (08119h),a
	call sub_0e37h
	jr l1000h
l0fc8h:
	ld a,(08117h)
	or a
	call nz,sub_0f0ah
	jr l1000h
l0fd1h:
	or a
	jr nz,l0fd9h
	call sub_0e37h
	jr l1000h
l0fd9h:
	ld a,(08119h)
	ld (08118h),a
	ld a,001h
	ld (08117h),a
	ld (08116h),a
	ld a,068h
	call sub_48f2h
	call sub_0f0ah
sub_0fefh:
	ld a,057h
	call sub_495ah
	call sub_1057h
	call sub_1b76h
	ld a,(08119h)
	call sub_495ah
l1000h:
	ret
	ld a,001h
	ld (0810dh),a
	ld (0810ch),a
	xor a
	ld (08111h),a
	ld (08110h),a
	jr l1000h
l1012h:
	ld a,(0825ch)
	or a
	jp z,l1000h
	ld a,(0e40dh)
	cp 000h
	jr z,l1024h
	cp 003h
	jr nz,l1027h
l1024h:
	call sub_2e18h
l1027h:
	ld a,082h
	out (081h),a
	ld a,(0818ah)
	res 4,a
	ld (0818ah),a
	out (080h),a
	xor a
	call sub_120bh
	ld (0825ch),a
	ld a,(08115h)
	or a
	jp nz,l104dh
	ld (08211h),a
	ld (08212h),a
	xor a
	ld (0e408h),a
l104dh:
	jp l1000h
l1050h:
	xor a
	ld (08111h),a
	jp l1012h
sub_1057h:
	ld hl,08080h
	ld (08004h),hl
	ld (08006h),hl
	ld (0e40bh),hl
	ld hl,l3f3fh
	ld (0800ah),hl
	ld (0800ch),hl
	ld (0e409h),hl
	ld a,002h
	ld (0e408h),a
	ret
sub_1075h:
	ld a,(08241h)
	or a
	jp nz,l11f7h
	ld a,(0823fh)
	or a
	jp nz,l11f7h
	ld a,(08242h)
	or a
	jp nz,l11f7h
	ld a,(08239h)
	or a
	jp nz,l10a1h
	ld a,(08115h)
	ld hl,08114h
	cp (hl)
	jr nz,l10a2h
	ld a,(08253h)
	or a
	jp nz,l10ebh
l10a1h:
	ret
l10a2h:
	ld a,(08115h)
	ld (08114h),a
	or a
	jp z,l11afh
	call sub_0f17h
	ld hl,0818ah
	set 2,(hl)
	ld a,(hl)
	out (080h),a
	ld a,(0825bh)
	or a
	jr nz,l10c2h
	ld a,03fh
	call sub_17b3h
l10c2h:
	ld hl,l0000h
	ld (08004h),hl
	call sub_1215h
	call sub_1233h
	ld a,06ch
	call sub_48f2h
	ld a,(08117h)
	or a
	jr z,l10deh
	ld a,068h
	call sub_48f2h
l10deh:
	ld a,001h
	ld (08211h),a
	ld (08212h),a
	call sub_1205h
	jr l1142h
l10ebh:
	ld a,(08117h)
	ld hl,08116h
	cp (hl)
	jr z,l10fdh
	ld (08116h),a
	or a
	jr nz,l10a2h
	call sub_0e37h
l10fdh:
	ld a,(08117h)
	or a
	call nz,sub_0f0ah
	ld hl,(08004h)
	ld a,(08182h)
	cp l
	jr nz,l1142h
	ld a,(08183h)
	cp 0f8h
	jr c,l1119h
	ld a,0f8h
	ld (08183h),a
l1119h:
	cp h
	jr nz,l1142h
	ld hl,(0800ah)
	ld a,(08184h)
	cp l
	jr nz,l1142h
	ld a,(08185h)
	ld (08185h),a
	cp h
	jr nz,l1142h
	ld a,(08119h)
	ld hl,08118h
	cp (hl)
	jp z,l10a1h
	ld a,001h
	ld (08117h),a
	ld (08116h),a
	jr l118bh
l1142h:
	ld a,(08182h)
	ld l,a
	ld a,(08183h)
	ld h,a
	ld (08004h),hl
	ld (08006h),hl
	ld (0e40bh),hl
	ld a,(08184h)
	ld l,a
	ld a,(08185h)
	ld h,a
	ld (0800ah),hl
	ld (0800ch),hl
	ld (0e409h),hl
	ld a,001h
	ld (0e408h),a
	ld a,(08117h)
	or a
	jr nz,l118bh
	ld a,(0825bh)
	or a
	ld a,(08119h)
	ld b,a
	push bc
	ld a,038h
	ld (08119h),a
	call z,sub_119eh
	pop bc
	ld a,b
	ld (08119h),a
	call sub_0e37h
	jp l10a1h
l118bh:
	call sub_0f0ah
	ld a,(08119h)
	ld (08118h),a
	ld a,068h
	call sub_48f2h
	ld a,06ch
	call sub_48f2h
sub_119eh:
	ld a,057h
	call sub_495ah
	call sub_1b76h
	ld a,(08119h)
	call sub_495ah
	jp l10a1h
l11afh:
	ld a,(0825bh)
	or a
	jp z,l11feh
	ld a,(0e40dh)
	cp 000h
	jr z,l11c1h
	cp 003h
	jr nz,l11c4h
l11c1h:
	call sub_2e18h
l11c4h:
	ld a,082h
	out (081h),a
	ld a,(0818ah)
	res 2,a
	ld (0818ah),a
	out (080h),a
	call sub_1224h
	call sub_1242h
	ld a,06bh
	call sub_48f2h
	ld a,(08111h)
	or a
	jr nz,l11e9h
	ld (08212h),a
	ld (08211h),a
l11e9h:
	xor a
	ld (08017h),a
	xor a
	ld (0e408h),a
	call sub_1205h
	jp l10a1h
l11f7h:
	xor a
	ld (08115h),a
	jp l11afh
l11feh:
	xor a
	ld (08253h),a
	jp l10a1h
sub_1205h:
	ld (08253h),a
	ld (0825bh),a
sub_120bh:
	ld (08210h),a
	ld (08213h),a
	ld (08214h),a
	ret
sub_1215h:
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	or 0c0h
	ld (0818ch),a
	out (080h),a
	ret
sub_1224h:
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	and 03fh
	ld (0818ch),a
	out (080h),a
	ret
sub_1233h:
	ld a,085h
	out (081h),a
	ld a,(0818dh)
	or 030h
	ld (0818dh),a
	out (080h),a
	ret
sub_1242h:
	ld a,085h
	out (081h),a
	ld a,(0818dh)
	and 0cfh
	ld (0818dh),a
	out (080h),a
	ret
sub_1251h:
	ld a,(08241h)
	or a
	jp nz,l1376h
	ld a,(0823fh)
	or a
	jp nz,l1376h
	ld a,(08242h)
	or a
	jp nz,l1376h
	ld a,(08239h)
	or a
	jp nz,l131ch
	ld a,(08211h)
	or a
	jp nz,l132ah
	ld a,(08140h)
	and 008h
	or a
	jp z,l1376h
	ld a,(0826ah)
	or a
	jr nz,l128ah
	ld a,003h
	call sub_17b3h
	jr l12aeh
l128ah:
	call sub_1215h
	set 5,a
	ld (0818ch),a
	out (080h),a
	ld a,(0822ah)
	or a
	jr nz,l12aeh
	ld a,001h
	ld (0e402h),a
	ld hl,(08004h)
	ld a,(08182h)
	cp l
	jr nz,l12aeh
	ld a,(08183h)
	cp h
	jr z,l131dh
l12aeh:
	ld a,06ch
	call sub_48f2h
	ld a,(08182h)
	ld l,a
	ld a,(08183h)
	ld h,a
	ld (08004h),hl
	ld (08006h),hl
	ld (0e403h),hl
	ld a,001h
	ld (0e402h),a
	ld a,001h
	ld (0826ah),a
	ld (08231h),a
	ld a,(08220h)
	or a
	jr z,l130fh
	ld a,(0822ah)
	or a
	jr nz,l12e3h
	ld a,(0822dh)
	or a
	jr z,l130fh
l12e3h:
	ld a,053h
	call sub_495ah
	call sub_1b8bh
	ld a,068h
	call sub_48f2h
	ld a,06ch
	call sub_48f2h
	ld hl,0b91fh
	call sub_1b10h
	call sub_2fd4h
	call sub_4cebh
	ld a,001h
	ld (08229h),a
	call sub_1e80h
	call sub_1710h
	call sub_1785h
l130fh:
	xor a
	ld (08217h),a
	ld (08252h),a
	ld (0822ch),a
	ld (0822ah),a
l131ch:
	ret
l131dh:
	ld a,06ch
	call sub_48f2h
	ld a,(0826ah)
	or a
	jr nz,l130fh
	jr l12aeh
l132ah:
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	res 5,a
	ld (0818ch),a
	out (080h),a
	ld a,(08143h)
	or a
	jr nz,l135ah
	ld a,(08140h)
	bit 2,a
	jr nz,l135ah
	ld a,(08115h)
	or a
	jr nz,l135ah
	ld a,(0821eh)
	or a
	jr nz,l135ah
	ld a,(08125h)
	or a
	jr nz,l135ah
	call sub_1224h
l135ah:
	ld a,(08252h)
	or a
	jp nz,l131ch
	xor a
	ld (08217h),a
	ld (0826ah),a
	ld a,(08140h)
	res 3,a
	ld (08140h),a
	call sub_1dech
	jp l13deh
l1376h:
	ld a,(08252h)
	or a
	jp nz,l131ch
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	res 5,a
	ld (0818ch),a
	out (080h),a
	ld a,000h
	ld (0e402h),a
	ld a,(08143h)
	or a
	jr nz,l13ach
	ld a,(08140h)
	bit 2,a
	jr nz,l13ach
	ld a,(08115h)
	or a
	jr nz,l13ach
	ld a,(0821eh)
	or a
	jr nz,l13ach
	call sub_1224h
l13ach:
	ld hl,(08004h)
	dec hl
	dec hl
	ld (08004h),hl
	call sub_179ch
	xor a
	ld (0e402h),a
	ld (0826ah),a
	ld a,(0822dh)
	or a
	jr z,l13cbh
	xor a
	ld (0822dh),a
	ld (08117h),a
l13cbh:
	xor a
sub_13cch:
	ld (08231h),a
	ld a,(0810dh)
	or a
	jr z,l13dbh
	call sub_13fdh
	call sub_1dech
l13dbh:
	call sub_13e9h
l13deh:
	xor a
	ld (08220h),a
	inc a
	ld (08252h),a
	jp l131ch
sub_13e9h:
	ld a,(0822ch)
	or a
	ret nz
	inc a
	ld (0822ch),a
	ld a,(08115h)
	or a
	ret nz
	ld a,06bh
	call sub_48f2h
	ret
sub_13fdh:
	ld a,(08140h)
	and 002h
	ret nz
	ld a,(0821fh)
	or a
	ret nz
	ld a,(0822bh)
	or a
	ret nz
	ld a,(08117h)
	or a
	ret nz
	call sub_27bch
	ret
sub_1416h:
	ld a,(08241h)
	or a
	jp nz,l1546h
	ld a,(0823fh)
	or a
	jp nz,l1546h
	ld a,(08242h)
	or a
	jp nz,l1546h
	ld a,(08239h)
	or a
	jp nz,l151dh
	ld a,(08212h)
	or a
	jp nz,l1546h
	ld a,(08140h)
	and 004h
	or a
	jp z,l1564h
	ld a,(0826bh)
	or a
	jr nz,l1464h
	ld a,005h
	call sub_17b3h
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	set 4,a
	res 6,a
	set 7,a
	ld (0818ch),a
	out (080h),a
	ld a,001h
	ld (08231h),a
l1464h:
	ld a,(0822ah)
	or a
	jr nz,l1479h
	ld a,001h
	ld (0e400h),a
	ld hl,(08004h)
	ld a,(08183h)
	cp h
	jp z,l1531h
l1479h:
	nop
	ld a,06ch
	call sub_48f2h
	ld a,(08183h)
	ld hl,(08004h)
	ld h,a
	ld (08004h),hl
	ld (08006h),hl
	ld (0e401h),a
	ld a,001h
	ld (0e400h),a
	ld a,(08220h)
	or a
	jr z,l150bh
	ld a,(0822ah)
	or a
	jr nz,l14a6h
	ld a,(0822dh)
	or a
	jr z,l150bh
l14a6h:
	call sub_1e53h
	ld a,(0a016h)
	cp 04eh
	jr z,l150bh
	push af
	ld hl,0b926h
	call sub_1b10h
	call sub_4cebh
	pop af
	ld (0e6a0h),a
	ld a,(08119h)
	ld hl,08118h
	cp (hl)
	jr nz,l14d1h
	cp 031h
	jr z,l14d1h
	ld a,(0826bh)
	or a
	jr nz,l150bh
l14d1h:
	ld a,04ch
	call sub_495ah
	call sub_1b98h
	ld a,(08119h)
	ld (08118h),a
	call sub_495ah
	ld a,068h
	call sub_48f2h
	ld a,06ch
	call sub_48f2h
	call sub_2fd4h
	call sub_1710h
	ld a,001h
	ld (08229h),a
	ld (0821ch),a
	call sub_1785h
	ld a,082h
	out (081h),a
	ld a,(0818ah)
	set 3,a
	ld (0818ah),a
	out (080h),a
l150bh:
	xor a
	ld (08254h),a
	ld (08217h),a
	ld (0822ch),a
	ld (0822ah),a
	ld a,001h
	ld (0826bh),a
l151dh:
	ret
l151eh:
	ld a,(08119h)
	ld hl,08118h
	cp (hl)
	jp nz,l1479h
	ld a,(0826bh)
	or a
	jp z,l1479h
	jr l150bh
l1531h:
	ld a,06ch
	call sub_48f2h
	ld a,(0822dh)
	or a
	jp nz,l151eh
	ld a,(0826bh)
	or a
	jr nz,l150bh
	jp l1479h
l1546h:
	call sub_15aah
	ld a,(08254h)
	or a
	jp nz,l151dh
	xor a
	ld (08217h),a
	ld (0826bh),a
	ld a,(08140h)
	res 2,a
	ld (08140h),a
	call sub_1dech
	jr l159fh
l1564h:
	call sub_15aah
	ld a,(08254h)
	or a
	jp nz,l151dh
	ld a,(0822dh)
	or a
	call nz,sub_16e5h
	ld a,(08119h)
	ld (08118h),a
	ld hl,(08004h)
	dec hl
	dec hl
	ld (08004h),a
	call sub_179ch
	xor a
	ld (0826bh),a
	ld (0822dh),a
	ld (08231h),a
	ld a,(0810dh)
	or a
	jr z,l159ch
	call sub_13fdh
	call sub_1dech
l159ch:
	call sub_13e9h
l159fh:
	xor a
	ld (08220h),a
	inc a
	ld (08254h),a
	jp l151dh
sub_15aah:
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	res 2,a
	res 4,a
	ld (0818ch),a
	out (080h),a
	ld a,000h
	ld (0e400h),a
	ld a,(08140h)
	bit 3,a
	call z,sub_4cdch
	ld a,(08115h)
	or a
	jr nz,l15eeh
	ld a,(08125h)
	or a
	jr nz,l15eeh
	ld a,(08143h)
	or a
	jr nz,l15eeh
	ld a,(08140h)
	bit 3,a
	jr nz,l15eeh
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	res 7,a
	ld (0818ch),a
	out (080h),a
l15eeh:
	ret
sub_15efh:
	ld a,(08241h)
	or a
	jp nz,l1699h
	ld a,(0823fh)
	or a
	jp nz,l1699h
	ld a,(08242h)
	or a
	jp nz,l1699h
	ld a,(08239h)
	or a
	ret nz
	ld a,(0810dh)
	or a
	jp z,l1699h
	ld a,(08140h)
	bit 2,a
	jp z,l1699h
	ld a,(08218h)
	or a
	jp nz,l1699h
	ld a,(08141h)
	or a
	jp z,l1699h
	ld a,(0827ah)
	or a
	jp z,l163dh
	ld a,(08119h)
	ld hl,08118h
	cp (hl)
	jr nz,l164eh
	cp 031h
	jp z,l16cdh
	jr l1689h
l163dh:
	call sub_2fd4h
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	set 2,a
	ld (0818ch),a
	out (080h),a
l164eh:
	call sub_1710h
	ld a,068h
	call sub_48f2h
	ld a,06ch
	call sub_48f2h
	ld a,(0827ah)
	or a
	jr z,l1668h
	ld a,(08119h)
	cp 031h
	jr nz,l1668h
l1668h:
	ld a,(08183h)
	ld hl,(08004h)
	ld h,a
	ld (08004h),hl
	ld (08006h),hl
	ld (0e401h),a
	ld a,04ch
	call sub_495ah
	call sub_1b98h
	call sub_1b03h
	ld a,(08119h)
	call sub_495ah
l1689h:
	call sub_16c0h
	ld a,001h
	ld (0821ch),a
	ld (08229h),a
	ld (0827ah),a
	jr l16ffh
l1699h:
	ld a,(08141h)
	or a
	call nz,sub_16dah
	xor a
	ld (0827ah),a
	ret
sub_16a5h:
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	res 2,a
	ld (0818ch),a
	out (080h),a
	call sub_4cdch
	xor a
	ld (08141h),a
	ld (0822dh),a
	ld (0827ah),a
sub_16c0h:
	call sub_1dech
	call sub_1bc5h
	ld a,(08117h)
	ld (08116h),a
	ret
l16cdh:
	ld hl,(08004h)
	ld a,(08183h)
	cp h
	jp nz,l164eh
	jp l1689h
sub_16dah:
	ld a,(0827ah)
	or a
	jr nz,sub_16e5h
	xor a
	ld (08141h),a
	ret
sub_16e5h:
	ld a,(08119h)
	cp 031h
	jr nz,l16f9h
	ld a,04ch
	call sub_495ah
	call sub_1b98h
	ld a,038h
	call sub_495ah
l16f9h:
	call sub_1706h
	call sub_16a5h
l16ffh:
	ld a,(08119h)
	ld (08118h),a
	ret
sub_1706h:
	call sub_179ch
	xor a
	call sub_495ah
	call sub_48f2h
sub_1710h:
	call sub_0efbh
	inc a
	ld (08229h),a
	xor a
	ld (08117h),a
	ld (08116h),a
	ret
sub_171fh:
	ld a,(08241h)
	or a
	jp nz,l1782h
	ld a,(0823fh)
	or a
	jp nz,l1782h
	ld a,(08242h)
	or a
	jp nz,l1782h
	ld a,(08239h)
	or a
	jp nz,l179bh
	ld a,(0810dh)
	cp 001h
	jr nz,l1782h
	ld a,(08214h)
	cp 001h
	jr z,sub_1785h
	ld a,(08218h)
	or a
	jr nz,l1793h
	ld a,(08140h)
	bit 1,a
	jr z,l177ch
	call sub_2fd4h
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	set 3,a
	ld (0818ch),a
	out (080h),a
	ld a,068h
	call sub_48f2h
	ld a,049h
	call sub_495ah
	call sub_1b03h
	call sub_16c0h
	ld a,001h
	ld (0821ch),a
l177ch:
	ld a,(0821ch)
	or a
	jr nz,l1793h
l1782h:
	call sub_179ch
sub_1785h:
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	res 3,a
	ld (0818ch),a
	out (080h),a
l1793h:
	ld a,(08140h)
	res 1,a
	ld (08140h),a
l179bh:
	ret
sub_179ch:
	ld a,(08241h)
	or a
	jr nz,l17b2h
	ld a,(0823fh)
	or a
	jr nz,l17b2h
	ld a,(08242h)
	or a
	jr nz,l17b2h
	xor a
	ld (0821ch),a
l17b2h:
	ret
sub_17b3h:
	push hl
	push af
	xor a
	ld (0e400h),a
	ld (0e402h),a
	ld (0e405h),a
	ld (0e408h),a
	ld hl,08017h
	and (hl)
	bit 0,a
	jr nz,l17e2h
	bit 1,a
	jr nz,l17e8h
	bit 2,a
	jr nz,l1804h
	bit 5,a
	call nz,sub_1823h
	bit 4,a
	jr nz,l181ah
	bit 3,a
	jr nz,l1815h
l17dfh:
	pop af
	pop hl
	ret
l17e2h:
	xor a
	ld (0821eh),a
	jr l17dfh
l17e8h:
	ld hl,08140h
	res 2,(hl)
	ld a,(08141h)
	or a
	call nz,sub_16dah
	ld a,(0822dh)
	or a
	call nz,sub_16e5h
	xor a
	ld (08141h),a
	call sub_1416h
	jr l17dfh
l1804h:
	ld hl,08140h
	res 3,(hl)
	ld a,(0822dh)
	or a
	call nz,l16f9h
	call sub_1251h
	jr l17dfh
l1815h:
	call sub_0ae3h
	jr l17dfh
l181ah:
	xor a
	ld (08143h),a
	call sub_1b19h
	jr l17dfh
sub_1823h:
	call sub_25ffh
	ld a,(08017h)
	ret
sub_182ah:
	in a,(089h)
	and 001h
	jr z,l1860h
	ld a,(0813ah)
	or a
	jr z,l184bh
	ld a,083h
	out (081h),a
	ld a,(0818bh)
	res 0,a
	set 1,a
	ld (0818bh),a
	out (080h),a
	ld a,001h
	out (08fh),a
l184ah:
	ret
l184bh:
	ld a,083h
	out (081h),a
	ld a,(0818bh)
	set 0,a
	res 1,a
	ld (0818bh),a
	out (080h),a
	xor a
	out (08fh),a
	jr l184ah
l1860h:
	ld a,(0813ah)
	or a
	jr z,l186ch
	xor a
	ld (0813ah),a
	out (08fh),a
l186ch:
	ld a,083h
	out (081h),a
	ld a,(0818bh)
	res 0,a
	res 1,a
	ld (0818bh),a
	out (080h),a
	xor a
	ld (08228h),a
	jr l184ah
sub_1882h:
	in a,(089h)
	and 008h
	jr nz,l18efh
	ld a,(0813bh)
	or a
	jr z,l18f6h
	ld a,(08236h)
	or a
	jr nz,l18a5h
	ld a,083h
	out (081h),a
	ld a,(0818bh)
	set 2,a
	ld (081efh),a
	ld (0818bh),a
	out (080h),a
l18a5h:
	in a,(089h)
	and 010h
	jr z,l18dah
	ld a,(08235h)
	cp 001h
	jr z,l18dah
	ld a,001h
	ld (08236h),a
	ld (0814bh),a
	ld a,(081c6h)
	res 2,a
	out (0a0h),a
	ld (081c6h),a
	ld a,001h
	ld (08235h),a
	ld a,(08234h)
	or a
	ld a,0fah
	call nz,sub_1979h
	call sub_04ffh
	ld b,001h
	call sub_0552h
l18dah:
	ld a,(081ach)
	set 5,a
	ld (081ach),a
	out (089h),a
	ld a,(081c6h)
	set 3,a
	out (0a0h),a
	ld (081c6h),a
l18eeh:
	ret
l18efh:
	xor a
	ld (08236h),a
	ld (08228h),a
l18f6h:
	xor a
	ld (0813bh),a
	ld a,(08236h)
	or a
	jr z,l1907h
	ld a,(08235h)
	cp 002h
	jr z,l18eeh
l1907h:
	ld a,083h
	out (081h),a
	ld a,(0818bh)
	res 2,a
	ld (0818bh),a
	ld (081efh),a
	out (080h),a
	in a,(089h)
	ld b,a
	and 008h
	jr nz,l195eh
	ld a,b
	and 010h
	jr z,l195eh
	ld a,(08235h)
	cp 002h
	jr z,l195eh
	cp 000h
	jr z,l195eh
	ld (0814bh),a
	ld a,(081c6h)
	res 2,a
	out (0a0h),a
	ld b,001h
	call sub_0552h
	res 3,a
	out (0a0h),a
	ld (081c6h),a
	ld a,002h
	ld (08235h),a
	ld a,001h
	ld (08236h),a
	ld a,(08234h)
	or a
	ld a,07dh
	call nz,sub_1979h
	call sub_04ffh
	jp l18eeh
l195eh:
	ld a,(081c6h)
	res 3,a
	out (0a0h),a
	ld (081c6h),a
	ld a,(081ach)
	res 5,a
	ld (081ach),a
	out (089h),a
	xor a
	ld (08235h),a
	jp l18eeh
sub_1979h:
	push bc
	push af
	push af
	in a,(057h)
	ld b,a
	pop af
	sub b
	ld (081eeh),a
	pop af
	pop bc
	ret
sub_1987h:
	ld a,(0814bh)
	or a
	jr nz,l1998h
	ld a,(081ach)
	set 4,a
	ld (081ach),a
	out (089h),a
l1997h:
	ret
l1998h:
	ld a,(081ach)
	res 4,a
	ld (081ach),a
	out (089h),a
	jr l1997h
sub_19a4h:
	xor a
	ld (08268h),a
	ld a,(08134h)
	or a
	jr nz,l19f0h
	ld a,(08135h)
	or a
	jr nz,l19cch
	ld a,(08136h)
	or a
	jr nz,l19ech
	ld a,(08137h)
	or a
	jr nz,l19c8h
	ld a,(0825fh)
	or a
	call nz,sub_1a1eh
l19c7h:
	ret
l19c8h:
	ld a,077h
	jr l19ceh
l19cch:
	ld a,071h
l19ceh:
	call sub_48f2h
	ld a,000h
	ld (08237h),a
	ld b,007h
	call sub_0545h
	ld a,0c2h
	out (081h),a
	xor a
	ld (08135h),a
	ld (08137h),a
	inc a
	ld (0825fh),a
	jr l19c7h
l19ech:
	ld a,072h
	jr l19f2h
l19f0h:
	ld a,065h
l19f2h:
	call sub_48f2h
	ld a,000h
	ld (08237h),a
	ld a,(08225h)
	or a
	jr nz,l1a0dh
	call sub_5616h
	ld b,010h
	call sub_0545h
	ld a,001h
	ld (08225h),a
l1a0dh:
	ld a,0c2h
	out (081h),a
	xor a
	ld (08134h),a
	ld (08136h),a
	inc a
	ld (0825fh),a
	jr l19c7h
sub_1a1eh:
	ld a,001h
	or a
	jr z,l1a2ch
	ld a,(0822eh)
	or a
	jr z,l1a2ch
	call sub_7725h
l1a2ch:
	ret
sub_1a2dh:
	ld a,(0821ah)
	or a
	jr nz,l1a67h
	ld a,(08146h)
	or a
	jr z,l1a67h
	ld a,(08257h)
	or a
	jr nz,l1a5ah
	ld a,070h
	call sub_48f2h
	xor a
	ld (08258h),a
	inc a
	ld (08257h),a
	ld a,086h
	out (081h),a
	ld a,(0818eh)
	set 2,a
	ld (0818eh),a
	out (080h),a
l1a5ah:
	ld a,(08148h)
	or a
	jr nz,l1a91h
	ld a,(08147h)
	or a
	jr nz,l1a95h
l1a66h:
	ret
l1a67h:
	xor a
	ld (08146h),a
	ld a,086h
	out (081h),a
	ld a,(0818eh)
	res 2,a
	ld (0818eh),a
	out (080h),a
	ld a,(08258h)
	or a
	jr nz,l1a66h
	ld a,061h
	call sub_48f2h
	xor a
	ld (08210h),a
	ld (08257h),a
	inc a
	ld (08258h),a
	jr l1a66h
l1a91h:
	ld a,064h
	jr l1a97h
l1a95h:
	ld a,073h
l1a97h:
	call sub_48f2h
	ld a,(08225h)
	or a
	jr nz,l1aaah
	ld b,010h
	call sub_0545h
	ld a,001h
	ld (08225h),a
l1aaah:
	ld a,0c2h
	out (081h),a
	xor a
	ld (08148h),a
	ld (08147h),a
	jr l1a66h
	call sub_48f2h
sub_1abah:
	ld a,(08219h)
	or a
	jr nz,l1ae5h
	ld a,(08218h)
	or a
	jr nz,l1ae5h
	ld a,(08139h)
	or a
	jr z,l1ae9h
	ld a,081h
	out (081h),a
	ld a,(08189h)
	set 5,a
	ld (08189h),a
	out (080h),a
	ld a,(081ach)
	res 6,a
	ld (081ach),a
	out (089h),a
l1ae4h:
	ret
l1ae5h:
	xor a
	ld (08139h),a
l1ae9h:
	ld a,081h
	out (081h),a
	ld a,(08189h)
	res 5,a
	ld (08189h),a
	out (080h),a
	ld a,(081ach)
	set 6,a
	ld (081ach),a
	out (089h),a
	jr l1ae4h
sub_1b03h:
	ld a,(0822bh)
	or a
	ret nz
	ld a,(08143h)
	or a
	ret nz
	ld hl,0b8fch
sub_1b10h:
	ld de,0e6a0h
	ld bc,l0007h
	ldir
	ret
sub_1b19h:
	ld hl,l0000h
	ld (08196h),hl
	ld a,085h
	out (081h),a
	ld a,(0818dh)
	res 2,a
	ld (0818dh),a
	out (080h),a
	call sub_1224h
	xor a
	ld (08269h),a
	ld (08214h),a
	ld (08215h),a
	ld (08216h),a
	ld (0821ah),a
	ld (0821bh),a
	ld (08259h),a
	ld (08212h),a
	ld (08211h),a
	ld (0825ah),a
	ld (0810eh),a
	ld (08110h),a
	ld (08114h),a
	ld (08143h),a
	ld (08231h),a
	inc a
	ld (08142h),a
	call sub_1dech
	ld a,067h
	call sub_48f2h
	call sub_1b03h
	xor a
	ld (0e405h),a
	xor a
	ld (08143h),a
	ret
sub_1b76h:
	ld hl,(0800ch)
	push hl
	pop bc
	ld a,l
	call sub_1ba6h
	ld a,c
	call sub_1babh
	ld a,h
	call sub_1ba6h
	ld a,b
	call sub_1babh
sub_1b8bh:
	ld hl,(08006h)
	push hl
	pop bc
	ld a,l
	call sub_1ba6h
	ld a,c
	call sub_1babh
sub_1b98h:
	ld hl,(08006h)
	push hl
	pop bc
	ld a,h
	call sub_1ba6h
	ld a,b
	call sub_1babh
	ret
sub_1ba6h:
	call sub_1bb2h
	jr l1baeh
sub_1babh:
	call sub_1bbah
l1baeh:
	call sub_495ah
	ret
sub_1bb2h:
	srl a
	srl a
	srl a
	srl a
sub_1bbah:
	and 00fh
	cp 00ah
	jr c,l1bc2h
	add a,007h
l1bc2h:
	add a,030h
	ret
sub_1bc5h:
	ld hl,08102h
	ld a,(08103h)
	cp (hl)
	jp nz,l1c3bh
	ld hl,08100h
	ld a,(08101h)
	cp (hl)
	jp nz,l1c3bh
	ld hl,08104h
	ld a,(08105h)
	cp (hl)
	jp nz,l1c3bh
	ld hl,08106h
	ld a,(08107h)
	cp (hl)
	jp nz,l1c3bh
	ld hl,08108h
	ld a,(08109h)
	cp (hl)
	jp nz,l1c3bh
	ld hl,0810ah
	ld a,(0810bh)
	cp (hl)
	jp z,l1c20h
	ld (0810ah),a
	or a
	jp nz,l1c21h
	ld a,(08181h)
	res 3,a
	ld (08181h),a
	out (09eh),a
	ld a,080h
	out (081h),a
	ld a,(08188h)
	res 3,a
	ld (08188h),a
	out (080h),a
l1c20h:
	ret
l1c21h:
	ld a,(08181h)
	set 3,a
	ld (08181h),a
	out (09eh),a
	ld a,080h
	out (081h),a
	ld a,(08188h)
	set 3,a
	ld (08188h),a
	out (080h),a
	jr l1c20h
l1c3bh:
	ld a,(08103h)
	ld (08102h),a
	ld a,(08101h)
	ld (08100h),a
	ld a,(08105h)
	ld (08104h),a
	ld a,(08107h)
	ld (08106h),a
	ld a,(08109h)
	ld (08108h),a
	ld a,(08143h)
	or a
	jp z,l1d21h
	ld a,(08255h)
	or a
	jp nz,l1d21h
	inc a
	ld (08255h),a
	ld a,(08109h)
	or a
	jr nz,l1ca3h
	ld a,(08107h)
	or a
	jr nz,l1cc1h
	ld a,(08105h)
	or a
	jr nz,l1ce1h
	ld a,(08101h)
	or a
	jr nz,l1d01h
	ld a,(08181h)
	call sub_1de3h
	set 5,a
	ld (08181h),a
	out (09eh),a
	call sub_1dffh
	set 5,a
	call sub_1e07h
	ld a,(0e40fh)
	or 020h
	ld (0e40fh),a
	jp l1c20h
l1ca3h:
	ld a,001h
	ld (08218h),a
	ld (0e415h),a
	call sub_1e0dh
	call sub_1dffh
	set 2,a
	call sub_1e07h
	ld a,(0e40fh)
	or 050h
	ld (0e40fh),a
	jp l1c20h
l1cc1h:
	ld a,(08181h)
	call sub_1de3h
	set 1,a
	ld (08181h),a
	out (09eh),a
	call sub_1dffh
	set 1,a
	call sub_1e07h
	ld a,(0e40fh)
	or 040h
	ld (0e40fh),a
	jp l1c20h
l1ce1h:
	ld a,(08181h)
	call sub_1de3h
	set 0,a
	ld (08181h),a
	out (09eh),a
	call sub_1dffh
	set 0,a
	call sub_1e07h
	ld a,(0e40fh)
	or 030h
	ld (0e40fh),a
	jp l1c20h
l1d01h:
	ld a,(08181h)
	call sub_1de3h
	set 4,a
	ld (08181h),a
	out (09eh),a
	call sub_1dffh
	set 4,a
	call sub_1e07h
	ld a,(0e40fh)
	or 010h
	ld (0e40fh),a
	jp l1c20h
l1d21h:
	xor a
	ld (08255h),a
	ld (08218h),a
	ld (0e415h),a
	ld a,(08109h)
	or a
	jp nz,l1d65h
	ld a,(08107h)
	or a
	jp nz,l1d89h
	ld a,(08105h)
	or a
	jp nz,l1da7h
	ld a,(08101h)
	or a
	jp nz,l1dc5h
	call sub_1dffh
	and 0c8h
	set 5,a
	call sub_1e07h
	ld a,(08181h)
	and 088h
	set 5,a
	ld (08181h),a
	out (09eh),a
	ld a,002h
	ld (0e40fh),a
	jp l1c20h
l1d65h:
	ld a,(08141h)
	or a
	jp nz,l1c20h
	ld a,001h
	ld (08218h),a
	ld (0e415h),a
	call sub_1e0dh
	call sub_1dffh
	and 0c8h
	set 2,a
	call sub_1e07h
	ld a,005h
	ld (0e40fh),a
	jp l1c20h
l1d89h:
	call sub_1dffh
	and 0c8h
	set 1,a
	call sub_1e07h
	ld a,(08181h)
	and 088h
	set 1,a
	ld (08181h),a
	out (09eh),a
	ld a,004h
	ld (0e40fh),a
	jp l1c20h
l1da7h:
	call sub_1dffh
	and 0c8h
	set 0,a
	call sub_1e07h
	ld a,(08181h)
	and 088h
	set 0,a
	ld (08181h),a
	out (09eh),a
	ld a,003h
	ld (0e40fh),a
	jp l1c20h
l1dc5h:
	call sub_1dffh
	and 0c8h
	set 4,a
	call sub_1e07h
	ld a,(08181h)
	and 088h
	set 4,a
	ld (08181h),a
	out (09eh),a
	ld a,001h
	ld (0e40fh),a
	jp l1c20h
sub_1de3h:
	ld hl,08188h
	bit 2,(hl)
	ret z
	and 0cch
	ret
sub_1dech:
	ld b,005h
	ld hl,08100h
l1df1h:
	ld (hl),000h
	inc hl
	inc hl
	djnz l1df1h
	ld hl,08181h
	res 2,(hl)
	res 5,(hl)
	ret
sub_1dffh:
	ld a,080h
	out (081h),a
	ld a,(08188h)
	ret
sub_1e07h:
	ld (08188h),a
	out (080h),a
	ret
sub_1e0dh:
	ld bc,l0398h
	ld de,0a019h
	ld hl,081c3h
l1e16h:
	ld a,(de)
	cp 04eh
	call z,sub_1e44h
	cp 045h
	call z,sub_1e4eh
	cp 057h
	call z,sub_1e49h
	dec de
	sla (hl)
	sla (hl)
	djnz l1e16h
	srl (hl)
	srl (hl)
	outi
	ld a,(08181h)
	res 2,a
	res 6,a
	ld (08181h),a
	out (09eh),a
	xor a
	ld (08116h),a
	ret
sub_1e44h:
	res 0,(hl)
	res 1,(hl)
	ret
sub_1e49h:
	set 0,(hl)
	res 1,(hl)
	ret
sub_1e4eh:
	res 0,(hl)
	set 1,(hl)
	ret
sub_1e53h:
	ld hl,08181h
	ld a,(0a016h)
	cp 04eh
	call z,sub_1e6dh
	cp 045h
	call z,sub_1e76h
	cp 057h
	call z,sub_1e7ah
	ld c,09eh
	outi
	ret
sub_1e6dh:
	push hl
	ld hl,0b93bh
	call sub_1b10h
	pop hl
	ret
sub_1e76h:
	ld (hl),004h
	jr l1e7ch
sub_1e7ah:
	ld (hl),040h
l1e7ch:
	call sub_1e80h
	ret
sub_1e80h:
	ld a,080h
	out (081h),a
	ld a,(08188h)
	and 0c0h
	ld (08188h),a
	out (080h),a
	ret
sub_1e8fh:
	call sub_1eabh
	set 3,a
	call sub_1eb3h
	set 3,a
	call sub_1ebch
	ret
sub_1e9dh:
	call sub_1eabh
	res 3,a
	call sub_1eb3h
	res 3,a
	call sub_1ebch
	ret
sub_1eabh:
	ld a,085h
	out (081h),a
	ld a,(0818dh)
	ret
sub_1eb3h:
	ld (0818dh),a
	out (080h),a
	ld a,(081ach)
	ret
sub_1ebch:
	ld (081ach),a
	out (089h),a
	ret
sub_1ec2h:
	call sub_1eabh
	set 6,a
	call sub_1eb3h
	ld a,(081c6h)
	set 0,a
	ld (081c6h),a
	out (0a0h),a
	ret
sub_1ed5h:
	call sub_1eabh
	res 6,a
	call sub_1eb3h
	ld a,(081c6h)
	res 0,a
	ld (081c6h),a
	out (0a0h),a
	ret
sub_1ee8h:
	call sub_1eabh
	set 7,a
	call sub_1eb3h
	ld a,(081c6h)
	set 4,a
	ld (081c6h),a
	out (0a0h),a
	ret
sub_1efbh:
	call sub_1eabh
	res 7,a
	call sub_1eb3h
	ld a,(081c6h)
	res 4,a
	ld (081c6h),a
	out (0a0h),a
	ret
sub_1f0eh:
	ld a,086h
	out (081h),a
	ld a,(0818eh)
	set 5,a
	ld (0818eh),a
	out (080h),a
	ld a,041h
	call sub_48f2h
	ret
sub_1f22h:
	ld a,086h
	out (081h),a
	ld a,(0818eh)
	res 5,a
	ld (0818eh),a
	out (080h),a
	ld a,042h
	call sub_48f2h
	ret
sub_1f36h:
	ret
sub_1f37h:
	ld a,(0821fh)
	cp 001h
	jr z,l1fa8h
	ld a,(0810fh)
	or a
	jp z,l2003h
	call sub_2009h
l1f48h:
	ld a,(08131h)
	or a
	jr z,l1fa9h
	ld a,(08119h)
	sub 034h
	jp p,l1ffch
	xor a
	out (08dh),a
l1f59h:
	ld a,001h
	out (08eh),a
	ld a,080h
	out (081h),a
	ld a,(08188h)
	set 6,a
	ld (08188h),a
	out (080h),a
	ld a,(0825dh)
	cp 001h
	jr z,l1fa8h
	ld a,044h
	call sub_495ah
	ld a,(08143h)
	cp 001h
	jr z,l1f97h
	ld a,(0822bh)
	cp 001h
	jr z,l1f97h
	xor a
	ld (08110h),a
	ld (08112h),a
	ld (08114h),a
	ld a,(08116h)
	xor 001h
	ld (08116h),a
l1f97h:
	xor a
	ld (0825eh),a
	ld (0810eh),a
	ld (0810ch),a
	inc a
	ld (08224h),a
	ld (0825dh),a
l1fa8h:
	ret
l1fa9h:
	ld a,(0825eh)
	cp 001h
	jr z,l1fa8h
	xor a
	out (08eh),a
	ld a,080h
	out (081h),a
	ld a,(08188h)
	res 6,a
	ld (08188h),a
	out (080h),a
	ld a,045h
	call sub_495ah
	ld a,(08143h)
	cp 001h
	jr z,l1fe9h
	ld a,(0822bh)
	cp 001h
	jr z,l1fe9h
	xor a
	ld (08110h),a
	ld (08112h),a
	ld (08114h),a
	ld (08114h),a
	ld a,(08116h)
	xor 001h
	ld (08116h),a
l1fe9h:
	xor a
	ld (0825dh),a
	ld (0810eh),a
	ld (0810ch),a
	inc a
	ld (08224h),a
	ld (0825eh),a
	jr l1fa8h
l1ffch:
	ld a,001h
	out (08dh),a
l2000h:
	jp l1f59h
l2003h:
	call sub_2017h
	jp l1f48h
sub_2009h:
	xor a
l200ah:
	out (08ch),a
	ld a,(081ach)
	set 0,a
	ld (081ach),a
	out (089h),a
	ret
sub_2017h:
	ld a,001h
	out (08ch),a
	ld a,(081ach)
	res 0,a
l2020h:
	ld (081ach),a
	out (089h),a
	ret
sub_2026h:
	ld a,(08279h)
	cp 001h
	jr nz,l2033h
	ld a,(0814dh)
	ld (0814ah),a
l2033h:
	ld hl,081c0h
	ld a,(0814ah)
	cp 0ffh
	jp z,l20cfh
	ld a,(08359h)
	or a
	jr nz,l204bh
	ld a,(0814ah)
	cp 01ch
	jr z,l204bh
l204bh:
	ld a,(0835ah)
	or a
	jr z,l2067h
	ld a,001h
	or a
	jr z,l2067h
	ld a,(0814ah)
	cp 008h
	jp z,l76c7h
	cp 00dh
	jr nc,l2067h
	cp 00ah
	jp nc,l76c7h
l2067h:
	ld a,(0814ah)
	bit 7,a
	jp z,l234eh
	ld b,a
	ld a,(08239h)
	or a
	ld a,b
	jp nz,l20c7h
	cp 080h
	jp z,l20d8h
	cp 081h
	jp z,l2109h
	cp 082h
	jp z,l2115h
	cp 083h
	jp z,l2161h
	cp 084h
	jp z,l2171h
	cp 085h
	jp z,l21cbh
	cp 086h
	jp z,l21d8h
	cp 087h
	jp z,l21e5h
	cp 088h
	jp z,l21f4h
	cp 089h
	jp z,l2282h
	cp 08fh
	jp z,l2298h
	cp 090h
	jp z,l22f0h
	cp 092h
	jp z,l233fh
	ld a,001h
	or a
	call nz,sub_70abh
	call sub_051dh
l20c2h:
	ld a,003h
l20c4h:
	ld (08292h),a
l20c7h:
	in a,(080h)
	in a,(04dh)
	bit 1,a
	jr nz,l20c7h
l20cfh:
	ret
l20d0h:
	ld a,002h
	jr l20c4h
l20d4h:
	ld a,001h
	jr l20c4h
l20d8h:
	call sub_2786h
	ld de,0b0ebh
	call sub_0c85h
l20e1h:
	call sub_03a4h
	call sub_051dh
	ld a,(0814ah)
	cp 01bh
	jr z,l2104h
	cp 00ah
	jr nz,l20fbh
	ld de,0b2a7h
l20f5h:
	call sub_0c92h
	jp l20e1h
l20fbh:
	cp 00bh
	jr nz,l20e1h
	ld de,0b0ebh
	jr l20f5h
l2104h:
	call sub_27b4h
	jr l20c7h
l2109h:
	ld a,(08378h)
	or a
	jp nz,l20c7h
	call sub_2830h
	jr l20c7h
l2115h:
	jp l20c7h
	bit 6,(hl)
	jr nz,l20d0h
	ld a,(08111h)
	cp 001h
	jr z,l20d4h
	ld a,(08143h)
	cp 001h
	jr z,l20d4h
	ld a,(08115h)
	cp 001h
	jr z,l20d4h
	ld a,(08140h)
	or a
	jr z,l2145h
	cp 004h
	jr z,l2145h
	cp 008h
	jr nz,l20d4h
	ld a,(08220h)
	or a
	jr nz,l20d4h
l2145h:
	ld a,(0821fh)
	or a
	jr z,l2152h
	ld a,(08267h)
	or a
	jp z,l20d4h
l2152h:
	ld a,(0821eh)
	cp 001h
	jr z,l2164h
	ld a,001h
	ld (0821eh),a
	jp l20c7h
l2161h:
	call sub_08d7h
l2164h:
	xor a
	ld (0821eh),a
	ld (08220h),a
	ld (0826bh),a
	jp l20c7h
l2171h:
	ld a,(08378h)
	or a
	jp nz,l20c7h
	push hl
	push bc
	ld a,06eh
	call sub_48f2h
	ld a,032h
	call sub_48f2h
	ld b,006h
	ld hl,0a4bah
	ld a,(08237h)
	or a
	jr z,l2192h
	ld hl,081f0h
l2192h:
	xor 001h
	ld (08237h),a
l2197h:
	ld a,(hl)
	cp 020h
	jr nz,l219eh
	ld a,030h
l219eh:
	inc hl
	call sub_48f2h
	djnz l2197h
	ld a,001h
	ld (0825fh),a
	ld bc,l0005h+1
	ld hl,l5806h
	ld de,081f0h
	ldir
	ld b,006h
	ld hl,0e4c6h
	ld de,081f5h
l21bch:
	ld a,(hl)
	dec hl
	cp 020h
	jr z,l21c4h
	ld (de),a
	dec de
l21c4h:
	djnz l21bch
	pop bc
	pop hl
	jp l20c7h
l21cbh:
	ld a,(08378h)
	or a
	jp nz,l20c7h
	call sub_2944h
	jp l20c7h
l21d8h:
	ld a,(08378h)
	or a
	jp nz,l20c7h
	call sub_27d4h
	jp l20c7h
l21e5h:
	ld a,(08378h)
	or a
	jp nz,l20c7h
	ld a,001h
	ld (0823ah),a
	jp l20c7h
l21f4h:
	ld a,(08378h)
	or a
	jp nz,l20c7h
	push hl
	push de
	ld a,(08238h)
	or a
	jp nz,l223fh
l2204h:
	ld a,076h
	call sub_48f2h
	ld a,041h
	call sub_48f2h
	ld b,003h
	ld de,081f6h
l2213h:
	call sub_4930h
	ld (de),a
	inc de
	djnz l2213h
	ld a,06eh
	call sub_48f2h
	ld a,038h
	call sub_48f2h
	ld hl,0a4c0h
	ld b,003h
l2229h:
	ld a,(hl)
	inc hl
	call sub_48f2h
	djnz l2229h
	ld a,001h
	ld (08238h),a
l2235h:
	ld a,001h
	ld (0825fh),a
	pop de
	pop hl
	jp l20c7h
l223fh:
	ld a,076h
	call sub_48f2h
	ld a,041h
	call sub_48f2h
	ld b,003h
	ld hl,0a4c0h
l224eh:
	call sub_4930h
	cp (hl)
	jp z,l225ah
	ld a,000h
	ld (08238h),a
l225ah:
	inc hl
	djnz l224eh
	ld a,(08238h)
	or a
	jp z,l2204h
	ld a,06eh
	call sub_48f2h
	ld a,038h
	call sub_48f2h
	ld hl,081f6h
	ld b,003h
l2273h:
	ld a,(hl)
	inc hl
	call sub_48f2h
	djnz l2273h
	ld a,000h
	ld (08238h),a
	jp l2235h
l2282h:
	ld a,(0822bh)
	cp 001h
	jp z,l20c7h
	call sub_2e45h
	call sub_2e1fh
	ld a,001h
	ld (08125h),a
	jp l20c7h
l2298h:
	ld a,(08378h)
	or a
	jp nz,l20c7h
	ld a,(08218h)
	or a
	jr nz,l22e9h
	ld a,(0822bh)
	or a
	jr nz,l22e9h
	ld a,(08141h)
	or a
	jr nz,l22e9h
	ld a,(0810dh)
	or a
	jr z,l22e9h
	ld a,(0821fh)
	or a
	jr z,l22c4h
	ld a,(08267h)
	or a
	jp nz,l22e9h
l22c4h:
	ld a,(08140h)
	bit 2,a
	jr nz,l22cfh
	bit 3,a
	jr z,l22e9h
l22cfh:
	xor a
	ld (08116h),a
	ld (08117h),a
	ld (0826ah),a
	ld (0826bh),a
	inc a
	ld (08220h),a
	ld (0822dh),a
	call sub_2fd4h
	jp l20c7h
l22e9h:
	xor a
	ld (08220h),a
	jp l20c2h
l22f0h:
	bit 0,(hl)
	jp nz,l20c2h
	ld a,(0822bh)
	or a
	call nz,sub_25b9h
	xor 001h
	ld (08117h),a
	ld (0822bh),a
	push af
	call nz,sub_1dech
	call sub_1b03h
	pop af
	jp z,l20c7h
	ld a,010h
	call sub_17b3h
	xor a
	ld (08116h),a
	ld (08220h),a
	call sub_25b9h
	ld a,(08109h)
	or a
	jr z,l232eh
	ld (08101h),a
	dec a
	ld (08109h),a
	ld (08108h),a
l232eh:
	ld bc,l0007h
	ld de,081c7h
	ld hl,0e4c0h
	ldir
	call sub_2fd4h
	jp l20c7h
l233fh:
	ld a,(08378h)
	or a
	jp nz,l20c7h
	ld a,001h
	ld (08138h),a
	jp l20c2h
l234eh:
	ld a,(08117h)
	cp 001h
	jp z,l2380h
	ld a,(0814ah)
	cp 003h
	jp z,l2531h
	cp 011h
	jp z,l23b1h
	cp 013h
	jr z,l23a4h
	cp 01ah
	jp z,l2557h
	cp 006h
	jp z,l2564h
	cp 018h
	jp z,l2571h
	cp 00eh
	jp z,l259dh
	cp 012h
	jp z,l2587h
l2380h:
	ld a,001h
	or a
	call nz,sub_70abh
l2386h:
	jp l20c7h
	ld a,06ch
	call sub_48f2h
l238eh:
	call sub_03a4h
	call sub_051dh
	ld a,(0814ah)
	cp 080h
	jr z,l2386h
	cp 0ffh
	jr z,l238eh
	call sub_495ah
	jr l238eh
l23a4h:
	ld a,(08378h)
	or a
	jp nz,l20c7h
	call sub_3845h
	jp l20c7h
l23b1h:
	ld a,(08378h)
	or a
	jp nz,l20c7h
	ld a,(0810fh)
	cp 001h
	jp nz,l20c7h
	call sub_051dh
	ld a,(0814ah)
	cp 031h
	jp z,l23dch
	cp 032h
	jp z,l240ch
	cp 033h
	jp z,l244fh
	cp 034h
	jp z,l2489h
	jr l23b1h
l23dch:
	ld a,050h
	call sub_495ah
	ld a,039h
	call sub_495ah
	ld hl,08280h
	call sub_550eh
	ld a,001h
	ld (08222h),a
	ld a,096h
	ld (08195h),a
	ld a,00dh
	ld (087ffh),a
	call sub_0c85h
	ld a,001h
	ld (0e413h),a
	ld de,0c4ffh
	call sub_0c92h
	jp l20c7h
l240ch:
	ld a,047h
	call sub_495ah
	ld a,034h
	call sub_495ah
	ld a,033h
	out (09ah),a
	out (09bh),a
	ld a,033h
	out (09ah),a
	out (09ch),a
	ld a,001h
	out (09ah),a
	out (09dh),a
	ld a,00dh
	ld (087ffh),a
	call sub_0c85h
	ld a,001h
	ld (0e413h),a
	ld de,0c4ffh
	call sub_0c92h
	ld bc,sub_0640h
	call sub_5538h
	call sub_0c78h
	ld a,000h
	ld (0e413h),a
	ld (0810eh),a
	jp l20c7h
l244fh:
	ld a,047h
	call sub_495ah
	ld a,038h
	call sub_495ah
	call sub_3149h
	ld hl,08284h
	call sub_550eh
	ld a,00dh
	ld (087ffh),a
	call sub_0c85h
	ld a,001h
	ld (0e413h),a
	ld de,0c4ffh
	call sub_0c92h
	ld bc,sub_0640h
	call sub_5538h
	call sub_0c78h
	ld a,000h
	ld (0e413h),a
	ld (0810eh),a
	jp l20c7h
l2489h:
	ld a,047h
	call sub_495ah
	ld a,037h
	call sub_495ah
	call sub_3149h
	ld hl,08284h
	call sub_550eh
	ld a,00dh
	ld (087ffh),a
	call sub_0c85h
	ld a,001h
	ld (0e413h),a
	ld de,0c4ffh
	call sub_0c92h
	ld bc,012c0h
	call sub_5538h
	call sub_0c78h
	ld a,000h
	ld (0e413h),a
	ld (0810eh),a
	jp l20c7h
	ld a,(08279h)
	or a
	jp z,l25aah
	xor a
	ld (08279h),a
	ld a,047h
	call sub_495ah
	ld a,032h
	call sub_495ah
	ld a,001h
	ld (0821ch),a
	ld (08837h),a
	jp l20c7h
	ld a,(08279h)
	or a
	jp z,l25aah
	xor a
	ld (08279h),a
	ld a,047h
	call sub_495ah
	ld a,031h
	call sub_495ah
	ld a,001h
	ld (0821ch),a
	ld (08837h),a
	jp l20c7h
	ld a,(08279h)
	or a
	jp z,l25aah
	xor a
	ld (08279h),a
	ld a,047h
	call sub_495ah
	ld a,033h
	call sub_495ah
	ld a,001h
	ld (0821ch),a
	jp l20c7h
	bit 5,(hl)
	jp nz,l20c7h
	call sub_261ah
	call sub_0826h
	call sub_38b4h
	jp l20c7h
l2531h:
	ld a,(08378h)
	or a
	jp nz,l20c7h
	ld a,(0810fh)
	or a
	jp nz,l20c7h
	ld a,043h
	call sub_495ah
	xor a
	ld (08117h),a
	jp l20c7h
sub_254bh:
	call sub_261ah
	call sub_0932h
	call sub_38b4h
	jp l20c7h
l2557h:
	ld a,(08378h)
	or a
	jp nz,l20c7h
	call sub_415bh
	jp l20c7h
l2564h:
	ld a,(08378h)
	or a
	jp nz,l20c7h
	call sub_4255h
	jp l20c7h
l2571h:
	ld a,(08378h)
	or a
	jp nz,l20c7h
	ld a,(0822eh)
	or a
	jp z,l20c7h
	ld a,075h
	call sub_7844h
	jp l20c7h
l2587h:
	ld a,(08378h)
	or a
	jp nz,l20c7h
	ld a,(0822eh)
	or a
	jp z,l20c7h
	ld a,076h
	call sub_7844h
	jp l20c7h
l259dh:
	ld a,(08378h)
	or a
	jp nz,l20c7h
	call sub_3b9ah
	jp l20c7h
l25aah:
	call sub_25b9h
	ld (08279h),a
	ld a,(0814ah)
	ld (0814dh),a
	jp l20c7h
sub_25b9h:
	call sub_25c3h
	call sub_2e1fh
	ld (0810dh),a
	ret
sub_25c3h:
	ld bc,l0007h
	ld de,0e4a6h
	ld hl,0e418h
	lddr
	ld de,0e4c0h
	ld hl,l45c0h
	ldd
	ld a,(0821eh)
	or a
	ret z
	ld hl,0e028h
	ld (hl),000h
	ret
sub_25e1h:
	ld bc,l0005h+1
	ld de,0e4a6h
	ld hl,081cdh
	lddr
	ld a,080h
	ld (de),a
	ld a,083h
	ld (0e4c0h),a
	ld a,(0821eh)
	or a
	ret z
	ld a,083h
	ld (0e028h),a
	ret
sub_25ffh:
	ld hl,(0810ch)
	push hl
	ld hl,(0810eh)
	push hl
	xor a
	ld (08220h),a
	call sub_2749h
	call sub_1f37h
	pop hl
	ld (0810eh),hl
	pop hl
	ld (0810ch),hl
	ret
sub_261ah:
	ld hl,l2621h
	call sub_2628h
	ret
l2621h:
	ld c,a
	ld b,(hl)
	ld b,(hl)
	add a,d
	ld b,l
	ld d,e
	ld b,e
sub_2628h:
	call sub_38a5h
	ld bc,l0007h
	ld de,0e780h
	ldir
	ret
sub_2634h:
	ld a,(0813fh)
	cp 000h
	jp z,l2657h
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	res 0,a
	set 1,a
	ld (0818ch),a
	out (080h),a
	ld a,(08181h)
	set 7,a
	ld (08181h),a
	out (09eh),a
l2656h:
	ret
l2657h:
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	set 0,a
	res 1,a
	ld (0818ch),a
	out (080h),a
	ld a,(08181h)
	res 7,a
	ld (08181h),a
	out (09eh),a
	jr l2656h
sub_2673h:
	ld a,(08218h)
	or a
	jp nz,l2776h
	ld a,(08143h)
	or a
	jp nz,l2776h
	ld a,(0810dh)
	or a
	jp z,l276fh
	ld a,(08266h)
	or a
	jp z,l26a4h
	ld a,(08241h)
	or a
	jp nz,sub_2749h
	ld a,(0823fh)
	or a
	jp nz,sub_2749h
	ld a,(08242h)
	or a
	jp nz,sub_2749h
l26a4h:
	ld a,(08123h)
	ld hl,08122h
	cp (hl)
	jp z,l2720h
	xor a
	ld (08123h),a
	ld (08122h),a
	ld a,(08266h)
	or a
	jp nz,l2721h
	ld a,085h
	out (081h),a
	ld a,(0818dh)
	set 0,a
	ld (0818dh),a
	out (080h),a
	ld a,068h
	call sub_48f2h
	ld a,044h
	call sub_495ah
	ld a,057h
	call sub_495ah
	call sub_1b03h
	xor a
	ld (08140h),a
	inc a
	ld (0821fh),a
	ld hl,08080h
	ld (08004h),hl
	ld (0e40bh),hl
	ld hl,l3f3fh
	ld (0800ah),hl
	ld (0e409h),hl
	ld a,002h
	ld (0e408h),a
	call sub_1b76h
	ld hl,08017h
	set 5,(hl)
	ld a,031h
	call sub_495ah
	call sub_2017h
	ld a,001h
	out (08dh),a
	out (08eh),a
	ld (08211h),a
	ld (08212h),a
	ld (08229h),a
	ld (08214h),a
	ld (08266h),a
l2720h:
	ret
l2721h:
	ld a,(08267h)
	or a
	jr nz,sub_2749h
	ld a,045h
	call sub_495ah
	xor a
	ld (0e408h),a
	call sub_0e8fh
	xor a
	ld (08211h),a
	ld (08212h),a
	inc a
	ld (08267h),a
	xor a
	ld (0e408h),a
	ld hl,08017h
	set 5,(hl)
	jr l2720h
sub_2749h:
	xor a
	ld (0825dh),a
	ld (0825eh),a
	ld (08229h),a
	ld (08214h),a
	ld (0821fh),a
	ld hl,08017h
	res 5,(hl)
	ld a,085h
	out (081h),a
	ld a,(0818dh)
	res 0,a
	ld (0818dh),a
	out (080h),a
	jp l2776h
l276fh:
	ld a,(08266h)
	or a
	jp nz,sub_2749h
l2776h:
	xor a
	ld (08123h),a
	ld (08122h),a
	ld (08266h),a
	ld (08267h),a
	jp l2720h
sub_2786h:
	xor a
	call sub_495ah
	call sub_48f2h
	call sub_1b03h
	call sub_2fd4h
	ld a,(08181h)
	and 080h
	out (09eh),a
sub_279ah:
	xor a
	ld (08261h),a
	ld (08262h),a
	ld (08263h),a
	ld (08264h),a
	ld (0826dh),a
	ld (0826eh),a
	ld (0826fh),a
	ld (08270h),a
	ret
sub_27b4h:
	call sub_0c78h
	ld a,(08181h)
	out (09eh),a
sub_27bch:
	xor a
	ld (0810ch),a
	ld (0810eh),a
	ld (08110h),a
	ld (08112h),a
	ld (08114h),a
	inc a
	ld (08223h),a
	ld (08224h),a
	ret
sub_27d4h:
	call sub_2786h
	ld de,0b4a2h
	call sub_0c85h
	ld de,0e33ch
	ld (081b1h),de
	ld a,(0a01eh)
	ld (de),a
	ld de,0e33ch
	ld (081b1h),de
	ld a,(0a014h)
	ld (de),a
l27f3h:
	call sub_03a4h
	call sub_055fh
	ld a,(0814ah)
	cp 0ffh
	jr z,l27f3h
	cp 01bh
	jr z,l282ch
	cp 00ah
	jr z,l2822h
	cp 00dh
	jr z,l2822h
	cp 031h
	jp m,l27f3h
	cp 036h
	jp m,l2819h
	jp l27f3h
l2819h:
	ld de,(081b1h)
	ld (de),a
	ld hl,0a014h
	ld (hl),a
l2822h:
	ld de,0e33ch
	ld (081b1h),de
	jp l27f3h
l282ch:
	call sub_27b4h
	ret
sub_2830h:
	call sub_2786h
	ld de,0b000h
	call sub_0c85h
l2839h:
	call sub_03a4h
	ld de,0e259h
	ld hl,0a019h
	ldd
	ld de,0e219h
	ldd
	ld de,0e1d9h
	ldd
	ld de,0e159h
	ldd
	ld de,0e0d9h
	ldd
	inc de
	inc hl
	call sub_28deh
	ld de,0e159h
	call sub_28e5h
	ld de,0e1d9h
	call sub_28e5h
	cp 057h
	call z,sub_289ch
	ld de,0e219h
	call sub_28e5h
	cp 057h
	call z,sub_28a5h
	ld de,0e259h
	call sub_28e5h
	cp 057h
	call z,sub_28bbh
	jr l2839h
l2886h:
	ld a,(0a015h)
	ld (08121h),a
	ld (0e416h),a
	ld a,(08109h)
	or a
	jr z,l2898h
	call sub_1e0dh
l2898h:
	call sub_27b4h
	ret
sub_289ch:
	push hl
	ld de,0e219h
	call sub_28c7h
	pop hl
	ret
sub_28a5h:
	push hl
	ld de,0e259h
	cpi
	call z,sub_28d8h
	ld de,0e1d9h
	ld hl,0a017h
	cpi
	call z,sub_28d8h
	pop hl
	ret
sub_28bbh:
	push hl
	ld de,0e1d9h
	ld hl,0a017h
	call sub_28c7h
	pop hl
	ret
sub_28c7h:
	cpi
	call z,sub_28d8h
	ld ix,l0040h
	add ix,de
	push ix
	pop de
	cpi
	ret nz
sub_28d8h:
	dec hl
	ld (hl),04eh
	ldi
	ret
sub_28deh:
	push hl
	push de
	ld hl,l2930h
	jr l28eah
sub_28e5h:
	push hl
	push de
	ld hl,l293dh
l28eah:
	call sub_2910h
	jr c,l28eah
	pop de
	pop hl
	cp 00ah
	jr z,l290dh
	cp 01bh
	jr z,l2901h
	cp 00bh
	jr z,l2907h
	ld (hl),a
	ldi
l2900h:
	ret
l2901h:
	ld hl,l2886h
	ex (sp),hl
	jr l2900h
l2907h:
	ld hl,l2839h
	ex (sp),hl
	jr l2900h
l290dh:
	inc hl
	jr l2900h
sub_2910h:
	ld (081b1h),de
	call sub_055fh
	ld a,(0814ah)
	cp 0ffh
	jr z,sub_2910h
	push bc
	push hl
	ld b,000h
	ld c,(hl)
	inc hl
	xor a
	ld a,(0814ah)
	cpir
	jr z,l292dh
	scf
l292dh:
	pop hl
	pop bc
	ret
l2930h:
	inc c
	ld sp,03332h
	inc (hl)
	dec (hl)
	ld (hl),037h
	jr c,$+59
	dec bc
	ld a,(bc)
	dec de
l293dh:
	ld b,045h
	ld d,a
	ld c,(hl)
	dec bc
	ld a,(bc)
	dec de
sub_2944h:
	call sub_2786h
	call sub_2b47h
l294ah:
	ld hl,0a000h
	ld de,0e0f6h
	ld bc,00505h
	xor a
	ld (0883fh),a
l2957h:
	call sub_03a4h
	call sub_051dh
l295dh:
	ld a,(0814ah)
	cp 0ffh
	jp z,l29d6h
	cp 00dh
	jp z,l2a14h
	cp 01bh
	jp z,l29e3h
	cp 00ah
	jp z,l2a14h
	cp 00ch
	jp z,l2aaah
	cp 008h
	jp z,l2abeh
	cp 080h
	jp z,l2af2h
	cp 020h
	jp m,l2957h
	cp 07eh
	jp p,l2957h
	ld a,(08261h)
	cp 001h
	jp z,l2957h
	ld a,(08263h)
	cp 001h
	jp z,l2a04h
	ld a,(08270h)
	cp 001h
	jp z,l29e7h
	ld a,(0826fh)
	cp 001h
	jp z,l29e7h
	ld a,(0826eh)
	cp 001h
	jp z,l29e7h
	ld a,(0826dh)
	cp 001h
	jp z,l2b2dh
	ld a,(08262h)
	cp 001h
	jp z,l2acdh
l29c5h:
	ld a,(0814ah)
	ld (de),a
	ld (hl),a
	inc de
	inc hl
	dec b
	ld a,b
	or a
	jp nz,l29d6h
	inc a
	ld (08261h),a
l29d6h:
	call sub_0572h
	ld a,(0883fh)
	cp 001h
	jr z,l29e3h
	jp l295dh
l29e3h:
	call sub_27b4h
	ret
l29e7h:
	ld a,(0814ah)
	cp 030h
	jp m,l29d6h
	cp 03ah
	jp p,l29f7h
	jp l29c5h
l29f7h:
	cp 041h
	jp m,l29d6h
	cp 046h
	jp p,l29d6h
	jp l29c5h
l2a04h:
	ld a,(0814ah)
	cp 030h
	jp m,l29d6h
	cp 03ah
	jp p,l29d6h
	jp l29c5h
l2a14h:
	ld a,(08262h)
	cp 001h
	jr z,l2a32h
	xor a
	ld (08261h),a
	ld hl,0a005h
	ld de,0e179h
	ld bc,l0202h
	ld a,001h
	ld (08262h),a
	call sub_31aeh
	jr l29d6h
l2a32h:
	ld a,(0826dh)
	cp 001h
	jr z,l2a50h
	xor a
	ld (08261h),a
	ld hl,0a007h
	ld de,0e23ah
	ld bc,l0101h
	ld a,c
	ld (0826dh),a
	call sub_330bh
	jp l29d6h
l2a50h:
	ld a,(0826eh)
	cp 001h
	jr z,l2a6ch
	xor a
	ld (08261h),a
	ld hl,0a008h
	ld de,0e259h
	ld bc,l0202h
	ld a,001h
	ld (0826eh),a
	jp l29d6h
l2a6ch:
	ld a,(0826fh)
	cp 001h
	jr z,l2a88h
	xor a
	ld (08261h),a
	ld hl,0a00ah
	ld de,0e279h
	ld bc,l0202h
	ld a,001h
	ld (0826fh),a
	jp l29d6h
l2a88h:
	ld a,(08263h)
	cp 001h
	jr z,l2aa4h
	xor a
	ld (08261h),a
	ld hl,0a00eh
	ld de,0e2f5h
	ld bc,l0606h
	ld a,001h
	ld (08263h),a
	jp l29d6h
l2aa4h:
	call sub_279ah
	jp l294ah
l2aaah:
	ld a,b
	or a
	jr z,l2ab6h
	inc de
	inc hl
	dec b
	ld a,b
	or a
	jp nz,l29d6h
l2ab6h:
	ld a,001h
	ld (08261h),a
	jp l29d6h
l2abeh:
	ld a,c
	cp b
	jp z,l29d6h
	dec de
	dec hl
	inc b
	xor a
	ld (08261h),a
	jp l29d6h
l2acdh:
	ld a,b
	cp 002h
	jr z,l2ae2h
	ld a,(0814ah)
	cp 031h
	jp m,l29d6h
	cp 03ah
	jp p,l29d6h
	jp l29c5h
l2ae2h:
	ld a,(0814ah)
	cp 05ah
	jp z,l29c5h
	cp 055h
	jp z,l29c5h
	jp l29d6h
l2af2h:
	ld a,(08264h)
	cp 001h
	jp z,l2b2ah
	ld a,(08263h)
	cp 001h
	jp z,l2b2ah
	ld a,(0826fh)
	cp 001h
	jp z,l2b2ah
	ld a,(0826eh)
	cp 001h
	jp z,l2b2ah
	ld a,(0826dh)
	cp 001h
	jp z,l2b2ah
	ld a,(08262h)
	cp 001h
	jr z,l2b27h
	call sub_31e8h
	jp l29d6h
l2b27h:
	call sub_33dah
l2b2ah:
	jp l29d6h
l2b2dh:
	ld a,(0814ah)
	cp 04ch
	jp z,l29c5h
	cp 050h
	jp z,l29c5h
	cp 044h
	jp z,l29c5h
	cp 053h
	jp z,l29c5h
	jp l29d6h
sub_2b47h:
	ld de,0b3f8h
	call sub_0c85h
sub_2b4dh:
	ld de,0e0f6h
	ld hl,0a000h
	ld bc,l0005h
	ldir
	ld de,0e179h
	ld bc,l0001h+1
	ldir
sub_2b60h:
	ld de,0e23ah
	ld bc,l0001h
	ldir
	ld de,0e259h
	ld bc,l0001h+1
	ldir
	ld de,0e279h
	ld bc,l0001h+1
	ldir
	inc hl
	inc hl
	ld de,0e2f5h
	ld bc,l0005h+1
	ldir
	ret
sub_2b83h:
	in a,(04dh)
	rrca
	rrca
	jr c,l2b90h
	xor a
	ld (08225h),a
	jp l312ah
l2b90h:
	ld a,(0829ah)
	or a
	call nz,sub_413bh
	ld a,000h
	ld (0829ah),a
l2b9ch:
	ld a,040h
	out (081h),a
	in a,(080h)
	ld (08149h),a
	cp 088h
	jp m,l2bb2h
	cp 08ch
	jp p,l2bb2h
	jp l2cf2h
l2bb2h:
	ld de,l1000h
l2bb5h:
	dec de
	ld a,d
	or e
	jr nz,l2bb5h
	ld a,(08149h)
	cp 0b3h
	jp z,l3097h
	cp 0b4h
	jp z,l3097h
	in a,(04dh)
	rrca
	rrca
	jr c,l2b9ch
	ld a,(0883dh)
	or a
	jr nz,l2bd9h
	ld a,(08290h)
	or a
	jr z,l2c0ch
l2bd9h:
	ld a,(08149h)
	cp 086h
	jp z,l2cc8h
	cp 0b2h
	jp z,l30d4h
	cp 080h
	jp z,l2c60h
	cp 081h
	jp z,l2c69h
	cp 084h
	jp z,l2cb6h
	cp 085h
	jp z,l2cbfh
	cp 0abh
	jp z,l3017h
	cp 0aeh
	jp z,l3081h
	cp 0afh
	jp z,l3133h
	jp l3126h
l2c0ch:
	ld hl,081c0h
	ld a,(08149h)
	and 0f8h
	cp 080h
	jr z,l2c3eh
	cp 088h
	jp z,l2cf2h
	cp 090h
	jp z,l2d56h
	cp 098h
	jp z,l2e6fh
	cp 0a0h
	jp z,l2eebh
	cp 0a8h
	jp z,l2fe6h
	cp 0b0h
	jp z,l3097h
	cp 0b8h
	jp z,l311dh
	jp l3121h
l2c3eh:
	ld a,(08149h)
	cp 080h
	jr z,l2c60h
	cp 081h
	jr z,l2c69h
	cp 082h
	jr z,l2c72h
	cp 083h
	jr z,l2cabh
	cp 084h
	jr z,l2cb6h
	cp 085h
	jr z,l2cbfh
	cp 086h
	jr z,l2cc8h
l2c5dh:
	jp l3121h
l2c60h:
	call sub_2cdbh
	ld (08105h),a
	jp l3126h
l2c69h:
	call sub_2cdbh
	ld (08107h),a
	jp l3126h
l2c72h:
	ld a,(0810dh)
	or a
	jr nz,l2c85h
	ld a,(08115h)
	or a
	jr nz,l2c85h
	ld a,(08111h)
	or a
	jp z,l312bh
l2c85h:
	ld a,(08242h)
	or a
	jp nz,l312bh
	ld a,(08241h)
	or a
	jp nz,l312bh
	ld a,(08220h)
	or a
	jp nz,l312bh
	ld a,(0822bh)
	cp 001h
	jp z,l312bh
	call sub_2cdbh
	ld (08109h),a
	jp l3126h
l2cabh:
	ld a,(0810bh)
	xor 001h
	ld (0810bh),a
	jp l3126h
l2cb6h:
	call sub_2cdbh
	ld (08101h),a
	jp l3126h
l2cbfh:
	call sub_2cdbh
	ld (08103h),a
	jp l3126h
l2cc8h:
	ld a,(08131h)
	xor 001h
	ld (08131h),a
	jp l3126h
l2cd3h:
	ld a,001h
	ld (08138h),a
	jp l3126h
sub_2cdbh:
	ld a,(08188h)
	and 004h
	jr z,l2ce6h
	xor a
	ld (08116h),a
l2ce6h:
	ld b,00ah
	ld hl,08100h
	xor a
l2cech:
	ld (hl),a
	inc hl
	djnz l2cech
	inc a
	ret
l2cf2h:
	ld a,(08149h)
	cp 088h
	jr z,l2d18h
	cp 089h
	jr z,l2d20h
	cp 08ah
	jr z,l2d28h
	cp 08bh
	jr z,l2d30h
	cp 08ch
	jr z,l2d38h
	cp 08dh
	jr z,l2d40h
	cp 08eh
	jr z,l2d4bh
	cp 08fh
	jr z,l2cd3h
	jp l3121h
l2d18h:
	ld a,001h
	ld (08134h),a
	jp l3126h
l2d20h:
	ld a,001h
	ld (08135h),a
	jp l3126h
l2d28h:
	ld a,001h
	ld (08137h),a
	jp l3126h
l2d30h:
	ld a,001h
	ld (08136h),a
	jp l3126h
l2d38h:
	ld a,002h
	ld (08138h),a
	jp l3126h
l2d40h:
	ld a,(08139h)
	xor 001h
	ld (08139h),a
	jp l3126h
l2d4bh:
	ld a,(0814bh)
	xor 001h
	ld (0814bh),a
	jp l3126h
l2d56h:
	ld a,(08149h)
	cp 090h
	jr z,l2d7eh
	cp 091h
	jr z,l2d8ah
	cp 092h
	jr z,l2d9eh
	cp 093h
	jr z,l2dd1h
	cp 094h
	jr z,l2dd7h
	cp 095h
	jr z,l2debh
	cp 096h
	jp z,l2e02h
	cp 097h
	jp z,l2e12h
	jp l3121h
l2d7eh:
	ld a,001h
	ld (08132h),a
	xor a
	ld (08133h),a
	jp l3126h
l2d8ah:
	ld a,(0822bh)
	cp 001h
	jp z,l312bh
	ld a,001h
	ld (08133h),a
	xor a
	ld (08132h),a
	jp l3126h
l2d9eh:
	bit 2,(hl)
	jp nz,l312fh
	ld a,(0822bh)
	cp 001h
	jp z,l312bh
	call sub_2e67h
	call sub_2e1fh
	ld (08115h),a
l2db4h:
	ld a,(08242h)
	or a
	jp nz,l2dc9h
	ld a,(0823fh)
	or a
	jp nz,l2dc9h
	ld a,(08241h)
	or a
	jp z,l3126h
l2dc9h:
	ld a,001h
	ld (0810dh),a
	jp l3126h
l2dd1h:
	call l2298h
	jp l3126h
l2dd7h:
	ld a,(0822bh)
	cp 001h
	jp z,l312bh
	call sub_2e67h
	call sub_2e1fh
	ld (08111h),a
	jp l2db4h
l2debh:
	call sub_2df1h
	jp l3126h
sub_2df1h:
	ld a,(0810fh)
	or a
	ret nz
	ld a,(08117h)
	xor 001h
	ld (08117h),a
	call sub_2fd4h
	ret
l2e02h:
	call sub_2e08h
	jp l3126h
sub_2e08h:
	call sub_2e45h
	call sub_2e1fh
	ld (0810fh),a
	ret
l2e12h:
	call sub_2e18h
	jp l3126h
sub_2e18h:
	call sub_2e1fh
	ld (0810dh),a
	ret
sub_2e1fh:
	ld a,(0822bh)
	cp 001h
	jr z,l2e29h
	call sub_1b03h
l2e29h:
	xor a
	ld (0810dh),a
	xor a
	ld (0810fh),a
	ld (08111h),a
	ld (08113h),a
	ld (08115h),a
	ld (08224h),a
	ld (0821ch),a
	ld (08125h),a
	inc a
	ret
sub_2e45h:
	ld a,(0810dh)
	cp 001h
	jr z,l2e5ah
	ld a,(08111h)
	cp 001h
	jr z,l2e5ah
	ld a,(08115h)
	cp 001h
	jr nz,sub_2e67h
l2e5ah:
	ld a,(08109h)
	cp 001h
	jr nz,sub_2e67h
	call sub_2cdbh
	ld (08101h),a
sub_2e67h:
	ld a,(0822dh)
	or a
	call z,sub_1dech
	ret
l2e6fh:
	ld a,(08149h)
	cp 098h
	jr z,l2e97h
	cp 099h
	jr z,l2e9eh
	cp 09ah
	jr z,l2ea6h
	cp 09bh
	jr z,l2eb1h
	cp 09ch
	jr z,l2ebfh
	cp 09dh
	jr z,l2ecah
	cp 09eh
	jp z,l2ed5h
	cp 09fh
	jp z,l2ee0h
	jp l3121h
l2e97h:
	xor a
	ld (0813ah),a
	jp l3126h
l2e9eh:
	ld a,001h
	ld (0813ah),a
	jp l3126h
l2ea6h:
	ld a,(0813bh)
	xor 001h
	ld (0813bh),a
	jp l3126h
l2eb1h:
	ld a,(0813ch)
	xor 001h
	ld (0813ch),a
	call sub_2fd4h
	jp l3126h
l2ebfh:
	ld a,(0813dh)
	xor 001h
	ld (0813dh),a
	jp l3126h
l2ecah:
	ld a,(0813eh)
	xor 001h
	ld (0813eh),a
	jp l3126h
l2ed5h:
	ld a,(08154h)
	xor 001h
	ld (08154h),a
	jp l3126h
l2ee0h:
	ld a,(08155h)
	xor 001h
	ld (08155h),a
	jp l3126h
l2eebh:
	ld a,(08149h)
	cp 0a0h
	jr z,l2f09h
	cp 0a1h
	jr z,l2f10h
	cp 0a2h
	jr z,l2f18h
	cp 0a3h
	jr z,l2f2dh
	cp 0a4h
	jr z,l2f47h
	cp 0a5h
	jr z,l2f83h
	jp l3121h
l2f09h:
	xor a
	ld (0813fh),a
	jp l3126h
l2f10h:
	ld a,001h
	ld (0813fh),a
	jp l3126h
l2f18h:
	call sub_2fc6h
	ld a,(0822bh)
	or a
	jp nz,l3126h
	ld a,001h
	ld (08141h),a
	ld (08230h),a
	jp l3126h
l2f2dh:
	call sub_2fc6h
	ld a,(08140h)
	bit 1,a
	jp nz,l2fbfh
	ld a,(0822bh)
	or a
	jp nz,l3126h
	ld a,002h
	ld (08140h),a
	jp l3126h
l2f47h:
	ld a,(08241h)
	or a
	jp nz,l3126h
	ld a,(0823fh)
	or a
	jp nz,l3126h
	ld a,(08242h)
	or a
	jp nz,l3126h
	call sub_2fc6h
	ld a,(08140h)
	bit 2,a
	jr nz,l2fbfh
	ld a,(08143h)
	or a
	jp nz,l3126h
	ld a,(08111h)
	or a
	jp nz,l3126h
	ld a,(08115h)
	or a
	jp nz,l3126h
	ld a,004h
	ld (08140h),a
	jp l3126h
l2f83h:
	ld a,(08241h)
	or a
	jp nz,l3126h
	ld a,(0823fh)
	or a
	jp nz,l3126h
	ld a,(08242h)
	or a
	jp nz,l3126h
	call sub_2fc6h
	ld a,(08140h)
	bit 3,a
	jr nz,l2fbfh
	ld a,(08143h)
	or a
	jp nz,l3126h
	ld a,(08111h)
	or a
	jp nz,l3126h
	ld a,(08115h)
	or a
	jp nz,l3126h
	ld a,008h
	ld (08140h),a
	jp l3126h
l2fbfh:
	xor a
	ld (08140h),a
	jp l3126h
sub_2fc6h:
	xor a
	ld (08220h),a
	ld (08269h),a
	ld (0826ah),a
	call sub_1b03h
	ret
sub_2fd4h:
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	and 0f3h
	ld (0818ch),a
	out (080h),a
	call sub_4cdch
	ret
l2fe6h:
	ld a,(08149h)
	cp 0abh
	jp z,l3017h
	cp 0aeh
	jp z,l3081h
	cp 0afh
	jp z,l3133h
	bit 3,(hl)
	jp nz,l312fh
	ld a,(0822bh)
l3000h:
	cp 001h
	jp z,l3126h
	ld a,(08149h)
	cp 0a8h
	jr z,l302dh
	cp 0a9h
	jr z,l3042h
	cp 0aah
	jr z,l305dh
	jp l3121h
l3017h:
	ld a,(0814fh)
	xor 001h
	ld (0814fh),a
	jr nz,l3027h
	call sub_1e9dh
	jp l3126h
l3027h:
	call sub_1e8fh
	jp l3126h
l302dh:
	ld a,(0e40dh)
	cp 001h
	jp z,l303ah
	cp 002h
	jp nz,l3126h
l303ah:
	ld a,001h
	ld (08123h),a
	jp l3126h
l3042h:
	ld a,(08143h)
	or a
	jp z,l312bh
	ld a,(08218h)
	or a
	jp nz,l312bh
	ld a,(08142h)
	rlc a
	rlc a
	ld (08142h),a
	jp l3126h
l305dh:
	ld a,(0810dh)
	cp 000h
	jp z,l312bh
	ld a,(08143h)
	cp 001h
	jr z,l3076h
	inc a
	ld (08143h),a
	ld (0822ah),a
	jp l3126h
l3076h:
	xor a
	ld (08143h),a
	inc a
	ld (08142h),a
	jp l3126h
l3081h:
	ld a,(08150h)
	xor 001h
	ld (08150h),a
	jr nz,l3091h
	call sub_1ed5h
	jp l3126h
l3091h:
	call sub_1ec2h
	jp l3126h
l3097h:
	ld a,(08149h)
	cp 0b6h
	jp z,l3112h
	cp 0b5h
	jr z,l30f5h
	bit 4,(hl)
	jp nz,l312fh
	cp 0b0h
	jr z,l30beh
	cp 0b1h
	jr z,l30c9h
	cp 0b2h
	jr z,l30d4h
	cp 0b3h
	jr z,l30dfh
	cp 0b4h
	jr z,l30eah
	jr l3121h
l30beh:
	ld a,(08144h)
	xor 001h
	ld (08144h),a
	jp l3126h
l30c9h:
	ld a,(08145h)
	xor 001h
	ld (08145h),a
	jp l3126h
l30d4h:
	ld a,(08146h)
	xor 001h
	ld (08146h),a
	jp l3126h
l30dfh:
	ld a,(08148h)
	ld a,001h
	ld (08148h),a
	jp l3126h
l30eah:
	ld a,(08147h)
	ld a,001h
	ld (08147h),a
	jp l3126h
l30f5h:
	ld a,(08239h)
	or a
	jp nz,l3126h
	ld a,(08151h)
	xor 001h
	ld (08151h),a
	jr nz,l310ch
	call sub_1f22h
	jp l3126h
l310ch:
	call sub_1f0eh
	jp l3126h
l3112h:
	ld a,(08153h)
	xor 001h
	ld (08153h),a
	jp l3126h
l311dh:
	ld a,(08149h)
	nop
l3121h:
	ld a,003h
l3123h:
	ld (08292h),a
l3126h:
	xor a
	ld (08227h),a
l312ah:
	ret
l312bh:
	ld a,001h
	jr l3123h
l312fh:
	ld a,002h
	jr l3123h
l3133h:
	ld a,(08156h)
	xor 001h
	ld (08156h),a
	jr nz,l3143h
	call sub_1efbh
	jp l3126h
l3143h:
	call sub_1ee8h
	jp l3126h
sub_3149h:
	ld b,003h
	ld hl,08284h
	ld de,0a007h
	ld a,(de)
	cp 04ch
	jr nz,l315ah
	ld a,001h
	jr l316ch
l315ah:
	cp 044h
	jr nz,l3162h
	ld a,00ch
	jr l316ch
l3162h:
	cp 050h
	jr nz,l316ah
	ld a,00ah
	jr l316ch
l316ah:
	ld a,006h
l316ch:
	ld (hl),a
	inc hl
	inc de
	dec b
l3170h:
	ld a,(de)
	and 00fh
	push de
	push hl
	ld hl,l319ah
	ld d,000h
	ld e,a
	add hl,de
	ld a,(hl)
	pop hl
	pop de
	ld (hl),a
	inc de
	ld a,(de)
	and 00fh
	push de
	push hl
	ld hl,l31a4h
	ld d,000h
	ld e,a
	add hl,de
	ld a,(hl)
	pop hl
	pop de
	add a,(hl)
	ld (hl),a
	inc de
	inc hl
	djnz l3170h
	ld a,00fh
	ld (hl),a
	ret
l319ah:
	nop
	add hl,de
	inc sp
	ld c,l
	ld h,a
	add a,b
	sbc a,d
	or h
	adc a,0e7h
l31a4h:
	nop
	ld (bc),a
	dec b
	ex af,af'
	ld a,(bc)
	inc c
	rrca
	ld (de),a
	inc d
	rla
sub_31aeh:
	ld a,(08261h)
	push af
	push bc
	push de
	push hl
	xor a
	ld (0a01bh),a
	ld b,005h
	ld de,0a000h
	ld hl,0b81dh
	call sub_32a8h
	ld a,(0a01bh)
	or a
	jp z,l329dh
	ld de,0a000h
	ld hl,0a020h
l31d1h:
	call sub_32a8h
	ld a,(08274h)
	or a
	jp z,l329dh
	push de
	ld de,sub_00deh
	add hl,de
	pop de
	ld a,00dh
	cp (hl)
	jr nz,l31d1h
	jr l31f6h
sub_31e8h:
	ld a,(08261h)
	push af
	push bc
	push de
	push hl
	xor a
	ld (08261h),a
	ld (08274h),a
l31f6h:
	ld de,0b5beh
	call sub_0c92h
	call sub_32cdh
	ld a,(08274h)
	or a
	jr z,l3264h
	ld de,0b686h
	ld hl,002e2h
	ld (08012h),hl
	call l0c95h
	ld hl,0e35eh
	ld (081b1h),hl
l3217h:
	call sub_055fh
	ld a,(0814ah)
	cp 041h
	jr z,l323dh
	cp 042h
	jr z,l3242h
	cp 043h
	jr z,l3247h
	cp 044h
	jr z,l324ch
	cp 045h
	jr z,l3251h
	cp 01bh
	jr nz,l3217h
	ld a,001h
	ld (0883fh),a
	jp l3294h
l323dh:
	ld de,0a020h
	jr l3254h
l3242h:
	ld de,0a0feh
	jr l3254h
l3247h:
	ld de,0a1dch
	jr l3254h
l324ch:
	ld de,0a2bah
	jr l3254h
l3251h:
	ld de,0a398h
l3254h:
	sub 040h
	ld (0a01bh),a
	ld bc,l0005h
	ld hl,0a000h
	ldir
	call sub_32cdh
l3264h:
	ld b,0a0h
	ld hl,0e302h
l3269h:
	ld (hl),000h
	inc hl
	djnz l3269h
	ld hl,0032ah
	ld (08012h),hl
	ld de,0b6c3h
	call l0c95h
	ld hl,0e36ah
	ld (081b1h),hl
l3280h:
	call sub_055fh
	ld a,(0814ah)
	cp 080h
	jp z,l3294h
	cp 01bh
	jr nz,l3280h
	ld a,001h
	ld (0883fh),a
l3294h:
	ld de,0b3f8h
	call sub_0c92h
	call sub_2b4dh
l329dh:
	call sub_330bh
	pop hl
	pop de
	pop bc
	pop af
	ld (08261h),a
	ret
sub_32a8h:
	ld a,(de)
	cp (hl)
	jr nz,l32b6h
	inc de
	inc hl
	djnz sub_32a8h
	xor a
	ld (08274h),a
	jr l32cch
l32b6h:
	ld a,b
	cp 005h
	jr z,l32c0h
	dec de
	dec hl
	inc b
	jr l32b6h
l32c0h:
	ld a,(0a01bh)
	inc a
	ld (0a01bh),a
	ld a,001h
	ld (08274h),a
l32cch:
	ret
sub_32cdh:
	ld bc,l0005h
	push bc
	ld de,0e0b0h
	ld hl,0a000h
	ldir
	pop bc
	push bc
	ld de,0e110h
	ld hl,0a020h
	ldir
	pop bc
	push bc
	ld de,0e150h
	ld hl,0a0feh
	ldir
	pop bc
	push bc
	ld de,0e190h
	ld hl,0a1dch
	ldir
	pop bc
	push bc
	ld de,0e1d0h
	ld hl,0a2bah
	ldir
	pop bc
	ld de,0e210h
	ld hl,0a398h
	ldir
	ret
sub_330bh:
	ld a,(08261h)
	push af
	push bc
	push de
	push hl
	call sub_335dh
	ld a,(08275h)
	or a
	jp nz,l3341h
	call sub_33a6h
	call sub_3833h
	or a
	jr nz,l3341h
	push hl
	ld a,(0814ah)
	cp 00ah
	jr z,l3345h
	ld de,l0013h
	add hl,de
	ld bc,l0005h
	ld de,0a007h
	ldir
	ld hl,0a007h
	call sub_2b60h
	jr l3345h
l3341h:
	ld hl,0b5abh
	push hl
l3345h:
	ld de,0e1a6h
	ld a,05bh
	ld (de),a
	ld bc,l0013h
	inc de
	pop hl
	ldir
	ld a,05dh
	ld (de),a
	pop hl
	pop de
	pop bc
	pop af
	ld (08261h),a
	ret
sub_335dh:
	ld a,(0a005h)
	cp 05ah
	jr nz,l3369h
	ld hl,0b823h
	jr l3397h
l3369h:
	ld a,(0a01bh)
	cp 001h
	jr nz,l3375h
	ld hl,0a026h
	jr l3397h
l3375h:
	cp 002h
	jr nz,l337eh
	ld hl,0a104h
	jr l3397h
l337eh:
	cp 003h
	jr nz,l3387h
	ld hl,0a1e2h
	jr l3397h
l3387h:
	cp 004h
	jr nz,l3390h
	ld hl,0a2c0h
	jr l3397h
l3390h:
	cp 005h
	jr nz,l33a0h
	ld hl,0a39eh
l3397h:
	ld (081adh),hl
	xor a
	ld (08275h),a
	jr l33a5h
l33a0h:
	ld a,001h
	ld (08275h),a
l33a5h:
	ret
sub_33a6h:
	ld hl,(081adh)
	ld de,l0040h
	ld ix,0e0e1h
	ld iy,l0101h
	ld (081b5h),iy
	ld iy,081b5h
	ld a,(0a006h)
	sub 030h
	ld b,a
	xor a
	ld c,a
l33c4h:
	djnz l33d1h
	ld c,a
	or a
	add hl,bc
	ld (081b3h),hl
	ld (081b1h),ix
	ret
l33d1h:
	add ix,de
	add a,018h
	inc (iy+001h)
	jr l33c4h
sub_33dah:
	ld a,(08261h)
	push af
	push bc
	push de
	push hl
	xor a
	ld (08261h),a
	call sub_335dh
	ld de,l00d6h+1
	add hl,de
	ld (081afh),hl
	call sub_33a6h
	ld a,(0a01bh)
	or a
	jp z,l3520h
	ld a,(0a005h)
	cp 05ah
	jp z,l3520h
l3401h:
	ld de,0b6e1h
	call sub_0c92h
	ld bc,l0005h
	ld hl,(081adh)
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	ld de,0e027h
	ldir
	ld de,0b761h
	ld hl,0035fh
	ld (08012h),hl
	call l0c95h
	ld a,009h
	ld de,0e0e4h
	ld hl,(081adh)
	call sub_3811h
	ld de,(081b1h)
l3433h:
	ld hl,(081b3h)
l3436h:
	call sub_055fh
	ld a,(0814ah)
	cp 0ffh
	jr z,l3436h
	cp 080h
	jp z,l3589h
	cp 01bh
	jr nz,l3451h
	ld a,001h
	ld (0883fh),a
	jp l3589h
l3451h:
	cp 081h
	jp z,l3520h
	cp 00bh
	jr z,l346ch
	cp 00ah
	jr z,l3471h
	cp 00ch
	jr z,l3476h
	cp 008h
	jr z,l347bh
	cp 01eh
	jr z,l3480h
	jr l3485h
l346ch:
	call sub_36ach
	jr l3436h
l3471h:
	call sub_36d1h
	jr l3436h
l3476h:
	call sub_36f9h
	jr l3436h
l347bh:
	call sub_3779h
	jr l3436h
l3480h:
	call sub_37feh
	jr l3436h
l3485h:
	ld hl,(081b5h)
	ld a,l
	cp 001h
	jp z,l359ah
	ld a,(0814ah)
	cp 020h
	jp m,l3436h
	cp 07eh
	jp p,l3436h
	ld a,l
	cp 016h
	jr z,l34ebh
	cp 018h
	jr z,l34f3h
	cp 01ah
	jr z,l34b6h
	cp 01bh
	jr z,l3511h
	cp 01dh
	jr z,l34b6h
	cp 01eh
	jr z,l34cbh
	jr l34c3h
l34b6h:
	ld a,(0814ah)
	cp 030h
	jp m,l3436h
	cp 03ah
	jp p,l3436h
l34c3h:
	ld b,001h
	call sub_3673h
	jp l3436h
l34cbh:
	ld a,(0814ah)
	cp 030h
	jp m,l3436h
	cp 03ah
	jp p,l3436h
	ld hl,(081b3h)
	ld de,(081b1h)
	ld (hl),a
	ld (de),a
	ld (081b1h),de
	call sub_36f9h
	jp l3436h
l34ebh:
	ld b,002h
	call sub_3673h
	jp l3436h
l34f3h:
	ld a,(0814ah)
	cp 04ch
	jr z,l3509h
	cp 050h
	jr z,l3509h
	cp 044h
	jr z,l3509h
	cp 053h
	jr z,l3509h
	jp l3436h
l3509h:
	ld b,002h
	call sub_3673h
	jp l3436h
l3511h:
	ld a,(0814ah)
	cp 030h
	jp m,l3436h
	cp 03ah
	jp p,l3436h
	jr l3509h
l3520h:
	ld de,0b77fh
	call sub_0c92h
	ld a,(0a01bh)
	or a
	jr z,l353fh
	ld a,(0a005h)
	cp 05ah
	jr z,l353fh
	ld de,0b7ffh
	ld hl,0034ch
	ld (08012h),hl
	call l0c95h
l353fh:
	ld a,(0b822h)
	ld de,0e0e4h
	ld hl,0b823h
	call sub_3811h
	ld a,001h
	ld (08261h),a
	ld de,0e35eh
	ld (081b1h),de
l3557h:
	call sub_055fh
	ld a,(0814ah)
	cp 080h
	jp z,l3589h
	cp 01bh
	jr nz,l356eh
	ld a,001h
	ld (0883fh),a
	jp l3589h
l356eh:
	cp 081h
	jr nz,l3557h
	xor a
	ld (08261h),a
	ld a,(0a01bh)
	or a
	jr z,l3557h
	ld a,(0a005h)
	cp 05ah
	jr z,l3557h
	call sub_33a6h
	jp l3401h
l3589h:
	ld de,0b3f8h
	call sub_0c92h
	call sub_2b4dh
	pop hl
	pop de
	pop bc
	pop af
	ld (08261h),a
	ret
l359ah:
	ld a,(0814ah)
	cp 055h
	jr z,l35b5h
	cp 05ah
	jr z,l35b5h
	cp 04dh
	jr z,l35b5h
	cp 043h
	jr z,l35b5h
	cp 00dh
	jp z,l3615h
	jp l3436h
l35b5h:
	ld hl,(081b1h)
	ld (hl),a
	inc hl
	ld (081b1h),hl
	ld hl,081b5h
	inc (hl)
l35c1h:
	call sub_055fh
	ld a,(0814ah)
	cp 00ch
	jr z,l35ech
	cp 008h
	jr z,l35fch
	cp 00dh
	jr z,l360ah
	cp 031h
	jp m,l35c1h
	cp 03ah
	jp p,l35c1h
	ld hl,(081b1h)
	ld (hl),a
	dec hl
	ld (081b1h),hl
	ld hl,081b5h
	dec (hl)
	jp l3436h
l35ech:
	ld hl,(081b1h)
	inc hl
	inc hl
	ld (081b1h),hl
	ld hl,081b5h
	inc (hl)
	inc (hl)
	jp l3436h
l35fch:
	ld hl,(081b1h)
	dec hl
	ld (081b1h),hl
	ld hl,081b5h
	dec (hl)
	jp l3436h
l360ah:
	ld hl,081b5h
	dec (hl)
	ld hl,(081b1h)
	dec hl
	ld (081b1h),hl
l3615h:
	ld hl,(081b1h)
	ld a,04dh
	cp (hl)
	jr z,l3650h
	ld a,055h
	cp (hl)
	jr z,l362ch
	ld a,043h
	cp (hl)
	jr z,l3665h
	ld hl,0b823h
	jr l362fh
l362ch:
	ld hl,(081adh)
l362fh:
	push hl
	ld c,000h
	ld hl,(081b1h)
	inc hl
	ld a,(hl)
	sub 030h
	ld b,a
	pop hl
l363bh:
	djnz l364ah
	add hl,bc
	ld de,(081b3h)
	ld bc,l0017h+1
	ldir
	jp l3401h
l364ah:
	ld a,c
	add a,018h
	ld c,a
	jr l363bh
l3650h:
	ld hl,0a007h
	push hl
	ld hl,(081b3h)
	ld de,l0013h
	add hl,de
	ex de,hl
	pop hl
	ld bc,l0005h
	ldir
	jp l3401h
l3665h:
	ld hl,(081b3h)
	ld a,0aah
	ld b,018h
l366ch:
	ld (hl),a
	inc hl
	djnz l366ch
	jp l3401h
sub_3673h:
	push bc
	push bc
	ld a,(0814ah)
	ld hl,(081b3h)
	ld de,(081b1h)
	ld (hl),a
	ldi
	pop bc
	dec de
l3684h:
	inc de
	djnz l3684h
	ld (081b1h),de
	ld (081b3h),hl
	ld hl,081b5h
	pop bc
l3692h:
	inc (hl)
	djnz l3692h
	ret
sub_3696h:
	ld (081b5h),hl
	ld hl,(081b1h)
	add hl,de
	ld (081b1h),hl
	ld hl,(081b3h)
	ld de,(081b8h)
	add hl,de
	ld (081b3h),hl
	ret
sub_36ach:
	ld hl,(081b5h)
	dec h
	jr z,l36c1h
	ld de,0ffe8h
	ld (081b8h),de
	ld de,0ffc0h
	call sub_3696h
	jr l36d0h
l36c1h:
	ld h,009h
	ld de,l00bfh+1
	ld (081b8h),de
	ld de,00200h
	call sub_3696h
l36d0h:
	ret
sub_36d1h:
	ld hl,(081b5h)
	inc h
	ld a,h
	cp 00ah
	jr z,l36e9h
	ld de,l0017h+1
	ld (081b8h),de
	ld de,l0040h
	call sub_3696h
	jr l36f8h
l36e9h:
	ld h,001h
	ld de,0ff40h
	ld (081b8h),de
	ld de,0fe00h
	call sub_3696h
l36f8h:
	ret
sub_36f9h:
	ld hl,(081b5h)
	inc l
	push hl
	ld a,l
	cp 002h
	jr z,l3740h
	cp 017h
	jr z,l3733h
	cp 019h
	jr z,l3726h
	cp 01ch
	jr z,l3726h
	cp 01fh
	jr z,l374eh
	ld hl,(081b1h)
	inc hl
	ld (081b1h),hl
l371ah:
	ld hl,(081b3h)
	inc hl
	ld (081b3h),hl
	pop hl
l3722h:
	ld (081b5h),hl
	ret
l3726h:
	ld hl,(081b1h)
	inc hl
	inc hl
	ld (081b1h),hl
	pop hl
	inc hl
	push hl
	jr l371ah
l3733h:
	ld hl,(081b1h)
	inc hl
	inc hl
	ld (081b1h),hl
	pop hl
	inc hl
	push hl
	jr l371ah
l3740h:
	ld hl,(081b1h)
	inc hl
	inc hl
	inc hl
	ld (081b1h),hl
	pop hl
	inc hl
	inc hl
	jr l3722h
l374eh:
	ld a,h
	cp 009h
	jp z,l3767h
	ld de,l0001h
	ld (081b8h),de
	ld de,l0023h
	call sub_3696h
	pop hl
	inc h
	ld l,001h
	jr l3722h
l3767h:
	ld hl,0e0e1h
	ld (081b1h),hl
	ld hl,(081adh)
	ld (081b3h),hl
	pop hl
	ld hl,l0101h
	jr l3722h
sub_3779h:
	ld hl,(081b5h)
	dec l
	push hl
	ld a,l
	cp 01ch
	jr z,l37c1h
	cp 019h
	jr z,l37c1h
	cp 017h
	jr z,l37b4h
	cp 003h
	jr z,l37a6h
	cp 000h
	jr z,l37ceh
	ld hl,(081b1h)
	dec hl
	ld (081b1h),hl
l379ah:
	ld hl,(081b3h)
	dec hl
	ld (081b3h),hl
	pop hl
l37a2h:
	ld (081b5h),hl
	ret
l37a6h:
	ld hl,(081b1h)
	dec hl
	dec hl
	dec hl
	ld (081b1h),hl
	pop hl
	dec hl
	dec hl
	jr l37a2h
l37b4h:
	ld hl,(081b1h)
	dec hl
	dec hl
	ld (081b1h),hl
	pop hl
	dec hl
	push hl
	jr l379ah
l37c1h:
	ld hl,(081b1h)
	dec hl
	dec hl
	ld (081b1h),hl
	pop hl
	dec hl
	push hl
	jr l379ah
l37ceh:
	ld a,h
	cp 001h
	jr z,l37ech
	ld hl,(081b1h)
	ld de,l0023h
	or a
	sbc hl,de
	ld (081b1h),hl
	ld hl,(081b3h)
	dec hl
	ld (081b3h),hl
	pop hl
	dec h
	ld l,01eh
	jr l37a2h
l37ech:
	ld hl,0e2feh
	ld (081b1h),hl
	ld hl,(081afh)
	ld (081b3h),hl
	pop hl
	ld hl,l091dh+1
	jr l37a2h
sub_37feh:
	ld hl,l0101h
	ld (081b5h),hl
	ld hl,0e0e1h
	ld (081b1h),hl
	ld hl,(081adh)
	ld (081b3h),hl
	ret
sub_3811h:
	push de
	push hl
l3813h:
	ld bc,l0013h
	ldir
	inc de
	ldi
	inc de
	ldi
	ldi
	inc de
	ldi
	ldi
	push hl
	ex de,hl
	ld de,l0024h+1
	add hl,de
	ex de,hl
	pop hl
	dec a
	jr nz,l3813h
	pop hl
	pop de
	ret
sub_3833h:
	push hl
	ld b,013h
l3836h:
	ld a,0aah
	cp (hl)
	jr nz,l3842h
	inc hl
	djnz l3836h
	ld a,001h
	jr l3843h
l3842h:
	xor a
l3843h:
	pop hl
	ret
sub_3845h:
	call sub_38a5h
	ld ix,0e760h
	ld (ix+000h),03fh
	inc ix
	ld (ix+000h),0aeh
	ld c,096h
l3858h:
	call sub_03a4h
	call sub_051dh
	in a,(04dh)
	rrca
	rrca
	jp c,l38a1h
	ld b,001h
	call sub_0545h
	dec c
	jp z,l38a1h
	ld a,(0814ah)
	cp 0ffh
	jr z,l3858h
	cp 041h
	call z,sub_3934h
	cp 042h
	call z,sub_3962h
	cp 043h
	call z,sub_3a1eh
	cp 044h
	call z,sub_3a79h
	cp 045h
	call z,sub_3ac5h
	cp 04dh
	call z,sub_3b77h
	cp 052h
	call z,sub_3ddah
	cp 053h
	call z,sub_3f46h
	cp 03fh
	jr z,sub_3845h
l38a1h:
	call sub_38b4h
	ret
sub_38a5h:
	ld b,040h
	ld ix,0e760h
l38abh:
	ld (ix+000h),000h
	inc ix
	djnz l38abh
	ret
sub_38b4h:
	call sub_09e2h
	ld hl,l0360h
	ld (08012h),hl
	ld de,0a7d0h
	call l0c95h
	ret
sub_38c4h:
	ld hl,0bb05h
sub_38c7h:
	ld bc,l0007h
	push bc
	ld de,0e760h
	ldir
	pop bc
	ld de,0e780h
	ldir
	ret
sub_38d7h:
	ld hl,0c056h
	call sub_38c7h
	ret
sub_38deh:
	push hl
	ex de,hl
	ld de,0001fh
	add hl,de
	ex de,hl
	pop hl
	ret
sub_38e7h:
	ld d,006h
	ld bc,l0009h
l38ech:
	cpi
	jr nz,l3910h
	jp po,l3911h
	ld (ix+000h),058h
	inc ix
	dec d
	jr nz,l3900h
	ld ix,0e780h
l3900h:
	ld (ix+000h),0aeh
l3904h:
	call sub_051dh
	ld a,(0814ah)
	cp 0ffh
	jr z,l3904h
	jr l38ech
l3910h:
	pop hl
l3911h:
	call sub_051dh
	ld a,(0814ah)
	ret
sub_3918h:
	ld a,030h
	rld
	cp 03ah
	jp c,l3923h
	add a,007h
l3923h:
	ld (de),a
	ld a,030h
	inc de
	rld
	cp 03ah
	jp c,l3930h
	add a,007h
l3930h:
	ld (de),a
	rld
	ret
sub_3934h:
	ld hl,0b9f4h
	call sub_38e7h
	ld de,0ba49h
	call sub_0c92h
l3940h:
	call sub_03a4h
	call sub_526bh
	ld b,006h
	ld de,0e0f7h
	ld hl,08182h
l394eh:
	call sub_3918h
	call sub_38deh
l3954h:
	inc hl
	djnz l394eh
	ld a,(08119h)
	ld (de),a
	ld b,008h
	call sub_0545h
	jr l3940h
sub_3962h:
	ld hl,0b9fdh
	call sub_38e7h
	ld hl,(0a01ch)
	push hl
	ld hl,(0a477h)
	push hl
	ld hl,(0a7e0h)
	push hl
	ld b,006h
	ld hl,0a7e2h
l3979h:
	ld a,(hl)
	push af
	inc hl
	djnz l3979h
	ld bc,l0005h+1
	ld de,081a5h
	ld hl,0a00eh
	ldir
	ld bc,l0007h
	push bc
	ld de,0e700h
	ld hl,0a7d0h
	ldir
	pop bc
	ld de,0e720h
	inc hl
	ldir
l399ch:
	call sub_38a5h
	ld ix,0e780h
	ld bc,0a000h
	ld hl,l0800h
l39a9h:
	ld a,058h
	ld (bc),a
	ld a,(bc)
	cp 058h
	jp nz,l39fah
	call sub_03a4h
	inc bc
	ld a,c
	or a
	call z,sub_39ech
	dec hl
	ld a,h
	or l
	jr nz,l39a9h
	ld a,00dh
	ld (0a476h),a
	call sub_3b59h
	ld bc,l0005h+1
	ld de,0a00eh
	ld hl,081a5h
	ldir
	ld b,006h
	ld hl,0a7e7h
l39d8h:
	pop af
	ld (hl),a
	dec hl
	djnz l39d8h
	pop hl
	ld (0a7e0h),hl
	pop hl
	ld (0a477h),hl
	pop hl
	ld (0a01ch),hl
	ld a,03fh
	ret
sub_39ech:
	push bc
	ld (ix+000h),058h
	inc ix
	ld b,00ah
	call sub_0545h
	pop bc
	ret
l39fah:
	ld hl,0bae2h
	call sub_38c7h
	ld de,0e783h
	ld hl,081bfh
	call sub_3918h
	inc de
	dec hl
	call sub_3918h
	ld b,00ah
	call sub_0545h
	call sub_03a4h
	ld b,00ah
	call sub_0545h
	jp l399ch
sub_3a1eh:
	ld hl,0ba06h
	call sub_38e7h
	call sub_38a5h
	ld ix,0e760h
	ld (ix+000h),03fh
l3a2fh:
	call sub_03a4h
	in a,(04dh)
	rrca
	rrca
	jr nc,l3a2fh
	ld a,0c1h
	out (081h),a
	ld b,001h
	call sub_0545h
	ld a,040h
	out (081h),a
	in a,(080h)
	ld (08149h),a
	and 038h
	srl a
	srl a
	srl a
	ld h,080h
l3a54h:
	jr z,l3a5ah
	inc h
	dec a
	jr l3a54h
l3a5ah:
	ld a,h
	out (081h),a
	ld h,001h
	ld a,(08149h)
	and 007h
l3a64h:
	jr z,l3a6bh
	sla h
	dec a
	jr l3a64h
l3a6bh:
	ld a,h
	out (080h),a
	ld de,0e761h
	ld hl,08149h
	call sub_3918h
	jr l3a2fh
sub_3a79h:
	ld hl,0ba0fh
	call sub_38e7h
	ld hl,0baf0h
	call sub_3aafh
	cp 000h
	ret nz
	in a,(09fh)
	ld (081beh),a
	call sub_3aafh
	cp 000h
	ret nz
	in a,(0f0h)
	ld (081bfh),a
	call sub_3aafh
	cp 000h
	ret nz
	ld hl,(081beh)
	ld (0a01ch),hl
	ld (0a477h),hl
	ld (0a7e0h),hl
	call sub_38c4h
l3aadh:
	jr l3aadh
sub_3aafh:
	call sub_38a5h
	ld bc,l0004h
	ld de,0e760h
	ldir
	ld c,(hl)
	inc hl
	ld ix,0e780h
	call l3900h
	xor a
	ret
sub_3ac5h:
	ld hl,0ba18h
	call sub_38e7h
	ld a,00dh
	ld (087ffh),a
	call sub_0c85h
l3ad3h:
	ld de,0bb13h
	call sub_0c92h
	ld de,0e0dbh
	ld hl,0a7f0h
	ld b,007h
	call sub_3b1fh
	ld b,006h
	inc de
	call sub_38deh
	call sub_3b1fh
	call sub_38a5h
	ld bc,l0007h
	ld de,0e760h
	ld hl,0c05dh
	ldir
l3afbh:
	call sub_03a4h
	call sub_051dh
	ld a,(0814ah)
	cp 04ah
	jr z,l3b13h
	cp 01bh
	jr nz,l3afbh
	call sub_0c78h
	call sub_38b4h
	ret
l3b13h:
	ld b,00fh
	ld hl,0a7f0h
l3b18h:
	ld (hl),000h
	inc hl
	djnz l3b18h
	jr l3ad3h
sub_3b1fh:
	call sub_3918h
	inc hl
	call sub_38deh
	djnz sub_3b1fh
	ret
	ld hl,0ba21h
	ld bc,l0004h
	ld d,c
	call l38ech
	call sub_4121h
	ld hl,l07eah
	call sub_4155h
	call sub_254bh
	call sub_3b59h
l3b42h:
	call sub_03a4h
	call sub_051dh
	ld a,(0814ah)
	cp 01bh
	jr nz,l3b42h
	call sub_0c78h
	call sub_38b4h
	call sub_413bh
	ret
sub_3b59h:
	ld bc,l0007h
	push bc
	ld de,0a7d0h
	ld hl,0e700h
	ldir
	ex de,hl
	ld (hl),00ah
	ex de,hl
	pop bc
	inc de
	ld hl,0e720h
	ldir
	ex de,hl
	ld (hl),00dh
	call sub_38d7h
	ret
sub_3b77h:
	call sub_051dh
	ld a,(0814ah)
	cp 0ffh
	jr z,sub_3b77h
	cp 053h
	jp nz,sub_3b77h
	ld hl,0ba34h
	ld bc,l0007h+1
	ld d,006h
	call l38ech
	ld a,001h
	or a
	call nz,sub_78a3h
	ld a,03fh
	ret
sub_3b9ah:
	push hl
	push bc
	push de
	ld a,00dh
	ld (087ffh),a
	call sub_0c85h
	ld a,(0822eh)
	or a
	jp z,l3d66h
	ld a,(0e581h)
	cp 030h
	jp m,l3d5dh
	cp 03ah
	jp p,l3d5dh
	ld de,0c064h
	call sub_0c92h
	ld hl,0835dh
	ld (hl),000h
	ld hl,0a496h
	ld de,0e131h
	ld b,002h
l3bcch:
	push bc
	ld bc,l0005h+1
	ldir
	push hl
	ld hl,0835dh
	inc (hl)
	pop hl
	ex de,hl
	ld bc,l001ah
	add hl,bc
	ex de,hl
	ld bc,l0005h+1
	ldir
	push hl
	ld hl,0835dh
	inc (hl)
	pop hl
	ex de,hl
	ld bc,l003ah
	add hl,bc
	ex de,hl
	pop bc
	djnz l3bcch
	ld hl,0e280h
	ld (08376h),hl
	ld hl,l3d97h
l3bfbh:
	ld bc,l000bh
	ld de,08365h
	ldir
	ld a,(08365h)
	cp 080h
	jp z,l3c4ch
	push hl
	ld hl,(0836ah)
	ld a,(hl)
	cp 020h
	jp z,l3c3ah
	ld de,(08376h)
	ld hl,l0020h
	add hl,de
	ld (08376h),hl
	ld hl,(08366h)
	ld bc,(08368h)
	ldir
	ld hl,(0836eh)
	ld bc,(0836ch)
	ldir
	ld hl,0835dh
	inc (hl)
	pop hl
	jp l3bfbh
l3c3ah:
	ld hl,(0836eh)
	ld bc,(0836ch)
	ld b,c
	ld a,030h
l3c44h:
	ld (hl),a
	inc hl
	djnz l3c44h
	pop hl
	jp l3bfbh
l3c4ch:
	ld a,(0835dh)
	ld (08364h),a
	ld hl,0c155h
	ld de,0e360h
	ld bc,l005ch
	ldir
l3c5dh:
	ld a,(08364h)
	ld (0835dh),a
	ld hl,0e131h
	ld (08376h),hl
	ld de,0a496h
	ld c,000h
l3c6eh:
	ld b,006h
	ld a,006h
	ld (0836ch),a
	jp l3cd6h
l3c78h:
	ld hl,(08376h)
	push bc
	ex de,hl
	ld c,b
	ld b,000h
	add hl,bc
	ex de,hl
	ld bc,l0020h
	add hl,bc
	bit 0,a
	jr nz,l3c8bh
	add hl,bc
l3c8bh:
	ld (08376h),hl
	pop bc
	jr l3c6eh
l3c91h:
	ld hl,0e284h
	ld (08376h),hl
l3c97h:
	ld a,(hl)
	cp 058h
	jp z,l3d79h
	cp 059h
	jp z,l3d7fh
	cp 05ah
	jp z,l3d85h
	cp 07ah
	jp z,l3d8bh
	cp 052h
	jp z,l3d91h
	cp 054h
	jp nz,l3cd9h
	ld hl,l3dceh
l3cb9h:
	push bc
	ld bc,l000bh
	ld de,08365h
	ldir
	pop bc
	ld de,(08376h)
	ld hl,l000bh+1
	add hl,de
	ld de,(0836ch)
	sbc hl,de
	ld b,e
	ld de,(0836eh)
l3cd6h:
	ld (081b1h),hl
l3cd9h:
	call sub_055fh
	ld a,(0814ah)
	cp 0ffh
	jr z,l3cd9h
	cp 01bh
	jp z,l3d50h
	cp 00dh
	jp z,l3d2dh
	cp 00ah
	jp z,l3d2dh
	cp 00ch
	jp z,l3d17h
	cp 008h
	jp z,l3d20h
	cp 00bh
	jp z,l3c5dh
	cp 030h
	jp m,l3cd9h
	cp 03ah
	jp p,l3cd9h
	ld (hl),a
	ld (de),a
	djnz l3d13h
l3d0fh:
	inc b
	jp l3cd9h
l3d13h:
	inc hl
	inc de
	jr l3cd6h
l3d17h:
	dec b
	jp z,l3d0fh
	inc de
	inc hl
	jp l3cd6h
l3d20h:
	ld a,(0836ch)
	cp b
	jp z,l3cd9h
	dec de
	dec hl
	inc b
	jp l3cd6h
l3d2dh:
	ld a,(0835dh)
	dec a
	cp 000h
	jp z,l3cd9h
	ld (0835dh),a
	inc c
	ld a,c
	cp 004h
	jp m,l3c78h
	jp z,l3c91h
	ld hl,(08376h)
	ld de,l0020h
	add hl,de
	ld (08376h),hl
	jp l3c97h
l3d50h:
	call sub_79a4h
l3d53h:
	call sub_0c78h
	call sub_38b4h
	pop de
	pop bc
	pop hl
	ret
l3d5dh:
	ld de,0c244h
	call sub_0c92h
	jp l3d6ch
l3d66h:
	ld de,0c195h
	call sub_0c92h
l3d6ch:
	call sub_051dh
	ld a,(0814ah)
	cp 01bh
	jr nz,l3d6ch
	jp l3d53h
l3d79h:
	ld hl,l3d97h
	jp l3cb9h
l3d7fh:
	ld hl,l3da2h
	jp l3cb9h
l3d85h:
	ld hl,l3dadh
	jp l3cb9h
l3d8bh:
	ld hl,l3db8h
	jp l3cb9h
l3d91h:
	ld hl,l3dc3h
	jp l3cb9h
l3d97h:
	ld e,b
	inc de
	pop bc
	ld a,(bc)
	nop
	dec h
	add a,e
	ld b,000h
	ld a,e
	and h
l3da2h:
	ld e,c
	ld e,0c1h
	ld a,(bc)
	nop
	ld l,083h
	ld b,000h
	add a,c
	and h
l3dadh:
	ld e,d
	add hl,hl
	pop bc
	dec bc
	nop
	ld (hl),083h
	dec b
	nop
	add a,a
	and h
l3db8h:
	ld a,d
	inc (hl)
	pop bc
	dec bc
	nop
	dec sp
	add a,e
	dec b
	nop
	adc a,h
	and h
l3dc3h:
	ld d,d
	ccf
	pop bc
	dec c
	nop
	ld a,083h
	inc bc
	nop
	sub c
	and h
l3dceh:
	ld d,h
	ld c,d
	pop bc
	ld c,000h
	ld b,e
	add a,e
	ld (bc),a
	nop
	sub h
	and h
	add a,b
sub_3ddah:
	ld hl,0ba25h
	call sub_38e7h
l3de0h:
	call sub_38a5h
	ld de,0bce7h
	call sub_0c92h
	ld ix,0e333h
	ld (ix+001h),03fh
l3df1h:
	call sub_051dh
	ld a,(0814ah)
	cp 0ffh
	jr z,l3df1h
	ld (ix+001h),a
	cp 039h
	jr z,l3e1bh
	sub 030h
	ld hl,l3e89h
	ld de,l0004h
l3e0ah:
	cpi
	jr z,l3e11h
	add hl,de
	jr l3e0ah
l3e11h:
	ld c,(hl)
	inc hl
	outi
	ld c,(hl)
	call sub_3e23h
	jr l3de0h
l3e1bh:
	call sub_0415h
	call sub_40c4h
l3e21h:
	jr l3de0h
sub_3e23h:
	ld ix,0e760h
	ld (ix+001h),03fh
	push hl
	pop ix
l3e2eh:
	call sub_051dh
	ld a,(0814ah)
	cp 0ffh
	jr z,l3e2eh
	cp 01ch
	ret z
	call sub_3e40h
	jr l3e2eh
sub_3e40h:
	push ix
	call sub_38a5h
	pop ix
	ld hl,0bf2bh
	call sub_38c7h
	ld c,(ix+000h)
	push af
	out (c),a
	ld b,028h
	ld c,(ix+001h)
l3e58h:
	in a,(c)
	rrc a
	jr c,l3e6bh
	push bc
	ld b,001h
	call sub_0545h
	pop bc
	djnz l3e58h
	pop af
	xor a
	jr l3e70h
l3e6bh:
	dec c
	dec c
	in b,(c)
	pop af
l3e70h:
	ld hl,0e765h
	cp 000h
	jr z,l3e7dh
	ld (hl),a
	ld hl,0e785h
	ld (hl),b
	ret
l3e7dh:
	ld de,0e760h
	ld hl,0bf39h
	ld bc,l0007h
	ldir
	ret
l3e89h:
	nop
	add a,e
l3e8bh:
	ld b,084h
	add a,(hl)
	ld bc,l0483h
l3e91h:
	add a,h
	add a,(hl)
	ld (bc),a
	add a,e
	jr $-121
	add a,a
	inc bc
	add a,e
	djnz l3e21h
	add a,a
	inc b
	add a,e
	nop
	add a,h
	add a,a
	dec b
	add a,e
	nop
	add a,l
	add a,(hl)
	ld b,0e5h
	jr nz,l3e8bh
	jp po,0e507h
	djnz l3e91h
	ex (sp),hl
	ex af,af'
	add a,e
	nop
	ld d,c
	ld d,e
sub_3eb6h:
	in a,(0f0h)
	ld b,a
	in a,(09fh)
	ld c,a
	ld hl,(0a01ch)
	call sub_3f36h
	jr nz,l3ed4h
	ld hl,(0a477h)
	call sub_3f36h
	jr nz,l3ed4h
	ld hl,(0a7e0h)
	call sub_3f36h
	jr z,l3f2bh
l3ed4h:
	ld bc,(0a01ch)
	ld hl,(0a477h)
	call sub_3f36h
	jr nz,l3ef0h
	ld hl,(0a7e0h)
	call sub_3f36h
	jr nz,l3efdh
	ld hl,0bccbh
	call sub_3f3ah
	jr l3f2bh
l3ef0h:
	ld hl,(0a7e0h)
	call sub_3f36h
	jr nz,l3f02h
	ld de,0a477h
	jr l3f24h
l3efdh:
	ld de,0a7e0h
	jr l3f24h
l3f02h:
	ld bc,(0a477h)
	ld hl,(0a7e0h)
	call sub_3f36h
	jr nz,l3f16h
	ld de,0a01ch
	ld hl,0a477h
	jr l3f27h
l3f16h:
	ld hl,0ffffh
	ld (081c0h),hl
	ld hl,0bcd9h
	call sub_3f3ah
	jr l3f35h
l3f24h:
	ld hl,0a01ch
l3f27h:
	ldi
	ldi
l3f2bh:
	ld de,081c0h
	ld hl,0a01ch
	ldi
	ldi
l3f35h:
	ret
sub_3f36h:
	xor a
	sbc hl,bc
	ret
sub_3f3ah:
	call sub_38c7h
	ld b,064h
l3f3fh:
	call sub_0545h
	call sub_38b4h
	ret
sub_3f46h:
	ld hl,0ba2eh
	ld bc,l0005h+1
	ld d,c
	call l38ech
	ld a,00dh
	ld (087ffh),a
	call sub_0c85h
	ld de,0bf40h
	call sub_0c92h
	ld hl,l0300h
	ld (08012h),hl
	ld de,0c009h
	call l0c95h
	ld bc,0001dh
	ld hl,0bfech
	push bc
	push hl
	ld de,0e2a0h
	ldir
	pop hl
	pop bc
	ld de,0e2c0h
	ldir
	ld hl,0c05dh
	call sub_40a0h
l3f84h:
	ld ix,0e2a9h
	ld (ix+000h),031h
	ld (ix+020h),032h
	ld de,0e2adh
	ld hl,0a7e2h
	call sub_405fh
	ld de,0e2cdh
	call sub_405fh
l3f9fh:
	ld ix,0e0b9h
	ld hl,l40a9h
	call sub_406bh
	jr c,l3f9fh
	ld a,(0814ah)
	cp 01bh
	jp z,l4055h
l3fb3h:
	ld ix,0e0f9h
	ld hl,l40adh
	call sub_406bh
	jr c,l3fb3h
	ld a,(0814ah)
	cp 01bh
	jp z,l4055h
l3fc7h:
	ld ix,0e139h
	ld hl,040b2h
	call sub_406bh
	jr c,l3fc7h
	ld a,(0814ah)
	cp 01bh
	jp z,l4055h
l3fdbh:
	ld ix,0e179h
	ld hl,l40b6h
	call sub_406bh
	jr c,l3fdbh
	ld a,(0814ah)
	cp 01bh
	jp z,l4055h
l3fefh:
	ld ix,0e1b9h
	ld hl,l40c0h
	call sub_406bh
	jr c,l3fefh
	ld a,(0814ah)
	cp 01bh
	jp z,l4055h
l4003h:
	ld ix,0e1f9h
	ld hl,l40c0h
	call sub_406bh
	jr c,l4003h
	ld a,(0814ah)
	cp 01bh
	jp z,l4055h
l4017h:
	ld ix,0e239h
	ld hl,l40c0h
	call sub_406bh
	jr c,l4017h
	cp 04eh
	jp z,l3f9fh
	ld a,(0814ah)
	cp 01bh
	jp z,l4055h
	ld ix,0e0b9h
	ld hl,0a7e2h
	ld a,(ix+000h)
	cp 031h
	jr z,l4041h
	ld hl,0a7e7h
l4041h:
	ld b,005h
	ld de,l0040h
l4046h:
	add ix,de
	ld a,(ix+000h)
	ld (hl),a
	inc hl
	djnz l4046h
	call sub_38d7h
	jp l3f84h
l4055h:
	call sub_40c4h
	call sub_0c78h
	call sub_38b4h
	ret
sub_405fh:
	ld bc,005ffh
l4062h:
	ldi
	ld a,e
	add a,003h
	ld e,a
	djnz l4062h
	ret
sub_406bh:
	ld (ix+000h),03fh
l406fh:
	call sub_03a4h
	call sub_051dh
	ld a,(0814ah)
	cp 0ffh
	jr z,l406fh
	call sub_4080h
	ret
sub_4080h:
	ld b,000h
	ld c,(hl)
	inc hl
	xor a
	ld a,(0814ah)
	cpir
	jr z,l4094h
	ld hl,0c04fh
	call sub_40a0h
	scf
	ret
l4094h:
	push af
	ld (ix+000h),a
	ld hl,0c05dh
	call sub_40a0h
	pop af
	ret
sub_40a0h:
	ld bc,l0007h
	ld de,0e760h
	ldir
	ret
l40a9h:
	inc bc
	ld sp,01b32h
l40adh:
	inc b
	jr nc,$+51
	ld (l031bh),a
	scf
	jr c,l40d1h
l40b6h:
	add hl,bc
	jr nc,$+51
	ld (l3433h),a
	dec (hl)
	ld (hl),037h
	dec de
l40c0h:
	inc bc
	ld e,c
	ld c,(hl)
	dec de
sub_40c4h:
	call sub_40cbh
	call sub_40d7h
	ret
sub_40cbh:
	ld ix,0a7e2h
	ld d,000h
l40d1h:
	ld c,0e2h
	call sub_40e3h
	ret
sub_40d7h:
	ld ix,0a7e7h
	ld d,000h
	ld c,0e3h
	call sub_40e3h
	ret
sub_40e3h:
	ld hl,l4113h
	ld a,(ix+000h)
	call sub_410ah
	ld hl,04117h
	ld a,(ix+001h)
	sub 035h
	call sub_410ah
	ld hl,l411ch
	call sub_410ah
	ld hl,081c2h
	ld a,(ix+002h)
	rrd
	ld c,0e4h
	outi
	ret
sub_410ah:
	and 007h
	ld e,a
	outi
	add hl,de
	outi
	ret
l4113h:
	inc d
	ret nz
	call nz,sub_13cch
	ld bc,04181h
	pop bc
l411ch:
	dec d
	adc a,d
	jp z,0eaaah
sub_4121h:
	push hl
	push de
	push bc
	ld hl,0e700h
	ld bc,l0007h
	ld de,081d6h
	ldir
	ld hl,0e720h
	ld bc,l0007h
	ldir
	pop bc
	pop de
	pop hl
	ret
sub_413bh:
	push hl
	push de
	push bc
	ld hl,081d6h
l4141h:
	ld de,0e700h
	ld bc,l0007h
	ldir
	ld de,0e720h
	ld bc,l0007h
	ldir
	pop bc
	pop de
	pop hl
	ret
sub_4155h:
	push hl
	push de
	push bc
	jp l4141h
sub_415bh:
	ld a,00dh
	ld (087ffh),a
	call sub_0c85h
	ld de,0c32bh
	call sub_0c92h
	ld hl,0a4aeh
	ld de,0e118h
	ld bc,l0005h+1
	ldir
	ld de,0e17bh
	ld bc,l0001h+2
	ldir
	ld de,0e1dbh
	ld bc,l0001h+2
	ldir
	ld a,076h
	call sub_48f2h
	ld a,041h
	call sub_48f2h
	ld b,003h
	ld de,0e1dbh
l4193h:
	call sub_4930h
	ld (de),a
	inc de
	djnz l4193h
l419ah:
	ld a,001h
	ld (0835dh),a
	ld a,006h
	ld (0836ch),a
	ld b,a
	ld de,0a4aeh
	ld hl,0e118h
l41abh:
	ld (081b1h),hl
l41aeh:
	call sub_055fh
	ld a,(0814ah)
	cp 0ffh
	jr z,l41aeh
	cp 01bh
	jp z,l4236h
	cp 00dh
	jp z,l4216h
	cp 00ah
	jp z,l4216h
	cp 00ch
	jp z,l4200h
	cp 008h
	jp z,l4209h
	cp 00bh
	jp z,l419ah
	cp 030h
	jp m,l41aeh
	cp 03ah
	jp m,l41f4h
	ld c,a
	ld a,(0835dh)
	cp 002h
	ld a,c
	jp nz,l41aeh
	cp 041h
	jp m,l41aeh
	cp 047h
	jp p,l41aeh
l41f4h:
	ld (hl),a
	ld (de),a
	djnz l41fch
l41f8h:
	inc b
	jp l41aeh
l41fch:
	inc hl
	inc de
	jr l41abh
l4200h:
	dec b
	jp z,l41f8h
	inc de
	inc hl
	jp l41abh
l4209h:
	ld a,(0836ch)
	cp b
	jp z,l41aeh
	dec de
	dec hl
	inc b
	jp l41abh
l4216h:
	ld a,(0835dh)
	cp 001h
	jp z,l4223h
	cp 002h
	jp l419ah
l4223h:
	inc a
	ld (0835dh),a
	ld a,003h
	ld (0836ch),a
	ld b,a
	ld hl,0e17bh
	ld de,0a4b4h
	jp l41abh
l4236h:
	call sub_0c78h
	call sub_38b4h
	ret
sub_423dh:
	push hl
	push de
	push bc
	ld a,056h
	call sub_48f2h
	ld hl,0a4aeh
	ld b,00ch
l424ah:
	ld a,(hl)
	inc hl
	call sub_48f2h
	djnz l424ah
	pop bc
	pop de
	pop hl
	ret
sub_4255h:
	ld a,00dh
	ld (087ffh),a
	call sub_0c85h
	ld de,0c415h
	call sub_0c92h
	ld hl,0a4bah
	ld de,0e118h
	ld bc,l0005h+1
	ldir
	ld de,0e17bh
	ld bc,l0001h+2
	ldir
	ld de,0e1dah
	ld a,076h
	call sub_48f2h
	ld a,041h
	call sub_48f2h
	ld b,003h
	ld de,0e1dbh
l4288h:
	call sub_4930h
	ld (de),a
	inc de
	djnz l4288h
l428fh:
	ld a,001h
	ld (0835dh),a
	ld a,006h
	ld (0836ch),a
	ld b,a
	ld de,0a4bah
	ld hl,0e118h
l42a0h:
	ld (081b1h),hl
l42a3h:
	call sub_055fh
	ld a,(0814ah)
	cp 0ffh
	jr z,l42a3h
	cp 01bh
	jp z,l4346h
	cp 00dh
	jp z,l4315h
	cp 00ah
	jp z,l4315h
	cp 00ch
	jp z,l42ffh
	cp 008h
	jp z,l4308h
	cp 00bh
	jp z,l428fh
	cp 030h
	jp m,l42a3h
	cp 03ah
	jp m,l42e9h
	ld c,a
	ld a,(0835dh)
	cp 002h
	ld a,c
	jp nz,l42a3h
	cp 041h
	jp m,l42a3h
	cp 047h
	jp p,l42a3h
l42e9h:
	ld c,a
	ld a,(0835dh)
	cp 003h
	jp z,l434dh
l42f2h:
	ld a,c
l42f3h:
	ld (hl),a
	ld (de),a
	djnz l42fbh
l42f7h:
	inc b
	jp l42a3h
l42fbh:
	inc hl
	inc de
	jr l42a0h
l42ffh:
	dec b
	jp z,l42f7h
	inc de
	inc hl
	jp l42a0h
l4308h:
	ld a,(0836ch)
	cp b
	jp z,l42a3h
	dec de
	dec hl
	inc b
	jp l42a0h
l4315h:
	ld a,(0835dh)
	cp 001h
	jp z,l4320h
	jp l428fh
l4320h:
	inc a
	ld (0835dh),a
	ld a,003h
	ld (0836ch),a
	ld b,a
	ld hl,0e17bh
l432dh:
	ld de,0a4c0h
	jp l42a0h
	inc a
	ld (0835dh),a
l4337h:
	ld a,004h
	ld (0836ch),a
	ld b,a
	ld hl,0e1dah
	ld de,0a4c3h
	jp l42a0h
l4346h:
	call sub_0c78h
	call sub_38b4h
	ret
l434dh:
	ld a,b
	cp 004h
	jr z,l4367h
	cp 003h
l4354h:
	jp nz,l42f2h
	dec hl
	ld a,(hl)
	inc hl
	cp 030h
	jp z,l4375h
	cp 031h
	jp z,l437eh
	jp l4337h
l4367h:
	ld a,c
	cp 030h
	jp z,l42f3h
	cp 031h
	jp z,l42f3h
	jp l42a3h
l4375h:
	ld a,c
	cp 035h
	jp p,l42f3h
	jp l42a3h
l437eh:
	ld a,c
	cp 035h
	jp m,l42f3h
	jp l42a3h
l4387h:
	inc sp
	inc (hl)
	jr c,l43beh
	inc sp
	jr c,$+47
	scf
	jr nc,sub_43c2h
	add hl,sp
	ld l,034h
	inc sp
	ld (hl),02fh
	ld (0312eh),a
	jr nz,l43bch
	ld b,d
	ld b,c
	jr nz,l43c0h
	jr nz,l43d4h
	ld l,031h
	jr nz,$+34
	jr nc,$+59
	ld sp,l3930h
	ld sp,l0907h
	rrca
	ld de,l2020h
	cpl
	ld sp,l504fh
	adc a,e
	sbc a,c
	rrca
	ld de,l2020h
l43bch:
	ld b,b
	ld b,b
l43beh:
	ld l,a
	ld (hl),b
l43c0h:
	cp a
	cp d
sub_43c2h:
	ld a,(08125h)
	ld hl,0812dh
	cp (hl)
	jr nz,l43d9h
	ld a,(08218h)
	or a
	jr nz,l43d8h
	ld a,(0823ch)
l43d4h:
	or a
	jp nz,l4417h
l43d8h:
	ret
l43d9h:
	ld a,(08125h)
	ld (0812dh),a
	or a
	jp z,l44a9h
	call sub_0f17h
	ld a,(0823dh)
	or a
	jr nz,l43f1h
	ld a,03fh
	call sub_17b3h
l43f1h:
	ld hl,l0000h
	ld (08004h),hl
	call sub_1215h
	ld a,06ch
	call sub_48f2h
	ld a,(08117h)
	or a
	jr z,l440ah
	ld a,068h
	call sub_48f2h
l440ah:
	ld a,001h
	ld (08211h),a
	ld (08212h),a
	call sub_44e3h
	jr l445ch
l4417h:
	ld a,(08117h)
	ld hl,08116h
	cp (hl)
	jr z,l4429h
	ld (08116h),a
	or a
	jr nz,l43d9h
	call sub_0e37h
l4429h:
	ld a,(08117h)
	or a
	call nz,sub_0f0ah
	ld hl,(08004h)
	ld a,(08182h)
	cp l
	jr nz,l445ch
	ld a,(08183h)
	cp 0f8h
	jr c,l4445h
	ld a,0f8h
	ld (08183h),a
l4445h:
	cp h
	jr nz,l445ch
	ld a,(08119h)
	ld hl,08118h
	cp (hl)
	jp z,l43d8h
	ld a,001h
	ld (08117h),a
	ld (08116h),a
	jr l4485h
l445ch:
	ld a,(08182h)
	ld l,a
	ld a,(08183h)
	ld h,a
	ld (08004h),hl
	ld (08006h),hl
	ld (0e40bh),hl
	ld hl,00707h
	ld (0800ah),hl
	ld (0800ch),hl
	ld (0e409h),hl
	ld a,001h
	ld (0e408h),a
	ld a,(08117h)
	or a
	jp z,l43d8h
l4485h:
	call sub_0f0ah
	ld a,(08119h)
	ld (08118h),a
	ld a,068h
	call sub_48f2h
	ld a,06ch
	call sub_48f2h
	ld a,057h
	call sub_495ah
	call sub_1b76h
	ld a,(08119h)
	call sub_495ah
	jp l43d8h
l44a9h:
	ld a,(0823dh)
	or a
	jp z,l44dch
	ld a,082h
	out (081h),a
	call sub_1224h
	ld a,06bh
	call sub_48f2h
	ld a,(08111h)
	or a
	jr nz,l44d2h
	ld a,(08115h)
	or a
	jr nz,l44d2h
	ld (08212h),a
	ld (08211h),a
	xor a
	ld (0e408h),a
l44d2h:
	xor a
	ld (08017h),a
	call sub_44e3h
	jp l43d8h
l44dch:
	xor a
	ld (0823ch),a
	jp l43d8h
sub_44e3h:
	ld (0823ch),a
	ld (0823dh),a
	ld (08210h),a
	ld (08213h),a
	ld (08214h),a
	ret
	ld hl,(0800ah)
	ex de,hl
	ld hl,(08004h)
	ld a,l
	and 0f8h
	ld l,a
	ld a,e
	or 007h
	ld e,a
	and 0feh
	rrca
	ld b,a
	cpl
	add a,l
	jr c,l450bh
	xor a
l450bh:
	ld l,a
	add a,e
	jr nc,l4512h
	ld a,e
	cpl
	ld l,a
l4512h:
	ld a,h
	and 0f8h
	ld h,a
	ld a,d
	or 007h
	ld b,a
	ld a,(0814eh)
	cp 001h
	jr nz,l4522h
	ld b,d
l4522h:
	ld a,b
	ld d,a
	and 0feh
	rrca
	ld b,a
l4528h:
	add a,000h
	cpl
	add a,000h
	add a,h
	push af
	sub 000h
	pop af
	jr c,l4535h
	xor a
l4535h:
	ld h,a
	add a,000h
	add a,d
	push af
	sub 000h
	pop af
	jr nc,l4544h
	ld a,d
	add a,000h
	cpl
	ld h,a
l4544h:
	ld (08008h),hl
	ex de,hl
	ld (0800eh),hl
	call sub_0af4h
	ld hl,(08008h)
	ld a,h
l4552h:
	sub 004h
	jr nc,l4558h
	ld a,000h
l4558h:
	ld h,a
	ld a,l
	sub 004h
	jr nc,l4560h
	ld a,000h
l4560h:
	ld l,a
	ld (08006h),hl
	ld hl,(0800eh)
	ld (0800ch),hl
	ret
l456bh:
	inc sp
	inc (hl)
	jr c,l45a2h
	inc sp
	jr c,l459fh
	scf
	jr nc,$+51
	add hl,sp
	ld l,031h
	ld (hl),036h
	cpl
	ld (0312eh),a
	jr nz,$+34
	ld b,d
	ld b,c
	jr nz,$+34
	jr z,$+69
	add hl,hl
	jr nz,l45cch
	ld b,c
	ld d,d
	ld c,h
	jr nz,l45e8h
	ld b,l
	ld c,c
	ld d,e
	ld d,e
	jr nz,$+89
	ld l,047h
	ld b,l
	ld d,d
	ld c,l
	ld b,c
	ld c,(hl)
	ld e,c
	jr nz,l45cfh
	add hl,sp
l459fh:
	jr c,l45d8h
	inc l
l45a2h:
	ld sp,03939h
	ld sp,l3930h
	ld sp,l3930h
	ld sp,l200ah
	jr nz,l45d0h
	jr nz,l45d2h
	ld l,e
	ld d,(hl)
	ld a,(bc)
	ld a,(bc)
	jr nz,l45d8h
	jr nz,l45dah
	jr nz,$+111
	ld l,l
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
l45c0h:
	ld a,b
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	jr nz,l45e6h
	jr nz,l45e8h
	jr nz,l45eah
	jr nz,l45d6h
l45cch:
	ld a,(bc)
	xor h
	xor h
l45cfh:
	xor h
l45d0h:
	xor h
	xor h
l45d2h:
	xor h
	xor h
	ld a,(bc)
	ld a,(bc)
l45d6h:
	ld a,(bc)
	ld a,(bc)
l45d8h:
	ld a,(bc)
	ld a,(bc)
l45dah:
	ld a,(bc)
	xor h
	xor h
	xor h
	xor h
	xor h
	xor h
	xor h
	ld a,(bc)
	ld a,(bc)
l45e4h:
	jr nz,$+34
l45e6h:
	jr nz,$+34
l45e8h:
	jr nz,l460ah
l45eah:
	jr nz,l45f6h
	ld a,(bc)
	inc hl
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
l45f6h:
	ld a,(bc)
	ld a,(bc)
	dec c
sub_45f9h:
	ld a,(08241h)
	or a
	jp nz,l4882h
	ld a,(0823fh)
	or a
	jp nz,l4882h
	ld a,(08242h)
l460ah:
	or a
	jp nz,l4882h
	ld a,(0810dh)
	or a
	jp z,l4882h
	ld a,(08210h)
	or a
	jp nz,l4882h
	ld a,(08143h)
	or a
	jp z,l4882h
	ld a,(0821ch)
	or a
	call nz,sub_4890h
	ld a,(0822ah)
	or a
	jr nz,l4687h
	ld a,(08224h)
	or a
	jr nz,l463fh
	ld a,(08117h)
	ld hl,08116h
	cp (hl)
	jr z,l465bh
l463fh:
	ld a,(08117h)
	ld (08116h),a
	or a
	jr nz,l4687h
	call sub_179ch
	xor a
	ld (08224h),a
	call sub_495ah
	call sub_48f2h
	call sub_0efbh
	jp l479ch
l465bh:
	ld a,085h
	out (081h),a
	call sub_1242h
	set 2,a
	ld (0818dh),a
	out (080h),a
	ld a,001h
	ld (08214h),a
	ld (08215h),a
	ld (08216h),a
	ld (08229h),a
	ld a,(08119h)
	ld hl,08118h
	cp (hl)
	jr nz,l4687h
	ld a,(08259h)
	or a
	jp nz,l46d7h
l4687h:
	ld a,082h
	out (081h),a
	ld a,(0818ah)
	set 5,a
	ld (0818ah),a
	out (080h),a
	ld a,(08119h)
	ld (08118h),a
	ld a,(0825ah)
	or a
	ld a,02fh
	call z,sub_17b3h
	call sub_489dh
	ld a,068h
	call sub_48f2h
	xor a
	ld (0821fh),a
	ld (0822ah),a
	ld (08224h),a
	ld (08269h),a
	ld (08128h),a
	inc a
	ld (08117h),a
	ld (08116h),a
	ld (08211h),a
	ld (08212h),a
	ld (08259h),a
	ld (0825ah),a
	ld (08231h),a
	ld a,001h
	ld (0e405h),a
l46d7h:
	ld a,(08142h)
	bit 0,a
	jp z,l47a3h
	ld a,(08142h)
	ld (08128h),a
	ld a,(08269h)
	or a
	jp nz,l479ch
	ld a,066h
	call sub_48f2h
	ld hl,08142h
	ld a,030h
	rld
	call sub_48f2h
	rld
	call sub_48f2h
	rld
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	res 6,a
	res 7,a
	ld (0818ch),a
	out (080h),a
	ld hl,l0000h
	ld (08004h),hl
	ld hl,l7fffh
	ld (0800ah),hl
	ld a,001h
	ld (0e405h),a
	ld (08269h),a
	ld (0814eh),a
l4729h:
	ld hl,(08004h)
	ld (08006h),hl
	ld (0e406h),hl
	ld hl,08017h
	sla (hl)
	xor a
	ld (0814eh),a
	ld hl,0b903h
	call sub_1b10h
	ld a,(08142h)
	bit 0,a
	jp nz,l479ch
	bit 2,a
	jp nz,l4758h
	bit 4,a
	jp nz,l475eh
	ld hl,0b918h
	jr l4761h
l4758h:
	ld hl,0b90ah
	jp l4761h
l475eh:
	ld hl,0b911h
l4761h:
	call sub_1b10h
	ld a,066h
	call sub_48f2h
	ld hl,08142h
	ld a,030h
	rld
	call sub_48f2h
	rld
	call sub_48f2h
	rld
	ld a,(08006h)
	ld l,a
	call sub_1bb2h
	call sub_48f2h
	ld a,l
	call sub_1bbah
	call sub_48f2h
	ld a,(08007h)
	ld l,a
	call sub_1bb2h
	call sub_48f2h
	ld a,l
	call sub_1bbah
	call sub_48f2h
l479ch:
	ret
l479dh:
	xor a
	ld (08143h),a
	jr l479ch
l47a3h:
	xor a
	ld (08269h),a
	ld a,(08142h)
	ld hl,08128h
	cp (hl)
	jp nz,l47e0h
l47b1h:
	call sub_1215h
	ld a,(08142h)
	bit 2,a
	jr nz,l480ah
	bit 4,a
	jp nz,l4847h
	ld hl,00f1fh
	ld (0800ah),hl
	ld a,(08182h)
	ld l,a
	ld a,(08183h)
	ld h,a
	ld (08004h),hl
	ld de,(08196h)
	ld a,h
	cp d
	jr nz,l47efh
	ld a,l
	cp e
	jr nz,l47efh
	jp l479ch
l47e0h:
	ld (08128h),a
	ld hl,(08196h)
	dec hl
	dec hl
	dec hl
	ld (08196h),hl
	jp l47b1h
l47efh:
	ld (08196h),hl
	ld a,h
	bit 7,a
	jp nz,l47fdh
	cp 070h
	jp m,l47ffh
l47fdh:
	ld h,070h
l47ffh:
	ld a,l
	cp 0e0h
	jp c,l4841h
	ld l,0e0h
	jp l4841h
l480ah:
	ld hl,03f7fh
	ld (0800ah),hl
	ld a,(08182h)
	ld l,a
	ld a,(08183h)
	ld h,a
	ld (08004h),hl
	ld de,(08196h)
	ld a,h
	cp d
	jr nz,l482ah
	ld a,l
	cp e
	jr nz,l482ah
	jp l479ch
l482ah:
	ld (08196h),hl
	ld a,h
	bit 7,a
	jr nz,l4837h
	cp 040h
	jp m,l4839h
l4837h:
	ld h,040h
l4839h:
	ld a,l
	cp 080h
	jp c,l4841h
	ld l,080h
l4841h:
	ld (08004h),hl
	jp l4729h
l4847h:
	ld hl,01f3fh
	ld (0800ah),hl
	ld a,(08182h)
	ld l,a
	ld a,(08183h)
	ld h,a
	ld (08004h),hl
	ld de,(08196h)
	ld a,h
	cp d
	jr nz,l4867h
	ld a,l
	cp e
	jr nz,l4867h
	jp l479ch
l4867h:
	ld (08196h),hl
	ld a,h
	bit 7,a
	jp nz,l4875h
	cp 060h
	jp m,l4877h
l4875h:
	ld h,060h
l4877h:
	ld a,l
	cp 0c0h
	jp c,l4841h
	ld l,0c0h
	jp l4841h
l4882h:
	ld a,(0825ah)
	or a
	jp z,l479dh
	xor a
	ld (08116h),a
	jp sub_1b19h
sub_4890h:
	call sub_4999h
	or a
	ret nz
	ld (08117h),a
	ld hl,l463fh
	ex (sp),hl
	ret
sub_489dh:
	ld a,(08218h)
	or a
	jr nz,l48b7h
	ld a,(08119h)
	cp 034h
	call nc,sub_48ech
	ld a,052h
	call sub_495ah
l48b0h:
	ld a,(08119h)
	call sub_495ah
	ret
l48b7h:
	ld a,(08142h)
	cp 001h
	call nz,sub_48e6h
	ld a,(08119h)
	cp 032h
	call nc,sub_48ech
	ld a,(08188h)
	and 033h
	jr z,l48d2h
	ld a,031h
	jr l48d4h
l48d2h:
	ld a,032h
l48d4h:
	push af
	ld a,059h
	call sub_495ah
	pop af
	call sub_495ah
	ld a,(08121h)
	call sub_495ah
	jr l48b0h
sub_48e6h:
	ld a,001h
	ld (08142h),a
	ret
sub_48ech:
	ld a,001h
	ld (0821ch),a
	ret
sub_48f2h:
	push bc
	push de
	push hl
	ld b,005h
	ld de,08000h
	push af
l48fbh:
	in a,(086h)
	and 004h
	jr z,l48fbh
	pop af
	ld l,a
	out (084h),a
l4905h:
	ld c,086h
	in h,(c)
	rr h
	jr nc,l491dh
	res 1,c
	in h,(c)
	ld a,l
	cp h
	jr z,l492ch
	ld a,001h
	ld (0a7f0h),a
	jp l0000h
l491dh:
	dec de
	ld a,d
	or e
	jr nz,l4905h
	djnz l4905h
	ld a,001h
	ld (0a7f2h),a
	jp l0000h
l492ch:
	pop hl
	pop de
	pop bc
	ret
sub_4930h:
	push bc
	push de
	ld b,005h
	ld de,08000h
l4937h:
	in a,(086h)
	rra
	jr nc,l494bh
	in a,(084h)
	push af
l493fh:
	in a,(086h)
	and 004h
	jr z,l493fh
	pop af
	out (084h),a
	pop de
	pop bc
	ret
l494bh:
	dec de
	ld a,d
	or e
	jr nz,l4937h
	djnz l4937h
	ld a,001h
	ld (0a7f4h),a
	jp l0000h
sub_495ah:
	push hl
	push bc
	push de
	push af
	ld b,006h
	ld de,08000h
l4963h:
	in a,(087h)
	and 004h
	jr z,l4963h
	pop af
	ld l,a
	out (085h),a
l496dh:
	ld c,087h
	in h,(c)
	rr h
	jr nc,l4982h
	res 1,c
	in h,(c)
	ld a,l
	cp h
	jr z,l4991h
	ld a,001h
	ld (0a7f1h),a
l4982h:
	dec de
	ld a,d
	or e
	jr nz,l496dh
	djnz l496dh
	ld a,001h
	ld (0a7f3h),a
	jp l0000h
l4991h:
	xor a
	ld (0a7f1h),a
	pop de
	pop bc
	pop hl
	ret
sub_4999h:
	in a,(087h)
	rrca
	jr nc,l49aah
	in a,(085h)
	push af
l49a1h:
	in a,(087h)
	and 004h
	jr z,l49a1h
	pop af
	out (085h),a
l49aah:
	ret
sub_49abh:
	ld a,(08231h)
	or a
	jp nz,l4a02h
	ld a,(08153h)
	or a
	jp z,l4a03h
	ld a,(0827ch)
	or a
	jp nz,l4a02h
	ld a,075h
	call sub_48f2h
	ld a,067h
	call sub_48f2h
	ld a,06bh
	call sub_48f2h
	ld a,043h
	call sub_48f2h
	ld a,031h
	call sub_48f2h
	ld a,001h
	ld (0827ch),a
	ld (08215h),a
	ld (08210h),a
	ld (08211h),a
	ld (08212h),a
	ld a,086h
	out (081h),a
	ld a,(0818eh)
	set 6,a
	ld (0818eh),a
	out (080h),a
	ld a,(081c6h)
	res 1,a
	ld (081c6h),a
	out (0a0h),a
l4a02h:
	ret
l4a03h:
	ld a,(0827ch)
	or a
	jp z,l4a02h
	ld a,000h
	ld (0827ch),a
	ld (08215h),a
	ld (08210h),a
	ld (08211h),a
	ld (08212h),a
	ld a,086h
	out (081h),a
	ld a,(0818eh)
	res 6,a
	ld (0818eh),a
	out (080h),a
	ld a,043h
	call sub_48f2h
	ld a,032h
	call sub_48f2h
	ld a,(081c6h)
	set 1,a
	ld (081c6h),a
	out (0a0h),a
	jp l4a02h
sub_4a40h:
	ld a,(08154h)
	or a
	jp z,l4ae8h
	ld a,(0810ch)
	or a
	jp z,l4b02h
	ld a,(0883ch)
	or a
	jr nz,l4a66h
	ld a,(0883dh)
	or a
	jr nz,l4a66h
	ld a,(0827dh)
	or a
	jr nz,l4abeh
	ld a,(08155h)
	or a
	jr nz,l4abdh
l4a66h:
	ld a,083h
	out (081h),a
	ld a,(0818bh)
	set 6,a
	ld (0818bh),a
	out (080h),a
	ld a,(0883ch)
	or a
	jr nz,l4a8dh
	ld a,(0883dh)
	or a
	jr nz,l4a8dh
	ld a,002h
	ld (0827dh),a
	ld a,(08118h)
	cp 032h
	jp m,l4b02h
l4a8dh:
	ld a,002h
	ld (0827dh),a
	ld a,044h
	call sub_48f2h
	ld a,031h
	call sub_48f2h
	ld a,(081d5h)
	ld (0812bh),a
	call sub_1bb2h
	call sub_48f2h
	ld a,(081d5h)
	call sub_1bbah
	call sub_48f2h
	ld a,(08118h)
	ld (0812ch),a
	call sub_1bbah
	call sub_48f2h
l4abdh:
	ret
l4abeh:
	ld a,(08118h)
	cp 032h
	jp m,l4b02h
	ld a,(08155h)
	or a
	jr nz,l4abdh
	ld a,(0827dh)
	cp 002h
	jp nz,l4a8dh
	ld a,(081d5h)
	ld hl,0812bh
	cp (hl)
	jr nz,l4a8dh
	ld a,(08118h)
	ld hl,0812ch
	cp (hl)
	jr nz,l4a8dh
	jr l4abdh
l4ae8h:
	ld a,(0827dh)
	or a
	jr z,l4abdh
	ld a,083h
	out (081h),a
	ld a,(0818bh)
	res 6,a
	ld (0818bh),a
	out (080h),a
	xor a
	ld (0827dh),a
	jr l4b0eh
l4b02h:
	ld a,(0827dh)
	cp 002h
	jr nz,l4abdh
	ld a,001h
	ld (0827dh),a
l4b0eh:
	ld a,044h
	call sub_48f2h
	ld a,032h
	call sub_48f2h
	jr l4abdh
sub_4b1ah:
	ld a,(08155h)
	or a
	jr z,l4b44h
	ld a,(0827eh)
	or a
	jr nz,l4b43h
	ld a,083h
	out (081h),a
	ld a,(0818bh)
	set 7,a
	ld (0818bh),a
	out (080h),a
	ld a,001h
	ld (0827eh),a
	ld a,044h
	call sub_48f2h
	ld a,033h
	call sub_48f2h
l4b43h:
	ret
l4b44h:
	ld a,(0827eh)
	or a
	jr z,l4b43h
	ld a,083h
	out (081h),a
	ld a,(0818bh)
	res 7,a
	ld (0818bh),a
	out (080h),a
	xor a
	ld (0827eh),a
	ld a,044h
	call sub_48f2h
	ld a,034h
	call sub_48f2h
	jr l4b43h
sub_4b68h:
	ld a,(08216h)
	and 001h
	cp 001h
	jr z,l4b78h
	ld a,(08144h)
	cp 001h
	jr z,l4b9fh
l4b78h:
	xor a
	ld (08144h),a
	ld a,086h
	out (081h),a
	ld a,(0818eh)
	res 0,a
	ld (0818eh),a
	out (080h),a
	ld a,(08251h)
	cp 001h
	jp z,l4bdeh
	ld a,06fh
	call sub_48f2h
	ld a,001h
	ld (08251h),a
	jp l4bdeh
l4b9fh:
	ld a,086h
	out (081h),a
	ld a,(0818eh)
	set 0,a
	ld (0818eh),a
	out (080h),a
	ld a,(08251h)
	cp 001h
	jr z,l4bbdh
	ld a,(08186h)
	ld hl,0812ah
	cp (hl)
	jr z,l4bd4h
l4bbdh:
	ld a,069h
	call sub_48f2h
	ld a,(08186h)
	call sub_1bb2h
	call sub_48f2h
	ld a,(08186h)
	call sub_1bbah
	call sub_48f2h
l4bd4h:
	xor a
	ld (08251h),a
	ld a,(08186h)
	ld (0812ah),a
l4bdeh:
	ret
sub_4bdfh:
	ld a,(08215h)
	and 001h
	cp 001h
	jr z,l4befh
	ld a,(08145h)
	cp 001h
	jr z,l4c1ah
l4befh:
	xor a
	ld (08145h),a
	ld a,086h
	out (081h),a
	ld a,(0818eh)
	res 1,a
	ld (0818eh),a
	out (080h),a
	ld a,(08250h)
	cp 001h
	jp z,l4c5eh
	ld a,075h
	call sub_48f2h
	ld a,001h
	ld (08250h),a
	xor a
	ld (08231h),a
	jp l4c5eh
l4c1ah:
	ld a,086h
	out (081h),a
	ld a,(0818eh)
	set 1,a
	ld (0818eh),a
	out (080h),a
	ld a,(08250h)
	cp 001h
	jr z,l4c38h
	ld a,(08187h)
	ld hl,08129h
	cp (hl)
	jr z,l4c4fh
l4c38h:
	ld a,07ah
	call sub_48f2h
	ld a,(08187h)
	call sub_1bb2h
	call sub_48f2h
	ld a,(08187h)
	call sub_1bbah
	call sub_48f2h
l4c4fh:
	xor a
	ld (08250h),a
	ld a,001h
	ld (08231h),a
	ld a,(08187h)
	ld (08129h),a
l4c5eh:
	ret
	ld a,(08229h)
	or a
	jr nz,l4cd7h
	ld a,(08113h)
	or a
	jr z,l4cc1h
	ld a,038h
	call sub_17b3h
	call sub_0ef0h
	call sub_2fd4h
	ld a,082h
	out (081h),a
	ld a,(0818ah)
	set 3,a
	ld (0818ah),a
	out (080h),a
	ld hl,0818ah
	call sub_25c3h
	ld a,04ah
	call sub_495ah
	ld a,06fh
	call sub_48f2h
	ld a,075h
	call sub_48f2h
	ld a,06ah
	call sub_48f2h
	xor a
	ld (08253h),a
	ld (08217h),a
	ld (08212h),a
	ld (08113h),a
	ld (08211h),a
	inc a
	ld (08215h),a
	ld (08216h),a
	ld (08210h),a
	ld a,(08116h)
	xor 001h
	ld (08116h),a
	ret
l4cc1h:
	xor a
	ld (08215h),a
	ld (08216h),a
	ld (08210h),a
	ret
l4ccch:
	xor a
	ld (08229h),a
	ld (08112h),a
	ld (08113h),a
	ret
l4cd7h:
	call sub_4cdch
	jr l4ccch
sub_4cdch:
	ld a,082h
	out (081h),a
	ld a,(0818ah)
	res 3,a
	ld (0818ah),a
	out (080h),a
	ret
sub_4cebh:
	ld a,082h
	out (081h),a
	ld a,(0818ah)
	set 3,a
	ld (0818ah),a
	out (080h),a
	ret
sub_4cfah:
	ret
sub_4cfbh:
	ld a,(081c0h)
	bit 1,a
	jp nz,l4de5h
	ld a,(08153h)
	or a
	jp nz,l4de5h
	ld a,(08154h)
	or a
	jp nz,l4de5h
	ld a,(08155h)
	or a
	jp nz,l4de5h
	ld a,(0813ah)
	or a
	jp z,l4de5h
	ld a,(0813bh)
	or a
	jp z,l4de5h
	ld a,(08228h)
	or a
	jr nz,l4d31h
	ld a,001h
	ld (08228h),a
l4d31h:
	ld a,(08227h)
	or a
	jp nz,l4d3fh
	ld a,(08278h)
	or a
	call nz,sub_4e1dh
l4d3fh:
	ld a,(08138h)
	or a
	jp z,l4de5h
	ld a,(08139h)
	or a
	jp nz,l4deah
	ld a,063h
	call sub_48f2h
	ld a,031h
	call sub_48f2h
	call sub_4930h
	cp 06eh
	jp z,l4deah
	ld a,001h
	ld (0e413h),a
	call sub_4e0eh
	ld de,0b943h
	ld hl,00367h
	ld (08012h),hl
	call l0c95h
	ld a,081h
	out (081h),a
	ld a,(08138h)
	cp 001h
	jp z,l4e06h
	ld a,(08189h)
	set 4,a
l4d84h:
	ld (08189h),a
	out (080h),a
	call sub_4e6ch
	xor a
	out (08ch),a
	call sub_4e49h
	ld b,00fh
	call sub_0545h
	ld a,063h
	call sub_48f2h
	ld a,(08138h)
	inc a
	or 030h
	call sub_48f2h
	ld a,046h
	call sub_495ah
	ld a,032h
	call sub_495ah
l4dafh:
	call sub_4e25h
	cp 072h
	jp nz,l4dafh
	call sub_27bch
	ld a,081h
	out (081h),a
	ld a,(08189h)
	res 4,a
	res 7,a
	ld (08189h),a
	out (080h),a
	call sub_0c78h
	ld a,042h
	call sub_495ah
	ld a,(08118h)
	call sub_495ah
	ld a,(08116h)
	xor 001h
	ld (08116h),a
	ld a,000h
	ld (0e413h),a
l4de5h:
	xor a
	ld (08138h),a
	ret
l4deah:
	ld de,0b9f3h
	call sub_0c85h
	ld de,0b9b4h
	ld hl,l0360h
	ld (08012h),hl
	call l0c95h
	ld a,001h
	ld (08227h),a
	ld (08278h),a
	jr l4de5h
l4e06h:
	ld a,(08189h)
	set 7,a
	jp l4d84h
sub_4e0eh:
	ld a,(08278h)
	cp 001h
	call z,sub_4e1dh
	ld de,0b9f3h
	call sub_0c85h
	ret
sub_4e1dh:
	call sub_0c78h
	xor a
	ld (08278h),a
	ret
sub_4e25h:
	ld c,0c8h
l4e27h:
	ld b,010h
	call sub_0545h
	in a,(086h)
	rra
	jr nc,l4e3eh
	in a,(084h)
	push af
l4e34h:
	in a,(086h)
	and 004h
	jr z,l4e34h
	pop af
	out (084h),a
	ret
l4e3eh:
	dec c
	jr nz,l4e27h
	ld a,001h
	ld (0a7f6h),a
	jp l0000h
sub_4e49h:
	ld a,001h
	out (08dh),a
	ld a,068h
	call sub_48f2h
	ld a,057h
	call sub_495ah
	ld hl,l6060h
	ld (08006h),hl
	ld hl,l3f3fh
	ld (0800ch),hl
	call sub_1b76h
	ld a,039h
	call sub_495ah
	ret
sub_4e6ch:
	ld a,(0810dh)
	push af
	ld a,(0810fh)
	push af
	ld a,(08219h)
	push af
	ld a,(08216h)
	push af
	ld a,(08144h)
	push af
	ld a,(08131h)
	push af
	xor a
	ld (0810fh),a
	ld a,001h
	ld (08219h),a
	call sub_1abah
	xor a
	ld (08144h),a
	ld (08251h),a
	inc a
	ld (08216h),a
	call sub_4b68h
	pop af
	ld (08131h),a
	pop af
	ld (08144h),a
	pop af
	ld (08216h),a
	pop af
	ld (08219h),a
	pop af
	ld (0810fh),a
	pop af
	ld (0810dh),a
	ret
sub_4eb7h:
	ld a,b
	sub (hl)
	jp p,l4ed4h
	ld a,(hl)
	sub b
	cp 002h
	jr z,l4ef3h
	jp p,l4ec8h
	jp l4ef3h
l4ec8h:
	cp 003h
	jr nz,l4ed0h
	dec (hl)
	jp l4ee7h
l4ed0h:
	ld (hl),b
	jp l4ee7h
l4ed4h:
	cp 002h
	jr z,l4ef3h
	jp p,l4edeh
	jp l4ef3h
l4edeh:
	cp 003h
	jr nz,l4ee6h
	inc (hl)
	jp l4ee7h
l4ee6h:
	ld (hl),b
l4ee7h:
	ld a,(0829ah)
	or a
	call nz,sub_413bh
	ld a,000h
	ld (0829ah),a
l4ef3h:
	ret
sub_4ef4h:
	ld a,(0822eh)
	push af
	xor a
	ld (0822eh),a
	ld a,(0813ch)
	cp 001h
	jp nz,l50a7h
	ld a,000h
	ld (0e408h),a
	call sub_4f30h
	ld a,(08254h)
	or a
	jp nz,l4f75h
	xor a
	ld (08217h),a
	ld (0826bh),a
	ld a,(08140h)
	res 2,a
	ld (08140h),a
	call sub_1dech
	xor a
	ld (08220h),a
	inc a
	ld (08254h),a
	jp l4f75h
sub_4f30h:
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	res 2,a
	res 4,a
	ld (0818ch),a
	out (080h),a
	ld a,000h
	ld (0e400h),a
	ld a,(08140h)
	bit 3,a
	call z,sub_4cdch
	ld a,(08115h)
	or a
	jr nz,l4f74h
	ld a,(08125h)
	or a
	jr nz,l4f74h
	ld a,(08143h)
	or a
	jr nz,l4f74h
	ld a,(08140h)
	bit 3,a
	jr nz,l4f74h
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	res 7,a
	ld (0818ch),a
	out (080h),a
l4f74h:
	ret
l4f75h:
	ld a,083h
	out (081h),a
	ld a,(0818bh)
	set 3,a
	ld (0818bh),a
	out (080h),a
	ld a,003h
	ld (0e800h),a
	call sub_2fd4h
	call sub_2017h
	xor a
	out (08dh),a
	ld a,010h
	out (09eh),a
	ld a,042h
	call sub_495ah
	ld a,031h
	call sub_495ah
	ld a,06fh
	call sub_48f2h
	ld a,075h
	call sub_48f2h
	ld a,067h
	call sub_48f2h
	ld a,061h
	call sub_48f2h
	ld a,043h
	call sub_48f2h
	ld a,032h
	call sub_48f2h
	ld a,044h
	call sub_48f2h
	ld a,032h
	call sub_48f2h
	ld a,044h
	call sub_48f2h
	ld a,034h
	call sub_48f2h
	ld a,074h
	call sub_48f2h
	ld a,00dh
	ld (087ffh),a
	call sub_0c85h
	call sub_08d7h
l4fe1h:
	call sub_182ah
	call sub_1882h
l4fe7h:
	call sub_03a4h
	in a,(04dh)
	rrca
	rrca
	jr nc,l503fh
l4ff0h:
	ld de,003e8h
l4ff3h:
	dec de
	ld a,d
	or e
	jr nz,l4ff3h
	ld a,040h
	out (081h),a
	in a,(080h)
	ld (08149h),a
	in a,(04dh)
	rrca
	rrca
	jr c,l4ff0h
	ld a,(08149h)
	cp 09bh
	jr z,l5060h
	cp 08eh
	jr z,l5052h
	cp 0a4h
	jp z,l50ach
	cp 0a2h
	jp z,l5105h
	cp 086h
	jp z,l50cdh
	cp 0a3h
	jp z,l51ebh
	cp 095h
	jp z,l5227h
	cp 088h
	jp z,l5245h
	cp 089h
	jp z,l524dh
	cp 08ah
	jp z,l5255h
	cp 08bh
	jp z,l525dh
l503fh:
	ld a,(0827bh)
	cp 001h
	call z,sub_517dh
	ld a,(0827bh)
	cp 002h
	call z,sub_5131h
l504fh:
	jp l4fe1h
l5052h:
	ld a,(0814bh)
	xor 001h
	ld (0814bh),a
	call sub_1987h
	jp l4fe7h
l5060h:
	call sub_51b1h
	call sub_0c78h
	ld a,083h
	out (081h),a
	ld a,(0818bh)
	res 3,a
	ld (0818bh),a
	out (080h),a
	ld a,030h
	ld (08118h),a
	call sub_1dech
	call sub_27bch
	ld a,(081eeh)
	cp 0ffh
	jr nz,l508dh
	call sub_0610h
	xor a
	ld (081eeh),a
l508dh:
	xor a
	ld (08257h),a
	ld (0e800h),a
	ld (0813ch),a
	ld (0827ch),a
	ld (0827dh),a
	ld (0827eh),a
	inc a
	ld (08250h),a
	ld (08251h),a
l50a7h:
	pop af
	ld (0822eh),a
	ret
l50ach:
	ld a,(0827bh)
	or a
	jp z,l510bh
	cp 003h
	jp z,l510bh
	call sub_51b1h
	ld a,003h
	ld (0e800h),a
l50c0h:
	ld a,042h
	call sub_495ah
	ld a,031h
	call sub_495ah
	jp l4fe1h
l50cdh:
	ld a,(0827bh)
	cp 003h
	jp z,l4fe1h
	ld a,(08131h)
	add a,044h
	call sub_495ah
	ld a,(08131h)
	xor 001h
	ld (08131h),a
	out (08eh),a
	ld a,080h
	out (081h),a
	ld a,(08188h)
	xor 040h
	ld (08188h),a
	out (080h),a
	ld hl,l0000h
	ld (08004h),hl
	ld a,(0827bh)
	cp 002h
	jr nz,l50c0h
	jp l4fe1h
l5105h:
	call sub_5111h
	jp l4fe1h
l510bh:
	call sub_5144h
	jp l4fe1h
sub_5111h:
	ld a,(0827bh)
	cp 001h
	jr nz,l5143h
	ld a,002h
	ld (0827bh),a
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	set 2,a
	ld (0818ch),a
	out (080h),a
	ld hl,l0000h
	ld (08004h),hl
sub_5131h:
	call sub_517dh
	jr z,l5143h
	ld a,04ch
	call sub_495ah
	call sub_1b98h
	ld a,031h
	call sub_495ah
l5143h:
	ret
sub_5144h:
	ld a,042h
	call sub_495ah
	ld a,031h
	call sub_495ah
	ld a,(0827bh)
	cp 003h
	jr nz,l515ah
	ld a,074h
	call sub_48f2h
l515ah:
	ld a,001h
	ld (0827bh),a
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	set 4,a
	set 7,a
	ld (0818ch),a
	out (080h),a
	ld a,001h
	ld (0e400h),a
	ld (0e800h),a
	ld hl,l0000h
	ld (08004h),hl
sub_517dh:
	call sub_51d2h
	ld a,001h
	ld (0e400h),a
	ld a,(08183h)
	cp 03fh
	jr nc,l5193h
	ld a,03fh
	ld (08183h),a
	jr l519ch
l5193h:
	cp 0bfh
	jr c,l519ch
	ld a,0bfh
	ld (08183h),a
l519ch:
	ld (0e401h),a
	ld hl,(08004h)
	cp h
	jr z,l51b0h
	ld h,a
	xor a
	ld l,a
	ld (08004h),hl
	call sub_0bddh
	or 001h
l51b0h:
	ret
sub_51b1h:
	xor a
	ld (0827bh),a
sub_51b5h:
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	res 2,a
	res 3,a
	res 4,a
	res 7,a
	ld (0818ch),a
	out (080h),a
	call sub_0c01h
	ld a,000h
	ld (0e400h),a
	ret
sub_51d2h:
	ld a,002h
	out (091h),a
	call sub_534ch
	jr nc,l51eah
	in a,(091h)
	cp 0ffh
	jr c,l51e3h
	ld a,0ffh
l51e3h:
	ld b,a
	ld hl,08183h
	call sub_4eb7h
l51eah:
	ret
l51ebh:
	call sub_51b5h
	ld a,(0827bh)
	cp 003h
	jr nz,l51fah
	ld a,074h
	call sub_48f2h
l51fah:
	ld a,003h
	ld (0827bh),a
	ld a,084h
	out (081h),a
	ld a,(0818ch)
	set 3,a
	ld (0818ch),a
	out (080h),a
	ld a,049h
	call sub_495ah
l5212h:
	call sub_4999h
	cp 000h
	jr nz,l5212h
	xor a
	call sub_495ah
	xor a
	call sub_48f2h
	call sub_51b5h
	jp l4fe1h
l5227h:
	ld a,(0827bh)
	cp 003h
	jp nz,l503fh
	ld a,042h
	call sub_495ah
	ld a,031h
	call sub_495ah
	ld a,074h
	call sub_48f2h
	xor a
	ld (0827bh),a
	jp l4fe1h
l5245h:
	ld a,001h
	ld (08134h),a
	jp l5265h
l524dh:
	ld a,001h
	ld (08135h),a
	jp l5265h
l5255h:
	ld a,001h
	ld (08137h),a
	jp l5265h
l525dh:
	ld a,001h
	ld (08136h),a
	jp l5265h
l5265h:
	call sub_19a4h
	jp l4fe1h
sub_526bh:
	ld a,001h
	out (090h),a
	call sub_534ch
	jr c,l5276h
	jr l527fh
l5276h:
	in a,(090h)
	ld b,a
	ld hl,08182h
	call sub_4eb7h
l527fh:
	ld a,002h
	out (091h),a
	call sub_534ch
	jr c,l528ah
	jr l5299h
l528ah:
	in a,(091h)
	cp 0ffh
	jr c,l5292h
	ld a,0ffh
l5292h:
	ld b,a
	ld hl,08183h
	call sub_4eb7h
l5299h:
	ld a,004h
	out (092h),a
	call sub_534ch
	jr c,l52a4h
	jr l52adh
l52a4h:
	in a,(092h)
	ld b,a
	ld hl,08184h
	call sub_4eb7h
l52adh:
	ld a,008h
	out (093h),a
	call sub_534ch
	jr c,l52b8h
	jr l52c7h
l52b8h:
	in a,(093h)
	cp 0ffh
	jr c,l52c0h
	ld a,0ffh
l52c0h:
	ld b,a
	ld hl,08185h
	call sub_4eb7h
l52c7h:
	ld a,010h
	out (094h),a
	call sub_534ch
	jr c,l52d2h
	jr l52dbh
l52d2h:
	in a,(094h)
	ld b,a
	ld hl,08186h
	call sub_4eb7h
l52dbh:
	ld a,020h
	out (095h),a
	call sub_534ch
	jr c,l52e6h
	jr l52efh
l52e6h:
	in a,(095h)
	ld b,a
	ld hl,08187h
	call sub_4eb7h
l52efh:
	ld a,040h
	out (096h),a
	call sub_534ch
	jr c,l52fah
	jr l5303h
l52fah:
	in a,(096h)
	ld b,a
	ld hl,081d5h
	call sub_4eb7h
l5303h:
	ld b,0ffh
l5305h:
	in a,(088h)
	or a
	jr nz,l5310h
	djnz l5305h
	ld l,031h
	jr l5344h
l5310h:
	ld l,031h
	cp 001h
	jp z,l5344h
	inc l
	cp 002h
	jp z,l5344h
	inc l
	cp 004h
	jp z,l5344h
	inc l
	cp 008h
	jp z,l5344h
	inc l
	cp 010h
	jp z,l5344h
	inc l
	cp 020h
	jp z,l5344h
	inc l
	cp 040h
	jp z,l5344h
	inc l
	cp 080h
	jp z,l5344h
	jp l5305h
l5344h:
	ld a,l
	ld (0e419h),a
	ld (08119h),a
	ret
sub_534ch:
	ld b,005h
l534eh:
	nop
	djnz l534eh
l5351h:
	in a,(04dh)
	rra
	rra
	rra
	ret c
	djnz l5351h
	xor a
	ret
l535bh:
	ld b,l
	ld d,e
	ld b,e
	add a,d
	ld e,(hl)
	ld c,a
	jr nz,$-33
	push hl
	ld a,(08132h)
	cp 001h
	jr z,l538ah
	ld a,(08133h)
	cp 001h
	jp z,l53e6h
	ld a,(08222h)
	cp 001h
	jr z,l5384h
	xor a
	out (09ah),a
	out (09bh),a
	out (09ch),a
	jp l54b1h
l5384h:
	call sub_55f9h
	jp l54b1h
l538ah:
	ld a,068h
	call sub_48f2h
	call sub_5522h
	call sub_3149h
	ld hl,08284h
	call sub_550eh
	ld a,082h
	out (081h),a
	ld a,(0818ah)
	set 0,a
	ld (0818ah),a
	out (080h),a
	ld a,030h
	call sub_5503h
	ld bc,l0009h+1
	call sub_5538h
	ld a,031h
	call sub_5503h
	ld hl,00b04h
	call sub_55c9h
	ld bc,00320h
	call sub_5538h
	call sub_55e3h
	call sub_552dh
	ld a,082h
	out (081h),a
	ld a,(0818ah)
	res 0,a
	ld (0818ah),a
	out (080h),a
	xor a
	ld (08132h),a
	call sub_54b4h
	call sub_559bh
	jp l54b1h
l53e6h:
	ld a,(08218h)
	or a
	jp nz,l54aah
	ld a,079h
	call sub_48f2h
	ld hl,(08196h)
	dec hl
	dec hl
	dec hl
	ld (08196h),hl
	ld a,000h
	ld (08269h),a
	ld a,(08143h)
	or a
	jp nz,l54aah
	call sub_3149h
	ld hl,08284h
	call sub_550eh
	call sub_5522h
	ld a,082h
	out (081h),a
	ld a,(0818ah)
	set 1,a
	ld (0818ah),a
	out (080h),a
	ld a,001h
	out (08dh),a
	ld a,030h
	call sub_5503h
	ld bc,00050h
	call sub_5538h
	ld a,(0a014h)
	cp 031h
	jp m,l5496h
	cp 036h
	jp p,l5496h
	add a,003h
	call sub_54f8h
	ld hl,l535bh
	call sub_2628h
	call sub_55b1h
	ld bc,l3000h
	call sub_5538h
	or a
	jr z,l545dh
	call sub_55e3h
	call sub_38b4h
	jp l5496h
l545dh:
	call sub_55e3h
	call sub_38b4h
	ld a,090h
	ld (0e800h),a
	ld a,032h
	call sub_5503h
	ld bc,00078h
	call sub_5538h
	call sub_0caah
	ld a,(08016h)
	cp 000h
	jr z,l5493h
	ld hl,08287h
	call sub_551ch
	ld a,081h
	ld (0e800h),a
	ld a,033h
	call sub_5503h
	ld bc,00100h
	call sub_5538h
l5493h:
	call sub_54b4h
l5496h:
	call sub_552dh
	ld a,082h
	out (081h),a
	ld a,(0818ah)
	res 1,a
	ld (0818ah),a
	out (080h),a
	call sub_559bh
l54aah:
	xor a
	ld (0e800h),a
	ld (08133h),a
l54b1h:
	pop ix
	ret
sub_54b4h:
	ld b,003h
	ld hl,0817ah
	ld de,0a00eh
l54bch:
	ld a,(de)
	rld
	inc de
	ld a,(de)
	rld
	inc de
	inc hl
	djnz l54bch
	ld hl,0817ch
	ld a,001h
	add a,(hl)
	daa
	ld (hl),a
	ld a,000h
	dec hl
	adc a,(hl)
	daa
	ld (hl),a
	ld a,000h
	dec hl
	adc a,(hl)
	daa
	ld (hl),a
	ld b,003h
	ld de,0a00eh
	ld hl,0817ah
l54e3h:
	ld a,030h
	rld
	ld (de),a
	inc de
	rld
	ld (de),a
	rld
	inc de
	inc hl
	djnz l54e3h
	ld a,001h
	ld (08223h),a
	ret
sub_54f8h:
	push af
	ld a,(08143h)
	or a
	jr z,l5504h
	ld a,05ah
	jr l5506h
sub_5503h:
	push af
l5504h:
	ld a,050h
l5506h:
	call sub_495ah
	pop af
	call sub_495ah
	ret
sub_550eh:
	inc hl
	inc hl
	ld a,(hl)
	out (09ah),a
	out (09bh),a
	dec hl
	ld a,(hl)
	out (09ah),a
	out (09ch),a
	dec hl
sub_551ch:
	ld a,(hl)
	out (09ah),a
	out (09dh),a
	ret
sub_5522h:
	ld a,(081ach)
	set 7,a
	ld (081ach),a
	out (089h),a
	ret
sub_552dh:
	ld a,(081ach)
	res 7,a
	ld (081ach),a
	out (089h),a
	ret
sub_5538h:
	ld de,01c00h
l553bh:
	in a,(087h)
	rra
	jr nc,l5546h
	in a,(085h)
	or a
	jp z,l559ah
l5546h:
	dec de
	ld a,d
	or e
	jr nz,l553bh
	ld a,(08273h)
	or a
	jr z,l557eh
	call sub_051dh
	ld a,(0814ah)
	cp 00fh
	jr z,l5591h
	dec h
	ld a,h
	or a
	jr nz,l557eh
	ld (ix+000h),0bch
	push de
	ld de,l0020h
	add ix,de
	push hl
	ld hl,0e7ffh
	push ix
	pop de
	or a
	sbc hl,de
	jr nc,l557bh
	ld de,0ffe0h
	add ix,de
l557bh:
	pop hl
	pop de
	ld h,l
l557eh:
	call sub_03a4h
	ld de,01c00h
	dec bc
	ld a,b
	or c
	jr nz,l553bh
	ld a,001h
	ld (0a7f5h),a
	jp l0000h
l5591h:
	push af
	xor a
	out (09ah),a
	out (09bh),a
	out (09ch),a
	pop af
l559ah:
	ret
sub_559bh:
	ld a,06ah
	call sub_48f2h
	xor a
	call sub_495ah
	ld (0810eh),a
	ld (08117h),a
	ld (08110h),a
	ld (08114h),a
	ret
sub_55b1h:
	ld a,(0a014h)
	sub 030h
	cp 00ah
	jp m,l55bdh
	sub 007h
l55bdh:
	ld hl,043aah
	ld c,a
	ld b,000h
	add hl,bc
	add hl,bc
	ld d,(hl)
	inc hl
	ld e,(hl)
	ex de,hl
sub_55c9h:
	ld ix,0e427h
	ld (ix+000h),0bch
	ld ix,0e447h
	ld (ix+000h),0bch
	ld ix,0e447h
	ld a,001h
	ld (08273h),a
	ret
sub_55e3h:
	ld ix,0e427h
	ld de,l0020h
	ld b,021h
l55ech:
	ld (ix+000h),000h
	add ix,de
	djnz l55ech
	xor a
	ld (08273h),a
	ret
sub_55f9h:
	ld b,00ah
	call sub_0545h
	ld a,(08195h)
	dec a
	jr nz,l5612h
	ld (08222h),a
	call sub_0c78h
	ld a,000h
	ld (0e413h),a
	ld (0810eh),a
l5612h:
	ld (08195h),a
	ret
sub_5616h:
	call sub_58f9h
	ret nz
	ld a,062h
	call sub_48f2h
	ld b,06eh
	call sub_4930h
	cp b
	jr nz,l5636h
	ld a,(08223h)
	cp 001h
	jp z,l56d7h
	xor a
	ld (08221h),a
	jp l5805h
l5636h:
	ld a,001h
	ld (08221h),a
	ld hl,08160h
	ld b,00ch
l5640h:
	call sub_4930h
	ld (hl),a
	inc hl
	djnz l5640h
	ld hl,08174h
	call sub_4930h
	cp 041h
	jp m,l5654h
	sub 037h
l5654h:
	rld
	call sub_4930h
	cp 041h
	jp m,l5660h
	sub 037h
l5660h:
	rld
	ld a,(hl)
	ld (0e410h),a
	ld hl,08170h
	call sub_4930h
	rld
	call sub_4930h
	cp 041h
	jp m,l5678h
	sub 037h
l5678h:
	rld
	ld a,(hl)
	ld (0e411h),a
	call sub_4930h
	cp 040h
	jp nz,l56a7h
	ld a,(08239h)
	or a
	jr nz,l56cbh
	ld a,001h
	ld (0e413h),a
	call sub_4e0eh
	ld de,0c56dh
	ld hl,l0180h
	ld (08012h),hl
	call l0c95h
	ld a,001h
	ld (08239h),a
	jr l56cbh
l56a7h:
	push af
	ld a,(08239h)
	or a
	jr z,l56bdh
	ld a,000h
	ld (0e413h),a
	call sub_0c78h
	call sub_27bch
	xor a
	ld (08239h),a
l56bdh:
	pop af
	ld hl,08293h
	sub 030h
	cp 011h
	jp m,l56cah
	sub 007h
l56cah:
	ld (hl),a
l56cbh:
	call sub_4930h
	ld hl,0e417h
	ld (hl),a
	call sub_4930h
	inc hl
	ld (hl),a
l56d7h:
	ld de,0e420h
	ld hl,08160h
	ld a,(hl)
	and 00fh
	ld b,a
	inc b
	ld a,0f6h
l56e4h:
	add a,00ah
	djnz l56e4h
	ld b,a
	ld a,(08161h)
	and 00fh
	add a,b
	cp 005h
	jp m,l5742h
	jp z,0580dh
	ld c,a
	ld a,(0e422h)
	cp 02eh
	jr z,l571eh
	ld de,0e423h
	ld a,(de)
	and 00fh
	ld b,a
	inc b
	ld a,0f6h
l5709h:
	add a,00ah
	djnz l5709h
	ld b,a
	inc de
	ld a,(de)
	and 00fh
	add a,b
	sub c
	jp p,l5719h
	neg
l5719h:
	cp 005h
	jp m,l5723h
l571eh:
	ld a,001h
	ld (0823ah),a
l5723h:
	ld a,(08291h)
	set 0,a
	ld (08291h),a
	out (083h),a
	ld bc,l0001h+2
	ld de,0e420h
	ld hl,l5806h
	ldir
	ld bc,l0001h+1
	ld hl,08160h
	ldir
	jr l577eh
l5742h:
	ld c,a
	ld a,(0e422h)
	cp 02eh
	jp nz,l575fh
	ld de,0e421h
	ld a,(de)
	and 00fh
l5751h:
	sub c
	jp p,l5757h
	neg
l5757h:
	cp 001h
	jp m,l5764h
	jp z,l5853h
l575fh:
	ld a,001h
	ld (0823ah),a
l5764h:
	ld a,(08291h)
	res 0,a
	ld (08291h),a
	out (083h),a
	ld hl,08163h
	ld de,0e424h
	ldd
	ldd
	ld a,02eh
	ld (de),a
	dec de
	ldd
l577eh:
	ld de,0e464h
	ld hl,08165h
	ldd
	ldd
	ld de,0e4c1h
	ld hl,08165h
	ld b,007h
l5790h:
	dec b
	jr z,l57a0h
	inc hl
	ld a,(hl)
	cp 020h
	jr z,l5790h
	push bc
	ld c,b
	ld b,000h
	ldir
	pop bc
l57a0h:
	ld a,006h
	sub b
	jr z,l57adh
	ld c,a
	ld b,000h
	ld hl,l5806h
	ldir
l57adh:
	ld a,(08174h)
	ld (08002h),a
	call sub_0a4eh
	ld bc,l0000h
	ld hl,l5893h
	ld a,(08170h)
	sla a
	ld c,a
	sla a
	add a,c
	ld c,a
	add hl,bc
	ld de,0e521h
	ld bc,l0005h+1
	ldir
	ld de,0e6c1h
	ld hl,0a00dh
	ld b,007h
l57d7h:
	dec b
	jr z,l57ebh
	inc hl
	ld a,(hl)
	cp 020h
	jr z,l57d7h
	cp 030h
	jr z,l57d7h
	push bc
	ld c,b
	ld b,000h
	ldir
	pop bc
l57ebh:
	ld a,006h
	sub b
	jr z,l5801h
	ld c,a
	ld b,000h
	cp 006h
	jr nz,l57fch
	ld a,030h
	ld (de),a
	dec bc
	inc de
l57fch:
	ld hl,l5806h
	ldir
l5801h:
	xor a
	ld (08223h),a
l5805h:
	ret
l5806h:
	jr nz,l5828h
	jr nz,$+34
	jr nz,l582ch
	jr nz,$+81
	ld de,0e422h
	ld a,(de)
	cp 02eh
	jr z,l5833h
	inc de
	ld a,(de)
	and 00fh
	ld b,a
	inc b
	ld a,0f6h
l581eh:
	add a,00ah
	djnz l581eh
	ld b,a
	inc de
	ld a,(de)
	and 00fh
	add a,b
l5828h:
	sub c
	jp p,l582eh
l582ch:
	neg
l582eh:
	cp 005h
	jp m,l5723h
l5833h:
	ld a,001h
	ld (0823ah),a
l5838h:
	jp l5723h
	inc hl
	ld a,(hl)
	inc hl
	add a,(hl)
	cp 060h
	jr nz,l5838h
	ex de,hl
	inc hl
	ld a,(hl)
	inc hl
	add a,(hl)
l5848h:
	cp 060h
	jr nz,l5838h
	ld a,001h
	ld (0823ah),a
	jr l5838h
l5853h:
	ld hl,08162h
	ld de,0e423h
	ld a,(hl)
	inc hl
	add a,(hl)
	cp 060h
	jp nz,l5764h
	ex de,hl
	ld a,(hl)
	inc hl
	add a,(hl)
	cp 060h
	jp z,l575fh
	ld de,0e421h
	ld a,(de)
	and 00fh
	sub c
	jp m,l5764h
	jp l575fh
	ex de,hl
	dec hl
	ld a,(hl)
	and 00fh
	ld b,a
	inc b
	ld a,0f6h
l5880h:
	add a,00ah
	djnz l5880h
	ld b,a
	inc hl
	ld a,(hl)
	and 00fh
	add a,b
	ex de,hl
	cp 005h
	jp z,l575fh
	jp l5751h
l5893h:
	jr nz,l58b5h
	ld sp,l6d2fh+1
	ld l,l
	jr nz,l58bbh
	jr nz,$+55
	ld l,l
	ld l,l
	jr nz,$+34
	jr nz,l58d5h
	ld l,l
	ld l,l
	jr nz,$+34
	jr nz,l58dah
	ld l,l
	ld l,l
	jr nz,$+55
	jr nc,l58dfh
	add a,(hl)
	ld l,l
	jr nz,l58e5h
	jr nc,l58e5h
l58b5h:
	add a,(hl)
	ld l,l
	jr nz,$+51
	jr nc,l58ebh
l58bbh:
	add a,(hl)
	ld l,l
	jr nz,l58dfh
	dec (hl)
	jr nc,l5848h
	ld l,l
	jr nz,l58e5h
	ld (08630h),a
	ld l,l
	jr nz,l58ebh
	ld sp,08630h
	ld l,l
	jr nz,l58f1h
	jr nz,l5908h
	add a,(hl)
	ld l,l
l58d5h:
	jr nz,$+34
	jr nz,l590bh
	add a,(hl)
l58dah:
	ld l,l
	jr nz,$+34
	jr nz,l5910h
l58dfh:
	add a,(hl)
	ld l,l
	jr nz,$+55
	jr nc,$+50
l58e5h:
	ld l,(hl)
	ld l,l
	jr nz,l591bh
	jr nc,l591bh
l58ebh:
	ld l,(hl)
	ld l,l
	jr nz,l5920h
	jr nc,$+50
l58f1h:
	ld l,(hl)
	ld l,l
	jr nz,$+34
	dec (hl)
	jr nc,$+112
	ld l,l
sub_58f9h:
	ld hl,081c4h
	in a,(086h)
	cpl
	and 010h
	cp (hl)
	jr z,l590bh
	ld (hl),a
	ld hl,l07aah
l5908h:
	call sub_043fh
l590bh:
	or a
	ret
sub_590dh:
	push hl
	push de
	push bc
l5910h:
	ld de,0015eh
	ld (08a88h),de
	ld hl,08801h
l591ah:
	push hl
l591bh:
	push de
	in a,(04dh)
	bit 3,a
l5920h:
	jp nz,l59edh
	call sub_5f92h
	jp nz,l5aa6h
l5929h:
	ld a,(0883dh)
	or a
	jp nz,l5967h
	ld a,(0829ah)
	or a
	jr z,l593eh
	ld a,000h
	ld (0829ah),a
	call sub_413bh
l593eh:
	push hl
	ld hl,l6025h
	call sub_600ah
	pop hl
	ld de,08801h
	ld hl,l59abh
	ld bc,(l59a9h)
	ldir
	ld a,0e0h
	ld (08a82h),a
	ld a,(08290h)
	or a
	ld a,002h
	jr nz,l5961h
	ld a,001h
l5961h:
	ld (0883dh),a
	jp l5c38h
l5967h:
	push hl
	push de
	call sub_5616h
	call sub_182ah
	call sub_1882h
	call sub_7873h
	call sub_05d3h
	call sub_2b83h
	ld a,(08131h)
	or a
	call z,sub_1f37h
	call sub_19a4h
	call sub_1a2dh
	call sub_1bc5h
	pop de
	pop hl
	in a,(04dh)
	bit 3,a
	jp z,l5929h
l5994h:
	push hl
	ld hl,0601eh
	ld a,(0883dh)
	cp 002h
	jr nz,l59a2h
	ld hl,l6017h
l59a2h:
	call sub_600ah
	pop hl
	jp l59c5h
l59a9h:
	ld a,(de)
	nop
l59abh:
	ld b,(hl)
	jr nc,$+50
	ld d,h
	add hl,sp
	scf
	ld d,e
	jr nc,$+50
	ld sp,l3954h
	dec (hl)
	ld c,a
	ld b,c
	dec (hl)
	ld c,a
	ld b,c
	inc (hl)
	ld c,a
	ld b,c
	ld b,c
	ld b,(hl)
	jr nc,$+52
	rla
l59c5h:
	ld a,(0883dh)
	cp 002h
	jp z,l5a84h
	ld a,(0883eh)
	cp 002h
	jp z,l5a84h
	xor a
	ld (0883dh),a
	ld (0883eh),a
	ld (08290h),a
	ld (0e44eh),a
	ld (0883ah),a
	ld (08837h),a
	pop de
	pop hl
	jp l5d5dh
l59edh:
	bit 4,a
	jp nz,l5aa6h
	call sub_5f92h
	jp nz,l5aa6h
l59f8h:
	ld a,(0883eh)
	or a
	jp nz,l5a36h
	ld a,(0829ah)
	or a
	jr z,l5a0dh
	ld a,000h
	ld (0829ah),a
	call sub_413bh
l5a0dh:
	ld a,(08290h)
	or a
	ld a,002h
	jr nz,l5a17h
	ld a,001h
l5a17h:
	ld (0883eh),a
	push hl
	ld hl,l602ch
	call sub_600ah
	pop hl
	ld de,08801h
	ld hl,l5a67h
	ld bc,(l5a65h)
	ldir
	ld a,0e0h
	ld (08a82h),a
	jp l5c38h
l5a36h:
	push hl
	push de
	call sub_5616h
	call sub_182ah
	call sub_1882h
	call sub_7873h
	call sub_05d3h
	pop de
	pop hl
	in a,(04dh)
	bit 4,a
	jp z,l59f8h
l5a50h:
	push hl
	ld hl,0601eh
	ld a,(0883eh)
	cp 002h
	jr nz,l5a5eh
	ld hl,l6017h
l5a5eh:
	call sub_600ah
	pop hl
	jp l59c5h
l5a65h:
	dec e
	nop
l5a67h:
	ld b,(hl)
	jr nc,$+50
	ld d,h
	add hl,sp
	scf
	ld d,e
	jr nc,l5aa0h
	ld sp,l3954h
	dec (hl)
	ld c,a
	ld b,c
	dec (hl)
	ld c,a
	ld b,c
	inc (hl)
	ld c,a
	ld b,c
	ld b,c
	ld b,(hl)
	jr nc,l5ab4h
	ld b,(hl)
	jr nc,$+55
	rla
l5a84h:
	ld a,(08291h)
	or 0e0h
	ld (08291h),a
	out (083h),a
	call sub_552dh
	xor a
	ld (0883dh),a
	ld (0883eh),a
	ld (0883ch),a
	ld (0883bh),a
	ld a,001h
l5aa0h:
	ld (0e44eh),a
	jp l5aa6h
l5aa6h:
	ld a,(08290h)
	or a
	jr nz,l5ab9h
	ld de,(08a88h)
	ld a,d
	or e
	jr nz,l5ab9h
l5ab4h:
	pop de
	pop hl
	jp l60c1h
l5ab9h:
	in a,(0e2h)
	and 020h
	ld hl,08298h
	cp (hl)
	call nz,sub_5ae7h
	in a,(0e3h)
	and 020h
	ld hl,08299h
	cp (hl)
	call nz,sub_5af5h
	pop de
	pop hl
	in a,(0e2h)
	bit 5,a
	jr z,l5b0ch
	in a,(0e3h)
	bit 5,a
	jr z,l5b0ch
l5addh:
	ld a,(08290h)
	or a
	jp nz,l60c1h
	jp l5d8eh
sub_5ae7h:
	ld hl,l07c1h
	call sub_5b03h
	in a,(0e2h)
	and 020h
	ld (08298h),a
	ret
sub_5af5h:
	ld hl,l07cdh
	call sub_5b03h
	in a,(0e3h)
	and 020h
	ld (08299h),a
	ret
sub_5b03h:
	push hl
	call sub_043fh
	call sub_40c4h
	pop hl
	ret
l5b0ch:
	push hl
	push de
	call sub_5616h
	call sub_182ah
	call sub_1882h
	call sub_7873h
	call sub_05d3h
	pop de
	pop hl
	ld a,(0883ah)
	or a
	jr nz,l5b78h
	ld b,0e0h
	ld c,0e2h
	ld de,(0a7e5h)
	exx
	ld b,0e1h
	ld c,0e3h
	ld de,(0a7eah)
	exx
	in a,(c)
	rr a
	jr c,l5b5bh
	ld b,0e1h
	ld c,0e3h
	ld de,(0a7eah)
	exx
	ld b,0e0h
	ld c,0e2h
	ld de,(0a7e5h)
	exx
	in a,(c)
	bit 5,a
	jp nz,l5addh
	rr a
	jp nc,l5d8eh
l5b5bh:
	call sub_5ebch
	ld a,001h
	ld (0883ah),a
	ld a,b
	ld (08a82h),a
	ld a,c
	ld (08a81h),a
	ld a,e
	ld (08295h),a
	ld a,d
	ld (08296h),a
	call sub_5e3eh
	jr l5b7eh
l5b78h:
	call sub_5ed2h
	call sub_5e12h
l5b7eh:
	jr c,l5bf4h
	push de
	push hl
	call sub_2b83h
	ld a,(0883bh)
	or a
	jp nz,l5ba3h
	ld a,(0883ch)
	or a
	jp z,l5beeh
	ld a,(08131h)
	or a
	call z,sub_1f37h
	call sub_19a4h
	call sub_1a2dh
	call sub_1bc5h
l5ba3h:
	pop hl
	pop de
	call sub_051dh
	ld a,(0822fh)
	or a
	jr z,l5bd2h
	ld a,(0814ah)
	cp 080h
	jp c,l5bc6h
	cp 091h
	jp z,l60c1h
	cp 088h
	jr z,l5bc6h
	cp 089h
	jr z,l5bc6h
	jp l5bcdh
l5bc6h:
	push hl
	push de
	call sub_2026h
	pop de
	pop hl
l5bcdh:
	ld a,0ffh
	ld (0814ah),a
l5bd2h:
	ld a,(08290h)
	or a
	jr nz,l5be3h
	push de
	ld de,(08a88h)
	dec de
	ld (08a88h),de
	pop de
l5be3h:
	ld a,(0814ah)
	cp 091h
	jp z,l60c1h
	jp l591ah
l5beeh:
	call sub_5fbah
	jp l5ba3h
l5bf4h:
	push af
	ld a,(0829ah)
	or a
	jr z,l5c03h
	ld a,000h
	ld (0829ah),a
	call sub_413bh
l5c03h:
	ld a,(08290h)
	or a
	jr nz,l5c12h
	push de
	ld de,0015eh
	ld (08a88h),de
	pop de
l5c12h:
	pop af
	ld (hl),a
	inc hl
	cp 017h
	jp z,l5c38h
	ld de,08833h
	ex de,hl
	or a
	sbc hl,de
	ex de,hl
	jp p,l591ah
	ld de,08840h
	ld ix,08800h
	ld (ix+000h),032h
	ld a,091h
	ld (08835h),a
	jp l5d92h
l5c38h:
	ld hl,08801h
	ld ix,08800h
	ld (ix+000h),001h
	ld de,08840h
	ld a,(08290h)
	or a
	jp nz,l5ca8h
	ld a,001h
	ld (08835h),a
	xor a
	ld (0883ah),a
	inc (ix+000h)
	ld a,(hl)
	call sub_5dddh
	cp 046h
	jp nz,l5d92h
	inc hl
	ld a,(hl)
	cp 030h
	jp nz,l5d92h
	inc hl
	ld a,(hl)
	cp 030h
	jp nz,l5d92h
	ld a,000h
	ld (08139h),a
	ld (0813ch),a
	ld (08837h),a
	push hl
	push de
	push bc
	call sub_2749h
	pop bc
	pop de
	pop hl
	inc hl
	push hl
	ld a,001h
	ld (08290h),a
	ld (0e44eh),a
	ld (0883ah),a
	ld a,(0883dh)
	or a
	jr nz,l5ca5h
	ld a,(0883eh)
	or a
	jr nz,l5ca5h
	push hl
	ld hl,l6017h
	call sub_600ah
	pop hl
l5ca5h:
	jp l609fh
l5ca8h:
	call sub_051dh
	ld a,(0822fh)
	or a
	jr z,l5cd5h
	ld a,(0814ah)
	cp 080h
	jp c,l5cc9h
	cp 091h
	jp z,l60c1h
	cp 088h
	jr z,l5cc9h
	cp 089h
	jr z,l5cc9h
	jp l5cd0h
l5cc9h:
	push hl
	push de
	call sub_2026h
	pop de
	pop hl
l5cd0h:
	ld a,0ffh
	ld (0814ah),a
l5cd5h:
	ld a,(0814ah)
	cp 091h
	jp z,l60c1h
	ld a,(08837h)
	or a
	jr z,l5cedh
	ld a,(0821ch)
	or a
	jp nz,l5d3fh
	ld (08837h),a
l5cedh:
	ld a,(hl)
	inc hl
	inc (ix+000h)
	cp 017h
	jp z,l6f96h
	call sub_5dddh
	push af
	ld a,(0883ch)
	or a
	jp nz,l5d45h
	ld a,(0883bh)
	or a
	jp nz,l5d45h
	pop af
	cp 054h
	jp z,l6e65h
	cp 04fh
	jp z,l68e5h
	cp 04bh
	jp z,l63ach
	cp 04dh
	jp z,l6500h
	cp 050h
	jp z,l69c8h
	cp 051h
	jp z,l6ae5h
	cp 053h
	jp z,l6df1h
	cp 046h
	jp z,l6033h
	cp 048h
	jp z,l62eeh
	ld a,090h
	ld (08835h),a
	jp l5d92h
l5d3fh:
	call sub_5fbah
	jp l5ca8h
l5d45h:
	pop af
	cp 046h
	jp z,l6033h
	cp 04dh
	jp z,l6500h
	cp 051h
	jp z,l6ae5h
	ld a,003h
	ld (08835h),a
	jp l5d92h
l5d5dh:
	ld a,076h
	call sub_48f2h
	ld a,032h
	call sub_48f2h
	ld a,(08291h)
	or 0e0h
	ld (08291h),a
	out (083h),a
	call sub_552dh
	xor a
	ld (0883ch),a
	ld (0883bh),a
	ld (08118h),a
	ld a,000h
	ld (0e44eh),a
	ld a,(0822eh)
	or a
	jr z,l5d8eh
	ld a,048h
	call sub_7844h
l5d8eh:
	pop bc
	pop de
	pop hl
	ret
l5d92h:
	ld a,(0883dh)
	or a
	jp nz,l5994h
	ld a,(0883eh)
	or a
	jp nz,l5a50h
	ld a,045h
	ld (de),a
	inc de
	ld a,(08835h)
	ld b,002h
l5da9h:
	push af
	srl a
	srl a
	srl a
	srl a
	ld c,030h
	cp 00ah
	jp m,l5dbbh
	ld c,037h
l5dbbh:
	add a,c
	ld (de),a
	inc de
	pop af
	and 00fh
	ld c,030h
	cp 00ah
	jp m,l5dcah
	ld c,037h
l5dcah:
	add a,c
	ld (de),a
	inc de
l5dcdh:
	ld a,(ix+000h)
	dec a
	djnz l5da9h
	ld a,017h
	ld (de),a
	xor a
	ld (08836h),a
	jp l6fc3h
sub_5dddh:
	push af
	ld a,000h
	ld (de),a
	inc de
	ld (de),a
	inc de
	ld (de),a
	inc de
	pop af
	ret
sub_5de8h:
	push bc
	push de
	ld b,005h
	ld de,08000h
l5defh:
	in a,(087h)
	rra
	jr nc,l5e03h
	in a,(085h)
	push af
l5df7h:
	in a,(087h)
	and 004h
	jr z,l5df7h
	pop af
	out (085h),a
	pop de
	pop bc
	ret
l5e03h:
	dec de
	ld a,d
	or e
	jr nz,l5defh
	djnz l5defh
	ld a,001h
	ld (0a7fdh),a
	jp l0000h
sub_5e12h:
	push hl
	push bc
	push de
	ld hl,08a81h
	ld c,(hl)
	in a,(c)
	rr a
	jr nc,l5e3ah
l5e1fh:
	res 1,c
	in a,(c)
	ld de,(08295h)
	bit 0,e
	jp z,l5e3ah
	push af
	set 1,c
l5e2fh:
	in a,(c)
	and 004h
	jr z,l5e2fh
	pop af
	res 1,c
	out (c),a
l5e3ah:
	pop de
	pop bc
	pop hl
	ret
sub_5e3eh:
	push hl
	push bc
	push de
	ld hl,08a81h
	ld c,(hl)
	scf
	jp l5e1fh
sub_5e49h:
	push bc
	push de
	push hl
	cp 000h
	jp z,l5eb8h
	ld b,005h
	ld de,08000h
	ld hl,08a81h
	ld c,(hl)
	push af
l5e5bh:
	in a,(c)
	and 004h
	jr z,l5e5bh
	pop af
	ld l,a
	res 1,c
	out (c),a
	push de
	ld de,(08295h)
	bit 0,d
	pop de
	jp z,l5eb8h
l5e72h:
	set 1,c
	in h,(c)
	rr h
	jr nc,l5e91h
	res 1,c
	in h,(c)
	ld a,l
	cp h
	jr z,l5eb8h
	ld a,(08a82h)
	and 001h
	ld hl,0a7f7h
	add a,l
	ld a,001h
	ld (hl),a
	jp l5eb8h
l5e91h:
	ld a,(0822fh)
	or a
	jr z,l5ea3h
	push hl
	push de
	push bc
	call sub_051dh
	call sub_2026h
	pop bc
	pop de
	pop hl
l5ea3h:
	dec de
	ld a,d
	or e
	jr nz,l5e72h
	djnz l5e72h
	ld a,(08a82h)
	and 001h
	ld hl,0a7fah
	add a,l
	ld l,a
	ld a,001h
	ld (hl),a
	inc a
l5eb8h:
	pop hl
	pop de
	pop bc
	ret
sub_5ebch:
	exx
	ld a,b
	ld (08a84h),a
	ld a,c
	ld (08a83h),a
	ld a,e
	ld (08297h),a
	ld a,d
	ld (08297h),a
	exx
	call sub_5ed2h
	ret
sub_5ed2h:
	push hl
	push de
	push bc
	ld hl,08a83h
	ld c,(hl)
	in a,(c)
	bit 5,a
	jr nz,l5f37h
	rr a
	jr nc,l5f37h
	res 1,c
	in a,(c)
	ld de,(08297h)
	jr z,l5efbh
	push af
	set 1,c
l5ef0h:
	in a,(c)
	and 004h
	jr z,l5ef0h
	pop af
	res 1,c
	out (c),a
l5efbh:
	cp 017h
	jp nz,l5f37h
	ld b,004h
	ld hl,l5f43h
l5f05h:
	ld a,(hl)
	ld de,l0800h
	set 1,c
	push af
l5f0ch:
	in a,(c)
	and 004h
	jr z,l5f0ch
	pop af
	res 1,c
	out (c),a
	push de
	ld de,(08297h)
	bit 0,d
	pop de
	jp z,l5f34h
l5f22h:
	push hl
	set 1,c
	in h,(c)
	rr h
	jr nc,l5f3bh
	res 1,c
	in h,(c)
	ld a,l
	cp h
	pop hl
	jr nz,l5f37h
l5f34h:
	inc hl
	djnz l5f05h
l5f37h:
	pop bc
	pop de
	pop hl
	ret
l5f3bh:
	dec de
	ld a,d
	or e
	jr nz,l5f22h
	pop hl
	jr l5f37h
l5f43h:
	ld b,l
	jr nc,$+50
	rla
sub_5f47h:
	push hl
	push de
	cp 030h
	jp m,l5f6dh
	cp 03ah
	jp p,l5f5bh
	sub 030h
	ex de,hl
	rld
	jp l5f6ah
l5f5bh:
	cp 041h
	jp m,l5f6dh
	cp 047h
	jp p,l5f6dh
	sub 037h
	ex de,hl
	rld
l5f6ah:
	pop de
	pop hl
	ret
l5f6dh:
	ld a,090h
	ld (08835h),a
	ld a,001h
	ld (08836h),a
	jp l5f6ah
sub_5f7ah:
	nop
sub_5f7bh:
	ld a,(hl)
	inc hl
	push de
	ld de,08149h
	call sub_5f47h
	ld a,(08836h)
	or a
	jp nz,l5f90h
	ld a,(hl)
	inc hl
	call sub_5f47h
l5f90h:
	pop de
	ret
sub_5f92h:
	ld a,(0883bh)
	or a
	jp nz,l5f9eh
	ld a,(0883ch)
	or a
	ret z
l5f9eh:
	ld a,003h
	ld (08835h),a
	ret
sub_5fa4h:
	push af
	push bc
	dec hl
	dec hl
	dec hl
	ld bc,l0001h+2
	ldir
	pop bc
	pop af
	ret
sub_5fb1h:
	ld a,00dh
	ld (de),a
	inc de
	ld a,00ah
	ld (de),a
	inc de
	ret
sub_5fbah:
	push hl
	push de
	call l00f0h
	call l00f0h
	pop de
	pop hl
	ret
sub_5fc5h:
	push hl
	push de
	ld a,02fh
	ld (08a85h),a
	ld hl,0b8fch
l5fcfh:
	push hl
	ld hl,08a85h
	inc (hl)
	pop hl
	ld bc,l0007h
	ld de,0e6a0h
l5fdbh:
	ld a,(de)
	cpi
	jr nz,l5fe6h
	jp po,l5ff0h
	inc de
	jr l5fdbh
l5fe6h:
	add hl,bc
	ld a,00dh
	cp (hl)
	jr nz,l5fcfh
	xor a
	ld (08a85h),a
l5ff0h:
	pop de
	pop hl
	ret
sub_5ff3h:
	ld a,080h
	out (097h),a
	call sub_534ch
	jr c,l5ffeh
	jr l6008h
l5ffeh:
	in a,(097h)
	ld b,a
	ld hl,081d4h
	call sub_4eb7h
	scf
l6008h:
	ccf
	ret
sub_600ah:
	push bc
	push de
	ld bc,l0007h
	ld de,0e660h
	ldir
	pop de
	pop bc
	ret
l6017h:
	ld d,d
	ld b,l
	ld c,l
	ld c,a
	ld d,h
	ld b,l
	jr nz,$+34
	jr nz,$+34
	jr nz,$+34
	jr nz,l6045h
l6025h:
	ld b,l
	ld e,b
	ld d,h
	dec l
	ld d,e
	ld b,e
	ld c,(hl)
l602ch:
	ld b,l
	ld e,b
	ld d,h
	dec l
	ld d,d
	ld b,l
	ld b,e
l6033h:
	call sub_5f7ah
	ld a,(08836h)
	or a
	jp nz,l5d92h
	ld a,(08149h)
	cp 00fh
	jp m,l605ch
l6045h:
	cp 099h
	jp z,l62cdh
	cp 010h
	jp z,l62b1h
	cp 011h
	jp z,l62beh
	ld a,090h
	ld (08835h),a
	jp l5d92h
l605ch:
	push hl
	ld c,a
	ld b,000h
l6060h:
	sla c
	add a,c
	ld c,a
	ld hl,l6072h
	add hl,bc
	jp (hl)
l6069h:
	pop hl
l606ah:
	ld a,090h
	ld (08835h),a
	jp l5d92h
l6072h:
	jp l609fh
	jp l60b9h
	jp l60e5h
	jp l6185h
	jp l61a9h
	jp l6202h
	jp l6264h
	jp l62cbh
	jp l62cch
	jp l6294h
	jp l62a2h
	jp l6069h
	jp l6069h
	jp l6069h
	jp l6069h
l609fh:
	pop hl
	ld a,046h
	ld (de),a
	inc de
	ld a,032h
	ld (de),a
	inc de
	ld a,030h
	ld (de),a
	inc de
	call sub_5f92h
	or a
	jp nz,l5ca8h
	call sub_5fbah
	jp l5ca8h
l60b9h:
	pop hl
	call sub_5f92h
	or a
	jp nz,l5d92h
l60c1h:
	push hl
	ld hl,0601eh
	call sub_600ah
	pop hl
	xor a
	ld (08290h),a
	ld (0e44eh),a
	ld (0883ah),a
	ld (08837h),a
	ld a,(0822eh)
	or a
	jp z,l5d5dh
	ld a,048h
	call sub_7844h
	jp l5d5dh
l60e5h:
	pop hl
	call sub_5f92h
	jp nz,l5d92h
	ld a,(0810ch)
	or a
	jp z,l617dh
	ld a,(08116h)
	or a
	jp z,l617dh
	ld a,(08119h)
	cp 031h
	jp nz,l617dh
	call sub_62d2h
	ld a,(08131h)
	or a
	jp z,l6126h
	push bc
	ld b,00ah
	call sub_0545h
	pop bc
	ld a,001h
	out (08dh),a
	ld a,045h
	call sub_495ah
	ld a,042h
	call sub_495ah
	ld a,031h
	call sub_495ah
l6126h:
	ld a,06eh
	call sub_48f2h
	ld a,039h
	call sub_48f2h
	xor a
	ld (0825dh),a
	ld (0825eh),a
	ld a,(08a82h)
	cp 0e0h
	jp z,l616eh
	call sub_62d2h
	ld a,(08291h)
	res 5,a
	res 7,a
	set 6,a
l614bh:
	ld (08291h),a
	out (083h),a
	ld a,001h
	ld (0883ch),a
	ld a,002h
	ld (0e44eh),a
	push hl
	push de
	call sub_4a40h
	pop de
	pop hl
	ld a,046h
	ld (de),a
	inc de
	ld a,032h
	ld (de),a
	inc de
	ld (de),a
	inc de
	jp l5ca8h
l616eh:
	call sub_62d2h
	ld a,(08291h)
	res 6,a
	res 7,a
	set 5,a
	jp l614bh
l617dh:
	ld a,002h
	ld (08835h),a
	jp l5d92h
l6185h:
	pop hl
	ld a,(0883ch)
	or a
	jp z,l61a6h
	ld a,(08291h)
	or 0e0h
	ld (08291h),a
	out (083h),a
	xor a
	ld (0883ch),a
	ld (08118h),a
	ld a,001h
	ld (0e44eh),a
	call sub_5fbah
l61a6h:
	jp l5ca8h
l61a9h:
	pop hl
	call sub_5f92h
	jp nz,l5d92h
	ld a,(08116h)
	or a
	jp z,l61feh
	ld a,(0810ch)
	or a
	jp z,l61feh
	ld a,(08119h)
	cp 031h
	jp nz,l61feh
	push hl
	push de
	call sub_3149h
	ld hl,08284h
	call sub_550eh
	ld a,030h
	call sub_5503h
	ld bc,00050h
	call sub_5538h
	cp 00fh
	pop de
	pop hl
	jp z,l61ffh
	ld a,046h
	ld (de),a
	inc de
	ld a,032h
	ld (de),a
	inc de
	ld a,034h
	ld (de),a
	inc de
	ld a,001h
	ld (08838h),a
	xor a
	ld (08116h),a
	call sub_5fbah
	jp l5ca8h
l61feh:
	nop
l61ffh:
	jp l617dh
l6202h:
	pop hl
	call sub_5f92h
	jp nz,l5d92h
	ld a,(0810ch)
	or a
	jp z,l6261h
	ld a,(08119h)
	cp 031h
	jp nz,l6261h
	ld a,(08838h)
	or a
	jp z,l6261h
	push hl
	push de
	call sub_5522h
	call sub_3149h
	ld hl,08284h
	call sub_550eh
	pop de
	pop hl
	ld a,(08131h)
	or a
	jp z,l623ah
	ld a,001h
	out (08dh),a
l623ah:
	ld a,(08291h)
	set 5,a
	res 6,a
	set 7,a
	ld (08291h),a
	out (083h),a
	ld a,001h
	ld (0883bh),a
	ld a,003h
	ld (0e44eh),a
	ld a,046h
	ld (de),a
	inc de
	ld a,032h
	ld (de),a
	inc de
	ld a,035h
	ld (de),a
	inc de
	jp l5ca8h
l6261h:
	jp l617dh
l6264h:
	pop hl
	ld a,(0883bh)
	or a
	jp z,l628eh
	call sub_552dh
	xor a
	ld (0883bh),a
	ld (08838h),a
	ld (08118h),a
	ld a,001h
	ld (0e44eh),a
	ld a,(08291h)
	or 0e0h
	ld (08291h),a
	out (083h),a
	call sub_5fbah
l628bh:
	jp l5ca8h
l628eh:
	ld (08838h),a
	jp l628bh
l6294h:
	pop hl
	ld a,076h
	call sub_48f2h
	ld a,034h
	call sub_48f2h
	jp l5ca8h
l62a2h:
	pop hl
	ld a,076h
	call sub_48f2h
	ld a,037h
	call sub_48f2h
	jp l5ca8h
	pop hl
l62b1h:
	ld a,045h
	call sub_48f2h
	ld a,031h
	call sub_48f2h
	jp l5ca8h
l62beh:
	ld a,045h
	call sub_48f2h
	ld a,032h
	call sub_48f2h
	jp l5ca8h
l62cbh:
	nop
l62cch:
	nop
l62cdh:
	nop
	pop hl
	jp l606ah
sub_62d2h:
	push hl
	ld a,057h
	call sub_495ah
	ld hl,l6060h
	ld (08006h),hl
	ld hl,l3f3fh
	ld (0800ch),hl
	call sub_1b76h
	ld a,039h
	call sub_495ah
	pop hl
	ret
l62eeh:
	call sub_5f7ah
	ld a,(08836h)
	or a
	jp nz,l5d92h
	ld a,(08149h)
	or a
	jp z,l6311h
	cp 001h
	jp z,l636dh
	cp 002h
	jp z,l639fh
	ld a,090h
	ld (08835h),a
	jp l5d92h
l6311h:
	push hl
	ld a,(hl)
	inc hl
	cp 030h
	jp nz,l634ah
	ld a,(hl)
	inc hl
	cp 035h
	jp p,l6351h
	ld b,002h
l6322h:
	ld a,(hl)
	inc hl
	cp 030h
	jp m,l6364h
	cp 03ah
	jp p,l6364h
	djnz l6322h
l6330h:
	pop hl
	ld a,06eh
	call sub_48f2h
	ld a,034h
	call sub_48f2h
	ld b,004h
l633dh:
	ld a,(hl)
	inc hl
	call sub_48f2h
	djnz l633dh
	call sub_5fbah
	jp l5ca8h
l634ah:
	cp 034h
	jp p,l6364h
	ld a,(hl)
	inc hl
l6351h:
	cp 03ah
	jp p,l6364h
	ld b,002h
l6358h:
	ld a,(hl)
	inc hl
	cp 030h
	jp nz,l6364h
	djnz l6358h
	jp l6330h
l6364h:
	pop hl
	ld a,00ch
	ld (08835h),a
	jp l5d92h
l636dh:
	ld a,06eh
	call sub_48f2h
	ld a,035h
	call sub_48f2h
l6377h:
	ld b,002h
l6379h:
	ld a,(hl)
	inc hl
	cp 030h
	jp m,l6397h
	cp 03ah
	jp m,l638fh
	cp 041h
	jp m,l6397h
	cp 047h
	jp p,l6397h
l638fh:
	call sub_48f2h
	djnz l6379h
	jp l5ca8h
l6397h:
	ld a,090h
	ld (08835h),a
	jp l5d92h
l639fh:
	ld a,06eh
	call sub_48f2h
	ld a,036h
	call sub_48f2h
	jp l6377h
l63ach:
	call sub_5f7ah
	ld a,(08836h)
	or a
	jp nz,l5d92h
	xor a
	ld (08292h),a
	ld a,(08149h)
	cp 013h
	jp p,l6409h
	ld c,a
	ld b,000h
	sla c
	add a,c
	ld c,a
	push hl
	ld hl,l63cfh
	add hl,bc
	jp (hl)
l63cfh:
	jp l6411h
	jp l6408h
	jp l6408h
	jp l6408h
	jp l6454h
	jp l6462h
	jp l646ah
	jp l6475h
	jp l647bh
	jp l6408h
	jp l6408h
	jp l6408h
	jp l6408h
	jp l6408h
	jp l64a4h
	jp l6408h
	jp l6408h
	jp l64d4h
	jp l64ddh
l6408h:
	pop hl
l6409h:
	ld a,090h
	ld (08835h),a
	jp l5d92h
l6411h:
	pop hl
	push de
	ld de,0a015h
l6416h:
	ld bc,l0005h
	ldir
	pop de
	jp l5ca8h
	pop hl
	ld a,(0821eh)
	or a
	jp nz,l5ca8h
	ld a,082h
	jp l6442h
l642ch:
	call sub_5fbah
	jp l5ca8h
	pop hl
	ld a,(0821eh)
	or a
	jp z,l5ca8h
	ld a,082h
	jp l6442h
	pop hl
	ld a,083h
l6442h:
	ld (0814ah),a
	push hl
	push de
	call sub_2026h
	ld a,0ffh
	ld (0814ah),a
	pop de
	pop hl
	jp l642ch
l6454h:
	pop hl
	push de
	ld bc,l0001h+1
	ld de,0a005h
	ldir
	pop de
	jp l5ca8h
l6462h:
	pop hl
	push de
	ld de,0a007h
	jp l6416h
l646ah:
	pop hl
	push de
	ld de,0a014h
	ldi
	pop de
	jp l5ca8h
l6475h:
	pop hl
	ld a,08fh
	jp l6442h
l647bh:
	pop hl
	ld a,092h
	jp l6442h
	pop hl
l6482h:
	ld a,090h
	jp l6442h
	pop hl
	ld a,(0822bh)
	or a
	jp nz,l6482h
	jp l5ca8h
	pop hl
	ld a,003h
	jp l6442h
	pop hl
	ld a,007h
	jp l6442h
	pop hl
	ld a,010h
	jp l6442h
l64a4h:
	pop hl
	ld a,(08133h)
	or a
	jp z,l5ca8h
	ld a,00fh
	jp l6442h
	pop hl
	push de
	ld bc,l0005h+1
	ld de,0a00eh
	ldir
	pop de
	jp l5ca8h
	pop hl
	push de
	ld bc,l0007h
	ld de,0e700h
	push bc
	ldir
	ld de,0e720h
	pop bc
	ldir
	pop de
	jp l5ca8h
l64d4h:
	pop hl
	ld a,04fh
	call sub_48f2h
	jp l5ca8h
l64ddh:
	ld a,(0822bh)
	cp 001h
	jp z,l64f7h
	call sub_2e45h
	call sub_2e1fh
	ld a,001h
	ld (08125h),a
	pop hl
	call sub_5fbah
	jp l5ca8h
l64f7h:
	pop hl
	ld a,004h
	ld (08835h),a
	jp l5d92h
l6500h:
	ld a,001h
	or a
	jp z,l658bh
	ld a,(0822eh)
	or a
	jp z,l6644h
	ld a,047h
	call sub_7844h
	jp z,l6644h
	ld a,000h
	ld (0829ch),a
l651ah:
	ld a,(0822eh)
	or a
	jp z,l6644h
	call sub_5f7ah
	ld a,(08836h)
	or a
	jp nz,l5d92h
	ld a,(08149h)
	cp 015h
	jp p,l658bh
	cp 00ch
	jp z,l6866h
	ld c,a
	ld b,000h
	sla c
	add a,c
	ld c,a
	push hl
	ld hl,l654ch
	add hl,bc
	push hl
	push de
	call sub_7710h
	pop de
	pop hl
	jp (hl)
l654ch:
	jp l6593h
	jp l664ch
	jp l669dh
	jp l66bbh
	jp l66d9h
	jp l66f7h
	jp l6715h
	jp l6733h
	jp l6774h
	jp l6800h
	jp l6822h
	jp l6844h
	jp l658bh
	jp l658bh
	jp l6890h
	jp l689ch
	jp l658bh
	jp l68beh
	jp l68d6h
	jp l68dbh
	jp l68e0h
l658bh:
	ld a,090h
	ld (08835h),a
	jp l5d92h
l6593h:
	pop hl
	ld a,042h
	call sub_7844h
	jp z,l6644h
	ld b,009h
	ld a,058h
	call sub_7844h
	jp z,l6644h
l65a6h:
	ld a,(hl)
	inc hl
	call sub_7844h
	jp z,l6644h
	djnz l65a6h
	ld b,009h
	ld a,059h
	call sub_7844h
	jp z,l6644h
l65bah:
	ld a,(hl)
	inc hl
	call sub_7844h
	jp z,l6644h
	djnz l65bah
	ld b,005h
	ld a,05ah
	call sub_7844h
	jp z,l6644h
l65ceh:
	ld a,(hl)
	inc hl
	call sub_7844h
	jp z,l6644h
	djnz l65ceh
l65d8h:
	ld a,02ah
	call sub_7844h
	jp z,l6644h
l65e0h:
	ld a,000h
	ld (08353h),a
	ld bc,l000fh+1
l65e8h:
	push bc
	ld bc,01388h
l65ech:
	push hl
	push de
	push bc
	call sub_182ah
	call sub_1882h
	call sub_7873h
	call sub_70e4h
	pop bc
	pop de
	pop hl
	ld a,(08353h)
	cp 045h
	jp z,l6634h
	cp 046h
	jp z,l6626h
	ld a,(08232h)
	or a
	jr z,l6616h
	ld a,030h
	jp l6644h
l6616h:
	dec bc
	ld a,b
	or c
	jp nz,l65ech
	pop bc
	dec bc
	ld a,b
	or c
	jp nz,l65e8h
	jp l6644h
l6626h:
	pop bc
	push hl
	ld bc,l0001h+2
	ld hl,08353h
	ldir
	pop hl
	jp l5ca8h
l6634h:
	pop bc
	push hl
	ld bc,l0001h+2
	ld hl,08353h
	ldir
	pop hl
	ld b,002h
	jp l5dcdh
l6644h:
	ld a,031h
	ld (08835h),a
	jp l5d92h
l664ch:
	pop hl
	ld a,(0829ch)
	cp 001h
	jp z,l665dh
	ld a,042h
	call sub_7844h
	jp z,l6644h
l665dh:
	ld a,058h
	call sub_7844h
	jp z,l6644h
	ld b,009h
l6667h:
	ld a,(hl)
	inc hl
	call sub_7844h
	jp z,l6644h
	djnz l6667h
	ld a,(hl)
	cp 04dh
	jp nz,l6695h
	inc hl
	ld a,(hl)
	cp 030h
	jp nz,l6694h
	inc hl
	ld a,(hl)
	cp 031h
	jp m,l6693h
	cp 037h
	jp p,l6693h
	dec hl
	ld a,001h
	ld (0829ch),a
	jp l651ah
l6693h:
	dec hl
l6694h:
	dec hl
l6695h:
	ld a,000h
	ld (0829ch),a
	jp l65d8h
l669dh:
	pop hl
	ld a,(0829ch)
	cp 001h
	jp z,l66aeh
	ld a,042h
	call sub_7844h
	jp z,l6644h
l66aeh:
	ld a,059h
	call sub_7844h
	jp z,l6644h
	ld b,009h
	jp l6667h
l66bbh:
	pop hl
	ld a,(0829ch)
	cp 001h
	jp z,l66cch
	ld a,042h
	call sub_7844h
	jp z,l6644h
l66cch:
	ld a,05ah
	call sub_7844h
	jp z,l6644h
	ld b,005h
	jp l6667h
l66d9h:
	pop hl
	ld a,(0829ch)
	cp 001h
	jp z,l66eah
	ld a,042h
	call sub_7844h
	jp z,l6644h
l66eah:
	ld a,07ah
	call sub_7844h
	jp z,l6644h
	ld b,005h
	jp l6667h
l66f7h:
	pop hl
	ld a,(0829ch)
	cp 001h
	jp z,l6708h
	ld a,042h
	call sub_7844h
	jp z,l6644h
l6708h:
	ld a,052h
	call sub_7844h
	jp z,l6644h
	ld b,005h
	jp l6667h
l6715h:
	pop hl
	ld a,(0829ch)
	cp 001h
	jp z,l6726h
	ld a,042h
	call sub_7844h
	jp z,l6644h
l6726h:
	ld a,054h
	call sub_7844h
	jp z,l6644h
	ld b,003h
	jp l6667h
l6733h:
	pop hl
	ld a,000h
	ld (0835bh),a
	ld a,053h
	call sub_7844h
l673eh:
	ld a,(hl)
	ld (0835ch),a
	inc hl
	call sub_67c6h
l6746h:
	ld a,(08344h)
	cp 05ch
	jr z,l675fh
	cp 065h
	jr z,l675fh
	cp 03eh
	jr z,l676eh
	cp 03fh
	jr z,l6767h
	cp 060h
	jr z,l673eh
	jr l675fh
l675fh:
	ld a,00dh
	ld (08835h),a
	jp l5d92h
l6767h:
	ld a,059h
	call sub_67fbh
	jr l6746h
l676eh:
	call sub_67b4h
	jp l5ca8h
l6774h:
	pop hl
	ld a,000h
	ld (0835bh),a
	ld a,04ch
	call sub_7844h
	jp z,l6644h
l6782h:
	ld a,(hl)
	inc hl
	ld (0835ch),a
	call sub_67c6h
	ld a,(08344h)
	cp 05ch
	jr z,l67a3h
	cp 065h
	jr z,l67a3h
	cp 03eh
	jr z,l67a6h
	cp 021h
	jr z,l67ach
	cp 060h
	jr z,l6782h
	jr l67a3h
l67a3h:
	jp l675fh
l67a6h:
	call sub_67b4h
	jp l65e0h
l67ach:
	ld a,030h
	ld (08835h),a
	jp l5d92h
sub_67b4h:
	push hl
	push de
	push bc
	ld de,0e682h
	dec hl
	dec hl
	dec hl
	ld bc,l0001h+2
	ldir
	pop bc
	pop de
	pop hl
	ret
sub_67c6h:
	push bc
	push de
	push hl
	call sub_70e4h
	ld a,(0835bh)
	cp 003h
	jp p,l67e7h
	inc a
	ld (0835bh),a
	ld a,(0835ch)
l67dbh:
	call sub_7844h
l67deh:
	call sub_7810h
	jr nc,l67deh
l67e3h:
	pop hl
	pop de
	pop bc
	ret
l67e7h:
	pop hl
	dec hl
	push hl
	jp nz,l67f4h
	ld a,00dh
	call sub_7844h
	jr l67deh
l67f4h:
	ld a,065h
	ld (08344h),a
	jr l67e3h
sub_67fbh:
	push bc
	push de
	push hl
	jr l67dbh
l6800h:
	pop hl
	ld a,04ch
	call sub_7844h
	jp z,l6644h
	ld a,033h
	call sub_7844h
	jp z,l6644h
	call sub_7816h
	ld a,00dh
	call sub_7844h
	jp z,l6644h
	call sub_7816h
	jp l65e0h
l6822h:
	pop hl
	ld a,04ch
	call sub_7844h
	jp z,l6644h
	ld a,031h
	call sub_7844h
	jp z,l6644h
	call sub_7816h
	ld a,00dh
	call sub_7844h
	jp z,l6644h
	call sub_7816h
	jp l65e0h
l6844h:
	pop hl
	ld a,04ch
	call sub_7844h
	jp z,l6644h
	ld a,038h
	call sub_7844h
	jp z,l6644h
	call sub_7816h
	ld a,00dh
	call sub_7844h
	jp z,l6644h
	call sub_7816h
	jp l65e0h
l6866h:
	push hl
	push de
	call sub_76e3h
	pop de
	pop hl
	jp l5ca8h
	push de
	call sub_77efh
	ld hl,0834fh
	ld a,(08351h)
	or (hl)
	ld (hl),a
	inc hl
	ld a,(08352h)
	or (hl)
	ld (hl),a
	pop de
	ld hl,0834fh
	ld bc,l0001h+1
	call sub_7901h
	pop hl
	jp l5ca8h
l6890h:
	pop hl
	ld a,048h
	call sub_7844h
	jp z,l6644h
	jp l5ca8h
l689ch:
	pop hl
	ld a,04ch
	call sub_7844h
	jp z,l6644h
	ld a,037h
	call sub_7844h
	jp z,l6644h
	call sub_7816h
	ld a,00dh
	call sub_7844h
	jp z,l6644h
	call sub_7816h
	jp l65e0h
l68beh:
	ld b,008h
l68c0h:
	pop hl
	ld a,046h
	call sub_7844h
	jp z,l6644h
	ld a,b
	call sub_7844h
	jp z,l6644h
	call sub_7816h
	jp l65e0h
l68d6h:
	ld b,00ch
	jp l68c0h
l68dbh:
	ld b,00bh
	jp l68c0h
l68e0h:
	ld b,00ah
	jp l68c0h
l68e5h:
	call sub_5f7ah
	ld a,(08836h)
	or a
	jp nz,l5d92h
	ld a,(08149h)
	cp 086h
	jp z,l6951h
	cp 095h
	jp z,l6957h
	cp 09ah
	jp z,l695dh
	cp 0a4h
	jp z,l6963h
	cp 0a5h
	jp z,l696bh
	cp 0aah
	jp z,l6973h
	cp 0b5h
	jp z,l6979h
	cp 0abh
	jp z,l697fh
	cp 0aeh
	jp z,l6985h
	cp 0afh
	jp z,l69bah
	cp 08eh
	jp z,l698bh
	cp 0b2h
	jp z,l6996h
	cp 0b6h
	jp z,l699ch
	cp 09eh
	jp z,l69a2h
	cp 09fh
	jp z,l69a8h
	cp 0b0h
	jp z,l69aeh
	cp 0b1h
	jp z,l69b4h
	jp l69c0h
l694ah:
	or a
	jp nz,l6eeeh
	jp l5ca8h
l6951h:
	ld a,(08131h)
	jp l694ah
l6957h:
	ld a,(08117h)
	jp l694ah
l695dh:
	ld a,(0813bh)
	jp l694ah
l6963h:
	ld a,(08140h)
	and 004h
	jp l694ah
l696bh:
	ld a,(08140h)
	and 008h
	jp l694ah
l6973h:
	ld a,(08143h)
	jp l694ah
l6979h:
	ld a,(08151h)
	jp l694ah
l697fh:
	ld a,(0814fh)
	jp l694ah
l6985h:
	ld a,(08150h)
	jp l694ah
l698bh:
	ld a,(081ach)
	bit 4,a
	jp z,l6eeeh
	jp l5ca8h
l6996h:
	ld a,(08146h)
	jp l694ah
l699ch:
	ld a,(08153h)
	jp l694ah
l69a2h:
	ld a,(08154h)
	jp l694ah
l69a8h:
	ld a,(08155h)
	jp l694ah
l69aeh:
	ld a,(08144h)
	jp l694ah
l69b4h:
	ld a,(08145h)
	jp l694ah
l69bah:
	ld a,(08156h)
	jp l694ah
l69c0h:
	ld a,090h
	ld (08835h),a
	jp l5d92h
l69c8h:
	call sub_5f7ah
	ld a,(08836h)
	or a
	jp nz,l5d92h
	ld a,(08149h)
	cp 00bh
	jp p,l6a08h
	push hl
	ld c,a
	sla c
	add a,c
	ld c,a
	ld b,000h
	ld hl,l69e7h
	add hl,bc
	jp (hl)
l69e7h:
	jp l6a10h
	jp l6a2ah
	jp l6a32h
	jp l6a3ah
	jp l6a42h
	jp l6aa2h
	jp l6ab2h
	jp l6ac2h
	jp l6acdh
	jp l6ad5h
	jp l6addh
l6a08h:
	ld a,090h
	ld (08835h),a
	jp l5d92h
l6a10h:
	pop hl
	push de
	ld de,08182h
l6a15h:
	call sub_5f7bh
	ld a,(08836h)
	or a
	jp nz,l5d92h
	ld a,(08149h)
	ld (de),a
	pop de
	call sub_5fbah
	jp l5ca8h
l6a2ah:
	pop hl
	push de
	ld de,08183h
	jp l6a15h
l6a32h:
	pop hl
	push de
	ld de,08184h
	jp l6a15h
l6a3ah:
	pop hl
	push de
	ld de,08185h
	jp l6a15h
l6a42h:
	pop hl
	ld a,06eh
	call sub_48f2h
	ld a,032h
	call sub_48f2h
	ld b,006h
l6a4fh:
	ld a,(hl)
	inc hl
	call sub_48f2h
	djnz l6a4fh
	call sub_5fbah
	push hl
	push de
	call sub_1a1eh
	pop de
	pop hl
l6a60h:
	ld a,(08293h)
	or a
	jp nz,l6a6ah
	jp l5ca8h
l6a6ah:
	cp 001h
	ld b,090h
	jp z,l6a96h
	cp 002h
	ld b,010h
	jp z,l6a96h
	ld b,007h
	cp 003h
	jp z,l6a96h
	ld b,00dh
	cp 004h
	jp z,l6a96h
	ld b,005h
	cp 005h
	jp z,l6a96h
	ld b,006h
	cp 006h
	jp z,l6a96h
	ld b,099h
l6a96h:
	ld a,b
	ld (08835h),a
	ld a,000h
	ld (08293h),a
	jp l5d92h
l6aa2h:
	pop hl
	ld a,06eh
	call sub_48f2h
	ld a,033h
l6aaah:
	call sub_48f2h
	ld b,003h
	jp l6a4fh
l6ab2h:
	pop hl
	ld a,076h
	call sub_48f2h
	ld a,035h
	call sub_48f2h
	ld b,006h
	jp l6a4fh
l6ac2h:
	pop hl
	ld a,06eh
	call sub_48f2h
	ld a,038h
	jp l6aaah
l6acdh:
	pop hl
	push de
	ld de,08186h
	jp l6a15h
l6ad5h:
	pop hl
	push de
	ld de,08187h
	jp l6a15h
l6addh:
	pop hl
	push de
	ld de,081d5h
	jp l6a15h
l6ae5h:
	call sub_5f7ah
	ld a,(08836h)
	or a
	jp nz,l5d92h
	ld a,(08149h)
	cp 099h
	jp z,l6d46h
	cp 01bh
	jp p,l6b5dh
	call sub_5fa4h
	push hl
	ld c,a
	ld b,000h
	sla c
	add a,c
	ld c,a
	ld hl,l6b0ch
	add hl,bc
	jp (hl)
l6b0ch:
	jp l6b65h
	jp l6b89h
	jp l6b95h
	jp l6ba9h
	jp l6bb2h
	jp l6bb5h
	jp l6bc4h
	jp l6bd3h
	jp l6be2h
	jp l6bf1h
	jp l6c00h
	jp l6c0fh
	jp l6c1eh
	jp l6c2dh
	jp l6b5dh
	jp l6c7fh
	jp l6c96h
	jp l6cb9h
	jp l6cc9h
	jp l6ce0h
	jp l6cfah
	jp l6cfeh
	jp l6d15h
	jp l6d23h
	jp l6d2fh
	jp l6d34h
	jp l6d3ah
l6b5dh:
	ld a,090h
	ld (08835h),a
	jp l5d92h
l6b65h:
	ld hl,08160h
	ld bc,l0004h
	ldir
	ld b,002h
l6b6fh:
	ld a,(hl)
	cp 03ah
	jr nz,l6b76h
	ld a,041h
l6b76h:
	ld (de),a
	inc de
	inc hl
	djnz l6b6fh
	ld bc,l0005h+1
	ldir
l6b80h:
	ld bc,l0005h+1
	ld hl,0a00eh
	jp l6b8fh
l6b89h:
	ld hl,08160h
	ld bc,l0004h
l6b8fh:
	ldir
l6b91h:
	pop hl
	jp l5ca8h
l6b95h:
	ld hl,08164h
	ld bc,l0001h+1
	ld a,(hl)
	cp 03ah
	jr nz,l6b8fh
	ld a,041h
	ld (de),a
	inc de
	ld (de),a
	inc de
	jp l6b91h
l6ba9h:
	ld hl,08166h
	ld bc,l0005h+1
	jp l6b8fh
l6bb2h:
	jp l6b80h
l6bb5h:
	ld a,001h
	or a
	jp z,l658bh
	ld hl,08320h
	ld bc,l0017h
	jp l6b8fh
l6bc4h:
	ld a,001h
	or a
	jp z,l658bh
	ld hl,08320h
	ld bc,l0009h
	jp l6b8fh
l6bd3h:
	ld a,001h
	or a
	jp z,l658bh
	ld hl,08329h
	ld bc,l0009h
	jp l6b8fh
l6be2h:
	ld a,001h
	or a
	jp z,l658bh
	ld hl,08332h
	ld bc,l0005h
	jp l6b8fh
l6bf1h:
	ld a,001h
	or a
	jp z,l658bh
	ld hl,08337h
	ld bc,l0005h
	jp l6b8fh
l6c00h:
	ld a,001h
	or a
	jp z,l658bh
	ld hl,0833ch
	ld bc,l0005h
	jp l6b8fh
l6c0fh:
	ld a,001h
	or a
	jp z,l658bh
	ld hl,08341h
	ld bc,l0005h
	jp l6b8fh
l6c1eh:
	ld a,001h
	or a
	jp z,l658bh
	ld hl,08320h
	ld bc,l0024h
	jp l6b8fh
l6c2dh:
	ld hl,08188h
	ld b,007h
	call sub_6c41h
	call sub_5fc5h
	ld a,(08a85h)
	ld (de),a
	inc de
	pop hl
	jp l5ca8h
sub_6c41h:
	ld a,030h
	rld
	cp 03ah
	call nc,sub_6c65h
	ld (de),a
	inc de
	bit 4,a
	call z,sub_6c68h
	rld
	cp 03ah
	call nc,sub_6c65h
	ld (de),a
	inc de
	bit 4,a
	call z,sub_6c68h
	rld
	inc hl
	djnz sub_6c41h
	ret
sub_6c65h:
	add a,007h
	ret
sub_6c68h:
	sub 007h
	ret
	ld hl,0817dh
	ld bc,l0004h
	ldir
	ld a,064h
	ld hl,08198h
	sub (hl)
	ld (de),a
	inc de
	pop hl
	jp l5ca8h
l6c7fh:
	pop hl
	ld a,076h
	call sub_48f2h
	ld a,036h
	call sub_48f2h
	ld b,006h
l6c8ch:
	call sub_4930h
	ld (de),a
	inc de
	djnz l6c8ch
	jp l5ca8h
l6c96h:
	pop hl
	ld a,(08a85h)
	cp 031h
	jr z,l6cach
	cp 032h
	jr z,l6cach
	cp 033h
	jr z,l6cb1h
	cp 034h
	jr l6cb5h
	ld a,030h
l6cach:
	ld (de),a
	inc de
	jp l5ca8h
l6cb1h:
	ld a,034h
	jr l6cach
l6cb5h:
	ld a,038h
	jr l6cach
l6cb9h:
	pop hl
	ld a,076h
	call sub_48f2h
	ld a,038h
	call sub_48f2h
l6cc4h:
	ld b,003h
	jp l6cd6h
l6cc9h:
	pop hl
	ld a,076h
	call sub_48f2h
	ld a,033h
	call sub_48f2h
	ld b,007h
l6cd6h:
	call sub_4930h
	ld (de),a
	inc de
	djnz l6cd6h
	jp l5ca8h
l6ce0h:
	ld a,000h
l6ce2h:
	ld (0814bh),a
	call sub_1987h
	call sub_5ff3h
	jp c,l6b5dh
	ld hl,081d4h
	ld b,001h
	call sub_6c41h
	pop hl
	jp l5ca8h
l6cfah:
	ld a,001h
	jr l6ce2h
l6cfeh:
	pop hl
	ld a,076h
	call sub_48f2h
	ld a,039h
	call sub_48f2h
	ld b,002h
l6d0bh:
	call sub_4930h
	ld (de),a
	inc de
	djnz l6d0bh
	jp l6a60h
l6d15h:
	pop hl
	ld a,076h
	call sub_48f2h
	ld a,041h
	call sub_48f2h
	jp l6cc4h
l6d23h:
	ld hl,08182h
l6d26h:
	ld b,002h
	call sub_6c41h
	pop hl
	jp l5ca8h
l6d2fh:
	ld hl,08184h
	jr l6d26h
l6d34h:
	ld hl,08186h
	jp l6d26h
l6d3ah:
	ld hl,081d5h
	ld b,001h
	call sub_6c41h
	pop hl
	jp l5ca8h
l6d46h:
	ld a,(hl)
	inc hl
	cp 044h
	jp nz,l6b5dh
	ld a,(hl)
	inc hl
	cp 053h
	jp nz,l6b5dh
	ld a,(hl)
	inc hl
	cp 04dh
	jp nz,l6b5dh
	dec hl
	dec hl
	dec hl
	call sub_5fa4h
	inc hl
	inc hl
	inc hl
	call sub_5fb1h
	ld a,04dh
	call sub_495ah
	ld b,019h
l6d6eh:
	call sub_5de8h
	ld (de),a
	inc de
	djnz l6d6eh
	call sub_5fb1h
	ld a,04dh
	call sub_48f2h
	ld b,019h
l6d7fh:
	call sub_4930h
	ld (de),a
	inc de
	djnz l6d7fh
	call sub_5fb1h
	push hl
	ld hl,l4387h
	ld bc,l0017h+2
	ldir
	call sub_5fb1h
	ld hl,l456bh
	ld bc,l0017h+2
	ldir
	call sub_5fb1h
	in a,(09fh)
	ld (089d0h),a
	ld hl,089d0h
	ld b,001h
	call sub_6c41h
	in a,(0f0h)
	ld (089d0h),a
	ld hl,089d0h
	ld b,001h
	call sub_6c41h
	call sub_5fb1h
	ld hl,0a01ch
	ld b,002h
	call sub_6c41h
	call sub_5fb1h
	ld hl,0a477h
	ld b,002h
	call sub_6c41h
	call sub_5fb1h
	ld hl,0a7e0h
	ld b,002h
	call sub_6c41h
	call sub_5fb1h
	ld hl,0a7d0h
	ld bc,l000fh
	ldir
	pop hl
	xor a
	call sub_495ah
	call sub_48f2h
	jp l5ca8h
l6df1h:
	call sub_5f7ah
	ld a,(08836h)
	or a
	jp nz,l5d92h
	ld a,(08149h)
	or a
	jp z,l6e0fh
	cp 001h
	jp z,l6e24h
l6e07h:
	ld a,090h
	ld (08835h),a
	jp l5d92h
l6e0fh:
	ld a,(hl)
	inc hl
	cp 031h
	jp m,l6e07h
	cp 039h
	jp p,l6e07h
	ld (08119h),a
	call sub_5fbah
	jp l5ca8h
l6e24h:
	ld a,(hl)
	inc hl
	cp 030h
	jp m,l6e5dh
	cp 033h
	jp p,l6e5dh
	ld b,a
	ld a,(hl)
	inc hl
	cp 030h
	jp m,l6e5dh
	cp 03ah
	jp m,l6e47h
	cp 041h
	jp m,l6e5dh
	cp 047h
	jp p,l6e5dh
l6e47h:
	ld c,a
	ld a,06eh
	call sub_48f2h
	ld a,037h
	call sub_48f2h
	ld a,b
	call sub_48f2h
	ld a,c
	call sub_48f2h
	jp l5ca8h
l6e5dh:
	ld a,006h
	ld (08835h),a
	jp l5d92h
l6e65h:
	call sub_5f7ah
	ld a,(08836h)
	or a
	jp nz,l5d92h
	xor a
	ld (08292h),a
	ld a,(08149h)
	cp 09bh
	jp z,l606ah
	cp 09ch
	jp z,l606ah
	cp 09dh
	jp z,l606ah
	cp 0a8h
	jp z,l606ah
	cp 08dh
	jp z,l606ah
	cp 086h
	jp z,l6f14h
	cp 095h
	jp z,l6f1ah
	cp 09ah
	jp z,l6f20h
	cp 0a4h
	jp z,l6f26h
	cp 0a5h
	jp z,l6f2eh
	cp 0aah
	jp z,l6f36h
	cp 0b2h
	jp z,l6f3ch
	cp 0b5h
	jp z,l6f42h
	cp 0abh
	jp z,l6f48h
	cp 0aeh
	jp z,l6f4eh
	cp 0afh
	jp z,l6f8ch
	cp 08eh
	jp z,l6f54h
	cp 0b3h
	jp z,l6f5fh
	cp 0b4h
	jp z,l6f5fh
	cp 09eh
	jp z,l6f6eh
	cp 09fh
	jp z,l6f74h
	cp 0b6h
	jp z,l6f7ah
	cp 0b0h
	jp z,l6f80h
	cp 0b1h
	jp z,l6f86h
l6eeeh:
	push hl
	push de
	call l2c0ch
	pop de
	pop hl
	call sub_5fbah
	ld a,(08292h)
	or a
	jp z,l5ca8h
	ld c,a
	ld b,000h
	ld hl,l6f92h
	add hl,bc
	ld a,(hl)
	ld (08835h),a
	jp l5d92h
l6f0dh:
	or a
	jp z,l6eeeh
	jp l5ca8h
l6f14h:
	ld a,(08131h)
	jp l6f0dh
l6f1ah:
	ld a,(08117h)
	jp l6f0dh
l6f20h:
	ld a,(0813bh)
	jp l6f0dh
l6f26h:
	ld a,(08140h)
	and 004h
	jp l6f0dh
l6f2eh:
	ld a,(08140h)
	and 008h
	jp l6f0dh
l6f36h:
	ld a,(08143h)
	jp l6f0dh
l6f3ch:
	ld a,(08146h)
	jp l6f0dh
l6f42h:
	ld a,(08151h)
	jp l6f0dh
l6f48h:
	ld a,(0814fh)
	jp l6f0dh
l6f4eh:
	ld a,(08150h)
	jp l6f0dh
l6f54h:
	ld a,(081ach)
	bit 4,a
	jp nz,l6eeeh
	jp l5ca8h
l6f5fh:
	ld a,(08146h)
	or a
	jp nz,l6eeeh
	ld a,004h
	ld (08835h),a
	jp l5d92h
l6f6eh:
	ld a,(08154h)
	jp l6f0dh
l6f74h:
	ld a,(08155h)
	jp l6f0dh
l6f7ah:
	ld a,(08153h)
	jp l6f0dh
l6f80h:
	ld a,(08144h)
	jp l6f0dh
l6f86h:
	ld a,(08145h)
	jp l6f0dh
l6f8ch:
	ld a,(08156h)
	jp l6f0dh
l6f92h:
	nop
	inc b
	rlca
	sub b
l6f96h:
	ld a,(0883dh)
	or a
	jp nz,l5967h
	ld a,(0883eh)
	or a
	jp nz,l5a36h
	ld a,017h
	ld (de),a
	push de
	pop hl
	ld bc,08840h
	or a
	sbc hl,bc
	push hl
	pop bc
	ex de,hl
	ld a,000h
	cpdr
	inc hl
	jp nz,l606ah
	ld a,033h
	ld (hl),a
	dec hl
	ld (hl),a
	dec hl
	ld a,046h
	ld (hl),a
l6fc3h:
	ld hl,08840h
l6fc6h:
	ld a,(hl)
	call sub_5e49h
	cp 001h
	jp z,l7013h
	cp 002h
	jp z,l7013h
	cp 017h
	jp z,l6fddh
	inc hl
	jp l6fc6h
l6fddh:
	ld a,(08837h)
	or a
	jp z,l700ah
l6fe4h:
	ld a,(0821ch)
	or a
	jp z,l6ff1h
	call sub_5fbah
	jp l6fe4h
l6ff1h:
	ld de,08840h
	ld a,046h
	ld (de),a
	inc de
	ld a,033h
	ld (de),a
	inc de
	ld a,032h
	ld (de),a
	inc de
	ld a,017h
	ld (de),a
	xor a
	ld (08837h),a
	jp l6fc3h
l700ah:
	ld de,08840h
	ld hl,08801h
	jp l591ah
l7013h:
	push de
	push hl
	push bc
	push af
	call sub_4121h
	ld hl,007dch
	call sub_4155h
	pop af
	or 030h
	ld de,0e726h
	ld (de),a
	ld hl,0601eh
	call sub_600ah
	pop bc
	pop hl
	pop de
	ld a,001h
	ld (0829ah),a
	ld a,000h
	ld (08290h),a
	ld (0e44eh),a
	jp l5d5dh
	ld b,l
	inc sp
	ld sp,03020h
	jr nc,$+75
	ld c,(hl)
	jr nz,l70a3h
	cpl
	ld c,(hl)
	ld hl,04520h
	ld c,l
	ld d,b
	ld d,h
	ld e,c
	jr nz,$+34
	ld d,d
	ld b,c
	ld c,(hl)
	ld b,a
	ld b,l
	jr nz,l70a1h
	ld d,e
	ld b,e
	add a,d
	jr nz,l70a7h
	scf
l7062h:
	jr nz,l70b7h
	ld d,h
	ld c,a
	ld d,b
	ld hl,l2020h
	ld c,c
	ld c,(hl)
	ld c,c
	ld d,h
	ld hl,l4320h
	ld c,a
	ld c,(hl)
	ld d,h
	ld a,(05c5eh)
	jr nz,$+69
	ld c,b
	ld b,l
	ld b,e
	ld c,e
	jr nz,l70d2h
	ld d,h
	ld d,d
	jr nz,l70a3h
	jr nz,$+34
l7085h:
	ld d,e
	ld d,h
	ld d,d
	jr nz,l70aah
	jr nz,l70cbh
l708ch:
	ld d,d
	ld b,e
	ld c,h
	jr nz,$+34
	jr nz,$+34
l7093h:
	ld c,c
	ld c,(hl)
	ld a,(08180h)
	add a,d
	add a,e
	ret
sub_709bh:
	ld a,(0814ah)
	cp 01ch
	ret nz
l70a1h:
	ld a,049h
l70a3h:
	call sub_7844h
	xor a
l70a7h:
	ld (08358h),a
l70aah:
	ret
sub_70abh:
	ld a,(08358h)
	or a
	call nz,sub_709bh
	ld a,(0822eh)
	or a
	ret z
l70b7h:
	ld a,(08378h)
	or a
	jp nz,sub_76e3h
	ld a,(0814ah)
	cp 08ah
	jp z,l725dh
	cp 08bh
	jp z,l74d5h
l70cbh:
	cp 08ch
	jp z,l752ch
	cp 08dh
l70d2h:
	jp z,l769eh
	cp 08eh
	jp z,sub_76e3h
	ret
sub_70dbh:
	ld a,062h
	call sub_7844h
	jr z,l711ch
	jr l70eah
sub_70e4h:
	ld a,(0822eh)
	or a
	jr z,l7122h
l70eah:
	ld a,043h
	call sub_7844h
	jr z,l711ch
	call sub_7816h
	jr nc,l711ch
	call sub_713ch
	ld a,(08344h)
	cp 04eh
	jr z,l710eh
	cp 049h
	call z,sub_775bh
	cp 042h
	call z,sub_7110h
	jr nz,l710eh
l710ch:
	scf
	ret
l710eh:
	or a
	ret
sub_7110h:
	push af
	call sub_7144h
	call sub_7816h
	call sub_775bh
	pop af
	ret
l711ch:
	xor a
	ld (0822eh),a
	jr l710eh
l7122h:
	call sub_782fh
	ld a,(08344h)
	cp 049h
	call z,sub_775bh
	cp 042h
	call z,sub_713ch
	call z,sub_7110h
	call sub_7725h
	jr z,l710ch
	jr l710eh
sub_713ch:
	push af
	ld a,001h
	ld (0822eh),a
	pop af
	ret
sub_7144h:
	ld bc,l0024h
	ld de,08320h
l714ah:
	call sub_7816h
	ld hl,08344h
	ldi
	jp pe,l714ah
	call sub_7816h
	ld a,(08344h)
	cp 04eh
	jp z,l71ebh
	ld a,(08232h)
	or a
	call nz,sub_413bh
	ld a,000h
	ld (08232h),a
l716ch:
	call sub_7816h
	ld a,(08233h)
	or a
	ret nz
	ld hl,l7203h
	ld de,0e580h
sub_717ah:
	ld bc,l0005h
	push de
	ld de,08345h
	ldir
	pop de
	ld a,(08345h)
	cp 080h
	jr z,l71ddh
	push hl
	ld bc,(08348h)
	ld b,c
	ld hl,(08346h)
	ld a,020h
	cp (hl)
	jr z,l71dah
	push de
	ld a,(08345h)
	ld (de),a
	inc de
	push de
	ld de,(08348h)
	or a
	sbc hl,de
	pop de
l71a8h:
	inc hl
	ld a,(hl)
	cp 020h
	jr z,l71b2h
	cp 030h
	jr nz,l71b7h
l71b2h:
	dec b
	jr z,l71beh
	jr l71a8h
l71b7h:
	push bc
	ld c,b
	ld b,000h
	ldir
	pop bc
l71beh:
	ld a,006h
	sub b
	jr z,l71d4h
	ld c,a
	ld b,000h
	cp 006h
	jr nz,l71cfh
	ld a,030h
	ld (de),a
	inc de
	dec bc
l71cfh:
	ld hl,l5806h
	ldir
l71d4h:
	pop de
	ld hl,l0020h
	add hl,de
	ex de,hl
l71dah:
	pop hl
	jr sub_717ah
l71ddh:
	ld hl,0e640h
	sbc hl,de
	ex de,hl
	inc e
l71e4h:
	dec e
	ret z
	ld (hl),000h
	inc hl
	jr l71e4h
l71ebh:
	ld a,(08232h)
	or a
	jp nz,l716ch
	call sub_4121h
	ld hl,l7222h
	call sub_4155h
	ld a,001h
	ld (08232h),a
	jp l716ch
l7203h:
	ld e,b
	dec h
	add a,e
	ld b,000h
	ld e,c
	ld l,083h
	ld b,000h
	ld e,d
	ld (hl),083h
	dec b
	nop
	ld a,d
	dec sp
	add a,e
	dec b
	nop
	ld d,d
	ld b,b
	add a,e
	dec b
	nop
	ld d,h
	ld b,e
	add a,e
	inc bc
	nop
	add a,b
l7222h:
	jr nz,l7277h
	ld d,h
	ld b,c
	ld b,a
	ld b,l
	jr nz,$+71
	ld c,(hl)
	ld b,h
	dec l
	ld d,b
	ld c,a
	ld d,e
l7230h:
	ld c,a
	ld d,l
	ld d,h
	jr nz,$+81
	ld b,(hl)
	jr nz,$+34
	ld d,d
	ld b,c
	ld c,(hl)
	ld b,a
	ld b,l
	jr nz,$-49
	ld c,c
	ld (hl),d
	push bc
	ld b,00ah
	call sub_0545h
	pop bc
	ret
sub_7249h:
	ld bc,l0007h
	ld de,0e660h
	ldir
	ret
sub_7252h:
	ld b,01fh
	ld hl,0e660h
l7257h:
	ld (hl),000h
	inc hl
	djnz l7257h
	ret
l725dh:
	ld a,(08378h)
	or a
	jp nz,l736ch
	ld a,000h
	ld (08379h),a
	call sub_7710h
	ld a,053h
	call sub_7844h
	ld hl,0707eh
	call sub_74afh
l7277h:
	call sub_73c0h
l727ah:
	ld a,(08344h)
	cp 05ch
	jr z,l72edh
	cp 065h
	jr z,l72fch
	cp 03eh
	jp z,l733eh
	cp 03fh
	jr nz,l7277h
	ld bc,l0001h+2
	ld de,0e670h
	ld hl,0e663h
	ldir
l7299h:
	ld hl,l7085h
	call sub_7249h
	ld bc,l0001h+2
	ld de,0e663h
	ld hl,0e670h
	ldir
	ld (081b1h),de
l72aeh:
	call sub_055fh
	ld a,(0814ah)
	cp 080h
	jr nc,l72aeh
	cp 04bh
	jr z,l72aeh
	cp 079h
	jr nz,l72c2h
	ld a,059h
l72c2h:
	cp 04eh
	jr z,l72cah
	cp 06eh
	jr nz,l72d1h
l72cah:
	ld a,001h
	ld (08379h),a
	ld a,04eh
l72d1h:
	call sub_7844h
l72d4h:
	call sub_7810h
	jr nc,l72d4h
	ld a,(08344h)
	cp 03eh
	jp z,l733eh
	cp 05ch
	jr nz,l72aeh
	ld hl,07046h
	call 0723eh
	jr l7299h
l72edh:
	ld hl,0707eh
	call sub_74afh
	ld a,(0814ah)
	call sub_73deh
	jp l727ah
l72fch:
	ld hl,07054h
	call 0723eh
	jr l7362h
sub_7304h:
	push bc
	push de
	push hl
	ld a,02ah
	ld (0e686h),a
	ld (0e682h),a
	ld hl,0e665h
	ld de,0e685h
	ld b,003h
	ld c,003h
l7319h:
	ld a,(hl)
	dec hl
	cp 000h
	jr z,l7323h
	cp 020h
	jr nz,l7329h
l7323h:
	dec b
	jr nz,l7319h
	inc c
	jr l7331h
l7329h:
	ld (de),a
	dec de
	dec b
	jr z,l7331h
	dec c
	jr l7319h
l7331h:
	dec c
	jr z,l733ah
	ld a,030h
	ld (de),a
	dec de
	jr l7331h
l733ah:
	pop hl
	pop de
	pop bc
	ret
l733eh:
	ld a,(08379h)
	or a
	jp nz,l7362h
	call sub_7304h
	ld hl,0e663h
	ld a,(hl)
	cp 031h
	jr nz,l7362h
	inc hl
	ld a,(hl)
	cp 033h
	jr nz,l7362h
	inc hl
	ld a,(hl)
	cp 030h
	jp z,l737fh
	cp 031h
	jp z,l7375h
l7362h:
	xor a
	ld (08379h),a
	call sub_7252h
	call sub_7718h
l736ch:
	ret
l736dh:
	ld sp,03033h
	dec c
l7371h:
	ld sp,l3133h
	dec c
l7375h:
	xor a
	ld (0823bh),a
	ld hl,l7371h
	jp l7387h
l737fh:
	ld a,001h
	ld (0823bh),a
	ld hl,l736dh
l7387h:
	push hl
	ld a,04ch
	call sub_7844h
	call sub_70e4h
	pop hl
	ld b,004h
l7393h:
	ld a,(hl)
	inc hl
	call sub_7844h
l7398h:
	call sub_7816h
	jr nc,l7398h
	djnz l7393h
l739fh:
	call sub_70e4h
	ld a,(08353h)
	cp 046h
	jr nz,l739fh
	ld hl,08320h
	ld de,0a4c7h
	ld bc,l0024h
	ld a,(0823bh)
	or a
	jr nz,l73bbh
	ld de,0a4ebh
l73bbh:
	ldir
	jp l7362h
sub_73c0h:
	push af
	ld a,001h
	ld (08359h),a
	pop af
	push de
	call sub_70e4h
	pop de
	call sub_051dh
	ld a,(0814ah)
	cp 00dh
	jr z,sub_73deh
	cp 030h
	jr c,sub_73c0h
	cp 03ah
	jr nc,sub_73c0h
sub_73deh:
	call sub_7844h
	ld a,(0814ah)
	cp 00dh
	jr z,l73efh
	cp 020h
	jr nc,l73edh
	xor a
l73edh:
	ld (de),a
	inc de
l73efh:
	call sub_7810h
	jr nc,l73efh
	ld a,(08344h)
	cp 060h
	jr z,sub_73c0h
l73fbh:
	push af
	ld a,000h
	ld (08359h),a
	pop af
	ret
	cp 02bh
	jr z,l744dh
	cp 00bh
	jr z,l744dh
	cp 00ah
	jr z,l7414h
	cp 02dh
	jp nz,sub_73c0h
l7414h:
	call sub_74bdh
	jp nz,sub_73c0h
	push hl
	push de
	push bc
	ld hl,0e684h
	ld de,0e665h
	ld b,003h
	ld a,(hl)
	dec hl
	cp 030h
	jp c,l7486h
	cp 03ah
	jp nc,l7486h
	cp 030h
	jr z,l743fh
	dec a
l7436h:
	ld (de),a
	dec de
	dec b
	jr z,l748ch
	ld a,(hl)
	dec hl
	jr l7436h
l743fh:
	ld a,039h
	ld (de),a
	dec de
	dec b
	ld a,(hl)
	dec hl
	cp 030h
	jr z,l743fh
	dec a
	jr l7436h
l744dh:
	call sub_74bdh
	jp nz,sub_73c0h
	push hl
	push de
	push bc
	ld hl,0e684h
	ld de,0e665h
	ld b,003h
	ld a,(hl)
	dec hl
	cp 030h
	jp c,l7486h
	cp 03ah
	jp nc,l7486h
	cp 039h
	jr z,l7478h
	inc a
l746fh:
	ld (de),a
	dec de
	dec b
	jr z,l748ch
	ld a,(hl)
	dec hl
	jr l746fh
l7478h:
	ld a,030h
	ld (de),a
	dec de
	dec b
	ld a,(hl)
	dec hl
	cp 039h
	jr z,l7478h
	inc a
	jr l746fh
l7486h:
	pop bc
	pop de
	pop hl
	jp sub_73c0h
l748ch:
	ld hl,0e663h
	ld b,003h
l7491h:
	push bc
	ld a,(hl)
	inc hl
	call sub_7844h
l7497h:
	call sub_7816h
	jr nc,l7497h
	ld a,(08344h)
	cp 060h
	jr nz,l74a8h
	pop bc
	djnz l7491h
	jr l7486h
l74a8h:
	pop bc
	pop hl
	pop de
	pop bc
	jp l73fbh
sub_74afh:
	call sub_7249h
	ld de,0e663h
	ld a,087h
	ld (de),a
	ld (081b1h),de
	ret
sub_74bdh:
	push bc
	push hl
	push de
	ld b,003h
	ld hl,0e663h
l74c5h:
	ld a,(hl)
	inc hl
	cp 020h
	jr z,l74cfh
	cp 087h
	jr nz,l74d1h
l74cfh:
	djnz l74c5h
l74d1h:
	pop de
	pop hl
	pop bc
	ret
l74d5h:
	ld a,000h
	ld (08379h),a
	ld a,(08378h)
	or a
	jp nz,l752bh
	call sub_7710h
	ld a,04ch
	call sub_7844h
	ld hl,l708ch
	call sub_74afh
l74efh:
	call sub_73c0h
l74f2h:
	cp 05ch
	jr z,l750bh
	cp 065h
	jr z,l751ah
	cp 03eh
	jp z,l7522h
	cp 021h
	jr nz,l74efh
	ld hl,0704dh
	call 0723eh
	jr l7525h
l750bh:
	ld hl,l708ch
	call sub_74afh
	ld a,(0814ah)
	call sub_73deh
	jp l74f2h
l751ah:
	ld hl,07054h
	call 0723eh
	jr l7525h
l7522h:
	call sub_7304h
l7525h:
	call sub_7252h
	call sub_7718h
l752bh:
	ret
l752ch:
	ld a,(0810fh)
	cp 001h
	jp z,l753ch
	ld a,(08117h)
	cp 001h
	jp z,l75b2h
l753ch:
	ld a,(08378h)
	or a
	jp nz,l75b2h
	call sub_7710h
	ld a,044h
	call sub_7844h
	ld hl,0837ah
l754eh:
	call sub_75b3h
	jr nc,l755dh
	rld
	call sub_75b3h
	rld
	inc hl
	jr l754eh
l755dh:
	ld (hl),a
	call sub_75b3h
	sub 037h
	ld (0834ah),a
	ld de,l7628h
	call sub_0c85h
	ld bc,l0001h+2
	ld hl,07043h
	ld de,0834bh
	ldir
	ld de,0e11ah
	ld hl,0837ah
l757dh:
	call sub_75c9h
	call sub_75d5h
	call sub_75cfh
	call sub_75d5h
	call sub_75f0h
	ld a,028h
	cp (hl)
	jr nz,l757dh
	ld hl,0705bh
	call sub_7249h
l7597h:
	call sub_70e4h
	call sub_051dh
	ld a,(0814ah)
	cp 08ch
	jr nz,l7597h
	ld a,029h
	call sub_7844h
	call sub_0c78h
	call sub_7252h
	call sub_7718h
l75b2h:
	ret
sub_75b3h:
	call sub_7816h
	jr nc,sub_75b3h
	ld a,(08344h)
	cp 028h
	jr z,l75c7h
	cp 041h
	jr c,l75c5h
	sub 007h
l75c5h:
	scf
	ret
l75c7h:
	or a
	ret
sub_75c9h:
	ld a,002h
	ld (0834eh),a
	ret
sub_75cfh:
	ld a,080h
	ld (0834eh),a
	ret
sub_75d5h:
	ld a,(0834eh)
	and (hl)
	jr z,l75dfh
	ld a,031h
	jr l75e1h
l75dfh:
	ld a,030h
l75e1h:
	ld (de),a
	dec de
	dec de
	ld a,(0834eh)
	srl a
	ld (0834eh),a
	jr nc,sub_75d5h
	inc hl
	ret
sub_75f0h:
	push hl
	call sub_760eh
	ld hl,0834ah
	ld b,(hl)
	ld hl,l0000h
	ex de,hl
l75fch:
	push hl
	inc hl
	inc hl
	inc hl
	inc hl
	ld (hl),07ch
	pop hl
	add hl,de
	djnz l75fch
	ld de,l0037h
	add hl,de
	ex de,hl
	pop hl
	ret
sub_760eh:
	ld hl,0834ch
	inc (hl)
	ld a,039h
	cp (hl)
	jr nc,l761fh
	ld (hl),030h
	dec hl
	inc (hl)
	ld a,(hl)
	or 030h
	ld (hl),a
l761fh:
	ld bc,l0001h+2
	ld hl,0834dh
	lddr
	ret
l7628h:
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	jr nz,l764dh
	jr nz,l764fh
	jr nz,l7651h
	jr nz,l7653h
	jr nz,l7655h
	jr nz,l7657h
	jr nz,l7659h
	jr nz,l765bh
	jr nz,l765dh
	jr nz,l765fh
	jr nz,$+34
	jr nc,l7670h
	ld b,l
	ld c,l
	ld d,b
	ld d,h
	ld e,c
	ld a,(bc)
	jr nz,$+34
	jr nz,$+34
l764dh:
	jr nz,$+34
l764fh:
	jr nz,$+34
l7651h:
	jr nz,l7673h
l7653h:
	jr nz,l7675h
l7655h:
	jr nz,l7677h
l7657h:
	jr nz,l7679h
l7659h:
	jr nz,l767bh
l765bh:
	jr nz,l767dh
l765dh:
	jr nz,l767fh
l765fh:
	ld sp,0532dh
	ld b,l
	ld d,h
	ld a,(bc)
	ld a,(bc)
	jr nz,l7688h
	jr nz,l768ah
	jr nz,l768ch
	jr nz,$+126
	jr nc,l7690h
l7670h:
	ld sp,03220h
l7673h:
	jr nz,l76a8h
l7675h:
	jr nz,l76abh
l7677h:
	jr nz,l76aeh
l7679h:
	jr nz,l76b1h
l767bh:
	jr nz,l76b4h
l767dh:
	jr nz,l76b7h
l767fh:
	jr nz,$+59
	ld a,(bc)
	jr nz,$+34
	jr nz,$+34
	ld a,(hl)
	ld a,(hl)
l7688h:
	ld a,(hl)
	ld a,h
l768ah:
	ld a,(hl)
	ld a,(hl)
l768ch:
	ld a,(hl)
	ld a,(hl)
	ld a,(hl)
	ld a,(hl)
l7690h:
	ld a,(hl)
	ld a,(hl)
	ld a,(hl)
	ld a,(hl)
	ld a,(hl)
	ld a,(hl)
	ld a,(hl)
	ld a,(hl)
	ld a,(hl)
	ld a,(hl)
	ld a,(hl)
	ld a,(hl)
	ld a,(hl)
	dec c
l769eh:
	ld a,(08378h)
	or a
	jp nz,l76c6h
	ld a,(0835ah)
l76a8h:
	or a
	jr nz,l76beh
l76abh:
	call sub_7710h
l76aeh:
	ld hl,l7093h
l76b1h:
	call sub_7249h
l76b4h:
	call sub_70e4h
l76b7h:
	ld a,001h
	ld (0835ah),a
	jr l76c6h
l76beh:
	ld a,000h
	ld (0835ah),a
	call sub_7252h
l76c6h:
	ret
l76c7h:
	push af
	ld hl,l7093h
	call sub_7249h
	call sub_7710h
	call sub_70e4h
	ld a,046h
	call sub_7844h
	pop af
	call sub_7844h
	call sub_782fh
	jp l20c7h
sub_76e3h:
	call sub_70e4h
	ld a,041h
	call sub_7844h
l76ebh:
	call sub_7816h
	ld a,(08344h)
	cp 023h
	jr z,l7704h
	cp 03eh
	jr nz,l76ebh
	call sub_7252h
	call sub_7718h
	xor a
	ld (08356h),a
	ret
l7704h:
	ld hl,l7062h
	call sub_7249h
	ld a,001h
	ld (08356h),a
	ret
sub_7710h:
	ld a,(08356h)
	or a
	call nz,sub_76e3h
	ret
sub_7718h:
	ld a,(0835ah)
	or a
	jr z,l7724h
	ld hl,l7093h
	call sub_7249h
l7724h:
	ret
sub_7725h:
	ld a,(0822eh)
	or a
	ret z
	ld a,(08356h)
	or a
	ret nz
	call sub_70e4h
	ld a,04dh
	call sub_7844h
	ld b,006h
	ld hl,08166h
	call sub_7753h
	ld b,002h
	ld hl,08164h
	call sub_7753h
l7747h:
	call sub_7816h
	cp 03eh
	jr nz,l7747h
	xor a
	ld (0825fh),a
	ret
sub_7753h:
	ld a,(hl)
	call sub_7844h
	inc hl
	djnz sub_7753h
	ret
sub_775bh:
	push af
	ld hl,08353h
l775fh:
	ld (hl),a
	inc hl
	call sub_7816h
	ld a,(08344h)
	cp 03eh
	jr nz,l775fh
	ld a,(08353h)
	cp 049h
	jr nz,l77a5h
	ld a,(08355h)
	cp 031h
	jr z,l7794h
	cp 033h
	jr z,l778dh
	call sub_7252h
	ld a,000h
	ld (08378h),a
	call sub_797ch
l7788h:
	call sub_713ch
l778bh:
	pop af
	ret
l778dh:
	ld a,001h
	ld (08358h),a
	jr l778bh
l7794h:
	ld hl,07069h
	call sub_7249h
	ld a,001h
	ld (08378h),a
	xor a
	ld (0822eh),a
	jr l778bh
l77a5h:
	cp 046h
	jp z,l77bfh
	cp 045h
	jr nz,l7788h
	ld a,(08354h)
	cp 034h
	jr nz,l77d1h
	ld a,(08355h)
	cp 030h
	call z,sub_7252h
	jr l7788h
l77bfh:
	ld a,(08232h)
	or a
	jp z,l7788h
	ld a,000h
	ld (08232h),a
	call sub_413bh
	jp l7788h
l77d1h:
	cp 033h
	jp nz,l7788h
	ld a,(08355h)
	cp 030h
	jp nz,l7788h
	call sub_4121h
	ld hl,l7230h
	call sub_4155h
	ld a,001h
	ld (08232h),a
	jp l7788h
sub_77efh:
	ld a,050h
	call sub_7844h
	ld b,004h
	ld hl,0834fh
l77f9h:
	call sub_7803h
	call sub_7803h
	inc hl
	djnz l77f9h
	ret
sub_7803h:
	call sub_7816h
	ld a,(08344h)
	cp 0ffh
	jr z,sub_7803h
	rld
	ret
sub_7810h:
	push bc
	ld bc,l0064h
	jr l781ah
sub_7816h:
	push bc
	ld bc,007d0h
l781ah:
	call sub_7826h
	jr c,l7824h
	dec bc
	ld a,b
	or c
	jr nz,l781ah
l7824h:
	pop bc
	ret
sub_7826h:
	ld a,0f4h
l7828h:
	dec a
	jr nz,l7828h
	call sub_782fh
	ret
sub_782fh:
	ld a,0ffh
	ld (08344h),a
	in a,(053h)
	rra
	jr nc,l7843h
	in a,(051h)
	out (051h),a
	and 07fh
	ld (08344h),a
	scf
l7843h:
	ret
sub_7844h:
	push bc
	ld b,0ffh
	ld c,a
l7848h:
	in a,(053h)
	and 004h
	jr z,l7848h
	ld a,c
	out (051h),a
l7851h:
	in a,(053h)
	rra
	jr nc,l7863h
	in a,(051h)
	cp c
	jr nz,l785eh
	or a
l785ch:
	pop bc
	ret
l785eh:
	ld a,001h
	ld (0a7f9h),a
l7863h:
	push bc
	ld b,001h
	call sub_796fh
	pop bc
	djnz l7851h
	ld a,001h
	ld (0a7fch),a
	jr l785ch
sub_7873h:
	ld a,(0822eh)
	or a
	ret z
	in a,(089h)
	rra
	jr c,l789dh
	ld a,(08260h)
	or a
	jr nz,l789ch
	inc a
	ld (08260h),a
	ld a,04ch
	call sub_7844h
	ld a,032h
	call sub_7844h
	call sub_7816h
	ld a,00dh
	call sub_7844h
	call sub_7816h
l789ch:
	ret
l789dh:
	xor a
	ld (08260h),a
	jr l789ch
sub_78a3h:
	ld de,l79eah
	call sub_0c92h
l78a9h:
	ld de,0e2e2h
	ld (0e670h),de
l78b0h:
	call sub_70e4h
	call c,sub_78d6h
	call sub_051dh
	ld a,(0814ah)
	cp 0ffh
	jr z,l78b0h
	cp 080h
	jp nc,l794ah
	cp 00dh
	jp z,l7918h
	cp 01ch
	jp z,l7939h
	ld (de),a
	inc de
l78d1h:
	ld a,087h
l78d3h:
	ld (de),a
	jr l78b0h
sub_78d6h:
	push de
	ld hl,(0e670h)
	ld de,l0040h
	add hl,de
	ex de,hl
	ld hl,0834fh
	ld b,004h
	call sub_7901h
	inc de
	ld b,003h
	ld hl,08353h
l78edh:
	ld a,(hl)
	or a
	jr nz,l78f3h
	or 030h
l78f3h:
	ld (de),a
	inc de
	inc hl
	djnz l78edh
	inc de
	ld a,(0822eh)
	or 030h
	ld (de),a
	pop de
	ret
sub_7901h:
	call sub_790bh
	call sub_790bh
	inc hl
	djnz sub_7901h
	ret
sub_790bh:
	ld a,030h
	rld
	cp 03ah
	jr c,l7915h
	add a,007h
l7915h:
	ld (de),a
	inc de
	ret
l7918h:
	ld (de),a
	ld de,(0e670h)
	push de
	pop ix
l7920h:
	ld a,(de)
	cp 00dh
	push af
	call sub_7844h
	ld (ix+020h),a
	pop af
	push af
	call z,sub_78d6h
	inc de
	inc ix
	pop af
	jr nz,l7920h
	dec de
	jp l78d1h
l7939h:
	ld hl,(0e670h)
	push hl
	pop de
	ld b,040h
l7940h:
	ld (hl),000h
	inc hl
	djnz l7940h
	ld a,03fh
	jp l78d3h
l794ah:
	ex de,hl
	ld (hl),087h
	cp 082h
	jr z,l795bh
	cp 083h
	jr z,l7964h
	call sub_70abh
	jp l78a9h
l795bh:
	call sub_77efh
	call sub_78d6h
	jp l78a9h
l7964h:
	ld a,001h
	ld (0822eh),a
	call sub_78d6h
	jp l78a9h
sub_796fh:
	push de
l7970h:
	ld de,l0600h
l7973h:
	dec de
	ld a,d
	or e
	jr nz,l7973h
	djnz l7970h
	pop de
	ret
sub_797ch:
	ld a,06ch
	call sub_7844h
	ld b,033h
	ld hl,0a47bh
	call sub_79b2h
	ld a,073h
	call sub_7844h
	ld b,024h
	ld hl,0a4c7h
	call sub_79ddh
	ld a,074h
	call sub_7844h
	ld b,024h
	ld hl,0a4ebh
	call sub_79ddh
	ret
sub_79a4h:
	ld a,06ch
	call sub_7844h
	ld b,033h
	ld hl,0a47bh
	call sub_79b2h
	ret
sub_79b2h:
	push bc
	push hl
l79b4h:
	ld a,02fh
	cp (hl)
	jp p,l79d2h
	ld a,039h
	cp (hl)
	jp m,l79d2h
	inc hl
	djnz l79b4h
	pop hl
	pop bc
l79c5h:
	ld a,(hl)
	call sub_7844h
	inc hl
	djnz l79c5h
l79cch:
	call sub_7816h
	jr nc,l79cch
	ret
l79d2h:
	pop hl
	pop bc
l79d4h:
	ld a,030h
	call sub_7844h
	djnz l79d4h
	jr l79cch
sub_79ddh:
	ld a,(hl)
	call sub_7844h
	inc hl
	djnz sub_79ddh
l79e4h:
	call sub_7816h
	jr nc,l79e4h
	ret
l79eah:
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	ld a,(bc)
	jr nz,l7a10h
	ld c,l
	ld c,a
	ld d,h
	ld c,a
	ld d,d
	ld d,e
	ld d,h
	ld b,c
	ld b,a
	ld b,l
	jr nz,$+47
	jr nz,l7a52h
	jr nz,l7a45h
	jr nz,$+85
	jr nz,l7a58h
	ld a,(bc)
	jr nz,l7a27h
	ld a,(bc)
	jr nz,l7a2ah
	ld b,c
	ld c,h
	ld c,h
	ld c,a
	ld d,a
	ld b,l
l7a10h:
	ld b,h
	jr nz,l7a58h
	ld c,(hl)
	ld d,h
	ld d,d
	ld e,c
	ld a,(00a0ah)
	jr nz,l7a3ch
	ld b,(hl)
	inc sp
	ld a,(l4528h)
	ld l,(hl)
	ld h,h
	ld (hl),b
	ld l,a
	ld (hl),e
	add hl,hl
l7a27h:
	inc l
	jr nz,l7a70h
l7a2ah:
	inc (hl)
	ld a,(04628h)
	ld c,h
	ld b,a
	ld c,b
	ld d,e
	ld d,h
	dec a
	ld sp,l0a29h
	jr nz,l7a59h
	ld b,(hl)
	dec (hl)
	dec l
l7a3ch:
	ld b,(hl)
	add hl,sp
	ld a,(07320h)
	ld h,l
	ld h,l
	jr nz,l7ab0h
l7a45h:
	ld h,l
	ld a,c
	ld h,d
	ld l,a
	ld h,c
	ld (hl),d
	ld h,h
	ld a,(bc)
	ld a,(bc)
	jr nz,l7a70h
	ld e,b
	ld e,e
l7a52h:
	ld (hl),02eh
	ld (l2c5dh),a
	ld e,c
l7a58h:
	ld e,e
l7a59h:
	ld (hl),02eh
	ld (l2c5dh),a
	ld e,d
	ld e,e
	dec (hl)
	ld e,l
	inc l
	ld a,d
	ld e,e
	dec (hl)
	ld e,l
	ld a,(bc)
	jr nz,$+34
	ld d,d
	ld e,e
	inc sp
	ld l,031h
	ld e,l
l7a70h:
	inc l
	ld d,h
	ld e,e
	jr z,l7aa0h
	cpl
	dec l
	add hl,hl
	ld (l2c5dh),a
	ld b,d
	ld e,e
	inc sp
	jr nc,l7addh
	ld a,(bc)
	jr nz,l7aa3h
	ld c,l
	jr z,l7af3h
	ld h,c
	ld h,a
	ld e,e
	ld (hl),05dh
	inc l
	ld (hl),a
	ld h,h
	ld e,e
	ld (l295dh),a
	ld a,(bc)
	ld a,(bc)
	jr nz,l7ab6h
	ld b,a
	jr z,l7b0bh
	ld h,l
	ld l,l
	ld l,a
	ld (hl),h
	ld h,l
	jr nz,$+113
l7aa0h:
	ld l,(hl)
	add hl,hl
	inc l
l7aa3h:
	ld c,b
	jr z,l7b18h
	ld h,l
	ld l,l
	ld l,a
	ld (hl),h
	ld h,l
	jr nz,l7b1ch
	ld h,(hl)
	ld h,(hl)
	add hl,hl
l7ab0h:
	ld a,(bc)
	jr nz,l7ad3h
	ld h,h
	jr z,$+93
l7ab6h:
	ld (hl),e
	ld (hl),h
	ld h,c
	ld h,a
	ld h,l
	ld e,l
	inc l
	ld e,e
	ld (hl),e
	ld (hl),h
	ld h,c
	ld h,a
	ld h,l
	jr nz,l7b28h
	ld l,b
	ld h,c
	ld (hl),d
	ld h,c
	ld h,e
	ld (hl),h
	ld h,l
	ld (hl),d
	ld e,l
	add hl,hl
	ld a,(bc)
	ld a,(bc)
	jr nz,l7af3h
l7ad3h:
	ld (hl),a
	ld l,c
	ld (hl),h
	ld l,b
	ld a,(l200ah)
	jr nz,l7b22h
	ld d,l
l7addh:
	ld c,(hl)
	ld c,e
	ld d,h
	ld c,c
	ld c,a
	ld c,(hl)
	ld e,e
	ld h,e
	ld l,b
	ld h,c
	ld (hl),d
	ld h,c
	ld h,e
	ld (hl),h
	ld h,l
	ld (hl),d
	ld e,l
	ld a,(bc)
	jr nz,$+34
	ld b,(hl)
	ld d,l
l7af3h:
	ld c,(hl)
	ld c,e
	ld d,h
	ld c,c
	ld c,a
	ld c,(hl)
	jr z,l7b5fh
	ld l,c
	ld (hl),e
	ld h,e
	ld (hl),d
	ld l,c
	ld (hl),b
	ld (hl),h
	ld l,c
	ld l,a
	ld l,(hl)
	add hl,hl
	ld a,(bc)
	ld a,(bc)
	jr nz,l7b2ah
	ld b,e
l7b0bh:
	ld d,h
	ld d,d
	ld c,h
	jr nz,l7b6ch
	jr nz,l7b78h
	ld l,a
	ld (hl),d
	jr nz,l7b84h
	ld h,l
	ld (hl),a
l7b18h:
	jr nz,l7b7fh
	ld l,(hl)
	ld (hl),h
l7b1ch:
	ld (hl),d
	ld a,c
	dec c
	rst 38h
	rst 38h
	rst 38h
l7b22h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7b28h:
	rst 38h
	rst 38h
l7b2ah:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7b5fh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7b6ch:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7b78h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7b7fh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7b84h:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7f7fh:
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
	rst 38h
l7fffh:
	rst 38h
