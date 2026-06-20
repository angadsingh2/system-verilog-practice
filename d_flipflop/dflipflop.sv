module dflipflop(
    input logic d,
    input logic clk,
    input logic reset,
    output logic q
);
always @(posedge clk or posedge reset)
begin 
    if (reset) begin
        q<=1'b0;
    end
    else
        q<=d;
end
endmodule    
