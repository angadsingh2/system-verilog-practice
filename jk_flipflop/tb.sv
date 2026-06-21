module tb;
logic j;
logic k;
logic clk;
logic q;

jkflipflop dut(
    .j(j),
    .k(k),
    .clk(clk),
    .q(q)
);
initial begin 
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb);
    $monitor("t=%0t j=%b k=%b q=%b",
    $time,j,k,q);

    j=0;
    k=0;
    #10;

    j=0;
    k=1;
    #10;

    j=1;
    k=0;
    #10;

    j=1;
    k=1;
    #10;

    j=1;
    k=1;
    #10;

    $finish;
end
endmodule