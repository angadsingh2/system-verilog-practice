`timescale 1ns/1ps

module tb;

logic d;
logic reset;
logic clk;
logic q;

dflipflop dut(
    .d(d),
    .reset(reset),
    .clk(clk),
    .q(q)
);
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end
initial begin
    $monitor("t=%0t clk=%b reset=%b d=%b q=%b",
              $time, clk, reset, d, q);
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb);
end

// Stimulus
initial begin

    reset = 1;
    d = 0;

    #12;
    reset = 0;     

    d = 1;          
    #10;

    d = 0;        
    #10;

    d = 1;          
    #10;
    reset = 1;     
    #10;

    reset = 0;
    d = 1;
    #10;

    $finish;
end

endmodule