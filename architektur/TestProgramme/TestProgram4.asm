IML  $t0, 0
IMH  $t0, 0
IML  $t1, 1
IMH  $t1, 0
IML  $t3, 0
IMH  $t3, 0
IML  $t4, 1
IMH  $t4, 0
CR   $t2, $t0
CR   $t0, $t1
WRMr $t2, $t3, 0
ALU  0, $t0, $t2
JC   0, +5
CR   $t1, $AO
ALU  0, $t3, t4
CR   $t3, $AO
JA   6
IML  $t0, 0
IMH  $t0, 0
ALU  1, $t3, $t0
JC   1, +6
RDMr $t1, $t0, 0
EXT  0, $t1, $t1
ALU  0, $t0, $t4
CR   $t0, $AO
JA   19