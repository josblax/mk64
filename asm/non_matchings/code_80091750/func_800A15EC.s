glabel func_800A15EC
/* 0A21EC 800A15EC 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0A21F0 800A15F0 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0A21F4 800A15F4 AFB20038 */  sw    $s2, 0x38($sp)
/* 0A21F8 800A15F8 AFB10034 */  sw    $s1, 0x34($sp)
/* 0A21FC 800A15FC AFB00030 */  sw    $s0, 0x30($sp)
/* 0A2200 800A1600 8C820000 */  lw    $v0, ($a0)
/* 0A2204 800A1604 3C03800F */  lui   $v1, %hi(gCupTrackOrder)
/* 0A2208 800A1608 00808025 */  move  $s0, $a0
/* 0A220C 800A160C 2442FF84 */  addiu $v0, $v0, -0x7c
/* 0A2210 800A1610 04410003 */  bgez  $v0, .L800A1620
/* 0A2214 800A1614 00027083 */   sra   $t6, $v0, 2
/* 0A2218 800A1618 24410003 */  addiu $at, $v0, 3
/* 0A221C 800A161C 00017083 */  sra   $t6, $at, 2
.L800A1620:
/* 0A2220 800A1620 000E78C0 */  sll   $t7, $t6, 3
/* 0A2224 800A1624 04410004 */  bgez  $v0, .L800A1638
/* 0A2228 800A1628 30580003 */   andi  $t8, $v0, 3
/* 0A222C 800A162C 13000002 */  beqz  $t8, .L800A1638
/* 0A2230 800A1630 00000000 */   nop   
/* 0A2234 800A1634 2718FFFC */  addiu $t8, $t8, -4
.L800A1638:
/* 0A2238 800A1638 0018C840 */  sll   $t9, $t8, 1
/* 0A223C 800A163C 01F94021 */  addu  $t0, $t7, $t9
/* 0A2240 800A1640 00681821 */  addu  $v1, $v1, $t0
/* 0A2244 800A1644 84632BB4 */  lh    $v1, %lo(gCupTrackOrder)($v1)
/* 0A2248 800A1648 3C04800E */  lui   $a0, %hi(D_800E7D74)
/* 0A224C 800A164C 00032880 */  sll   $a1, $v1, 2
/* 0A2250 800A1650 00852021 */  addu  $a0, $a0, $a1
/* 0A2254 800A1654 8C847D74 */  lw    $a0, %lo(D_800E7D74)($a0)
/* 0A2258 800A1658 0C026449 */  jal   segmented_to_virtual
/* 0A225C 800A165C AFA50044 */   sw    $a1, 0x44($sp)
/* 0A2260 800A1660 3C128015 */  lui   $s2, %hi(gDisplayListHead) # $s2, 0x8015
/* 0A2264 800A1664 26520298 */  addiu $s2, %lo(gDisplayListHead) # addiu $s2, $s2, 0x298
/* 0A2268 800A1668 8E06000C */  lw    $a2, 0xc($s0)
/* 0A226C 800A166C 8E070010 */  lw    $a3, 0x10($s0)
/* 0A2270 800A1670 24090002 */  li    $t1, 2
/* 0A2274 800A1674 AFA90010 */  sw    $t1, 0x10($sp)
/* 0A2278 800A1678 8E440000 */  lw    $a0, ($s2)
/* 0A227C 800A167C 0C027081 */  jal   func_8009C204
/* 0A2280 800A1680 00402825 */   move  $a1, $v0
/* 0A2284 800A1684 AE420000 */  sw    $v0, ($s2)
/* 0A2288 800A1688 8E030010 */  lw    $v1, 0x10($s0)
/* 0A228C 800A168C 8E11000C */  lw    $s1, 0xc($s0)
/* 0A2290 800A1690 240B00FF */  li    $t3, 255
/* 0A2294 800A1694 246A0030 */  addiu $t2, $v1, 0x30
/* 0A2298 800A1698 AFAA0010 */  sw    $t2, 0x10($sp)
/* 0A229C 800A169C AFAB0020 */  sw    $t3, 0x20($sp)
/* 0A22A0 800A16A0 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0A22A4 800A16A4 AFA00018 */  sw    $zero, 0x18($sp)
/* 0A22A8 800A16A8 AFA00014 */  sw    $zero, 0x14($sp)
/* 0A22AC 800A16AC 00402025 */  move  $a0, $v0
/* 0A22B0 800A16B0 24660027 */  addiu $a2, $v1, 0x27
/* 0A22B4 800A16B4 02202825 */  move  $a1, $s1
/* 0A22B8 800A16B8 0C02637E */  jal   draw_box
/* 0A22BC 800A16BC 26270040 */   addiu $a3, $s1, 0x40
/* 0A22C0 800A16C0 8FAC0044 */  lw    $t4, 0x44($sp)
/* 0A22C4 800A16C4 3C04800E */  lui   $a0, %hi(D_800E7DC4)
/* 0A22C8 800A16C8 AE420000 */  sw    $v0, ($s2)
/* 0A22CC 800A16CC 008C2021 */  addu  $a0, $a0, $t4
/* 0A22D0 800A16D0 0C026449 */  jal   segmented_to_virtual
/* 0A22D4 800A16D4 8C847DC4 */   lw    $a0, %lo(D_800E7DC4)($a0)
/* 0A22D8 800A16D8 8E070010 */  lw    $a3, 0x10($s0)
/* 0A22DC 800A16DC 8E06000C */  lw    $a2, 0xc($s0)
/* 0A22E0 800A16E0 240D0003 */  li    $t5, 3
/* 0A22E4 800A16E4 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0A22E8 800A16E8 8E440000 */  lw    $a0, ($s2)
/* 0A22EC 800A16EC 00402825 */  move  $a1, $v0
/* 0A22F0 800A16F0 0C027081 */  jal   func_8009C204
/* 0A22F4 800A16F4 24E70027 */   addiu $a3, $a3, 0x27
/* 0A22F8 800A16F8 AE420000 */  sw    $v0, ($s2)
/* 0A22FC 800A16FC 8E040000 */  lw    $a0, ($s0)
/* 0A2300 800A1700 0C02D8E7 */  jal   func_800B639C
/* 0A2304 800A1704 2484FF84 */   addiu $a0, $a0, -0x7c
/* 0A2308 800A1708 04420018 */  bltzl $v0, .L800A176C
/* 0A230C 800A170C 8FBF003C */   lw    $ra, 0x3c($sp)
/* 0A2310 800A1710 8E030010 */  lw    $v1, 0x10($s0)
/* 0A2314 800A1714 8E11000C */  lw    $s1, 0xc($s0)
/* 0A2318 800A1718 8E440000 */  lw    $a0, ($s2)
/* 0A231C 800A171C 246E0009 */  addiu $t6, $v1, 9
/* 0A2320 800A1720 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0A2324 800A1724 00603025 */  move  $a2, $v1
/* 0A2328 800A1728 26250020 */  addiu $a1, $s1, 0x20
/* 0A232C 800A172C 0C025668 */  jal   func_800959A0
/* 0A2330 800A1730 2627003F */   addiu $a3, $s1, 0x3f
/* 0A2334 800A1734 3C040200 */  lui   $a0, %hi(D_02004A0C) # $a0, 0x200
/* 0A2338 800A1738 AE420000 */  sw    $v0, ($s2)
/* 0A233C 800A173C 0C026449 */  jal   segmented_to_virtual
/* 0A2340 800A1740 24844A0C */   addiu $a0, %lo(D_02004A0C) # addiu $a0, $a0, 0x4a0c
/* 0A2344 800A1744 8E06000C */  lw    $a2, 0xc($s0)
/* 0A2348 800A1748 8E070010 */  lw    $a3, 0x10($s0)
/* 0A234C 800A174C 24180002 */  li    $t8, 2
/* 0A2350 800A1750 AFB80010 */  sw    $t8, 0x10($sp)
/* 0A2354 800A1754 8E440000 */  lw    $a0, ($s2)
/* 0A2358 800A1758 00402825 */  move  $a1, $v0
/* 0A235C 800A175C 0C027081 */  jal   func_8009C204
/* 0A2360 800A1760 24C60020 */   addiu $a2, $a2, 0x20
/* 0A2364 800A1764 AE420000 */  sw    $v0, ($s2)
/* 0A2368 800A1768 8FBF003C */  lw    $ra, 0x3c($sp)
.L800A176C:
/* 0A236C 800A176C 8FB00030 */  lw    $s0, 0x30($sp)
/* 0A2370 800A1770 8FB10034 */  lw    $s1, 0x34($sp)
/* 0A2374 800A1774 8FB20038 */  lw    $s2, 0x38($sp)
/* 0A2378 800A1778 03E00008 */  jr    $ra
/* 0A237C 800A177C 27BD0050 */   addiu $sp, $sp, 0x50