// Verilog Code for D Flip Flop
module D_Flip_Flop(D, reset, clk, Q);
  input D, reset, clk; 
  output reg Q;         
  
  always @(posedge clk,posedge reset) 
  begin
    if(reset)  
       Q=0;         
    else
      Q=D;          
  end
endmodule
