`include"Layer1.v"
`include"Layer2.v"
`include"Layer3.v"
`include"Layer4.v"
`include"Layer5.v"
`include"FinalLayer.v"

module KoggeStoneAdder(sum, a, b, cin);

input [15:0] a, b;
input cin;
output [16:0] sum;

wire [15:0] P, G; //layer1
wire [15:0] H, I; //layer2
wire [15:0] J, K; //layer3
wire [15:0] L, M; //layer4
wire [15:0] Q, C; //layer5

Layer1 Layer_1(P, G, a, b);
Layer2 Layer_2(H, I, P, G);
Layer3 Layer_3(J, K, H, I);
Layer4 Layer_4(L, M, J, K);
Layer5 Layer_5(Q, C, L, M);

FinalLayer FL(sum, P, C, cin);

endmodule
