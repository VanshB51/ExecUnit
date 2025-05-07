library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity UnifiedShifter is
    generic (N : natural := 64);
    port (
        A           : in std_logic_vector(N-1 downto 0);
        ShiftCount  : in std_logic_vector(3 downto 0);
        ShiftFN     : in std_logic_vector(1 downto 0);
        Y           : out std_logic_vector(N-1 downto 0)
    );
end entity UnifiedShifter;


architecture unified of UnifiedShifter is


    function is_valid_vector(vec : std_logic_vector) return boolean is
    begin
        for i in vec'range loop
            if vec(i) /= '0' and vec(i) /= '1' then
                return false;
            end if;
        end loop;
        return true;
    end function;


	 signal ShiftedSRA : std_logic_vector(N-1 downto 0);
	 signal ShiftedSRL : std_logic_vector(N-1 downto 0);
	 signal ShiftedSLL : std_logic_vector(N-1 downto 0);
	 

    signal Shifted    : std_logic_vector(N-1 downto 0);

begin

	process(A, ShiftCount)
		begin
		 if is_valid_vector(ShiftCount) then
			ShiftedSLL <= std_logic_vector(shift_left(unsigned(A), to_integer(unsigned(ShiftCount))));
			ShiftedSRL <= std_logic_vector(shift_right(unsigned(A), to_integer(unsigned(ShiftCount))));
			ShiftedSRA <= std_logic_vector(shift_right(signed(A), to_integer(unsigned(ShiftCount))));
		else
			ShiftedSLL <= (others => 'X');
			ShiftedSRL <= (others => 'X');
			ShiftedSRA <= (others => 'X');
		end if;
	end process;
	MUX1: entity work.Mux4to1(rtl)
	generic map (N => N)
	port map ( D0 => A, D1 => ShiftedSLL, D2 =>ShiftedSRL ,D3=>ShiftedSRA , S => ShiftFN, Y => Y );
	
	
end architecture unified;
