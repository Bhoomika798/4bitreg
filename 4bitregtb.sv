module tb_register_4bit;

    logic [3:0] d;
    logic clk;
    logic reset;
    logic en;
    logic [3:0] q;

    register_4bit uut (
        .d(d),
        .clk(clk),
        .reset(reset),
        .en(en),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin

        clk   = 0;
        d     = 4'b0000;
        reset = 0;
        en    = 0;

        #10;
        reset = 1;
        en    = 0;
        d     = 4'b1010;

        #10;
        reset = 0;
        en    = 1;
        d     = 4'b1010;

        #10;
        reset = 0;
        en    = 0;
        d     = 4'b0101;

        #10;
        d = 4'b1111;

        #10;
        en = 1;
        #10;
        reset = 1;
        en    = 1;
        d     = 4'b1100;
        #10;
        reset = 0;
        en    = 0;
        d     = 4'b0011;

        #10;

        $finish;

    end

endmodule