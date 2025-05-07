Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;
Use IEEE.STD_LOGIC_ARITH.ALL;
Use IEEE.STD_LOGIC_UNSIGNED.ALL;


--Entity Declaration
Entity CSA64 is
Generic ( N : natural := 4 ); --Number of bits
Port ( A, B : in std_logic_vector( N-1 downto 0 );
 S : out std_logic_vector( N-1 downto 0 );
 Cin : in std_logic;
 Cout, Ovfl : out std_logic );
End Entity CSA64;


--Architecture for Conditional Sum adder
Architecture conditional of CSA64 is

  signal Sum0, Sum1, final_sum : std_logic_vector(N - 1 downto 0);
  signal C0, C1_0, C1_1 : std_logic;
  signal InternalOvfl : std_logic;


  -- Recursive instantiation of ConditionalSumAdder
  component CSA64
    generic (
      N : integer
    );
    port (
      A, B : in std_logic_vector(N - 1 downto 0);
      Cin  : in std_logic;
      S  : out std_logic_vector(N - 1 downto 0);
      Cout : out std_logic
    );
  end component;

begin
  -- Base Case: If N = 1, use 1-bit Full Adder
  Base_Case: if N = 1 generate

	 final_sum(0) <= A(0) xor B(0) xor Cin;
    Cout <= (A(0) and B(0)) or (Cin and (A(0) xor B(0)));
    InternalOvfl <= '0';
  end generate;

  -- Recursive Case: If N > 1, split into two halves
  Recursive_Case: if N > 1 generate
    -- Lower half addition (N/2 bits)
    LCSA: CSA64
      generic map (N / 2)
      port map (
        A => A(N / 2 - 1 downto 0),
        B => B(N / 2 - 1 downto 0),
        Cin => Cin,
        S => final_sum(N / 2 - 1 downto 0),
        Cout => C0
      );

    -- Upper half addition (N/2 bits) with two possible carry inputs
    UCSA0: CSA64
      generic map (N / 2)
      port map (
        A => A(N - 1 downto N / 2),
        B => B(N - 1 downto N / 2),
        Cin => '0',
        S => Sum0(N - 1 downto N / 2),
        Cout => C1_0
      );

    UCSA1: CSA64
      generic map (N / 2)
      port map (
        A => A(N - 1 downto N / 2),
        B => B(N - 1 downto N / 2),
        Cin => '1',
        S => Sum1(N - 1 downto N / 2),
        Cout => C1_1
      );

    -- Select final sum and carry based on the carry-out from the lower half
    process (C0, Sum0, Sum1, C1_0, C1_1)
    begin
      if C0 = '0' then
        final_sum(N - 1 downto N / 2) <= Sum0(N - 1 downto N / 2);
        Cout <= C1_0;
      else
        final_sum(N - 1 downto N / 2) <= Sum1(N - 1 downto N / 2);
        Cout <= C1_1;
      end if;
		
    end process;
	
     -- Overflow detection logic based on MSB comparison
    process (A, B, final_sum, C0, C1_0, C1_1)
    begin
      -- Check if the MSBs of A and B are the same but the sum differs at the MSB
      if A(N-1) = B(N-1) and final_sum(N-1) /= A(N-1) then
        InternalOvfl <= '1';  -- Overflow detected
      else
        InternalOvfl <= '0';  -- No overflow
      end if;
    end process;
  end generate;

  -- Output assignment for overflow
  Ovfl <= InternalOvfl;
  S <= final_sum;

    
end Architecture Conditional;


