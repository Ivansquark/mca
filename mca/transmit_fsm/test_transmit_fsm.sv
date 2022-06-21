`timescale 1ns/100ps

module test_transmit_fsm();

logic clk;
logic tx_ready;
logic [15:0] ram_in;

transmit_fsm fsm(.clk(clk), .tx_ready(tx_ready), .ram_in(ram_in));

initial begin
    $dumpvars;
    $display("test started");
    #10 $finish();
end

initial begin
    clk = 0;
    ram_in = 0;
    tx_ready = 0;
    #1 ram_in = 16'h0001; tx_ready = 1;
end

always begin
    #1 clk = ~clk;
end

endmodule
