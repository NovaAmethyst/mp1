	.set noat
	.set noreorder

glabel func_80075808
/* 76408 80075808 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7640C 8007580C AFBF0014 */  sw         $ra, 0x14($sp)
/* 76410 80075810 AFB00010 */  sw         $s0, 0x10($sp)
/* 76414 80075814 3C01800F */  lui        $at, %hi(D_800F3288)
/* 76418 80075818 C4223288 */  lwc1       $f2, %lo(D_800F3288)($at)
/* 7641C 8007581C 44800000 */  mtc1       $zero, $f0
/* 76420 80075820 00000000 */  nop
/* 76424 80075824 46001032 */  c.eq.s     $f2, $f0
/* 76428 80075828 00000000 */  nop
/* 7642C 8007582C 00000000 */  nop
/* 76430 80075830 45000003 */  bc1f       .L80075840
/* 76434 80075834 00808021 */   addu      $s0, $a0, $zero
/* 76438 80075838 0801D63F */  j          .L800758FC
/* 7643C 8007583C 00001021 */   addu      $v0, $zero, $zero
.L80075840:
/* 76440 80075840 3C01800F */  lui        $at, %hi(D_800F5024)
/* 76444 80075844 C4225024 */  lwc1       $f2, %lo(D_800F5024)($at)
/* 76448 80075848 44800000 */  mtc1       $zero, $f0
/* 7644C 8007584C 00000000 */  nop
/* 76450 80075850 46001032 */  c.eq.s     $f2, $f0
/* 76454 80075854 00000000 */  nop
/* 76458 80075858 45000003 */  bc1f       .L80075868
/* 7645C 8007585C 00000000 */   nop
/* 76460 80075860 0C01D049 */  jal        func_80074124
/* 76464 80075864 24040033 */   addiu     $a0, $zero, 0x33
.L80075868:
/* 76468 80075868 3C01800F */  lui        $at, %hi(D_800F5024)
/* 7646C 8007586C C4265024 */  lwc1       $f6, %lo(D_800F5024)($at)
/* 76470 80075870 3C01800F */  lui        $at, %hi(D_800F3288)
/* 76474 80075874 C4243288 */  lwc1       $f4, %lo(D_800F3288)($at)
/* 76478 80075878 46043083 */  div.s      $f2, $f6, $f4
/* 7647C 8007587C 3C013F80 */  lui        $at, 0x3f80
/* 76480 80075880 44810000 */  mtc1       $at, $f0
/* 76484 80075884 00000000 */  nop
/* 76488 80075888 46020001 */  sub.s      $f0, $f0, $f2
/* 7648C 8007588C 46000200 */  add.s      $f8, $f0, $f0
/* 76490 80075890 3C013F00 */  lui        $at, 0x3f00
/* 76494 80075894 44810000 */  mtc1       $at, $f0
/* 76498 80075898 00000000 */  nop
/* 7649C 8007589C 46002082 */  mul.s      $f2, $f4, $f0
/* 764A0 800758A0 4602303C */  c.lt.s     $f6, $f2
/* 764A4 800758A4 00000000 */  nop
/* 764A8 800758A8 45000003 */  bc1f       .L800758B8
/* 764AC 800758AC 00000000 */   nop
/* 764B0 800758B0 0801D630 */  j          .L800758C0
/* 764B4 800758B4 46023083 */   div.s     $f2, $f6, $f2
.L800758B8:
/* 764B8 800758B8 3C013F80 */  lui        $at, 0x3f80
/* 764BC 800758BC 44811000 */  mtc1       $at, $f2
.L800758C0:
/* 764C0 800758C0 44054000 */  mfc1       $a1, $f8
/* 764C4 800758C4 44061000 */  mfc1       $a2, $f2
/* 764C8 800758C8 00000000 */  nop
/* 764CC 800758CC 0C01D083 */  jal        func_8007420C
/* 764D0 800758D0 02002021 */   addu      $a0, $s0, $zero
/* 764D4 800758D4 3C01800F */  lui        $at, %hi(D_800F5024)
/* 764D8 800758D8 C4225024 */  lwc1       $f2, %lo(D_800F5024)($at)
/* 764DC 800758DC 3C01800F */  lui        $at, %hi(D_800F3288)
/* 764E0 800758E0 C4203288 */  lwc1       $f0, %lo(D_800F3288)($at)
/* 764E4 800758E4 4602003E */  c.le.s     $f0, $f2
/* 764E8 800758E8 00000000 */  nop
/* 764EC 800758EC 00000000 */  nop
/* 764F0 800758F0 45010002 */  bc1t       .L800758FC
/* 764F4 800758F4 00001021 */   addu      $v0, $zero, $zero
/* 764F8 800758F8 24020001 */  addiu      $v0, $zero, 1
.L800758FC:
/* 764FC 800758FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 76500 80075900 8FB00010 */  lw         $s0, 0x10($sp)
/* 76504 80075904 03E00008 */  jr         $ra
/* 76508 80075908 27BD0018 */   addiu     $sp, $sp, 0x18