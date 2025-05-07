library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;

entity SRL64 is
	generic ( N : natural := 64 );
	port ( X : in std_logic_vector ( N-1 downto 0 );
			 ShiftCount : in std_logic_vector (3 downto 0 );
			 Y : out std_logic_vector ( N-1 downto 0 ));
end entity SRL64;

architecture rtl of SRL64 is

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

signal Y_mux1,Y_mux2,Y_mux3 : std_logic_vector(N-1 downto 0);
signal X_shif16,X_shif32,X_shif48,Y_shif4,Y_shif8,Y_shif12,Y2_shif1,Y2_shif2,Y2_shif3 : std_logic_vector(N-1 downto 0);

	
begin

	
	X_shif48 <= std_logic_vector(shift_right(unsigned(X), 48));
	X_shif32 <= std_logic_vector(shift_right(unsigned(X), 32));
	X_shif16 <= std_logic_vector(shift_right(unsigned(X), 16));
	Y_shif12 <= std_logic_vector(shift_right(unsigned(Y_mux1), 12));
	Y_shif8  <= std_logic_vector(shift_right(unsigned(Y_mux1), 8));
	Y_shif4  <= std_logic_vector(shift_right(unsigned(Y_mux1), 4));
	Y2_shif3  <= std_logic_vector(shift_right(unsigned(Y_mux2), 3));
	Y2_shif2  <= std_logic_vector(shift_right(unsigned(Y_mux2), 2));
	Y2_shif1  <= std_logic_vector(shift_right(unsigned(Y_mux2), 1));


	 MUX1: entity work.Mux4to1(rtl)
	     generic map(N => N)
			 port map ( D0 => X, D1 => X_shif16, D2 =>X_shif32 ,D3=>X_shif48 , S => ShiftCount(5 downto 4), Y => Y_mux1 );

	 MUX2: entity work.Mux4to1(rtl)
	     generic map(N => N)
			 port map ( D0 => Y_mux1, D1 => Y_shif4, D2 =>Y_shif8 ,D3=>Y_shif12 , S => ShiftCount(3 downto 2), Y => Y_mux2 );
			 
	 MUX3: entity work.Mux4to1(rtl)
	     generic map(N => N)
			 port map ( D0 => Y_mux2, D1 => Y2_shif1, D2 =>Y2_shif2 ,D3=>Y2_shif3 , S => ShiftCount(1 downto 0), Y => Y_mux3 );
			 
	 Y <= Y_mux3;

end architecture rtl;