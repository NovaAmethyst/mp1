	.set noat
	.set noreorder

glabel func_8004E3E0
/* 4EFE0 8004E3E0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4EFE4 8004E3E4 AFBF0028 */  sw         $ra, 0x28($sp)
/* 4EFE8 8004E3E8 AFB30024 */  sw         $s3, 0x24($sp)
/* 4EFEC 8004E3EC AFB20020 */  sw         $s2, 0x20($sp)
/* 4EFF0 8004E3F0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 4EFF4 8004E3F4 AFB00018 */  sw         $s0, 0x18($sp)
/* 4EFF8 8004E3F8 00808821 */  addu       $s1, $a0, $zero
/* 4EFFC 8004E3FC 00A08021 */  addu       $s0, $a1, $zero
/* 4F000 8004E400 00C09021 */  addu       $s2, $a2, $zero
/* 4F004 8004E404 00E09821 */  addu       $s3, $a3, $zero
/* 4F008 8004E408 3C028005 */  lui        $v0, %hi(func_8004E248)
/* 4F00C 8004E40C 2442E248 */  addiu      $v0, $v0, %lo(func_8004E248)
/* 4F010 8004E410 AFA20010 */  sw         $v0, 0x10($sp)
/* 4F014 8004E414 24041000 */  addiu      $a0, $zero, 0x1000
/* 4F018 8004E418 00002821 */  addu       $a1, $zero, $zero
/* 4F01C 8004E41C 00003021 */  addu       $a2, $zero, $zero
/* 4F020 8004E420 0C0174E1 */  jal        func_8005D384
/* 4F024 8004E424 2407FFFF */   addiu     $a3, $zero, -1
/* 4F028 8004E428 00402821 */  addu       $a1, $v0, $zero
/* 4F02C 8004E42C A0B1004C */  sb         $s1, 0x4c($a1)
/* 4F030 8004E430 A0B2004D */  sb         $s2, 0x4d($a1)
/* 4F034 8004E434 C6000000 */  lwc1       $f0, ($s0)
/* 4F038 8004E438 E4A00018 */  swc1       $f0, 0x18($a1)
/* 4F03C 8004E43C C6000004 */  lwc1       $f0, 4($s0)
/* 4F040 8004E440 E4A0001C */  swc1       $f0, 0x1c($a1)
/* 4F044 8004E444 C6000008 */  lwc1       $f0, 8($s0)
/* 4F048 8004E448 16600020 */  bnez       $s3, .L8004E4CC
/* 4F04C 8004E44C E4A00020 */   swc1      $f0, 0x20($a1)
/* 4F050 8004E450 00111040 */  sll        $v0, $s1, 1
/* 4F054 8004E454 00511021 */  addu       $v0, $v0, $s1
/* 4F058 8004E458 00021100 */  sll        $v0, $v0, 4
/* 4F05C 8004E45C 3C03800F */  lui        $v1, %hi(D_800F32D0)
/* 4F060 8004E460 00621821 */  addu       $v1, $v1, $v0
/* 4F064 8004E464 8C6332D0 */  lw         $v1, %lo(D_800F32D0)($v1)
/* 4F068 8004E468 C6000000 */  lwc1       $f0, ($s0)
/* 4F06C 8004E46C C462000C */  lwc1       $f2, 0xc($v1)
/* 4F070 8004E470 46020001 */  sub.s      $f0, $f0, $f2
/* 4F074 8004E474 44922000 */  mtc1       $s2, $f4
/* 4F078 8004E478 00000000 */  nop
/* 4F07C 8004E47C 46802120 */  cvt.s.w    $f4, $f4
/* 4F080 8004E480 46040003 */  div.s      $f0, $f0, $f4
/* 4F084 8004E484 E4A00030 */  swc1       $f0, 0x30($a1)
/* 4F088 8004E488 3C03800F */  lui        $v1, %hi(D_800F32D0)
/* 4F08C 8004E48C 00621821 */  addu       $v1, $v1, $v0
/* 4F090 8004E490 8C6332D0 */  lw         $v1, %lo(D_800F32D0)($v1)
/* 4F094 8004E494 C6000004 */  lwc1       $f0, 4($s0)
/* 4F098 8004E498 C4620010 */  lwc1       $f2, 0x10($v1)
/* 4F09C 8004E49C 46020001 */  sub.s      $f0, $f0, $f2
/* 4F0A0 8004E4A0 46040003 */  div.s      $f0, $f0, $f4
/* 4F0A4 8004E4A4 E4A00034 */  swc1       $f0, 0x34($a1)
/* 4F0A8 8004E4A8 3C01800F */  lui        $at, %hi(D_800F32D0)
/* 4F0AC 8004E4AC 00220821 */  addu       $at, $at, $v0
/* 4F0B0 8004E4B0 8C2232D0 */  lw         $v0, %lo(D_800F32D0)($at)
/* 4F0B4 8004E4B4 C6000008 */  lwc1       $f0, 8($s0)
/* 4F0B8 8004E4B8 C4420014 */  lwc1       $f2, 0x14($v0)
/* 4F0BC 8004E4BC 08013943 */  j          .L8004E50C
/* 4F0C0 8004E4C0 46020001 */   sub.s     $f0, $f0, $f2
.L8004E4C4:
/* 4F0C4 8004E4C4 08013951 */  j          .L8004E544
/* 4F0C8 8004E4C8 AC850000 */   sw        $a1, ($a0)
.L8004E4CC:
/* 4F0CC 8004E4CC C6000000 */  lwc1       $f0, ($s0)
/* 4F0D0 8004E4D0 C662000C */  lwc1       $f2, 0xc($s3)
/* 4F0D4 8004E4D4 46020001 */  sub.s      $f0, $f0, $f2
/* 4F0D8 8004E4D8 44922000 */  mtc1       $s2, $f4
/* 4F0DC 8004E4DC 00000000 */  nop
/* 4F0E0 8004E4E0 46802120 */  cvt.s.w    $f4, $f4
/* 4F0E4 8004E4E4 46040003 */  div.s      $f0, $f0, $f4
/* 4F0E8 8004E4E8 E4A00030 */  swc1       $f0, 0x30($a1)
/* 4F0EC 8004E4EC C6000004 */  lwc1       $f0, 4($s0)
/* 4F0F0 8004E4F0 C6620010 */  lwc1       $f2, 0x10($s3)
/* 4F0F4 8004E4F4 46020001 */  sub.s      $f0, $f0, $f2
/* 4F0F8 8004E4F8 46040003 */  div.s      $f0, $f0, $f4
/* 4F0FC 8004E4FC E4A00034 */  swc1       $f0, 0x34($a1)
/* 4F100 8004E500 C6000008 */  lwc1       $f0, 8($s0)
/* 4F104 8004E504 C6620014 */  lwc1       $f2, 0x14($s3)
/* 4F108 8004E508 46020001 */  sub.s      $f0, $f0, $f2
.L8004E50C:
/* 4F10C 8004E50C 46040003 */  div.s      $f0, $f0, $f4
/* 4F110 8004E510 E4A00038 */  swc1       $f0, 0x38($a1)
/* 4F114 8004E514 ACB30050 */  sw         $s3, 0x50($a1)
/* 4F118 8004E518 00001821 */  addu       $v1, $zero, $zero
/* 4F11C 8004E51C 3C06800F */  lui        $a2, %hi(D_800F50C0)
/* 4F120 8004E520 24C650C0 */  addiu      $a2, $a2, %lo(D_800F50C0)
/* 4F124 8004E524 00031080 */  sll        $v0, $v1, 2
.L8004E528:
/* 4F128 8004E528 00462021 */  addu       $a0, $v0, $a2
/* 4F12C 8004E52C 8C820000 */  lw         $v0, ($a0)
/* 4F130 8004E530 1040FFE4 */  beqz       $v0, .L8004E4C4
/* 4F134 8004E534 24630001 */   addiu     $v1, $v1, 1
/* 4F138 8004E538 28620020 */  slti       $v0, $v1, 0x20
/* 4F13C 8004E53C 1440FFFA */  bnez       $v0, .L8004E528
/* 4F140 8004E540 00031080 */   sll       $v0, $v1, 2
.L8004E544:
/* 4F144 8004E544 00A01021 */  addu       $v0, $a1, $zero
/* 4F148 8004E548 8FBF0028 */  lw         $ra, 0x28($sp)
/* 4F14C 8004E54C 8FB30024 */  lw         $s3, 0x24($sp)
/* 4F150 8004E550 8FB20020 */  lw         $s2, 0x20($sp)
/* 4F154 8004E554 8FB1001C */  lw         $s1, 0x1c($sp)
/* 4F158 8004E558 8FB00018 */  lw         $s0, 0x18($sp)
/* 4F15C 8004E55C 03E00008 */  jr         $ra
/* 4F160 8004E560 27BD0030 */   addiu     $sp, $sp, 0x30