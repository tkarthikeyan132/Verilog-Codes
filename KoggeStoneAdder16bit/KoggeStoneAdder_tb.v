`include"KoggeStoneAdder.v"

module KoggeStoneAdder_tb();

reg [15:0] a, b;
wire [16:0] sum;

KoggeStoneAdder KSA(sum, a, b, 1'b0);

initial
begin
    a = 16'hA0E0;
    b = 16'h0A0E;
    #5
    a = 16'h158A;
    b = 16'hFFFF;
end

initial
begin
    $monitor($time,"a = %d b = %d sum = %d\n", a, b, sum);
end

endmodule
