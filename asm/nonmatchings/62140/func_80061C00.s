	.set noat
	.set noreorder

glabel func_80061C00
/* 62800 80061C00 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 62804 80061C04 AFBF006C */  sw         $ra, 0x6c($sp)
/* 62808 80061C08 AFB60068 */  sw         $s6, 0x68($sp)
/* 6280C 80061C0C AFB50064 */  sw         $s5, 0x64($sp)
/* 62810 80061C10 AFB40060 */  sw         $s4, 0x60($sp)
/* 62814 80061C14 AFB3005C */  sw         $s3, 0x5c($sp)
/* 62818 80061C18 AFB20058 */  sw         $s2, 0x58($sp)
/* 6281C 80061C1C AFB10054 */  sw         $s1, 0x54($sp)
/* 62820 80061C20 AFB00050 */  sw         $s0, 0x50($sp)
/* 62824 80061C24 00C0A021 */  addu       $s4, $a2, $zero
/* 62828 80061C28 8FB50080 */  lw         $s5, 0x80($sp)
/* 6282C 80061C2C 8FB60084 */  lw         $s6, 0x84($sp)
/* 62830 80061C30 00809021 */  addu       $s2, $a0, $zero
/* 62834 80061C34 00A09821 */  addu       $s3, $a1, $zero
/* 62838 80061C38 27B00038 */  addiu      $s0, $sp, 0x38
/* 6283C 80061C3C 27B10048 */  addiu      $s1, $sp, 0x48
/* 62840 80061C40 00E02021 */  addu       $a0, $a3, $zero
/* 62844 80061C44 02002821 */  addu       $a1, $s0, $zero
/* 62848 80061C48 0C01858E */  jal        func_80061638
/* 6284C 80061C4C 02203021 */   addu      $a2, $s1, $zero
/* 62850 80061C50 A7B20020 */  sh         $s2, 0x20($sp)
/* 62854 80061C54 A7B30022 */  sh         $s3, 0x22($sp)
/* 62858 80061C58 AFB40024 */  sw         $s4, 0x24($sp)
/* 6285C 80061C5C AFB00028 */  sw         $s0, 0x28($sp)
/* 62860 80061C60 AFB1002C */  sw         $s1, 0x2c($sp)
/* 62864 80061C64 A7B50030 */  sh         $s5, 0x30($sp)
/* 62868 80061C68 27A40010 */  addiu      $a0, $sp, 0x10
/* 6286C 80061C6C 3C058006 */  lui        $a1, %hi(func_80061B3C)
/* 62870 80061C70 24A51B3C */  addiu      $a1, $a1, %lo(func_80061B3C)
/* 62874 80061C74 27A60020 */  addiu      $a2, $sp, 0x20
/* 62878 80061C78 0C0190BF */  jal        func_800642FC
/* 6287C 80061C7C 24070002 */   addiu     $a3, $zero, 2
/* 62880 80061C80 8FA20034 */  lw         $v0, 0x34($sp)
/* 62884 80061C84 AEC20000 */  sw         $v0, ($s6)
/* 62888 80061C88 8FA20018 */  lw         $v0, 0x18($sp)
/* 6288C 80061C8C 8FBF006C */  lw         $ra, 0x6c($sp)
/* 62890 80061C90 8FB60068 */  lw         $s6, 0x68($sp)
/* 62894 80061C94 8FB50064 */  lw         $s5, 0x64($sp)
/* 62898 80061C98 8FB40060 */  lw         $s4, 0x60($sp)
/* 6289C 80061C9C 8FB3005C */  lw         $s3, 0x5c($sp)
/* 628A0 80061CA0 8FB20058 */  lw         $s2, 0x58($sp)
/* 628A4 80061CA4 8FB10054 */  lw         $s1, 0x54($sp)
/* 628A8 80061CA8 8FB00050 */  lw         $s0, 0x50($sp)
/* 628AC 80061CAC 03E00008 */  jr         $ra
/* 628B0 80061CB0 27BD0070 */   addiu     $sp, $sp, 0x70