module FIR_Filter_tb;
reg clk, reset;
reg signed [7:0] x_in;
wire signed [7:0] y_out;

// Instantiate FIR Filter
FIR_Filter uut (
.clk(clk),
.reset(reset),
.x_in(x_in),
.y_out(y_out)
);

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
reset = 1; #10; reset = 0;

// Test Input Values
x_in = 8'h01; #10;
x_in = 8'h02; #10;
x_in = 8'h03; #10;
x_in = 8'h04; #10;
x_in = 8'h05; #10;

#50;
$finish;
end
endmodule
