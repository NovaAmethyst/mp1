	.set noat
	.set noreorder

glabel func_80067834
/* 68434 80067834 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 68438 80067838 AFBF0018 */  sw         $ra, 0x18($sp)
/* 6843C 8006783C AFB10014 */  sw         $s1, 0x14($sp)
/* 68440 80067840 AFB00010 */  sw         $s0, 0x10($sp)
/* 68444 80067844 00008021 */  addu       $s0, $zero, $zero
/* 68448 80067848 3C11800F */  lui        $s1, %hi(D_800EC700)
/* 6844C 8006784C 2631C700 */  addiu      $s1, $s1, %lo(D_800EC700)
/* 68450 80067850 00101400 */  sll        $v0, $s0, 0x10
.L80067854:
/* 68454 80067854 00022403 */  sra        $a0, $v0, 0x10
/* 68458 80067858 00041080 */  sll        $v0, $a0, 2
/* 6845C 8006785C 00511021 */  addu       $v0, $v0, $s1
/* 68460 80067860 8C420000 */  lw         $v0, ($v0)
/* 68464 80067864 10400004 */  beqz       $v0, .L80067878
/* 68468 80067868 26020001 */   addiu     $v0, $s0, 1
/* 6846C 8006786C 0C019DC1 */  jal        func_80067704
/* 68470 80067870 00000000 */   nop
/* 68474 80067874 26020001 */  addiu      $v0, $s0, 1
.L80067878:
/* 68478 80067878 00408021 */  addu       $s0, $v0, $zero
/* 6847C 8006787C 00021400 */  sll        $v0, $v0, 0x10
/* 68480 80067880 00021403 */  sra        $v0, $v0, 0x10
/* 68484 80067884 28420100 */  slti       $v0, $v0, 0x100
/* 68488 80067888 1440FFF2 */  bnez       $v0, .L80067854
/* 6848C 8006788C 00101400 */   sll       $v0, $s0, 0x10
/* 68490 80067890 8FBF0018 */  lw         $ra, 0x18($sp)
/* 68494 80067894 8FB10014 */  lw         $s1, 0x14($sp)
/* 68498 80067898 8FB00010 */  lw         $s0, 0x10($sp)
/* 6849C 8006789C 03E00008 */  jr         $ra
/* 684A0 800678A0 27BD0020 */   addiu     $sp, $sp, 0x20