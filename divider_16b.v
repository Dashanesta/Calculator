module divider_16b(
    input clk,
    input rst,
    input start,
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] q,
    output reg [15:0] r
);

    reg [15:0] divisor;
    reg [15:0] quotient;
    reg [16:0] rem;
    reg [4:0] count;
    reg busy;

    wire [15:0] shifted_rem;
    wire [15:0] sub_out;
    wire [15:0] restore_out;
    wire can_sub;
    wire [15:0] next_q;
    wire [15:0] next_r;

    assign shifted_rem = {rem[14:0], quotient[15]};

    subtractor_16b sub_step(.a(shifted_rem), .b(divisor), .diff(sub_out));
    adder_16b add_restore(.a(sub_out), .b(divisor), .sum(restore_out));

    assign can_sub = (shifted_rem >= divisor);

    assign next_q = {quotient[14:0], can_sub};
    assign next_r = can_sub ? sub_out : restore_out;

    always @(posedge clk) begin
        if (rst) begin
            q <= 16'b0;
            r <= 16'b0;
            divisor <= 16'b0;
            quotient <= 16'b0;
            rem <= 16'b0;
            count <= 5'b0;
            busy <= 1'b0;
        end else if (start && !busy) begin
            if(b == 16'b0) begin
                q <= 16'hFFFF;
                r <= a;
                busy <= 1'b0;
            end else begin
                divisor <= b;
                quotient <= a;
                rem <= 16'b0;
                count <= 5'd16;
                busy <= 1'b1;
            end
        end else if (busy) begin
            quotient <= next_q;
            rem <= next_r;
            count <= count - 5'd1;

            if(count == 5'd1) begin
                q <= next_q;
                r <= next_r;
                busy <= 1'b0;
            end
        end
    end

endmodule