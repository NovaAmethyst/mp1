	.set noat
	.set noreorder

glabel func_800145B0
/* 151B0 800145B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 151B4 800145B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 151B8 800145B8 AFB00010 */  sw         $s0, 0x10($sp)
/* 151BC 800145BC 00042C03 */  sra        $a1, $a0, 0x10
/* 151C0 800145C0 3C02800D */  lui        $v0, %hi(D_800D12F4)
/* 151C4 800145C4 8C4212F4 */  lw         $v0, %lo(D_800D12F4)($v0)
/* 151C8 800145C8 00A2102B */  sltu       $v0, $a1, $v0
/* 151CC 800145CC 1040000C */  beqz       $v0, .L80014600
/* 151D0 800145D0 3090FFFF */   andi      $s0, $a0, 0xffff
/* 151D4 800145D4 0C0051DC */  jal        func_80014770
/* 151D8 800145D8 2404002F */   addiu     $a0, $zero, 0x2f
/* 151DC 800145DC 3C02800D */  lui        $v0, %hi(D_800D1300)
/* 151E0 800145E0 8C421300 */  lw         $v0, %lo(D_800D1300)($v0)
/* 151E4 800145E4 0202102B */  sltu       $v0, $s0, $v0
/* 151E8 800145E8 10400005 */  beqz       $v0, .L80014600
/* 151EC 800145EC 2404002E */   addiu     $a0, $zero, 0x2e
/* 151F0 800145F0 0C00519E */  jal        func_80014678
/* 151F4 800145F4 02002821 */   addu      $a1, $s0, $zero
/* 151F8 800145F8 08005181 */  j          .L80014604
/* 151FC 800145FC 00000000 */   nop
.L80014600:
/* 15200 80014600 00001021 */  addu       $v0, $zero, $zero
.L80014604:
/* 15204 80014604 8FBF0014 */  lw         $ra, 0x14($sp)
/* 15208 80014608 8FB00010 */  lw         $s0, 0x10($sp)
/* 1520C 8001460C 03E00008 */  jr         $ra
/* 15210 80014610 27BD0018 */   addiu     $sp, $sp, 0x18