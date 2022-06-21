`include "../shift_reg/shift_reg.sv"

`define BAUD 2; // here need to tune baud frequency

module uart(
    input           clk,
    input   [7:0]   tx_data,
    input           start_tx,
    output          tx_ready,
    output          tx
);

// ---------    clock divider   ------------------ 
logic           brr_clk;
logic           brr_clk_p;
logic           brr_clk_n;
logic   [31:0]  baud_counter_clk;
logic    [31:0] baud;

initial begin
    brr_clk     = 0;
    brr_clk_p   = 0;
    brr_clk_n   = 0;
    baud_counter_clk = 0;
    baud = `BAUD;
end

//clk divider on posedge
always_ff @(posedge clk) begin
    if(baud == 32'h00000000) begin 
        brr_clk_p <= ~brr_clk_p;
    end
    else begin
        if(baud_counter_clk == baud) begin
            brr_clk_p <= ~brr_clk_p;
            baud_counter_clk <= 0;
        end
        else begin
            baud_counter_clk <= baud_counter_clk + 1;
        end
        if(baud % 2 != 0) begin
            if(baud_counter_clk == baud/2)
                brr_clk_p <= ~brr_clk_p;
        end
    end
end
always_ff @(negedge clk) begin
    if(baud == 32'h00000000) begin
        brr_clk_n <= ~brr_clk_n;
    end
    else begin
        if(baud % 2 == 0) begin
            if(baud_counter_clk == baud/2)
                brr_clk_n <= ~brr_clk_p;
        end
    end
end

always @* begin
    brr_clk <= ~(brr_clk_p ^ brr_clk_n);
end

//----------    transmit by shift reg   -------------------
logic [3:0]tx_counter; // count till 8
logic [8:0]tx_send;
logic load = 0;
logic is_need_start_tx;
logic tx_is_started;
// shift register with new clk
shift_reg shift_reg_tx(.clk(brr_clk), 
    .par_in(tx_data[8:0]),
    .ser_in(1'b1),
    .load(load),
    .ser_out(tx));

initial begin
    tx_counter = 0;
    is_need_start_tx = 0;
    tx_is_started = 0;
    tx_send = 9'b111111111;
end

assign tx_ready = !tx_is_started;

always @(posedge brr_clk) begin
    if(is_need_start_tx) begin
        tx_send <= {tx_data, 1'b0};
        load <= 1;
        tx_is_started <= 1; //start sending 
    end
    //start transmit
    if(tx_is_started) begin
        if(tx_counter == 0) begin
            tx_counter <= tx_counter + 1;
            load <= 0;
        end
        else if(tx_counter == 1) begin
                load <= 0;
                tx_counter <= tx_counter + 1;
        end
        else if(tx_counter == 9) begin
            tx_counter <= 0;
            tx_is_started <= 0; //stop sending   is_tx_started = 0;
        end
        else begin
            tx_counter <= tx_counter + 1;
            load <= 0;
        end
    end
    else begin //tx not started
        is_need_start_tx <= start_tx;
    end
end

endmodule
