`timescale 1ns/1ps

module jk_ff_tb;

reg j;
reg k;
reg clk;

wire q;
wire q_b;

// DUT Instantiation
jk_ff uut (
    .j(j),
    .k(k),
    .clk(clk),
    .q(q),
    .q_b(q_b)
);

// Clock Generation
initial begin
    clk = 0;
    forever #10 clk = ~clk;
end

// Stimulus
initial begin

    // Hold
    j = 0;
    k = 0;
    #20;

    // Reset
    j = 0;
    k = 1;
    #20;

    // Set
    j = 1;
    k = 0;
    #20;

    // Toggle
    j = 1;
    k = 1;
    #60;

    $finish;

end

// Waveform Generation
initial begin

    $dumpfile("jk_ff.vcd");
    $dumpvars(0, jk_ff_tb);

    $monitor("Time=%0t clk=%b j=%b k=%b q=%b q_b=%b",
             $time, clk, j, k, q, q_b);

end

endmodule