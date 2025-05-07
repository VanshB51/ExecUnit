library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;
use STD.textio.all;

entity Adder is
	Generic ( N : natural := 64 );
	Port ( A, B : in std_logic_vector( N-1 downto 0 );
			 S : out std_logic_vector( N-1 downto 0 );
			 Cin : in std_logic;
			 Cout, Ovfl : out std_logic );
end entity Adder;

architecture ripple of Adder is
begin
	
	U1: entity work.Rip64(ripple)
	generic map (N => N)
        port map (
            A => A,
            B => B,     
				Cin => Cin,
            S => S,
            Cout => Cout,
				Ovfl => Ovfl
				);

end architecture ripple;

architecture carryskip of Adder is
begin
	
	U2: entity work.CSEA64(carryskip)
	generic map (N => N)
        port map (
            A => A,
            B => B,     
				Cin => Cin,
            S => S,
            Cout => Cout,
				Ovfl => Ovfl
				);

end architecture carryskip;

architecture carrylookahead of Adder is
begin
	
	U3: entity work.CLA64(carrylookahead)
	generic map (N => N)
        port map (
            A => A,
            B => B,     
				Cin => Cin,
            S => S,
            Cout => Cout,
				Ovfl => Ovfl
				);

end architecture carrylookahead;

architecture conditional of Adder is
begin
	
	U4: entity work.CSA64(conditional)
	generic map (N => N)
        port map (
            A => A,
            B => B,     
				Cin => Cin,
            S => S,
            Cout => Cout,
				Ovfl => Ovfl
				);

end architecture conditional;