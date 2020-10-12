

module Layer2(H, I, P, G);

input [15:0] P, G;
output [15:0] H, I;
wire [15:1] T;

assign H[0] = P[0];
assign I[0] = G[0];

and and_1(H[1], P[1], P[0]);
and and_2(H[2], P[2], P[1]);
and and_3(H[3], P[3], P[2]);
and and_4(H[4], P[4], P[3]);
and and_5(H[5], P[5], P[4]);
and and_6(H[6], P[6], P[5]);
and and_7(H[7], P[7], P[6]);
and and_8(H[8], P[8], P[7]);
and and_9(H[9], P[9], P[8]);
and and_10(H[10], P[10], P[9]);
and and_11(H[11], P[11], P[10]);
and and_12(H[12], P[12], P[11]);
and and_13(H[13], P[13], P[12]);
and and_14(H[14], P[14], P[13]);
and and_15(H[15], P[15], P[14]);

and and_16(T[1], P[1], G[0]);
and and_17(T[2], P[2], G[1]);
and and_18(T[3], P[3], G[2]);
and and_19(T[4], P[4], G[3]);
and and_20(T[5], P[5], G[4]);
and and_21(T[6], P[6], G[5]);
and and_22(T[7], P[7], G[6]);
and and_23(T[8], P[8], G[7]);
and and_24(T[9], P[9], G[8]);
and and_25(T[10], P[10], G[9]);
and and_26(T[11], P[11], G[10]);
and and_27(T[12], P[12], G[11]);
and and_28(T[13], P[13], G[12]);
and and_29(T[14], P[14], G[13]);
and and_30(T[15], P[15], G[14]);

or or_1(I[1], T[1], G[1]);
or or_2(I[2], T[2], G[2]);
or or_3(I[3], T[3], G[3]);
or or_4(I[4], T[4], G[4]);
or or_5(I[5], T[5], G[5]);
or or_6(I[6], T[6], G[6]);
or or_7(I[7], T[7], G[7]);
or or_8(I[8], T[8], G[8]);
or or_9(I[9], T[9], G[9]);
or or_10(I[10], T[10], G[10]);
or or_11(I[11], T[11], G[11]);
or or_12(I[12], T[12], G[12]);
or or_13(I[13], T[13], G[13]);
or or_14(I[14], T[14], G[14]);
or or_15(I[15], T[15], G[15]);

endmodule
