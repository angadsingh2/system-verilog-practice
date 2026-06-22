module ring_counter_4bit(
    input logic reset,
    input logic clk,
    output logic [3:0]q
);
always_ff @(posedge clk)begin
    if (reset)
        q<=4'b0001;
    else 
        q<={q[2:0],q[3]};

    
end
endmodule