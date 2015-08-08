`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:21:04 08/07/2015
// Design Name:   Timemultiplexhexa
// Module Name:   D:/TEC/lab de integrados/teclado/prueba.v
// Project Name:  teclado
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Timemultiplexhexa
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module prueba;

	// Inputs
	reg clk;
	reg reset;
	reg [3:0] hexa3;
	reg [3:0] hexa2;
	reg [3:0] hexa1;
	reg [3:0] hexa0;
	reg [3:0] puntos4;

	// Outputs
	wire [3:0] cualdisplay;
	wire [7:0] sieteseg;

	// Instantiate the Unit Under Test (UUT)
	Timemultiplexhexa uut (
		.clk(clk), 
		.reset(reset), 
		.hexa3(hexa3), 
		.hexa2(hexa2), 
		.hexa1(hexa1), 
		.hexa0(hexa0), 
		.puntos4(puntos4), 
		.cualdisplay(cualdisplay), 
		.sieteseg(sieteseg)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		hexa3 = 0;
		hexa2 = 0;
		hexa1 = 0;
		hexa0 = 0;
		puntos4 = 0;
		#100;
	end

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		//this process block sets up the free running clock
	initial 
	begin
		clk = 0;
		forever #10 clk = ~clk;
	end
	initial 
	begin// this process block specifies the stimulus.
	reset = 0;
	#10
	reset = 1;
	#10
	reset = 0;
	hexa0 = 4'h0;
	hexa1 = 4'h1;
	hexa2 = 4'h2;
	hexa3 = 4'h3;
	puntos4 = 4'hf;
	#1310000
	//reset = 1;
	hexa0 = 4'h4;
	hexa1 = 4'h5;
	hexa2 = 4'h6;
	hexa3 = 4'h7;
	puntos4 = 4'hf;
	#1310000
	//reset = 0;
	hexa0 = 4'h8;
	hexa1 = 4'h9;
	hexa2 = 4'ha;
	hexa3 = 4'hb;
	puntos4 = 4'hf;
	#1310000
	//reset = 0;
	hexa0 = 4'hc;
	hexa1 = 4'hd;
	hexa2 = 4'he;
	hexa3 = 4'h0;
	puntos4 = 4'hf;
	#1310000
	//reset = 0;
	hexa0 = 4'h8;
	hexa1 = 4'h9;
	hexa2 = 4'ha;
	hexa3 = 4'hb;
	puntos4 = 4'hf;
	#1310000
	//reset = 0;
	hexa0 = 4'h4;
	hexa1 = 4'h5;
	hexa2 = 4'h6;
	hexa3 = 4'h7;
	puntos4 = 4'hf;
	#1000 $stop;
	end  
endmodule

