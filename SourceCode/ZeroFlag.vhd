library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ZeroFlag is
    generic ( N : integer := 64 );
    port (
        Input  : in  STD_LOGIC_VECTOR(N-1 downto 0);
        Output : out STD_LOGIC
    );
end ZeroFlag;

architecture tree of ZeroFlag is
    signal entityUp, entityLow : std_logic;
begin

    -- Recursive case: divide the input and compute zero flag separately
    Recur: if (N > 1) generate
        upperEn : entity work.ZeroFlag(tree)
            generic map ( N => (N+1) / 2 )  
            port map ( Input(N-1 downto N/2), entityUp );

        lowerEn : entity work.ZeroFlag(tree)
            generic map ( N => N / 2 )  
            port map ( Input(N/2-1 downto 0), entityLow );

        Output <= entityUp AND entityLow;  
    end generate Recur;

    -- Base case: If N=1, output is '1' if input is '0'
    stopRecur: if (N = 1) generate
        Output <= not Input(0);  -- Fix: Zero flag is set if bit is '0'
    end generate stopRecur;

end architecture tree;
