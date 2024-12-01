_code:
    IML  $BI, 0
    IML  $t0, 0xab
    IMH  $t0, 0xcd
    WRMi $t0, 0xaa
    IML  $t2, 0xef
    IMH  $t2, 0x12
    IML  $t1, 0x00
    IMH  $t1, 0x00
    RDMi $t1, 0xaa
    ALU  0, $t1, $t2
    IML  $t3, 0
    IMH  $t3, 0
    IML  $t4, 0x0f
    IMH  $t4, 0x0d
    GPU 0, $t3, $t4