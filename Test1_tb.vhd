library ieee;					 
use ieee.std_logic_1164.all;


ENTITY Test1_tb IS
--es gibt keine Ein und Ausgaenge
END ENTITY Test1_tb;

ARCHITECTURE sim OF Test1_tb IS

COMPONENT Test1 IS
PORT
(
	A : in std_logic;
	B : in std_logic;
	C : in std_logic;
	X, Y, Z : out std_logic
);
END COMPONENT Test1;

COMPONENT Test1_tester IS
PORT
(
	A : out std_logic;
	B : out std_logic;
	C : out std_logic;
	X, Y, Z : in std_logic
);
END COMPONENT Test1_tester;


SIGNAL a,b,c,x,y,z : std_logic;

BEGIN
--Intanz von Test1 DUT: Device under test
DUT: Test1
port map(
	A	=> a,		--	=> Mapping Operator
	B	=> b,
	C	=> c,
	X	=> x,
	Y	=>	y,
	Z	=>	z

);

tester: Test1_tester
port map(
	A	=> a,
	B	=> b,
	C	=> c,
	X	=> x,
	Y	=>	y,
	Z	=>	z

);

END ARCHITECTURE sim;

