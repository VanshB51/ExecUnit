library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;

entity LogicUnit is
    generic (N: natural := 4);
    port (  
        A, B   : in std_logic_vector(N-1 downto 0);
        LogicFN : in std_logic_vector(1 downto 0);
        Y      : out std_logic_vector(N-1 downto 0)        
    );
end entity LogicUnit;

architecture rtl of LogicUnit is

signal AXORB, AANDB, AORB, BPASS : std_logic_vector(N-1 downto 0);

begin

BPASS <= B;
AXORB <= A xor B;
AANDB <= A and B;
AORB  <= A or  B;

    with LogicFN select 
        Y <= BPASS    when "00",
				 AXORB    when "01",
				 AORB     when "10",
				 AANDB    when "11",
				 (others => 'X') when others;

end architecture rtl;
