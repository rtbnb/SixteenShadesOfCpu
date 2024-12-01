//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Sat Nov 16 14:52:48 2024
//Host        : DESKTOP-Q664A4O running 64-bit major release  (build 9200)
//Command     : generate_target main_block.bd
//Design      : main_block
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "main_block,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=main_block,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "main_block.hwdef" *) 
module main_block
   (addra,
    addrb,
    clka,
    clkb,
    dina,
    dinb,
    douta,
    doutb,
    ena,
    enb,
    rsta,
    rsta_busy,
    rstb,
    rstb_busy,
    wea,
    web);
  input [15:0]addra;
  input [15:0]addrb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKA, CLK_DOMAIN main_block_clka, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKB CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKB, CLK_DOMAIN main_block_clkb, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clkb;
  input [15:0]dina;
  input [15:0]dinb;
  output [15:0]douta;
  output [15:0]doutb;
  input ena;
  input enb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RSTA RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RSTA, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input rsta;
  output rsta_busy;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RSTB RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RSTB, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input rstb;
  output rstb_busy;
  input [0:0]wea;
  input [0:0]web;

  wire [15:0]addra_1;
  wire [15:0]addrb_1;
  wire [15:0]blk_mem_gen_0_douta;
  wire [15:0]blk_mem_gen_0_doutb;
  wire blk_mem_gen_0_rsta_busy;
  wire blk_mem_gen_0_rstb_busy;
  wire clka_1;
  wire clkb_1;
  wire [15:0]dina_1;
  wire [15:0]dinb_1;
  wire ena_1;
  wire enb_1;
  wire rsta_1;
  wire rstb_1;
  wire [0:0]wea_1;
  wire [0:0]web_1;

  assign addra_1 = addra[15:0];
  assign addrb_1 = addrb[15:0];
  assign clka_1 = clka;
  assign clkb_1 = clkb;
  assign dina_1 = dina[15:0];
  assign dinb_1 = dinb[15:0];
  assign douta[15:0] = blk_mem_gen_0_douta;
  assign doutb[15:0] = blk_mem_gen_0_doutb;
  assign ena_1 = ena;
  assign enb_1 = enb;
  assign rsta_1 = rsta;
  assign rsta_busy = blk_mem_gen_0_rsta_busy;
  assign rstb_1 = rstb;
  assign rstb_busy = blk_mem_gen_0_rstb_busy;
  assign wea_1 = wea[0];
  assign web_1 = web[0];
  main_block_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(addra_1),
        .addrb(addrb_1),
        .clka(clka_1),
        .clkb(clkb_1),
        .dina(dina_1),
        .dinb(dinb_1),
        .douta(blk_mem_gen_0_douta),
        .doutb(blk_mem_gen_0_doutb),
        .ena(ena_1),
        .enb(enb_1),
        .rsta(rsta_1),
        .rsta_busy(blk_mem_gen_0_rsta_busy),
        .rstb(rstb_1),
        .rstb_busy(blk_mem_gen_0_rstb_busy),
        .wea(wea_1),
        .web(web_1));
endmodule
