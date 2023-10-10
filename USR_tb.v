//Testbench code for USR
module USR_tb();

reg [3:0]D;
reg [1:0]S;
reg clk,reset,SR,SL;

wire [3:0]Q;

USR dut(.D(D),.S(S),.clk(clk),.reset(reset),.SR(SR),.SL(SL),.Q(Q));

initial begin
clk=1'b0;
reset=1'b1;
SR=1'b0;
SL=1'b0;
S=2'b00;         //Hold State
D=4'b0000;
#8 reset=1'b0;
#16 S=2'b01;     //Shifting Value Right
    SR=1'b1;
#8  SR=1'b1;
#8  SR=1'b1;
#8  SR=1'b1;

#16 S=2'b10;     //Shifting Value Left
    SL=1'b0;
#8  SL=1'b0;
#8  SL=1'b0;
#8  SL=1'b0;


#16 S=2'b11;     //Hold
    D=4'b1010;

//ADD More Test Cases Here
#32 $finish;
end

always #5 clk=~clk;

endmodule
