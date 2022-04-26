	.set noat
	.set noreorder

glabel func_80051954
/* 52554 80051954 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 52558 80051958 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5255C 8005195C AFB20020 */  sw         $s2, 0x20($sp)
/* 52560 80051960 AFB1001C */  sw         $s1, 0x1c($sp)
/* 52564 80051964 AFB00018 */  sw         $s0, 0x18($sp)
/* 52568 80051968 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 5256C 8005196C F7B40028 */  sdc1       $f20, 0x28($sp)
/* 52570 80051970 0C018CEA */  jal        func_800633A8
/* 52574 80051974 241200C0 */   addiu     $s2, $zero, 0xc0
/* 52578 80051978 8C51008C */  lw         $s1, 0x8c($v0)
/* 5257C 8005197C 4480A000 */  mtc1       $zero, $f20
/* 52580 80051980 3C0143B4 */  lui        $at, 0x43b4
/* 52584 80051984 4481B000 */  mtc1       $at, $f22
.L80051988:
/* 52588 80051988 0C018D6D */  jal        func_800635B4
/* 5258C 8005198C 00000000 */   nop
/* 52590 80051990 3C02800E */  lui        $v0, %hi(D_800D8378)
/* 52594 80051994 84428378 */  lh         $v0, %lo(D_800D8378)($v0)
/* 52598 80051998 10400037 */  beqz       $v0, .L80051A78
/* 5259C 8005199C 240200FF */   addiu     $v0, $zero, 0xff
/* 525A0 800519A0 0C02BAB0 */  jal        func_800AEAC0
/* 525A4 800519A4 4600A306 */   mov.s     $f12, $f20
/* 525A8 800519A8 3C01437F */  lui        $at, 0x437f
/* 525AC 800519AC 44811000 */  mtc1       $at, $f2
/* 525B0 800519B0 00000000 */  nop
/* 525B4 800519B4 46020002 */  mul.s      $f0, $f0, $f2
/* 525B8 800519B8 4600008D */  trunc.w.s  $f2, $f0
/* 525BC 800519BC 44021000 */  mfc1       $v0, $f2
/* 525C0 800519C0 00000000 */  nop
/* 525C4 800519C4 00021400 */  sll        $v0, $v0, 0x10
/* 525C8 800519C8 00021403 */  sra        $v0, $v0, 0x10
/* 525CC 800519CC 04420001 */  bltzl      $v0, .L800519D4
/* 525D0 800519D0 00021023 */   negu      $v0, $v0
.L800519D4:
/* 525D4 800519D4 3C0140C0 */  lui        $at, 0x40c0
/* 525D8 800519D8 44810000 */  mtc1       $at, $f0
/* 525DC 800519DC 00000000 */  nop
/* 525E0 800519E0 4600A500 */  add.s      $f20, $f20, $f0
/* 525E4 800519E4 4614B03C */  c.lt.s     $f22, $f20
/* 525E8 800519E8 00000000 */  nop
/* 525EC 800519EC 00000000 */  nop
/* 525F0 800519F0 45030001 */  bc1tl      .L800519F8
/* 525F4 800519F4 4616A501 */   sub.s     $f20, $f20, $f22
.L800519F8:
/* 525F8 800519F8 8624000A */  lh         $a0, 0xa($s1)
/* 525FC 800519FC 305000FF */  andi       $s0, $v0, 0xff
/* 52600 80051A00 AFA00010 */  sw         $zero, 0x10($sp)
/* 52604 80051A04 AFB20014 */  sw         $s2, 0x14($sp)
/* 52608 80051A08 00002821 */  addu       $a1, $zero, $zero
/* 5260C 80051A0C 240600FF */  addiu      $a2, $zero, 0xff
/* 52610 80051A10 0C019D56 */  jal        func_80067558
/* 52614 80051A14 02003821 */   addu      $a3, $s0, $zero
/* 52618 80051A18 8624000A */  lh         $a0, 0xa($s1)
/* 5261C 80051A1C AFA00010 */  sw         $zero, 0x10($sp)
/* 52620 80051A20 AFB20014 */  sw         $s2, 0x14($sp)
/* 52624 80051A24 24050001 */  addiu      $a1, $zero, 1
/* 52628 80051A28 240600FF */  addiu      $a2, $zero, 0xff
/* 5262C 80051A2C 0C019D56 */  jal        func_80067558
/* 52630 80051A30 02003821 */   addu      $a3, $s0, $zero
/* 52634 80051A34 8624000A */  lh         $a0, 0xa($s1)
/* 52638 80051A38 AFA00010 */  sw         $zero, 0x10($sp)
/* 5263C 80051A3C AFB20014 */  sw         $s2, 0x14($sp)
/* 52640 80051A40 24050002 */  addiu      $a1, $zero, 2
/* 52644 80051A44 240600FF */  addiu      $a2, $zero, 0xff
/* 52648 80051A48 0C019D56 */  jal        func_80067558
/* 5264C 80051A4C 02003821 */   addu      $a3, $s0, $zero
/* 52650 80051A50 8624000A */  lh         $a0, 0xa($s1)
/* 52654 80051A54 24050001 */  addiu      $a1, $zero, 1
/* 52658 80051A58 0C019D20 */  jal        func_80067480
/* 5265C 80051A5C 34068000 */   ori       $a2, $zero, 0x8000
/* 52660 80051A60 8624000A */  lh         $a0, 0xa($s1)
/* 52664 80051A64 24050002 */  addiu      $a1, $zero, 2
/* 52668 80051A68 0C019D20 */  jal        func_80067480
/* 5266C 80051A6C 34068000 */   ori       $a2, $zero, 0x8000
/* 52670 80051A70 08014662 */  j          .L80051988
/* 52674 80051A74 00000000 */   nop
.L80051A78:
/* 52678 80051A78 4480A000 */  mtc1       $zero, $f20
/* 5267C 80051A7C 8624000A */  lh         $a0, 0xa($s1)
/* 52680 80051A80 AFA20010 */  sw         $v0, 0x10($sp)
/* 52684 80051A84 AFB20014 */  sw         $s2, 0x14($sp)
/* 52688 80051A88 00002821 */  addu       $a1, $zero, $zero
/* 5268C 80051A8C 00003021 */  addu       $a2, $zero, $zero
/* 52690 80051A90 0C019D56 */  jal        func_80067558
/* 52694 80051A94 00003821 */   addu      $a3, $zero, $zero
/* 52698 80051A98 8624000A */  lh         $a0, 0xa($s1)
/* 5269C 80051A9C 24050001 */  addiu      $a1, $zero, 1
/* 526A0 80051AA0 0C019D2F */  jal        func_800674BC
/* 526A4 80051AA4 34068000 */   ori       $a2, $zero, 0x8000
/* 526A8 80051AA8 8624000A */  lh         $a0, 0xa($s1)
/* 526AC 80051AAC 24050002 */  addiu      $a1, $zero, 2
/* 526B0 80051AB0 0C019D2F */  jal        func_800674BC
/* 526B4 80051AB4 34068000 */   ori       $a2, $zero, 0x8000
/* 526B8 80051AB8 08014662 */  j          .L80051988
/* 526BC 80051ABC 00000000 */   nop
/* 526C0 80051AC0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 526C4 80051AC4 8FB20020 */  lw         $s2, 0x20($sp)
/* 526C8 80051AC8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 526CC 80051ACC 8FB00018 */  lw         $s0, 0x18($sp)
/* 526D0 80051AD0 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 526D4 80051AD4 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 526D8 80051AD8 03E00008 */  jr         $ra
/* 526DC 80051ADC 27BD0038 */   addiu     $sp, $sp, 0x38