-- Hexadecimal to 7-segment decoder.
-- This goes to hex7seg.vhd in lab06 directory. You will map it into the FPGA chip. 

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY hex7seg IS 
PORT ( B	: IN	  STD_LOGIC_VECTOR	(3 DOWNTO 0);
		  EN	: IN	  STD_LOGIC;							-- Active-high enable input.
		  H 	: OUT	 STD_LOGIC_VECTOR	(6 DOWNTO 0)
		  );
END hex7seg;

ARCHITECTURE Behavior OF hex7seg IS
BEGIN
-- ********** Fill in the blanks. See Figure 2. **********
	H <= 	"1111111" 	WHEN EN = '0' 	  ELSE	  -- EN is active-high. It has highest priority.
			  "1000000" 	WHEN  B = "0000" ELSE	  -- each segment lights up with a 0.
			  "1111001" 	WHEN  B = "0001" ELSE
			  "0100100" 	WHEN  B = "0010" ELSE
			  "0110000" 	WHEN  B = "0011" ELSE
			  "0011001" 	WHEN  B = "0100" ELSE
			  "0010010" 	WHEN  B = "0101" ELSE
			  "0000010" 	WHEN  B = "0110" ELSE
			  "1111000" 	WHEN  B = "0111" ELSE
			  "0000000" 	WHEN  B = "1000" ELSE
			  "0010000" 	WHEN  B = "1001" ELSE
			  "0001000" 	WHEN  B = "1010" ELSE
			  "0000011" 	WHEN  B = "1011" ELSE
			  "0100111" 	WHEN  B = "1100" ELSE
			  "0100001" 	WHEN  B = "1101" ELSE
			  "0000110" 	WHEN  B = "1110" ELSE
			  "0001110";

END Behavior;
