module pri_encoder_83_tb();
reg [7:0]i;
wire [2:0]y;
wire v;
integer k,channel_1;

pri_encoder_83 dut(i,y,v);

task initialize;
	begin
	$monitor("| I        | Y   | V |");
	channel_1 = $fopen("f1.txt");
	$fmonitor(channel_1,$time,"en|i   |y        |");
	i = 0;
	end
endtask

task inputs(input[7:0]in);
	begin
	i = in;
	end
endtask

initial
	begin
	initialize;
	for(k=0;k<256;k=k+1)
		begin
		inputs(k);
		#10;
		end
	end
	
initial
	begin
	#5;
	$monitor("| %8b | %3b | %b |",i,y,v);	
	$fmonitor(channel_1,$time,"|%8b |%3b  | %b|",i,y,v);	
	//$fclose(channel_1);
	end

	
endmodule
		
		
	
	