library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux4to1 is
	 generic(N: natural := 64);
    port (
        D0     : in  STD_LOGIC_VECTOR(N-1 DOWNTO 0);      
        D1     : in  STD_LOGIC_VECTOR(N-1 DOWNTO 0);      
        D2     : in  STD_LOGIC_VECTOR(N-1 DOWNTO 0);      
        D3     : in  STD_LOGIC_VECTOR(N-1 DOWNTO 0);      
        S      : in  STD_LOGIC_VECTOR(1 DOWNTO 0);      
        Y      : out STD_LOGIC_VECTOR(N-1 DOWNTO 0)       
    );
end Mux4to1;

architecture rtl of Mux4to1 is
begin
    -- Selected signal assignment for 4-to-1 mux
    with S select 
        Y <= D0 when "00",
             D1 when "01",
             D2 when "10",
             D3 when "11",
             (others => 'X') when others;  -- Default case for all other values of S
end rtl;