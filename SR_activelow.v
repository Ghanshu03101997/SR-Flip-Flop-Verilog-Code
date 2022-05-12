`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2021 04:35:44 PM
// Design Name: 
// Module Name: sr_activelow_
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sr_activelow_(q,qb,s,r,clk,rst);
input s,r,clk,rst;
output reg q,qb;
always@(posedge clk or negedge rst)
begin
if (!rst)
q <=0;
else
if (s==1 & r==0) begin
q <= 1;
qb <=0;
end
else
if (s==0 && r==1) begin
q <=0;
qb <=1;
end
end
endmodule
