
module ParallelPrefixCircuit(outputflag, inputflag);

input [33:0] inputflag;
output [33:0] outputflag;
wire [33:0] output1;
wire [33:0] output2;
wire [33:0] output3;
wire [33:0] output4;

assign output1[33:32] = (^inputflag[33:32]) ? {inputflag[31],inputflag[30]} : inputflag[33:32];
assign output1[31:30] = (^inputflag[31:30]) ? {inputflag[29],inputflag[28]} : inputflag[31:30];
assign output1[29:28] = (^inputflag[29:28]) ? {inputflag[27],inputflag[26]} : inputflag[29:28];
assign output1[27:26] = (^inputflag[27:26]) ? {inputflag[25],inputflag[24]} : inputflag[27:26];
assign output1[25:24] = (^inputflag[25:24]) ? {inputflag[23],inputflag[22]} : inputflag[25:24];
assign output1[23:22] = (^inputflag[23:22]) ? {inputflag[21],inputflag[20]} : inputflag[23:22];
assign output1[21:20] = (^inputflag[21:20]) ? {inputflag[19],inputflag[18]} : inputflag[21:20];
assign output1[19:18] = (^inputflag[19:18]) ? {inputflag[17],inputflag[16]} : inputflag[19:18];
assign output1[17:16] = (^inputflag[17:16]) ? {inputflag[15],inputflag[14]} : inputflag[17:16];
assign output1[15:14] = (^inputflag[15:14]) ? {inputflag[13],inputflag[12]} : inputflag[15:14];
assign output1[13:12] = (^inputflag[13:12]) ? {inputflag[11],inputflag[10]} : inputflag[13:12];
assign output1[11:10] = (^inputflag[11:10]) ? {inputflag[9],inputflag[8]} : inputflag[11:10];
assign output1[9:8] = (^inputflag[9:8]) ? {inputflag[7],inputflag[6]} : inputflag[9:8];
assign output1[7:6] = (^inputflag[7:6]) ? {inputflag[5],inputflag[4]} : inputflag[7:6];
assign output1[5:4] = (^inputflag[5:4]) ? {inputflag[3],inputflag[2]} : inputflag[5:4];
assign output1[3:2] = (^inputflag[3:2]) ? {inputflag[1],inputflag[0]} : inputflag[3:2];
assign output1[1:0] = inputflag[1:0];

assign output2[33:32] = (^output1[33:32]) ? {output1[29],output1[28]} : output1[33:32];
assign output2[31:30] = (^output1[31:30]) ? {output1[27],output1[26]} : output1[31:30];
assign output2[29:28] = (^output1[29:28]) ? {output1[25],output1[24]} : output1[29:28];
assign output2[27:26] = (^output1[27:26]) ? {output1[23],output1[22]} : output1[27:26];
assign output2[25:24] = (^output1[25:24]) ? {output1[21],output1[20]} : output1[25:24];
assign output2[23:22] = (^output1[23:22]) ? {output1[19],output1[18]} : output1[23:22];
assign output2[21:20] = (^output1[21:20]) ? {output1[17],output1[16]} : output1[21:20];
assign output2[19:18] = (^output1[19:18]) ? {output1[15],output1[14]} : output1[19:18];
assign output2[17:16] = (^output1[17:16]) ? {output1[13],output1[12]} : output1[17:16];
assign output2[15:14] = (^output1[15:14]) ? {output1[11],output1[10]} : output1[15:14];
assign output2[13:12] = (^output1[13:12]) ? {output1[9],output1[8]} : output1[13:12];
assign output2[11:10] = (^output1[11:10]) ? {output1[7],output1[6]} : output1[11:10];
assign output2[9:8] = (^output1[9:8]) ? {output1[5],output1[4]} : output1[9:8];
assign output2[7:6] = (^output1[7:6]) ? {output1[3],output1[2]} : output1[7:6];
assign output2[5:4] = (^output1[5:4]) ? {output1[1],output1[0]} : output1[5:4];
assign output2[3:0] = output1[3:0];

assign output3[33:32] = (^output2[33:32]) ? {output2[25],output2[24]} : output2[33:32];
assign output3[31:30] = (^output2[31:30]) ? {output2[23],output2[22]} : output2[31:30];
assign output3[29:28] = (^output2[29:28]) ? {output2[21],output2[20]} : output2[29:28];
assign output3[27:26] = (^output2[27:26]) ? {output2[19],output2[18]} : output2[27:26];
assign output3[25:24] = (^output2[25:24]) ? {output2[17],output2[16]} : output2[25:24];
assign output3[23:22] = (^output2[23:22]) ? {output2[15],output2[14]} : output2[23:22];
assign output3[21:20] = (^output2[21:20]) ? {output2[13],output2[12]} : output2[21:20];
assign output3[19:18] = (^output2[19:18]) ? {output2[11],output2[10]} : output2[19:18];
assign output3[17:16] = (^output2[17:16]) ? {output2[9],output2[8]} : output2[17:16];
assign output3[15:14] = (^output2[15:14]) ? {output2[7],output2[6]} : output2[15:14];
assign output3[13:12] = (^output2[13:12]) ? {output2[5],output2[4]} : output2[13:12];
assign output3[11:10] = (^output2[11:10]) ? {output2[3],output2[2]} : output2[11:10];
assign output3[9:8] = (^output2[9:8]) ? {output2[1],output2[0]} : output2[9:8];
assign output3[7:0] = output2[7:0];

assign output4[33:32] = (^output3[33:32]) ? {output3[17],output3[16]} : output3[33:32];
assign output4[31:30] = (^output3[31:30]) ? {output3[15],output3[14]} : output3[31:30];
assign output4[29:28] = (^output3[29:28]) ? {output3[13],output3[12]} : output3[29:28];
assign output4[27:26] = (^output3[27:26]) ? {output3[11],output3[10]} : output3[27:26];
assign output4[25:24] = (^output3[25:24]) ? {output3[9],output3[8]} : output3[25:24];
assign output4[23:22] = (^output3[23:22]) ? {output3[7],output3[6]} : output3[23:22];
assign output4[21:20] = (^output3[21:20]) ? {output3[5],output3[4]} : output3[21:20];
assign output4[19:18] = (^output3[19:18]) ? {output3[3],output3[2]} : output3[19:18];
assign output4[17:16] = (^output3[17:16]) ? {output3[1],output3[0]} : output3[17:16];
assign output4[15:0] = output3[15:0];

assign outputflag[33:32] = (^output4[33:32]) ? {output4[1],output4[0]} : output4[33:32];
assign outputflag[31:0] = output4[31:0];

endmodule
