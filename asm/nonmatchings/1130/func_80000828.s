	.set noat
	.set noreorder

glabel func_80000828
/* 1428 80000828 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 142C 8000082C AFBF0030 */  sw         $ra, 0x30($sp)
/* 1430 80000830 AFB3002C */  sw         $s3, 0x2c($sp)
/* 1434 80000834 AFB20028 */  sw         $s2, 0x28($sp)
/* 1438 80000838 AFB10024 */  sw         $s1, 0x24($sp)
/* 143C 8000083C AFB00020 */  sw         $s0, 0x20($sp)
/* 1440 80000840 00808821 */  addu       $s1, $a0, $zero
/* 1444 80000844 00A08021 */  addu       $s0, $a1, $zero
/* 1448 80000848 00C09021 */  addu       $s2, $a2, $zero
/* 144C 8000084C 96020000 */  lhu        $v0, ($s0)
/* 1450 80000850 30423F00 */  andi       $v0, $v0, 0x3f00
/* 1454 80000854 28420201 */  slti       $v0, $v0, 0x201
/* 1458 80000858 14400057 */  bnez       $v0, .L800009B8
/* 145C 8000085C 2413FFFF */   addiu     $s3, $zero, -1
/* 1460 80000860 86020002 */  lh         $v0, 2($s0)
/* 1464 80000864 00022040 */  sll        $a0, $v0, 1
/* 1468 80000868 00822021 */  addu       $a0, $a0, $v0
/* 146C 8000086C 00042040 */  sll        $a0, $a0, 1
/* 1470 80000870 86020004 */  lh         $v0, 4($s0)
/* 1474 80000874 00022840 */  sll        $a1, $v0, 1
/* 1478 80000878 00A22821 */  addu       $a1, $a1, $v0
/* 147C 8000087C 00052840 */  sll        $a1, $a1, 1
/* 1480 80000880 86020006 */  lh         $v0, 6($s0)
/* 1484 80000884 00023040 */  sll        $a2, $v0, 1
/* 1488 80000888 00C23021 */  addu       $a2, $a2, $v0
/* 148C 8000088C 00063040 */  sll        $a2, $a2, 1
/* 1490 80000890 02442021 */  addu       $a0, $s2, $a0
/* 1494 80000894 02452821 */  addu       $a1, $s2, $a1
/* 1498 80000898 02463021 */  addu       $a2, $s2, $a2
/* 149C 8000089C 0C00A57F */  jal        func_800295FC
/* 14A0 800008A0 27A70010 */   addiu     $a3, $sp, 0x10
/* 14A4 800008A4 86030002 */  lh         $v1, 2($s0)
/* 14A8 800008A8 00031040 */  sll        $v0, $v1, 1
/* 14AC 800008AC 00431021 */  addu       $v0, $v0, $v1
/* 14B0 800008B0 00021040 */  sll        $v0, $v0, 1
/* 14B4 800008B4 02421021 */  addu       $v0, $s2, $v0
/* 14B8 800008B8 84430000 */  lh         $v1, ($v0)
/* 14BC 800008BC 44831000 */  mtc1       $v1, $f2
/* 14C0 800008C0 00000000 */  nop
/* 14C4 800008C4 468010A0 */  cvt.s.w    $f2, $f2
/* 14C8 800008C8 84430002 */  lh         $v1, 2($v0)
/* 14CC 800008CC 44832000 */  mtc1       $v1, $f4
/* 14D0 800008D0 00000000 */  nop
/* 14D4 800008D4 46802120 */  cvt.s.w    $f4, $f4
/* 14D8 800008D8 84420004 */  lh         $v0, 4($v0)
/* 14DC 800008DC 44823000 */  mtc1       $v0, $f6
/* 14E0 800008E0 00000000 */  nop
/* 14E4 800008E4 468031A0 */  cvt.s.w    $f6, $f6
/* 14E8 800008E8 C6200000 */  lwc1       $f0, ($s1)
/* 14EC 800008EC 46001201 */  sub.s      $f8, $f2, $f0
/* 14F0 800008F0 C6200004 */  lwc1       $f0, 4($s1)
/* 14F4 800008F4 46002281 */  sub.s      $f10, $f4, $f0
/* 14F8 800008F8 C6200008 */  lwc1       $f0, 8($s1)
/* 14FC 800008FC 46003181 */  sub.s      $f6, $f6, $f0
/* 1500 80000900 C7A00010 */  lwc1       $f0, 0x10($sp)
/* 1504 80000904 46004082 */  mul.s      $f2, $f8, $f0
/* 1508 80000908 C7A00014 */  lwc1       $f0, 0x14($sp)
/* 150C 8000090C 46005002 */  mul.s      $f0, $f10, $f0
/* 1510 80000910 46001080 */  add.s      $f2, $f2, $f0
/* 1514 80000914 C7A00018 */  lwc1       $f0, 0x18($sp)
/* 1518 80000918 46003002 */  mul.s      $f0, $f6, $f0
/* 151C 8000091C 46001080 */  add.s      $f2, $f2, $f0
/* 1520 80000920 44800000 */  mtc1       $zero, $f0
/* 1524 80000924 00000000 */  nop
/* 1528 80000928 4602003E */  c.le.s     $f0, $f2
/* 152C 8000092C 00000000 */  nop
/* 1530 80000930 00000000 */  nop
/* 1534 80000934 45030001 */  bc1tl      .L8000093C
/* 1538 80000938 24130001 */   addiu     $s3, $zero, 1
.L8000093C:
/* 153C 8000093C 46001085 */  abs.s      $f2, $f2
/* 1540 80000940 C620000C */  lwc1       $f0, 0xc($s1)
/* 1544 80000944 4602003C */  c.lt.s     $f0, $f2
/* 1548 80000948 00000000 */  nop
/* 154C 8000094C 00000000 */  nop
/* 1550 80000950 4501001A */  bc1t       .L800009BC
/* 1554 80000954 00001021 */   addu      $v0, $zero, $zero
/* 1558 80000958 C7A20010 */  lwc1       $f2, 0x10($sp)
/* 155C 8000095C 46024102 */  mul.s      $f4, $f8, $f2
/* 1560 80000960 C7A00014 */  lwc1       $f0, 0x14($sp)
/* 1564 80000964 46005002 */  mul.s      $f0, $f10, $f0
/* 1568 80000968 46002100 */  add.s      $f4, $f4, $f0
/* 156C 8000096C C7A00018 */  lwc1       $f0, 0x18($sp)
/* 1570 80000970 46003002 */  mul.s      $f0, $f6, $f0
/* 1574 80000974 46002100 */  add.s      $f4, $f4, $f0
/* 1578 80000978 46022082 */  mul.s      $f2, $f4, $f2
/* 157C 8000097C C6200000 */  lwc1       $f0, ($s1)
/* 1580 80000980 46001080 */  add.s      $f2, $f2, $f0
/* 1584 80000984 E6220000 */  swc1       $f2, ($s1)
/* 1588 80000988 C7A00014 */  lwc1       $f0, 0x14($sp)
/* 158C 8000098C 46002002 */  mul.s      $f0, $f4, $f0
/* 1590 80000990 C6220004 */  lwc1       $f2, 4($s1)
/* 1594 80000994 46020000 */  add.s      $f0, $f0, $f2
/* 1598 80000998 E6200004 */  swc1       $f0, 4($s1)
/* 159C 8000099C C7A00018 */  lwc1       $f0, 0x18($sp)
/* 15A0 800009A0 46002102 */  mul.s      $f4, $f4, $f0
/* 15A4 800009A4 C6200008 */  lwc1       $f0, 8($s1)
/* 15A8 800009A8 46002100 */  add.s      $f4, $f4, $f0
/* 15AC 800009AC E6240008 */  swc1       $f4, 8($s1)
/* 15B0 800009B0 0800026F */  j          .L800009BC
/* 15B4 800009B4 02601021 */   addu      $v0, $s3, $zero
.L800009B8:
/* 15B8 800009B8 00001021 */  addu       $v0, $zero, $zero
.L800009BC:
/* 15BC 800009BC 8FBF0030 */  lw         $ra, 0x30($sp)
/* 15C0 800009C0 8FB3002C */  lw         $s3, 0x2c($sp)
/* 15C4 800009C4 8FB20028 */  lw         $s2, 0x28($sp)
/* 15C8 800009C8 8FB10024 */  lw         $s1, 0x24($sp)
/* 15CC 800009CC 8FB00020 */  lw         $s0, 0x20($sp)
/* 15D0 800009D0 03E00008 */  jr         $ra
/* 15D4 800009D4 27BD0038 */   addiu     $sp, $sp, 0x38