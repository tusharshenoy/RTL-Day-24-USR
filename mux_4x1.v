//Verilog Code for Mux
module mux_4x1(I0,I1,I2,I3,S,O);
input I0,I1,I2,I3;
input [1:0]S;
output reg O;

always@(*)
begin
case(S)
 2'b00 :O<=I0;
 2'b01 :O<=I1;
 2'b10 :O<=I2;
 2'b11 :O<=I3;
endcase
end
endmodule
