module mod10counter(
    input logic clk,
    input logic reset,
    output logic[3:0]count
);
always_ff @(posedge clk ) begin 
    if (reset)
        count<=4'b0000;
    else if (count==9)
        count<=4'b0000;
    else
        count<=count+1;
end
endmodule