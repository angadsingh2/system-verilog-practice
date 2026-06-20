module tb;

logic a;
logic b;
logic y;
logic sel;

mux2x1 dut(
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin
    $monitor("t=%0t sel=%b a=%b b=%b y=%b",
              $time, sel, a, b, y);
    $dumpfile("wave.vcd");
    $dumpvars(0, tb);

    a=0; b=1; sel=0; #10;
    a=0; b=1; sel=1; #10;
    a=1; b=0; sel=0; #10;
    a=1; b=0; sel=1; #10;

    $finish;
end

endmodule