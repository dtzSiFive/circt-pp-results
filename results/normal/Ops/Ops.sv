// Generated by CIRCT 1.21.0g20221102_f4d481a
module Ops(
  input  [3:0]  sel,
  input  [7:0]  is,
                iu,
  output [13:0] os,
  output [12:0] ou,
  output        obool);

  wire [12:0]       _GEN = {4'h0, {1'h0, is} + {1'h0, iu}};
  wire [12:0]       _GEN_0 = {11'h0, sel == 4'h4, 1'h0};
  wire [15:0][12:0] _GEN_1 = {{_GEN_0}, {_GEN_0}, {_GEN_0}, {_GEN_0}, {_GEN_0}, {_GEN_0}, {_GEN_0}, {_GEN_0}, {_GEN_0},
                {_GEN_0}, {_GEN}, {_GEN}, {13'h0}, {13'h1}, {13'h0}, {{4'h0, iu, 1'h0}}};
  assign os = sel == 4'h0 ? {{5{is[7]}}, is, 1'h0} : sel == 4'h1 ? 14'h0 : {13'h0, sel == 4'h2};
  assign ou = _GEN_1[sel];
  assign obool = 1'h0;
endmodule

