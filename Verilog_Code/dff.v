

module dff(input clock,input [7:0]DOut1,output reg [7:0]DOut2);



always@(posedge clock)
begin
DOut2 <= DOut1;
end


endmodule