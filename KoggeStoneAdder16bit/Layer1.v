

module Layer1(P, G, a, b);

input [15:0] a, b;
output [15:0] P, G;

xor xor_0(P[0], a[0], b[0]);
xor xor_1(P[1], a[1], b[1]);
xor xor_2(P[2], a[2], b[2]);
xor xor_3(P[3], a[3], b[3]);
xor xor_4(P[4], a[4], b[4]);
xor xor_5(P[5], a[5], b[5]);
xor xor_6(P[6], a[6], b[6]);
xor xor_7(P[7], a[7], b[7]);
xor xor_8(P[8], a[8], b[8]);
xor xor_9(P[9], a[9], b[9]);
xor xor_10(P[10], a[10], b[10]);
xor xor_11(P[11], a[11], b[11]);
xor xor_12(P[12], a[12], b[12]);
xor xor_13(P[13], a[13], b[13]);
xor xor_14(P[14], a[14], b[14]);
xor xor_15(P[15], a[15], b[15]);

and and_0(G[0], a[0], b[0]);
and and_1(G[1], a[1], b[1]);
and and_2(G[2], a[2], b[2]);
and and_3(G[3], a[3], b[3]);
and and_4(G[4], a[4], b[4]);
and and_5(G[5], a[5], b[5]);
and and_6(G[6], a[6], b[6]);
and and_7(G[7], a[7], b[7]);
and and_8(G[8], a[8], b[8]);
and and_9(G[9], a[9], b[9]);
and and_10(G[10], a[10], b[10]);
and and_11(G[11], a[11], b[11]);
and and_12(G[12], a[12], b[12]);
and and_13(G[13], a[13], b[13]);
and and_14(G[14], a[14], b[14]);
and and_15(G[15], a[15], b[15]);

endmodule
