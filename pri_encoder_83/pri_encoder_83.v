module pri_encoder_83(i,y,v);
input [7:0]i;
output reg [2:0]y;
output reg v;

always@(i)
	begin
	v=1'b0;
	casex(i)
	8'b00000001:y = 3'b000;
	8'b0000001X:y = 3'b001;				 
	8'b000001XX:y = 3'b010;
	8'b00001XXX:y = 3'b011;
	8'b0001XXXX:y = 3'b100;
	8'b001XXXXX:y = 3'b101;
	8'b01XXXXXX:y = 3'b110;
	8'b1XXXXXXX:y = 3'b111;
	default: begin
			 y = 3'bXXX;
			 v = 1'b1;
			 end
	endcase
	end
endmodule
		
		
	
