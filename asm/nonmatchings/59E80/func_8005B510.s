	.set noat
	.set noreorder

glabel func_8005B510
/* 5C110 8005B510 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5C114 8005B514 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5C118 8005B518 3C02800F */  lui        $v0, %hi(D_800ED0CE)
/* 5C11C 8005B51C 9442D0CE */  lhu        $v0, %lo(D_800ED0CE)($v0)
/* 5C120 8005B520 1040002A */  beqz       $v0, .L8005B5CC
/* 5C124 8005B524 00000000 */   nop
/* 5C128 8005B528 3C01800E */  lui        $at, %hi(D_800D8908)
/* 5C12C 8005B52C C4208908 */  lwc1       $f0, %lo(D_800D8908)($at)
/* 5C130 8005B530 3C01800E */  lui        $at, %hi(D_800D890C)
/* 5C134 8005B534 C422890C */  lwc1       $f2, %lo(D_800D890C)($at)
/* 5C138 8005B538 46020000 */  add.s      $f0, $f0, $f2
/* 5C13C 8005B53C 3C01800E */  lui        $at, %hi(D_800D8908)
/* 5C140 8005B540 E4208908 */  swc1       $f0, %lo(D_800D8908)($at)
/* 5C144 8005B544 3C014300 */  lui        $at, 0x4300
/* 5C148 8005B548 44811000 */  mtc1       $at, $f2
/* 5C14C 8005B54C 00000000 */  nop
/* 5C150 8005B550 4600103E */  c.le.s     $f2, $f0
/* 5C154 8005B554 00000000 */  nop
/* 5C158 8005B558 45000005 */  bc1f       .L8005B570
/* 5C15C 8005B55C 00000000 */   nop
/* 5C160 8005B560 3C0142FE */  lui        $at, 0x42fe
/* 5C164 8005B564 44810000 */  mtc1       $at, $f0
/* 5C168 8005B568 3C01800E */  lui        $at, %hi(D_800D8908)
/* 5C16C 8005B56C E4208908 */  swc1       $f0, %lo(D_800D8908)($at)
.L8005B570:
/* 5C170 8005B570 3C01800E */  lui        $at, %hi(D_800D8908)
/* 5C174 8005B574 C4208908 */  lwc1       $f0, %lo(D_800D8908)($at)
/* 5C178 8005B578 44801000 */  mtc1       $zero, $f2
/* 5C17C 8005B57C 00000000 */  nop
/* 5C180 8005B580 4602003C */  c.lt.s     $f0, $f2
/* 5C184 8005B584 00000000 */  nop
/* 5C188 8005B588 45000003 */  bc1f       .L8005B598
/* 5C18C 8005B58C 00000000 */   nop
/* 5C190 8005B590 3C01800E */  lui        $at, %hi(D_800D8908)
/* 5C194 8005B594 E4228908 */  swc1       $f2, %lo(D_800D8908)($at)
.L8005B598:
/* 5C198 8005B598 3C02800F */  lui        $v0, %hi(D_800ED0CE)
/* 5C19C 8005B59C 9442D0CE */  lhu        $v0, %lo(D_800ED0CE)($v0)
/* 5C1A0 8005B5A0 2442FFFF */  addiu      $v0, $v0, -1
/* 5C1A4 8005B5A4 3C01800F */  lui        $at, %hi(D_800ED0CE)
/* 5C1A8 8005B5A8 A422D0CE */  sh         $v0, %lo(D_800ED0CE)($at)
/* 5C1AC 8005B5AC 3C01800E */  lui        $at, %hi(D_800D8908)
/* 5C1B0 8005B5B0 C4208908 */  lwc1       $f0, %lo(D_800D8908)($at)
/* 5C1B4 8005B5B4 4600008D */  trunc.w.s  $f2, $f0
/* 5C1B8 8005B5B8 44041000 */  mfc1       $a0, $f2
/* 5C1BC 8005B5BC 00000000 */  nop
/* 5C1C0 8005B5C0 00042600 */  sll        $a0, $a0, 0x18
/* 5C1C4 8005B5C4 0C018085 */  jal        func_80060214
/* 5C1C8 8005B5C8 00042603 */   sra       $a0, $a0, 0x18
.L8005B5CC:
/* 5C1CC 8005B5CC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5C1D0 8005B5D0 03E00008 */  jr         $ra
/* 5C1D4 8005B5D4 27BD0018 */   addiu     $sp, $sp, 0x18