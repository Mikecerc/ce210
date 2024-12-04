-- 8-to-3 active-high priority encoder with an active-high NO_REQUEST output

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
ENTITY pri IS 
PORT (R		: IN	STD_LOGIC_VECTOR (7 DOWNTO 0);
		NO_REQ: OUT STD_LOGIC;
		N		: OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
		); 
END pri;

ARCHITECTURE Behavior OF pri IS
BEGIN 
	N <= 	"111"	WHEN 	R(7)  = '1'		ELSE	-- Input 7 has the highest priority
			"110"	WHEN 	R(6)  = '1'   	ELSE 
			"101" WHEN 	R(5)  = '1'  	ELSE
			"100"	WHEN 	R(4)  = '1'  	ELSE
			"011"	WHEN 	R(3)  = '1'   	ELSE 
			"010" WHEN 	R(2)  = '1'  	ELSE
			"001"	WHEN 	R(1)  = '1'  	ELSE
			"000"  ;
			
		--If there is no asserted input, NO_REQ will be asserted:	
	NO_REQ <= '1' WHEN R = "00000000" ELSE '0';		-- NO_REQ is active-high.
	
END Behavior;

