`timescale 1ns/100ps

module test_ctrl();

logic       clk;
logic       clk_uart;
logic [7:0] in;

ctrl ctrl(.in(in), .clk(clk), .clk_uart(clk_uart));

initial begin
    $dumpvars;
    $display("test started");
    clk = 0;
    clk_uart = 0;
    #1 in = 8'b00000001;
    #2 in = 8'b00000010;
    #2 in = 8'b00000011;
    #2 in = 8'b00000100;
    #2 in = 8'b00000101;
    #2 in = 8'b00000110;
    #2 in = 8'b00000111;

    #160 $finish();
end

always begin
    #10 clk = ~clk;
end

always begin
    #1 clk_uart = ~clk_uart;
end

endmodule
