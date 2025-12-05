`timescale 1ns / 1ps

module tb;

    reg pb_in_t, clk_t;
    wire pb_out_t;

    // Device Under Test
    debouncer uut (
        .pb_in(pb_in_t),
        .clk(clk_t),
        .pb_out(pb_out_t)
    );

    // period = 10ns
    initial begin
        clk_t=0;
        forever #5 clk_t = ~clk_t;   // toggle every 5ns
    end

    initial begin
        pb_in_t=0;
        #100;

        pb_in_t=1; #20;
        pb_in_t=0; #15;
        pb_in_t=1; #10;
        pb_in_t=0; #25;
        pb_in_t=1; #30;

        #500000;   // .5ms

        pb_in_t=0; #20;
        pb_in_t=1; #10;
        pb_in_t=0; #15;
        pb_in_t=1; #10;
        pb_in_t=0;

        #500000;

        $stop;
    end

endmodule
