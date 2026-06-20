module tb;

    logic a;
    logic b;
    logic y;

    logic_ex dut(
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb);
        $monitor("Time=%0t a=%b b=%b y=%b", $time, a, b, y);

        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;

        $finish;
    end

endmodule