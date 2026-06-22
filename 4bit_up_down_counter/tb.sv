module tb;
logic clk;
logic reset;
logic up;
logic [3:0]count;

up_down_counter_4 dut(
    .clk(clk),
    .reset(reset),
    .up(up),
    .count(count)
);
initial begin 
    clk=0;
    forever #5 clk=~clk;
end
initial begin 
    $dumpfile("waves.vcd");
    $dumpvars(0,tb);
    $monitor("time=%0t reset=%b up_down=%b count=%b",
    $time,reset,up,count);

    reset=1;
    #10;
    reset=0;
    up=1;
    #200;
    reset=1;
    #10;
    reset=0;
    up=0;
    #200;
    $finish;
end
endmodule

