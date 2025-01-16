// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Jun 13 10:46:35 2024
// Host        : DESKTOP-TQUTIVG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PLL_Adder_register_0_0_sim_netlist.v
// Design      : PLL_Adder_register_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Adder_register
   (Cout,
    enable,
    clk,
    rst);
  output [3:0]Cout;
  input enable;
  input clk;
  input rst;

  wire [3:0]Cout;
  wire [3:0]Re_in;
  wire clk;
  wire enable;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder1 u1
       (.D(Re_in),
        .out(Cout));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_adder u2
       (.Cout(Cout),
        .D(Re_in),
        .clk(clk),
        .enable(enable),
        .rst(rst));
endmodule

(* CHECK_LICENSE_TYPE = "PLL_Adder_register_0_0,Adder_register,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Adder_register,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    clk,
    enable,
    Cout);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  input enable;
  output [3:0]Cout;

  wire [3:0]Cout;
  wire clk;
  wire enable;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Adder_register U0
       (.Cout(Cout),
        .clk(clk),
        .enable(enable),
        .rst(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder1
   (D,
    out);
  output [3:0]D;
  input [3:0]out;

  wire [3:0]D;
  wire [3:0]out;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Re_out[0]_i_1 
       (.I0(out[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Re_out[1]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Re_out[2]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Re_out[3]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[3]),
        .O(D[3]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_adder
   (Cout,
    enable,
    D,
    clk,
    rst);
  output [3:0]Cout;
  input enable;
  input [3:0]D;
  input clk;
  input rst;

  wire [3:0]Cout;
  wire [3:0]D;
  wire clk;
  wire enable;
  wire rst;

  FDCE \Re_out_reg[0] 
       (.C(clk),
        .CE(enable),
        .CLR(rst),
        .D(D[0]),
        .Q(Cout[0]));
  FDCE \Re_out_reg[1] 
       (.C(clk),
        .CE(enable),
        .CLR(rst),
        .D(D[1]),
        .Q(Cout[1]));
  FDCE \Re_out_reg[2] 
       (.C(clk),
        .CE(enable),
        .CLR(rst),
        .D(D[2]),
        .Q(Cout[2]));
  FDCE \Re_out_reg[3] 
       (.C(clk),
        .CE(enable),
        .CLR(rst),
        .D(D[3]),
        .Q(Cout[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
