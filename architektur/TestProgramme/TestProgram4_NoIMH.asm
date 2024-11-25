IML  $t0, 0
IML  $t1, 1
IML  $t3, 0
IML  $t4, 1
CR   $t2, $t0
CR   $t0, $t1
WRMr $t2, $t3, 0
ALU  0, $t0, $t2
JC   0, +5
CR   $t1, $AO
ALU  0, $t3, $t4
CR   $t3, $AO
JA   4
IML  $t5, 0
ALU  1, $t3, $t5
JC   1, +6
RDMr $t1, $t5, 0
EXT  0, $t1, $t1
ALU  0, $t5, $t4
CR   $t5, $AO
JA   14

