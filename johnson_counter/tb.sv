module tb;
logic clk;
logic reset;
logic [3:0] q;

johnson_counter dut(
    .clk(clk),
    .reset(reset),
    .q(q)
);
initial begin 
    clk=0;
    forever #5 clk=~clk;
end
initial begin 
    $dumpfile("waves.vcd");
    $dumpvars(0,tb);
    $monitor("time=%0t reset=%b q=%b",
    $time,reset,q);

    reset=1;
    #10;
    reset=0;
    #200;

    $finish;
end
endmodule