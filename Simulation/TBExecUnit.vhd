library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use STD.textio.all;

-- Testbench for RISC-V Execution Unit
entity TBExecUnit is
end entity TBExecUnit;

architecture tb of TBExecUnit is
    -- Constants
    constant N : natural := 64;
    constant TestVectorFile : string := "TestVectors/test_vectors2.tvs";
    constant PreStimTime : time := 30 ns;
    constant PostStimTime : time := 250 ns;
    constant StableTime : time := 20 ns;
    constant MaxWaitTime : time := 300 ns;

    -- Component declaration for the DUT (ExecUnit)
    component ExecUnit is
        generic (N : natural);
        port (
            A, B : in std_logic_vector(N-1 downto 0);
            FuncClass, LogicFN, ShiftFN : in std_logic_vector(1 downto 0);
            AddnSub, ExtWord : in std_logic;
            Y : out std_logic_vector(N-1 downto 0);
            Zero, AltB, AltBu : out std_logic
        );
    end component;

    -- Signals to connect to the DUT
    signal TBA, TBB : std_logic_vector(N-1 downto 0);
    signal TBFuncClass, TBLogicFN, TBShiftFN : std_logic_vector(1 downto 0);
    signal TBAddnSub, TBExtWord : std_logic;
    signal TBY : std_logic_vector(N-1 downto 0);
    signal TBZero, TBAltB, TBAltBu : std_logic;
    signal StartTime : time := 0 ns;
    signal PropDelay : time := 0 ns;
    signal Y_expected : std_logic_vector(N-1 downto 0);
    signal measurement_index_sig : integer := 0;

    -- Updated DUTStatus and added DUTStatus_expected
    signal DUTStatus : std_logic_vector(2 downto 0);
    signal DUTStatus_expected : std_logic_vector(2 downto 0);

begin
    -- Assign DUTStatus
    DUTStatus(0) <= TBAltBu;
    DUTStatus(1) <= TBAltB;
    DUTStatus(2) <= TBZero;

    -- Instantiate the DUT
    DUT: ExecUnit
        generic map (N => 64)
        port map (
            A => TBA,
            B => TBB,
            FuncClass => TBFuncClass,
            LogicFN => TBLogicFN,
            ShiftFN => TBShiftFN,
            AddnSub => TBAddnSub,
            ExtWord => TBExtWord,
            Y => TBY,
            Zero => TBZero,
            AltB => TBAltB,
            AltBu => TBAltBu
        );

    -- Updated stabilization process
    Y_stablize: process
        variable T_first : time;
        variable check_flags : boolean;
    begin
        wait until TBA'EVENT or TBB'EVENT or TBFuncClass'EVENT or TBLogicFN'EVENT or TBShiftFN'EVENT or TBAddnSub'EVENT or TBExtWord'EVENT;
        loop
            -- Determine if DUTStatus stability should be checked
            if TBExtWord = '1' then
                check_flags := false;  -- 32-bit operation, only check TBY
            elsif TBFuncClass = "00" and TBShiftFN = "00" then
                check_flags := true;   -- 64-bit operation with flags
            else
                check_flags := false;  -- 64-bit operation, only check TBY
            end if;

            -- Wait for outputs to match expected values
            if check_flags then
                wait until (TBY = Y_expected and DUTStatus = DUTStatus_expected) for MaxWaitTime;
                if not (TBY = Y_expected and DUTStatus = DUTStatus_expected) then
                    report "Timeout waiting for TBY and DUTStatus to stabilize" severity warning;
                    exit;
                end if;
            else
                wait until TBY = Y_expected for MaxWaitTime;
                if TBY /= Y_expected then
                    report "Timeout waiting for TBY to stabilize" severity warning;
                    exit;
                end if;
            end if;

            T_first := NOW;  -- Record time of first match
            wait for StableTime;  -- Check stability

            -- Verify stability after StableTime
            if check_flags then
                if TBY = Y_expected and DUTStatus = DUTStatus_expected then
                    PropDelay <= T_first - StartTime;
                    exit;
                end if;
            else
                if TBY = Y_expected then
                    PropDelay <= T_first - StartTime;
                    exit;
                end if;
            end if;
        end loop;
    end process;

    -- Test process
    test_proc: process
        file tv_file : text;
        variable line_in : line;
        variable A_val, B_val, Y_expected_var : std_logic_vector(N-1 downto 0);
        variable FuncClass_val, LogicFN_val, ShiftFN_val : std_logic_vector(1 downto 0);
        variable AddnSub_val, ExtWord_val : std_logic;
        variable Zero_expected, AltB_expected, AltBu_expected : std_logic;
        variable flags : std_logic_vector(2 downto 0);
        variable space : character;
        variable measurement_index : integer := 0;
        variable file_status : file_open_status;
        variable max_PropDelay : time := 0 ns;
    begin
        file_open(file_status, tv_file, TestVectorFile, read_mode);
        assert file_status = open_ok report "Failed to open test vector file: " & TestVectorFile severity failure;

        report "Starting functional verification...";
        report "Using test vectors from: " & TestVectorFile;

        -- Initialize inputs
        TBA <= (others => 'X');
        TBB <= (others => 'X');
        TBFuncClass <= (others => 'X');
        TBLogicFN <= (others => 'X');
        TBShiftFN <= (others => 'X');
        TBAddnSub <= 'X';
        TBExtWord <= 'X';
        wait for PreStimTime;

        while not endfile(tv_file) loop
            readline(tv_file, line_in);
            measurement_index := measurement_index + 1;
            measurement_index_sig <= measurement_index;

            -- Parse test vector
            hread(line_in, A_val);            read(line_in, space);
            hread(line_in, B_val);            read(line_in, space);
            read(line_in, FuncClass_val);     read(line_in, space);
            read(line_in, LogicFN_val);       read(line_in, space);
            read(line_in, ShiftFN_val);       read(line_in, space);
            read(line_in, AddnSub_val);       read(line_in, space);
            read(line_in, ExtWord_val);       read(line_in, space);
            hread(line_in, Y_expected_var);   read(line_in, space);
            read(line_in, flags);

            Zero_expected := flags(2);
            AltB_expected := flags(1);
            AltBu_expected := flags(0);

            -- Apply inputs and set expected values
            Y_expected <= Y_expected_var;
            DUTStatus_expected <= flags;  -- Set expected status
            TBA <= A_val;
            TBB <= B_val;
            TBFuncClass <= FuncClass_val;
            TBLogicFN <= LogicFN_val;
            TBShiftFN <= ShiftFN_val;
            TBAddnSub <= AddnSub_val;
            TBExtWord <= ExtWord_val;
            StartTime <= now;

            wait for PostStimTime;

