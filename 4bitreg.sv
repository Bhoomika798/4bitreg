module register_4bit (
    input  logic [3:0] d,
    input  logic clk,
    input  logic reset,
    input  logic en,
    output logic [3:0] q
);

always_ff @(posedge clk) begin

    if (reset == 1'b1)
        q <= 4'b0000;

    else if (reset == 1'b0 && en == 1'b1)
        q <= d;

    else if (reset == 1'b0 && en == 1'b0)
        q <= q;

    else
        q <= 4'b0000;

end

endmodule