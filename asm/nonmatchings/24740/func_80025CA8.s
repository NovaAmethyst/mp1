	.set noat
	.set noreorder

glabel func_80025CA8
/* 268A8 80025CA8 44851000 */  mtc1       $a1, $f2
/* 268AC 80025CAC 00042400 */  sll        $a0, $a0, 0x10
/* 268B0 80025CB0 00042403 */  sra        $a0, $a0, 0x10
/* 268B4 80025CB4 00041040 */  sll        $v0, $a0, 1
/* 268B8 80025CB8 00441021 */  addu       $v0, $v0, $a0
/* 268BC 80025CBC 00021180 */  sll        $v0, $v0, 6
/* 268C0 80025CC0 3C03800F */  lui        $v1, %hi(D_800F2B7C)
/* 268C4 80025CC4 8C632B7C */  lw         $v1, %lo(D_800F2B7C)($v1)
/* 268C8 80025CC8 00432821 */  addu       $a1, $v0, $v1
/* 268CC 80025CCC 84A30008 */  lh         $v1, 8($a1)
/* 268D0 80025CD0 3C04800F */  lui        $a0, %hi(D_800ED554)
/* 268D4 80025CD4 8C84D554 */  lw         $a0, %lo(D_800ED554)($a0)
/* 268D8 80025CD8 00031040 */  sll        $v0, $v1, 1
/* 268DC 80025CDC 00431021 */  addu       $v0, $v0, $v1
/* 268E0 80025CE0 000210C0 */  sll        $v0, $v0, 3
/* 268E4 80025CE4 00441021 */  addu       $v0, $v0, $a0
/* 268E8 80025CE8 84420002 */  lh         $v0, 2($v0)
/* 268EC 80025CEC 44820000 */  mtc1       $v0, $f0
/* 268F0 80025CF0 00000000 */  nop
/* 268F4 80025CF4 46800020 */  cvt.s.w    $f0, $f0
/* 268F8 80025CF8 4602003C */  c.lt.s     $f0, $f2
/* 268FC 80025CFC 00000000 */  nop
/* 26900 80025D00 00000000 */  nop
/* 26904 80025D04 45020002 */  bc1fl      .L80025D10
/* 26908 80025D08 E4A20048 */   swc1      $f2, 0x48($a1)
/* 2690C 80025D0C E4A00048 */  swc1       $f0, 0x48($a1)
.L80025D10:
/* 26910 80025D10 03E00008 */  jr         $ra
/* 26914 80025D14 00000000 */   nop