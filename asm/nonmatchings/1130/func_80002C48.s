	.set noat
	.set noreorder

glabel func_80002C48
/* 3848 80002C48 27BDFF68 */  addiu      $sp, $sp, -0x98
/* 384C 80002C4C AFBF0064 */  sw         $ra, 0x64($sp)
/* 3850 80002C50 AFB60060 */  sw         $s6, 0x60($sp)
/* 3854 80002C54 AFB5005C */  sw         $s5, 0x5c($sp)
/* 3858 80002C58 AFB40058 */  sw         $s4, 0x58($sp)
/* 385C 80002C5C AFB30054 */  sw         $s3, 0x54($sp)
/* 3860 80002C60 AFB20050 */  sw         $s2, 0x50($sp)
/* 3864 80002C64 AFB1004C */  sw         $s1, 0x4c($sp)
/* 3868 80002C68 AFB00048 */  sw         $s0, 0x48($sp)
/* 386C 80002C6C F7BE0090 */  sdc1       $f30, 0x90($sp)
/* 3870 80002C70 F7BC0088 */  sdc1       $f28, 0x88($sp)
/* 3874 80002C74 F7BA0080 */  sdc1       $f26, 0x80($sp)
/* 3878 80002C78 F7B80078 */  sdc1       $f24, 0x78($sp)
/* 387C 80002C7C F7B60070 */  sdc1       $f22, 0x70($sp)
/* 3880 80002C80 F7B40068 */  sdc1       $f20, 0x68($sp)
/* 3884 80002C84 0080A021 */  addu       $s4, $a0, $zero
/* 3888 80002C88 4485F000 */  mtc1       $a1, $f30
/* 388C 80002C8C 00C08021 */  addu       $s0, $a2, $zero
/* 3890 80002C90 4487D000 */  mtc1       $a3, $f26
/* 3894 80002C94 2415FFFF */  addiu      $s5, $zero, -1
/* 3898 80002C98 8E920050 */  lw         $s2, 0x50($s4)
/* 389C 80002C9C A2550054 */  sb         $s5, 0x54($s2)
/* 38A0 80002CA0 A2550053 */  sb         $s5, 0x53($s2)
/* 38A4 80002CA4 C6420040 */  lwc1       $f2, 0x40($s2)
/* 38A8 80002CA8 C64400A4 */  lwc1       $f4, 0xa4($s2)
/* 38AC 80002CAC 96420050 */  lhu        $v0, 0x50($s2)
/* 38B0 80002CB0 30420006 */  andi       $v0, $v0, 6
/* 38B4 80002CB4 10400008 */  beqz       $v0, .L80002CD8
/* 38B8 80002CB8 0000B021 */   addu      $s6, $zero, $zero
/* 38BC 80002CBC 3C013F19 */  lui        $at, 0x3f19
/* 38C0 80002CC0 3421999A */  ori        $at, $at, 0x999a
/* 38C4 80002CC4 44810000 */  mtc1       $at, $f0
/* 38C8 80002CC8 00000000 */  nop
/* 38CC 80002CCC 46001502 */  mul.s      $f20, $f2, $f0
/* 38D0 80002CD0 08000B38 */  j          .L80002CE0
/* 38D4 80002CD4 4604A502 */   mul.s     $f20, $f20, $f4
.L80002CD8:
/* 38D8 80002CD8 00000000 */  nop
/* 38DC 80002CDC 46041502 */  mul.s      $f20, $f2, $f4
.L80002CE0:
/* 38E0 80002CE0 C6440084 */  lwc1       $f4, 0x84($s2)
/* 38E4 80002CE4 46002021 */  cvt.d.s    $f0, $f4
/* 38E8 80002CE8 46200005 */  abs.d      $f0, $f0
/* 38EC 80002CEC 3C01800D */  lui        $at, %hi(D_800C9E80)
/* 38F0 80002CF0 D4229E80 */  ldc1       $f2, %lo(D_800C9E80)($at)
/* 38F4 80002CF4 4620103C */  c.lt.d     $f2, $f0
/* 38F8 80002CF8 00000000 */  nop
/* 38FC 80002CFC 45000006 */  bc1f       .L80002D18
/* 3900 80002D00 00000000 */   nop
/* 3904 80002D04 3C01800F */  lui        $at, %hi(D_800ED6B8)
/* 3908 80002D08 C420D6B8 */  lwc1       $f0, %lo(D_800ED6B8)($at)
/* 390C 80002D0C 46040000 */  add.s      $f0, $f0, $f4
/* 3910 80002D10 3C01800F */  lui        $at, %hi(D_800ED6B8)
/* 3914 80002D14 E420D6B8 */  swc1       $f0, %lo(D_800ED6B8)($at)
.L80002D18:
/* 3918 80002D18 C644008C */  lwc1       $f4, 0x8c($s2)
/* 391C 80002D1C 46002021 */  cvt.d.s    $f0, $f4
/* 3920 80002D20 46200005 */  abs.d      $f0, $f0
/* 3924 80002D24 3C01800D */  lui        $at, %hi(D_800C9E88)
/* 3928 80002D28 D4229E88 */  ldc1       $f2, %lo(D_800C9E88)($at)
/* 392C 80002D2C 4620103C */  c.lt.d     $f2, $f0
/* 3930 80002D30 00000000 */  nop
/* 3934 80002D34 45000006 */  bc1f       .L80002D50
/* 3938 80002D38 00000000 */   nop
/* 393C 80002D3C 3C01800F */  lui        $at, %hi(D_800F5254)
/* 3940 80002D40 C4205254 */  lwc1       $f0, %lo(D_800F5254)($at)
/* 3944 80002D44 46040000 */  add.s      $f0, $f0, $f4
/* 3948 80002D48 3C01800F */  lui        $at, %hi(D_800F5254)
/* 394C 80002D4C E4205254 */  swc1       $f0, %lo(D_800F5254)($at)
.L80002D50:
/* 3950 80002D50 0C02BAB0 */  jal        func_800AEAC0
/* 3954 80002D54 4600F306 */   mov.s     $f12, $f30
/* 3958 80002D58 46140002 */  mul.s      $f0, $f0, $f20
/* 395C 80002D5C 44903000 */  mtc1       $s0, $f6
/* 3960 80002D60 00000000 */  nop
/* 3964 80002D64 46003700 */  add.s      $f28, $f6, $f0
/* 3968 80002D68 3C01800F */  lui        $at, %hi(D_800ED6B8)
/* 396C 80002D6C C420D6B8 */  lwc1       $f0, %lo(D_800ED6B8)($at)
/* 3970 80002D70 4600E700 */  add.s      $f28, $f28, $f0
/* 3974 80002D74 0C02BBF4 */  jal        func_800AEFD0
/* 3978 80002D78 4600F306 */   mov.s     $f12, $f30
/* 397C 80002D7C 46140002 */  mul.s      $f0, $f0, $f20
/* 3980 80002D80 C7A600A8 */  lwc1       $f6, 0xa8($sp)
/* 3984 80002D84 46003500 */  add.s      $f20, $f6, $f0
/* 3988 80002D88 3C01800F */  lui        $at, %hi(D_800F5254)
/* 398C 80002D8C C4205254 */  lwc1       $f0, %lo(D_800F5254)($at)
/* 3990 80002D90 4600A500 */  add.s      $f20, $f20, $f0
/* 3994 80002D94 3C01C780 */  lui        $at, 0xc780
/* 3998 80002D98 4481C000 */  mtc1       $at, $f24
/* 399C 80002D9C 00000000 */  nop
/* 39A0 80002DA0 4600C586 */  mov.s      $f22, $f24
/* 39A4 80002DA4 4405E000 */  mfc1       $a1, $f28
/* 39A8 80002DA8 4406D000 */  mfc1       $a2, $f26
/* 39AC 80002DAC 4407A000 */  mfc1       $a3, $f20
/* 39B0 80002DB0 00000000 */  nop
/* 39B4 80002DB4 0C0003CF */  jal        func_80000F3C
/* 39B8 80002DB8 02802021 */   addu      $a0, $s4, $zero
/* 39BC 80002DBC 24030002 */  addiu      $v1, $zero, 2
/* 39C0 80002DC0 1043013C */  beq        $v0, $v1, .L800032B4
/* 39C4 80002DC4 02802021 */   addu      $a0, $s4, $zero
/* 39C8 80002DC8 0C0007E1 */  jal        func_80001F84
/* 39CC 80002DCC 02802021 */   addu      $a0, $s4, $zero
/* 39D0 80002DD0 C6420040 */  lwc1       $f2, 0x40($s2)
/* 39D4 80002DD4 C64400A4 */  lwc1       $f4, 0xa4($s2)
/* 39D8 80002DD8 96420050 */  lhu        $v0, 0x50($s2)
/* 39DC 80002DDC 30420006 */  andi       $v0, $v0, 6
/* 39E0 80002DE0 50400008 */  beql       $v0, $zero, .L80002E04
/* 39E4 80002DE4 46041502 */   mul.s     $f20, $f2, $f4
/* 39E8 80002DE8 3C013F19 */  lui        $at, 0x3f19
/* 39EC 80002DEC 3421999A */  ori        $at, $at, 0x999a
/* 39F0 80002DF0 44810000 */  mtc1       $at, $f0
/* 39F4 80002DF4 00000000 */  nop
/* 39F8 80002DF8 46001502 */  mul.s      $f20, $f2, $f0
/* 39FC 80002DFC 00000000 */  nop
/* 3A00 80002E00 4604A502 */  mul.s      $f20, $f20, $f4
.L80002E04:
/* 3A04 80002E04 0C02BAB0 */  jal        func_800AEAC0
/* 3A08 80002E08 4600F306 */   mov.s     $f12, $f30
/* 3A0C 80002E0C 46140002 */  mul.s      $f0, $f0, $f20
/* 3A10 80002E10 44903000 */  mtc1       $s0, $f6
/* 3A14 80002E14 00000000 */  nop
/* 3A18 80002E18 46003700 */  add.s      $f28, $f6, $f0
/* 3A1C 80002E1C 0C02BBF4 */  jal        func_800AEFD0
/* 3A20 80002E20 4600F306 */   mov.s     $f12, $f30
/* 3A24 80002E24 46140002 */  mul.s      $f0, $f0, $f20
/* 3A28 80002E28 C7A600A8 */  lwc1       $f6, 0xa8($sp)
/* 3A2C 80002E2C 46003500 */  add.s      $f20, $f6, $f0
/* 3A30 80002E30 3C01800F */  lui        $at, %hi(D_800ED6B8)
/* 3A34 80002E34 C420D6B8 */  lwc1       $f0, %lo(D_800ED6B8)($at)
/* 3A38 80002E38 4600E000 */  add.s      $f0, $f28, $f0
/* 3A3C 80002E3C E7A00018 */  swc1       $f0, 0x18($sp)
/* 3A40 80002E40 E7BA001C */  swc1       $f26, 0x1c($sp)
/* 3A44 80002E44 3C01800F */  lui        $at, %hi(D_800F5254)
/* 3A48 80002E48 C4205254 */  lwc1       $f0, %lo(D_800F5254)($at)
/* 3A4C 80002E4C 4600A000 */  add.s      $f0, $f20, $f0
/* 3A50 80002E50 E7A00020 */  swc1       $f0, 0x20($sp)
/* 3A54 80002E54 C6400048 */  lwc1       $f0, 0x48($s2)
/* 3A58 80002E58 E7A00024 */  swc1       $f0, 0x24($sp)
/* 3A5C 80002E5C 02802021 */  addu       $a0, $s4, $zero
/* 3A60 80002E60 27A50018 */  addiu      $a1, $sp, 0x18
/* 3A64 80002E64 0C001347 */  jal        func_80004D1C
/* 3A68 80002E68 00003021 */   addu      $a2, $zero, $zero
/* 3A6C 80002E6C 0C0007E1 */  jal        func_80001F84
/* 3A70 80002E70 02802021 */   addu      $a0, $s4, $zero
/* 3A74 80002E74 3C01800F */  lui        $at, %hi(D_800ED6B8)
/* 3A78 80002E78 C420D6B8 */  lwc1       $f0, %lo(D_800ED6B8)($at)
/* 3A7C 80002E7C 4600E000 */  add.s      $f0, $f28, $f0
/* 3A80 80002E80 E7A00018 */  swc1       $f0, 0x18($sp)
/* 3A84 80002E84 E7BA001C */  swc1       $f26, 0x1c($sp)
/* 3A88 80002E88 3C01800F */  lui        $at, %hi(D_800F5254)
/* 3A8C 80002E8C C4205254 */  lwc1       $f0, %lo(D_800F5254)($at)
/* 3A90 80002E90 4600A000 */  add.s      $f0, $f20, $f0
/* 3A94 80002E94 E7A00020 */  swc1       $f0, 0x20($sp)
/* 3A98 80002E98 3C03800C */  lui        $v1, %hi(D_800B8954)
/* 3A9C 80002E9C 90638954 */  lbu        $v1, %lo(D_800B8954)($v1)
/* 3AA0 80002EA0 02431021 */  addu       $v0, $s2, $v1
/* 3AA4 80002EA4 90420000 */  lbu        $v0, ($v0)
/* 3AA8 80002EA8 30420001 */  andi       $v0, $v0, 1
/* 3AAC 80002EAC 1440008B */  bnez       $v0, .L800030DC
/* 3AB0 80002EB0 00031080 */   sll       $v0, $v1, 2
/* 3AB4 80002EB4 3C01800F */  lui        $at, %hi(D_800F2AF8)
/* 3AB8 80002EB8 00220821 */  addu       $at, $at, $v0
/* 3ABC 80002EBC 8C222AF8 */  lw         $v0, %lo(D_800F2AF8)($at)
/* 3AC0 80002EC0 8C500050 */  lw         $s0, 0x50($v0)
/* 3AC4 80002EC4 92020001 */  lbu        $v0, 1($s0)
/* 3AC8 80002EC8 3042001A */  andi       $v0, $v0, 0x1a
/* 3ACC 80002ECC 1040002B */  beqz       $v0, .L80002F7C
/* 3AD0 80002ED0 27A40018 */   addiu     $a0, $sp, 0x18
/* 3AD4 80002ED4 0C002A44 */  jal        func_8000A910
/* 3AD8 80002ED8 02002821 */   addu      $a1, $s0, $zero
/* 3ADC 80002EDC 24030001 */  addiu      $v1, $zero, 1
/* 3AE0 80002EE0 1443007E */  bne        $v0, $v1, .L800030DC
/* 3AE4 80002EE4 00000000 */   nop
/* 3AE8 80002EE8 C6020010 */  lwc1       $f2, 0x10($s0)
/* 3AEC 80002EEC 4602B03C */  c.lt.s     $f22, $f2
/* 3AF0 80002EF0 00000000 */  nop
/* 3AF4 80002EF4 45000079 */  bc1f       .L800030DC
/* 3AF8 80002EF8 00000000 */   nop
/* 3AFC 80002EFC 3C014316 */  lui        $at, 0x4316
/* 3B00 80002F00 44810000 */  mtc1       $at, $f0
/* 3B04 80002F04 00000000 */  nop
/* 3B08 80002F08 4600D000 */  add.s      $f0, $f26, $f0
/* 3B0C 80002F0C 4600103C */  c.lt.s     $f2, $f0
/* 3B10 80002F10 00000000 */  nop
/* 3B14 80002F14 45000071 */  bc1f       .L800030DC
/* 3B18 80002F18 00000000 */   nop
/* 3B1C 80002F1C 46001586 */  mov.s      $f22, $f2
/* 3B20 80002F20 3C15800C */  lui        $s5, %hi(D_800B8954)
/* 3B24 80002F24 92B58954 */  lbu        $s5, %lo(D_800B8954)($s5)
/* 3B28 80002F28 4616C03C */  c.lt.s     $f24, $f22
/* 3B2C 80002F2C 00000000 */  nop
/* 3B30 80002F30 4500006A */  bc1f       .L800030DC
/* 3B34 80002F34 00000000 */   nop
/* 3B38 80002F38 3C01420C */  lui        $at, 0x420c
/* 3B3C 80002F3C 44810000 */  mtc1       $at, $f0
/* 3B40 80002F40 00000000 */  nop
/* 3B44 80002F44 4600D000 */  add.s      $f0, $f26, $f0
/* 3B48 80002F48 4600C03C */  c.lt.s     $f24, $f0
/* 3B4C 80002F4C 00000000 */  nop
/* 3B50 80002F50 45000062 */  bc1f       .L800030DC
/* 3B54 80002F54 00000000 */   nop
/* 3B58 80002F58 4600B606 */  mov.s      $f24, $f22
/* 3B5C 80002F5C AFA00028 */  sw         $zero, 0x28($sp)
/* 3B60 80002F60 3C013F80 */  lui        $at, 0x3f80
/* 3B64 80002F64 44810000 */  mtc1       $at, $f0
/* 3B68 80002F68 00000000 */  nop
/* 3B6C 80002F6C E7A0002C */  swc1       $f0, 0x2c($sp)
/* 3B70 80002F70 AFA00030 */  sw         $zero, 0x30($sp)
/* 3B74 80002F74 08000C37 */  j          .L800030DC
/* 3B78 80002F78 27B60028 */   addiu     $s6, $sp, 0x28
.L80002F7C:
/* 3B7C 80002F7C 3C02800C */  lui        $v0, %hi(D_800B8954)
/* 3B80 80002F80 90428954 */  lbu        $v0, %lo(D_800B8954)($v0)
/* 3B84 80002F84 00021080 */  sll        $v0, $v0, 2
/* 3B88 80002F88 3C01800F */  lui        $at, %hi(D_800F2AF8)
/* 3B8C 80002F8C 00220821 */  addu       $at, $at, $v0
/* 3B90 80002F90 8C222AF8 */  lw         $v0, %lo(D_800F2AF8)($at)
/* 3B94 80002F94 8C420040 */  lw         $v0, 0x40($v0)
/* 3B98 80002F98 84440000 */  lh         $a0, ($v0)
/* 3B9C 80002F9C 3C03800F */  lui        $v1, %hi(D_800F2B7C)
/* 3BA0 80002FA0 8C632B7C */  lw         $v1, %lo(D_800F2B7C)($v1)
/* 3BA4 80002FA4 00041040 */  sll        $v0, $a0, 1
/* 3BA8 80002FA8 00441021 */  addu       $v0, $v0, $a0
/* 3BAC 80002FAC 00021180 */  sll        $v0, $v0, 6
/* 3BB0 80002FB0 00431021 */  addu       $v0, $v0, $v1
/* 3BB4 80002FB4 8C42006C */  lw         $v0, 0x6c($v0)
/* 3BB8 80002FB8 8C510078 */  lw         $s1, 0x78($v0)
/* 3BBC 80002FBC 3C05800F */  lui        $a1, %hi(D_800EDEC0)
/* 3BC0 80002FC0 24A5DEC0 */  addiu      $a1, $a1, %lo(D_800EDEC0)
/* 3BC4 80002FC4 3C068000 */  lui        $a2, %hi(func_80002060)
/* 3BC8 80002FC8 24C62060 */  addiu      $a2, $a2, %lo(func_80002060)
/* 3BCC 80002FCC 0C00AB89 */  jal        func_8002AE24
/* 3BD0 80002FD0 27A70018 */   addiu     $a3, $sp, 0x18
/* 3BD4 80002FD4 3C04800F */  lui        $a0, %hi(D_800EDEC0)
/* 3BD8 80002FD8 0C00ACEA */  jal        func_8002B3A8
/* 3BDC 80002FDC 2484DEC0 */   addiu     $a0, $a0, %lo(D_800EDEC0)
/* 3BE0 80002FE0 00408021 */  addu       $s0, $v0, $zero
/* 3BE4 80002FE4 12000035 */  beqz       $s0, .L800030BC
/* 3BE8 80002FE8 00000000 */   nop
/* 3BEC 80002FEC 3C01420C */  lui        $at, 0x420c
/* 3BF0 80002FF0 4481F000 */  mtc1       $at, $f30
/* 3BF4 80002FF4 27B30028 */  addiu      $s3, $sp, 0x28
/* 3BF8 80002FF8 AFB00010 */  sw         $s0, 0x10($sp)
.L80002FFC:
/* 3BFC 80002FFC 4600E306 */  mov.s      $f12, $f28
/* 3C00 80003000 4600D386 */  mov.s      $f14, $f26
/* 3C04 80003004 4406A000 */  mfc1       $a2, $f20
/* 3C08 80003008 00000000 */  nop
/* 3C0C 8000300C 0C00A5D9 */  jal        func_80029764
/* 3C10 80003010 02203821 */   addu      $a3, $s1, $zero
/* 3C14 80003014 46000086 */  mov.s      $f2, $f0
/* 3C18 80003018 4602B03C */  c.lt.s     $f22, $f2
/* 3C1C 8000301C 00000000 */  nop
/* 3C20 80003020 45000004 */  bc1f       .L80003034
/* 3C24 80003024 00000000 */   nop
/* 3C28 80003028 46001586 */  mov.s      $f22, $f2
/* 3C2C 8000302C 3C15800C */  lui        $s5, %hi(D_800B8954)
/* 3C30 80003030 92B58954 */  lbu        $s5, %lo(D_800B8954)($s5)
.L80003034:
/* 3C34 80003034 4602C03C */  c.lt.s     $f24, $f2
/* 3C38 80003038 00000000 */  nop
/* 3C3C 8000303C 45000019 */  bc1f       .L800030A4
/* 3C40 80003040 00000000 */   nop
/* 3C44 80003044 461ED000 */  add.s      $f0, $f26, $f30
/* 3C48 80003048 4600C03C */  c.lt.s     $f24, $f0
/* 3C4C 8000304C 00000000 */  nop
/* 3C50 80003050 45000014 */  bc1f       .L800030A4
/* 3C54 80003054 00000000 */   nop
/* 3C58 80003058 46001606 */  mov.s      $f24, $f2
/* 3C5C 8000305C 86020002 */  lh         $v0, 2($s0)
/* 3C60 80003060 00022040 */  sll        $a0, $v0, 1
/* 3C64 80003064 00822021 */  addu       $a0, $a0, $v0
/* 3C68 80003068 00042040 */  sll        $a0, $a0, 1
/* 3C6C 8000306C 86020004 */  lh         $v0, 4($s0)
/* 3C70 80003070 00022840 */  sll        $a1, $v0, 1
/* 3C74 80003074 00A22821 */  addu       $a1, $a1, $v0
/* 3C78 80003078 00052840 */  sll        $a1, $a1, 1
/* 3C7C 8000307C 86020006 */  lh         $v0, 6($s0)
/* 3C80 80003080 00023040 */  sll        $a2, $v0, 1
/* 3C84 80003084 00C23021 */  addu       $a2, $a2, $v0
/* 3C88 80003088 00063040 */  sll        $a2, $a2, 1
/* 3C8C 8000308C 02242021 */  addu       $a0, $s1, $a0
/* 3C90 80003090 02252821 */  addu       $a1, $s1, $a1
/* 3C94 80003094 02263021 */  addu       $a2, $s1, $a2
/* 3C98 80003098 0C00A57F */  jal        func_800295FC
/* 3C9C 8000309C 02603821 */   addu      $a3, $s3, $zero
/* 3CA0 800030A0 0260B021 */  addu       $s6, $s3, $zero
.L800030A4:
/* 3CA4 800030A4 3C04800F */  lui        $a0, %hi(D_800EDEC0)
/* 3CA8 800030A8 0C00ACEA */  jal        func_8002B3A8
/* 3CAC 800030AC 2484DEC0 */   addiu     $a0, $a0, %lo(D_800EDEC0)
/* 3CB0 800030B0 00408021 */  addu       $s0, $v0, $zero
/* 3CB4 800030B4 5600FFD1 */  bnel       $s0, $zero, .L80002FFC
/* 3CB8 800030B8 AFB00010 */   sw        $s0, 0x10($sp)
.L800030BC:
/* 3CBC 800030BC 3C01C780 */  lui        $at, 0xc780
/* 3CC0 800030C0 44810000 */  mtc1       $at, $f0
/* 3CC4 800030C4 00000000 */  nop
/* 3CC8 800030C8 4600B032 */  c.eq.s     $f22, $f0
/* 3CCC 800030CC 00000000 */  nop
/* 3CD0 800030D0 00000000 */  nop
/* 3CD4 800030D4 45030001 */  bc1tl      .L800030DC
/* 3CD8 800030D8 46000586 */   mov.s     $f22, $f0
.L800030DC:
/* 3CDC 800030DC 3C01800F */  lui        $at, %hi(D_800ED6B8)
/* 3CE0 800030E0 C420D6B8 */  lwc1       $f0, %lo(D_800ED6B8)($at)
/* 3CE4 800030E4 3C01800F */  lui        $at, %hi(D_800F5254)
/* 3CE8 800030E8 C4225254 */  lwc1       $f2, %lo(D_800F5254)($at)
/* 3CEC 800030EC 27A20038 */  addiu      $v0, $sp, 0x38
/* 3CF0 800030F0 AFA20010 */  sw         $v0, 0x10($sp)
/* 3CF4 800030F4 4600E000 */  add.s      $f0, $f28, $f0
/* 3CF8 800030F8 44050000 */  mfc1       $a1, $f0
/* 3CFC 800030FC 4406D000 */  mfc1       $a2, $f26
/* 3D00 80003100 4602A080 */  add.s      $f2, $f20, $f2
/* 3D04 80003104 44071000 */  mfc1       $a3, $f2
/* 3D08 80003108 00000000 */  nop
/* 3D0C 8000310C 0C001475 */  jal        func_800051D4
/* 3D10 80003110 02802021 */   addu      $a0, $s4, $zero
/* 3D14 80003114 46000086 */  mov.s      $f2, $f0
/* 3D18 80003118 4602B03C */  c.lt.s     $f22, $f2
/* 3D1C 8000311C 00000000 */  nop
/* 3D20 80003120 4500000D */  bc1f       .L80003158
/* 3D24 80003124 00000000 */   nop
/* 3D28 80003128 3C01420C */  lui        $at, 0x420c
/* 3D2C 8000312C 44810000 */  mtc1       $at, $f0
/* 3D30 80003130 00000000 */  nop
/* 3D34 80003134 4600D000 */  add.s      $f0, $f26, $f0
/* 3D38 80003138 4600103C */  c.lt.s     $f2, $f0
/* 3D3C 8000313C 00000000 */  nop
/* 3D40 80003140 45000005 */  bc1f       .L80003158
/* 3D44 80003144 00000000 */   nop
/* 3D48 80003148 3C15800C */  lui        $s5, %hi(D_800B8958)
/* 3D4C 8000314C 92B58958 */  lbu        $s5, %lo(D_800B8958)($s5)
/* 3D50 80003150 08000C6C */  j          .L800031B0
/* 3D54 80003154 46001586 */   mov.s     $f22, $f2
.L80003158:
/* 3D58 80003158 3C014316 */  lui        $at, 0x4316
/* 3D5C 8000315C 44810000 */  mtc1       $at, $f0
/* 3D60 80003160 00000000 */  nop
/* 3D64 80003164 4600D000 */  add.s      $f0, $f26, $f0
/* 3D68 80003168 4600103C */  c.lt.s     $f2, $f0
/* 3D6C 8000316C 00000000 */  nop
/* 3D70 80003170 00000000 */  nop
/* 3D74 80003174 4500000D */  bc1f       .L800031AC
/* 3D78 80003178 2402FFFF */   addiu     $v0, $zero, -1
/* 3D7C 8000317C 3C01420C */  lui        $at, 0x420c
/* 3D80 80003180 44810000 */  mtc1       $at, $f0
/* 3D84 80003184 00000000 */  nop
/* 3D88 80003188 4600D000 */  add.s      $f0, $f26, $f0
/* 3D8C 8000318C 4602003C */  c.lt.s     $f0, $f2
/* 3D90 80003190 00000000 */  nop
/* 3D94 80003194 00000000 */  nop
/* 3D98 80003198 45020005 */  bc1fl      .L800031B0
/* 3D9C 8000319C A2420053 */   sb        $v0, 0x53($s2)
/* 3DA0 800031A0 3C014780 */  lui        $at, 0x4780
/* 3DA4 800031A4 4481B000 */  mtc1       $at, $f22
/* 3DA8 800031A8 2402FFFF */  addiu      $v0, $zero, -1
.L800031AC:
/* 3DAC 800031AC A2420053 */  sb         $v0, 0x53($s2)
.L800031B0:
/* 3DB0 800031B0 4602C03C */  c.lt.s     $f24, $f2
/* 3DB4 800031B4 00000000 */  nop
/* 3DB8 800031B8 4500000B */  bc1f       .L800031E8
/* 3DBC 800031BC 00000000 */   nop
/* 3DC0 800031C0 3C01420C */  lui        $at, 0x420c
/* 3DC4 800031C4 44810000 */  mtc1       $at, $f0
/* 3DC8 800031C8 00000000 */  nop
/* 3DCC 800031CC 4600D000 */  add.s      $f0, $f26, $f0
/* 3DD0 800031D0 4600103C */  c.lt.s     $f2, $f0
/* 3DD4 800031D4 00000000 */  nop
/* 3DD8 800031D8 45000003 */  bc1f       .L800031E8
/* 3DDC 800031DC 00000000 */   nop
/* 3DE0 800031E0 46001606 */  mov.s      $f24, $f2
/* 3DE4 800031E4 27B60038 */  addiu      $s6, $sp, 0x38
.L800031E8:
/* 3DE8 800031E8 3C01420C */  lui        $at, 0x420c
/* 3DEC 800031EC 44811000 */  mtc1       $at, $f2
/* 3DF0 800031F0 00000000 */  nop
/* 3DF4 800031F4 4602D001 */  sub.s      $f0, $f26, $f2
/* 3DF8 800031F8 4616003C */  c.lt.s     $f0, $f22
/* 3DFC 800031FC 00000000 */  nop
/* 3E00 80003200 00000000 */  nop
/* 3E04 80003204 4500001D */  bc1f       .L8000327C
/* 3E08 80003208 02802021 */   addu      $a0, $s4, $zero
/* 3E0C 8000320C 4602D000 */  add.s      $f0, $f26, $f2
/* 3E10 80003210 4600B03C */  c.lt.s     $f22, $f0
/* 3E14 80003214 00000000 */  nop
/* 3E18 80003218 00000000 */  nop
/* 3E1C 8000321C 45000017 */  bc1f       .L8000327C
/* 3E20 80003220 00151600 */   sll       $v0, $s5, 0x18
/* 3E24 80003224 00021603 */  sra        $v0, $v0, 0x18
/* 3E28 80003228 2403FFFF */  addiu      $v1, $zero, -1
/* 3E2C 8000322C 54430001 */  bnel       $v0, $v1, .L80003234
/* 3E30 80003230 A2550053 */   sb        $s5, 0x53($s2)
.L80003234:
/* 3E34 80003234 4405B000 */  mfc1       $a1, $f22
/* 3E38 80003238 00000000 */  nop
/* 3E3C 8000323C 0C0001B9 */  jal        func_800006E4
/* 3E40 80003240 02802021 */   addu      $a0, $s4, $zero
/* 3E44 80003244 00151600 */  sll        $v0, $s5, 0x18
/* 3E48 80003248 00021603 */  sra        $v0, $v0, 0x18
/* 3E4C 8000324C 02421021 */  addu       $v0, $s2, $v0
/* 3E50 80003250 90420000 */  lbu        $v0, ($v0)
/* 3E54 80003254 30420008 */  andi       $v0, $v0, 8
/* 3E58 80003258 10400003 */  beqz       $v0, .L80003268
/* 3E5C 8000325C 46000686 */   mov.s     $f26, $f0
/* 3E60 80003260 0C00250E */  jal        func_80009438
/* 3E64 80003264 00000000 */   nop
.L80003268:
/* 3E68 80003268 3C01447A */  lui        $at, 0x447a
/* 3E6C 8000326C 44810000 */  mtc1       $at, $f0
/* 3E70 80003270 00000000 */  nop
/* 3E74 80003274 08000CBB */  j          .L800032EC
/* 3E78 80003278 E6400038 */   swc1      $f0, 0x38($s2)
.L8000327C:
/* 3E7C 8000327C 0C00612F */  jal        func_800184BC
/* 3E80 80003280 24050006 */   addiu     $a1, $zero, 6
/* 3E84 80003284 3C01800C */  lui        $at, %hi(D_800B899C)
/* 3E88 80003288 C420899C */  lwc1       $f0, %lo(D_800B899C)($at)
/* 3E8C 8000328C E6400038 */  swc1       $f0, 0x38($s2)
/* 3E90 80003290 2402FFFF */  addiu      $v0, $zero, -1
/* 3E94 80003294 A2420053 */  sb         $v0, 0x53($s2)
/* 3E98 80003298 02402021 */  addu       $a0, $s2, $zero
/* 3E9C 8000329C 0C002589 */  jal        func_80009624
/* 3EA0 800032A0 2405000D */   addiu     $a1, $zero, 0xd
/* 3EA4 800032A4 3C014780 */  lui        $at, 0x4780
/* 3EA8 800032A8 44810000 */  mtc1       $at, $f0
/* 3EAC 800032AC 08000D08 */  j          .L80003420
/* 3EB0 800032B0 00000000 */   nop
.L800032B4:
/* 3EB4 800032B4 3C01800F */  lui        $at, %hi(D_800ED6B8)
/* 3EB8 800032B8 C420D6B8 */  lwc1       $f0, %lo(D_800ED6B8)($at)
/* 3EBC 800032BC 4600E000 */  add.s      $f0, $f28, $f0
/* 3EC0 800032C0 E7A00018 */  swc1       $f0, 0x18($sp)
/* 3EC4 800032C4 E7BA001C */  swc1       $f26, 0x1c($sp)
/* 3EC8 800032C8 3C01800F */  lui        $at, %hi(D_800F5254)
/* 3ECC 800032CC C4205254 */  lwc1       $f0, %lo(D_800F5254)($at)
/* 3ED0 800032D0 4600A000 */  add.s      $f0, $f20, $f0
/* 3ED4 800032D4 E7A00020 */  swc1       $f0, 0x20($sp)
/* 3ED8 800032D8 C6400048 */  lwc1       $f0, 0x48($s2)
/* 3EDC 800032DC E7A00024 */  swc1       $f0, 0x24($sp)
/* 3EE0 800032E0 27A50018 */  addiu      $a1, $sp, 0x18
/* 3EE4 800032E4 0C001347 */  jal        func_80004D1C
/* 3EE8 800032E8 00003021 */   addu      $a2, $zero, $zero
.L800032EC:
/* 3EEC 800032EC 8E820040 */  lw         $v0, 0x40($s4)
/* 3EF0 800032F0 84420002 */  lh         $v0, 2($v0)
/* 3EF4 800032F4 10400027 */  beqz       $v0, .L80003394
/* 3EF8 800032F8 00000000 */   nop
/* 3EFC 800032FC 3C01C780 */  lui        $at, 0xc780
/* 3F00 80003300 44810000 */  mtc1       $at, $f0
/* 3F04 80003304 00000000 */  nop
/* 3F08 80003308 4600C032 */  c.eq.s     $f24, $f0
/* 3F0C 8000330C 00000000 */  nop
/* 3F10 80003310 00000000 */  nop
/* 3F14 80003314 45010019 */  bc1t       .L8000337C
/* 3F18 80003318 24020001 */   addiu     $v0, $zero, 1
/* 3F1C 8000331C 3C03800C */  lui        $v1, %hi(D_800B8959)
/* 3F20 80003320 90638959 */  lbu        $v1, %lo(D_800B8959)($v1)
/* 3F24 80003324 14620005 */  bne        $v1, $v0, .L8000333C
/* 3F28 80003328 00000000 */   nop
/* 3F2C 8000332C 3C014000 */  lui        $at, 0x4000
/* 3F30 80003330 44810000 */  mtc1       $at, $f0
/* 3F34 80003334 00000000 */  nop
/* 3F38 80003338 4600C600 */  add.s      $f24, $f24, $f0
.L8000333C:
/* 3F3C 8000333C 8E820040 */  lw         $v0, 0x40($s4)
/* 3F40 80003340 84440002 */  lh         $a0, 2($v0)
/* 3F44 80003344 4405E000 */  mfc1       $a1, $f28
/* 3F48 80003348 4406C000 */  mfc1       $a2, $f24
/* 3F4C 8000334C 4407A000 */  mfc1       $a3, $f20
/* 3F50 80003350 0C0095E6 */  jal        func_80025798
/* 3F54 80003354 00000000 */   nop
/* 3F58 80003358 8E820040 */  lw         $v0, 0x40($s4)
/* 3F5C 8000335C 84440002 */  lh         $a0, 2($v0)
/* 3F60 80003360 0C00DC5E */  jal        func_80037178
/* 3F64 80003364 02C02821 */   addu      $a1, $s6, $zero
/* 3F68 80003368 8E820040 */  lw         $v0, 0x40($s4)
/* 3F6C 8000336C 84440002 */  lh         $a0, 2($v0)
/* 3F70 80003370 24050004 */  addiu      $a1, $zero, 4
/* 3F74 80003374 08000CE3 */  j          .L8000338C
/* 3F78 80003378 00003021 */   addu      $a2, $zero, $zero
.L8000337C:
/* 3F7C 8000337C 8E820040 */  lw         $v0, 0x40($s4)
/* 3F80 80003380 84440002 */  lh         $a0, 2($v0)
/* 3F84 80003384 24050004 */  addiu      $a1, $zero, 4
/* 3F88 80003388 24060004 */  addiu      $a2, $zero, 4
.L8000338C:
/* 3F8C 8000338C 0C00963B */  jal        func_800258EC
/* 3F90 80003390 00000000 */   nop
.L80003394:
/* 3F94 80003394 82420053 */  lb         $v0, 0x53($s2)
/* 3F98 80003398 04400017 */  bltz       $v0, .L800033F8
/* 3F9C 8000339C 00021080 */   sll       $v0, $v0, 2
/* 3FA0 800033A0 3C01800F */  lui        $at, %hi(D_800F2AF8)
/* 3FA4 800033A4 00220821 */  addu       $at, $at, $v0
/* 3FA8 800033A8 8C222AF8 */  lw         $v0, %lo(D_800F2AF8)($at)
/* 3FAC 800033AC 8C420050 */  lw         $v0, 0x50($v0)
/* 3FB0 800033B0 C6C00000 */  lwc1       $f0, ($s6)
/* 3FB4 800033B4 C442000C */  lwc1       $f2, 0xc($v0)
/* 3FB8 800033B8 46020002 */  mul.s      $f0, $f0, $f2
/* 3FBC 800033BC E6400084 */  swc1       $f0, 0x84($s2)
/* 3FC0 800033C0 C6C00004 */  lwc1       $f0, 4($s6)
/* 3FC4 800033C4 E6400088 */  swc1       $f0, 0x88($s2)
/* 3FC8 800033C8 C6C00008 */  lwc1       $f0, 8($s6)
/* 3FCC 800033CC C442000C */  lwc1       $f2, 0xc($v0)
/* 3FD0 800033D0 46020002 */  mul.s      $f0, $f0, $f2
/* 3FD4 800033D4 E640008C */  swc1       $f0, 0x8c($s2)
/* 3FD8 800033D8 90420001 */  lbu        $v0, 1($v0)
/* 3FDC 800033DC 30420080 */  andi       $v0, $v0, 0x80
/* 3FE0 800033E0 1040000E */  beqz       $v0, .L8000341C
/* 3FE4 800033E4 02802021 */   addu      $a0, $s4, $zero
/* 3FE8 800033E8 0C0015FD */  jal        func_800057F4
/* 3FEC 800033EC 02C02821 */   addu      $a1, $s6, $zero
/* 3FF0 800033F0 08000D08 */  j          .L80003420
/* 3FF4 800033F4 4600D006 */   mov.s     $f0, $f26
.L800033F8:
/* 3FF8 800033F8 44800000 */  mtc1       $zero, $f0
/* 3FFC 800033FC 00000000 */  nop
/* 4000 80003400 E640008C */  swc1       $f0, 0x8c($s2)
/* 4004 80003404 E6400088 */  swc1       $f0, 0x88($s2)
/* 4008 80003408 E6400084 */  swc1       $f0, 0x84($s2)
/* 400C 8000340C E6400098 */  swc1       $f0, 0x98($s2)
/* 4010 80003410 E6400090 */  swc1       $f0, 0x90($s2)
/* 4014 80003414 E680002C */  swc1       $f0, 0x2c($s4)
/* 4018 80003418 E6800024 */  swc1       $f0, 0x24($s4)
.L8000341C:
/* 401C 8000341C 4600D006 */  mov.s      $f0, $f26
.L80003420:
/* 4020 80003420 8FBF0064 */  lw         $ra, 0x64($sp)
/* 4024 80003424 8FB60060 */  lw         $s6, 0x60($sp)
/* 4028 80003428 8FB5005C */  lw         $s5, 0x5c($sp)
/* 402C 8000342C 8FB40058 */  lw         $s4, 0x58($sp)
/* 4030 80003430 8FB30054 */  lw         $s3, 0x54($sp)
/* 4034 80003434 8FB20050 */  lw         $s2, 0x50($sp)
/* 4038 80003438 8FB1004C */  lw         $s1, 0x4c($sp)
/* 403C 8000343C 8FB00048 */  lw         $s0, 0x48($sp)
/* 4040 80003440 D7BE0090 */  ldc1       $f30, 0x90($sp)
/* 4044 80003444 D7BC0088 */  ldc1       $f28, 0x88($sp)
/* 4048 80003448 D7BA0080 */  ldc1       $f26, 0x80($sp)
/* 404C 8000344C D7B80078 */  ldc1       $f24, 0x78($sp)
/* 4050 80003450 D7B60070 */  ldc1       $f22, 0x70($sp)
/* 4054 80003454 D7B40068 */  ldc1       $f20, 0x68($sp)
/* 4058 80003458 03E00008 */  jr         $ra
/* 405C 8000345C 27BD0098 */   addiu     $sp, $sp, 0x98