-- Determines min or max of two 4-bit numbers
-- Goes to min_max.vhd

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY min_max IS 
PORT (      A, B		: 	IN		STD_LOGIC_VECTOR (3 DOWNTO 0);
      min_max_sel : 	IN		STD_LOGIC;							-- '0' selects min
              Z			: 	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0)
		); 
END min_max;

ARCHITECTURE Behavior OF min_max IS
	SIGNAL 	SelB, AGTB	:	 STD_LOGIC;
  
BEGIN 							                            	
	-- Use a Conditional Signal Assignment to generate AGTB:	
	AGTB 	<= '1'	WHEN 	A > B 	ELSE '0';		-- This is a comparator!	
					
 	-- Use a Conditional Signal Assignment to generate SelB:
	-- **********  Fill in the blanks. See Figure 12. **********
	SelB 	<= ... WHEN  ...
	
	-- Use a Conditional Signal Assignment to generate Z:
	-- **********  Fill in the blank. See Figure 12. **********
  Z <= B WHEN ... 			 
				
END Behavior;
