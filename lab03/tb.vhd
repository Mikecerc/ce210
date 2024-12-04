-- This is tb.vhd
-- Remember: 
-- Add explanatory but short comments to your codes. The following code has already been commented
-- Place comments after -- 
-- VHDL is case iNsEnSItivE
 
-- Distributivity (right and left) 
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY tb IS    -- The name of ENTITY is tb. Call your project tb as well.
-- Entity tells us what the inputs and outputs of circuit are, PERIOD. 
-- Entity does not explain what the circuit performs. Circuit operation is described in the architecture.
-- Inputs and outputs (specified in entity) are visible in the outside world.
-- You may call a logic symbol ��the graphical version of the entity
-- SW and LEDR are 10-bit vectors.
PORT (  SW	: IN	STD_LOGIC_VECTOR (2 DOWNTO 0); 	-- Inputs: Switches 2, 1 and 0
	LEDR	: OUT	STD_LOGIC_VECTOR (9 DOWNTO 0)   -- Outputs: Red LEDs 1 and 0
     );
END tb;
-- Compare the above 2 declarations: you may declare 10 LEDs but use only 2 of them; that is fine.

ARCHITECTURE Algebraic OF tb IS		-- The architecture tells us what the circuit performs:
-- Let us also assign more convenient (shorter) names to inputs and outputs.
-- Use ALIAS declaration to give an alternative name to an existing signal:
  ALIAS A	: STD_LOGIC is SW(2);	-- SW(2) is also called A.
  ALIAS B	: STD_LOGIC is SW(1);
  ALIAS C	: STD_LOGIC is SW(0);
  ALIAS Y	: STD_LOGIC is LEDR(1);
  ALIAS Y_R	: STD_LOGIC is LEDR(0); 

BEGIN			-- Describe your circuit, the left and right side of Theorem 8-R, algebraically:
-- ******************** Fill in the blanks ********************
-- Hint: Use parentheses for ORs as well as ANDs
	  					

   -- Y = (   (A . B)’ + (A + C)’   )’
		Y <= NOT (NOT (A AND B) OR NOT (A OR C));
	

END Algebraic;