`timescale 1ns/100ps

module test_uart();

logic clk;
logic [7:0]tx_data;
logic start_tx;

uart u(.clk(clk), .tx_data(tx_data), .start_tx(start_tx));

initial begin
    $dumpvars;
    $display("test started");
    #50 $finish();
end

initial begin
    clk = 0; tx_data = 8'h55;
    #4 start_tx = 1;
end

always begin
    #1 clk = ~clk;
end

endmodule
