`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:50:55 08/10/2015
// Design Name:   Proyecto1
// Module Name:   D:/TEC/Lab Digitales/teclado/simproyecto1.v
// Project Name:  teclado
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Proyecto1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module simproyecto1;

	// Inputs
	reg clk;
	reg rst;
	reg interruptor;
	reg temp;
	reg humo;
	reg [3:0] cor;

	// Outputs
	wire LEDalerta;
	wire LEDprevencion;
	wire LEDnormal;
	wire alarma_alerta;
	wire alarma_prevencion;
	wire [3:0] cualdisplay;
	wire [7:0] display;

	// Instantiate the Unit Under Test (UUT)
	Proyecto1 uut (
		.clk(clk), 
		.rst(rst), 
		.interruptor(interruptor), 
		.temp(temp), 
		.humo(humo), 
		.cor(cor), 
		.LEDalerta(LEDalerta), 
		.LEDprevencion(LEDprevencion), 
		.LEDnormal(LEDnormal), 
		.alarma_alerta(alarma_alerta), 
		.alarma_prevencion(alarma_prevencion), 
		.cualdisplay(cualdisplay), 
		.display(display)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		interruptor = 0;
		temp = 0;
		humo = 0;
		cor = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	end
	initial begin
		clk = 0;
		forever #1 clk = ~clk;
	end
	
	initial begin
	rst = 1;
	#10
	rst = 0;
	#10
	interruptor = 1;
	#1000
	interruptor = 0;
	#1000
	interruptor = 1;
	#131000
	humo = 1;
	#524000
	humo = 0;
	temp = 1;
	#524000
	temp = 0;
	cor = 4'b1111;
	#524000
	cor = 4'b0001;
	#262000 $stop;
	end  
	
	//always@(posedge clk)
	//begin
	 //$display($time, "\t cualdisplay = %b",cualdisplay);
	 //$display($time, "\t display = %h",display);
   //end        
endmodule

