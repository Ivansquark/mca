module ram(
    input       clk, clk_read,
    input       we,
    input [9:0] adc_addr,
    input [9:0] read_addr,
    output logic [15:0] r_data
);

logic [1:0][7:0] mem[0 : 1023];

integer i;
initial begin
    for(i = 0; i < 1023; i = i + 1)
        mem[i] = 0;
end

always_ff @(posedge clk) begin
    if(we) begin
        mem[adc_addr] <= mem[adc_addr] + 1;
    end
end

always_ff @(posedge clk_read) begin
    r_data <= mem[read_addr];
end
endmodule
