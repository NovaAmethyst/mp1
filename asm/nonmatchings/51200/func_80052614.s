	.set noat
	.set noreorder

glabel func_80052614
/* 53214 80052614 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 53218 80052618 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5321C 8005261C AFB20018 */  sw         $s2, 0x18($sp)
/* 53220 80052620 AFB10014 */  sw         $s1, 0x14($sp)
/* 53224 80052624 AFB00010 */  sw         $s0, 0x10($sp)
/* 53228 80052628 00808021 */  addu       $s0, $a0, $zero
/* 5322C 8005262C 24040008 */  addiu      $a0, $zero, 8
/* 53230 80052630 240500BC */  addiu      $a1, $zero, 0xbc
/* 53234 80052634 0C011761 */  jal        func_80045D84
/* 53238 80052638 00003021 */   addu      $a2, $zero, $zero
/* 5323C 8005263C 00408821 */  addu       $s1, $v0, $zero
/* 53240 80052640 3C02800F */  lui        $v0, %hi(D_800F5460)
/* 53244 80052644 24425460 */  addiu      $v0, $v0, %lo(D_800F5460)
/* 53248 80052648 00108040 */  sll        $s0, $s0, 1
/* 5324C 8005264C 02028021 */  addu       $s0, $s0, $v0
/* 53250 80052650 24120001 */  addiu      $s2, $zero, 1
.L80052654:
/* 53254 80052654 0C018D6D */  jal        func_800635B4
/* 53258 80052658 00000000 */   nop
/* 5325C 8005265C 24040003 */  addiu      $a0, $zero, 3
/* 53260 80052660 0C00FCE1 */  jal        func_8003F384
/* 53264 80052664 24050003 */   addiu     $a1, $zero, 3
/* 53268 80052668 24040003 */  addiu      $a0, $zero, 3
/* 5326C 8005266C 0C00FB9A */  jal        func_8003EE68
/* 53270 80052670 24050005 */   addiu     $a1, $zero, 5
/* 53274 80052674 24040003 */  addiu      $a0, $zero, 3
/* 53278 80052678 0C00FC02 */  jal        func_8003F008
/* 5327C 8005267C 2405000B */   addiu     $a1, $zero, 0xb
/* 53280 80052680 24040003 */  addiu      $a0, $zero, 3
/* 53284 80052684 0C00FC1F */  jal        func_8003F07C
/* 53288 80052688 2405000D */   addiu     $a1, $zero, 0xd
/* 5328C 8005268C 24040003 */  addiu      $a0, $zero, 3
/* 53290 80052690 0C00FBE6 */  jal        func_8003EF98
/* 53294 80052694 24050012 */   addiu     $a1, $zero, 0x12
/* 53298 80052698 2404000D */  addiu      $a0, $zero, 0xd
/* 5329C 8005269C 0C00FC70 */  jal        func_8003F1C0
/* 532A0 800526A0 2405000B */   addiu     $a1, $zero, 0xb
/* 532A4 800526A4 96020000 */  lhu        $v0, ($s0)
/* 532A8 800526A8 30424000 */  andi       $v0, $v0, 0x4000
/* 532AC 800526AC 1040FFE9 */  beqz       $v0, .L80052654
/* 532B0 800526B0 00000000 */   nop
/* 532B4 800526B4 0C01179B */  jal        func_80045E6C
/* 532B8 800526B8 02202021 */   addu      $a0, $s1, $zero
/* 532BC 800526BC 02401021 */  addu       $v0, $s2, $zero
/* 532C0 800526C0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 532C4 800526C4 8FB20018 */  lw         $s2, 0x18($sp)
/* 532C8 800526C8 8FB10014 */  lw         $s1, 0x14($sp)
/* 532CC 800526CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 532D0 800526D0 03E00008 */  jr         $ra
/* 532D4 800526D4 27BD0020 */   addiu     $sp, $sp, 0x20