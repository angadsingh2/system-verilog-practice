module tflipflop(
    input logic t,
    input logic clk,
    output logic q
);
always_ff @(posedge clk) begin
    if (t==0)
        q<=q;
    else 
    q<=~q;
end
endmodule

