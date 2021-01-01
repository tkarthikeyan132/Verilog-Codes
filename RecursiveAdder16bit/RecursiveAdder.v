`include "ParallelPrefixCircuit.v"

module RecursiveAdder(sum, a, b);

input [15:0] a, b;
output [16:0] sum;
wire [33:0] inputsignal;
wire [16:0] carry;
wire [33:0] outsig;

assign inputsignal[1:0] = 2'b00;
assign inputsignal[3:2] = (a[0]^b[0]) ? 2'b01 : {a[0],b[0]} ;
assign inputsignal[5:4] = (a[1]^b[1]) ? 2'b01 : {a[1],b[1]} ;
assign inputsignal[7:6] = (a[2]^b[2]) ? 2'b01 : {a[2],b[2]} ;
assign inputsignal[9:8] = (a[3]^b[3]) ? 2'b01 : {a[3],b[3]} ;
assign inputsignal[11:10] = (a[4]^b[4]) ? 2'b01 : {a[4],b[4]} ;
assign inputsignal[13:12] = (a[5]^b[5]) ? 2'b01 : {a[5],b[5]} ;
assign inputsignal[15:14] = (a[6]^b[6]) ? 2'b01 : {a[6],b[6]} ;
assign inputsignal[17:16] = (a[7]^b[7]) ? 2'b01 : {a[7],b[7]} ;
assign inputsignal[19:18] = (a[8]^b[8]) ? 2'b01 : {a[8],b[8]} ;
assign inputsignal[21:20] = (a[9]^b[9]) ? 2'b01 : {a[9],b[9]} ;
assign inputsignal[23:22] = (a[10]^b[10]) ? 2'b01 : {a[10],b[10]} ;
assign inputsignal[25:24] = (a[11]^b[11]) ? 2'b01 : {a[11],b[11]} ;
assign inputsignal[27:26] = (a[12]^b[12]) ? 2'b01 : {a[12],b[12]} ;
assign inputsignal[29:28] = (a[13]^b[13]) ? 2'b01 : {a[13],b[13]} ;
assign inputsignal[31:30] = (a[14]^b[14]) ? 2'b01 : {a[14],b[14]} ;
assign inputsignal[33:32] = (a[15]^b[15]) ? 2'b01 : {a[15],b[15]} ;

ParallelPrefixCircuit PPC(outsig, inputsignal);

assign carry[16:0] = {outsig[32],outsig[30],outsig[28],outsig[26],outsig[24],outsig[22],outsig[20],outsig[18],outsig[16],outsig[14],outsig[12],outsig[10],outsig[8],outsig[6],outsig[4],outsig[2],outsig[0]};

xor xor0(sum[0], a[0], b[0], carry[0]);
xor xor1(sum[1], a[1], b[1], carry[1]);
xor xor2(sum[2], a[2], b[2], carry[2]);
xor xor3(sum[3], a[3], b[3], carry[3]);
xor xor4(sum[4], a[4], b[4], carry[4]);
xor xor5(sum[5], a[5], b[5], carry[5]);
xor xor6(sum[6], a[6], b[6], carry[6]);
xor xor7(sum[7], a[7], b[7], carry[7]);
xor xor8(sum[8], a[8], b[8], carry[8]);
xor xor9(sum[9], a[9], b[9], carry[9]);
xor xor10(sum[10], a[10], b[10], carry[10]);
xor xor11(sum[11], a[11], b[11], carry[11]);
xor xor12(sum[12], a[12], b[12], carry[12]);
xor xor13(sum[13], a[13], b[13], carry[13]);
xor xor14(sum[14], a[14], b[14], carry[14]);
xor xor15(sum[15], a[15], b[15], carry[15]);
assign sum[16] = carry[16];

endmodule
