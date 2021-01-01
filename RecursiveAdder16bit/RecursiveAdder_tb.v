`include "RecursiveAdder.v"

module RecursiveAdder_tb();

reg [15:0] a, b;
wire [16:0] sum;

RecursiveAdder RA(sum, a, b);

initial begin
a = 16'hF00E;
b = 16'h0070;
#10 a = 16'h0011;
b = 16'h00DE;
#10 a = 16'hAAAA;
b = 16'h5555;
#10 a = 16'hFC05;
b = 16'h1206;
end

initial begin
    $monitor ($time, " a = %d   b = %d   sum = %d ", a, b, sum[16:0]);
end

endmodule