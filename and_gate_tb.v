module and_gate_tb;
reg switch1 , switch2;
wire led;

and_gate dut (.a(switch1), .b(switch2), .y(led));

initial begin
    $dumpfile("and_gate.vcd");
    $dumpvars(0, and_gate_tb);

    switch1 = 0; switch2 = 0; #10;
    switch1 = 0; switch2 = 1; #10;
    switch1 = 1; switch2 = 0; #10;
    switch1 = 1; switch2 = 1; #10;

    $display("Final. Done final y = %b", led);
    $finish;
end
endmodule