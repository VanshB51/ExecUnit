library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux2to1 is
	 generic(N: natural := 64);
    port (
        D0     : in  STD_LOGIC_VECTOR(N-1 DOWNTO 0);      -- First input
        D1     : in  STD_LOGIC_VECTOR(N-1 DOWNTO 0);      -- Second input
        S      : in  STD_LOGIC;      -- Select signal
        Y      : out STD_LOGIC_VECTOR(N-1 DOWNTO 0)       -- Output
    );
end Mux2to1;

architecture rtl of Mux2to1 is
begin

Y <= D0 when S = '0' else D1;

end rtl;
