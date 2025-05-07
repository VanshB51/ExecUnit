Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;
Use IEEE.STD_LOGIC_ARITH.ALL;
Use IEEE.STD_LOGIC_UNSIGNED.ALL;


--Entity Declaration
Entity Rip64 is
	Generic ( N : natural := 64 );
	Port ( A, B : in std_logic_vector( N-1 downto 0 );
			 S : out std_logic_vector( N-1 downto 0 );
			 Cin : in std_logic;
			 Cout, Ovfl : out std_logic );
End Entity Rip64;

--Architectures for ripple carry adder
Architecture ripple of Rip64 is

Signal P,G : std_logic_vector(N-1 downto 0);
Signal C : std_logic_vector(N downto 0);

Begin

    -- Initial carry-in
    C(0) <= Cin;
	 P <= A xor B;
	 G <= A and B;
	 
    -- Generate the sum and carry for each bit
    gen_ripple : for i in 0 to N-1 generate
        S(i) <= P(i) XOR C(i);  -- Sum calculation
        C(i+1) <= (G(i)) OR (C(i) AND (P(i)));  -- Carry calculation
    end generate gen_ripple;
	 
	Cout <= C(N);
		  -- Overflow detection
	Ovfl <= C(N) xor C(N-1);


End Architecture ripple;




