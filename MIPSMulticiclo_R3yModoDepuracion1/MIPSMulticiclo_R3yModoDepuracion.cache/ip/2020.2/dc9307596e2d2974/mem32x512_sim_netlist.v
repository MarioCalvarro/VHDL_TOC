// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Dec  1 12:30:52 2021
// Host        : DESKTOP-7F6NS6D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mem32x512_sim_netlist.v
// Design      : mem32x512
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mem32x512,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [8:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "mem32x512.mem" *) 
  (* C_INIT_FILE_NAME = "mem32x512.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19824)
`pragma protect data_block
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
`pragma protect end_protected
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
