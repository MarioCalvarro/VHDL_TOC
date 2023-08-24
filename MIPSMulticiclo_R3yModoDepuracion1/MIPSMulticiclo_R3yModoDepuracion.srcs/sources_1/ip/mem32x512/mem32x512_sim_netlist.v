// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Dec  1 12:30:53 2021
// Host        : DESKTOP-7F6NS6D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/hlocal/TOC2021/PR6/MIPSMulticiclo_R3yModoDepuracion/MIPSMulticiclo_R3yModoDepuracion.srcs/sources_1/ip/mem32x512/mem32x512_sim_netlist.v
// Design      : mem32x512
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mem32x512,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module mem32x512
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
  mem32x512_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19760)
`pragma protect data_block
HJsM8axI5ueuy5HKJOpFQSIqRSYKojAvQ81ncXNtFiYnYbwgI/DHvOybFsr6svsvu2bMnszGJfWJ
hobDQadfh686uyAwV2W5+9MPiwkWJizJsvbs5tppVrWggKzM69R1dm8kGmOZ7vkqFcqQ9/o6bJtK
M8MFA2yABi5ZypFraZ0KFc9zqkfRMzgJNUSs9v57OrBZoa2XL2eNCT4UHIinS6sKnN9kGB+YWFZr
KfTCymZjr+JMDx07UXjFzVwR/UxqaG7d86eq9c0i4Mqj3WOWMQwkJh71ej55e9nEJ2AMnz/EHdyF
W4zRieVvqAp7wxYw2GSDhvu1xVCQQPFwIprHeuJ58mqI1oP7Z9cbrkxDhdzXTOwzMzVX41zZ/Fuy
bqJkvU0/hOzNuNru30qnbhGXoyblvV91LxTHQuRCgvAJdbHXAAf6v2TOexpduqlXjM4N46+fNC/5
1wJs7bkdYJYjUXk7PmRuR218Jlrh/dEF/FqaO5m95CGjRieEhNQ2xEZLIPbWebIiScfj/QirrVfV
mGp9cRvKN685RGXw7eghp73bdLQFGoZcqmMJ9uKzbcjWrWLI4L7/fPRaxmBHL86dS2iRyM4NIA7i
G4abGcvSxFzPYR8OcCIofNpULhD+KAhRkelUDSud7eK5guhonQcRER1c9MhBAH0QCXUDaWIGu11m
sMFFRo0jdpPy4dn+pYsgtSTJARYKwOxmwko/pM7N9lcQRGsIfemKDe4gugaSBYA//IDBX7TV/9Wx
5c3DS6qA/eI2RhQPsQWCYFavsmg6AFIQomeRGn8VJfg+xW4H/1VwbjZ0s1a+3fsNcfLL/P0iF1rn
L2KgB8vR4hgG4JicvIfkycWn01NxNOcb4c7CQJCE09uXAJQWCyvWsnC2FJkPR3P6RIu7CBVDzVQ+
UxYwI1JsNrKbeuSUjQFBbNsul6pRauBivDE5meZzkl9Ie9EPQw7NTFZkxwPLrYsspKpzs5Kic8F6
rDV0kA0Z1yScIuPAY4sDJUhWDsRj4TB1GeDr5xpJpuFuNR0lu0O6kRUX/fwtoWJfQqfENj8vIeFt
PalHfLZyeorSS76K3MCfZWL/yU1ItpEZkHirzIGMwaVrecL4qUqCvYskyQAwlmEi3WLutKpUYtqQ
+64OlXnDBY5kXkk5RdArtNImJZSKCugte3pWuuqhjgW6KbECtLq3FWTMh8bb/WoJHJVEugyKsB15
6fkorYg3YnF833E6GbOlxLn7EZAu2BAYGHxbuHQS5RF1QY1jfxUNmFUC3J/QwEiBoHF63LX9kLQB
bkdxBD5fQ7BVXt7GrzH30jKRdTyIsDhmztzQ3G4EyeBIm5hOjvlTHREHZFvyWPvMo0WtFr2ZkOEz
bJAUMnvp7oKTjASqQ81g0qQrEgJdaASmnMJ6ztg3gj6qORbCx248oS36FlA50Wbd1r6ELj9ErL1F
gup95uTLR6nykXQhGLlKoMxT10SerGOpwhNDbj6h5V/Cl3Ti64IRReOZ0uIfgbIWcuepLmKEsGxd
PpWKpeEYH71OCCub5zpFpN5Cc8isSjRgRMcCddFnM+Lw7PL3asXkIkTtyHAtUrLzBpk8QACemOmM
sPwvgGZGnG8pnC79sujEedoFpD8cznn8GJXZIwmrTITb86+pJFUIHLd68jDVIMQn6+TV15xV3y2a
ef3pIVWXQmFgpZyQKJGMvZqtHQg9J0h5yAWtgsVwue/Xc+JbZN6RMbH45fqP0zpB703dKRgqWtbE
O/LF24FXlyPlYCrkZaLIoNufRErCRcYNiXCRcYFrVPCJIO0Lm9W1/CTA37/51djAs6NoMTUhScaY
U3AR76y7mUTJ3Z3J5n5a8KZshQUP2oBSyHyO8minPh33A4qRUAyK+1lK8TjrjWfVGm0Wa2Z64+hT
DpAI1nbt5Ygcw9lMNsA5LCDqn7ph+Jhnhx1FsAKt6mpp5EUZA5Hx96Vn61biRsveAWeSrC5zuOOD
vE67/JBGCQ8KafqTmThqGovDFsPZTrPhlG0awCcZHHpxoXTHZsWOrx9RIxKwnQKozN5LNnbVGGGn
CvJq5KnpG8eqp8XP0VF37TLbAKpv1DJNv6pxOfHknnnPZTp1LtgvFPsAYFoNu0YxzV6X7p3MF8EL
cmLLhpKM4Pb1exrw5wQgc6wLPvJ9k7AzOJuBvso7JCTgtIkR9alMrOiSRDE8fjMve+3OZFjOJDhU
1Fskd0+qEpoO46JhV+kcZ4FSQLAw8Jy28FSjhAFUdMyK8M6OP1StutT376cDy13feCf6EE0eX4/I
12rc42gLCPHD+cAj538BSQk6RN2Rrv2zZOKj95hQG6Lr6yT7U6OzOuanHMhTRhebAWQ8khcToTsN
d1LW5q4CQjttDkxtrcV02euEwHAnnzrPTihQe87rrRwX7fpCX4ggOk6LEPeBMlrDw8DhNujblx7g
usECtYUnRPoj9Mh1NkIpbRgNJkaIYQPhr5Lhd07yLLGyU1PEMP6JPCqqgGGbuxAFt9OyajrUkYkV
Ly7WQtDYcfLJVw6k3LXi4Plg1ftuaCmmMqk4LI/SH5sRlrRmvC1cYyiv+JXqU8+OYNXCrKX9Ev05
//D40oflGW7RtUUjSkw3T8NpwV03bP4kwahNyX9sFBDquntwF5JtxPH3+gKnJSVyTvU3Utes69w7
FRulo9lvVloEFdQiruVE/NLu1Zzg8SXpfgbREYbhNoJO/DMMWdFEVKevJS6pWKtV0nGQgDrRRHC/
BXiCINvX2GPz9J1KGX6NlYSPWf6ayRUzwFcjgoAdj8c4l1kzliFShEfXhWI99mPa7OOcAt8p8U90
SVWZonjwoBz8UYZs1h+BIWppnmDW3LuCEpFc2uRFhWPMrGDb4zz6pbb1dRc1qRFJ6IRf3ef8qhyr
dvEGMfMljNqGfktk8AakOs62IB1Dcstx53yhcYmBRooPmCEbl6oqVzjrclEDxRs8V8s7yWRYmng6
YupTMTRE9eM3Qvyn/bvhz0fYME7+x62QJNJEhsT0p8zvrGz6RMp+eYoU7MvDM1QPvcGSWqu4zfaA
9Kdn3Ba/8mqBrfM87i2okl/1z+z0k7OgriA4B99C1GHHMqdcRhM2jCFkZnC93vOL/VeFe+cRk9bj
4NUoAOu2IPGoKh+Djm7LBcIc99AVbogd7NOrZeGNbMUP51rhAzvFSb0kZezzpLXVS+pyCLSIohfT
aagOo0pnVJZQjB1anUBP1IPl3QUMW9zeU+EXNXfaCRZ/NBt3jxdVDsO5mdcJOGEtNItXeUIRGJPM
7BQGs9QaQDBocgLny0c/w32IASxDPK/AjNEO86IDVuWxqKRxIwbP972OHyyaBn//iqZC5I1lW1dH
hYYvTtaKEA1UhA7ttqzNSg8Qy8DbAmiaOW4Z2HkBaRUZlOPsiTpAyLdzZWUaRwow7jiWg2eo5JHT
YQNadhWWlqmmoTUriNpLEAuCDzhxM1WK3jZvWR0YuI6uP+x9mU0/iqKAmz36Z6Hy4Nx5VUXxKfnM
o2AM1bxkwSNQzF4iC+YDpCv5u0Qb5U59awCJLt1nlcn+LWa1nsxbWHU3+6QL9P3Ge41DUbJZ2ZOF
v//fgbwyvW7nGyRIVSLXes1cf35SjIZjcRyFuQsP8cveP6AU+M8Fu8QEQlr/rZig0CXqDSJkiKrX
QvnKezdYIQgV7Yyk54Gbn68cktZtMW1HlwS48rI6d6aE5jtDt93cpj7cW+Ko8MCYOJignWnt9HQr
TDjpde4HzdZ5QbRTmSiah48aBH5roi+u61Ae43GyhHpABPYtI2FOt7fWwC+rZlGmandbcsXXSTJF
XfnIB7Gwhq+eDFSF020CkMmF+SRElZWjkqTbmOcdLQjj98w0QqhX5WEC9W6ojRm6i+MLo2P4myio
cZn5nw3yDaytaFPpJkyKenqLaLJhWfT0oYhZbHqgn4hYKl3U+gbt4I4Q4uMumwOEpkQpaSiUtx+y
yzy9oDN5d6gzFymAO55eHHfFN7CHCM8EOo0UJn4S1Oh0r7xmjJpE/hYYbyKdnwl8HOYbu/9DL4FH
3vsYPMleeBn/cIpMRXPRS79tF6omxuaDtiWd8sZxiIdPUMNzYiJVA8GUTHtq2HH5L0Y4TSaosngd
fVOZL8E8sjSDyv1BvCjt/JSgJGDQpKMTeAVAGo882LV4ozGt1fIo5jsFHoMOwnNtHExvemk7jCPI
ZzEaHaQeGjAuvVYy5WBexL7IBubOR4qzqNvm+5aiDSwDiRG80/61yWmh6j7S9Nm8GEOF8itaxQwn
eArl1kOBXAZZYZDZdgDJWaaEN8Dkmj2203AqxXWwzqSdTjTboFsVXrsqoyXQGXf2XNZq5ETjIpD4
605zbhvcKCO7LEBFEDcA0PmZi4g68nBVNpfTPmoWQBYUefj8k0hmqPkyNVm15QTAP6x50YWKIBpH
LGDVEALytq7qPIg1Dy3Vo+Ax/fSNzTP88hFpnMZ5OZ9MGJQ61detOt51jnoO4UzAhUcfwak3bpmi
146CspYWTwLLmSscP7HRaI4v9Nd7FuK5jCwcdd1Gn5u1Alxuoh7/MkefuAGpVnfvanmMiLCCRrQE
NVBB0HXWBEzTovDJ99IysTQ+B9QxU1Cvx3bGU7ogloqoPl8Mos5jcGM3VBqgwMqOSuYbf61k/hDl
WT0SXI8rdMT75zoJmHtJHrvSEUYwKHQyxhe+1hLS6ehz/m9ywI8akdAaI/M7sR/DBZx7dCfLUAK4
gtRWRIzyqm1/MJ+IfX/slX/HWx0l1HjojCbn10AG2uYyP0dABypueei0nAB+llYkHRwqVo8LEDS5
ncox+vpE9EQ+zDNy4yISbCnxijAbv50p0ZvEjpn3r3+mvip0VgHOY+O9ZWPTJub6M0zCdd5Hon/h
OLJMH29IkoJ3l7E/Q/2FlLNYAtfPzdJ6pyTXIOCHKq0aQGD8ZNFAghKO28j0SssX3FIwysvpYeE4
w0vR9V2GKmH+KoWqXhE3FOuoWQrV7rgE0kOzFSZgLv5n+dc7Y7+QErsRRP+Vh80wrA7UaB2MNVuh
NxCqz/Ys1Uq7WKRg/dyc1TT00EJrrikHxAnJBS+jA1O9K9r7joSHAcvlbmekzc5EqrKQot7NUuGG
cEvOG8VbwJnvPb+W8ZkCMRoLoZqNS0Yz/49W9oL94RQ/U3krpKJqTxDcUaqqRHugzzwpujeoa9At
cQefTuzyzvdEnuevazPk+heo0DUqgatmQ2omVRawf5XfyKvTb27xMA1P0U1+v9bMJPogqJyBcOM0
ib2iVSpsNFSszuJ5YJTI0veMckuxM42OVQo7XdBtqeTQdSq24nfRDaqob6m3vSqds6iE/XkF1iWv
qWZuETrxi91z9woamN3TCK3sMjUz7GXlQuZBMnjLirUNysUf+dw/5R5tujOTCgCnsVBZL5IYF11+
pOiwadrGzmUk5piQkai8eIiabs4tUiftsNQaneglY6PKwZWX7yH/SJc/OoeXzOVCriz1HYPzsgKJ
mFoHwxDurM4mSS0xfL1xPOn2KmFWYvx45Vo1tmopWR4ErA91H3s5yr/T1j3KpE3o62RYyk7JdYEc
5Mk8If45Rd1sEiZpX4ds5JqDrHt6cdqewg/QpviTGb72ulXVYjiYyDsMTc1RHYBR1uko3UWGviNj
y1LGNzgcPdf7/MmLgum0tGhQlo5aQ+7S1ZaBwOFK8ZFRgidX25NZ01WFRsXS/PBoFdnxH1KBLMJC
0EBgRzhZPZBMFA6FavZnODreZannGjEssydrKpx8UstfsunBijLPw30o/+XQrDFrtQn3ps86EtcM
Oy26BSrH0L27Wlcg6u7f5cecVjs7SLhh5786SqfPyL98dYkgT6nKYq1RAW0yj6a0rWmHGLKDRouK
uol8R42foX3zwLGhckQfDheXyTkkOo6wKHV38naop7OcWlLhC0S4qZ03LuXhJOXFNiQP5epJwUQd
LJXjos9KmeSkHKLtBwqgL53ogF4tCtqnYOyiRcGBP//H17PS2d7PE/iEiP6Zi9TuZCwit6xSNGye
DhpM7MifYehw8cTVA3MFBThSrLnrxI/U0ZoChBaa2x+13WvHl0/+gspwH8xgBlkkdEV4h6PQTYCi
7Piv5JJoddH0bt29onidTEDYR0Gd5tY+PNrBOxO9jf1U/xYDQXVFKYWQwI4n5U9u0/z7m9PNKY0+
EK1ybT+y+qqhI0mI8jQ+nuyLWHXQkugsWkY0Bxej7FrDPWeTf4ZcuRk5Yr2p4Hs0FnyLgzIjSwTT
JC5F0j+tCb5iOrJPArz9Vbq2Fvwaj0NBCGUrecNt07saeprnyo0OZW73YA1SYR4wNyZbKZyJGvj8
jVWQSrjmqxFzGEyDaz5v5ZCdXogKVmLko+HH+wam7DC/xHHh3gGQQFALAECY4e8V7YB8nQZ7Rs1v
Nt5586F6HjmAEesnUmx8Fr0RMLL3+i8q0+WBT+yac3InIyeyIYTMi4wd6Un8EFUksBNQVTDUHwS4
TzPj/G7j290F9NEP7xnkukkyCxSMm5o4U6yeiwmSiG3pG3d/zTnl/x4e2pIizN8wPuqk7ODnzrjk
zyOT6V/p5SwHak9iIfH8s9Cz8bB/sZtZYMXQUt0J0rfa8KW5fLZU+oz5Z1Huj5pXFV4+vOGPQ6O8
ud0iyqywwDgwhm8A0K5Wu0f5IvkS08JVXsuDIoHXOuyBQ1a/GIqP2rA7JB7B0r3hl/L5MqmAjZhy
+aI6zFTOUlzmS/DJa9QrtiUGTmsE/JVeZmy1aH+pExbsCyycOQDCl3qAGY23TNEjHOJ7PzSVxIvr
vyciPIYkQ7ZyIWdEyCs5reMmnhGTqd/R8f1M81etVVZbqOa/sxRyXCARcHag5/VCU4RJJjMwkgos
Fr51oQPg4WZu5S1g34itHJIxtUS5vxEeYkVbGf+xi+8OOVl0NAUsqa27ESnReBfo197H4GRCvQ9T
wF0gJGWWtPeo8yk3Fb0Psjr9q6TPR4S8CxeMQ40sDBG57sX8dKt/dFvpbzHcC8dZ9IWRl4hrkwnL
iAS49mYpVaGQGx3MVthp7GevA5XpcIl4k8NkqZ9cpjJmz44fK7Rhc06Lv/ICri+NVyFnJUb44m33
aa3J0QQmlVOuzGD0aWoRQt3dtdAt7bUgQbxKQqPrGQGvw13HYzbsnoWKGiMO1b/UDDY5WKfPp2UY
xnNUwP37iLEd4WB3YhLtyAA3/15tCOQHJ2bXMCDWcCDidtV32X5VDusawRodVkbF1IGtSiJ3hwaj
G/CtoJtOk1UBhewhWTOPrwcg/fAdyNZ63uccb2WrYCCQO4n2SxtNYEWrulJSi3mIOBKdpg5Fk3bu
yJejtgDxqBbnqmkUuvBoVTVE1EcXcZqAM6+bjUHHyaIsCcwRYwbkD/rXPqq22tnK1LjaIgAC/Fr4
7vZig+rfj0otJoWOL29CUyQOy9EC8BNegwm5kU3vRub5GzQH/qTcqmh5vah+4TmzyeC8fzVd/RyD
3zToiqwwWTLM2LC2DqSJCpaxt3Ey/BKMEmEtIu7Yb5xtXZwzTFy+ZlE1kEZZImlZNwbtxDAtJDTb
7eGbQyKHxAFeu1sf/y+LxknF1AQN5ZXhlN4VRAT8oRn6oLFIrfjN4Zqqe8EQF6uwC+Z5hFKJWuio
qRJGsoczxb4AqPlLFq1/in+4QHwhJDx4VqLCKV9n+uFyeea+hLorUyT00bOlm+AB2eg34ehARVoR
aAVjHDMEazzBHDupQ8Mq0wczW4Rav0W+2UAdtZP+y6lNlezFuSGIUe2+hI15mqWX3IXZ20pzLSES
nNLjEcrQeg2NiCckY+Ir86mj5ho3jQFEJv3rUeOt3A9ySizCtc5G0VtzGZMWTg76cGLmeXNENW60
dz9JLtmrffSTmAO6vWifGsmb4IbYwKQJ8iZ3qHnoukkLgHYmoqH70JMOaBUyzvGb7F+t6MPU9Hcx
JDtBkCLV9yWJFnLCnjzKJqCcM90CnXp14lDJ9IwTobBkQUkhVd4MihsYZHYd4arfnj11oTz6FFbv
xUx+X8lnf/J+fLGZOgHgRD8q2ha9wzkR8y/N3vFiL1YWuRTBEWwsG3kxcyLOjc3qXmlmoxDWSldl
9vC/I92b6iOsdOY1yggiQJQm7dWs5MMzbZWGsMI+5CH+p1gdec8evecQr+LMayYFAMtzzcm0Msxn
s62BqI8E3LtnfhQUmjvy+rMsP5H2dBbnTnvFvNsV/86TWDivtdjAKlTv+y/Kq2HiL6dDKCh0z8xT
zKukypA2kFoFtqX14yOsGLY5uMG4H0NECCFuP4lFuFftLVcEBiPTg3eksbBRq1JH+k/W6XIlnYzd
QwjXH9liClRwg23JtU6P4qyHT87EH2AeTALYomTBbs+lgsTSqXGWnFsA5lvsUelsos70Qo88+Okj
ZOlDyLfo0u9FU5Dsw8v2p9YaOVdhQ1j7p4U7m0HiYxtyBI8Y86G8gAg4YXFErntobSRwChEhMoHW
G+cWwe3X+WOHe9Yo436NuIauxmNrztSYWx9NHHusod1x2w9keKPAACcrR+GfFtngWOxMFosdlQDD
nLXNOF/cmTQYTZyAPywd3F3muQ0TsrlHCGqWvKXyV3Uu9eRN8PYYjMPDLZcf48fkq8tapSUaL4/M
lgxW6YfR98fJMemn4zJWQgJ4D6jMEmouaTsFVTkBAdDxa3yERsh0JP1axXoDiK6GmsSj0OBCdG3L
8RySG2SOHG5FbnzYbtTg9Y9wtcAj9CWdaWanUjD3WkpBROsqjtM8d7cQqOIEq1ZCXM+Ol6ebmrx8
o+bJ5sp0GzWk7XooF1iyrdgW1z0caKSlFBu7zRl+5Ie/i8zBJJCVTTmNBM37NWPHzAbrdw/UaASK
HvLtYoRGAVMMKoQASYnPBPRd7AE50aDPuHQHQLqh1R9Yh3ytMPJuu2SnTF1Z36pJzN7STrIWB968
y1/36JPQTTVlfJny1ll+1t7uFKzVzbZHvkygWGMaM/kW4S//D0I1Ijp3wnHuZhcc5agMVbQboAse
Pw82wK8Owle2mOnmylNu8KlAZ3KM9W6Klb0pKAg9ufVzNjzREweetSZdXjipm6oLMQ3p4gfamKRS
HQrvVjuW2VLvKbQnxZU1GUFtxbIM7RkQzSbOh/UFH97wKUptAzFbl32HqVfLqEI+qqowjEhUZ93x
rZrnIOENgbDmnjBPK0d5QqrG+vCFhb+tF/sMGfcVIDvlapXxhAAD9ulsfV07hz0aH1D6HuHeW6Wf
+/KB+lQGdekbGvsg5PJSNshC2a6Www6RdP1gN/+NOHDwd2BvGpv8kP38aBk5qgKPCC/4FBSh//Ki
tzFIcKYkJ9TykOREEd2Te3SJbcXS1llFcIeisEerO8SjTnS44iP2vFGpJLhBxNeQZwWKE3tq3JeY
gTYgw7KKy5gxx+XolemwmJh6pJjXEj+chvui9/os/CMHq+H4QprtPFXfMt+IBshcqGZOOeaLb1xX
fDGYdNknRD8Uor4HKH9jFwzBOZOM1NDgevv3y5rA/vUxk13g7OMpCLRefjjiW1JXM7kwyAvsKpsK
MWlbyJ6+TS6W4PmOc8J4rlbECGlWOyt1Uly9822sxUp7iHP06RATRZawsRc00B0y6Xak4ucx2TjE
h1MwMaJ32SUR+Mdv6d9H1Pd6wI0u2s/IlWAMIABor5oXdRdE9n+QgjsJ8HVjwo9fnrkVFytDLkPx
9p+vg/4bYAc/Q7TzbLbIGHtN5lfT06Kc888UVCYA9FTqlwMDo1S+g3BmKAZ+cE4JyeeeTHg519kp
/3Rz7emg4UaR7gj0YJDFApNOZqsPMhEwA/FHokLqnYlqWxWI8v6reK1mXKyHxPxCt8rVdASWr+N1
WBaD9crZmPziQObn5zDg/Cwe8ikB1ZiDM8dvuESdSmi+bk6IVr/MUDJIoL6c4qsa01YACXXz9TD1
9Fc3yy24Zo7JYrJlamuWzgRmK3vrISNv8DVXchhfzlwNXVlLQG/VlV5DrdZCCHQy+N1x+lP//OXs
uAKQAFu+UUjLFkNz9/Awsuy/yoLJ0fpEshy6YZQn/yFxbdLgZJl+bQDIgJJ5YC4vxqF3OaWNt2O2
+gx0jRsfuaxtMBaD+amBNDffjBh+OWl9siWOd9FDsJA3EQeW7wCgMxX135gsEnbFVzjnPkMv+WGw
xKCfByRCfJTQPg35teK7BTtVNdyCWHzl9bxmjN0auahmaeYR0JcTH1k9KNy3vshNlUZ+p+1Yhwpp
f0KJQNw+K0RipZiKX0zqLVvtYh4y+JFmE4RlVw5ghkje/FPh9m6VMTp63bYLO5amvKGafQciSsHa
bBZ6dkGfmZ91povBkS5YpElvx3C6otN91/sq0ixPkuyeN5LsvmRs/NJReBx1/u87eDbn84nbVfnM
HgItp5YNSFjAzc7USyVbOqXxXOl/Aw022LidkOccetQkT5QDQP6Si66atOu4RLmhlQHEfgEOK71y
XcGG7reTNeW4+ENcFSnAtN2mhh3Mc6jy3ikzcZX9qG8N4U5Zc8dnTcYZDC4U8iy7/oiwe7BYjoDS
sWkX+zAU+mTIp+twV9GRn3I3/1D7s7XH0ACAHnobJxalPeyYwX9nyDzjUUvV2cPWKyFgrT2avCse
Mu66xASexjf1I/TTPSRodSd7SQmQha8dgmi2v1EBNiIlMWZL01RcEfBNC8RhufS6gtyyriLSVZTv
rR1/2ICFCGqDROYxxiYEi1nXS0g6x+KXlcyapUWiC3tiFVhBkh3TUZr9O22PW9oJPNns11Jhymql
WJe0XKEzzxO0/GNDfX1Iw0gkm4KXuk3nq3bSQi5UyvBijjjf1yzGhWPKD7LAzwhTMwfA/N+ujSjf
ldVQFNoeNQjKCaD1x3zv1i8xzVj7H55tKR9yHeSu2XqEldPOuwizC9S3mI0vd93MAUpDYAz4MLjg
rdWSg8F4fG2UE/J5BnMjDE9OQ6UVyesdY2dzmn0A3pCsS2Khopv8hJ/W4cMoyVYEes0exX846s82
aLTF3FZfNC37bgRezPJ9h0f+IRwBcEXeQKczrODEQUzHhUfAfig9KWuh+VmbntGdP1oAcGMSdUMJ
jMcXLY7MwrsW2EbVXvAWkXhgcuUPoocCS8aVz929eohdVhk9sAndjHgyZL6NsarAoiUyh3Ws+wef
v+IgC1ePCkBnZ80NoUnYF6SZ0vg5jctVy4CEIA9FBRCpCuzKq2ugmZ4fsS2iRFxItRUiQhSh5L46
HDQbw/vMQVU0AvgVQ89bee5EsRo9Ds4bZWOBY0zPKvvYbWAJC3BZGqR5roXBQnf1JjWMumEnCXjL
7w836hOTVPq5sRU7TuMCsG6oB4ymXiDhvRoR/FeewdSgK+jXsybjxyBepyHVdcqCM1CAHa/xqQOr
1dxyH4n0S7Owf9J3LgMHUSSbOz0L4fSspAjvWOPbawcfT8vpOoNhcTIF4VZAUZB8P6YGH60nA2a/
L6hrdLFgG4cXBaz4XqdKXtLt0AqjPeDB0eImRKAmYBk9iGNmVafeqR6Js3stq1ahOUsEma3EHhW8
ESAqBgP3VsPxCfFZsTddQik9FMcBmTDtRUMV0MZ53jw/4UAHa3HbKgFaOw6twudvNuvFAIrq4ceu
quGUBkLiW8qUo9vpf7zF0czLQooPs8PjGURmsc+tXXujxo0owOTL02HfEpxoTOefhQM7QEOossEN
JYFcrC0frg81i3cZuWxBBBTDzVNUrNLJtikCEfosCDaM9Y+AprI1A7AqfAJWxeMe/WQUdIjEPf47
0e6cyI43dgDZz1RM73AZnZZXSCOqF99+sNwF6GU/uMAFGXFv1oPB7b/jF6hOoWfamF2H6I+LnrGO
hpnz6xQAs92L7KsAmfEwnC49JMocVYmrX1bvxmqao+CIyhV0f166pw2S0DPiyyrMbisBEHmv5mMf
P0AZpvKmmik0OD4h/jHQ/xtxqUmICvXU8Ck3g98COjCJ0wxSVNrYXi06tfCuYPH8NQ3LC66+Ozks
0TMCp7cwbVRHzkhSYcPbdQ8sUJ/M5urzH8DaSxHCqgcrQguj4XXbVfg4b4Qeie9R19xHAQirZO1d
9XdjMpJM6lL45n0Th0iD5ODY0BjmFIVRjRS/Lc8wxPTr97CTkuxymVofrivfXfkvHWIAji0BhxsN
v3lg97FIOwvAhH8ssHmhLWmiBUxtd3cl0ZqFuAE71A3YUCnH+NQufQLTmeM2p1GUhkoIEH2ih2xR
C4z8VAyasgTouLDxkECBX1UhHUsiDyoC1vU0Mki1c7BtDkNha1fzMGWt4fINXA4mMdWQCwbtFOjA
EMGlddJfSLuhPa0c53gF0Sm+7aZFzer2H7GpEcenPXLFlnYkj0Ok7gztXAYvhBEM6PG2eQnPMMVY
Wfaaj9p/FISjz04WjIpunAFQa8bSUBqUp9gPrSG+to5llZG8C/M6hSWTBc5jC0UXproBs1yQZH9J
7DVi3A4cWcDf2gWyhXoQcBI6O4ca6MATARR/t/toYUWZglIrlRVNswJeT0vlARp9prFKVE7BYSow
spSECLHcIPeHemvZXdG0Aivtst0hGVjsWSwxG+7GKZArXiq8kiInWtzxWj+up23J60yb5oP5Pv7l
cJzWqv6WARz++MuCkxaKBaxKEnQ6tT4MyJPfzGl3GNJ4S39O5yHc8mup7q6kQ6l4oCABi90VZVAq
EeNdcaBwx7Gb72mrBgmoL3zwFKcSI5NgVMY0+2MhIuPRM9hOoeD9fleCk5Dt4CZ8Oy4n0vje0igX
XE49JcK10JInvj2hVEPNagTT/GUe52Xi/qI8JY0MlG3XefY407prQcjcNJgDwvoE+Kjsdui/Nsyy
m5YPTQfzepSyXWP+LwofTRkyZOwwCKHGhlfULH4ldWFe+GqQyeiLnvjnlwdi/Z2zGBuRhitEkrxh
9NbInWFwTakWX7SYDtualnlEP0qd2m3F2e3BGnZHDvt/owax1B6IpTCPJ7Ex+XDwCbXzodBz3mvw
Pzm/ps2X7yfd0xullCfU/HJJstbk1lgx6FqdJCTEtizXNHf7YIlOfGy1t11+daqV4hI0gwlLUpM+
5MYJAUoFH9ilkHuq65U/124D3LZpZ9qJ3f44Dd4YgKuMbIs454mLV2ZmvZTd4sTdO9MYTWvW2x2Y
IZiUETE7MmwojT8/5GBDQ+ai9Vkm3ILEMxrqYul1XqA8HdV2lnjKsSg1kubG/emldCFGGIxehBpG
MSHNi+NB1tq/MhJXyKYr/NHnC3sXQiLtwRN03suZV+e/UoWOpZfKH5QQkPSGd7Sek6n5n+Wb2Kfp
id/i9VBuXqPDiBfrlxWUcsfg22EQH8cQ4uv6XDnKlLOCQx46yMr1w4CBsuolj0UIn/BuXSb/UiL+
5lZwroHREO5zmxomOSj5lY3U4dBRbpQ6gCJhT5aZde11hqn6GBt/0sm3VfLB3zQJ4lrygYlVwFzp
y1YZHl5w80SOTrzFXRfAUmJulhuxs5cyM6d+8AU7QC+brTltTXC9yS5LJntcEZdj5JN5pP9M74le
eAq8YATTG4cENDWqqRjCDQebtDP5UaaJfpf7t2oIBG3fJEtxW1I6MONNWZW23/blys/54Vn7PiTw
GuQo5EP+gJpMP8gTu/CwCdzmrSykQMFkpuyi/9bKIhw7bnm+EZAfH2sDyqXnuBY8uKDQMQhzV8j8
n+b9jRaVG22rbNfaXxdZ3byl5pn8KLV7UUCaSobmjHKpIFZSFchCSQEJQu7JMYL/G0/6Y2FRnjub
FhNfGjuvOZAHw4zdetR6KMAJKZAm+4caOyYTLABDw+Z4G5g8GCgx81Y/w5CYA+0AMD/tckgIwe/b
J64/KM/li7+YaVivt/htIUihnJ5wZJM2UcWf5Jak8pocAjziBD6TcZ4ZiHjyIh8CKBWOxPRqCga4
jHOAZ+YhfnReCjkO1bGkItw9V0CnqapPuB32tQC8nJZYUeok601H54Oyg2cyczP0zImwtWg1JqRQ
thKl6v0n0yEwhovcUxQ4M+YYBncsm2xdahTiP6ZcXsYCskVsppvavxAwo8HK+3ZtDLErNEOfat/t
ymxjgxvhFfILylVBtYJnLdo6hgtcguYOLSp8fzKmZND+GZc/fyx8d4KSUZe+1I+2CbqjaMWir55y
euFISyTWk6atKk6+yaex+4Cu3z8koxcNRtxV2TQKDBMinRInx7GJbketg8AHKpOv+SFxqjyf/DAn
e+gZSHNismPGztnb0DRNfgy0ykZ6B8VycgNteshlTLsekHJkouWFNg3PoGDMGRLMC6gy7WewnzYn
USjUg5YaZQGyrygk1NCzDs/BCy8wXMRL1xXX1fjLGRhFFbZcNoEv+KC4JFf9k8wG11tKUOgatxtO
3OZbv3XILEotrXxKtbIBla3Lvhfhvm1q/kmGmes9Di+dCKTmoDdpS/rCgqoj3lBYvKdSPcmlyKKX
Ch6jeBySP5C/aNjGujmJlkxETPFQy96pF6JtpGODZIZ4Y5lXf0ujG/xDrnVHX6nqH5y+zqYEl+cL
lLeB9vxWxv7p43lgWelLeOtTQP+mJBXzEx8bzintdWCkmDcA0zLYShfJbf3bZOELrFpkGOKZz/Bt
9oKt/a6w3N/dwD3O7Qwrc9hFr4DGvHRKvJUdZRh+ZD6stVqyvaZNIxipxt3hyTzmvjF2fxky9qns
F+A2Zgm7k+1pW3e3CSaGfMX8d17IEAvRdyBGsCK77KzlyMZMdDiYmlujMdDDmqrsXPVRm121wFKM
MXysQDZuAIblw14kgubYKHNjozy4z8dglMSx5hFSr/DiNyislpAhreqx05lm7/0NkQ15ylRhgqkn
QEhKv0PA2T5l7MS5AsmWbKM7A2OB2L5EGQsnZ+DwVuZexTELAAEIHg/MQRhdTK7R+S4MRlKNJYUh
hlPkKBvIqr5nNiYaomkbeBMaYd1ad37YvCvnJwpLxlNsQM+gT/R6VNDTyMnNIbvaMaRB7Gj5DoNt
lJK6LmSGT3CE6ervc3fQCNfqwjNSC2QFFUQqmfT3L0DIKs63XYwlCQSC8iAJg9+ctGbHwkbRaiwp
NK22yIsy23ykk+aluTZaK+qweuSqc3UxJWbXQ11wHiQsI2kDnCQgcq2fJfF771yMpFEgpSqnB+Uv
HNHnLTYaD0iOqFe+fyqFJrfouK/cQE24VWXAyPZ8b1hlO97vYg+3GzrIDrG7xnbji/4CE1QmGl53
eAgdfmo4N2+82d3G4YxFmbfDYpwzJdqLYXGA0/oJvkfEPCSSgOC5MOA1Qxs4xvuYvjsuVckJPgJ1
MRSuJKjb+TqpU352d2dkGnribsXFIDYhb0Zkds0nIbGcGvxVoELKiDBucN2kUFyK8gXWv3ha/27U
aPn41EsBRGXlg56JakH7HoUCBnv8ELS8mnQfBvcuTEDsr9nKyp3XQgd6mkJL//dUFJRe7xYe1lsU
j9y82XjyWStl0DVQHVYT0D09bF1cQgW4iyobEP12US49Z0/yU/5n4hU744vdUh9+qsebGCwE44Z9
u+S76bVm4hvzWbRkplT333BbCIExyhgaXdPoN439NEDggvVFMMtSmXuUWCYpQzzXs2k6QPs2Xqzr
cKL1h5WsMMIHjX74qq4dI0yJLOp7vZ3od5OPtfxpJgBsdXCbDQC28i5XAgpoV0qQsr1DcvVJZk4y
1SRmgfONSdL1WQtAj0Ea9u+YXN2kr7WlTCGc9ZxAGWnFJhhW6lgp9to5mrDLf97n17ITubrNc9ur
HDj3EoGhffaQ6DZJ2TaUCCWbDTQwei6KApoxpP7T861IswJfaZLcJZEKn04YDv4BWXxIyHuGcSWb
OicR2zKiLnOhbJa4VYmZhuTGNpNZe0cPJvGwAGXhAwu2HgHjCPw+x6v3nt0QZin1RnD1zWhFBq4M
GRm2RsaXzU1yQvId/xCX+m51R3Jn09ixowB2ai8q2xuuh4H/gDU7J/QTSCUvGoz1HVpXa4YLur0K
z17yPwGpe8WEcfcya7lh0Xpc8PepY7apXWFqMMXL4zIG/9D3j1DsGZk9z6uq48zvOXUDGJN2LswU
j6zpJu1UzhGZ1LuaD/Hf1eT31WRW16BocbPPob1HlPixc5Ev/Tc6P2tDWc5Uee19j4V+WJD6Jn0X
dzL9h1Ka5PR39ZTzoa9MoYrBZbsB2usmSzfthSsw5Hm5pFoVRwnOdC6dcR4vj91+Ko3N03La5gnE
j90c8rEQPMmB3iZekDi2O72RzsZ0Ef9tf8v45NgZ0muKYtHmsM4VJXF2D5selNBtWB6/Ii2rTuuf
GbM9GFNVxVmuQfLqMjl44ZuW8zuWeykPw6AnTeLgP1c7VyRSkzAHGMbP7F49NGzWGZg2JtybX9CY
Jn1bR+4jjqEUqJQiPDb/Kx0coL/lfr6cZn7R55/PibRnOMnW1SYteV8KMRp44iECeL1k5YG/LWHe
oozvyZ96zkfF2JY5J1gYr4jH38GOx9nTv9k9bkEvSdXsuV0I6XZyeb7/Wp2xjZdIpQW3wVojlIbY
IjNenCWOYx0HlDv1ZMNpL5IRgv4O+Rtz1cp0ljI5E/kbKC0NDgKbLBxbFSBgNaSBwsH3N0cL+y37
JE7FCzbd7gPAbvFq/07mje/SHf5XhCXtfJJfwwxKPjYHKVrKW/An+fWmpXDzIKOoG39hwmbmaJWy
80pNOmrmLt/wEqMF2i1ORLpNkE+Nh/MLIiM1ratoj4IfpEjoDCpD7TIc5hrJfLGc1JPtZh6UpEKK
6x+H6Gi5g9MYowA5GPx26zaEKSpX1iL/GD72zM0vpVZUYZb+vkrGr3+g2kykmw/Hh0bv3MX7yKme
BSDNmBOCTJuR9qOrlprhM9u/Iix9UFyuCSB8N9ZhV7+BXruVs4kxAIySbKSadMAzWeM+759xy03f
Q8oRpyhelqcEZMd0n06FNHBJh0QhZ87J1dTNNgcgm3tPqWECtRqw8Bz0VyHpfg8tFgdNYD6vGfr9
ExGN/z51rNG4W/0ERyFzksSRNMy43kSV2KqTgJVZnPGgBjH3qfqQkBS/m3BDWJuiMSrHHOAyX5es
GqU2HVjYtugCe8cT9V4UVi1BAaEAIlByUZrpAmz9XTpb6tDiPb+hOe5y+CW7aksSFNVo9YDHkH6H
08Di+R0JJLcvg06ZTRz0R7/VY69q3z5bZeONnmmizaP9YTmxk9CW9t6yAyb7om8/iJeBC0DXlLhk
cvtwuTW8z8XVfw3fYM3t/dhf9YpPn91rQo5915X2e/S2SUe3b3Pxi3rWbZJ1+f7ls4KK40EQ7+Y1
Rm3/NkfDK2I0tSm0rKbRXdMRszzwvN1g2ZwhAHvOM63MG22Uax/AohYEK9zFFSzuvz5d9rFJng2F
K0eoZ0XvI5aSA6QBuwspgFP5ChUFKpygLC2KEQb6AckpnoOH9oomFrIlUn5JJguthldStZ5X24JW
syNFG61+CWjO1sBrfqEGvuc3gcCEZSa5tx3liv/5VBDuL7goSky6JM2egCE8MUivg4VMDl+q0yEd
bMno8mSpIAHGMYiAzYHjjbPopb4/aYx0529Imej1HOyIBGCAP2VKbKOZBdFhiVXxC+4PwfFSaWPh
YcEAiTqEAPpjcy3tzEE5GqF3oPJPNnWIKoF9oPRK8ZqWX/BvHBQSC8j1LzqlGURAcKX4CCDn9Rp5
LNcHNY3n43lV3ty6iz6keiIqtRXMPnFztKB3FFpqb5BZSvtkVucAtzpVEmuL1DTjF7rzvOyVZ3F5
k3UnFxEv5g6XcHkHIo+Xu/UJJroKTcEM4ViS5vKS0y1Y7GYjDyztHc42ObSKd5PSfOzWWqjAHNxn
zlyQH+wfxfynrfEF8O9H/tF4VdOGrF29f03v8akqU1fS5gwoduKWzxM+4xb4g11HSYay/DbtsTp3
4qjgXghUFE/vbdFmxBPwsczri6raJOZnLV8nG7bmMg853n8ZxAwgoLE0OY61Jw3PhGCLWrxtOHrj
qS8+ZAYQRUVTw9xaHhocX7DlC4fpzbIvWIPIeynEnXLX3tqfMjSGMIvsY0IJJEkj/B8uQ/biuA4I
ul4gpCeaQOchyele4B98CjF6b6FDNvh0ll91niTKK1iVzT2FbH/gJ9iIMR+BslsX/tJzz+cnkVbo
42DLqZfDdbFXpyjSGHZoUSLicScsoUJ1PcRIC5MRjsiTydvOpaejnLfYJn+x1UQ6siZG/xg5slNv
0h2ycuqVJUc0TIs0KDf/kTt6jHWY6QbW6Nqx29r7rV/aU0yTdDISnI9yDz9hOoCiTmtV6tNXzGyP
Eo7W7DEdx4dlGMmvqb1rADWOT+onvay3eeCBZBbgAFdg44LBo8iWtKPP79LAutgkYlM3SxoJLAkd
ZVNapvb64ln/sPdW4iGFvdS+1hsk5ffWegkml6mKs69pRn1WXwKTywqWryO3BgeoQ1oH/K63Hnkn
4hy1nr9gpitFGXR0+82dni9BG/9O20mucu5J7fvtmLD/+DM2tTV0efbYW1rILrXrcfwsdCzmO3tt
huup+oeXXVxmo2fUbDcXEsplmdOTYexvafZb8W44X5aMp6+gBlwy7kytx0Pvq8o1/3s2zK0jFue+
DoOawBcgURQl93w563OOmF7rlSuUCeAcNOERUXDWRO3s0GFtMxRb8N03vSfgpAGAUTG1wmL8gzt5
RVi9p8G1xho/vkVv84w0RfB+XwiXjYLEzyhTpZ6oTwErjaAX8RBpRQIwScuCr1G53qk7k4jxnyyv
jeOWjiZ4fmYwTetLfD/rNilkiZnzxXnC4nB840AHAa/cShrnlT1ppZpmfRH4r8oVoBQEXMuS1Ltx
DndHZkVYM/EpZkQNNkwBhXqQvp/rtqjreFrbsuJxG2NZ6HXeU8r0V2tcvPrntsIU7RruT+7IW+ro
wt2FC2D3dAP6IH7KXVeW80382rN9WrMAe7wMXGmVXS0Njy1dpj4Vu1ggcyllUh3dzN5aIj/OFkTk
z/vAAYFtQlL+i6QZ8tskLvsDkoFaUoE3S8cBfMGi0VQG3b3NVrCs677X0DFwqxIyWGhR+OiTHe/o
PfRtRHq5p47FERRE2OL4kZTh4BQd2vr37/eHs9SulmIFi9Vyy9/RvODom7Bxva2MmqTuZivd9QnZ
WMpLbLc7bxOhgr+Vw8YqmluqB4syKgrvxVk521YEjiV/rAd6LeSn3CrlzSeUIU3dLglt0VBn7yS1
LISFwe8Y1KtmJLZbX0SRkDFAviPPMvTwPre0E6k9MmJ1DMALpv0RrXDSBiosP8PAn5q0CQMoTda9
FJRxc49uTRrNNzc2N0aHuYlmf36Vsw11V76Hg17oxCPCSWdwil8jRrUxD9aXM/pVDRtifiphz+cq
/2jxvITLN+h1I407nrl+WEyJz5tGr0FtXA1qP8gczbe6ErTcT4wn86Zr4I2KdwgLZZWXYYS/8fUG
ylgJp/rM6YOmK92HRxfZng2rDjfi7pU5YPsH1HS8eLGSiRJOVWV2gGkxMCRo1kNxX7wb3p5gkUdM
4Z4MMLB8xbidoDYaTpY8pAu2hQU3bToLsTZGk97NapiO7Lw0SwdOO0nwT2zn0bHM7Hw29HPu3pWs
VCxlj1S1vgE1oI1Z1Z4PZd8xP8P/tzKlCVHo8pmHHQFg3fFdymug0vTUpGVu4PKvv/91zwijVUbg
DA8ZoPzG3xS1xiPttDPmAOktsw6R8wliTC5BudTaIFWwmE+a1WLlCNEOGoFzBYld8VQDUm95tbLX
y2S96qzJQmvislCeV2GQUI0Gsjcwp5o5afRWl4m8+bW6dKa2XevheJOTh7pB51YCHywEQNE8xl5f
iREPqcXHPnLA1i+06hbd/H1s5VS7wmzKbByDzU1smtQ6pjsiDJN3CAOaHt1m9Lz/g+hoVTsaGksw
qz5OATxoi6TRFSL/zijjiMpwXbDVBYJtvDs6oUvDGzSNEG5VECZc/iyF5OUUP2rT/xLHnFuPyyMt
qodgFAOW+6fVxxA3ErT/5xGb5B7Jb/2zPKNVTtztyiaLN/23cmCoPGb1nB5mwaBGCGnne9f86bta
R/Jmhj3FB34NthksXs2zoDrlRVkPOKsWQqCSYQ8Jh8ZxsAI1UagLCMhNzEzHZA7nmS+gNkDRgUaZ
7hpiYv+sUalzR2iWjPEphY/HQC4U/UwGq0/ktpXxcuuED0KSJ5+tES3UPIEtjqgFZUPsCS17EUs8
4rTNPwR09jMlANy6+qk+oGTiUf1JKZZgdS0129giBmlTeoJl+4jpRQchabMRAeR7m4mWrP58QvET
/ZKwmixy+AcErsYYIAtaKNAnho8s25BUgupWRI4q/8gWMcp/77lTP687fNkG9Lb/Q7c9sTV+DH4R
do5xJy1T4GgZ4iKEjMRmkD8LMBTDagxaS9m6D72m5ey3q5mbWto08ZeZIu7nFRwoMvumyJFaSW2P
/51SL0eelNRp2bGWTxZgVOq5QHbjf1H4kqT7Nno9/JxeK8AteuzyRYE+fLQ2xkHdhdH1ABHK+1lJ
Moi/w4QUrt5ogqUv/bkDc2zTIgy8xnqXo7Q8CRpCFvNQKtOwfIoWVW6EZ6s/DEu/Bu/hAEfvBB0P
6p5B9OjQc/zmAdQlL23toFjZwzMXWUMVMxBRZFumF8wXG+pxVlw19+l/NkTKqxyD9FQ3VNxRBVXT
PlRrNw/EurP+DMapXUdFFlUKD8JDhxv44TieKbn9JkgWcbChi/eZYC8j4F7aGbkju+bhu6QL5GFT
/h1Rq/4RxC+APirFKO6vXB8g8KJ7299158vm+ggbxhpstLctzsNmeGHyIfUX3CQzmQMDZnJC7gdg
VhEnixZPw+HkHebiDxEM0v1zptODX4E2x3NHyAxqjJpe6DbilNuyRwRKubuJaZ2VEb8ls7h2doOj
+KH4PVAHUe6e4w9QOOPCX3s1o0S4c86nAPOOsOCXtRCqzxdfL0B3I+Oxcz1buWhpViEPI5H1SRSB
Wq7BnO4+a/ihxEnEGjF0b53ftELoR0drFMVFchYgnAnF6Y1VmoP1dJ0kj1DrnhO+YpSr2vqfw8xr
SDEnqYb3uBL2c+MQS7SvY653mSTiYSWysoVAFZilq6fU2m8DJvkGHr+b4LpQw1t2I8A9+RXWemAS
bT5qfYGyx0rk9akoCgxOh6SQK+E5UjSA+9vQTa9+5sX/U3VH/tGAKC9urd7tl+LZH2Jm5AJMcemz
tCGsjz9qFiQmRCcVEkoGRHqxzO2Is8eUdnD/v2cmIVcuURqXF8+ELqJ2X7KdIfxIGh3hklYULQX5
GxI1p7q5PIJ9CKgrI3ETLEWALvFVUBkCxGH71zD9DTuPw5tmLe/A1lHHHf284nYLjUPLS6sdBFnB
0wzhf26mLhtfwZ+Qa82W/MwyYNfIWCT/uJVPEN1F0kPHyuZYvg3pcQEq8fuhmicGStP5v9PREmUn
zO1raNZ03iU/O/GcMijgYbvm2GhRc10WPbvwQQ8uLQUHn6enEPqHQfE+iCHjsnMw4umGfLgBFS6X
G5Bl62Zznmkl3TgtK5gVpVNg5Ko5nMtPTuSQf8y2I7HREk7n+nFwYjhaGvES3lpbzHwSQNtss3n+
g2GB7crz4JVMTwiwTSe768eh1Upy2MgHV0fVau4nbYhZI9NZjcipnYHyOf4+2G322T2Qb8ozVy4R
PtnT8Aw1m4cX+UKkv7/jvs/e2vW7Q75waV1MzbDN1SwGZ2TInpLkjRb0wCuocEsjcYlFDIfDO43L
/Gh3+ewzkwynUgn5tVITPAWY3NV1OwLXZhoj7P7fUayMWxPQdEtdvkKBA3GGvbULA+8bTteIN0hC
oGAavYP5RfCpJ2Rt2hNtK7hhbOTohonYRHZ/Cktfr5XasJUF0LLUWz8SABEoflqv0YxDTQHIzE/W
1eT+JBArqA/DgNhQ0bRXDZq3rUm7B14kPcxRtOVX72HHAXZZ2mCDwVLblcLBqBpE6AUAKswuLh71
bXjJIu/lnOWUc0/D5td/jL0Ojvf4M7ymvMacNOgYgpxvAk5a0t/DPC6MbSUzaxPfK8XYP7y2WwT/
G/ipqKx4vaQypAgZ+/Eqc5iNncEORbOepgDXA8U+8oKCz0Cl1tkmeIw8fSlQDnHvXq/4HR8btFOW
2jwI/e4q9uAsPdQa7WAhugye7K7WBE9bG5zwo16ieXJD9dslY67RIc1xVd5Wl9rpCuVWaNKbEp6B
P+5LkEpbPd/W80f2zU4Fx7M5avwuwqpsAATMYVBAvl/4VxsTYE9VI/rIbs9zKUu8ftDvA3IZ3Xll
rRWsdfRSrJxNyuOn56LtcA6amoiTGjrQKF/4735CQGtVIhSczD7t2xfyr+2zPn3ZrLzsw2XufE3n
kp0AitXloBD+3Uz1QWUSA9YJAm9Ty9pwtO11mDzaKiKgZDCTopI8yDXilAj1AGza3KpaXJo5HK04
Lfl2eoS2zCQ0Vvobfm6JCWcWD3rIGjCrY62QfAxleWxSAV2otIFXYDxFrpQHkBei0VsOFU9jiZI0
Gy9FwyqrnyQzyxr1hgJ0QGWAZVv2IS1Z6geZhdKoyZ6o62FFUfnfqzKvEdvArZLM4AJe3iFx8eBm
euk3fN9GJ5+ZgSreOfzWOYrEzpgH7qk9kUgh2WRPWfDq5rMALeFrU+50LiVkrZKMEfq5P5qvNZgd
IHS4IfTjBKCXEgPmRaqdqkdQWb+zNLyicIuQJsHRkBwjyCNUezAd8Bv3Hit7Pu3ukmb3sdvhsvW+
yRrXRq0A++W4cLh8I7KZCqWqQ2bsrlEtXCNxQRO+I/DwJ9CZ0XSXH00f4nwM6vVYesLetYKz9eer
wCs0I17VjYIMqxKXEslllAECjydWkmpxzDSikePYxjn8TcAzWhm1WlWxFntJtvz468QMIRf3JO2D
TYNZF7dKyHj1c71j9WtnGXibntuT6uoiiyybniWadvkfT8teIaZAbvUxCEK6tAebT2tb9pvYgvva
5QTlKuHgP4xt14CGJWNUomqkPNkX3HcHCX3/PdxsxPJFFh8PwhJABmBYMw5p4d6Wl7oTAMKMaGje
j3qrbu01La6tf/rGFTJriFkSaCZVe0yAfRt86apt9B0LULsvuh7AIaBaatIxfah1S6ISykrYR/Z7
I0Ebq/bvrwqv6CKeLRigjBO72gxgfB6tNerzrdR4eCcdAKYv4GCrEnzhcee/keBEWmW9eD/89akp
dMyVx71KFQU/t754pnXcAESXwA9hYQRSB/1KTZpBg1ZYK4reMHImYIVbWC2XjIXENVrls9gSC9dM
K0FOKJe0tWgoqq4e254z46BFWuo662Ruh8rMJ5qCTgfnmmtKhmXHpLwDvJVcdJbkfm1oslVt/rNv
lZZJK09N7KgFAKqouoLs/+xsQWRZLmCWb8wLPM8yaGD9Ck9kjWmq5JoEICYO422cem3Uz+046+Ml
kWNS7mWMXL/f38SeJuOdEN+e3LGkD03nD10a/WW2SDxmm1UyLI+FR/N1IUeNYgTSJ025KYl550Qf
kFGfzaOVFK8+AdlDdBlh3/tbsIctvw3XUmVJZiC8zNSDuOr7JH3J9M/wP/uRhK2bWJgT/olzNruj
NUS2EkXO3hNEyEP3Kk9Bxjoa+S4s4i03ZVqom/kGUnkoTW0UUAkaeuj4wXbJmTEuJDsSi6Qpc6NA
CKmuymoEOpeeLYPWN1l1/HdYg/O2JJVVE+qeKVK5LBFC9sOtmyolE/yQqz6OC3b25YQAsf+Cm922
m6lCv4nJyrCPpkpX4nQXfTBSAkvR/8tjpGo4Pm2AW/oTyo0T5Z/PNAuhmJnn4vs7awkefWfj4f4z
ERFMVqWREoHAvmEKGc6713MJTT5vFa2h0iIIFgyMQeRvQT7C14c41KJLxy7luG+7+vuRmUvhssgw
HMrjNe9r9Uyd7AOdxBO0V4JIjMJ526+0jxb4UAQnuvBZvVTCVO5bcGHYftf6rF403Ax39Pcp48jV
82iBoCHh3RAVYr+3ZPYxx7yN5jLTA8fYMu8If8cH6//xcQnYucVN82iEdsp3Z8UzP6ruZSOmI3Po
87lMyuzeAQPWeQeUlVsLtA7tGmcUNKdJaT0wjnRiTwTqqpoEHO7z4wE6TSdgsChjB2zTlhVJyW2l
VtaGHipke51Xk6cohM/QN/KHg/TxUNtEGfRPtS+puG8dl1hodl6hO/UZBRBh/or//eZ40Re6iyrU
RkKuQqeh34pQB6yglVO5m+BQwSnt+l9Z7NUz7hrSUhGiP6LY1qjnNOAKICD6IoBGhdI8Z5aPA8M5
f9UAg680cpoVDUBtB+YIalHTwfypA5gd/AXPrj8yvASrATRzSEh3xdL/jwUmrD0VLuXlp5kFLkFB
AhDfxXEgw3gIh3qjTLyt7Eut/xYmvbqXYRVpT82a/Hgn9/xvNE0KOJnULBv/XOSOhfYNO5tcgMfB
LQDlbtH63JgPxeLQGvjefx8LS4Hi1UPp0nFyHCIMDIaGQO2THPKAUdl7oG//JwypW95bxRBQf8AU
N/O5Il7dncp5t3IxWZAw4tK8HeCy9dfv6vbwLrtZnJimSgaoUGvCvXICUB55zhL9BHXBTXZjFPRF
Fr38f4EOvtxBNcGcqoFiXvmnc7NYPtc26xo9gmXensT9cpVJG4qDxOD0JfeUW3tGpD5kRa/MbnMB
/YYNM4MIQZLkpcM8RLlhl8j460gt46ZehySaZhP5Yb8sJ1aXrlHTXpiOZfRHOS+ZUhMGzO+qTonb
PYUsS/VpBKilqvYOWWCwDYm9Tjp1OGn+Sji2A8dZZ7JxkDwPA2h6Dmdu+ItAsqNrFtRlKu92M53b
N5vJOhENuq9CRpP5jPFBzRNBYx/jUiRVrsvBpe9dabH8am4bHWF6EBfID2JowasjCpMhZy9eBLtq
Q5lzUmiZFo4sVhdLizOi8ruDXKtsKLI0JazTG8aobEtGFu9PsSgT3979vyIkPSHG8Up/eY25GriZ
3d0sWol3hQEqs6Anl9H6+xqtG7KvmOqCk7QXTpsxSmZG8GE7EtJnE0YN36lwb29L0DzUw+7XUMxg
cFRPxGuQOG/mEme0g04/RN+m/eyvL2UFwpDH7FzTHkJKHiWbSWQ5v/r2SnS2kU6wFmNkBxO7gOHW
ZNIXfgrCVb/MP+aHNr/uPVVSWBfbC0Il0vt9QRmS3YyGVGf8TW2YBwQaOPArZJ68rhAvPF8yqTl7
1+YOeC0NKDpoakS/gi7rfH+c4iiFsS2aDLvsoD6AREScEPDdy4lbVOeGcpKXiUhLBvP1YZIymzRA
vJ7wt6jKTnFrKNwxvJrsPB7gPQrSyCeJCgrGg4wvL/7INLAXfGpRKHchFPZ9sShND0ZaScy8TYc9
dQeBfRCKcUhBpTg3wQOnRy5oRVV/d9oddWANY8p3rQcp445Lw1DNK1tIecv2WpF73GkOjBdQHkyu
jpbAF9oozZnRUUfSpWBEQWen6y8AVTdT0p9tjKIzGAFON84u+lmJvsdiEqchqTONJWqQAAbZlIhe
QS1wZm1IgrwaDsdDQ5wRdPBY/kw5SVg8DKzOhHQJ7KfIKHNkv0JqiTCBh7UvSYKuDEfx4HJvqpF/
evH4mgKeXiNoWt4BBVj9tF7JNUeAB6G7LX+lu1/xU73fOWvtMjl8+ANunpbavrbOrnGfVFCKP9d9
8mtWJ5iI4o74SYuInz8ucOqTlK8ae3JgPLwmGt4lRk9xja7k/xIG+NmLdBG4sU5SIOUJYLFkTlZP
pHWfmYelGAurIkQkj+v6XLsy89rhCHmTKG8qrI+obWMZtqd4o0OmgOytkzlGSo+BvY+tS9Pw1kR2
rFHv5ZqBexM0T8ITq4QQMRJvcvfWRUQthY9T6fAmAdZWeZR7Xq97qmx8fA0FHqjSE/seLPzBYtiq
ExxiXcetXpslci0ZBgLVc22eZHVFsEIq7Hz5XUQwOCEtItHfj+v8umeMXv4mUw5Vzdvk91Vd2UWN
asvmAOPvEQ3j7KAH88CuCrUOiXG6jHXLjIqOLBQf46Qxwge/y4b0hyjUsLDEkdn+giAkOpO4l24r
dkKOZL5HhdiJEh+Fujq3u5frYkImztkJDz+31kM45i0k6bRpyrZyJOwbKWnWcQXbTKc93YrRinqv
Sb0lMR8fPiHpc/dUfTx0C5pA87OZTfx3wm/4KerZazNmZeJeE/uASzdvmLb9cjv53bu/qtwrS9gC
P3x8QbqcYhSGxj9TJVOnv4HAp2xjzKE6kkRE/kPJ68Q+jO4zJh2q0C0YezwHUKFTSVtK9PNeCQHw
JxwNyisxZidbICrpwqD6XxqhdCRBxWtXpy1u0A5CpG4Vqwhzrp5VGWrK9DxpJBKoXvez8uPXcX8W
Tnf9e4XuAlYsJcpuNuf4KauHpmjt6ctPngX09u+tgUceSG2s9w1BAbG/ec8p/e2iSzU5PZCOAl/V
0lNVVPzcGotblsZFL2P3PGk/3uq49kz0JoJfYi6kmKir63JqnfUM653vqUKR6B8Lhq+srkmHGvhw
Nr51Wu5EVSDehQbXkQIGszwnTkKT5pgG3ZvCTRP8sZnAfL6O8jI=
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
