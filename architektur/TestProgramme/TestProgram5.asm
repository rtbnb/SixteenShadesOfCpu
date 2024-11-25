IML  $t0, 0
IMH  $t0, 0
ALU  0, $t0, $t0 
IML  $t0, 1
IMH  $t0, 0
RDMr $t9, $AO, 0
EXT  1, $AO, $t9
ALU  0, $AO, $t0
JA 5