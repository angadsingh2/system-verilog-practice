
module tb;
logic t;
logic clk;
logic q;

tflipflop dut(
    .t(t),
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
    $monitor ("time=%0t t=%b q=%b",
    $time, t,q);

    t=0;
    #12;

    t=1;
    #12;

    t=0;
    #12;

    t=1;
    #12;
$finish;

end
endmodule