module FIR_Filter #(parameter N = 4, DATA_WIDTH = 8) (
input clk,
input reset,
input signed [DATA_WIDTH-1:0] x_in,
output reg signed [DATA_WIDTH-1:0] y_out
);

reg signed [DATA_WIDTH-1:0] coeffs [0:N-1]; // Coefficients
reg signed [DATA_WIDTH-1:0] shift_reg [0:N-1]; // Shift registers
integer i;

initial begin
// Example coefficients (simple moving average)
coeffs[0] = 8'h01;
coeffs[1] = 8'h02;
coeffs[2] = 8'h02;
coeffs[3] = 8'h01;
end

always @(posedge clk or posedge reset) begin
if (reset) begin
for (i = 0; i < N; i = i + 1) begin
shift_reg[i] <= 0;
end

y_out <= 0;
end else begin
// Shift operation
for (i = N-1; i > 0; i = i - 1) begin
shift_reg[i] <= shift_reg[i-1];
end
shift_reg[0] <= x_in;

// FIR Computation
y_out <= 0;
for (i = 0; i < N; i = i + 1) begin
y_out <= y_out + (shift_reg[i] * coeffs[i]);
end
end
end
endmodule
