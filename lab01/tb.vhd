-- Place your comments after “--". 
-- VHDL is case iNsEnSItivE.
-- This code will tie the 10 slide switches to the 10 (RED) LEDs.

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY tb IS 
	PORT (SW		: IN		STD_LOGIC_VECTOR (9 DOWNTO 0); 
			LEDR	: OUT		STD_LOGIC_VECTOR (9 DOWNTO 0)		-- No semicolon here!
		   );
END tb;

ARCHITECTURE Algebraic OF tb IS
BEGIN
-- ******************** You need only one simple signal assignment! ********************
	
	LEDR <= SW;			-- connects the 10 slide switches to the 10 LEDs

END Algebraic;
