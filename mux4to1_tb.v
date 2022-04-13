module mux4to1_tb();
reg I0,I1,I2,I3;
reg S0,S1;
wire Y;
integer i;
 mux4to1 dut(I0,I1,I2,I3,S0,S1,Y);
task intialize();
	begin
	S0=0;
	S1=0;
	I0=0;
	I1=0;
	I2=0;
	I3=0;
	#100;
	end
endtask
	
	task selectlines(input [1:0] j);
		begin
			S0=j[0];
			S1=j[1];
			#200;
		end
	endtask
	
	task inputlines(input [3:0] k);
		begin
			I0=k[0];
			I1=k[1];
			I2=k[2];
			I3=k[3];
			#100;
		end
	endtask
	
initial begin
	intialize();
	for(i=0;i<4;i=i+1)
		begin	
			selectlines(i);
			inputlines(4'b0000);
			inputlines(4'b1111);
		end
		
end		
endmodule

