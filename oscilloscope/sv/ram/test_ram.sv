`timescale 1ns/100ps

module test_ram();

logic clk;
logic clk_read;
logic we;
logic [9:0] adc_in;
logic [9:0] read_addr;

ram ram(.clk(clk), .clk_read(clk_read), .we(we), .adc_addr(adc_in), .read_addr(read_addr));

initial begin
    $dumpvars;
    $display("test started");
    #16 $finish();
end

initial begin
    clk = 0; clk_read = 0; we = 1; adc_in = 4;
    #10 read_addr = 4; we = 0;
end

always begin
    #2 clk = ~clk;
end
always begin
    #1 clk_read = ~clk_read;
end

endmodule
