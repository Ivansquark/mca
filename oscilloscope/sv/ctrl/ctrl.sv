`include "../fifo/fifo.sv"
`include "../uart/uart.sv"

module ctrl(
    input [7:0] in,
    input clk,
    input clk_uart,
    output tx
);

logic push = 0;
logic pop = 0;
logic is_empty;
logic is_full;
logic [7:0] out;

logic start_tx = 1;
logic tx_ready = 1;


fifo fifo1(.clk(clk), .in(in), .push(push), .pop(pop),
        .is_empty(is_empty), .is_full(is_full), .out(out));

//uart clk must be faster then fifo clk
uart uart1(.clk(clk_uart), .tx_data(out), .start_tx(start_tx),
        .tx(tx));

always_ff @(posedge clk) begin
    if(is_full) begin 
        start_tx    <= 0;
        pop         <= 1;
        push        <= 0;
    end
    else if(is_empty) begin
        start_tx    <= 0;
        pop         <= 0;
        push        <= 1;
    end
    else begin
        pop     <= 1;
        push    <= 1;
        if(!tx_ready)   start_tx    <= 0;
        else            start_tx    <= 1;
    end    

end

endmodule
