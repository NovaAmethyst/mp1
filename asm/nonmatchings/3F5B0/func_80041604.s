	.set noat
	.set noreorder

glabel func_80041604
/* 42204 80041604 00041100 */  sll        $v0, $a0, 4
/* 42208 80041608 00441021 */  addu       $v0, $v0, $a0
/* 4220C 8004160C 00021080 */  sll        $v0, $v0, 2
/* 42210 80041610 3C01800D */  lui        $at, %hi(D_800D62D0)
/* 42214 80041614 00220821 */  addu       $at, $at, $v0
/* 42218 80041618 802262D0 */  lb         $v0, %lo(D_800D62D0)($at)
/* 4221C 8004161C 03E00008 */  jr         $ra
/* 42220 80041620 2442FFFF */   addiu     $v0, $v0, -1