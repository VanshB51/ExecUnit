library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration
entity CLA64 is
    generic (N : integer := 64); -- Generic parameter for bit width, default is 4
    port (
        A,B    : in  std_logic_vector(N-1 downto 0); -- N-bit input A
        Cin   : in  std_logic;                      -- Carry-in
        S    : out std_logic_vector(N-1 downto 0); -- N-bit sum output
        Cout,Ovfl : out std_logic                       -- Carry-out
    );
end CLA64;

-- Architecture definition
architecture carrylookahead of CLA64 is
    -- Internal signals for generate (G) and propagate (P) vectors
    signal G, P : std_logic_vector(N-1 downto 0);

begin
    -- Compute generate and propagate signals concurrently
    G <= A and B; -- G(i) = A(i) AND B(i)
    P <= A xor B; -- P(i) = A(i) XOR B(i)
    
    -- Process to compute carries and sum
    process(A, B, Cin, P, G)
        -- Variables for carry and sum computations
        variable carry : std_logic_vector(0 to N);          -- Carry vector, including C0 and Cout
        variable s_var : std_logic_vector(N-1 downto 0);    -- Temporary sum variable
        variable temp  : std_logic;                         -- Temporary variable for carry computation
        variable product : std_logic;                       -- Temporary variable for AND products
    begin
        -- Initialize carry-in
        carry(0) := Cin;
        
        -- Compute carry for each bit position (i = 1 to N)
        for i in 1 to N loop
            -- Start with the generate term for the current bit
            temp := G(i-1);
            
            -- Compute terms: P(i-1) AND P(i-2) AND ... AND G(j) for j = 0 to i-2
            for j in 0 to i-2 loop
                product := '1';
                -- Compute the product of P(k) from k = j+1 to i-1
                for k in j+1 to i-1 loop
                    product := product and P(k);
                end loop;
                -- OR the result with the current temp
                temp := temp or (product and G(j));
            end loop;
            
            -- Add the term for carry-in: P(i-1) AND ... AND P(0) AND C0
            product := '1';
            for k in 0 to i-1 loop
                product := product and P(k);
            end loop;
            temp := temp or (product and carry(0));
            
            -- Assign the computed carry
            carry(i) := temp;
        end loop;
        
        -- Compute the sum: S(i) = P(i) XOR C(i) for i = 0 to N-1
        for i in 0 to N-1 loop
            s_var(i) := P(i) xor carry(i);
        end loop;
        
        -- Assign outputs
        S <= s_var;        -- Sum output
        Cout <= carry(N);  -- Carry-out
		  Ovfl <= carry(N) xor carry(N-1);
    end process;

end carrylookahead;