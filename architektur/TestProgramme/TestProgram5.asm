IML  $t0, 0
IMH  $t0, 0
ALU  0, $t0, $t0 
IML  $t9, 0xff
IMH  $t9, 0x0f
IML  $t0, 1
IMH  $t0, 0
ALU  0, $AO, $t0
EXT  1, $AO, $t9
ja 6