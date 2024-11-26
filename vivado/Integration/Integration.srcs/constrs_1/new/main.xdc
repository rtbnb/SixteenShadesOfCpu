
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk100mhz_in }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clk100mhz_in }];

set_property -dict { PACKAGE_PIN D9    IOSTANDARD LVCMOS33 } [get_ports { Reset }]; #IO_L6N_T0_VREF_16 Sch=btn[0]

set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { led }]; #IO_L24N_T3_35 Sch=led[4]

# UART
set_property -dict { PACKAGE_PIN D10   IOSTANDARD LVCMOS33 } [get_ports { TX_UART_OUT }]; #IO_L19N_T3_VREF_16 Sch=uart_rxd_out
set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { RX_UART_IN }]; #IO_L14N_T2_SRCC_16 Sch=uart_txd_in




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


# LEDs
set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { led0 }]; #IO_L24N_T3_35 Sch=led[4]
set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { led1 }]; #IO_25_35 Sch=led[5]
set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { led2 }]; #IO_L24P_T3_A01_D17_14 Sch=led[6]
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { led3 }]; #IO_L24N_T3_A00_D16_14 Sch=led[7]

# Buttons
set_property -dict { PACKAGE_PIN D13    IOSTANDARD LVCMOS33 } [get_ports { btn0 }]; #IO_L6N_T0_VREF_16 Sch=btn[0]
set_property -dict { PACKAGE_PIN C9    IOSTANDARD LVCMOS33 } [get_ports { btn1 }]; #IO_L11P_T1_SRCC_16 Sch=btn[1]
set_property -dict { PACKAGE_PIN B9    IOSTANDARD LVCMOS33 } [get_ports { btn2 }]; #IO_L11N_T1_SRCC_16 Sch=btn[2]
set_property -dict { PACKAGE_PIN B8    IOSTANDARD LVCMOS33 } [get_ports { btn3 }]; #IO_L12P_T1_MRCC_16 Sch=btn[3]