`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:08:48 11/13/2021
// Design Name:   PWM_Gen
// Module Name:   C:/windows/system32/ShiftReg2/PWM_Test.v
// Project Name:  ShiftReg2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PWM_Gen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PWM_Test;

	// Inputs
	reg clk;

	// Outputs
	wire [7:0] pwm;

	// Instantiate the Unit Under Test (UUT)
	PWM_Gen uut (
		.clk(clk), 
		.pwm(pwm)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
		#5000000 $finish;
	end
 always
 #1 clk=~clk;
endmodule

