	.set noat
	.set noreorder

glabel func_80017150
/* 17D50 80017150 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 17D54 80017154 AFBF001C */  sw         $ra, 0x1c($sp)
/* 17D58 80017158 AFB20018 */  sw         $s2, 0x18($sp)
/* 17D5C 8001715C AFB10014 */  sw         $s1, 0x14($sp)
/* 17D60 80017160 AFB00010 */  sw         $s0, 0x10($sp)
/* 17D64 80017164 00808021 */  addu       $s0, $a0, $zero
/* 17D68 80017168 8E02000C */  lw         $v0, 0xc($s0)
/* 17D6C 8001716C 10400019 */  beqz       $v0, .L800171D4
/* 17D70 80017170 2412FFFE */   addiu     $s2, $zero, -2
.L80017174:
/* 17D74 80017174 8E03000C */  lw         $v1, 0xc($s0)
/* 17D78 80017178 2C620400 */  sltiu      $v0, $v1, 0x400
/* 17D7C 8001717C 10400004 */  beqz       $v0, .L80017190
/* 17D80 80017180 24620001 */   addiu     $v0, $v1, 1
/* 17D84 80017184 00528824 */  and        $s1, $v0, $s2
/* 17D88 80017188 08005C68 */  j          .L800171A0
/* 17D8C 8001718C AE00000C */   sw        $zero, 0xc($s0)
.L80017190:
/* 17D90 80017190 24110400 */  addiu      $s1, $zero, 0x400
/* 17D94 80017194 8E02000C */  lw         $v0, 0xc($s0)
/* 17D98 80017198 2442FC00 */  addiu      $v0, $v0, -0x400
/* 17D9C 8001719C AE02000C */  sw         $v0, 0xc($s0)
.L800171A0:
/* 17DA0 800171A0 8E040004 */  lw         $a0, 4($s0)
/* 17DA4 800171A4 8E050008 */  lw         $a1, 8($s0)
/* 17DA8 800171A8 0C0187FA */  jal        func_80061FE8
/* 17DAC 800171AC 02203021 */   addu      $a2, $s1, $zero
/* 17DB0 800171B0 8E020004 */  lw         $v0, 4($s0)
/* 17DB4 800171B4 02221021 */  addu       $v0, $s1, $v0
/* 17DB8 800171B8 AE020004 */  sw         $v0, 4($s0)
/* 17DBC 800171BC 8E020008 */  lw         $v0, 8($s0)
/* 17DC0 800171C0 02221021 */  addu       $v0, $s1, $v0
/* 17DC4 800171C4 AE020008 */  sw         $v0, 8($s0)
/* 17DC8 800171C8 8E02000C */  lw         $v0, 0xc($s0)
/* 17DCC 800171CC 1440FFE9 */  bnez       $v0, .L80017174
/* 17DD0 800171D0 00000000 */   nop
.L800171D4:
/* 17DD4 800171D4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 17DD8 800171D8 8FB20018 */  lw         $s2, 0x18($sp)
/* 17DDC 800171DC 8FB10014 */  lw         $s1, 0x14($sp)
/* 17DE0 800171E0 8FB00010 */  lw         $s0, 0x10($sp)
/* 17DE4 800171E4 03E00008 */  jr         $ra
/* 17DE8 800171E8 27BD0020 */   addiu     $sp, $sp, 0x20