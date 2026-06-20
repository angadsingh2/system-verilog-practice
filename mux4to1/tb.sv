module tb;
logic [3:0] d;
logic [1:0] sel;
logic y;
mux4x1 dut(
    .d(d),
    .sel(sel),
    .y(y)
);
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb);
    $monitor("t=%0t d=%b sel=%b y=%b",
          $time, d, sel, y);
    d=4'b1010;
    sel=2'b00;#10;
    sel=2'b01; #10;
    sel= 2'b10; #10;
    sel=2'b11; #10;
    $finish;
end


endmodule