-- Print inputs, expected, and actual results regardless of pass/fail
report "Measurement " & integer'image(measurement_index) & ": " &
       "A = " & to_hstring(A_val) & " | B = " & to_hstring(B_val) & " | " &
       "FuncClass = " & to_string(FuncClass_val) & " | LogicFN = " & to_string(LogicFN_val) & 
       " | ShiftFN = " & to_string(ShiftFN_val) & " | AddnSub = " & std_logic'image(AddnSub_val) & 
       " | ExtWord = " & std_logic'image(ExtWord_val);
report "Expected: Y = " & to_hstring(Y_expected_var) & 
       " | Zero = " & std_logic'image(Zero_expected) & 
       " | AltB = " & std_logic'image(AltB_expected) & 
       " | AltBu = " & std_logic'image(AltBu_expected);
report "Got     : Y = " & to_hstring(TBY) &
       " | Zero = " & std_logic'image(TBZero) &
       " | AltB = " & std_logic'image(TBAltB) &
       " | AltBu = " & std_logic'image(TBAltBu);

-- Now check results and report outcome
if ExtWord_val = '1' then
    if TBY = Y_expected_var then
        report "Test PASSED for measurement " & integer'image(measurement_index) & " (32-bit operation)";
        report "Propagation delay: " & time'image(PropDelay);
        if PropDelay > max_PropDelay then
            max_PropDelay := PropDelay;
        end if;
    else
        report "Test FAILED for measurement " & integer'image(measurement_index) & " (32-bit operation)" severity error;
    end if;
else
    if (FuncClass_val = "00" and ShiftFN_val = "00") then
        if (TBY = Y_expected_var and TBZero = Zero_expected and TBAltB = AltB_expected and TBAltBu = AltBu_expected) then
            report "Test PASSED for measurement " & integer'image(measurement_index) & " (64-bit operation)";
            report "Propagation delay: " & time'image(PropDelay);
            if PropDelay > max_PropDelay then
                max_PropDelay := PropDelay;
            end if;
        else
            report "Test FAILED for measurement " & integer'image(measurement_index) & " (64-bit operation)" severity error;
        end if;
    else
        if (TBY = Y_expected_var) then
            report "Test PASSED for measurement " & integer'image(measurement_index) & " (64-bit operation)";
            report "Propagation delay: " & time'image(PropDelay);
            if PropDelay > max_PropDelay then
                max_PropDelay := PropDelay;
            end if;
        else
            report "Test FAILED for measurement " & integer'image(measurement_index) & " (64-bit operation)" severity error;
        end if;
    end if;
end if;

        end loop;

        -- Report maximum propagation delay
        report "Maximum propagation delay: " & time'image(max_PropDelay) severity note;

        file_close(tv_file);
        report "Simulation completed." severity note;
        wait;
    end process;
end architecture tb;