module jk_ff(
    input j,
    input k,
    input clk,
    output reg q,
    output q_b
);

initial
    q = 1'b0;

assign q_b = ~q;

always @(posedge clk)
begin
    if (j == 1'b0 && k == 1'b0)
        q <= q;          // Hold
    else if (j == 1'b0 && k == 1'b1)
        q <= 1'b0;       // Reset
    else if (j == 1'b1 && k == 1'b0)
        q <= 1'b1;       // Set
    else
        q <= ~q;         // Toggle
end

endmodule