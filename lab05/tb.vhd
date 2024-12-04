-- 4-bit comparator: top-level module. 
-- Two 2-bit comparator slices are cascaded here.
LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY tb IS 
PORT (	SW 		: IN		STD_LOGIC_VECTOR (9 DOWNTO 0);   -- OK, but we use a subset of it
		LEDR	: OUT	STD_LOGIC_VECTOR (2 DOWNTO 0)
    );
END tb;
ARCHITECTURE Structure OF tb IS
-- Notify the compiler that the component comf2_ei is to be used in tb. (See Figure 8) 
COMPONENT comf2_ei IS 
	PORT (				   A, B 	: IN		STD_LOGIC_VECTOR (1 DOWNTO 0);
				AGB, ALB, AQB	: IN		STD_LOGIC;
			AGTB, ALTB, AEQB	: OUT	STD_LOGIC
   );
END COMPONENT;	
	SIGNAL Greater, Less, Equal: STD_LOGIC;
BEGIN
	-- Instantiate comf2_ei; this is the LS slice
-- ********** Fill in the blanks. See Figure 9 and also component comf2_ei declaration. **********
		LScomf_ei: comf2_ei	 PORT MAP (SW(5 DOWNTO 4),SW(1 DOWNTO 0),Greater,Less,Equal,LEDR(2),LEDR(1),LEDR(0));


-- Instantiate comf2_ei one more time; this is the MS slice
-- ********** Fill in the blanks. See Figure 9 and also component comf2_ei declaration. **********

		MScomf_ei: comf2_ei 	PORT MAP (SW(7 DOWNTO 6),SW(3 DOWNTO 2),'0','0','1',Greater,Less,Equal);


END Structure;
