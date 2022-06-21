// fsm for 16 bits per value
// need to send first start sequence for example: 
// 'l' 'a' 'u' 'n' 'c' 'h'
// then goes 1024 * 2 bytes of mca registers
`define WAIT_CYCLES 1


module transmit_fsm(
    input               clk,
    input               tx_ready,
    input        [15:0] ram_in,
    output logic        start_tx,
    output logic [9:0]  ram_addr,
    output logic [7:0]  tx_data
);
//-------------     transmit state machine  ---------------------------
logic [31:0] counter;
logic is_high_byte;
logic [7:0] start_sequence[0:5];
logic [1:0]wait_counter;

initial begin
    counter = 0;
    is_high_byte = 0;
    start_sequence[0] = "l";
    start_sequence[1] = "a";
    start_sequence[2] = "u";
    start_sequence[3] = "n";
    start_sequence[4] = "c";
    start_sequence[5] = "h";
end

always_ff @(posedge clk) begin
    if(tx_ready) begin
        if(counter == (6 + 1024)) begin
            counter <= 0;
            ram_addr <= 0;
        end
        else begin
            // wait for 3 clk
            if(wait_counter != `WAIT_CYCLES) wait_counter = wait_counter + 1;
            else begin
                wait_counter = 0;
                if(counter < 6) begin
                    tx_data <= start_sequence[counter];
                    counter = counter + 1;
                end
                else begin
                    if(is_high_byte) begin
                        is_high_byte <= 0;
                        tx_data <= ram_in[7:0];
                        counter <= counter + 1;
                        ram_addr <= counter;
                    end
                    else begin
                        is_high_byte <= 1;
                        tx_data <= ram_in[15:8];
                    end
                end
                start_tx <= 1;
            end
        end   
    end
    else start_tx <= 0;
end

endmodule
