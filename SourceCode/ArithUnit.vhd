library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;

entity ArithUnit is
    generic (N: natural := 64);
    port (  
        A, B   : in std_logic_vector(N-1 downto 0);
        AddnSub : in std_logic ;
        S      : out std_logic_vector(N-1 downto 0);
        Zero, AltB, AltBu : out std_logic
    );
end entity ArithUnit;

architecture rtl of ArithUnit is
		
	--SIGNALS
    signal Bsig  : std_logic_vector(N-1 downto 0);
    signal Cin   : std_logic;
    signal Cout, Ovfl : std_logic;
    signal Sum   : std_logic_vector(N-1 downto 0);
begin

    -- Assign values to Bsig and Cin for addition/subtraction
    Bsig <= B when AddnSub = '0' else not B;
    Cin  <= AddnSub;

    -- Instantiate the Adder module (ripple carry adder)
    U1: entity work.Adder(ripple)
        generic map (N => N)
        port map (
            A    => A,
            B    => Bsig,     
            Cin  => Cin,
            S    => Sum,
            Cout => Cout,
            Ovfl => Ovfl
        );

    -- Instantiate the ZeroFlag module
    Z1: entity work.ZeroFlag(tree)
        generic map (N => N)
        port map (
            Input  => Sum,  
            Output => Zero
        );

    -- Output calculations
    AltB  <= Ovfl xor Sum(N-1);
    AltBu <= not Cout;
    S     <= Sum;

end architecture rtl;
