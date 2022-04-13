module mux4to1(I0,I1,I2,I3,S0,S1,Y);
input I0,I1,I2,I3;
input S0,S1;
output Y;
wire [1:0] W;
wire Y;
mux2to1 mux_1(I0,I1,S0,W[0]);
mux2to1 mux_2(I2,I3,S0,W[1]);
mux2to1 mux_3(W[0],W[1],S1,Y);
endmodule



