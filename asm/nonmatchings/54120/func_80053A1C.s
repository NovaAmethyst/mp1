	.set noat
	.set noreorder

glabel func_80053A1C
/* 5461C 80053A1C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 54620 80053A20 AFBF0034 */  sw         $ra, 0x34($sp)
/* 54624 80053A24 AFB40030 */  sw         $s4, 0x30($sp)
/* 54628 80053A28 AFB3002C */  sw         $s3, 0x2c($sp)
/* 5462C 80053A2C AFB20028 */  sw         $s2, 0x28($sp)
/* 54630 80053A30 AFB10024 */  sw         $s1, 0x24($sp)
/* 54634 80053A34 AFB00020 */  sw         $s0, 0x20($sp)
/* 54638 80053A38 F7B40038 */  sdc1       $f20, 0x38($sp)
/* 5463C 80053A3C 2413FFFF */  addiu      $s3, $zero, -1
/* 54640 80053A40 2414FFFE */  addiu      $s4, $zero, -2
/* 54644 80053A44 3C013F00 */  lui        $at, 0x3f00
/* 54648 80053A48 4481A000 */  mtc1       $at, $f20
.L80053A4C:
/* 5464C 80053A4C 3C02800F */  lui        $v0, %hi(D_800F384E)
/* 54650 80053A50 8042384E */  lb         $v0, %lo(D_800F384E)($v0)
/* 54654 80053A54 144000BF */  bnez       $v0, .L80053D54
/* 54658 80053A58 00009021 */   addu      $s2, $zero, $zero
.L80053A5C:
/* 5465C 80053A5C 3C03800C */  lui        $v1, %hi(D_800C54D0)
/* 54660 80053A60 8C6354D0 */  lw         $v1, %lo(D_800C54D0)($v1)
/* 54664 80053A64 5073000A */  beql       $v1, $s3, .L80053A90
/* 54668 80053A68 00121980 */   sll       $v1, $s2, 6
/* 5466C 80053A6C 3C02800C */  lui        $v0, %hi(D_800C54D4)
/* 54670 80053A70 8C4254D4 */  lw         $v0, %lo(D_800C54D4)($v0)
/* 54674 80053A74 50530006 */  beql       $v0, $s3, .L80053A90
/* 54678 80053A78 00121980 */   sll       $v1, $s2, 6
/* 5467C 80053A7C 52430004 */  beql       $s2, $v1, .L80053A90
/* 54680 80053A80 00121980 */   sll       $v1, $s2, 6
/* 54684 80053A84 5642006A */  bnel       $s2, $v0, .L80053C30
/* 54688 80053A88 26520001 */   addiu     $s2, $s2, 1
/* 5468C 80053A8C 00121980 */  sll        $v1, $s2, 6
.L80053A90:
/* 54690 80053A90 3C02800E */  lui        $v0, %hi(D_800D83A8)
/* 54694 80053A94 244283A8 */  addiu      $v0, $v0, %lo(D_800D83A8)
/* 54698 80053A98 00628821 */  addu       $s1, $v1, $v0
/* 5469C 80053A9C 92220005 */  lbu        $v0, 5($s1)
/* 546A0 80053AA0 30420001 */  andi       $v0, $v0, 1
/* 546A4 80053AA4 1040000C */  beqz       $v0, .L80053AD8
/* 546A8 80053AA8 00008021 */   addu      $s0, $zero, $zero
/* 546AC 80053AAC 00102C00 */  sll        $a1, $s0, 0x10
.L80053AB0:
/* 546B0 80053AB0 86240006 */  lh         $a0, 6($s1)
/* 546B4 80053AB4 00052C03 */  sra        $a1, $a1, 0x10
/* 546B8 80053AB8 0C019D2F */  jal        func_800674BC
/* 546BC 80053ABC 34068000 */   ori       $a2, $zero, 0x8000
/* 546C0 80053AC0 26100001 */  addiu      $s0, $s0, 1
/* 546C4 80053AC4 2A02000B */  slti       $v0, $s0, 0xb
/* 546C8 80053AC8 1440FFF9 */  bnez       $v0, .L80053AB0
/* 546CC 80053ACC 00102C00 */   sll       $a1, $s0, 0x10
/* 546D0 80053AD0 08014F0C */  j          .L80053C30
/* 546D4 80053AD4 26520001 */   addiu     $s2, $s2, 1
.L80053AD8:
/* 546D8 80053AD8 00102C00 */  sll        $a1, $s0, 0x10
.L80053ADC:
/* 546DC 80053ADC 86240006 */  lh         $a0, 6($s1)
/* 546E0 80053AE0 00052C03 */  sra        $a1, $a1, 0x10
/* 546E4 80053AE4 0C019D20 */  jal        func_80067480
/* 546E8 80053AE8 34068000 */   ori       $a2, $zero, 0x8000
/* 546EC 80053AEC 26100001 */  addiu      $s0, $s0, 1
/* 546F0 80053AF0 2A02000B */  slti       $v0, $s0, 0xb
/* 546F4 80053AF4 1440FFF9 */  bnez       $v0, .L80053ADC
/* 546F8 80053AF8 00102C00 */   sll       $a1, $s0, 0x10
/* 546FC 80053AFC 00121040 */  sll        $v0, $s2, 1
/* 54700 80053B00 00521021 */  addu       $v0, $v0, $s2
/* 54704 80053B04 00021100 */  sll        $v0, $v0, 4
/* 54708 80053B08 3C01800F */  lui        $at, %hi(D_800F32B6)
/* 5470C 80053B0C 00220821 */  addu       $at, $at, $v0
/* 54710 80053B10 942232B6 */  lhu        $v0, %lo(D_800F32B6)($at)
/* 54714 80053B14 30420001 */  andi       $v0, $v0, 1
/* 54718 80053B18 1040000A */  beqz       $v0, .L80053B44
/* 5471C 80053B1C 00000000 */   nop
/* 54720 80053B20 92220005 */  lbu        $v0, 5($s1)
/* 54724 80053B24 30420001 */  andi       $v0, $v0, 1
/* 54728 80053B28 14400006 */  bnez       $v0, .L80053B44
/* 5472C 80053B2C 24050009 */   addiu     $a1, $zero, 9
/* 54730 80053B30 86240006 */  lh         $a0, 6($s1)
/* 54734 80053B34 0C019D20 */  jal        func_80067480
/* 54738 80053B38 34068000 */   ori       $a2, $zero, 0x8000
/* 5473C 80053B3C 08014ED5 */  j          .L80053B54
/* 54740 80053B40 00000000 */   nop
.L80053B44:
/* 54744 80053B44 86240006 */  lh         $a0, 6($s1)
/* 54748 80053B48 24050009 */  addiu      $a1, $zero, 9
/* 5474C 80053B4C 0C019D2F */  jal        func_800674BC
/* 54750 80053B50 34068000 */   ori       $a2, $zero, 0x8000
.L80053B54:
/* 54754 80053B54 0C014D48 */  jal        func_80053520
/* 54758 80053B58 02402021 */   addu      $a0, $s2, $zero
/* 5475C 80053B5C 8622000A */  lh         $v0, 0xa($s1)
/* 54760 80053B60 18400014 */  blez       $v0, .L80053BB4
/* 54764 80053B64 00401821 */   addu      $v1, $v0, $zero
/* 54768 80053B68 2462FFFF */  addiu      $v0, $v1, -1
/* 5476C 80053B6C A622000A */  sh         $v0, 0xa($s1)
/* 54770 80053B70 C620000C */  lwc1       $f0, 0xc($s1)
/* 54774 80053B74 C622001C */  lwc1       $f2, 0x1c($s1)
/* 54778 80053B78 46020000 */  add.s      $f0, $f0, $f2
/* 5477C 80053B7C E620000C */  swc1       $f0, 0xc($s1)
/* 54780 80053B80 C6200010 */  lwc1       $f0, 0x10($s1)
/* 54784 80053B84 C6220020 */  lwc1       $f2, 0x20($s1)
/* 54788 80053B88 46020000 */  add.s      $f0, $f0, $f2
/* 5478C 80053B8C E6200010 */  swc1       $f0, 0x10($s1)
/* 54790 80053B90 C620001C */  lwc1       $f0, 0x1c($s1)
/* 54794 80053B94 C6220024 */  lwc1       $f2, 0x24($s1)
/* 54798 80053B98 46020000 */  add.s      $f0, $f0, $f2
/* 5479C 80053B9C E620001C */  swc1       $f0, 0x1c($s1)
/* 547A0 80053BA0 C6200020 */  lwc1       $f0, 0x20($s1)
/* 547A4 80053BA4 C6220028 */  lwc1       $f2, 0x28($s1)
/* 547A8 80053BA8 46020000 */  add.s      $f0, $f0, $f2
/* 547AC 80053BAC 08014EF8 */  j          .L80053BE0
/* 547B0 80053BB0 E6200020 */   swc1      $f0, 0x20($s1)
.L80053BB4:
/* 547B4 80053BB4 14530003 */  bne        $v0, $s3, .L80053BC4
/* 547B8 80053BB8 00000000 */   nop
/* 547BC 80053BBC 08014EF8 */  j          .L80053BE0
/* 547C0 80053BC0 A634000A */   sh        $s4, 0xa($s1)
.L80053BC4:
/* 547C4 80053BC4 10540006 */  beq        $v0, $s4, .L80053BE0
/* 547C8 80053BC8 00000000 */   nop
/* 547CC 80053BCC C6200014 */  lwc1       $f0, 0x14($s1)
/* 547D0 80053BD0 E620000C */  swc1       $f0, 0xc($s1)
/* 547D4 80053BD4 C6200018 */  lwc1       $f0, 0x18($s1)
/* 547D8 80053BD8 E6200010 */  swc1       $f0, 0x10($s1)
/* 547DC 80053BDC A633000A */  sh         $s3, 0xa($s1)
.L80053BE0:
/* 547E0 80053BE0 C620000C */  lwc1       $f0, 0xc($s1)
/* 547E4 80053BE4 46140000 */  add.s      $f0, $f0, $f20
/* 547E8 80053BE8 4600008D */  trunc.w.s  $f2, $f0
/* 547EC 80053BEC 44061000 */  mfc1       $a2, $f2
/* 547F0 80053BF0 00000000 */  nop
/* 547F4 80053BF4 24C60030 */  addiu      $a2, $a2, 0x30
/* 547F8 80053BF8 00063400 */  sll        $a2, $a2, 0x10
/* 547FC 80053BFC C6200010 */  lwc1       $f0, 0x10($s1)
/* 54800 80053C00 46140000 */  add.s      $f0, $f0, $f20
/* 54804 80053C04 4600008D */  trunc.w.s  $f2, $f0
/* 54808 80053C08 44071000 */  mfc1       $a3, $f2
/* 5480C 80053C0C 00000000 */  nop
/* 54810 80053C10 24E70010 */  addiu      $a3, $a3, 0x10
/* 54814 80053C14 00073C00 */  sll        $a3, $a3, 0x10
/* 54818 80053C18 86240006 */  lh         $a0, 6($s1)
/* 5481C 80053C1C 00002821 */  addu       $a1, $zero, $zero
/* 54820 80053C20 00063403 */  sra        $a2, $a2, 0x10
/* 54824 80053C24 0C019B71 */  jal        func_80066DC4
/* 54828 80053C28 00073C03 */   sra       $a3, $a3, 0x10
/* 5482C 80053C2C 26520001 */  addiu      $s2, $s2, 1
.L80053C30:
/* 54830 80053C30 2A420004 */  slti       $v0, $s2, 4
/* 54834 80053C34 1440FF89 */  bnez       $v0, .L80053A5C
/* 54838 80053C38 00000000 */   nop
/* 5483C 80053C3C 3C02800E */  lui        $v0, %hi(D_800D84A8)
/* 54840 80053C40 844284A8 */  lh         $v0, %lo(D_800D84A8)($v0)
/* 54844 80053C44 10530043 */  beq        $v0, $s3, .L80053D54
/* 54848 80053C48 00000000 */   nop
/* 5484C 80053C4C 3C01800E */  lui        $at, %hi(D_800D84AC)
/* 54850 80053C50 C42284AC */  lwc1       $f2, %lo(D_800D84AC)($at)
/* 54854 80053C54 3C013DCC */  lui        $at, 0x3dcc
/* 54858 80053C58 3421CCCD */  ori        $at, $at, 0xcccd
/* 5485C 80053C5C 44810000 */  mtc1       $at, $f0
/* 54860 80053C60 00000000 */  nop
/* 54864 80053C64 46001080 */  add.s      $f2, $f2, $f0
/* 54868 80053C68 3C01800E */  lui        $at, %hi(D_800D84AC)
/* 5486C 80053C6C E42284AC */  swc1       $f2, %lo(D_800D84AC)($at)
/* 54870 80053C70 3C013F80 */  lui        $at, 0x3f80
/* 54874 80053C74 44810000 */  mtc1       $at, $f0
/* 54878 80053C78 00000000 */  nop
/* 5487C 80053C7C 4602003C */  c.lt.s     $f0, $f2
/* 54880 80053C80 00000000 */  nop
/* 54884 80053C84 45000003 */  bc1f       .L80053C94
/* 54888 80053C88 00000000 */   nop
/* 5488C 80053C8C 3C01800E */  lui        $at, %hi(D_800D84AC)
/* 54890 80053C90 E42084AC */  swc1       $f0, %lo(D_800D84AC)($at)
.L80053C94:
/* 54894 80053C94 3C04800E */  lui        $a0, %hi(D_800D84A8)
/* 54898 80053C98 848484A8 */  lh         $a0, %lo(D_800D84A8)($a0)
/* 5489C 80053C9C 00002821 */  addu       $a1, $zero, $zero
/* 548A0 80053CA0 3C06800E */  lui        $a2, %hi(D_800D84AC)
/* 548A4 80053CA4 8CC684AC */  lw         $a2, %lo(D_800D84AC)($a2)
/* 548A8 80053CA8 0C019CD5 */  jal        func_80067354
/* 548AC 80053CAC 00C03821 */   addu      $a3, $a2, $zero
/* 548B0 80053CB0 3C02800E */  lui        $v0, %hi(D_800D84C8)
/* 548B4 80053CB4 844284C8 */  lh         $v0, %lo(D_800D84C8)($v0)
/* 548B8 80053CB8 18400026 */  blez       $v0, .L80053D54
/* 548BC 80053CBC 00401821 */   addu      $v1, $v0, $zero
/* 548C0 80053CC0 2462FFFF */  addiu      $v0, $v1, -1
/* 548C4 80053CC4 3C01800E */  lui        $at, %hi(D_800D84C8)
/* 548C8 80053CC8 A42284C8 */  sh         $v0, %lo(D_800D84C8)($at)
/* 548CC 80053CCC 3C02800E */  lui        $v0, %hi(D_800D84B0)
/* 548D0 80053CD0 244284B0 */  addiu      $v0, $v0, %lo(D_800D84B0)
/* 548D4 80053CD4 3C03800E */  lui        $v1, %hi(D_800D84B8)
/* 548D8 80053CD8 246384B8 */  addiu      $v1, $v1, %lo(D_800D84B8)
/* 548DC 80053CDC C4480000 */  lwc1       $f8, ($v0)
/* 548E0 80053CE0 C4640000 */  lwc1       $f4, ($v1)
/* 548E4 80053CE4 46044200 */  add.s      $f8, $f8, $f4
/* 548E8 80053CE8 E4480000 */  swc1       $f8, ($v0)
/* 548EC 80053CEC C4460004 */  lwc1       $f6, 4($v0)
/* 548F0 80053CF0 C4620004 */  lwc1       $f2, 4($v1)
/* 548F4 80053CF4 46023180 */  add.s      $f6, $f6, $f2
/* 548F8 80053CF8 E4460004 */  swc1       $f6, 4($v0)
/* 548FC 80053CFC 3C02800E */  lui        $v0, %hi(D_800D84C0)
/* 54900 80053D00 244284C0 */  addiu      $v0, $v0, %lo(D_800D84C0)
/* 54904 80053D04 C4400000 */  lwc1       $f0, ($v0)
/* 54908 80053D08 46002100 */  add.s      $f4, $f4, $f0
/* 5490C 80053D0C E4640000 */  swc1       $f4, ($v1)
/* 54910 80053D10 C4400004 */  lwc1       $f0, 4($v0)
/* 54914 80053D14 46001080 */  add.s      $f2, $f2, $f0
/* 54918 80053D18 E4620004 */  swc1       $f2, 4($v1)
/* 5491C 80053D1C 4600400D */  trunc.w.s  $f0, $f8
/* 54920 80053D20 44060000 */  mfc1       $a2, $f0
/* 54924 80053D24 00000000 */  nop
/* 54928 80053D28 00063400 */  sll        $a2, $a2, 0x10
/* 5492C 80053D2C 4600300D */  trunc.w.s  $f0, $f6
/* 54930 80053D30 44070000 */  mfc1       $a3, $f0
/* 54934 80053D34 00000000 */  nop
/* 54938 80053D38 00073C00 */  sll        $a3, $a3, 0x10
/* 5493C 80053D3C 3C04800E */  lui        $a0, %hi(D_800D84A8)
/* 54940 80053D40 848484A8 */  lh         $a0, %lo(D_800D84A8)($a0)
/* 54944 80053D44 00002821 */  addu       $a1, $zero, $zero
/* 54948 80053D48 00063403 */  sra        $a2, $a2, 0x10
/* 5494C 80053D4C 0C019B71 */  jal        func_80066DC4
/* 54950 80053D50 00073C03 */   sra       $a3, $a3, 0x10
.L80053D54:
/* 54954 80053D54 0C018D6D */  jal        func_800635B4
/* 54958 80053D58 00000000 */   nop
/* 5495C 80053D5C 08014E93 */  j          .L80053A4C
/* 54960 80053D60 00000000 */   nop
/* 54964 80053D64 8FBF0034 */  lw         $ra, 0x34($sp)
/* 54968 80053D68 8FB40030 */  lw         $s4, 0x30($sp)
/* 5496C 80053D6C 8FB3002C */  lw         $s3, 0x2c($sp)
/* 54970 80053D70 8FB20028 */  lw         $s2, 0x28($sp)
/* 54974 80053D74 8FB10024 */  lw         $s1, 0x24($sp)
/* 54978 80053D78 8FB00020 */  lw         $s0, 0x20($sp)
/* 5497C 80053D7C D7B40038 */  ldc1       $f20, 0x38($sp)
/* 54980 80053D80 03E00008 */  jr         $ra
/* 54984 80053D84 27BD0040 */   addiu     $sp, $sp, 0x40