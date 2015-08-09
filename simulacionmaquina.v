`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:18:40 08/08/2015
// Design Name:   maquinaestados
// Module Name:   D:/TEC/lab de integrados/teclado/simulacionmaquina.v
// Project Name:  teclado
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: maquinaestados
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module simulacionmaquina;

	// Inputs
	reg clk;
	reg rst;
	reg interruptor;
	reg temp;
	reg humo;
	reg [4:0] corriente;

	// Outputs
	wire LEDalerta;
	wire LEDprevencion;
	wire LEDnormal;
	wire alarma_alerta;
	wire alarma_prevencion;

	// Instantiate the Unit Under Test (UUT)
	maquinaestados uut (
		.clk(clk), 
		.rst(rst), 
		.interruptor(interruptor), 
		.temp(temp), 
		.humo(humo), 
		.corriente(corriente), 
		.LEDalerta(LEDalerta), 
		.LEDprevencion(LEDprevencion), 
		.LEDnormal(LEDnormal), 
		.alarma_alerta(alarma_alerta), 
		.alarma_prevencion(alarma_prevencion)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		interruptor = 0;
		temp = 0;
		humo = 0;
		corriente = 0;

		// Wait 100 ns for global reset to finish
		#100;
	end
	
	initial begin
		clk = 0;
		forever #10 clk = ~clk;
	end
	initial begin// this process block specifies the stimulus.
	rst = 0;
	#10
	rst = 1;
	#10
	rst = 0;
	#100
	interruptor = 1;
	#100
	interruptor = 0;
	#100
	interruptor = 1;
	#100
	humo = 1;
	#100
	humo = 0;
	#100
	temp = 1;
	#100
	temp = 0;
	#100
	rst = 1;
	#100
	rst = 0;
	#100
	corriente = 5'b10101;
	#100
	corriente = 5'b00101;
	#1000 $stop;
	end  
      
endmodule

