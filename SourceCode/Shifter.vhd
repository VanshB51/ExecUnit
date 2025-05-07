library ieee;
Use ieee.std_logic_1164.all;
Use STD.TEXTIO.all;
Use ieee.numeric_std.all;

Entity Shifter is
Generic ( N : natural := 64 );
Port ( A: in std_logic_vector( N-1 downto 0 );
		 ShiftCount : in std_logic_vector( 3 downto 0 );
		 ShiftFN : in std_logic_vector( 1 downto 0 );
		 Y_SLL, Y_SRL, Y_SRA : out std_logic_vector( N-1 downto 0 )
 );
End Entity Shifter;




architecture unified of Shifter is

signal Y_out : std_logic_vector(N-1 downto 0);
begin

U4: entity work.UnifiedShifter(unified)
    generic map (N => N)
    port map(
        A           => A,
        ShiftCount  => ShiftCount,   
        ShiftFN     => ShiftFN,   
        Y           => Y_out
    );
		
	Y_SLL <= Y_out;
	Y_SRL <= Y_out;
	Y_SRA <= Y_out;
	
	
end unified;
architecture Shift of Shifter is

begin

	U1: entity work.SLL64(rtl)
	     generic map (N => N)
        port map (
            X    => A,     
				ShiftCount => ShiftCount,	
				Y    => Y_SLL	
        );
		  
	U2: entity work.SRL64(rtl)
	     generic map (N => N)
        port map (
            X    => A,     
			 	ShiftCount => ShiftCount,
				Y    => Y_SRL
        );

	U3: entity work.SRA64(rtl)
	     generic map (N => N)
        port map (
            X    => A,     
				ShiftCount => ShiftCount,	
				Y    => Y_SRA	
        );
		  
end Shift;