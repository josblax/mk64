glabel func_800C284C
/* 0C344C 800C284C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0C3450 800C2850 3C0F800F */  lui   $t7, %hi(D_800EA1EC) # $t7, 0x800f
/* 0C3454 800C2854 91EFA1EC */  lbu   $t7, %lo(D_800EA1EC)($t7)
/* 0C3458 800C2858 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0C345C 800C285C AFA7004C */  sw    $a3, 0x4c($sp)
/* 0C3460 800C2860 30EEFFFF */  andi  $t6, $a3, 0xffff
/* 0C3464 800C2864 01C03825 */  move  $a3, $t6
/* 0C3468 800C2868 03A0F025 */  move  $fp, $sp
/* 0C346C 800C286C AFBF002C */  sw    $ra, 0x2c($sp)
/* 0C3470 800C2870 AFA40040 */  sw    $a0, 0x40($sp)
/* 0C3474 800C2874 AFA50044 */  sw    $a1, 0x44($sp)
/* 0C3478 800C2878 11E00005 */  beqz  $t7, .L800C2890
/* 0C347C 800C287C AFA60048 */   sw    $a2, 0x48($sp)
/* 0C3480 800C2880 93D80043 */  lbu   $t8, 0x43($fp)
/* 0C3484 800C2884 24010002 */  li    $at, 2
/* 0C3488 800C2888 57010046 */  bnel  $t8, $at, .L800C29A4
/* 0C348C 800C288C 8FDF002C */   lw    $ra, 0x2c($fp)
.L800C2890:
/* 0C3490 800C2890 93D90043 */  lbu   $t9, 0x43($fp)
/* 0C3494 800C2894 93CB0047 */  lbu   $t3, 0x47($fp)
/* 0C3498 800C2898 3C018200 */  lui   $at, 0x8200
/* 0C349C 800C289C 00191400 */  sll   $v0, $t9, 0x10
/* 0C34A0 800C28A0 00414825 */  or    $t1, $v0, $at
/* 0C34A4 800C28A4 000B6200 */  sll   $t4, $t3, 8
/* 0C34A8 800C28A8 012C2025 */  or    $a0, $t1, $t4
/* 0C34AC 800C28AC AFC20034 */  sw    $v0, 0x34($fp)
/* 0C34B0 800C28B0 0C032EEE */  jal   func_800CBBB8
/* 0C34B4 800C28B4 00E02825 */   move  $a1, $a3
/* 0C34B8 800C28B8 93CD0043 */  lbu   $t5, 0x43($fp)
/* 0C34BC 800C28BC 3C0F8019 */  lui   $t7, %hi(D_801930D0) # $t7, 0x8019
/* 0C34C0 800C28C0 25EF30D0 */  addiu $t7, %lo(D_801930D0) # addiu $t7, $t7, 0x30d0
/* 0C34C4 800C28C4 000D70C0 */  sll   $t6, $t5, 3
/* 0C34C8 800C28C8 01CD7021 */  addu  $t6, $t6, $t5
/* 0C34CC 800C28CC 000E7080 */  sll   $t6, $t6, 2
/* 0C34D0 800C28D0 01CD7021 */  addu  $t6, $t6, $t5
/* 0C34D4 800C28D4 000E7080 */  sll   $t6, $t6, 2
/* 0C34D8 800C28D8 01CD7023 */  subu  $t6, $t6, $t5
/* 0C34DC 800C28DC 000E7080 */  sll   $t6, $t6, 2
/* 0C34E0 800C28E0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C34E4 800C28E4 01CF3021 */  addu  $a2, $t6, $t7
/* 0C34E8 800C28E8 44810000 */  mtc1  $at, $f0
/* 0C34EC 800C28EC C4C20000 */  lwc1  $f2, ($a2)
/* 0C34F0 800C28F0 93D9004B */  lbu   $t9, 0x4b($fp)
/* 0C34F4 800C28F4 93D80047 */  lbu   $t8, 0x47($fp)
/* 0C34F8 800C28F8 46020032 */  c.eq.s $f0, $f2
/* 0C34FC 800C28FC 00194200 */  sll   $t0, $t9, 8
/* 0C3500 800C2900 8FC20034 */  lw    $v0, 0x34($fp)
/* 0C3504 800C2904 03085025 */  or    $t2, $t8, $t0
/* 0C3508 800C2908 45010009 */  bc1t  .L800C2930
/* 0C350C 800C290C A4CA0248 */   sh    $t2, 0x248($a2)
/* 0C3510 800C2910 3C014100 */  lui   $at, 0x4100
/* 0C3514 800C2914 44051000 */  mfc1  $a1, $f2
/* 0C3518 800C2918 00412025 */  or    $a0, $v0, $at
/* 0C351C 800C291C 0C032EE2 */  jal   func_800CBB88
/* 0C3520 800C2920 AFC60030 */   sw    $a2, 0x30($fp)
/* 0C3524 800C2924 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C3528 800C2928 44810000 */  mtc1  $at, $f0
/* 0C352C 800C292C 8FC60030 */  lw    $a2, 0x30($fp)
.L800C2930:
/* 0C3530 800C2930 A4C00028 */  sh    $zero, 0x28($a2)
/* 0C3534 800C2934 A4C00018 */  sh    $zero, 0x18($a2)
/* 0C3538 800C2938 ACC00014 */  sw    $zero, 0x14($a2)
/* 0C353C 800C293C 93CB0043 */  lbu   $t3, 0x43($fp)
/* 0C3540 800C2940 3C0C8019 */  lui   $t4, %hi(D_801930D0) # $t4, 0x8019
/* 0C3544 800C2944 258C30D0 */  addiu $t4, %lo(D_801930D0) # addiu $t4, $t4, 0x30d0
/* 0C3548 800C2948 000B48C0 */  sll   $t1, $t3, 3
/* 0C354C 800C294C 012B4821 */  addu  $t1, $t1, $t3
/* 0C3550 800C2950 00094880 */  sll   $t1, $t1, 2
/* 0C3554 800C2954 012B4821 */  addu  $t1, $t1, $t3
/* 0C3558 800C2958 00094880 */  sll   $t1, $t1, 2
/* 0C355C 800C295C 012B4823 */  subu  $t1, $t1, $t3
/* 0C3560 800C2960 00094880 */  sll   $t1, $t1, 2
/* 0C3564 800C2964 012C2021 */  addu  $a0, $t1, $t4
/* 0C3568 800C2968 00001825 */  move  $v1, $zero
.L800C296C:
/* 0C356C 800C296C 00036940 */  sll   $t5, $v1, 5
/* 0C3570 800C2970 24630001 */  addiu $v1, $v1, 1
/* 0C3574 800C2974 008D1021 */  addu  $v0, $a0, $t5
/* 0C3578 800C2978 306E00FF */  andi  $t6, $v1, 0xff
/* 0C357C 800C297C 29C10010 */  slti  $at, $t6, 0x10
/* 0C3580 800C2980 01C01825 */  move  $v1, $t6
/* 0C3584 800C2984 E4400044 */  swc1  $f0, 0x44($v0)
/* 0C3588 800C2988 A4400050 */  sh    $zero, 0x50($v0)
/* 0C358C 800C298C E4400054 */  swc1  $f0, 0x54($v0)
/* 0C3590 800C2990 1420FFF6 */  bnez  $at, .L800C296C
/* 0C3594 800C2994 A4400060 */   sh    $zero, 0x60($v0)
/* 0C3598 800C2998 A4C00244 */  sh    $zero, 0x244($a2)
/* 0C359C 800C299C A4C00246 */  sh    $zero, 0x246($a2)
/* 0C35A0 800C29A0 8FDF002C */  lw    $ra, 0x2c($fp)
.L800C29A4:
/* 0C35A4 800C29A4 03C0E825 */  move  $sp, $fp
/* 0C35A8 800C29A8 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0C35AC 800C29AC 03E00008 */  jr    $ra
/* 0C35B0 800C29B0 27BD0040 */   addiu $sp, $sp, 0x40