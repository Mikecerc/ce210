-- Expansion Interface (ei.vhd)
LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY ei IS 
PORT (AGB, ALB, AQB, GT, LT, EQ	: IN		STD_LOGIC;
			   AGTB, ALTB, AEQB	: OUT	STD_LOGIC
    );
END ei;
ARCHITECTURE Algebraic OF ei IS
BEGIN
-- ********** Fill in the blanks. See Section 3.1 **********
	AGTB 	<=   AGB OR (AQB AND GT);
	ALTB 	<=   ALB OR (AQB AND LT);
	AEQB 	<=   AQB AND EQ;
END Algebraic;				
