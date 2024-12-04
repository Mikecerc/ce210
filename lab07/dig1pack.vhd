-- Add your components to this package as you get them ready:

LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE dig1pack IS  
    
COMPONENT hex7seg
PORT (B	: IN	STD_LOGIC_VECTOR	(3 DOWNTO 0);
      EN	: IN	STD_LOGIC;							-- Active-high enable input.
      H 	: OUT	STD_LOGIC_VECTOR	(6 DOWNTO 0)
	  );	
END COMPONENT;	


COMPONENT min_max IS 
PORT (A, B			: 	IN		STD_LOGIC_VECTOR (3 DOWNTO 0);
      min_max_sel	: 	IN		STD_LOGIC;							-- ‘0’ selects min
      Z				: 	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0)
		); 
END COMPONENT;


COMPONENT dcd IS 
PORT (S	: 	IN		STD_LOGIC_VECTOR (2 DOWNTO 0);
	   E	: 	IN 	STD_LOGIC;
		L	: 	OUT 	STD_LOGIC_VECTOR (7 DOWNTO 0)
		); 
END COMPONENT;

COMPONENT pri IS 
PORT (R			: IN		STD_LOGIC_VECTOR (7 DOWNTO 0);
		NO_REQ	: OUT 	STD_LOGIC;
		N			: OUT 	STD_LOGIC_VECTOR (2 DOWNTO 0)
	  ); 
END COMPONENT;


COMPONENT FA IS 
PORT (A, B, Cin: IN	STD_LOGIC;
		Co, S		: OUT	STD_LOGIC
      );
END COMPONENT;


COMPONENT alubit IS 
PORT (A, B, bInvert, Cin: IN	STD_LOGIC;
							Sel: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
				  Co, Result: OUT	STD_LOGIC
      );
END COMPONENT;
	
END dig1pack;

