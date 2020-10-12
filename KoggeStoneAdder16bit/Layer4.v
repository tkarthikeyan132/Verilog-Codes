

module Layer4(L, M, J, K);

input [15:0] J, K;
output [15:0] L, M;
wire [15:4] T;

assign L[0] = J[0];
assign M[0] = K[0];

assign L[1] = J[1];
assign M[1] = K[1];

assign L[2] = J[2];
assign M[2] = K[2];

assign L[3] = J[3];
assign M[3] = K[3];

and and_4(L[4], J[4], J[0]);
and and_5(L[5], J[5], J[1]);
and and_6(L[6], J[6], J[2]);
and and_7(L[7], J[7], J[3]);
and and_8(L[8], J[8], J[4]);
and and_9(L[9], J[9], J[5]);
and and_10(L[10], J[10], J[6]);
and and_11(L[11], J[11], J[7]);
and and_12(L[12], J[12], J[8]);
and and_13(L[13], J[13], J[9]);
and and_14(L[14], J[14], J[10]);
and and_15(L[15], J[15], J[11]);

and and_19(T[4], J[4], K[0]);
and and_20(T[5], J[5], K[1]);
and and_21(T[6], J[6], K[2]);
and and_22(T[7], J[7], K[3]);
and and_23(T[8], J[8], K[4]);
and and_24(T[9], J[9], K[5]);
and and_25(T[10], J[10], K[6]);
and and_26(T[11], J[11], K[7]);
and and_27(T[12], J[12], K[8]);
and and_28(T[13], J[13], K[9]);
and and_29(T[14], J[14], K[10]);
and and_30(T[15], J[15], K[11]);

or or_4(M[4], T[4], K[4]);
or or_5(M[5], T[5], K[5]);
or or_6(M[6], T[6], K[6]);
or or_7(M[7], T[7], K[7]);
or or_8(M[8], T[8], K[8]);
or or_9(M[9], T[9], K[9]);
or or_10(M[10], T[10], K[10]);
or or_11(M[11], T[11], K[11]);
or or_12(M[12], T[12], K[12]);
or or_13(M[13], T[13], K[13]);
or or_14(M[14], T[14], K[14]);
or or_15(M[15], T[15], K[15]);

endmodule

