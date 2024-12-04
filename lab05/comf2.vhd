LIBRARY ieee;
USE ieee.std_logic_1164.all;
-- A 2-bit full comparator, comf2, is described algebraically.
ENTITY comf2 IS 
PORT (	A, B			: IN 			STD_LOGIC_VECTOR (1 DOWNTO 0);
		GT, LT, EQ	: BUFFER	STD_LOGIC                       
            );     --Note: Use the keyword BUFFER instead of OUT. You can read a BUFFER but not an OUT!
END comf2;
ARCHITECTURE Algebraic OF comf2 IS
BEGIN
-- Use minimal SOP from Section 2.2:
-- ********** Prelab: Fill in the blank (3 lines): **********
GT <= 		(A(1) AND NOT B(1))
OR 	(A(0) AND NOT B(1) AND NOT B(0))
OR    (A(1) AND A(0) AND NOT B(0));
	

-- Use minimal POS from Section 2.3:
	LT <= 		(NOT A(1) OR B(1)) 
AND 	(NOT A(0) OR B(1)) 
AND 	(B(1) OR B(0))
AND	(NOT A(1) OR NOT A(0))
AND	(NOT A(1) OR B(0));

	-- Use logic expression from Section 2.4:
	EQ <= NOT (GT OR LT);			   			-- If GT (or LT) were OUT, the compiler would complain!

END Algebraic;