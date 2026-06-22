module tb;
logic reset;
logic clk;
logic [3:0]count;

mod10counter dut(
    .reset(reset),
    .clk(clk),
    .count(count)
);
initial begin
   clk=0;
   forever #5 clk=~clk;

end
initial begin 
    $dumpfile("waves.vcd");
    $dumpvars(0,tb);
    $monitor("time=%0t reset=%b  count=%b",
    $time,reset,count);

    reset=1;
    #10;
    reset=0;
    #150;

    $finish;
end
endmodule