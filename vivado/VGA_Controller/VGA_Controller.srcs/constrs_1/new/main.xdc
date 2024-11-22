
## Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { InstrExec_CLK }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { InstrExec_CLK }];



set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { ioe }]; #IO_L9P_T1_DQS_14 			Sch=ck_io[41]
set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { h_sync }]; #IO_L7P_T1_D09_14 			Sch=ck_io[39]
set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { v_sync }]; #IO_L9N_T1_DQS_D13_14 		Sch=ck_io[40]

set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { r[3] }]; #IO_L15P_T2_DQS_RDWR_B_14 	Sch=ck_io[34]
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { r[2] }]; #IO_L11N_T1_SRCC_14 			Sch=ck_io[35]
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { r[1] }]; #IO_L8P_T1_D11_14 			Sch=ck_io[36]
set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { r[0] }]; #IO_L17P_T2_A14_D30_14 		Sch=ck_io[37]


set_property -dict { PACKAGE_PIN R11   IOSTANDARD LVCMOS33 } [get_ports { g[3] }]; #IO_0_14  		 			Sch=ck_io[30]
set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { g[2] }]; #IO_L5N_T0_D07_14 			Sch=ck_io[31]
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { g[1] }]; #IO_L13N_T2_MRCC_14 			Sch=ck_io[32]
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { g[0] }]; #IO_L13P_T2_MRCC_14 			Sch=ck_io[33]

set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { b[3] }]; #IO_L19N_T3_A09_D25_VREF_14 	Sch=ck_io[26]
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { b[2] }]; #IO_L16N_T2_A15_D31_14 		Sch=ck_io[27]
set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { b[1] }]; #IO_L6N_T0_D08_VREF_14 		Sch=ck_io[28]
set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { b[0] }]; #IO_25_14 		 			Sch=ck_io[29]