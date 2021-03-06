module dflipflopt_b;
reg clock;
reg [7:0]DOut1;
wire [7:0]DOut2;

dff uut (clock,DOut1,DOut2);
initial
begin
// Initialize Inputs
DOut1 = 0;
clock = 0;
end
always #3 clock=~clock;
always #5 DOut1=~DOut1;


endmodule
