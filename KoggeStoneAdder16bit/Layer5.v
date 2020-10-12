

module Layer5(Q, C, L, M);

input [15:0] L, M;
output [15:0] Q, C;
wire [15:8] T;

assign Q[0] = L[0];
assign C[0] = M[0];

assign Q[1] = L[1];
assign C[1] = M[1];

assign Q[2] = L[2];
assign C[2] = M[2];

assign Q[3] = L[3];
assign C[3] = M[3];

assign Q[4] = L[4];
assign C[4] = M[4];

assign Q[5] = L[5];
assign C[5] = M[5];

assign Q[6] = L[6];
assign C[6] = M[6];

assign Q[7] = L[7];
assign C[7] = M[7];

and and_8(Q[8], L[8], L[0]);
and and_9(Q[9], L[9], L[1]);
and and_10(Q[10], L[10], L[2]);
and and_11(Q[11], L[11], L[3]);
and and_12(Q[12], L[12], L[4]);
and and_13(Q[13], L[13], L[5]);
and and_14(Q[14], L[14], L[6]);
and and_15(Q[15], L[15], L[7]);

and and_23(T[8], L[8], M[0]);
and and_24(T[9], L[9], M[1]);
and and_25(T[10], L[10], M[2]);
and and_26(T[11], L[11], M[3]);
and and_27(T[12], L[12], M[4]);
and and_28(T[13], L[13], M[5]);
and and_29(T[14], L[14], M[6]);
and and_30(T[15], L[15], M[7]);

or or_8(C[8], T[8], M[8]);
or or_9(C[9], T[9], M[9]);
or or_10(C[10], T[10], M[10]);
or or_11(C[11], T[11], M[11]);
or or_12(C[12], T[12], M[12]);
or or_13(C[13], T[13], M[13]);
or or_14(C[14], T[14], M[14]);
or or_15(C[15], T[15], M[15]);

endmodule

