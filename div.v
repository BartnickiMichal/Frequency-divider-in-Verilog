`timescale 1ns / 1ps




module div(clk_i, rst_i, led_o);
input clk_i;
input rst_i;
output led_o;

integer N=64;
integer counter=0;
integer out=0;
always @(posedge clk_i or posedge rst_i)

if(rst_i)
    begin 
        counter=0;
        out=0;
    end
    

else 
    begin
        if(counter<N/2)
        out=0;
        else
        out=1;
     counter= counter +1;
        if(N==counter)
        counter=0;
    end

    assign led_o=out;
    
endmodule
