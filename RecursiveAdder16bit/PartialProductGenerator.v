

module PPG(res, a, b);

input [7:0] a;
input b;
output [7:0] res;

and and0(res[0], a[0], b);
and and1(res[1], a[1], b);
and and2(res[2], a[2], b);
and and3(res[3], a[3], b);
and and4(res[4], a[4], b);
and and5(res[5], a[5], b);
and and6(res[6], a[6], b);
and and7(res[7], a[7], b);

endmodule
