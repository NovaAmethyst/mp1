	.set noat
	.set noreorder

glabel func_80039020
/* 39C20 80039020 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 39C24 80039024 AFBF0010 */  sw         $ra, 0x10($sp)
/* 39C28 80039028 0C008D9A */  jal        func_80023668
/* 39C2C 8003902C 24040300 */   addiu     $a0, $zero, 0x300
/* 39C30 80039030 3C01800F */  lui        $at, %hi(D_800F3F40)
/* 39C34 80039034 AC223F40 */  sw         $v0, %lo(D_800F3F40)($at)
/* 39C38 80039038 00002021 */  addu       $a0, $zero, $zero
/* 39C3C 8003903C 3C05800F */  lui        $a1, %hi(D_800F3F40)
/* 39C40 80039040 8CA53F40 */  lw         $a1, %lo(D_800F3F40)($a1)
.L80039044:
/* 39C44 80039044 00041400 */  sll        $v0, $a0, 0x10
/* 39C48 80039048 00021403 */  sra        $v0, $v0, 0x10
/* 39C4C 8003904C 00021840 */  sll        $v1, $v0, 1
/* 39C50 80039050 00621821 */  addu       $v1, $v1, $v0
/* 39C54 80039054 000318C0 */  sll        $v1, $v1, 3
/* 39C58 80039058 00651821 */  addu       $v1, $v1, $a1
/* 39C5C 8003905C 24820001 */  addiu      $v0, $a0, 1
/* 39C60 80039060 00402021 */  addu       $a0, $v0, $zero
/* 39C64 80039064 00021400 */  sll        $v0, $v0, 0x10
/* 39C68 80039068 00021403 */  sra        $v0, $v0, 0x10
/* 39C6C 8003906C 28420020 */  slti       $v0, $v0, 0x20
/* 39C70 80039070 1440FFF4 */  bnez       $v0, .L80039044
/* 39C74 80039074 AC60000C */   sw        $zero, 0xc($v1)
/* 39C78 80039078 8FBF0010 */  lw         $ra, 0x10($sp)
/* 39C7C 8003907C 03E00008 */  jr         $ra
/* 39C80 80039080 27BD0018 */   addiu     $sp, $sp, 0x18