glabel func_80049970
/* 04A570 80049970 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 04A574 80049974 AFB70034 */  sw    $s7, 0x34($sp)
/* 04A578 80049978 8FB70074 */  lw    $s7, 0x74($sp)
/* 04A57C 8004997C AFB30024 */  sw    $s3, 0x24($sp)
/* 04A580 80049980 AFB20020 */  sw    $s2, 0x20($sp)
/* 04A584 80049984 00F7001A */  div   $zero, $a3, $s7
/* 04A588 80049988 00007012 */  mflo  $t6
/* 04A58C 8004998C AFBF003C */  sw    $ra, 0x3c($sp)
/* 04A590 80049990 AFBE0038 */  sw    $fp, 0x38($sp)
/* 04A594 80049994 AFB60030 */  sw    $s6, 0x30($sp)
/* 04A598 80049998 AFB5002C */  sw    $s5, 0x2c($sp)
/* 04A59C 8004999C AFB40028 */  sw    $s4, 0x28($sp)
/* 04A5A0 800499A0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 04A5A4 800499A4 AFB00018 */  sw    $s0, 0x18($sp)
/* 04A5A8 800499A8 AFA50064 */  sw    $a1, 0x64($sp)
/* 04A5AC 800499AC 00009025 */  move  $s2, $zero
/* 04A5B0 800499B0 00809825 */  move  $s3, $a0
/* 04A5B4 800499B4 AFAE0040 */  sw    $t6, 0x40($sp)
/* 04A5B8 800499B8 01C07825 */  move  $t7, $t6
/* 04A5BC 800499BC 00001025 */  move  $v0, $zero
/* 04A5C0 800499C0 16E00002 */  bnez  $s7, .L800499CC
/* 04A5C4 800499C4 00000000 */   nop   
/* 04A5C8 800499C8 0007000D */  break 7
.L800499CC:
/* 04A5CC 800499CC 2401FFFF */  li    $at, -1
/* 04A5D0 800499D0 16E10004 */  bne   $s7, $at, .L800499E4
/* 04A5D4 800499D4 3C018000 */   lui   $at, 0x8000
/* 04A5D8 800499D8 14E10002 */  bne   $a3, $at, .L800499E4
/* 04A5DC 800499DC 00000000 */   nop   
/* 04A5E0 800499E0 0006000D */  break 6
.L800499E4:
/* 04A5E4 800499E4 19C00038 */  blez  $t6, .L80049AC8
/* 04A5E8 800499E8 00000000 */   nop   
/* 04A5EC 800499EC 8FBE0070 */  lw    $fp, 0x70($sp)
/* 04A5F0 800499F0 3C118015 */  lui   $s1, %hi(gDisplayListHead) # $s1, 0x8015
/* 04A5F4 800499F4 26310298 */  addiu $s1, %lo(gDisplayListHead) # addiu $s1, $s1, 0x298
/* 04A5F8 800499F8 00DE001A */  div   $zero, $a2, $fp
/* 04A5FC 800499FC 0000B012 */  mflo  $s6
/* 04A600 80049A00 17C00002 */  bnez  $fp, .L80049A0C
/* 04A604 80049A04 00000000 */   nop   
/* 04A608 80049A08 0007000D */  break 7
.L80049A0C:
/* 04A60C 80049A0C 2401FFFF */  li    $at, -1
/* 04A610 80049A10 17C10004 */  bne   $fp, $at, .L80049A24
/* 04A614 80049A14 3C018000 */   lui   $at, 0x8000
/* 04A618 80049A18 14C10002 */  bne   $a2, $at, .L80049A24
/* 04A61C 80049A1C 00000000 */   nop   
/* 04A620 80049A20 0006000D */  break 6
.L80049A24:
/* 04A624 80049A24 1AC00024 */  blez  $s6, .L80049AB8
/* 04A628 80049A28 00008025 */   move  $s0, $zero
/* 04A62C 80049A2C 03D70019 */  multu $fp, $s7
/* 04A630 80049A30 3C140D00 */  lui   $s4, %hi(D_0D006940) # $s4, 0xd00
/* 04A634 80049A34 26946940 */  addiu $s4, %lo(D_0D006940) # addiu $s4, $s4, 0x6940
/* 04A638 80049A38 AFA2005C */  sw    $v0, 0x5c($sp)
/* 04A63C 80049A3C 0000A812 */  mflo  $s5
/* 04A640 80049A40 06A10003 */  bgez  $s5, .L80049A50
/* 04A644 80049A44 0015C043 */   sra   $t8, $s5, 1
/* 04A648 80049A48 26A10001 */  addiu $at, $s5, 1
/* 04A64C 80049A4C 0001C043 */  sra   $t8, $at, 1
.L80049A50:
/* 04A650 80049A50 0300A825 */  move  $s5, $t8
.L80049A54:
/* 04A654 80049A54 02602025 */  move  $a0, $s3
/* 04A658 80049A58 03C02825 */  move  $a1, $fp
/* 04A65C 80049A5C 0C011368 */  jal   func_80044DA0
/* 04A660 80049A60 02E03025 */   move  $a2, $s7
/* 04A664 80049A64 8E220000 */  lw    $v0, ($s1)
/* 04A668 80049A68 3C080400 */  lui   $t0, (0x0400103F >> 16) # lui $t0, 0x400
/* 04A66C 80049A6C 3508103F */  ori   $t0, (0x0400103F & 0xFFFF) # ori $t0, $t0, 0x103f
/* 04A670 80049A70 24590008 */  addiu $t9, $v0, 8
/* 04A674 80049A74 AE390000 */  sw    $t9, ($s1)
/* 04A678 80049A78 AC480000 */  sw    $t0, ($v0)
/* 04A67C 80049A7C 8FAA0064 */  lw    $t2, 0x64($sp)
/* 04A680 80049A80 00124900 */  sll   $t1, $s2, 4
/* 04A684 80049A84 26100001 */  addiu $s0, $s0, 1
/* 04A688 80049A88 012A5821 */  addu  $t3, $t1, $t2
/* 04A68C 80049A8C AC4B0004 */  sw    $t3, 4($v0)
/* 04A690 80049A90 8E220000 */  lw    $v0, ($s1)
/* 04A694 80049A94 3C0D0600 */  lui   $t5, 0x600
/* 04A698 80049A98 02759821 */  addu  $s3, $s3, $s5
/* 04A69C 80049A9C 244C0008 */  addiu $t4, $v0, 8
/* 04A6A0 80049AA0 AE2C0000 */  sw    $t4, ($s1)
/* 04A6A4 80049AA4 26520004 */  addiu $s2, $s2, 4
/* 04A6A8 80049AA8 AC540004 */  sw    $s4, 4($v0)
/* 04A6AC 80049AAC 1616FFE9 */  bne   $s0, $s6, .L80049A54
/* 04A6B0 80049AB0 AC4D0000 */   sw    $t5, ($v0)
/* 04A6B4 80049AB4 8FA2005C */  lw    $v0, 0x5c($sp)
.L80049AB8:
/* 04A6B8 80049AB8 8FAE0040 */  lw    $t6, 0x40($sp)
/* 04A6BC 80049ABC 24420001 */  addiu $v0, $v0, 1
/* 04A6C0 80049AC0 144EFFD8 */  bne   $v0, $t6, .L80049A24
/* 04A6C4 80049AC4 00000000 */   nop   
.L80049AC8:
/* 04A6C8 80049AC8 3C118015 */  lui   $s1, %hi(gDisplayListHead) # $s1, 0x8015
/* 04A6CC 80049ACC 26310298 */  addiu $s1, %lo(gDisplayListHead) # addiu $s1, $s1, 0x298
/* 04A6D0 80049AD0 8E220000 */  lw    $v0, ($s1)
/* 04A6D4 80049AD4 3C190001 */  lui   $t9, (0x00010001 >> 16) # lui $t9, 1
/* 04A6D8 80049AD8 37390001 */  ori   $t9, (0x00010001 & 0xFFFF) # ori $t9, $t9, 1
/* 04A6DC 80049ADC 244F0008 */  addiu $t7, $v0, 8
/* 04A6E0 80049AE0 AE2F0000 */  sw    $t7, ($s1)
/* 04A6E4 80049AE4 3C18BB00 */  lui   $t8, 0xbb00
/* 04A6E8 80049AE8 AC580000 */  sw    $t8, ($v0)
/* 04A6EC 80049AEC AC590004 */  sw    $t9, 4($v0)
/* 04A6F0 80049AF0 8FBF003C */  lw    $ra, 0x3c($sp)
/* 04A6F4 80049AF4 8FBE0038 */  lw    $fp, 0x38($sp)
/* 04A6F8 80049AF8 8FB70034 */  lw    $s7, 0x34($sp)
/* 04A6FC 80049AFC 8FB60030 */  lw    $s6, 0x30($sp)
/* 04A700 80049B00 8FB5002C */  lw    $s5, 0x2c($sp)
/* 04A704 80049B04 8FB40028 */  lw    $s4, 0x28($sp)
/* 04A708 80049B08 8FB30024 */  lw    $s3, 0x24($sp)
/* 04A70C 80049B0C 8FB20020 */  lw    $s2, 0x20($sp)
/* 04A710 80049B10 8FB1001C */  lw    $s1, 0x1c($sp)
/* 04A714 80049B14 8FB00018 */  lw    $s0, 0x18($sp)
/* 04A718 80049B18 03E00008 */  jr    $ra
/* 04A71C 80049B1C 27BD0060 */   addiu $sp, $sp, 0x60