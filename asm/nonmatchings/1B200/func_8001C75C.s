	.set noat
	.set noreorder

glabel func_8001C75C
/* 1D35C 8001C75C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1D360 8001C760 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1D364 8001C764 AFB40020 */  sw         $s4, 0x20($sp)
/* 1D368 8001C768 AFB3001C */  sw         $s3, 0x1c($sp)
/* 1D36C 8001C76C AFB20018 */  sw         $s2, 0x18($sp)
/* 1D370 8001C770 AFB10014 */  sw         $s1, 0x14($sp)
/* 1D374 8001C774 AFB00010 */  sw         $s0, 0x10($sp)
/* 1D378 8001C778 00808821 */  addu       $s1, $a0, $zero
/* 1D37C 8001C77C 00A08021 */  addu       $s0, $a1, $zero
/* 1D380 8001C780 00C09821 */  addu       $s3, $a2, $zero
/* 1D384 8001C784 92030000 */  lbu        $v1, ($s0)
/* 1D388 8001C788 24020016 */  addiu      $v0, $zero, 0x16
/* 1D38C 8001C78C 10620007 */  beq        $v1, $v0, .L8001C7AC
/* 1D390 8001C790 00E0A021 */   addu      $s4, $a3, $zero
/* 1D394 8001C794 24020035 */  addiu      $v0, $zero, 0x35
/* 1D398 8001C798 14620007 */  bne        $v1, $v0, .L8001C7B8
/* 1D39C 8001C79C 24120002 */   addiu     $s2, $zero, 2
/* 1D3A0 8001C7A0 24120004 */  addiu      $s2, $zero, 4
/* 1D3A4 8001C7A4 080071EF */  j          .L8001C7BC
/* 1D3A8 8001C7A8 2402000C */   addiu     $v0, $zero, 0xc
.L8001C7AC:
/* 1D3AC 8001C7AC 24120003 */  addiu      $s2, $zero, 3
/* 1D3B0 8001C7B0 080071EF */  j          .L8001C7BC
/* 1D3B4 8001C7B4 2402000C */   addiu     $v0, $zero, 0xc
.L8001C7B8:
/* 1D3B8 8001C7B8 24020004 */  addiu      $v0, $zero, 4
.L8001C7BC:
/* 1D3BC 8001C7BC A2320000 */  sb         $s2, ($s1)
/* 1D3C0 8001C7C0 26100001 */  addiu      $s0, $s0, 1
/* 1D3C4 8001C7C4 2627000C */  addiu      $a3, $s1, 0xc
/* 1D3C8 8001C7C8 2626001C */  addiu      $a2, $s1, 0x1c
/* 1D3CC 8001C7CC 00002821 */  addu       $a1, $zero, $zero
/* 1D3D0 8001C7D0 1240003A */  beqz       $s2, .L8001C8BC
/* 1D3D4 8001C7D4 00004021 */   addu      $t0, $zero, $zero
/* 1D3D8 8001C7D8 240B00FF */  addiu      $t3, $zero, 0xff
/* 1D3DC 8001C7DC 00405021 */  addu       $t2, $v0, $zero
/* 1D3E0 8001C7E0 02404821 */  addu       $t1, $s2, $zero
.L8001C7E4:
/* 1D3E4 8001C7E4 00052400 */  sll        $a0, $a1, 0x10
/* 1D3E8 8001C7E8 000423C3 */  sra        $a0, $a0, 0xf
/* 1D3EC 8001C7EC 00912021 */  addu       $a0, $a0, $s1
/* 1D3F0 8001C7F0 92030000 */  lbu        $v1, ($s0)
/* 1D3F4 8001C7F4 00031A00 */  sll        $v1, $v1, 8
/* 1D3F8 8001C7F8 92020001 */  lbu        $v0, 1($s0)
/* 1D3FC 8001C7FC 00431021 */  addu       $v0, $v0, $v1
/* 1D400 8001C800 A4820004 */  sh         $v0, 4($a0)
/* 1D404 8001C804 92020003 */  lbu        $v0, 3($s0)
/* 1D408 8001C808 544B0001 */  bnel       $v0, $t3, .L8001C810
/* 1D40C 8001C80C 2408FFFF */   addiu     $t0, $zero, -1
.L8001C810:
/* 1D410 8001C810 00052400 */  sll        $a0, $a1, 0x10
/* 1D414 8001C814 00042403 */  sra        $a0, $a0, 0x10
/* 1D418 8001C818 02241821 */  addu       $v1, $s1, $a0
/* 1D41C 8001C81C 92020003 */  lbu        $v0, 3($s0)
/* 1D420 8001C820 A062002C */  sb         $v0, 0x2c($v1)
/* 1D424 8001C824 92030004 */  lbu        $v1, 4($s0)
/* 1D428 8001C828 00031E00 */  sll        $v1, $v1, 0x18
/* 1D42C 8001C82C 92020005 */  lbu        $v0, 5($s0)
/* 1D430 8001C830 00021400 */  sll        $v0, $v0, 0x10
/* 1D434 8001C834 00621821 */  addu       $v1, $v1, $v0
/* 1D438 8001C838 92020006 */  lbu        $v0, 6($s0)
/* 1D43C 8001C83C 00021200 */  sll        $v0, $v0, 8
/* 1D440 8001C840 00621821 */  addu       $v1, $v1, $v0
/* 1D444 8001C844 92020007 */  lbu        $v0, 7($s0)
/* 1D448 8001C848 00621021 */  addu       $v0, $v1, $v0
/* 1D44C 8001C84C ACE20000 */  sw         $v0, ($a3)
/* 1D450 8001C850 24E70004 */  addiu      $a3, $a3, 4
/* 1D454 8001C854 92030008 */  lbu        $v1, 8($s0)
/* 1D458 8001C858 00031E00 */  sll        $v1, $v1, 0x18
/* 1D45C 8001C85C 92020009 */  lbu        $v0, 9($s0)
/* 1D460 8001C860 00021400 */  sll        $v0, $v0, 0x10
/* 1D464 8001C864 00621821 */  addu       $v1, $v1, $v0
/* 1D468 8001C868 9202000A */  lbu        $v0, 0xa($s0)
/* 1D46C 8001C86C 00021200 */  sll        $v0, $v0, 8
/* 1D470 8001C870 00621821 */  addu       $v1, $v1, $v0
/* 1D474 8001C874 9202000B */  lbu        $v0, 0xb($s0)
/* 1D478 8001C878 00621021 */  addu       $v0, $v1, $v0
/* 1D47C 8001C87C ACC20000 */  sw         $v0, ($a2)
/* 1D480 8001C880 24C60004 */  addiu      $a2, $a2, 4
/* 1D484 8001C884 00042040 */  sll        $a0, $a0, 1
/* 1D488 8001C888 00912021 */  addu       $a0, $a0, $s1
/* 1D48C 8001C88C 92030000 */  lbu        $v1, ($s0)
/* 1D490 8001C890 00031A00 */  sll        $v1, $v1, 8
/* 1D494 8001C894 92020001 */  lbu        $v0, 1($s0)
/* 1D498 8001C898 00431021 */  addu       $v0, $v0, $v1
/* 1D49C 8001C89C A4820004 */  sh         $v0, 4($a0)
/* 1D4A0 8001C8A0 24A20001 */  addiu      $v0, $a1, 1
/* 1D4A4 8001C8A4 00402821 */  addu       $a1, $v0, $zero
/* 1D4A8 8001C8A8 00021400 */  sll        $v0, $v0, 0x10
/* 1D4AC 8001C8AC 00021403 */  sra        $v0, $v0, 0x10
/* 1D4B0 8001C8B0 0049102A */  slt        $v0, $v0, $t1
/* 1D4B4 8001C8B4 1440FFCB */  bnez       $v0, .L8001C7E4
/* 1D4B8 8001C8B8 020A8021 */   addu      $s0, $s0, $t2
.L8001C8BC:
/* 1D4BC 8001C8BC 92020000 */  lbu        $v0, ($s0)
/* 1D4C0 8001C8C0 00021200 */  sll        $v0, $v0, 8
/* 1D4C4 8001C8C4 92030001 */  lbu        $v1, 1($s0)
/* 1D4C8 8001C8C8 00621821 */  addu       $v1, $v1, $v0
/* 1D4CC 8001C8CC 00081400 */  sll        $v0, $t0, 0x10
/* 1D4D0 8001C8D0 10400004 */  beqz       $v0, .L8001C8E4
/* 1D4D4 8001C8D4 A6230030 */   sh        $v1, 0x30($s1)
/* 1D4D8 8001C8D8 92220000 */  lbu        $v0, ($s1)
/* 1D4DC 8001C8DC 34420080 */  ori        $v0, $v0, 0x80
/* 1D4E0 8001C8E0 A2220000 */  sb         $v0, ($s1)
.L8001C8E4:
/* 1D4E4 8001C8E4 86220004 */  lh         $v0, 4($s1)
/* 1D4E8 8001C8E8 00022840 */  sll        $a1, $v0, 1
/* 1D4EC 8001C8EC 00A22821 */  addu       $a1, $a1, $v0
/* 1D4F0 8001C8F0 00052840 */  sll        $a1, $a1, 1
/* 1D4F4 8001C8F4 8E630078 */  lw         $v1, 0x78($s3)
/* 1D4F8 8001C8F8 86220006 */  lh         $v0, 6($s1)
/* 1D4FC 8001C8FC 00023040 */  sll        $a2, $v0, 1
/* 1D500 8001C900 00C23021 */  addu       $a2, $a2, $v0
/* 1D504 8001C904 00063040 */  sll        $a2, $a2, 1
/* 1D508 8001C908 86220008 */  lh         $v0, 8($s1)
/* 1D50C 8001C90C 00023840 */  sll        $a3, $v0, 1
/* 1D510 8001C910 00E23821 */  addu       $a3, $a3, $v0
/* 1D514 8001C914 00073840 */  sll        $a3, $a3, 1
/* 1D518 8001C918 26240001 */  addiu      $a0, $s1, 1
/* 1D51C 8001C91C 00A32821 */  addu       $a1, $a1, $v1
/* 1D520 8001C920 00C33021 */  addu       $a2, $a2, $v1
/* 1D524 8001C924 0C00727D */  jal        func_8001C9F4
/* 1D528 8001C928 00E33821 */   addu      $a3, $a3, $v1
/* 1D52C 8001C92C 8E62004C */  lw         $v0, 0x4c($s3)
/* 1D530 8001C930 10400028 */  beqz       $v0, .L8001C9D4
/* 1D534 8001C934 00000000 */   nop
/* 1D538 8001C938 86230030 */  lh         $v1, 0x30($s1)
/* 1D53C 8001C93C 8E6400A8 */  lw         $a0, 0xa8($s3)
/* 1D540 8001C940 000310C0 */  sll        $v0, $v1, 3
/* 1D544 8001C944 00431023 */  subu       $v0, $v0, $v1
/* 1D548 8001C948 00021040 */  sll        $v0, $v0, 1
/* 1D54C 8001C94C 00441021 */  addu       $v0, $v0, $a0
/* 1D550 8001C950 9042000C */  lbu        $v0, 0xc($v0)
/* 1D554 8001C954 96830000 */  lhu        $v1, ($s4)
/* 1D558 8001C958 00431025 */  or         $v0, $v0, $v1
/* 1D55C 8001C95C A6820000 */  sh         $v0, ($s4)
/* 1D560 8001C960 02401821 */  addu       $v1, $s2, $zero
/* 1D564 8001C964 24020002 */  addiu      $v0, $zero, 2
/* 1D568 8001C968 14620003 */  bne        $v1, $v0, .L8001C978
/* 1D56C 8001C96C 2402FFFF */   addiu     $v0, $zero, -1
/* 1D570 8001C970 08007275 */  j          .L8001C9D4
/* 1D574 8001C974 A6220032 */   sh        $v0, 0x32($s1)
.L8001C978:
/* 1D578 8001C978 92020002 */  lbu        $v0, 2($s0)
/* 1D57C 8001C97C 00021200 */  sll        $v0, $v0, 8
/* 1D580 8001C980 92030003 */  lbu        $v1, 3($s0)
/* 1D584 8001C984 00621821 */  addu       $v1, $v1, $v0
/* 1D588 8001C988 A6230032 */  sh         $v1, 0x32($s1)
/* 1D58C 8001C98C 00031C00 */  sll        $v1, $v1, 0x10
/* 1D590 8001C990 00031C03 */  sra        $v1, $v1, 0x10
/* 1D594 8001C994 2402FFFF */  addiu      $v0, $zero, -1
/* 1D598 8001C998 1062000E */  beq        $v1, $v0, .L8001C9D4
/* 1D59C 8001C99C 00031900 */   sll       $v1, $v1, 4
/* 1D5A0 8001C9A0 8E6200A4 */  lw         $v0, 0xa4($s3)
/* 1D5A4 8001C9A4 00621821 */  addu       $v1, $v1, $v0
/* 1D5A8 8001C9A8 8C63000C */  lw         $v1, 0xc($v1)
/* 1D5AC 8001C9AC 90620018 */  lbu        $v0, 0x18($v1)
/* 1D5B0 8001C9B0 24040003 */  addiu      $a0, $zero, 3
/* 1D5B4 8001C9B4 10440004 */  beq        $v0, $a0, .L8001C9C8
/* 1D5B8 8001C9B8 00000000 */   nop
/* 1D5BC 8001C9BC 90620019 */  lbu        $v0, 0x19($v1)
/* 1D5C0 8001C9C0 14440004 */  bne        $v0, $a0, .L8001C9D4
/* 1D5C4 8001C9C4 00000000 */   nop
.L8001C9C8:
/* 1D5C8 8001C9C8 96820000 */  lhu        $v0, ($s4)
/* 1D5CC 8001C9CC 34420001 */  ori        $v0, $v0, 1
/* 1D5D0 8001C9D0 A6820000 */  sh         $v0, ($s4)
.L8001C9D4:
/* 1D5D4 8001C9D4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1D5D8 8001C9D8 8FB40020 */  lw         $s4, 0x20($sp)
/* 1D5DC 8001C9DC 8FB3001C */  lw         $s3, 0x1c($sp)
/* 1D5E0 8001C9E0 8FB20018 */  lw         $s2, 0x18($sp)
/* 1D5E4 8001C9E4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1D5E8 8001C9E8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1D5EC 8001C9EC 03E00008 */  jr         $ra
/* 1D5F0 8001C9F0 27BD0028 */   addiu     $sp, $sp, 0x28