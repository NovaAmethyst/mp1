	.set noat
	.set noreorder

glabel func_8003B5EC
/* 3C1EC 8003B5EC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3C1F0 8003B5F0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3C1F4 8003B5F4 AFB20018 */  sw         $s2, 0x18($sp)
/* 3C1F8 8003B5F8 AFB10014 */  sw         $s1, 0x14($sp)
/* 3C1FC 8003B5FC AFB00010 */  sw         $s0, 0x10($sp)
/* 3C200 8003B600 00801021 */  addu       $v0, $a0, $zero
/* 3C204 8003B604 00042400 */  sll        $a0, $a0, 0x10
/* 3C208 8003B608 18800014 */  blez       $a0, .L8003B65C
/* 3C20C 8003B60C 00008021 */   addu      $s0, $zero, $zero
/* 3C210 8003B610 3C12800C */  lui        $s2, %hi(D_800C4250)
/* 3C214 8003B614 26524250 */  addiu      $s2, $s2, %lo(D_800C4250)
/* 3C218 8003B618 00021400 */  sll        $v0, $v0, 0x10
/* 3C21C 8003B61C 00028C03 */  sra        $s1, $v0, 0x10
/* 3C220 8003B620 00101400 */  sll        $v0, $s0, 0x10
.L8003B624:
/* 3C224 8003B624 00021383 */  sra        $v0, $v0, 0xe
/* 3C228 8003B628 00521021 */  addu       $v0, $v0, $s2
/* 3C22C 8003B62C 8C440000 */  lw         $a0, ($v0)
/* 3C230 8003B630 00002821 */  addu       $a1, $zero, $zero
/* 3C234 8003B634 3C060002 */  lui        $a2, 2
/* 3C238 8003B638 0C026DDC */  jal        func_8009B770
/* 3C23C 8003B63C 34C65800 */   ori       $a2, $a2, 0x5800
/* 3C240 8003B640 26020001 */  addiu      $v0, $s0, 1
/* 3C244 8003B644 00408021 */  addu       $s0, $v0, $zero
/* 3C248 8003B648 00021400 */  sll        $v0, $v0, 0x10
/* 3C24C 8003B64C 00021403 */  sra        $v0, $v0, 0x10
/* 3C250 8003B650 0051102A */  slt        $v0, $v0, $s1
/* 3C254 8003B654 1440FFF3 */  bnez       $v0, .L8003B624
/* 3C258 8003B658 00101400 */   sll       $v0, $s0, 0x10
.L8003B65C:
/* 3C25C 8003B65C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3C260 8003B660 8FB20018 */  lw         $s2, 0x18($sp)
/* 3C264 8003B664 8FB10014 */  lw         $s1, 0x14($sp)
/* 3C268 8003B668 8FB00010 */  lw         $s0, 0x10($sp)
/* 3C26C 8003B66C 03E00008 */  jr         $ra
/* 3C270 8003B670 27BD0020 */   addiu     $sp, $sp, 0x20
/* 3C274 8003B674 00000000 */  nop
/* 3C278 8003B678 00000000 */  nop
/* 3C27C 8003B67C 00000000 */  nop