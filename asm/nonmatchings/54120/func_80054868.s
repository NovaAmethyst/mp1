	.set noat
	.set noreorder

glabel func_80054868
/* 55468 80054868 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 5546C 8005486C AFBF0074 */  sw         $ra, 0x74($sp)
/* 55470 80054870 AFBE0070 */  sw         $fp, 0x70($sp)
/* 55474 80054874 AFB7006C */  sw         $s7, 0x6c($sp)
/* 55478 80054878 AFB60068 */  sw         $s6, 0x68($sp)
/* 5547C 8005487C AFB50064 */  sw         $s5, 0x64($sp)
/* 55480 80054880 AFB40060 */  sw         $s4, 0x60($sp)
/* 55484 80054884 AFB3005C */  sw         $s3, 0x5c($sp)
/* 55488 80054888 AFB20058 */  sw         $s2, 0x58($sp)
/* 5548C 8005488C AFB10054 */  sw         $s1, 0x54($sp)
/* 55490 80054890 AFB00050 */  sw         $s0, 0x50($sp)
/* 55494 80054894 00809021 */  addu       $s2, $a0, $zero
/* 55498 80054898 00009821 */  addu       $s3, $zero, $zero
/* 5549C 8005489C 24020002 */  addiu      $v0, $zero, 2
/* 554A0 800548A0 1642004B */  bne        $s2, $v0, .L800549D0
/* 554A4 800548A4 0000A021 */   addu      $s4, $zero, $zero
/* 554A8 800548A8 00002021 */  addu       $a0, $zero, $zero
/* 554AC 800548AC 02809821 */  addu       $s3, $s4, $zero
/* 554B0 800548B0 00008021 */  addu       $s0, $zero, $zero
/* 554B4 800548B4 24070001 */  addiu      $a3, $zero, 1
/* 554B8 800548B8 24060002 */  addiu      $a2, $zero, 2
/* 554BC 800548BC 27A50018 */  addiu      $a1, $sp, 0x18
/* 554C0 800548C0 27A30020 */  addiu      $v1, $sp, 0x20
/* 554C4 800548C4 00101180 */  sll        $v0, $s0, 6
.L800548C8:
/* 554C8 800548C8 3C01800E */  lui        $at, %hi(D_800D83AB)
/* 554CC 800548CC 00220821 */  addu       $at, $at, $v0
/* 554D0 800548D0 902283AB */  lbu        $v0, %lo(D_800D83AB)($at)
/* 554D4 800548D4 50470005 */  beql       $v0, $a3, .L800548EC
/* 554D8 800548D8 02601021 */   addu      $v0, $s3, $zero
/* 554DC 800548DC 10460008 */  beq        $v0, $a2, .L80054900
/* 554E0 800548E0 02801021 */   addu      $v0, $s4, $zero
/* 554E4 800548E4 08015244 */  j          .L80054910
/* 554E8 800548E8 24840001 */   addiu     $a0, $a0, 1
.L800548EC:
/* 554EC 800548EC 26730001 */  addiu      $s3, $s3, 1
/* 554F0 800548F0 304200FF */  andi       $v0, $v0, 0xff
/* 554F4 800548F4 00A21021 */  addu       $v0, $a1, $v0
/* 554F8 800548F8 08015244 */  j          .L80054910
/* 554FC 800548FC A0500000 */   sb        $s0, ($v0)
.L80054900:
/* 55500 80054900 26940001 */  addiu      $s4, $s4, 1
/* 55504 80054904 304200FF */  andi       $v0, $v0, 0xff
/* 55508 80054908 00621021 */  addu       $v0, $v1, $v0
/* 5550C 8005490C A0500000 */  sb         $s0, ($v0)
.L80054910:
/* 55510 80054910 26100001 */  addiu      $s0, $s0, 1
/* 55514 80054914 2A020004 */  slti       $v0, $s0, 4
/* 55518 80054918 1440FFEB */  bnez       $v0, .L800548C8
/* 5551C 8005491C 00101180 */   sll       $v0, $s0, 6
/* 55520 80054920 308200FF */  andi       $v0, $a0, 0xff
/* 55524 80054924 1040000C */  beqz       $v0, .L80054958
/* 55528 80054928 00002021 */   addu      $a0, $zero, $zero
/* 5552C 8005492C 00008021 */  addu       $s0, $zero, $zero
/* 55530 80054930 27A30018 */  addiu      $v1, $sp, 0x18
/* 55534 80054934 00701021 */  addu       $v0, $v1, $s0
.L80054938:
/* 55538 80054938 A0500000 */  sb         $s0, ($v0)
/* 5553C 8005493C 26100001 */  addiu      $s0, $s0, 1
/* 55540 80054940 2A020005 */  slti       $v0, $s0, 5
/* 55544 80054944 1440FFFC */  bnez       $v0, .L80054938
/* 55548 80054948 00701021 */   addu      $v0, $v1, $s0
/* 5554C 8005494C 24130005 */  addiu      $s3, $zero, 5
/* 55550 80054950 0000A021 */  addu       $s4, $zero, $zero
/* 55554 80054954 00002021 */  addu       $a0, $zero, $zero
.L80054958:
/* 55558 80054958 326200FF */  andi       $v0, $s3, 0xff
/* 5555C 8005495C 00403821 */  addu       $a3, $v0, $zero
/* 55560 80054960 1840000C */  blez       $v0, .L80054994
/* 55564 80054964 00008021 */   addu      $s0, $zero, $zero
/* 55568 80054968 27A60018 */  addiu      $a2, $sp, 0x18
/* 5556C 8005496C 27A50010 */  addiu      $a1, $sp, 0x10
.L80054970:
/* 55570 80054970 00D01021 */  addu       $v0, $a2, $s0
/* 55574 80054974 90420000 */  lbu        $v0, ($v0)
/* 55578 80054978 00A21021 */  addu       $v0, $a1, $v0
/* 5557C 8005497C 00801821 */  addu       $v1, $a0, $zero
/* 55580 80054980 A0430000 */  sb         $v1, ($v0)
/* 55584 80054984 26100001 */  addiu      $s0, $s0, 1
/* 55588 80054988 0207102A */  slt        $v0, $s0, $a3
/* 5558C 8005498C 1440FFF8 */  bnez       $v0, .L80054970
/* 55590 80054990 24840001 */   addiu     $a0, $a0, 1
.L80054994:
/* 55594 80054994 328200FF */  andi       $v0, $s4, 0xff
/* 55598 80054998 00403821 */  addu       $a3, $v0, $zero
/* 5559C 8005499C 1840000C */  blez       $v0, .L800549D0
/* 555A0 800549A0 00008021 */   addu      $s0, $zero, $zero
/* 555A4 800549A4 27A60020 */  addiu      $a2, $sp, 0x20
/* 555A8 800549A8 27A50010 */  addiu      $a1, $sp, 0x10
.L800549AC:
/* 555AC 800549AC 00D01021 */  addu       $v0, $a2, $s0
/* 555B0 800549B0 90420000 */  lbu        $v0, ($v0)
/* 555B4 800549B4 00A21021 */  addu       $v0, $a1, $v0
/* 555B8 800549B8 00801821 */  addu       $v1, $a0, $zero
/* 555BC 800549BC A0430000 */  sb         $v1, ($v0)
/* 555C0 800549C0 26100001 */  addiu      $s0, $s0, 1
/* 555C4 800549C4 0207102A */  slt        $v0, $s0, $a3
/* 555C8 800549C8 1440FFF8 */  bnez       $v0, .L800549AC
/* 555CC 800549CC 24840001 */   addiu     $a0, $a0, 1
.L800549D0:
/* 555D0 800549D0 00008021 */  addu       $s0, $zero, $zero
/* 555D4 800549D4 2656FFF6 */  addiu      $s6, $s2, -0xa
/* 555D8 800549D8 3C02800D */  lui        $v0, %hi(D_800CB1C0)
/* 555DC 800549DC 2442B1C0 */  addiu      $v0, $v0, %lo(D_800CB1C0)
/* 555E0 800549E0 00121880 */  sll        $v1, $s2, 2
/* 555E4 800549E4 0062F021 */  addu       $fp, $v1, $v0
/* 555E8 800549E8 3C02800D */  lui        $v0, %hi(D_800CB228)
/* 555EC 800549EC 2442B228 */  addiu      $v0, $v0, %lo(D_800CB228)
/* 555F0 800549F0 0062B821 */  addu       $s7, $v1, $v0
/* 555F4 800549F4 326200FF */  andi       $v0, $s3, 0xff
/* 555F8 800549F8 3C03800C */  lui        $v1, %hi(D_800C5698)
/* 555FC 800549FC 24635698 */  addiu      $v1, $v1, %lo(D_800C5698)
/* 55600 80054A00 00021080 */  sll        $v0, $v0, 2
/* 55604 80054A04 0043A821 */  addu       $s5, $v0, $v1
/* 55608 80054A08 00101180 */  sll        $v0, $s0, 6
.L80054A0C:
/* 5560C 80054A0C 3C03800E */  lui        $v1, %hi(D_800D83A8)
/* 55610 80054A10 246383A8 */  addiu      $v1, $v1, %lo(D_800D83A8)
/* 55614 80054A14 00438821 */  addu       $s1, $v0, $v1
/* 55618 80054A18 2EC20004 */  sltiu      $v0, $s6, 4
/* 5561C 80054A1C 50400004 */  beql       $v0, $zero, .L80054A30
/* 55620 80054A20 2643FFF2 */   addiu     $v1, $s2, -0xe
/* 55624 80054A24 561600D0 */  bnel       $s0, $s6, .L80054D68
/* 55628 80054A28 26100001 */   addiu     $s0, $s0, 1
/* 5562C 80054A2C 2643FFF2 */  addiu      $v1, $s2, -0xe
.L80054A30:
/* 55630 80054A30 2C620004 */  sltiu      $v0, $v1, 4
/* 55634 80054A34 50400004 */  beql       $v0, $zero, .L80054A48
/* 55638 80054A38 2643FFEE */   addiu     $v1, $s2, -0x12
/* 5563C 80054A3C 560300CA */  bnel       $s0, $v1, .L80054D68
/* 55640 80054A40 26100001 */   addiu     $s0, $s0, 1
/* 55644 80054A44 2643FFEE */  addiu      $v1, $s2, -0x12
.L80054A48:
/* 55648 80054A48 2C620004 */  sltiu      $v0, $v1, 4
/* 5564C 80054A4C 50400004 */  beql       $v0, $zero, .L80054A60
/* 55650 80054A50 24020016 */   addiu     $v0, $zero, 0x16
/* 55654 80054A54 560300C4 */  bnel       $s0, $v1, .L80054D68
/* 55658 80054A58 26100001 */   addiu     $s0, $s0, 1
/* 5565C 80054A5C 24020016 */  addiu      $v0, $zero, 0x16
.L80054A60:
/* 55660 80054A60 16420006 */  bne        $s2, $v0, .L80054A7C
/* 55664 80054A64 24020017 */   addiu     $v0, $zero, 0x17
/* 55668 80054A68 3C02800C */  lui        $v0, %hi(D_800C54D0)
/* 5566C 80054A6C 8C4254D0 */  lw         $v0, %lo(D_800C54D0)($v0)
/* 55670 80054A70 560200BD */  bnel       $s0, $v0, .L80054D68
/* 55674 80054A74 26100001 */   addiu     $s0, $s0, 1
/* 55678 80054A78 24020017 */  addiu      $v0, $zero, 0x17
.L80054A7C:
/* 5567C 80054A7C 16420006 */  bne        $s2, $v0, .L80054A98
/* 55680 80054A80 24020018 */   addiu     $v0, $zero, 0x18
/* 55684 80054A84 3C02800C */  lui        $v0, %hi(D_800C54D4)
/* 55688 80054A88 8C4254D4 */  lw         $v0, %lo(D_800C54D4)($v0)
/* 5568C 80054A8C 560200B6 */  bnel       $s0, $v0, .L80054D68
/* 55690 80054A90 26100001 */   addiu     $s0, $s0, 1
/* 55694 80054A94 24020018 */  addiu      $v0, $zero, 0x18
.L80054A98:
/* 55698 80054A98 16420006 */  bne        $s2, $v0, .L80054AB4
/* 5569C 80054A9C 2E420019 */   sltiu     $v0, $s2, 0x19
/* 556A0 80054AA0 3C02800C */  lui        $v0, %hi(D_800C54D4)
/* 556A4 80054AA4 8C4254D4 */  lw         $v0, %lo(D_800C54D4)($v0)
/* 556A8 80054AA8 560200AF */  bnel       $s0, $v0, .L80054D68
/* 556AC 80054AAC 26100001 */   addiu     $s0, $s0, 1
/* 556B0 80054AB0 2E420019 */  sltiu      $v0, $s2, 0x19
.L80054AB4:
/* 556B4 80054AB4 1040001F */  beqz       $v0, .L80054B34
/* 556B8 80054AB8 24020013 */   addiu     $v0, $zero, 0x13
/* 556BC 80054ABC 8FC20000 */  lw         $v0, ($fp)
/* 556C0 80054AC0 00400008 */  jr         $v0
/* 556C4 80054AC4 00000000 */   nop
/* 556C8 80054AC8 26020004 */  addiu      $v0, $s0, 4
/* 556CC 80054ACC 00021080 */  sll        $v0, $v0, 2
/* 556D0 80054AD0 3C05800C */  lui        $a1, %hi(D_800C54D8)
/* 556D4 80054AD4 00A22821 */  addu       $a1, $a1, $v0
/* 556D8 80054AD8 84A554D8 */  lh         $a1, %lo(D_800C54D8)($a1)
/* 556DC 80054ADC 3C06800C */  lui        $a2, %hi(D_800C54DA)
/* 556E0 80054AE0 00C23021 */  addu       $a2, $a2, $v0
/* 556E4 80054AE4 84C654DA */  lh         $a2, %lo(D_800C54DA)($a2)
/* 556E8 80054AE8 080152CA */  j          .L80054B28
/* 556EC 80054AEC 02002021 */   addu      $a0, $s0, $zero
/* 556F0 80054AF0 3C02800C */  lui        $v0, %hi(D_800C54E8)
/* 556F4 80054AF4 244254E8 */  addiu      $v0, $v0, %lo(D_800C54E8)
/* 556F8 80054AF8 3C04800C */  lui        $a0, %hi(D_800C54D0)
/* 556FC 80054AFC 080152C8 */  j          .L80054B20
/* 55700 80054B00 8C8454D0 */   lw        $a0, %lo(D_800C54D0)($a0)
/* 55704 80054B04 3C02800C */  lui        $v0, %hi(D_800C54F4)
/* 55708 80054B08 080152C6 */  j          .L80054B18
/* 5570C 80054B0C 244254F4 */   addiu     $v0, $v0, %lo(D_800C54F4)
/* 55710 80054B10 3C02800C */  lui        $v0, %hi(D_800C54EC)
/* 55714 80054B14 244254EC */  addiu      $v0, $v0, %lo(D_800C54EC)
.L80054B18:
/* 55718 80054B18 3C04800C */  lui        $a0, %hi(D_800C54D4)
/* 5571C 80054B1C 8C8454D4 */  lw         $a0, %lo(D_800C54D4)($a0)
.L80054B20:
/* 55720 80054B20 84450000 */  lh         $a1, ($v0)
/* 55724 80054B24 84460002 */  lh         $a2, 2($v0)
.L80054B28:
/* 55728 80054B28 0C0151D6 */  jal        func_80054758
/* 5572C 80054B2C 00000000 */   nop
/* 55730 80054B30 24020013 */  addiu      $v0, $zero, 0x13
.L80054B34:
/* 55734 80054B34 A622000A */  sh         $v0, 0xa($s1)
/* 55738 80054B38 2E420019 */  sltiu      $v0, $s2, 0x19
/* 5573C 80054B3C 1040005E */  beqz       $v0, .L80054CB8
/* 55740 80054B40 00000000 */   nop
/* 55744 80054B44 8EE20000 */  lw         $v0, ($s7)
/* 55748 80054B48 00400008 */  jr         $v0
/* 5574C 80054B4C 00000000 */   nop
/* 55750 80054B50 2402000F */  addiu      $v0, $zero, 0xf
/* 55754 80054B54 A622000A */  sh         $v0, 0xa($s1)
/* 55758 80054B58 3C02800C */  lui        $v0, %hi(D_800C563C)
/* 5575C 80054B5C 00521021 */  addu       $v0, $v0, $s2
/* 55760 80054B60 9042563C */  lbu        $v0, %lo(D_800C563C)($v0)
/* 55764 80054B64 00501021 */  addu       $v0, $v0, $s0
/* 55768 80054B68 00021080 */  sll        $v0, $v0, 2
/* 5576C 80054B6C 3C01800C */  lui        $at, %hi(D_800C54D8)
/* 55770 80054B70 00220821 */  addu       $at, $at, $v0
/* 55774 80054B74 842254D8 */  lh         $v0, %lo(D_800C54D8)($at)
/* 55778 80054B78 44820000 */  mtc1       $v0, $f0
/* 5577C 80054B7C 00000000 */  nop
/* 55780 80054B80 46800020 */  cvt.s.w    $f0, $f0
/* 55784 80054B84 E6200014 */  swc1       $f0, 0x14($s1)
/* 55788 80054B88 3C02800C */  lui        $v0, %hi(D_800C563C)
/* 5578C 80054B8C 00521021 */  addu       $v0, $v0, $s2
/* 55790 80054B90 9042563C */  lbu        $v0, %lo(D_800C563C)($v0)
/* 55794 80054B94 00501021 */  addu       $v0, $v0, $s0
/* 55798 80054B98 00021080 */  sll        $v0, $v0, 2
/* 5579C 80054B9C 3C01800C */  lui        $at, %hi(D_800C54DA)
/* 557A0 80054BA0 00220821 */  addu       $at, $at, $v0
/* 557A4 80054BA4 0801532A */  j          .L80054CA8
/* 557A8 80054BA8 842254DA */   lh        $v0, %lo(D_800C54DA)($at)
/* 557AC 80054BAC 27A40010 */  addiu      $a0, $sp, 0x10
/* 557B0 80054BB0 00902021 */  addu       $a0, $a0, $s0
/* 557B4 80054BB4 90820000 */  lbu        $v0, ($a0)
/* 557B8 80054BB8 8EA30000 */  lw         $v1, ($s5)
/* 557BC 80054BBC 00021080 */  sll        $v0, $v0, 2
/* 557C0 80054BC0 00431021 */  addu       $v0, $v0, $v1
/* 557C4 80054BC4 84420000 */  lh         $v0, ($v0)
/* 557C8 80054BC8 44820000 */  mtc1       $v0, $f0
/* 557CC 80054BCC 00000000 */  nop
/* 557D0 80054BD0 46800020 */  cvt.s.w    $f0, $f0
/* 557D4 80054BD4 E6200014 */  swc1       $f0, 0x14($s1)
/* 557D8 80054BD8 90820000 */  lbu        $v0, ($a0)
/* 557DC 80054BDC 8EA30000 */  lw         $v1, ($s5)
/* 557E0 80054BE0 00021080 */  sll        $v0, $v0, 2
/* 557E4 80054BE4 00431021 */  addu       $v0, $v0, $v1
/* 557E8 80054BE8 84420002 */  lh         $v0, 2($v0)
/* 557EC 80054BEC 44820000 */  mtc1       $v0, $f0
/* 557F0 80054BF0 00000000 */  nop
/* 557F4 80054BF4 46800020 */  cvt.s.w    $f0, $f0
/* 557F8 80054BF8 E6200018 */  swc1       $f0, 0x18($s1)
/* 557FC 80054BFC 24020009 */  addiu      $v0, $zero, 9
/* 55800 80054C00 0801532E */  j          .L80054CB8
/* 55804 80054C04 A622000A */   sh        $v0, 0xa($s1)
/* 55808 80054C08 C620000C */  lwc1       $f0, 0xc($s1)
/* 5580C 80054C0C E6200014 */  swc1       $f0, 0x14($s1)
/* 55810 80054C10 C6200010 */  lwc1       $f0, 0x10($s1)
/* 55814 80054C14 3C0143F0 */  lui        $at, 0x43f0
/* 55818 80054C18 44811000 */  mtc1       $at, $f2
/* 5581C 80054C1C 00000000 */  nop
/* 55820 80054C20 46020000 */  add.s      $f0, $f0, $f2
/* 55824 80054C24 E6200018 */  swc1       $f0, 0x18($s1)
/* 55828 80054C28 24020013 */  addiu      $v0, $zero, 0x13
/* 5582C 80054C2C 0801532E */  j          .L80054CB8
/* 55830 80054C30 A622000A */   sh        $v0, 0xa($s1)
/* 55834 80054C34 3C02800C */  lui        $v0, %hi(D_800C563C)
/* 55838 80054C38 00521021 */  addu       $v0, $v0, $s2
/* 5583C 80054C3C 9042563C */  lbu        $v0, %lo(D_800C563C)($v0)
/* 55840 80054C40 00501021 */  addu       $v0, $v0, $s0
/* 55844 80054C44 00021080 */  sll        $v0, $v0, 2
/* 55848 80054C48 3C01800C */  lui        $at, %hi(D_800C54D8)
/* 5584C 80054C4C 00220821 */  addu       $at, $at, $v0
/* 55850 80054C50 842254D8 */  lh         $v0, %lo(D_800C54D8)($at)
/* 55854 80054C54 44820000 */  mtc1       $v0, $f0
/* 55858 80054C58 00000000 */  nop
/* 5585C 80054C5C 46800020 */  cvt.s.w    $f0, $f0
/* 55860 80054C60 E6200014 */  swc1       $f0, 0x14($s1)
/* 55864 80054C64 C6200010 */  lwc1       $f0, 0x10($s1)
/* 55868 80054C68 0801532E */  j          .L80054CB8
/* 5586C 80054C6C E6200018 */   swc1      $f0, 0x18($s1)
/* 55870 80054C70 3C03800C */  lui        $v1, %hi(D_800C54D8)
/* 55874 80054C74 08015324 */  j          .L80054C90
/* 55878 80054C78 246354D8 */   addiu     $v1, $v1, %lo(D_800C54D8)
/* 5587C 80054C7C 3C03800C */  lui        $v1, %hi(D_800C54E4)
/* 55880 80054C80 08015324 */  j          .L80054C90
/* 55884 80054C84 246354E4 */   addiu     $v1, $v1, %lo(D_800C54E4)
/* 55888 80054C88 3C03800C */  lui        $v1, %hi(D_800C54DC)
/* 5588C 80054C8C 246354DC */  addiu      $v1, $v1, %lo(D_800C54DC)
.L80054C90:
/* 55890 80054C90 84620000 */  lh         $v0, ($v1)
/* 55894 80054C94 44820000 */  mtc1       $v0, $f0
/* 55898 80054C98 00000000 */  nop
/* 5589C 80054C9C 46800020 */  cvt.s.w    $f0, $f0
/* 558A0 80054CA0 E6200014 */  swc1       $f0, 0x14($s1)
/* 558A4 80054CA4 84620002 */  lh         $v0, 2($v1)
.L80054CA8:
/* 558A8 80054CA8 44820000 */  mtc1       $v0, $f0
/* 558AC 80054CAC 00000000 */  nop
/* 558B0 80054CB0 46800020 */  cvt.s.w    $f0, $f0
/* 558B4 80054CB4 E6200018 */  swc1       $f0, 0x18($s1)
.L80054CB8:
/* 558B8 80054CB8 C6200014 */  lwc1       $f0, 0x14($s1)
/* 558BC 80054CBC C622000C */  lwc1       $f2, 0xc($s1)
/* 558C0 80054CC0 46020001 */  sub.s      $f0, $f0, $f2
/* 558C4 80054CC4 46000000 */  add.s      $f0, $f0, $f0
/* 558C8 80054CC8 8622000A */  lh         $v0, 0xa($s1)
/* 558CC 80054CCC 24420001 */  addiu      $v0, $v0, 1
/* 558D0 80054CD0 00420018 */  mult       $v0, $v0
/* 558D4 80054CD4 00001012 */  mflo       $v0
/* 558D8 80054CD8 44821000 */  mtc1       $v0, $f2
/* 558DC 80054CDC 00000000 */  nop
/* 558E0 80054CE0 468010A0 */  cvt.s.w    $f2, $f2
/* 558E4 80054CE4 46020003 */  div.s      $f0, $f0, $f2
/* 558E8 80054CE8 E6200024 */  swc1       $f0, 0x24($s1)
/* 558EC 80054CEC E620001C */  swc1       $f0, 0x1c($s1)
/* 558F0 80054CF0 C6200018 */  lwc1       $f0, 0x18($s1)
/* 558F4 80054CF4 C6220010 */  lwc1       $f2, 0x10($s1)
/* 558F8 80054CF8 46020001 */  sub.s      $f0, $f0, $f2
/* 558FC 80054CFC 46000000 */  add.s      $f0, $f0, $f0
/* 55900 80054D00 8622000A */  lh         $v0, 0xa($s1)
/* 55904 80054D04 24420001 */  addiu      $v0, $v0, 1
/* 55908 80054D08 00420018 */  mult       $v0, $v0
/* 5590C 80054D0C 00001012 */  mflo       $v0
/* 55910 80054D10 44821000 */  mtc1       $v0, $f2
/* 55914 80054D14 00000000 */  nop
/* 55918 80054D18 468010A0 */  cvt.s.w    $f2, $f2
/* 5591C 80054D1C 46020003 */  div.s      $f0, $f0, $f2
/* 55920 80054D20 E6200028 */  swc1       $f0, 0x28($s1)
/* 55924 80054D24 24020005 */  addiu      $v0, $zero, 5
/* 55928 80054D28 1642000E */  bne        $s2, $v0, .L80054D64
/* 5592C 80054D2C E6200020 */   swc1      $f0, 0x20($s1)
/* 55930 80054D30 3C03800E */  lui        $v1, %hi(D_800D84B8)
/* 55934 80054D34 246384B8 */  addiu      $v1, $v1, %lo(D_800D84B8)
/* 55938 80054D38 3C02800E */  lui        $v0, %hi(D_800D84C0)
/* 5593C 80054D3C 244284C0 */  addiu      $v0, $v0, %lo(D_800D84C0)
/* 55940 80054D40 C6200024 */  lwc1       $f0, 0x24($s1)
/* 55944 80054D44 E4400000 */  swc1       $f0, ($v0)
/* 55948 80054D48 E4600000 */  swc1       $f0, ($v1)
/* 5594C 80054D4C C6200028 */  lwc1       $f0, 0x28($s1)
/* 55950 80054D50 E4400004 */  swc1       $f0, 4($v0)
/* 55954 80054D54 E4600004 */  swc1       $f0, 4($v1)
/* 55958 80054D58 9622000A */  lhu        $v0, 0xa($s1)
/* 5595C 80054D5C 3C01800E */  lui        $at, %hi(D_800D84C8)
/* 55960 80054D60 A42284C8 */  sh         $v0, %lo(D_800D84C8)($at)
.L80054D64:
/* 55964 80054D64 26100001 */  addiu      $s0, $s0, 1
.L80054D68:
/* 55968 80054D68 2A020004 */  slti       $v0, $s0, 4
/* 5596C 80054D6C 1440FF27 */  bnez       $v0, .L80054A0C
/* 55970 80054D70 00101180 */   sll       $v0, $s0, 6
/* 55974 80054D74 3A430002 */  xori       $v1, $s2, 2
/* 55978 80054D78 2C630001 */  sltiu      $v1, $v1, 1
/* 5597C 80054D7C 326400FF */  andi       $a0, $s3, 0xff
/* 55980 80054D80 38820005 */  xori       $v0, $a0, 5
/* 55984 80054D84 0002102B */  sltu       $v0, $zero, $v0
/* 55988 80054D88 00621824 */  and        $v1, $v1, $v0
/* 5598C 80054D8C 1060005B */  beqz       $v1, .L80054EFC
/* 55990 80054D90 38820004 */   xori      $v0, $a0, 4
/* 55994 80054D94 2C420001 */  sltiu      $v0, $v0, 1
/* 55998 80054D98 2C830001 */  sltiu      $v1, $a0, 1
/* 5599C 80054D9C 00431025 */  or         $v0, $v0, $v1
/* 559A0 80054DA0 1040000D */  beqz       $v0, .L80054DD8
/* 559A4 80054DA4 00008021 */   addu      $s0, $zero, $zero
/* 559A8 80054DA8 00101040 */  sll        $v0, $s0, 1
.L80054DAC:
/* 559AC 80054DAC 00501021 */  addu       $v0, $v0, $s0
/* 559B0 80054DB0 00021100 */  sll        $v0, $v0, 4
/* 559B4 80054DB4 3C01800F */  lui        $at, %hi(D_800F32B0)
/* 559B8 80054DB8 00220821 */  addu       $at, $at, $v0
/* 559BC 80054DBC A03032B0 */  sb         $s0, %lo(D_800F32B0)($at)
/* 559C0 80054DC0 26100001 */  addiu      $s0, $s0, 1
/* 559C4 80054DC4 2A020004 */  slti       $v0, $s0, 4
/* 559C8 80054DC8 1440FFF8 */  bnez       $v0, .L80054DAC
/* 559CC 80054DCC 00101040 */   sll       $v0, $s0, 1
/* 559D0 80054DD0 080153C0 */  j          .L80054F00
/* 559D4 80054DD4 2643FFFA */   addiu     $v1, $s2, -6
.L80054DD8:
/* 559D8 80054DD8 326300FF */  andi       $v1, $s3, 0xff
/* 559DC 80054DDC 24020003 */  addiu      $v0, $zero, 3
/* 559E0 80054DE0 14620023 */  bne        $v1, $v0, .L80054E70
/* 559E4 80054DE4 00602821 */   addu      $a1, $v1, $zero
/* 559E8 80054DE8 00008021 */  addu       $s0, $zero, $zero
/* 559EC 80054DEC 27A40018 */  addiu      $a0, $sp, 0x18
/* 559F0 80054DF0 24060001 */  addiu      $a2, $zero, 1
/* 559F4 80054DF4 00901021 */  addu       $v0, $a0, $s0
.L80054DF8:
/* 559F8 80054DF8 90430000 */  lbu        $v1, ($v0)
/* 559FC 80054DFC 00031040 */  sll        $v0, $v1, 1
/* 55A00 80054E00 00431021 */  addu       $v0, $v0, $v1
/* 55A04 80054E04 00021100 */  sll        $v0, $v0, 4
/* 55A08 80054E08 3C01800F */  lui        $at, %hi(D_800F32B0)
/* 55A0C 80054E0C 00220821 */  addu       $at, $at, $v0
/* 55A10 80054E10 A02632B0 */  sb         $a2, %lo(D_800F32B0)($at)
/* 55A14 80054E14 26100001 */  addiu      $s0, $s0, 1
/* 55A18 80054E18 0205102A */  slt        $v0, $s0, $a1
/* 55A1C 80054E1C 1440FFF6 */  bnez       $v0, .L80054DF8
/* 55A20 80054E20 00901021 */   addu      $v0, $a0, $s0
/* 55A24 80054E24 328200FF */  andi       $v0, $s4, 0xff
/* 55A28 80054E28 00402821 */  addu       $a1, $v0, $zero
/* 55A2C 80054E2C 18400033 */  blez       $v0, .L80054EFC
/* 55A30 80054E30 00008021 */   addu      $s0, $zero, $zero
/* 55A34 80054E34 27A40020 */  addiu      $a0, $sp, 0x20
/* 55A38 80054E38 00901021 */  addu       $v0, $a0, $s0
.L80054E3C:
/* 55A3C 80054E3C 90430000 */  lbu        $v1, ($v0)
/* 55A40 80054E40 00031040 */  sll        $v0, $v1, 1
/* 55A44 80054E44 00431021 */  addu       $v0, $v0, $v1
/* 55A48 80054E48 00021100 */  sll        $v0, $v0, 4
/* 55A4C 80054E4C 3C01800F */  lui        $at, %hi(D_800F32B0)
/* 55A50 80054E50 00220821 */  addu       $at, $at, $v0
/* 55A54 80054E54 A02032B0 */  sb         $zero, %lo(D_800F32B0)($at)
/* 55A58 80054E58 26100001 */  addiu      $s0, $s0, 1
/* 55A5C 80054E5C 0205102A */  slt        $v0, $s0, $a1
/* 55A60 80054E60 1440FFF6 */  bnez       $v0, .L80054E3C
/* 55A64 80054E64 00901021 */   addu      $v0, $a0, $s0
/* 55A68 80054E68 080153C0 */  j          .L80054F00
/* 55A6C 80054E6C 2643FFFA */   addiu     $v1, $s2, -6
.L80054E70:
/* 55A70 80054E70 326200FF */  andi       $v0, $s3, 0xff
/* 55A74 80054E74 00402821 */  addu       $a1, $v0, $zero
/* 55A78 80054E78 1840000E */  blez       $v0, .L80054EB4
/* 55A7C 80054E7C 00008021 */   addu      $s0, $zero, $zero
/* 55A80 80054E80 27A40018 */  addiu      $a0, $sp, 0x18
/* 55A84 80054E84 00901021 */  addu       $v0, $a0, $s0
.L80054E88:
/* 55A88 80054E88 90430000 */  lbu        $v1, ($v0)
/* 55A8C 80054E8C 00031040 */  sll        $v0, $v1, 1
/* 55A90 80054E90 00431021 */  addu       $v0, $v0, $v1
/* 55A94 80054E94 00021100 */  sll        $v0, $v0, 4
/* 55A98 80054E98 3C01800F */  lui        $at, %hi(D_800F32B0)
/* 55A9C 80054E9C 00220821 */  addu       $at, $at, $v0
/* 55AA0 80054EA0 A02032B0 */  sb         $zero, %lo(D_800F32B0)($at)
/* 55AA4 80054EA4 26100001 */  addiu      $s0, $s0, 1
/* 55AA8 80054EA8 0205102A */  slt        $v0, $s0, $a1
/* 55AAC 80054EAC 1440FFF6 */  bnez       $v0, .L80054E88
/* 55AB0 80054EB0 00901021 */   addu      $v0, $a0, $s0
.L80054EB4:
/* 55AB4 80054EB4 328200FF */  andi       $v0, $s4, 0xff
/* 55AB8 80054EB8 00402821 */  addu       $a1, $v0, $zero
/* 55ABC 80054EBC 1840000F */  blez       $v0, .L80054EFC
/* 55AC0 80054EC0 00008021 */   addu      $s0, $zero, $zero
/* 55AC4 80054EC4 27A40020 */  addiu      $a0, $sp, 0x20
/* 55AC8 80054EC8 24060001 */  addiu      $a2, $zero, 1
/* 55ACC 80054ECC 00901021 */  addu       $v0, $a0, $s0
.L80054ED0:
/* 55AD0 80054ED0 90430000 */  lbu        $v1, ($v0)
/* 55AD4 80054ED4 00031040 */  sll        $v0, $v1, 1
/* 55AD8 80054ED8 00431021 */  addu       $v0, $v0, $v1
/* 55ADC 80054EDC 00021100 */  sll        $v0, $v0, 4
/* 55AE0 80054EE0 3C01800F */  lui        $at, %hi(D_800F32B0)
/* 55AE4 80054EE4 00220821 */  addu       $at, $at, $v0
/* 55AE8 80054EE8 A02632B0 */  sb         $a2, %lo(D_800F32B0)($at)
/* 55AEC 80054EEC 26100001 */  addiu      $s0, $s0, 1
/* 55AF0 80054EF0 0205102A */  slt        $v0, $s0, $a1
/* 55AF4 80054EF4 1440FFF6 */  bnez       $v0, .L80054ED0
/* 55AF8 80054EF8 00901021 */   addu      $v0, $a0, $s0
.L80054EFC:
/* 55AFC 80054EFC 2643FFFA */  addiu      $v1, $s2, -6
.L80054F00:
/* 55B00 80054F00 2C630002 */  sltiu      $v1, $v1, 2
/* 55B04 80054F04 3A420008 */  xori       $v0, $s2, 8
/* 55B08 80054F08 2C420001 */  sltiu      $v0, $v0, 1
/* 55B0C 80054F0C 00621825 */  or         $v1, $v1, $v0
/* 55B10 80054F10 54600005 */  bnel       $v1, $zero, .L80054F28
/* 55B14 80054F14 00008021 */   addu      $s0, $zero, $zero
/* 55B18 80054F18 24020009 */  addiu      $v0, $zero, 9
/* 55B1C 80054F1C 16420016 */  bne        $s2, $v0, .L80054F78
/* 55B20 80054F20 00001021 */   addu      $v0, $zero, $zero
/* 55B24 80054F24 00008021 */  addu       $s0, $zero, $zero
.L80054F28:
/* 55B28 80054F28 2643FFFA */  addiu      $v1, $s2, -6
/* 55B2C 80054F2C 24040001 */  addiu      $a0, $zero, 1
.L80054F30:
/* 55B30 80054F30 16030008 */  bne        $s0, $v1, .L80054F54
/* 55B34 80054F34 00101040 */   sll       $v0, $s0, 1
/* 55B38 80054F38 00501021 */  addu       $v0, $v0, $s0
/* 55B3C 80054F3C 00021100 */  sll        $v0, $v0, 4
/* 55B40 80054F40 3C01800F */  lui        $at, %hi(D_800F32B0)
/* 55B44 80054F44 00220821 */  addu       $at, $at, $v0
/* 55B48 80054F48 A02032B0 */  sb         $zero, %lo(D_800F32B0)($at)
/* 55B4C 80054F4C 080153DB */  j          .L80054F6C
/* 55B50 80054F50 26100001 */   addiu     $s0, $s0, 1
.L80054F54:
/* 55B54 80054F54 00501021 */  addu       $v0, $v0, $s0
/* 55B58 80054F58 00021100 */  sll        $v0, $v0, 4
/* 55B5C 80054F5C 3C01800F */  lui        $at, %hi(D_800F32B0)
/* 55B60 80054F60 00220821 */  addu       $at, $at, $v0
/* 55B64 80054F64 A02432B0 */  sb         $a0, %lo(D_800F32B0)($at)
/* 55B68 80054F68 26100001 */  addiu      $s0, $s0, 1
.L80054F6C:
/* 55B6C 80054F6C 2A020004 */  slti       $v0, $s0, 4
/* 55B70 80054F70 1440FFEF */  bnez       $v0, .L80054F30
/* 55B74 80054F74 00001021 */   addu      $v0, $zero, $zero
.L80054F78:
/* 55B78 80054F78 8FBF0074 */  lw         $ra, 0x74($sp)
/* 55B7C 80054F7C 8FBE0070 */  lw         $fp, 0x70($sp)
/* 55B80 80054F80 8FB7006C */  lw         $s7, 0x6c($sp)
/* 55B84 80054F84 8FB60068 */  lw         $s6, 0x68($sp)
/* 55B88 80054F88 8FB50064 */  lw         $s5, 0x64($sp)
/* 55B8C 80054F8C 8FB40060 */  lw         $s4, 0x60($sp)
/* 55B90 80054F90 8FB3005C */  lw         $s3, 0x5c($sp)
/* 55B94 80054F94 8FB20058 */  lw         $s2, 0x58($sp)
/* 55B98 80054F98 8FB10054 */  lw         $s1, 0x54($sp)
/* 55B9C 80054F9C 8FB00050 */  lw         $s0, 0x50($sp)
/* 55BA0 80054FA0 03E00008 */  jr         $ra
/* 55BA4 80054FA4 27BD0078 */   addiu     $sp, $sp, 0x78