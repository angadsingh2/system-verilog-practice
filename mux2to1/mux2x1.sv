module mux2x1(
    input logic a,
    input logic b,
    input logic sel,
    output logic y
);
always_comb begin 
    if (sel) begin 
        y=b;
    end
    else 
    y=a;
end
endmodule