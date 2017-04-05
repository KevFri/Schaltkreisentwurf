library ieee;					  --Bibliothek für std_logic einbinden
use ieee.std_logic_1164.all; --Package von Bibliothek einbinden
--use ieee.numeric_std.all;
-- use ieee.std_logic_arith.all; --sollte nicht verwendet werden


ENTITY Test1_tester IS --Definition der Ein und Ausgaenge
PORT --Ein/Ausgaenge
(
	A : out std_logic;  --Name : Eingang(in) Typ (std_logic)
	B : out std_logic;
	C : out std_logic;
	X, Y, Z : in std_logic --letzte Zeile kein Semicolon!
);
END ENTITY Test1_tester;

ARCHITECTURE sim OF Test1_tester is
	
	
BEGIN
	A <='0','1' after 1 ns, '0' after 3 ns;
	B <='0','1' after 2 ns, '0' after 4 ns;	
	C <='0','1' after 3 ns, '0' after 5 ns;
		
END ARCHITECTURE sim;

-- TODO
-- C	B	A
--	0	0	0
--	0	0	1
--	0	1	0
--	0	1	1
--	1	0	0
--	1	0	1
--	1	1	0
--	1	1	1
