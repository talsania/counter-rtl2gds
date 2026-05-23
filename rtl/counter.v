`timescale 1ns / 1ps

module counter (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        en,
    input  wire        up_down,
    input  wire        load,
    input  wire [15:0] d,
    output reg  [15:0] q,
    output wire        tc,
    output wire        borrow
);

    always @(posedge clk) begin
        if (!rst_n) begin
            q <= 16'h0000;
        end else if (load) begin
            q <= d;
        end else if (en) begin
            if (up_down)
                q <= q + 16'd1;
            else
                q <= q - 16'd1;
        end
    end

    assign tc     = (q == 16'hFFFF) & en & up_down;
    assign borrow = (q == 16'h0000) & en & ~up_down;

endmodule
