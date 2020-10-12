

module FinalLayer(sum, P, C, cin);

input [15:0] P, C;
input cin;
output [16:0] sum;

xor xor_0(sum[0], P[0], cin);
xor xor_1(sum[1], P[1], C[0]);
xor xor_2(sum[2], P[2], C[1]);
xor xor_3(sum[3], P[3], C[2]);
xor xor_4(sum[4], P[4], C[3]);
xor xor_5(sum[5], P[5], C[4]);
xor xor_6(sum[6], P[6], C[5]);
xor xor_7(sum[7], P[7], C[6]);
xor xor_8(sum[8], P[8], C[7]);
xor xor_9(sum[9], P[9], C[8]);
xor xor_10(sum[10], P[10], C[9]);
xor xor_11(sum[11], P[11], C[10]);
xor xor_12(sum[12], P[12], C[11]);
xor xor_13(sum[13], P[13], C[12]);
xor xor_14(sum[14], P[14], C[13]);
xor xor_15(sum[15], P[15], C[14]);
assign sum[16] = C[15];

endmodule
