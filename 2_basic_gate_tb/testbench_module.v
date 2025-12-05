`timescale 1ns / 1ps

module testbench_module;

reg input1t,input2t;
wire output1t,output2t;

basic_gate UUT(
.input1(input1t),
.input2(input2t),
.output1(output1t),
.output2(output2t)
);

initial begin

input1t=0;
input2t=0;

#100
repeat(8)

begin
#100 {input1t,input2t}={input1t,input2t}+1'b1;
end

end

endmodule