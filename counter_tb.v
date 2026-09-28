`timescale 1ns/1ps

module counter_tb;
reg clk = 0;
reg reset;
wire[3:0] count;

always #5 clk = ~clk;   
    counter dut (.clk(clk), .reset(reset), .count(count));
    
initial begin
    $dumpfile("counter.vcd");
    $dumpvars(0, counter_tb);

    reset = 1; #20;
    reset = 0; #200;
    $finish;
end
endmodule

