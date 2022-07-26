// on posedge read previous value and remember address 
// on negedge write on remember address
// read value on another port and read address
module ram #(
    parameter N = 16
)(
    input                  clk, clk_read, we,
    input            [9:0] adc_addr,
    input            [9:0] read_addr,
    output logic [(N-1):0] r_data
);

logic [((N/8)-1):0][7:0] mem[0 : 1023];
logic [9:0]addr_temp;
logic [(N-1):0] ram_val;
integer i;
initial begin
    for(i = 0; i < 1024; i = i + 1) begin
        mem[i] = 0;
    end;
end

always_ff @(posedge clk) begin
    addr_temp <= adc_addr;  
    ram_val   <= mem[adc_addr];
end

always_ff @(negedge clk) begin
    if(we) begin
        mem[addr_temp] <= ram_val + 1; 
    end
end

always @(posedge clk_read) r_data <= mem[read_addr];
 
endmodule
