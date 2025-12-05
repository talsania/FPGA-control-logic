`timescale 1ns / 1ps

module basic_gate(input1,input2,output1,output2);

input input1,input2;
output output1,output2;

assign output1=input1&&input2;
assign output2=input1||input2;

endmodule