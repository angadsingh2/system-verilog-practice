module up_down_counter_4(
    input logic clk,
    input logic reset,
    input logic up,
    output logic [3:0]count
);
always_ff@(posedge clk)begin
    if (reset)
        count<=4'b0000;
    else if (up)
        count<=count+1;
    else 
    count<=count-1;
end
endmodule