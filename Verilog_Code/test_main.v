
module tb_main;
reg clock,Reset;
reg [7:0]DataInA;

main m1(clock,Reset,DataInA);

initial begin
clock=1'b0;
Reset=1'b1;
end

always begin
#1 clock=~clock;
end

initial begin
#1
@(negedge clock)
begin
Reset=1'b0;
DataInA=8'b0;
end

@(negedge clock)
begin
DataInA=8'b1;
end

@(negedge clock)
begin
DataInA=8'b1;
end

@(negedge clock)
begin
DataInA=8'b0;
end

@(negedge clock)
begin
DataInA=8'b1;
end

@(negedge clock)
begin
DataInA=8'b10;
end

@(negedge clock)
begin
DataInA=8'b11;
end

@(negedge clock)
begin
DataInA=8'b11111111;
end

@(negedge clock)
begin
DataInA=8'b11111101;
end

end

endmodule

