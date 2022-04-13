module mux2to1(I0,I1,S,Y);
input I0,I1;
input S;
output Y;
reg Y;
always@(S or I0 or I1)
begin
	if(S==1'b0)
		Y=I0;
	else
		Y=I1;
end
endmodule



