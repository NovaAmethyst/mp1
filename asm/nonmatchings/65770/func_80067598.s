	.set noat
	.set noreorder

glabel func_80067598
/* 68198 80067598 00042400 */  sll        $a0, $a0, 0x10
/* 6819C 8006759C 00042383 */  sra        $a0, $a0, 0xe
/* 681A0 800675A0 3C02800F */  lui        $v0, %hi(D_800EE330)
/* 681A4 800675A4 00441021 */  addu       $v0, $v0, $a0
/* 681A8 800675A8 8C42E330 */  lw         $v0, %lo(D_800EE330)($v0)
/* 681AC 800675AC 00052C00 */  sll        $a1, $a1, 0x10
/* 681B0 800675B0 00052B83 */  sra        $a1, $a1, 0xe
/* 681B4 800675B4 00A22821 */  addu       $a1, $a1, $v0
/* 681B8 800675B8 8CA2000C */  lw         $v0, 0xc($a1)
/* 681BC 800675BC 03E00008 */  jr         $ra
/* 681C0 800675C0 A446002A */   sh        $a2, 0x2a($v0)