module tb;
logic clk;
logic reset;
logic [3:0] count;

countersync4bit dut(
    .clk(clk),
    .reset(reset),
    .count(count)
);
initial begin 
    clk=0;
    forever #5 clk=~clk;
end
initial begin 
    $dumpfile("waves.vcd");
    $dumpvars(0,tb);
    $monitor("time=%0t reset=%b count=%b",
    $time,reset,count);

    reset=1;
    #10;
    reset=0;
    #200;
    $finish;
end
endmodule
