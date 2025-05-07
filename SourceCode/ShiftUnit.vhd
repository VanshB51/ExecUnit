library ieee;
Use ieee.std_logic_1164.all;
Use STD.TEXTIO.all;
Use ieee.numeric_std.all;

Entity ShiftUnit is
Generic ( N : natural := 64 );
Port ( A, B: in std_logic_vector( N-1 downto 0 );
		 ShiftFN : in std_logic_vector( 1 downto 0 );
		 ExtWord : in std_logic ;
		 Y_SLL, Y_SRL, Y_SRA : out std_logic_vector( N-1 downto 0 )
 );
End Entity ShiftUnit;


architecture rtl of ShiftUnit is
function log2(N : natural) return natural is
    variable res : natural := 0;
    variable val : natural := N - 1;
begin
    while val > 0 loop
        res := res + 1;
        val := val / 2;
    end loop;
    return res;
end function;


	signal ShiftCount : std_logic_vector(log2(N)-1 downto 0);
	signal Asig,A_swapped, Y_SRA_UNSWAPPED, Y_SRL_UNSWAPPED,Y_SRA_SWAPPED, Y_SRL_SWAPPED : std_logic_vector(N-1 downto 0);
	signal Swap_cond : std_logic ;
begin

	ShiftCount <= B(log2(N)-1 downto 0) when ExtWord = '0' else ('0' & B(log2(N)-2 downto 0));
	
	swap_cond <= ShiftFN(1) and ExtWord;
	A_swapped <= A( N/2-1 downto 0) & A(N-1 downto N/2);
	
	Asig <= A when swap_cond = '0' else A_swapped;
	
	U1: entity work.Shifter(Shift)
    generic map(N => N)
    port map(
        A           => Asig,
        ShiftCount  => ShiftCount,   
        ShiftFN     => ShiftFN, 
        Y_SLL       => Y_SLL,
		  Y_SRL       => Y_SRL_UNSWAPPED,
		  Y_SRA       => Y_SRA_UNSWAPPED
    );

	
	Y_SRA_SWAPPED <= Y_SRA_UNSWAPPED(N/2 -1 downto 0) & Y_SRA_UNSWAPPED(N-1 downto N/2);
	Y_SRA <= Y_SRA_UNSWAPPED when ExtWord = '0' else Y_SRA_SWAPPED;
	
	Y_SRL_SWAPPED <= Y_SRL_UNSWAPPED(N/2 -1 downto 0) & Y_SRL_UNSWAPPED(N-1 downto N/2);
	Y_SRL <= Y_SRL_UNSWAPPED when ExtWord = '0' else Y_SRL_SWAPPED;
		  
end rtl;

