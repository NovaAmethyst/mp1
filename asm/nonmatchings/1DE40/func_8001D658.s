	.set noat
	.set noreorder

glabel func_8001D658
/* 1E258 8001D658 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1E25C 8001D65C AFBF001C */  sw         $ra, 0x1c($sp)
/* 1E260 8001D660 AFB20018 */  sw         $s2, 0x18($sp)
/* 1E264 8001D664 AFB10014 */  sw         $s1, 0x14($sp)
/* 1E268 8001D668 AFB00010 */  sw         $s0, 0x10($sp)
/* 1E26C 8001D66C 00A09021 */  addu       $s2, $a1, $zero
/* 1E270 8001D670 00042400 */  sll        $a0, $a0, 0x10
/* 1E274 8001D674 00042403 */  sra        $a0, $a0, 0x10
/* 1E278 8001D678 00041880 */  sll        $v1, $a0, 2
/* 1E27C 8001D67C 00641821 */  addu       $v1, $v1, $a0
/* 1E280 8001D680 00031940 */  sll        $v1, $v1, 5
/* 1E284 8001D684 00641823 */  subu       $v1, $v1, $a0
/* 1E288 8001D688 000318C0 */  sll        $v1, $v1, 3
/* 1E28C 8001D68C 3C02800C */  lui        $v0, %hi(D_800C3110)
/* 1E290 8001D690 8C423110 */  lw         $v0, %lo(D_800C3110)($v0)
/* 1E294 8001D694 00621821 */  addu       $v1, $v1, $v0
/* 1E298 8001D698 3C04800F */  lui        $a0, %hi(D_800F3FA8)
/* 1E29C 8001D69C 84843FA8 */  lh         $a0, %lo(D_800F3FA8)($a0)
/* 1E2A0 8001D6A0 000489C0 */  sll        $s1, $a0, 7
/* 1E2A4 8001D6A4 263100F8 */  addiu      $s1, $s1, 0xf8
/* 1E2A8 8001D6A8 00718821 */  addu       $s1, $v1, $s1
/* 1E2AC 8001D6AC 00042100 */  sll        $a0, $a0, 4
/* 1E2B0 8001D6B0 00642021 */  addu       $a0, $v1, $a0
/* 1E2B4 8001D6B4 C4600024 */  lwc1       $f0, 0x24($v1)
/* 1E2B8 8001D6B8 4600008D */  trunc.w.s  $f2, $f0
/* 1E2BC 8001D6BC 44021000 */  mfc1       $v0, $f2
/* 1E2C0 8001D6C0 00000000 */  nop
/* 1E2C4 8001D6C4 A4820058 */  sh         $v0, 0x58($a0)
/* 1E2C8 8001D6C8 C4600028 */  lwc1       $f0, 0x28($v1)
/* 1E2CC 8001D6CC 4600008D */  trunc.w.s  $f2, $f0
/* 1E2D0 8001D6D0 44021000 */  mfc1       $v0, $f2
/* 1E2D4 8001D6D4 00000000 */  nop
/* 1E2D8 8001D6D8 A482005A */  sh         $v0, 0x5a($a0)
/* 1E2DC 8001D6DC C460002C */  lwc1       $f0, 0x2c($v1)
/* 1E2E0 8001D6E0 4600008D */  trunc.w.s  $f2, $f0
/* 1E2E4 8001D6E4 44021000 */  mfc1       $v0, $f2
/* 1E2E8 8001D6E8 00000000 */  nop
/* 1E2EC 8001D6EC A482005C */  sh         $v0, 0x5c($a0)
/* 1E2F0 8001D6F0 C4600030 */  lwc1       $f0, 0x30($v1)
/* 1E2F4 8001D6F4 4600008D */  trunc.w.s  $f2, $f0
/* 1E2F8 8001D6F8 44021000 */  mfc1       $v0, $f2
/* 1E2FC 8001D6FC 00000000 */  nop
/* 1E300 8001D700 A4820060 */  sh         $v0, 0x60($a0)
/* 1E304 8001D704 C4600034 */  lwc1       $f0, 0x34($v1)
/* 1E308 8001D708 4600008D */  trunc.w.s  $f2, $f0
/* 1E30C 8001D70C 44021000 */  mfc1       $v0, $f2
/* 1E310 8001D710 00000000 */  nop
/* 1E314 8001D714 A4820062 */  sh         $v0, 0x62($a0)
/* 1E318 8001D718 C4600038 */  lwc1       $f0, 0x38($v1)
/* 1E31C 8001D71C 4600008D */  trunc.w.s  $f2, $f0
/* 1E320 8001D720 44021000 */  mfc1       $v0, $f2
/* 1E324 8001D724 00000000 */  nop
/* 1E328 8001D728 A4820064 */  sh         $v0, 0x64($a0)
/* 1E32C 8001D72C 8E440000 */  lw         $a0, ($s2)
/* 1E330 8001D730 24820008 */  addiu      $v0, $a0, 8
/* 1E334 8001D734 AE420000 */  sw         $v0, ($s2)
/* 1E338 8001D738 3C02DC08 */  lui        $v0, 0xdc08
/* 1E33C 8001D73C 34420008 */  ori        $v0, $v0, 8
/* 1E340 8001D740 AC820000 */  sw         $v0, ($a0)
/* 1E344 8001D744 3C02800F */  lui        $v0, %hi(D_800F3FA8)
/* 1E348 8001D748 84423FA8 */  lh         $v0, %lo(D_800F3FA8)($v0)
/* 1E34C 8001D74C 00021100 */  sll        $v0, $v0, 4
/* 1E350 8001D750 24420058 */  addiu      $v0, $v0, 0x58
/* 1E354 8001D754 00621021 */  addu       $v0, $v1, $v0
/* 1E358 8001D758 AC820004 */  sw         $v0, 4($a0)
/* 1E35C 8001D75C 8E440000 */  lw         $a0, ($s2)
/* 1E360 8001D760 24820008 */  addiu      $v0, $a0, 8
/* 1E364 8001D764 AE420000 */  sw         $v0, ($s2)
/* 1E368 8001D768 3C02DB0E */  lui        $v0, 0xdb0e
/* 1E36C 8001D76C AC820000 */  sw         $v0, ($a0)
/* 1E370 8001D770 9462004C */  lhu        $v0, 0x4c($v1)
/* 1E374 8001D774 AC820004 */  sw         $v0, 4($a0)
/* 1E378 8001D778 8E500000 */  lw         $s0, ($s2)
/* 1E37C 8001D77C 26020008 */  addiu      $v0, $s0, 8
/* 1E380 8001D780 AE420000 */  sw         $v0, ($s2)
/* 1E384 8001D784 3C02DA38 */  lui        $v0, 0xda38
/* 1E388 8001D788 34420007 */  ori        $v0, $v0, 7
/* 1E38C 8001D78C AE020000 */  sw         $v0, ($s0)
/* 1E390 8001D790 0C02248C */  jal        func_80089230
/* 1E394 8001D794 02202021 */   addu      $a0, $s1, $zero
/* 1E398 8001D798 AE020004 */  sw         $v0, 4($s0)
/* 1E39C 8001D79C 8E430000 */  lw         $v1, ($s2)
/* 1E3A0 8001D7A0 24620008 */  addiu      $v0, $v1, 8
/* 1E3A4 8001D7A4 AE420000 */  sw         $v0, ($s2)
/* 1E3A8 8001D7A8 3C02DA38 */  lui        $v0, 0xda38
/* 1E3AC 8001D7AC 34420003 */  ori        $v0, $v0, 3
/* 1E3B0 8001D7B0 AC620000 */  sw         $v0, ($v1)
/* 1E3B4 8001D7B4 3C028000 */  lui        $v0, 0x8000
/* 1E3B8 8001D7B8 34420040 */  ori        $v0, $v0, 0x40
/* 1E3BC 8001D7BC 02228821 */  addu       $s1, $s1, $v0
/* 1E3C0 8001D7C0 AC710004 */  sw         $s1, 4($v1)
/* 1E3C4 8001D7C4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1E3C8 8001D7C8 8FB20018 */  lw         $s2, 0x18($sp)
/* 1E3CC 8001D7CC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1E3D0 8001D7D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1E3D4 8001D7D4 03E00008 */  jr         $ra
/* 1E3D8 8001D7D8 27BD0020 */   addiu     $sp, $sp, 0x20