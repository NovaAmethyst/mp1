	.set noat
	.set noreorder

glabel func_80067704
/* 68304 80067704 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 68308 80067708 AFBF0020 */  sw         $ra, 0x20($sp)
/* 6830C 8006770C AFB3001C */  sw         $s3, 0x1c($sp)
/* 68310 80067710 AFB20018 */  sw         $s2, 0x18($sp)
/* 68314 80067714 AFB10014 */  sw         $s1, 0x14($sp)
/* 68318 80067718 AFB00010 */  sw         $s0, 0x10($sp)
/* 6831C 8006771C 00809821 */  addu       $s3, $a0, $zero
/* 68320 80067720 00042400 */  sll        $a0, $a0, 0x10
/* 68324 80067724 00042383 */  sra        $a0, $a0, 0xe
/* 68328 80067728 3C12800F */  lui        $s2, %hi(D_800EC700)
/* 6832C 8006772C 02449021 */  addu       $s2, $s2, $a0
/* 68330 80067730 8E52C700 */  lw         $s2, %lo(D_800EC700)($s2)
/* 68334 80067734 8E420004 */  lw         $v0, 4($s2)
/* 68338 80067738 10400017 */  beqz       $v0, .L80067798
/* 6833C 8006773C 00000000 */   nop
/* 68340 80067740 8C500000 */  lw         $s0, ($v0)
/* 68344 80067744 12000010 */  beqz       $s0, .L80067788
/* 68348 80067748 00000000 */   nop
/* 6834C 8006774C 96420012 */  lhu        $v0, 0x12($s2)
/* 68350 80067750 1040000C */  beqz       $v0, .L80067784
/* 68354 80067754 00008821 */   addu      $s1, $zero, $zero
.L80067758:
/* 68358 80067758 8E040004 */  lw         $a0, 4($s0)
/* 6835C 8006775C 0C008DCA */  jal        func_80023728
/* 68360 80067760 26100008 */   addiu     $s0, $s0, 8
/* 68364 80067764 26220001 */  addiu      $v0, $s1, 1
/* 68368 80067768 00408821 */  addu       $s1, $v0, $zero
/* 6836C 8006776C 00021400 */  sll        $v0, $v0, 0x10
/* 68370 80067770 00021403 */  sra        $v0, $v0, 0x10
/* 68374 80067774 96430012 */  lhu        $v1, 0x12($s2)
/* 68378 80067778 0043102A */  slt        $v0, $v0, $v1
/* 6837C 8006777C 1440FFF6 */  bnez       $v0, .L80067758
/* 68380 80067780 00000000 */   nop
.L80067784:
/* 68384 80067784 8E420004 */  lw         $v0, 4($s2)
.L80067788:
/* 68388 80067788 0C008DCA */  jal        func_80023728
/* 6838C 8006778C 8C440000 */   lw        $a0, ($v0)
/* 68390 80067790 0C008DCA */  jal        func_80023728
/* 68394 80067794 8E440004 */   lw        $a0, 4($s2)
.L80067798:
/* 68398 80067798 8E44000C */  lw         $a0, 0xc($s2)
/* 6839C 8006779C 0C008E22 */  jal        func_80023888
/* 683A0 800677A0 00008821 */   addu      $s1, $zero, $zero
/* 683A4 800677A4 8E500000 */  lw         $s0, ($s2)
/* 683A8 800677A8 96420010 */  lhu        $v0, 0x10($s2)
/* 683AC 800677AC 1040000C */  beqz       $v0, .L800677E0
/* 683B0 800677B0 00000000 */   nop
.L800677B4:
/* 683B4 800677B4 8E040000 */  lw         $a0, ($s0)
/* 683B8 800677B8 0C008E22 */  jal        func_80023888
/* 683BC 800677BC 2610000C */   addiu     $s0, $s0, 0xc
/* 683C0 800677C0 26220001 */  addiu      $v0, $s1, 1
/* 683C4 800677C4 00408821 */  addu       $s1, $v0, $zero
/* 683C8 800677C8 00021400 */  sll        $v0, $v0, 0x10
/* 683CC 800677CC 00021403 */  sra        $v0, $v0, 0x10
/* 683D0 800677D0 96430010 */  lhu        $v1, 0x10($s2)
/* 683D4 800677D4 0043102A */  slt        $v0, $v0, $v1
/* 683D8 800677D8 1440FFF6 */  bnez       $v0, .L800677B4
/* 683DC 800677DC 00000000 */   nop
.L800677E0:
/* 683E0 800677E0 0C008DCA */  jal        func_80023728
/* 683E4 800677E4 8E440000 */   lw        $a0, ($s2)
/* 683E8 800677E8 0C008DCA */  jal        func_80023728
/* 683EC 800677EC 02402021 */   addu      $a0, $s2, $zero
/* 683F0 800677F0 00131400 */  sll        $v0, $s3, 0x10
/* 683F4 800677F4 00021383 */  sra        $v0, $v0, 0xe
/* 683F8 800677F8 3C01800F */  lui        $at, %hi(D_800EC700)
/* 683FC 800677FC 00220821 */  addu       $at, $at, $v0
/* 68400 80067800 AC20C700 */  sw         $zero, %lo(D_800EC700)($at)
/* 68404 80067804 3C02800F */  lui        $v0, %hi(D_800ED3EC)
/* 68408 80067808 9442D3EC */  lhu        $v0, %lo(D_800ED3EC)($v0)
/* 6840C 8006780C 2442FFFF */  addiu      $v0, $v0, -1
/* 68410 80067810 3C01800F */  lui        $at, %hi(D_800ED3EC)
/* 68414 80067814 A422D3EC */  sh         $v0, %lo(D_800ED3EC)($at)
/* 68418 80067818 8FBF0020 */  lw         $ra, 0x20($sp)
/* 6841C 8006781C 8FB3001C */  lw         $s3, 0x1c($sp)
/* 68420 80067820 8FB20018 */  lw         $s2, 0x18($sp)
/* 68424 80067824 8FB10014 */  lw         $s1, 0x14($sp)
/* 68428 80067828 8FB00010 */  lw         $s0, 0x10($sp)
/* 6842C 8006782C 03E00008 */  jr         $ra
/* 68430 80067830 27BD0028 */   addiu     $sp, $sp, 0x28