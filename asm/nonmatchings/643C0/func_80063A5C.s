	.set noat
	.set noreorder

glabel func_80063A5C
/* 6465C 80063A5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 64660 80063A60 AFBF0014 */  sw         $ra, 0x14($sp)
/* 64664 80063A64 AFB00010 */  sw         $s0, 0x10($sp)
/* 64668 80063A68 00808021 */  addu       $s0, $a0, $zero
/* 6466C 80063A6C 0C022124 */  jal        func_80088490
/* 64670 80063A70 24040001 */   addiu     $a0, $zero, 1
/* 64674 80063A74 00402021 */  addu       $a0, $v0, $zero
/* 64678 80063A78 3C02800E */  lui        $v0, %hi(D_800E23E0)
/* 6467C 80063A7C 8C4223E0 */  lw         $v0, %lo(D_800E23E0)($v0)
/* 64680 80063A80 1040000F */  beqz       $v0, .L80063AC0
/* 64684 80063A84 00001821 */   addu      $v1, $zero, $zero
.L80063A88:
/* 64688 80063A88 5450000A */  bnel       $v0, $s0, .L80063AB4
/* 6468C 80063A8C 00401821 */   addu      $v1, $v0, $zero
/* 64690 80063A90 10600004 */  beqz       $v1, .L80063AA4
/* 64694 80063A94 00000000 */   nop
/* 64698 80063A98 8C420000 */  lw         $v0, ($v0)
/* 6469C 80063A9C 08018EB0 */  j          .L80063AC0
/* 646A0 80063AA0 AC620000 */   sw        $v0, ($v1)
.L80063AA4:
/* 646A4 80063AA4 8E020000 */  lw         $v0, ($s0)
/* 646A8 80063AA8 3C01800E */  lui        $at, %hi(D_800E23E0)
/* 646AC 80063AAC 08018EB0 */  j          .L80063AC0
/* 646B0 80063AB0 AC2223E0 */   sw        $v0, %lo(D_800E23E0)($at)
.L80063AB4:
/* 646B4 80063AB4 8C420000 */  lw         $v0, ($v0)
/* 646B8 80063AB8 1440FFF3 */  bnez       $v0, .L80063A88
/* 646BC 80063ABC 00000000 */   nop
.L80063AC0:
/* 646C0 80063AC0 0C022124 */  jal        func_80088490
/* 646C4 80063AC4 00000000 */   nop
/* 646C8 80063AC8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 646CC 80063ACC 8FB00010 */  lw         $s0, 0x10($sp)
/* 646D0 80063AD0 03E00008 */  jr         $ra
/* 646D4 80063AD4 27BD0018 */   addiu     $sp, $sp, 0x18