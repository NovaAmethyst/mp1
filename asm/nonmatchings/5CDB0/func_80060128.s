	.set noat
	.set noreorder

glabel func_80060128
/* 60D28 80060128 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 60D2C 8006012C AFBF0010 */  sw         $ra, 0x10($sp)
/* 60D30 80060130 3C02800C */  lui        $v0, %hi(D_800C5974)
/* 60D34 80060134 94425974 */  lhu        $v0, %lo(D_800C5974)($v0)
/* 60D38 80060138 10400013 */  beqz       $v0, .L80060188
/* 60D3C 8006013C 00802821 */   addu      $a1, $a0, $zero
/* 60D40 80060140 3C03800C */  lui        $v1, %hi(D_800C5996)
/* 60D44 80060144 84635996 */  lh         $v1, %lo(D_800C5996)($v1)
/* 60D48 80060148 00051400 */  sll        $v0, $a1, 0x10
/* 60D4C 8006014C 00022403 */  sra        $a0, $v0, 0x10
/* 60D50 80060150 5064000E */  beql       $v1, $a0, .L8006018C
/* 60D54 80060154 00001021 */   addu      $v0, $zero, $zero
/* 60D58 80060158 3C01800C */  lui        $at, %hi(D_800C5996)
/* 60D5C 8006015C A4255996 */  sh         $a1, %lo(D_800C5996)($at)
/* 60D60 80060160 3C02800C */  lui        $v0, %hi(D_800C5998)
/* 60D64 80060164 94425998 */  lhu        $v0, %lo(D_800C5998)($v0)
/* 60D68 80060168 34420002 */  ori        $v0, $v0, 2
/* 60D6C 8006016C 3042FFF6 */  andi       $v0, $v0, 0xfff6
/* 60D70 80060170 3C01800C */  lui        $at, %hi(D_800C5998)
/* 60D74 80060174 0C002FAF */  jal        func_8000BEBC
/* 60D78 80060178 A4225998 */   sh        $v0, %lo(D_800C5998)($at)
/* 60D7C 8006017C 00021400 */  sll        $v0, $v0, 0x10
/* 60D80 80060180 08018063 */  j          .L8006018C
/* 60D84 80060184 00021403 */   sra       $v0, $v0, 0x10
.L80060188:
/* 60D88 80060188 00001021 */  addu       $v0, $zero, $zero
.L8006018C:
/* 60D8C 8006018C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 60D90 80060190 03E00008 */  jr         $ra
/* 60D94 80060194 27BD0018 */   addiu     $sp, $sp, 0x18