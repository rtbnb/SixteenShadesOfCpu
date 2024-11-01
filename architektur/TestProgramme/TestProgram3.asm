IML $t0, 0
IMH $t0, 0
IML $t1, 1
IMH $t1, 0
IML $t3, 0
IMH $t3, 0
CR  $t2, $t0
CR  $t0, $t1
EXT 0, $t2, $t2
ALU 0, $t0, $t2
JC  0, +3
CR  $t1, $AO
JA  6