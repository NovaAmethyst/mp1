	.set noat
	.set noreorder

glabel func_80039644
/* 3A244 80039644 00042400 */  sll        $a0, $a0, 0x10
/* 3A248 80039648 00042403 */  sra        $a0, $a0, 0x10
/* 3A24C 8003964C 00041840 */  sll        $v1, $a0, 1
/* 3A250 80039650 00641821 */  addu       $v1, $v1, $a0
/* 3A254 80039654 00031880 */  sll        $v1, $v1, 2
/* 3A258 80039658 3C02800F */  lui        $v0, %hi(D_800F3708)
/* 3A25C 8003965C 8C423708 */  lw         $v0, %lo(D_800F3708)($v0)
/* 3A260 80039660 00621821 */  addu       $v1, $v1, $v0
/* 3A264 80039664 00052827 */  nor        $a1, $zero, $a1
/* 3A268 80039668 9062000A */  lbu        $v0, 0xa($v1)
/* 3A26C 8003966C 00451024 */  and        $v0, $v0, $a1
/* 3A270 80039670 00C23025 */  or         $a2, $a2, $v0
/* 3A274 80039674 03E00008 */  jr         $ra
/* 3A278 80039678 A066000A */   sb        $a2, 0xa($v1)