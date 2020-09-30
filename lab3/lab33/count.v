module count(En, Clock, Reset, Out);
	input Clock, Reset, En;
	output reg [Width-1:0] Out;
	
	parameter Width = 4;
	always@(posedge Clock or negedge Reset)
	begin
	if (!Reset)
			Out <= 4'b0000;
		else if (En)
			Out <= Out + 4'b0001;
	end
endmodule
