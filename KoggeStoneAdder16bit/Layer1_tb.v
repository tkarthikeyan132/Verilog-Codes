`include"Layer1.v"

module Layer1_tb();

reg [15:0] a, b;
wire [15:0] P, G;

Layer1 layer_1(P, G, a, b);

initial
begin
    a = 16'h000A;
    b = 16'h00A0;
end

initial
begin
    $monitor($time,"%b %b", P, G);
end

endmodule
