// on posedge comparator start adc clock, clear out reg
// on negedge comparator stop adc clock set out reg with adc value
// on negedge comparator set clear_integrator to zero on SOME!!! clk then set to high_Z

`define CLEAR_COUNT 2

module adc_clock(
    input clk,
    input comparator,
    input [9:0] adc_in,
    output adc_clk,
    output logic clear_integrator,
    output logic [9:0] out_reg
);

initial clear_integrator = 1'bz;
assign adc_clk = (comparator) ? clk : 0;

logic clear_flag = 0;
logic [15:0] clear_counter = 0;
//always @(posedge comparator) out_reg = 0;
always_ff @(negedge comparator) begin
    if(clear_flag == 0) begin
        clear_flag <= 1;
        out_reg <= adc_in;
    end
end

always_ff @(posedge clk) begin
    if(clear_counter == `CLEAR_COUNT) begin
        clear_flag <= 0;
        clear_integrator <= 1'bz;
    end else begin
        if(clear_flag == 1) begin 
            //wait while comparator will be 0 to full recharge (if it too quick)
            if(comparator) clear_counter <= 0;
            else begin
                clear_counter <= clear_counter + 1;
                clear_integrator <= 0;
            end
        end
    end
end

endmodule
