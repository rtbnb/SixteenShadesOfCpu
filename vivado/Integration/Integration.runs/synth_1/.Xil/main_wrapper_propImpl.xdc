set_property SRC_FILE_INFO {cfile:o:/Entwicklung/SixteenShadesOfCpu/vivado/Integration/Integration.gen/sources_1/bd/main/ip/main_clk_wiz_0_0/main_clk_wiz_0_0.xdc rfile:../../../Integration.gen/sources_1/bd/main/ip/main_clk_wiz_0_0/main_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:main_i/clk_wiz_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:O:/Entwicklung/SixteenShadesOfCpu/vivado/Integration/Integration.srcs/constrs_1/new/main.xdc rfile:../../../Integration.srcs/constrs_1/new/main.xdc id:2} [current_design]
current_instance main_i/clk_wiz_0/inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
current_instance
set_property src_info {type:XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk100mhz_in }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
set_property src_info {type:XDC file:2 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D9    IOSTANDARD LVCMOS33 } [get_ports { Reset }]; #IO_L6N_T0_VREF_16 Sch=btn[0]
set_property src_info {type:XDC file:2 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { led }]; #IO_L24N_T3_35 Sch=led[4]
