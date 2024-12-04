-- tb: Top-level module and testbench for ALU

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE work.dig1pack.all;

ENTITY tb IS 
PORT (  SW 		: 	IN		STD_LOGIC_VECTOR	(9 DOWNTO 0);
		  LEDR	:	OUT	 STD_LOGIC_VECTOR	(9 DOWNTO 0);
		  HEX0, 
		  HEX1, 
		  HEX2, 
		  HEX3, 
		  HEX4, 
		  HEX5	: OUT 	STD_LOGIC_VECTOR	(6 DOWNTO 0)	
		  );		
END tb;

ARCHITECTURE Structure OF tb IS
	SIGNAL CoNBo, OV, AQB, ALB, SALB, AGB, SAGB: STD_LOGIC; 
	SIGNAL C			: STD_LOGIC_VECTOR(2 DOWNTO 1);
	SIGNAL Result	: STD_LOGIC_VECTOR(2 DOWNTO 0);

BEGIN
	-- ********** Instantiate alubit 3 times:
	-- ********** Fill in the blanks. See Figure 7 and also declaration of component alubit

	ALUbit0: alubit PORT MAP(SW(3), ...
	ALUbit1: alubit PORT MAP(SW(4), ...
	ALUbit2: alubit PORT MAP(SW(5), ...

	
	-- ********** Fill in the blanks. See Figure 7. See also the acronyms on Page 6.
	AQB 	<= ...
	ALB 	<= ...
	SALB 	<= ...
	AGB 	<= ...
	SAGB 	<= ...
	OV 	<= ...

	
	LEDR(0) <= AQB;
	LEDR(1) <= ALB;
	
	LEDR(2) <= SALB;
	LEDR(3) <= AGB;
	
	LEDR(4) <= SAGB;

	LEDR(8) <= OV;
	LEDR(9) <= CoNBo;
	
	-- **********Instantiate hex7seg 3 times:
	-- ********** Fill in the blanks. See Figure 7, Figure 8 and also declaration of component hex7seg.
	
	decoder0: 	hex7seg 		PORT MAP ('0' & Result, ... 		 	-- display result
	decoder1: 	hex7seg 		PORT MAP (...								-- display 2nd operand 
	decoder2: 	hex7seg 		PORT MAP ('0' & SW(5 DOWNTO 3), ...	-- display 1st operand
	
							-- display second operand 	
	 
	-- Turn off unused 7-seg displays
	HEX3 <= "1111111";
	HEX4 <= "1111111";
	HEX5 <= "1111111";
 
END Structure;
