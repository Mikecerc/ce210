LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

-- Full adder

ENTITY FA IS 
PORT (A, B, Cin : IN		STD_LOGIC;
		    Co, S : OUT	STD_LOGIC  -- Co: Cout, S: Sum
      );
END FA;

ARCHITECTURE Behavior OF FA IS
	SIGNAL AxB : STD_LOGIC; 
	
BEGIN
	AxB <= A XOR B;  		-- You may not have seen this model before!
	S <= Cin XOR AxB;
	
-- The following is a Conditional Signal Assignment: (Prove that Co is generated correctly!)
-- AxB is the “condition”, which was generated above.
 
	Co <= Cin	WHEN AxB = '1' ELSE	-- If AxB = ‘1’, then Co ← Cin; Otherwise,
			A 	;								-- Co ← A
		
END Behavior;
