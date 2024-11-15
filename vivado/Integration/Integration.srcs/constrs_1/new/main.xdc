
set_property -dict { PACKAGE_PIN D9    IOSTANDARD LVCMOS33 } [get_ports { Reset }]; #IO_L6N_T0_VREF_16 Sch=btn[0]
set_property -dict { PACKAGE_PIN C9    IOSTANDARD LVCMOS33 } [get_ports { InstrLoad_CLK }]; #IO_L11P_T1_SRCC_16 Sch=btn[1]
set_property -dict { PACKAGE_PIN B9    IOSTANDARD LVCMOS33 } [get_ports { InstrExec_CLK }]; #IO_L11N_T1_SRCC_16 Sch=btn[2]

set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { led }]; #IO_L24N_T3_35 Sch=led[4]