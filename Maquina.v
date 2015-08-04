`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:01:25 08/03/2015 
// Design Name: 
// Module Name:    Maquina 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module maquinaestados
(
	input wire clk,rst, //	Clock y reset
	input wire interruptor,temp,corriente_25,humo,// Banderas de entrada
	output reg LEDalerta,LEDprevencion,LEDnormal,alarma_alerta,alarma_prevencion// Salidas, definidas como reg
);

//*********************************************************

localparam [2:0] // Codificacion de los estados o etiquetas ??? numeros de corchetes
	inicio = 3'b000,
	temp_normal = 3'b001,
	alerta_temp = 3'b010,
	corri_normal = 3'b011,
	alerta_corri = 3'b100,
	humo_normal = 3'b101,
	preven_humo = 3'b110;

reg [2:0] estado, estado_sig; // Reg, estado actual y siguiente ??? numeros de corchetes




//*********************************************************

//Parte Secuencial

always@(posedge clk, posedge rst)
begin
	if(rst)
		estado <= inicio;
	else
		estado <= estado_sig;
end


//*********************************************************

//Parte Combinacional
always@*
begin
	estado_sig = estado;
	LEDalerta = 0;
	LEDprevencion = 0;
	LEDnormal = 0;
	alarma_alerta = 0;
	alarma_prevencion = 0;
	case(estado)
	
		inicio:
			if(interruptor)
				estado_sig = temp_normal; 		
			
		temp_normal:
			if(temp)
				estado_sig = alerta_temp;
			else
				begin
					estado_sig = corri_normal; //REVISAR FORMATO
					LEDnormal = 1'b1;				//PARECE QUE CUANDO SE ACTIVA UNA 	
				end									//SEÑAL DE SALIDA SE PONE BEGIN Y END //es cuando se ponen mas de 2 instrucciones
				
		alerta_temp:
			begin
				LEDalerta = 1'b1;
				alarma_alerta = 1'b1;
			if(!temp) //NO SE SI ESTE ES EL FORMATO CORRECTO//creo que es asi!
				begin
					estado_sig = corri_normal;
					LEDnormal = 1'b1;  //NO SE QUE SIGNIFICA EXACTAMENTE EL 1'B1 Y EN QUE SE DIFERENCIA DE SOLO EL 1// es 1 bit de tipo binario con el valor de 1 creo que es el formato que se usa aqui
				end
			end
			
		corri_normal:
			if(corriente_25)
				estado_sig = alerta_corri;
			else
				begin
					estado_sig = humo_normal;
					LEDnormal = 1'b1;
				end
		
		alerta_corri:
			begin
				LEDalerta = 1'b1;
				alarma_alerta = 1'b1;
			if(!corriente_25)
				begin
					estado_sig = humo_normal;
					LEDnormal = 1'b1;
				end
			end
			
		humo_normal:
			if (humo)
				estado_sig = preven_humo;
			else
				begin
					estado_sig = inicio;
					LEDnormal = 1'b1;
				end
					
		preven_humo:
			begin
				LEDprevencion = 1'b1;
				alarma_prevencion =1'b1;
			if(!humo)
				begin
					estado_sig = inicio;
					LEDnormal = 1'b1;
				end
			end
	endcase
end
endmodule
