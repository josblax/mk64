glabel func_8007C360
/* 07CF60 8007C360 000470C0 */  sll   $t6, $a0, 3
/* 07CF64 8007C364 01C47023 */  subu  $t6, $t6, $a0
/* 07CF68 8007C368 3C0F8016 */  lui   $t7, %hi(gObjectList) # $t7, 0x8016
/* 07CF6C 8007C36C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 07CF70 8007C370 25EF5C18 */  addiu $t7, %lo(gObjectList) # addiu $t7, $t7, 0x5c18
/* 07CF74 8007C374 000E7140 */  sll   $t6, $t6, 5
/* 07CF78 8007C378 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07CF7C 8007C37C 01CF3021 */  addu  $a2, $t6, $t7
/* 07CF80 8007C380 94A20026 */  lhu   $v0, 0x26($a1)
/* 07CF84 8007C384 94D800C0 */  lhu   $t8, 0xc0($a2)
/* 07CF88 8007C388 34018000 */  li    $at, 32768
/* 07CF8C 8007C38C 24050080 */  li    $a1, 128
/* 07CF90 8007C390 03021823 */  subu  $v1, $t8, $v0
/* 07CF94 8007C394 00611821 */  addu  $v1, $v1, $at
/* 07CF98 8007C398 3079FFFF */  andi  $t9, $v1, 0xffff
/* 07CF9C 8007C39C 001940C0 */  sll   $t0, $t9, 3
/* 07CFA0 8007C3A0 01194021 */  addu  $t0, $t0, $t9
/* 07CFA4 8007C3A4 00084080 */  sll   $t0, $t0, 2
/* 07CFA8 8007C3A8 01001825 */  move  $v1, $t0
/* 07CFAC 8007C3AC 04610004 */  bgez  $v1, .L8007C3C0
/* 07CFB0 8007C3B0 00034C03 */   sra   $t1, $v1, 0x10
/* 07CFB4 8007C3B4 3401FFFF */  li    $at, 65535
/* 07CFB8 8007C3B8 00230821 */  addu  $at, $at, $v1
/* 07CFBC 8007C3BC 00014C03 */  sra   $t1, $at, 0x10
.L8007C3C0:
/* 07CFC0 8007C3C0 312AFFFF */  andi  $t2, $t1, 0xffff
/* 07CFC4 8007C3C4 29410013 */  slti  $at, $t2, 0x13
/* 07CFC8 8007C3C8 10200009 */  beqz  $at, .L8007C3F0
/* 07CFCC 8007C3CC 01403825 */   move  $a3, $t2
/* 07CFD0 8007C3D0 24050080 */  li    $a1, 128
/* 07CFD4 8007C3D4 AFA60020 */  sw    $a2, 0x20($sp)
/* 07CFD8 8007C3D8 0C01C87A */  jal   set_object_flag_status_false
/* 07CFDC 8007C3DC AFAA001C */   sw    $t2, 0x1c($sp)
/* 07CFE0 8007C3E0 8FA60020 */  lw    $a2, 0x20($sp)
/* 07CFE4 8007C3E4 8FA7001C */  lw    $a3, 0x1c($sp)
/* 07CFE8 8007C3E8 10000009 */  b     .L8007C410
/* 07CFEC 8007C3EC A0C700D2 */   sb    $a3, 0xd2($a2)
.L8007C3F0:
/* 07CFF0 8007C3F0 AFA60020 */  sw    $a2, 0x20($sp)
/* 07CFF4 8007C3F4 0C01C870 */  jal   set_object_flag_status_true
/* 07CFF8 8007C3F8 AFA7001C */   sw    $a3, 0x1c($sp)
/* 07CFFC 8007C3FC 8FA7001C */  lw    $a3, 0x1c($sp)
/* 07D000 8007C400 8FA60020 */  lw    $a2, 0x20($sp)
/* 07D004 8007C404 240B0024 */  li    $t3, 36
/* 07D008 8007C408 01676023 */  subu  $t4, $t3, $a3
/* 07D00C 8007C40C A0CC00D2 */  sb    $t4, 0xd2($a2)
.L8007C410:
/* 07D010 8007C410 8FBF0014 */  lw    $ra, 0x14($sp)
/* 07D014 8007C414 27BD0028 */  addiu $sp, $sp, 0x28
/* 07D018 8007C418 03E00008 */  jr    $ra
/* 07D01C 8007C41C 00000000 */   nop   