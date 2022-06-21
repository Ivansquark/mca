`timescale 1ns/100ps

module test_adc_clock();

logic clk = 0;
logic comparator = 0;
logic [9:0]adc_in = 0;


adc_clock adc_ctrl(.clk(clk), .comparator(comparator), .adc_in(adc_in));

initial begin
    $dumpvars;
    $display("test started");
    #30 $finish();
end

initial begin
    adc_in = 1;
    comparator = 0;
    #1  comparator = 1;
    #10 comparator = 0;
    #3  comparator = 1; adc_in = 2;
    #10 comparator = 0;
end

always begin
    #1 clk = ~clk;
end

endmodule
