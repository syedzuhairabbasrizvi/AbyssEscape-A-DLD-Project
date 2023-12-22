`timescale 1ns / 1ps
module h_counter(clk,count,trig_v); //mod 900
    input clk;
    output [9:0] count;
    output trig_v;
    reg [9:0] count;
    reg trig_v;
    initial count=0;
    initial trig_v=0;
always @ (posedge clk)
    begin
       if (count < 799)
         begin
         trig_v<=0;
           count <= count + 1;
         end
       else
         begin
           trig_v<=1;
           count<=0;
         end
end                              
endmodule

