module tb;
logic s;
logic r;
logic clk;
logic q;

srflipflop dut(
    .s(s),
    .r(r),
    .clk(clk),
    .q(q)
);
initial begin 
   clk = 0;
    forever #5 clk = ~clk;
end
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb);
    $monitor("t=%0t s=%b r=%b  q=%b",
              $time, s, r, q);

    s=0;
    r=0;
    #10;

    s=0;
    r=1;
    #10;

    s=1;
    r=0;
    #10;

    s=1;
    r=1;
    #10;
    $finish;
    
end
endmodule
            