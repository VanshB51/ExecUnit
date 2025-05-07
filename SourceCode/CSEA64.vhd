library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CSEA64 is
    generic (N : natural := 64); -- Number of bits
    port (
        A, B : in std_logic_vector(N-1 downto 0);
        S : out std_logic_vector(N-1 downto 0);
        Cin : in std_logic;
        Cout, Ovfl : out std_logic
    );
end entity;
architecture carryskip of CSEA64 is

    function is_valid_vector(vec : std_logic_vector) return boolean is
    begin
        for i in vec'range loop
            if vec(i) /= '0' and vec(i) /= '1' then
                return false;
            end if;
        end loop;
        return true;
    end function;

    constant M : natural := 4;
    constant NUM_BLOCKS : natural := N / M;

    signal P : std_logic_vector(N-1 downto 0);
    signal C : std_logic_vector(N downto 0);
    signal B_P : std_logic_vector(NUM_BLOCKS-1 downto 0);
begin

    P <= A xor B;
    C(0) <= Cin;

    GEN_BLOCK : for i in 0 to NUM_BLOCKS-1 generate
        signal A_B, B_B : std_logic_vector(M-1 downto 0);
        signal sum_local : std_logic_vector(M downto 0); -- local temp_sum(i)
    begin

        A_B <= A((i+1)*M-1 downto i*M);
        B_B <= B((i+1)*M-1 downto i*M);

        process(A_B, B_B, C(i))
            variable carry_in_vec : std_logic_vector(M downto 0);
        begin
            carry_in_vec := (others => '0');
            carry_in_vec(0) := C(i);
            if is_valid_vector(A_B) and is_valid_vector(B_B) and (C(i) = '0' or C(i) = '1') then
                sum_local <= ('0' & A_B) + ('0' & B_B) + carry_in_vec;
            else
                sum_local <= (others => '0'); -- or (others => 'X')
            end if;
        end process;

        -- Block propagate
        B_P(i) <= '1' when is_valid_vector(P((i+1)*M-1 downto i*M)) and
                          P((i+1)*M-1 downto i*M) = (P((i+1)*M-1 downto i*M)'range => '1')
                  else '0';

        C(i+1) <= C(i) when B_P(i) = '1' else sum_local(M);

        -- Assign local sum to S slice
        S((i+1)*M-1 downto i*M) <= sum_local(M-1 downto 0);

    end generate GEN_BLOCK;

    -- Output carry
    Cout <= C(NUM_BLOCKS);

    -- Overflow logic (check MSB addition result)
    process(A, B, S)
        variable A_sign, B_sign, Sum_sign : std_logic;
    begin
        A_sign := A(N-1);
        B_sign := B(N-1);
        Sum_sign := S(N-1);
        if (A_sign = B_sign) and (Sum_sign /= A_sign) then
            Ovfl <= '1';
        else
            Ovfl <= '0';
        end if;
    end process;

end architecture;