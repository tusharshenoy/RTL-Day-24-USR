//Verilog Code for USR
module USR(D,S,clk,reset,SR,SL,Q);

input [3:0]D;
input [1:0]S;
input clk,reset,SR,SL;

output [3:0]Q;

wire [3:0]w;

mux_4x1 M3(.I0(Q[3]),.I1(SR),.I2(Q[2]),.I3(D[3]),.S(S),.O(w[3]));
mux_4x1 M2(.I0(Q[2]),.I1(Q[3]),.I2(Q[1]),.I3(D[2]),.S(S),.O(w[2]));
mux_4x1 M1(.I0(Q[1]),.I1(Q[2]),.I2(Q[0]),.I3(D[1]),.S(S),.O(w[1]));
mux_4x1 M0(.I0(Q[0]),.I1(Q[1]),.I2(SL),.I3(D[0]),.S(S),.O(w[0]));

D_Flip_Flop D3(.D(w[3]),.reset(reset),.clk(clk),.Q(Q[3]));
D_Flip_Flop D2(.D(w[2]),.reset(reset),.clk(clk),.Q(Q[2]));
D_Flip_Flop D1(.D(w[1]),.reset(reset),.clk(clk),.Q(Q[1]));
D_Flip_Flop D0(.D(w[0]),.reset(reset),.clk(clk),.Q(Q[0]));

endmodule
