	.set noat
	.set noreorder

glabel func_80076080
/* 76C80 80076080 00042400 */  sll        $a0, $a0, 0x10
/* 76C84 80076084 00042403 */  sra        $a0, $a0, 0x10
/* 76C88 80076088 00041040 */  sll        $v0, $a0, 1
/* 76C8C 8007608C 00441021 */  addu       $v0, $v0, $a0
/* 76C90 80076090 00021080 */  sll        $v0, $v0, 2
/* 76C94 80076094 00441021 */  addu       $v0, $v0, $a0
/* 76C98 80076098 000210C0 */  sll        $v0, $v0, 3
/* 76C9C 8007609C 3C01800F */  lui        $at, %hi(D_800ED746)
/* 76CA0 800760A0 00220821 */  addu       $at, $at, $v0
/* 76CA4 800760A4 03E00008 */  jr         $ra
/* 76CA8 800760A8 A425D746 */   sh        $a1, %lo(D_800ED746)($at)