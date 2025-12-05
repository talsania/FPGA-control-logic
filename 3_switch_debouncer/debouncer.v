`timescale 1ns / 1ps

module debouncer(input pb_in, clk, output pb_out);
    wire slow_clk, Q1, Q2, Q2_bar, Q0;

    clock_div u1(clk, slow_clk);
    my_dff d0(slow_clk, pb_in, Q0);
    my_dff d1(slow_clk, Q0,     Q1);
    my_dff d2(slow_clk, Q1,     Q2);

    assign Q2_bar = ~Q2;
    assign pb_out = Q1 & Q2_bar;
endmodule


module clock_div(input Clk_100M, output reg slow_clk);
    reg [3:0] counter=0;  // 4-bit only

    always @(posedge Clk_100M) begin
        counter<=(counter>=9)?0:counter+1;
        slow_clk<=(counter<5)?1'b0:1'b1;
    end
endmodule


module my_dff(input DFF_CLOCK, D, output reg Q);
    always @(posedge DFF_CLOCK) begin
        Q<=D;
    end
endmodule
