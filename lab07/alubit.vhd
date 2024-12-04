LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE work.dig1pack.all;

-- One slice of ALU: Pay close attention to bInvert and Sel signals.

ENTITY alubit IS 
PORT (A, B, bInvert, Cin: IN	STD_LOGIC;
							Sel: IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
				  Co, Result: OUT	STD_LOGIC
      );
END alubit;

ARCHITECTURE Behavior OF alubit IS
	SIGNAL BorNotB, FAout : STD_LOGIC; 

BEGIN
-- Instantiate the full adder 
-- ********** Fill in the blanks. See Figure 5a and also declaration of component FA 

	fullAdder: FA PORT MAP (A, ...
	
	BorNotB <= B XOR bInvert;
	
	-- This is the description of the mux shown in Figure 5a using a Conditional Signal Assignment:  
	
	Result 	<= A AND BorNotB 	WHEN Sel = "00" ELSE	-- Result ← {A AND BorNotB} if Sel = "00"; Otherwise,
					A OR  BorNotB 	WHEN Sel = "01" ELSE	-- Result ← {A OR  BorNotB} if Sel = “01”; Otherwise,
					A XOR BorNotB 	WHEN Sel = "10" ELSE	-- Result ← {A XOR BorNotB} if Sel = “10”; Otherwise,
					FAout;										-- Result ← FAout.	
END Behavior;
