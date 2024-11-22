
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk100mhz_in }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clk100mhz_in }];

set_property -dict { PACKAGE_PIN D9    IOSTANDARD LVCMOS33 } [get_ports { Reset }]; #IO_L6N_T0_VREF_16 Sch=btn[0]

set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { led }]; #IO_L24N_T3_35 Sch=led[4]

# UART
set_property -dict { PACKAGE_PIN D10   IOSTANDARD LVCMOS33 } [get_ports { TX_UART_OUT }]; #IO_L19N_T3_VREF_16 Sch=uart_rxd_out
set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { RX_UART_IN }]; #IO_L14N_T2_SRCC_16 Sch=uart_txd_in