

module Layer3(J, K, H, I);

input [15:0] H, I;
output [15:0] J, K;
wire [15:2] T;

assign J[0] = H[0];
assign K[0] = I[0];

assign J[1] = H[1];
assign K[1] = I[1];

and and_2(J[2], H[2], H[0]);
and and_3(J[3], H[3], H[1]);
and and_4(J[4], H[4], H[2]);
and and_5(J[5], H[5], H[3]);
and and_6(J[6], H[6], H[4]);
and and_7(J[7], H[7], H[5]);
and and_8(J[8], H[8], H[6]);
and and_9(J[9], H[9], H[7]);
and and_10(J[10], H[10], H[8]);
and and_11(J[11], H[11], H[9]);
and and_12(J[12], H[12], H[10]);
and and_13(J[13], H[13], H[11]);
and and_14(J[14], H[14], H[12]);
and and_15(J[15], H[15], H[13]);

and and_17(T[2], H[2], I[0]);
and and_18(T[3], H[3], I[1]);
and and_19(T[4], H[4], I[2]);
and and_20(T[5], H[5], I[3]);
and and_21(T[6], H[6], I[4]);
and and_22(T[7], H[7], I[5]);
and and_23(T[8], H[8], I[6]);
and and_24(T[9], H[9], I[7]);
and and_25(T[10], H[10], I[8]);
and and_26(T[11], H[11], I[9]);
and and_27(T[12], H[12], I[10]);
and and_28(T[13], H[13], I[11]);
and and_29(T[14], H[14], I[12]);
and and_30(T[15], H[15], I[13]);

or or_2(K[2], T[2], I[2]);
or or_3(K[3], T[3], I[3]);
or or_4(K[4], T[4], I[4]);
or or_5(K[5], T[5], I[5]);
or or_6(K[6], T[6], I[6]);
or or_7(K[7], T[7], I[7]);
or or_8(K[8], T[8], I[8]);
or or_9(K[9], T[9], I[9]);
or or_10(K[10], T[10], I[10]);
or or_11(K[11], T[11], I[11]);
or or_12(K[12], T[12], I[12]);
or or_13(K[13], T[13], I[13]);
or or_14(K[14], T[14], I[14]);
or or_15(K[15], T[15], I[15]);

endmodule
