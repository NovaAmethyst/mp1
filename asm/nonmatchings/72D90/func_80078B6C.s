	.set noat
	.set noreorder

glabel func_80078B6C
/* 7976C 80078B6C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 79770 80078B70 AFBF0024 */  sw         $ra, 0x24($sp)
/* 79774 80078B74 AFB20020 */  sw         $s2, 0x20($sp)
/* 79778 80078B78 AFB1001C */  sw         $s1, 0x1c($sp)
/* 7977C 80078B7C AFB00018 */  sw         $s0, 0x18($sp)
/* 79780 80078B80 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 79784 80078B84 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 79788 80078B88 00808821 */  addu       $s1, $a0, $zero
/* 7978C 80078B8C 86220004 */  lh         $v0, 4($s1)
/* 79790 80078B90 1440001F */  bnez       $v0, .L80078C10
/* 79794 80078B94 2402FFFF */   addiu     $v0, $zero, -1
/* 79798 80078B98 AFA20010 */  sw         $v0, 0x10($sp)
/* 7979C 80078B9C 3C05800D */  lui        $a1, %hi(D_800CBAB0)
/* 797A0 80078BA0 24A5BAB0 */  addiu      $a1, $a1, %lo(D_800CBAB0)
/* 797A4 80078BA4 00003021 */  addu       $a2, $zero, $zero
/* 797A8 80078BA8 0C01D9ED */  jal        func_800767B4
/* 797AC 80078BAC 2407FFFF */   addiu     $a3, $zero, -1
/* 797B0 80078BB0 C6200054 */  lwc1       $f0, 0x54($s1)
/* 797B4 80078BB4 4600008D */  trunc.w.s  $f2, $f0
/* 797B8 80078BB8 44061000 */  mfc1       $a2, $f2
/* 797BC 80078BBC 00000000 */  nop
/* 797C0 80078BC0 00063400 */  sll        $a2, $a2, 0x10
/* 797C4 80078BC4 C6200058 */  lwc1       $f0, 0x58($s1)
/* 797C8 80078BC8 4600008D */  trunc.w.s  $f2, $f0
/* 797CC 80078BCC 44071000 */  mfc1       $a3, $f2
/* 797D0 80078BD0 00000000 */  nop
/* 797D4 80078BD4 00073C00 */  sll        $a3, $a3, 0x10
/* 797D8 80078BD8 86240014 */  lh         $a0, 0x14($s1)
/* 797DC 80078BDC 00002821 */  addu       $a1, $zero, $zero
/* 797E0 80078BE0 00063403 */  sra        $a2, $a2, 0x10
/* 797E4 80078BE4 0C019B71 */  jal        func_80066DC4
/* 797E8 80078BE8 00073C03 */   sra       $a3, $a3, 0x10
/* 797EC 80078BEC 86240014 */  lh         $a0, 0x14($s1)
/* 797F0 80078BF0 24050001 */  addiu      $a1, $zero, 1
/* 797F4 80078BF4 0C019D4B */  jal        func_8006752C
/* 797F8 80078BF8 240600E6 */   addiu     $a2, $zero, 0xe6
/* 797FC 80078BFC 86240014 */  lh         $a0, 0x14($s1)
/* 79800 80078C00 24050002 */  addiu      $a1, $zero, 2
/* 79804 80078C04 0C019D4B */  jal        func_8006752C
/* 79808 80078C08 240600E6 */   addiu     $a2, $zero, 0xe6
/* 7980C 80078C0C A620000A */  sh         $zero, 0xa($s1)
.L80078C10:
/* 79810 80078C10 96220008 */  lhu        $v0, 8($s1)
/* 79814 80078C14 00021400 */  sll        $v0, $v0, 0x10
/* 79818 80078C18 00022403 */  sra        $a0, $v0, 0x10
/* 7981C 80078C1C 3C0351EB */  lui        $v1, 0x51eb
/* 79820 80078C20 3463851F */  ori        $v1, $v1, 0x851f
/* 79824 80078C24 00830018 */  mult       $a0, $v1
/* 79828 80078C28 00004010 */  mfhi       $t0
/* 7982C 80078C2C 00081943 */  sra        $v1, $t0, 5
/* 79830 80078C30 000217C3 */  sra        $v0, $v0, 0x1f
/* 79834 80078C34 00621823 */  subu       $v1, $v1, $v0
/* 79838 80078C38 00031040 */  sll        $v0, $v1, 1
/* 7983C 80078C3C 00431021 */  addu       $v0, $v0, $v1
/* 79840 80078C40 000210C0 */  sll        $v0, $v0, 3
/* 79844 80078C44 00431021 */  addu       $v0, $v0, $v1
/* 79848 80078C48 00021080 */  sll        $v0, $v0, 2
/* 7984C 80078C4C 00829023 */  subu       $s2, $a0, $v0
/* 79850 80078C50 324300FF */  andi       $v1, $s2, 0xff
/* 79854 80078C54 3C02CCCC */  lui        $v0, 0xcccc
/* 79858 80078C58 3442CCCD */  ori        $v0, $v0, 0xcccd
/* 7985C 80078C5C 00620019 */  multu      $v1, $v0
/* 79860 80078C60 00004010 */  mfhi       $t0
/* 79864 80078C64 000880C2 */  srl        $s0, $t0, 3
/* 79868 80078C68 320200FF */  andi       $v0, $s0, 0xff
/* 7986C 80078C6C 14400006 */  bnez       $v0, .L80078C88
/* 79870 80078C70 24050001 */   addiu     $a1, $zero, 1
/* 79874 80078C74 86240014 */  lh         $a0, 0x14($s1)
/* 79878 80078C78 0C019D2F */  jal        func_800674BC
/* 7987C 80078C7C 34068000 */   ori       $a2, $zero, 0x8000
/* 79880 80078C80 0801E325 */  j          .L80078C94
/* 79884 80078C84 00000000 */   nop
.L80078C88:
/* 79888 80078C88 86240014 */  lh         $a0, 0x14($s1)
/* 7988C 80078C8C 0C019D20 */  jal        func_80067480
/* 79890 80078C90 34068000 */   ori       $a2, $zero, 0x8000
.L80078C94:
/* 79894 80078C94 86240014 */  lh         $a0, 0x14($s1)
/* 79898 80078C98 24050001 */  addiu      $a1, $zero, 1
/* 7989C 80078C9C 320600FF */  andi       $a2, $s0, 0xff
/* 798A0 80078CA0 0C019CB7 */  jal        func_800672DC
/* 798A4 80078CA4 00003821 */   addu      $a3, $zero, $zero
/* 798A8 80078CA8 86240014 */  lh         $a0, 0x14($s1)
/* 798AC 80078CAC 24050001 */  addiu      $a1, $zero, 1
/* 798B0 80078CB0 0C019CAC */  jal        func_800672B0
/* 798B4 80078CB4 24060001 */   addiu     $a2, $zero, 1
/* 798B8 80078CB8 324400FF */  andi       $a0, $s2, 0xff
/* 798BC 80078CBC 3C02CCCC */  lui        $v0, 0xcccc
/* 798C0 80078CC0 3442CCCD */  ori        $v0, $v0, 0xcccd
/* 798C4 80078CC4 00820019 */  multu      $a0, $v0
/* 798C8 80078CC8 00004010 */  mfhi       $t0
/* 798CC 80078CCC 000818C2 */  srl        $v1, $t0, 3
/* 798D0 80078CD0 00031080 */  sll        $v0, $v1, 2
/* 798D4 80078CD4 00431021 */  addu       $v0, $v0, $v1
/* 798D8 80078CD8 00021040 */  sll        $v0, $v0, 1
/* 798DC 80078CDC 00828023 */  subu       $s0, $a0, $v0
/* 798E0 80078CE0 86240014 */  lh         $a0, 0x14($s1)
/* 798E4 80078CE4 24050002 */  addiu      $a1, $zero, 2
/* 798E8 80078CE8 320600FF */  andi       $a2, $s0, 0xff
/* 798EC 80078CEC 0C019CB7 */  jal        func_800672DC
/* 798F0 80078CF0 00003821 */   addu      $a3, $zero, $zero
/* 798F4 80078CF4 86240014 */  lh         $a0, 0x14($s1)
/* 798F8 80078CF8 24050002 */  addiu      $a1, $zero, 2
/* 798FC 80078CFC 0C019CAC */  jal        func_800672B0
/* 79900 80078D00 24060001 */   addiu     $a2, $zero, 1
/* 79904 80078D04 8623000A */  lh         $v1, 0xa($s1)
/* 79908 80078D08 24020001 */  addiu      $v0, $zero, 1
/* 7990C 80078D0C 10620039 */  beq        $v1, $v0, .L80078DF4
/* 79910 80078D10 28620002 */   slti      $v0, $v1, 2
/* 79914 80078D14 50400005 */  beql       $v0, $zero, .L80078D2C
/* 79918 80078D18 24020002 */   addiu     $v0, $zero, 2
/* 7991C 80078D1C 10600009 */  beqz       $v1, .L80078D44
/* 79920 80078D20 00000000 */   nop
/* 79924 80078D24 0801E406 */  j          .L80079018
/* 79928 80078D28 00000000 */   nop
.L80078D2C:
/* 7992C 80078D2C 10620040 */  beq        $v1, $v0, .L80078E30
/* 79930 80078D30 24020003 */   addiu     $v0, $zero, 3
/* 79934 80078D34 1062005C */  beq        $v1, $v0, .L80078EA8
/* 79938 80078D38 00000000 */   nop
/* 7993C 80078D3C 0801E406 */  j          .L80079018
/* 79940 80078D40 00000000 */   nop
.L80078D44:
/* 79944 80078D44 86230004 */  lh         $v1, 4($s1)
/* 79948 80078D48 2862000E */  slti       $v0, $v1, 0xe
/* 7994C 80078D4C 10400027 */  beqz       $v0, .L80078DEC
/* 79950 80078D50 24020001 */   addiu     $v0, $zero, 1
/* 79954 80078D54 44830000 */  mtc1       $v1, $f0
/* 79958 80078D58 00000000 */  nop
/* 7995C 80078D5C 46800020 */  cvt.s.w    $f0, $f0
/* 79960 80078D60 3C014120 */  lui        $at, 0x4120
/* 79964 80078D64 44816000 */  mtc1       $at, $f12
/* 79968 80078D68 00000000 */  nop
/* 7996C 80078D6C 0C02BAB0 */  jal        func_800AEAC0
/* 79970 80078D70 460C0302 */   mul.s     $f12, $f0, $f12
/* 79974 80078D74 3C014302 */  lui        $at, 0x4302
/* 79978 80078D78 44816000 */  mtc1       $at, $f12
/* 7997C 80078D7C 00000000 */  nop
/* 79980 80078D80 0C02BAB0 */  jal        func_800AEAC0
/* 79984 80078D84 46000506 */   mov.s     $f20, $f0
/* 79988 80078D88 3C0140A0 */  lui        $at, 0x40a0
/* 7998C 80078D8C 44811000 */  mtc1       $at, $f2
/* 79990 80078D90 00000000 */  nop
/* 79994 80078D94 4602A582 */  mul.s      $f22, $f20, $f2
/* 79998 80078D98 00000000 */  nop
/* 7999C 80078D9C 46020002 */  mul.s      $f0, $f0, $f2
/* 799A0 80078DA0 3C013F80 */  lui        $at, 0x3f80
/* 799A4 80078DA4 44811000 */  mtc1       $at, $f2
/* 799A8 80078DA8 00000000 */  nop
/* 799AC 80078DAC 46001081 */  sub.s      $f2, $f2, $f0
/* 799B0 80078DB0 4602B580 */  add.s      $f22, $f22, $f2
/* 799B4 80078DB4 86240014 */  lh         $a0, 0x14($s1)
/* 799B8 80078DB8 4406B000 */  mfc1       $a2, $f22
/* 799BC 80078DBC 4407B000 */  mfc1       $a3, $f22
/* 799C0 80078DC0 00000000 */  nop
/* 799C4 80078DC4 0C019CD5 */  jal        func_80067354
/* 799C8 80078DC8 24050001 */   addiu     $a1, $zero, 1
/* 799CC 80078DCC 86240014 */  lh         $a0, 0x14($s1)
/* 799D0 80078DD0 4406B000 */  mfc1       $a2, $f22
/* 799D4 80078DD4 4407B000 */  mfc1       $a3, $f22
/* 799D8 80078DD8 00000000 */  nop
/* 799DC 80078DDC 0C019CD5 */  jal        func_80067354
/* 799E0 80078DE0 24050002 */   addiu     $a1, $zero, 2
/* 799E4 80078DE4 0801E406 */  j          .L80079018
/* 799E8 80078DE8 00000000 */   nop
.L80078DEC:
/* 799EC 80078DEC 0801E406 */  j          .L80079018
/* 799F0 80078DF0 A622000A */   sh        $v0, 0xa($s1)
.L80078DF4:
/* 799F4 80078DF4 8622000E */  lh         $v0, 0xe($s1)
/* 799F8 80078DF8 86230008 */  lh         $v1, 8($s1)
/* 799FC 80078DFC 10430086 */  beq        $v0, $v1, .L80079018
/* 79A00 80078E00 28620006 */   slti      $v0, $v1, 6
/* 79A04 80078E04 10400084 */  beqz       $v0, .L80079018
/* 79A08 80078E08 24020003 */   addiu     $v0, $zero, 3
/* 79A0C 80078E0C A620000C */  sh         $zero, 0xc($s1)
/* 79A10 80078E10 A622000A */  sh         $v0, 0xa($s1)
/* 79A14 80078E14 86220008 */  lh         $v0, 8($s1)
/* 79A18 80078E18 1040007F */  beqz       $v0, .L80079018
/* 79A1C 80078E1C 00000000 */   nop
/* 79A20 80078E20 0C0180AB */  jal        func_800602AC
/* 79A24 80078E24 240400FB */   addiu     $a0, $zero, 0xfb
/* 79A28 80078E28 0801E406 */  j          .L80079018
/* 79A2C 80078E2C 00000000 */   nop
.L80078E30:
/* 79A30 80078E30 8623000C */  lh         $v1, 0xc($s1)
/* 79A34 80078E34 2862000A */  slti       $v0, $v1, 0xa
/* 79A38 80078E38 10400016 */  beqz       $v0, .L80078E94
/* 79A3C 80078E3C 00033040 */   sll       $a2, $v1, 1
/* 79A40 80078E40 00C33021 */  addu       $a2, $a2, $v1
/* 79A44 80078E44 000630C0 */  sll        $a2, $a2, 3
/* 79A48 80078E48 00C33023 */  subu       $a2, $a2, $v1
/* 79A4C 80078E4C 241000E6 */  addiu      $s0, $zero, 0xe6
/* 79A50 80078E50 02063023 */  subu       $a2, $s0, $a2
/* 79A54 80078E54 86240014 */  lh         $a0, 0x14($s1)
/* 79A58 80078E58 24050001 */  addiu      $a1, $zero, 1
/* 79A5C 80078E5C 0C019D4B */  jal        func_8006752C
/* 79A60 80078E60 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 79A64 80078E64 8623000C */  lh         $v1, 0xc($s1)
/* 79A68 80078E68 00031040 */  sll        $v0, $v1, 1
/* 79A6C 80078E6C 00431021 */  addu       $v0, $v0, $v1
/* 79A70 80078E70 000210C0 */  sll        $v0, $v0, 3
/* 79A74 80078E74 00431023 */  subu       $v0, $v0, $v1
/* 79A78 80078E78 02028023 */  subu       $s0, $s0, $v0
/* 79A7C 80078E7C 86240014 */  lh         $a0, 0x14($s1)
/* 79A80 80078E80 24050002 */  addiu      $a1, $zero, 2
/* 79A84 80078E84 0C019D4B */  jal        func_8006752C
/* 79A88 80078E88 3206FFFF */   andi      $a2, $s0, 0xffff
/* 79A8C 80078E8C 0801E403 */  j          .L8007900C
/* 79A90 80078E90 00000000 */   nop
.L80078E94:
/* 79A94 80078E94 24020001 */  addiu      $v0, $zero, 1
/* 79A98 80078E98 A622000A */  sh         $v0, 0xa($s1)
/* 79A9C 80078E9C 24020004 */  addiu      $v0, $zero, 4
/* 79AA0 80078EA0 0801E403 */  j          .L8007900C
/* 79AA4 80078EA4 A2220001 */   sb        $v0, 1($s1)
.L80078EA8:
/* 79AA8 80078EA8 8623000C */  lh         $v1, 0xc($s1)
/* 79AAC 80078EAC 2862000B */  slti       $v0, $v1, 0xb
/* 79AB0 80078EB0 10400055 */  beqz       $v0, .L80079008
/* 79AB4 80078EB4 24020001 */   addiu     $v0, $zero, 1
/* 79AB8 80078EB8 44836000 */  mtc1       $v1, $f12
/* 79ABC 80078EBC 00000000 */  nop
/* 79AC0 80078EC0 46806320 */  cvt.s.w    $f12, $f12
/* 79AC4 80078EC4 3C014190 */  lui        $at, 0x4190
/* 79AC8 80078EC8 4481A000 */  mtc1       $at, $f20
/* 79ACC 80078ECC 00000000 */  nop
/* 79AD0 80078ED0 0C02BAB0 */  jal        func_800AEAC0
/* 79AD4 80078ED4 46146302 */   mul.s     $f12, $f12, $f20
/* 79AD8 80078ED8 3C013F80 */  lui        $at, 0x3f80
/* 79ADC 80078EDC 44811000 */  mtc1       $at, $f2
/* 79AE0 80078EE0 00000000 */  nop
/* 79AE4 80078EE4 46020580 */  add.s      $f22, $f0, $f2
/* 79AE8 80078EE8 86240014 */  lh         $a0, 0x14($s1)
/* 79AEC 80078EEC 4406B000 */  mfc1       $a2, $f22
/* 79AF0 80078EF0 4407B000 */  mfc1       $a3, $f22
/* 79AF4 80078EF4 00000000 */  nop
/* 79AF8 80078EF8 0C019CD5 */  jal        func_80067354
/* 79AFC 80078EFC 24050001 */   addiu     $a1, $zero, 1
/* 79B00 80078F00 86240014 */  lh         $a0, 0x14($s1)
/* 79B04 80078F04 4406B000 */  mfc1       $a2, $f22
/* 79B08 80078F08 4407B000 */  mfc1       $a3, $f22
/* 79B0C 80078F0C 00000000 */  nop
/* 79B10 80078F10 0C019CD5 */  jal        func_80067354
/* 79B14 80078F14 24050002 */   addiu     $a1, $zero, 2
/* 79B18 80078F18 8622000C */  lh         $v0, 0xc($s1)
/* 79B1C 80078F1C 44826000 */  mtc1       $v0, $f12
/* 79B20 80078F20 00000000 */  nop
/* 79B24 80078F24 46806320 */  cvt.s.w    $f12, $f12
/* 79B28 80078F28 0C02BAB0 */  jal        func_800AEAC0
/* 79B2C 80078F2C 46146302 */   mul.s     $f12, $f12, $f20
/* 79B30 80078F30 3C014270 */  lui        $at, 0x4270
/* 79B34 80078F34 44811000 */  mtc1       $at, $f2
/* 79B38 80078F38 00000000 */  nop
/* 79B3C 80078F3C 46020002 */  mul.s      $f0, $f0, $f2
/* 79B40 80078F40 3C014366 */  lui        $at, 0x4366
/* 79B44 80078F44 44811000 */  mtc1       $at, $f2
/* 79B48 80078F48 00000000 */  nop
/* 79B4C 80078F4C 46001581 */  sub.s      $f22, $f2, $f0
/* 79B50 80078F50 86240014 */  lh         $a0, 0x14($s1)
/* 79B54 80078F54 3C014F00 */  lui        $at, 0x4f00
/* 79B58 80078F58 44810000 */  mtc1       $at, $f0
/* 79B5C 80078F5C 00000000 */  nop
/* 79B60 80078F60 4616003E */  c.le.s     $f0, $f22
/* 79B64 80078F64 00000000 */  nop
/* 79B68 80078F68 00000000 */  nop
/* 79B6C 80078F6C 45030006 */  bc1tl      .L80078F88
/* 79B70 80078F70 4600B001 */   sub.s     $f0, $f22, $f0
/* 79B74 80078F74 4600B00D */  trunc.w.s  $f0, $f22
/* 79B78 80078F78 44060000 */  mfc1       $a2, $f0
/* 79B7C 80078F7C 00000000 */  nop
/* 79B80 80078F80 0801E3E8 */  j          .L80078FA0
/* 79B84 80078F84 24050001 */   addiu     $a1, $zero, 1
.L80078F88:
/* 79B88 80078F88 3C028000 */  lui        $v0, 0x8000
/* 79B8C 80078F8C 4600008D */  trunc.w.s  $f2, $f0
/* 79B90 80078F90 44061000 */  mfc1       $a2, $f2
/* 79B94 80078F94 00000000 */  nop
/* 79B98 80078F98 00C23025 */  or         $a2, $a2, $v0
/* 79B9C 80078F9C 24050001 */  addiu      $a1, $zero, 1
.L80078FA0:
/* 79BA0 80078FA0 0C019D4B */  jal        func_8006752C
/* 79BA4 80078FA4 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 79BA8 80078FA8 86240014 */  lh         $a0, 0x14($s1)
/* 79BAC 80078FAC 3C014F00 */  lui        $at, 0x4f00
/* 79BB0 80078FB0 44810000 */  mtc1       $at, $f0
/* 79BB4 80078FB4 00000000 */  nop
/* 79BB8 80078FB8 4616003E */  c.le.s     $f0, $f22
/* 79BBC 80078FBC 00000000 */  nop
/* 79BC0 80078FC0 00000000 */  nop
/* 79BC4 80078FC4 45030006 */  bc1tl      .L80078FE0
/* 79BC8 80078FC8 4600B001 */   sub.s     $f0, $f22, $f0
/* 79BCC 80078FCC 4600B00D */  trunc.w.s  $f0, $f22
/* 79BD0 80078FD0 44060000 */  mfc1       $a2, $f0
/* 79BD4 80078FD4 00000000 */  nop
/* 79BD8 80078FD8 0801E3FE */  j          .L80078FF8
/* 79BDC 80078FDC 24050002 */   addiu     $a1, $zero, 2
.L80078FE0:
/* 79BE0 80078FE0 3C028000 */  lui        $v0, 0x8000
/* 79BE4 80078FE4 4600008D */  trunc.w.s  $f2, $f0
/* 79BE8 80078FE8 44061000 */  mfc1       $a2, $f2
/* 79BEC 80078FEC 00000000 */  nop
/* 79BF0 80078FF0 00C23025 */  or         $a2, $a2, $v0
/* 79BF4 80078FF4 24050002 */  addiu      $a1, $zero, 2
.L80078FF8:
/* 79BF8 80078FF8 0C019D4B */  jal        func_8006752C
/* 79BFC 80078FFC 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 79C00 80079000 0801E403 */  j          .L8007900C
/* 79C04 80079004 00000000 */   nop
.L80079008:
/* 79C08 80079008 A622000A */  sh         $v0, 0xa($s1)
.L8007900C:
/* 79C0C 8007900C 9622000C */  lhu        $v0, 0xc($s1)
/* 79C10 80079010 24420001 */  addiu      $v0, $v0, 1
/* 79C14 80079014 A622000C */  sh         $v0, 0xc($s1)
.L80079018:
/* 79C18 80079018 96220008 */  lhu        $v0, 8($s1)
/* 79C1C 8007901C A622000E */  sh         $v0, 0xe($s1)
/* 79C20 80079020 3C02800F */  lui        $v0, %hi(D_800F3394)
/* 79C24 80079024 90423394 */  lbu        $v0, %lo(D_800F3394)($v0)
/* 79C28 80079028 14400005 */  bnez       $v0, .L80079040
/* 79C2C 8007902C 00000000 */   nop
/* 79C30 80079030 92230001 */  lbu        $v1, 1($s1)
/* 79C34 80079034 24020004 */  addiu      $v0, $zero, 4
/* 79C38 80079038 54620007 */  bnel       $v1, $v0, .L80079058
/* 79C3C 8007903C 24020001 */   addiu     $v0, $zero, 1
.L80079040:
/* 79C40 80079040 0C01D8CE */  jal        func_80076338
/* 79C44 80079044 02202021 */   addu      $a0, $s1, $zero
/* 79C48 80079048 2402FFFF */  addiu      $v0, $zero, -1
/* 79C4C 8007904C 3C01800F */  lui        $at, %hi(D_800F3FFC)
/* 79C50 80079050 A0223FFC */  sb         $v0, %lo(D_800F3FFC)($at)
/* 79C54 80079054 00001021 */  addu       $v0, $zero, $zero
.L80079058:
/* 79C58 80079058 8FBF0024 */  lw         $ra, 0x24($sp)
/* 79C5C 8007905C 8FB20020 */  lw         $s2, 0x20($sp)
/* 79C60 80079060 8FB1001C */  lw         $s1, 0x1c($sp)
/* 79C64 80079064 8FB00018 */  lw         $s0, 0x18($sp)
/* 79C68 80079068 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 79C6C 8007906C D7B40028 */  ldc1       $f20, 0x28($sp)
/* 79C70 80079070 03E00008 */  jr         $ra
/* 79C74 80079074 27BD0038 */   addiu     $sp, $sp, 0x38