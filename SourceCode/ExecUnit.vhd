library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;


Entity ExecUnit is
Generic ( N : natural := 16 );
Port ( A, B : in std_logic_vector( N-1 downto 0 );
		 FuncClass, LogicFN, ShiftFN : in std_logic_vector( 1 downto 0 );
		 AddnSub, ExtWord : in std_logic := '0';
		 Y : out std_logic_vector( N-1 downto 0 );
		 Zero, AltB, AltBu : out std_logic );
End Entity ExecUnit;

architecture execu of ExecUnit is


	signal Y_adder, Y_logic, Y_SLL, Y_SRL, Y_SRA : std_logic_vector(N-1 downto 0);
	
	signal AltB_out, AltBu_out : std_logic;
	signal Y_AvSLL, Y_SRLvSRA,Y_ALE, Y_SRE, Y_UvL, Y_OUT : std_logic_vector(N-1 downto 0);
	signal Y_AvSLL_ext,Y_SRLvSRA_ext, AltB_ext, AltBu_ext  : std_logic_vector(N-1 downto 0) := (others => '0');
BEGIN
	
	-- Instantiate the Arithematic Unit
    U1: entity work.ArithUnit(rtl)
        generic map (N => N)
        port map (
            A => A,
            B => B,
				AddnSub => AddnSub,           
            S => Y_adder,
				Zero => Zero,
				AltB => AltB_out,
				AltBu => AltBu_out
				);
	
	 U2: entity work.LogicUnit(rtl)
		  generic map (N => N)
        port map (
		  A => A,
        B => B,
		  LogicFN => LogicFN,
		  Y => Y_logic
		  );
		  
	 U3: entity work.ShiftUnit(rtl)
		  generic map (N => N)
        port map (
		  A => A,
        B => B,
		  ShiftFN => ShiftFN,
		  ExtWord => ExtWord,
		  Y_SLL => Y_SLL,
		  Y_SRL => Y_SRL,
  		  Y_SRA => Y_SRA
		  );
		  
		  
    -- Rest of your architecture remains the same      
    Y_AvSLL_ext(N-1 downto N/2) <= (others => Y_AvSLL(N/2-1));
    Y_AvSLL_ext(N/2-1 downto 0) <= Y_AvSLL(N/2-1 downto 0);
    
    Y_SRLvSRA_ext(N-1 downto N/2) <= (others => Y_SRLvSRA(N/2-1));
    Y_SRLvSRA_ext(N/2-1 downto 0) <= Y_SRLvSRA(N/2-1 downto 0);
	
 	 AltB_ext(N-1 downto 1) <= (others => '0');
	 AltB_ext(0) <= AltB_out;
	
	 AltBu_ext(N-1 downto 1) <= (others => '0');
	 AltBu_ext(0) <= AltBu_out;
	
	 AltB  <= AltB_out;
	 AltBu <= AltBu_out;

	 MUX1: entity work.Mux2to1(rtl)
	 generic map (N => N)
			 port map ( D0 => Y_adder, D1 => Y_SLL, S => ShiftFN(0), Y => Y_AvSLL );
	
	 MUX2: entity work.Mux2to1(rtl)
	 generic map (N => N)
			 port map ( D0 => Y_SRL, D1 => Y_SRA, S => ShiftFN(0),Y => Y_SRLvSRA);	  
			  
	 MUX3: entity work.Mux2to1(rtl)
	 generic map (N => N)
			 port map ( D0 => Y_AvSLL, D1 => (Y_AvSLL_ext) , S => ExtWord ,Y => Y_ALE);
			 
 	 MUX4: entity work.Mux2to1(rtl)
	 generic map (N => N)
			 port map ( D0 => Y_SRLvSRA, D1 => (Y_SRLvSRA_ext) , S => ExtWord,Y => Y_SRE );
			 
 	 MUX5: entity work.Mux2to1(rtl)
	 generic map (N => N)
			 port map ( D0 => Y_ALE, D1 => Y_SRE, S => ShiftFN(1), Y => Y_UvL );
			 
	 MUX6: entity work.Mux4to1(rtl)
	 generic map (N => N)
			 port map ( D0 => Y_UvL, D1 => Y_logic, D2 =>AltB_ext ,D3=>AltBu_ext , S => FuncClass, Y => Y );
		
		

	
END;
