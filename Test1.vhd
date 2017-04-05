library ieee;					  --Bibliothek für std_logic einbinden
use ieee.std_logic_1164.all; --Package von Bibliothek einbinden
use ieee.numeric_std.all;
-- use ieee.std_logic_arith.all; --sollte nicht verwendet werden


ENTITY Test1 IS --Definition der Ein und Ausgaenge
PORT --Ein/Ausgaenge
(
	A : in std_logic;  --Name : Eingang(in) Typ (std_logic)
	B : in std_logic;
	C : in std_logic;
	X, Y, Z : out std_logic --letzte Zeile kein Semicolon!
);
END ENTITY Test1;

ARCHITECTURE behave OF Test1 is
	
	SIGNAL Aint, Bint, Cint : std_logic;
	
BEGIN
	X <= Aint AND Bint  AND Cint ;
	Y <= NOT(Aint  AND Bint  AND Cint );
	Z <= Aint  OR Bint  OR Cint ;

	Aint <= NOT A; -- <= Zuweisungsoperator für Signale
	Bint <= NOT B; -- => Mappingoperator für Signale
	Cint <= NOT C;
		
END ARCHITECTURE behave;