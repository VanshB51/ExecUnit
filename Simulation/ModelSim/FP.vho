-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/06/2025 23:22:41"

-- 
-- Device: Altera EP2AGX45DF29C6 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ARRIAII;
LIBRARY IEEE;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ExecUnit IS
    PORT (
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	FuncClass : IN std_logic_vector(1 DOWNTO 0);
	LogicFN : IN std_logic_vector(1 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	AddnSub : IN std_logic;
	ExtWord : IN std_logic;
	Y : BUFFER std_logic_vector(15 DOWNTO 0);
	Zero : BUFFER std_logic;
	AltB : BUFFER std_logic;
	AltBu : BUFFER std_logic
	);
END ExecUnit;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ExecUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_FuncClass : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LogicFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ShiftFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_AddnSub : std_logic;
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Y : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Zero : std_logic;
SIGNAL ww_AltB : std_logic;
SIGNAL ww_AltBu : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \Y[8]~output_o\ : std_logic;
SIGNAL \Y[9]~output_o\ : std_logic;
SIGNAL \Y[10]~output_o\ : std_logic;
SIGNAL \Y[11]~output_o\ : std_logic;
SIGNAL \Y[12]~output_o\ : std_logic;
SIGNAL \Y[13]~output_o\ : std_logic;
SIGNAL \Y[14]~output_o\ : std_logic;
SIGNAL \Y[15]~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \AltB~output_o\ : std_logic;
SIGNAL \AltBu~output_o\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \U2|Mux15~0_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \U3|ShiftCount[3]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \U3|Asig[9]~10_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \U3|Asig[10]~9_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \U3|Asig[11]~11_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \U3|Asig[8]~8_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~2_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \U3|Asig[12]~13_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \U3|Asig[13]~14_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \U3|Asig[14]~12_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \U3|Asig[15]~15_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~3_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight0~0_combout\ : std_logic;
SIGNAL \U3|Asig[0]~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \U3|Asig[6]~5_combout\ : std_logic;
SIGNAL \U3|Asig[5]~6_combout\ : std_logic;
SIGNAL \U3|Asig[7]~7_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \U3|Asig[1]~2_combout\ : std_logic;
SIGNAL \U3|Asig[4]~4_combout\ : std_logic;
SIGNAL \U3|Asig[2]~1_combout\ : std_logic;
SIGNAL \U3|Asig[3]~3_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux7~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~1_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~4_combout\ : std_logic;
SIGNAL \MUX1|Y[0]~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux15~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux15~1_combout\ : std_logic;
SIGNAL \U1|U1|U3|S[0]~0_combout\ : std_logic;
SIGNAL \MUX5|Y[0]~0_combout\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \U1|U1|U3|Cout~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \U1|U1|U3|carry[8]~1_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \U1|U1|U3|carry[8]~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|product~2_combout\ : std_logic;
SIGNAL \U1|U1|U3|temp~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[9]~2_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \U1|U1|U3|product~3_combout\ : std_logic;
SIGNAL \U1|U1|U3|temp~1_combout\ : std_logic;
SIGNAL \U1|U1|U3|Cout~1_combout\ : std_logic;
SIGNAL \U1|U1|U3|Cout~2_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \U1|U1|U3|product~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|product~4_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \U1|U1|U3|product~5_combout\ : std_logic;
SIGNAL \U1|U1|U3|temp~7_combout\ : std_logic;
SIGNAL \U1|U1|U3|temp~8_combout\ : std_logic;
SIGNAL \U1|U1|U3|temp~9_combout\ : std_logic;
SIGNAL \U1|U1|U3|product~1_combout\ : std_logic;
SIGNAL \U1|U1|U3|temp~5_combout\ : std_logic;
SIGNAL \U1|U1|U3|temp~6_combout\ : std_logic;
SIGNAL \U1|U1|U3|temp~10_combout\ : std_logic;
SIGNAL \U1|U1|U3|G[13]~2_combout\ : std_logic;
SIGNAL \U1|U1|U3|Cout~3_combout\ : std_logic;
SIGNAL \U1|U1|U3|temp~11_combout\ : std_logic;
SIGNAL \U1|U1|U3|Cout~4_combout\ : std_logic;
SIGNAL \U1|U1|U3|Cout~5_combout\ : std_logic;
SIGNAL \U1|U1|U3|temp~2_combout\ : std_logic;
SIGNAL \U1|U1|U3|G[10]~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|temp~3_combout\ : std_logic;
SIGNAL \U1|U1|U3|temp~4_combout\ : std_logic;
SIGNAL \U1|U1|U3|G[11]~1_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[12]~3_combout\ : std_logic;
SIGNAL \U1|U1|U3|Cout~6_combout\ : std_logic;
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \MUX6|Mux15~0_combout\ : std_logic;
SIGNAL \U3|Swap_cond~0_combout\ : std_logic;
SIGNAL \MUX6|Mux14~1_combout\ : std_logic;
SIGNAL \MUX6|Mux14~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux5~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~7_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux6~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~8_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight0~1_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux6~1_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux6~2_combout\ : std_logic;
SIGNAL \MUX6|Mux14~3_combout\ : std_logic;
SIGNAL \U2|Mux14~0_combout\ : std_logic;
SIGNAL \MUX6|Mux14~2_combout\ : std_logic;
SIGNAL \MUX6|Mux14~4_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~6_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~5_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight0~2_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~9_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux14~0_combout\ : std_logic;
SIGNAL \MUX6|Mux14~5_combout\ : std_logic;
SIGNAL \U1|U1|U3|temp~13_combout\ : std_logic;
SIGNAL \U1|U1|U3|temp~12_combout\ : std_logic;
SIGNAL \U2|Mux13~0_combout\ : std_logic;
SIGNAL \MUX6|Mux13~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~12_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux5~1_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~13_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight0~3_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux5~2_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux5~3_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~11_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~10_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~14_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight0~4_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux13~0_combout\ : std_logic;
SIGNAL \MUX6|Mux13~1_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~16_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~15_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~17_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight0~5_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight0~6_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~18_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux12~0_combout\ : std_logic;
SIGNAL \U2|Mux12~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[5]~4_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[6]~5_combout\ : std_logic;
SIGNAL \MUX6|Mux12~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight0~7_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~19_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux4~0_combout\ : std_logic;
SIGNAL \MUX6|Mux12~1_combout\ : std_logic;
SIGNAL \U2|Mux11~0_combout\ : std_logic;
SIGNAL \MUX6|Mux11~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux3~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight0~8_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~20_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux11~0_combout\ : std_logic;
SIGNAL \MUX6|Mux11~1_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[5]~6_combout\ : std_logic;
SIGNAL \MUX6|Mux10~1_combout\ : std_logic;
SIGNAL \MUX6|Mux10~0_combout\ : std_logic;
SIGNAL \MUX6|Mux10~3_combout\ : std_logic;
SIGNAL \MUX6|Mux10~2_combout\ : std_logic;
SIGNAL \MUX6|Mux10~4_combout\ : std_logic;
SIGNAL \MUX6|Mux10~5_combout\ : std_logic;
SIGNAL \MUX6|Mux10~6_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~21_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux2~0_combout\ : std_logic;
SIGNAL \MUX6|Mux10~7_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight0~9_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~22_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux1~0_combout\ : std_logic;
SIGNAL \MUX6|Mux9~3_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[6]~7_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[6]~8_combout\ : std_logic;
SIGNAL \MUX6|Mux9~1_combout\ : std_logic;
SIGNAL \MUX6|Mux9~0_combout\ : std_logic;
SIGNAL \MUX6|Mux9~2_combout\ : std_logic;
SIGNAL \MUX6|Mux9~4_combout\ : std_logic;
SIGNAL \MUX6|Mux9~5_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[7]~9_combout\ : std_logic;
SIGNAL \U1|U1|U3|temp~14_combout\ : std_logic;
SIGNAL \U2|Mux8~0_combout\ : std_logic;
SIGNAL \MUX6|Mux8~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux0~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight1~23_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \U3|U1|U4|ShiftRight0~10_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|Mux8~0_combout\ : std_logic;
SIGNAL \MUX6|Mux8~1_combout\ : std_logic;
SIGNAL \MUX6|Mux7~0_combout\ : std_logic;
SIGNAL \MUX6|Mux7~1_combout\ : std_logic;
SIGNAL \MUX6|Mux1~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[8]~13_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[8]~12_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[8]~10_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[8]~11_combout\ : std_logic;
SIGNAL \MUX6|Mux7~3_combout\ : std_logic;
SIGNAL \MUX6|Mux7~2_combout\ : std_logic;
SIGNAL \MUX6|Mux3~0_combout\ : std_logic;
SIGNAL \MUX6|Mux7~4_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[9]~14_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[9]~15_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[9]~16_combout\ : std_logic;
SIGNAL \MUX6|Mux6~1_combout\ : std_logic;
SIGNAL \MUX6|Mux6~0_combout\ : std_logic;
SIGNAL \MUX6|Mux6~2_combout\ : std_logic;
SIGNAL \MUX6|Mux5~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[10]~19_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[10]~17_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[10]~18_combout\ : std_logic;
SIGNAL \MUX6|Mux5~1_combout\ : std_logic;
SIGNAL \MUX6|Mux5~2_combout\ : std_logic;
SIGNAL \U1|U1|U3|temp~15_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[11]~22_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[11]~23_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[11]~20_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[11]~21_combout\ : std_logic;
SIGNAL \MUX6|Mux4~1_combout\ : std_logic;
SIGNAL \MUX6|Mux4~0_combout\ : std_logic;
SIGNAL \MUX6|Mux4~2_combout\ : std_logic;
SIGNAL \MUX6|Mux3~4_combout\ : std_logic;
SIGNAL \MUX6|Mux3~1_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[12]~27_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[12]~24_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[12]~25_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[12]~26_combout\ : std_logic;
SIGNAL \MUX6|Mux3~2_combout\ : std_logic;
SIGNAL \MUX6|Mux3~3_combout\ : std_logic;
SIGNAL \MUX6|Mux2~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[13]~29_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[13]~30_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[13]~28_combout\ : std_logic;
SIGNAL \MUX6|Mux2~1_combout\ : std_logic;
SIGNAL \MUX6|Mux2~2_combout\ : std_logic;
SIGNAL \U1|U1|U3|temp~16_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[14]~32_combout\ : std_logic;
SIGNAL \U1|U1|U3|temp~17_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[14]~33_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[14]~34_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[14]~31_combout\ : std_logic;
SIGNAL \MUX6|Mux1~2_combout\ : std_logic;
SIGNAL \MUX6|Mux1~1_combout\ : std_logic;
SIGNAL \MUX6|Mux1~3_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[15]~35_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[15]~36_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[15]~40_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[15]~37_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[15]~38_combout\ : std_logic;
SIGNAL \U1|U1|U3|carry[15]~39_combout\ : std_logic;
SIGNAL \MUX3|Y[15]~0_combout\ : std_logic;
SIGNAL \U2|Mux0~0_combout\ : std_logic;
SIGNAL \MUX6|Mux0~0_combout\ : std_logic;
SIGNAL \U1|Z1|Output~0_combout\ : std_logic;
SIGNAL \U1|Z1|Output~1_combout\ : std_logic;
SIGNAL \U1|Z1|Output~2_combout\ : std_logic;
SIGNAL \U1|Z1|Output~combout\ : std_logic;
SIGNAL \U1|AltB~combout\ : std_logic;
SIGNAL \U1|U1|U3|P\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|U1|U3|G\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|U1|U3|S\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ExtWord~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_LogicFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_LogicFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_FuncClass[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_FuncClass[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_AddnSub~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \U1|Z1|ALT_INV_Output~combout\ : std_logic;
SIGNAL \U1|Z1|ALT_INV_Output~2_combout\ : std_logic;
SIGNAL \U1|Z1|ALT_INV_Output~1_combout\ : std_logic;
SIGNAL \U1|Z1|ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \MUX3|ALT_INV_Y[15]~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_S\ : std_logic_vector(15 DOWNTO 1);
SIGNAL \U1|U1|U3|ALT_INV_carry[15]~40_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[15]~39_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[15]~38_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[15]~37_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[15]~36_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[15]~35_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[14]~34_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[14]~33_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_temp~17_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[14]~32_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[14]~31_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_temp~16_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[13]~30_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[13]~29_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[13]~28_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[12]~27_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[12]~26_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[12]~25_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[12]~24_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[11]~23_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[11]~22_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_temp~15_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[11]~21_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[11]~20_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[10]~19_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[10]~18_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[10]~17_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[9]~16_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[9]~15_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[9]~14_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[8]~13_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[8]~12_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[8]~11_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[8]~10_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[7]~9_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_temp~14_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~25_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~24_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~23_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight0~10_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~23_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[6]~8_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[6]~7_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_P\ : std_logic_vector(15 DOWNTO 3);
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~22_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight0~9_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~22_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~21_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux10~6_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux10~5_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux10~4_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[5]~6_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~21_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~20_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~19_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~18_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~17_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~20_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight0~8_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~16_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[6]~5_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[5]~4_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~19_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight0~7_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~15_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~14_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~13_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~18_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight0~6_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight0~5_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~17_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~16_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~15_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~12_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_temp~13_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_temp~12_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~11_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~10_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~14_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~13_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight0~4_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight0~3_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~12_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~11_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~10_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~9_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Swap_cond~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~8_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~7_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~6_combout\ : std_logic;
SIGNAL \MUX6|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~9_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~8_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight0~2_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight0~1_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~7_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~6_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~5_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~5_combout\ : std_logic;
SIGNAL \MUX5|ALT_INV_Y[0]~0_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_Y[0]~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~4_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~3_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~2_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~1_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight0~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_S[0]~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~4_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Asig[15]~15_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Asig[13]~14_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Asig[12]~13_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Asig[14]~12_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Asig[11]~11_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Asig[9]~10_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Asig[10]~9_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Asig[8]~8_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~1_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Asig[7]~7_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Asig[5]~6_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Asig[6]~5_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Asig[4]~4_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftRight1~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Asig[3]~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Asig[1]~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Asig[2]~1_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|ALT_INV_ShiftLeft0~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_ShiftCount[3]~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Asig[0]~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_Cout~6_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_Cout~5_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_Cout~4_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_Cout~3_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_G[13]~2_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_temp~11_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_temp~10_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_G\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U1|U1|U3|ALT_INV_temp~9_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_temp~8_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_temp~7_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_product~5_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_temp~6_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_temp~5_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[12]~3_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_temp~4_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_temp~3_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_G[11]~1_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_G[10]~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_temp~2_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_product~4_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_Cout~2_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_temp~1_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_product~3_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[9]~2_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_temp~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_product~2_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[8]~1_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_carry[8]~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_product~1_combout\ : std_logic;
SIGNAL \U1|U1|U3|ALT_INV_product~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \U3|U1|U4|MUX1|ALT_INV_Mux2~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_FuncClass <= FuncClass;
ww_LogicFN <= LogicFN;
ww_ShiftFN <= ShiftFN;
ww_AddnSub <= AddnSub;
ww_ExtWord <= ExtWord;
Y <= ww_Y;
Zero <= ww_Zero;
AltB <= ww_AltB;
AltBu <= ww_AltBu;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ShiftFN[0]~input_o\ <= NOT \ShiftFN[0]~input_o\;
\ALT_INV_ExtWord~input_o\ <= NOT \ExtWord~input_o\;
\ALT_INV_ShiftFN[1]~input_o\ <= NOT \ShiftFN[1]~input_o\;
\ALT_INV_LogicFN[0]~input_o\ <= NOT \LogicFN[0]~input_o\;
\ALT_INV_LogicFN[1]~input_o\ <= NOT \LogicFN[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_FuncClass[0]~input_o\ <= NOT \FuncClass[0]~input_o\;
\ALT_INV_FuncClass[1]~input_o\ <= NOT \FuncClass[1]~input_o\;
\ALT_INV_AddnSub~input_o\ <= NOT \AddnSub~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\MUX6|ALT_INV_Mux3~4_combout\ <= NOT \MUX6|Mux3~4_combout\;
\U1|Z1|ALT_INV_Output~combout\ <= NOT \U1|Z1|Output~combout\;
\U1|Z1|ALT_INV_Output~2_combout\ <= NOT \U1|Z1|Output~2_combout\;
\U1|Z1|ALT_INV_Output~1_combout\ <= NOT \U1|Z1|Output~1_combout\;
\U1|Z1|ALT_INV_Output~0_combout\ <= NOT \U1|Z1|Output~0_combout\;
\MUX3|ALT_INV_Y[15]~0_combout\ <= NOT \MUX3|Y[15]~0_combout\;
\U1|U1|U3|ALT_INV_S\(15) <= NOT \U1|U1|U3|S\(15);
\U1|U1|U3|ALT_INV_carry[15]~40_combout\ <= NOT \U1|U1|U3|carry[15]~40_combout\;
\U1|U1|U3|ALT_INV_carry[15]~39_combout\ <= NOT \U1|U1|U3|carry[15]~39_combout\;
\U1|U1|U3|ALT_INV_carry[15]~38_combout\ <= NOT \U1|U1|U3|carry[15]~38_combout\;
\U1|U1|U3|ALT_INV_carry[15]~37_combout\ <= NOT \U1|U1|U3|carry[15]~37_combout\;
\U1|U1|U3|ALT_INV_carry[15]~36_combout\ <= NOT \U1|U1|U3|carry[15]~36_combout\;
\U1|U1|U3|ALT_INV_carry[15]~35_combout\ <= NOT \U1|U1|U3|carry[15]~35_combout\;
\U2|ALT_INV_Mux0~0_combout\ <= NOT \U2|Mux0~0_combout\;
\MUX6|ALT_INV_Mux1~2_combout\ <= NOT \MUX6|Mux1~2_combout\;
\U1|U1|U3|ALT_INV_S\(14) <= NOT \U1|U1|U3|S\(14);
\U1|U1|U3|ALT_INV_carry[14]~34_combout\ <= NOT \U1|U1|U3|carry[14]~34_combout\;
\U1|U1|U3|ALT_INV_carry[14]~33_combout\ <= NOT \U1|U1|U3|carry[14]~33_combout\;
\U1|U1|U3|ALT_INV_temp~17_combout\ <= NOT \U1|U1|U3|temp~17_combout\;
\U1|U1|U3|ALT_INV_carry[14]~32_combout\ <= NOT \U1|U1|U3|carry[14]~32_combout\;
\U1|U1|U3|ALT_INV_carry[14]~31_combout\ <= NOT \U1|U1|U3|carry[14]~31_combout\;
\U1|U1|U3|ALT_INV_temp~16_combout\ <= NOT \U1|U1|U3|temp~16_combout\;
\MUX6|ALT_INV_Mux1~1_combout\ <= NOT \MUX6|Mux1~1_combout\;
\MUX6|ALT_INV_Mux2~1_combout\ <= NOT \MUX6|Mux2~1_combout\;
\U1|U1|U3|ALT_INV_S\(13) <= NOT \U1|U1|U3|S\(13);
\U1|U1|U3|ALT_INV_carry[13]~30_combout\ <= NOT \U1|U1|U3|carry[13]~30_combout\;
\U1|U1|U3|ALT_INV_carry[13]~29_combout\ <= NOT \U1|U1|U3|carry[13]~29_combout\;
\U1|U1|U3|ALT_INV_carry[13]~28_combout\ <= NOT \U1|U1|U3|carry[13]~28_combout\;
\MUX6|ALT_INV_Mux2~0_combout\ <= NOT \MUX6|Mux2~0_combout\;
\MUX6|ALT_INV_Mux3~2_combout\ <= NOT \MUX6|Mux3~2_combout\;
\U1|U1|U3|ALT_INV_S\(12) <= NOT \U1|U1|U3|S\(12);
\U1|U1|U3|ALT_INV_carry[12]~27_combout\ <= NOT \U1|U1|U3|carry[12]~27_combout\;
\U1|U1|U3|ALT_INV_carry[12]~26_combout\ <= NOT \U1|U1|U3|carry[12]~26_combout\;
\U1|U1|U3|ALT_INV_carry[12]~25_combout\ <= NOT \U1|U1|U3|carry[12]~25_combout\;
\U1|U1|U3|ALT_INV_carry[12]~24_combout\ <= NOT \U1|U1|U3|carry[12]~24_combout\;
\MUX6|ALT_INV_Mux3~1_combout\ <= NOT \MUX6|Mux3~1_combout\;
\MUX6|ALT_INV_Mux4~1_combout\ <= NOT \MUX6|Mux4~1_combout\;
\U1|U1|U3|ALT_INV_S\(11) <= NOT \U1|U1|U3|S\(11);
\U1|U1|U3|ALT_INV_carry[11]~23_combout\ <= NOT \U1|U1|U3|carry[11]~23_combout\;
\U1|U1|U3|ALT_INV_carry[11]~22_combout\ <= NOT \U1|U1|U3|carry[11]~22_combout\;
\U1|U1|U3|ALT_INV_temp~15_combout\ <= NOT \U1|U1|U3|temp~15_combout\;
\U1|U1|U3|ALT_INV_carry[11]~21_combout\ <= NOT \U1|U1|U3|carry[11]~21_combout\;
\U1|U1|U3|ALT_INV_carry[11]~20_combout\ <= NOT \U1|U1|U3|carry[11]~20_combout\;
\MUX6|ALT_INV_Mux4~0_combout\ <= NOT \MUX6|Mux4~0_combout\;
\MUX6|ALT_INV_Mux5~1_combout\ <= NOT \MUX6|Mux5~1_combout\;
\U1|U1|U3|ALT_INV_S\(10) <= NOT \U1|U1|U3|S\(10);
\U1|U1|U3|ALT_INV_carry[10]~19_combout\ <= NOT \U1|U1|U3|carry[10]~19_combout\;
\U1|U1|U3|ALT_INV_carry[10]~18_combout\ <= NOT \U1|U1|U3|carry[10]~18_combout\;
\U1|U1|U3|ALT_INV_carry[10]~17_combout\ <= NOT \U1|U1|U3|carry[10]~17_combout\;
\MUX6|ALT_INV_Mux5~0_combout\ <= NOT \MUX6|Mux5~0_combout\;
\MUX6|ALT_INV_Mux6~1_combout\ <= NOT \MUX6|Mux6~1_combout\;
\U1|U1|U3|ALT_INV_S\(9) <= NOT \U1|U1|U3|S\(9);
\U1|U1|U3|ALT_INV_carry[9]~16_combout\ <= NOT \U1|U1|U3|carry[9]~16_combout\;
\U1|U1|U3|ALT_INV_carry[9]~15_combout\ <= NOT \U1|U1|U3|carry[9]~15_combout\;
\U1|U1|U3|ALT_INV_carry[9]~14_combout\ <= NOT \U1|U1|U3|carry[9]~14_combout\;
\MUX6|ALT_INV_Mux6~0_combout\ <= NOT \MUX6|Mux6~0_combout\;
\MUX6|ALT_INV_Mux7~3_combout\ <= NOT \MUX6|Mux7~3_combout\;
\U1|U1|U3|ALT_INV_S\(8) <= NOT \U1|U1|U3|S\(8);
\U1|U1|U3|ALT_INV_carry[8]~13_combout\ <= NOT \U1|U1|U3|carry[8]~13_combout\;
\U1|U1|U3|ALT_INV_carry[8]~12_combout\ <= NOT \U1|U1|U3|carry[8]~12_combout\;
\U1|U1|U3|ALT_INV_carry[8]~11_combout\ <= NOT \U1|U1|U3|carry[8]~11_combout\;
\U1|U1|U3|ALT_INV_carry[8]~10_combout\ <= NOT \U1|U1|U3|carry[8]~10_combout\;
\MUX6|ALT_INV_Mux1~0_combout\ <= NOT \MUX6|Mux1~0_combout\;
\MUX6|ALT_INV_Mux3~0_combout\ <= NOT \MUX6|Mux3~0_combout\;
\MUX6|ALT_INV_Mux7~2_combout\ <= NOT \MUX6|Mux7~2_combout\;
\MUX6|ALT_INV_Mux7~1_combout\ <= NOT \MUX6|Mux7~1_combout\;
\MUX6|ALT_INV_Mux7~0_combout\ <= NOT \MUX6|Mux7~0_combout\;
\MUX6|ALT_INV_Mux8~0_combout\ <= NOT \MUX6|Mux8~0_combout\;
\U1|U1|U3|ALT_INV_S\(7) <= NOT \U1|U1|U3|S\(7);
\U1|U1|U3|ALT_INV_carry[7]~9_combout\ <= NOT \U1|U1|U3|carry[7]~9_combout\;
\U1|U1|U3|ALT_INV_temp~14_combout\ <= NOT \U1|U1|U3|temp~14_combout\;
\U2|ALT_INV_Mux8~0_combout\ <= NOT \U2|Mux8~0_combout\;
\U3|U1|U4|MUX1|ALT_INV_Mux0~0_combout\ <= NOT \U3|U1|U4|MUX1|Mux0~0_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~25_combout\ <= NOT \U3|U1|U4|ShiftLeft0~25_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~24_combout\ <= NOT \U3|U1|U4|ShiftLeft0~24_combout\;
\U3|U1|U4|MUX1|ALT_INV_Mux8~0_combout\ <= NOT \U3|U1|U4|MUX1|Mux8~0_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~23_combout\ <= NOT \U3|U1|U4|ShiftRight1~23_combout\;
\U3|U1|U4|ALT_INV_ShiftRight0~10_combout\ <= NOT \U3|U1|U4|ShiftRight0~10_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~23_combout\ <= NOT \U3|U1|U4|ShiftLeft0~23_combout\;
\MUX6|ALT_INV_Mux9~4_combout\ <= NOT \MUX6|Mux9~4_combout\;
\MUX6|ALT_INV_Mux9~3_combout\ <= NOT \MUX6|Mux9~3_combout\;
\MUX6|ALT_INV_Mux9~2_combout\ <= NOT \MUX6|Mux9~2_combout\;
\MUX6|ALT_INV_Mux9~1_combout\ <= NOT \MUX6|Mux9~1_combout\;
\MUX6|ALT_INV_Mux9~0_combout\ <= NOT \MUX6|Mux9~0_combout\;
\U1|U1|U3|ALT_INV_S\(6) <= NOT \U1|U1|U3|S\(6);
\U1|U1|U3|ALT_INV_carry[6]~8_combout\ <= NOT \U1|U1|U3|carry[6]~8_combout\;
\U1|U1|U3|ALT_INV_carry[6]~7_combout\ <= NOT \U1|U1|U3|carry[6]~7_combout\;
\U1|U1|U3|ALT_INV_P\(6) <= NOT \U1|U1|U3|P\(6);
\U3|U1|U4|MUX1|ALT_INV_Mux1~0_combout\ <= NOT \U3|U1|U4|MUX1|Mux1~0_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~22_combout\ <= NOT \U3|U1|U4|ShiftRight1~22_combout\;
\U3|U1|U4|ALT_INV_ShiftRight0~9_combout\ <= NOT \U3|U1|U4|ShiftRight0~9_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~22_combout\ <= NOT \U3|U1|U4|ShiftLeft0~22_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~21_combout\ <= NOT \U3|U1|U4|ShiftLeft0~21_combout\;
\MUX6|ALT_INV_Mux10~6_combout\ <= NOT \MUX6|Mux10~6_combout\;
\MUX6|ALT_INV_Mux10~5_combout\ <= NOT \MUX6|Mux10~5_combout\;
\MUX6|ALT_INV_Mux10~4_combout\ <= NOT \MUX6|Mux10~4_combout\;
\MUX6|ALT_INV_Mux10~3_combout\ <= NOT \MUX6|Mux10~3_combout\;
\MUX6|ALT_INV_Mux10~2_combout\ <= NOT \MUX6|Mux10~2_combout\;
\MUX6|ALT_INV_Mux10~1_combout\ <= NOT \MUX6|Mux10~1_combout\;
\MUX6|ALT_INV_Mux10~0_combout\ <= NOT \MUX6|Mux10~0_combout\;
\U1|U1|U3|ALT_INV_S\(5) <= NOT \U1|U1|U3|S\(5);
\U1|U1|U3|ALT_INV_carry[5]~6_combout\ <= NOT \U1|U1|U3|carry[5]~6_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~21_combout\ <= NOT \U3|U1|U4|ShiftRight1~21_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~20_combout\ <= NOT \U3|U1|U4|ShiftLeft0~20_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~19_combout\ <= NOT \U3|U1|U4|ShiftLeft0~19_combout\;
\MUX6|ALT_INV_Mux11~0_combout\ <= NOT \MUX6|Mux11~0_combout\;
\U1|U1|U3|ALT_INV_S\(4) <= NOT \U1|U1|U3|S\(4);
\U2|ALT_INV_Mux11~0_combout\ <= NOT \U2|Mux11~0_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~18_combout\ <= NOT \U3|U1|U4|ShiftLeft0~18_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~17_combout\ <= NOT \U3|U1|U4|ShiftLeft0~17_combout\;
\U3|U1|U4|MUX1|ALT_INV_Mux11~0_combout\ <= NOT \U3|U1|U4|MUX1|Mux11~0_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~20_combout\ <= NOT \U3|U1|U4|ShiftRight1~20_combout\;
\U3|U1|U4|ALT_INV_ShiftRight0~8_combout\ <= NOT \U3|U1|U4|ShiftRight0~8_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~16_combout\ <= NOT \U3|U1|U4|ShiftLeft0~16_combout\;
\MUX6|ALT_INV_Mux12~0_combout\ <= NOT \MUX6|Mux12~0_combout\;
\U1|U1|U3|ALT_INV_S\(3) <= NOT \U1|U1|U3|S\(3);
\U1|U1|U3|ALT_INV_carry[6]~5_combout\ <= NOT \U1|U1|U3|carry[6]~5_combout\;
\U1|U1|U3|ALT_INV_carry[5]~4_combout\ <= NOT \U1|U1|U3|carry[5]~4_combout\;
\U2|ALT_INV_Mux12~0_combout\ <= NOT \U2|Mux12~0_combout\;
\U3|U1|U4|MUX1|ALT_INV_Mux4~0_combout\ <= NOT \U3|U1|U4|MUX1|Mux4~0_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~19_combout\ <= NOT \U3|U1|U4|ShiftRight1~19_combout\;
\U3|U1|U4|ALT_INV_ShiftRight0~7_combout\ <= NOT \U3|U1|U4|ShiftRight0~7_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~15_combout\ <= NOT \U3|U1|U4|ShiftLeft0~15_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~14_combout\ <= NOT \U3|U1|U4|ShiftLeft0~14_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~13_combout\ <= NOT \U3|U1|U4|ShiftLeft0~13_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~18_combout\ <= NOT \U3|U1|U4|ShiftRight1~18_combout\;
\U3|U1|U4|ALT_INV_ShiftRight0~6_combout\ <= NOT \U3|U1|U4|ShiftRight0~6_combout\;
\U3|U1|U4|ALT_INV_ShiftRight0~5_combout\ <= NOT \U3|U1|U4|ShiftRight0~5_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~17_combout\ <= NOT \U3|U1|U4|ShiftRight1~17_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~16_combout\ <= NOT \U3|U1|U4|ShiftRight1~16_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~15_combout\ <= NOT \U3|U1|U4|ShiftRight1~15_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~12_combout\ <= NOT \U3|U1|U4|ShiftLeft0~12_combout\;
\MUX6|ALT_INV_Mux13~0_combout\ <= NOT \MUX6|Mux13~0_combout\;
\U1|U1|U3|ALT_INV_S\(2) <= NOT \U1|U1|U3|S\(2);
\U1|U1|U3|ALT_INV_temp~13_combout\ <= NOT \U1|U1|U3|temp~13_combout\;
\U1|U1|U3|ALT_INV_temp~12_combout\ <= NOT \U1|U1|U3|temp~12_combout\;
\U2|ALT_INV_Mux13~0_combout\ <= NOT \U2|Mux13~0_combout\;
\U3|U1|U4|MUX1|ALT_INV_Mux5~3_combout\ <= NOT \U3|U1|U4|MUX1|Mux5~3_combout\;
\U3|U1|U4|MUX1|ALT_INV_Mux5~2_combout\ <= NOT \U3|U1|U4|MUX1|Mux5~2_combout\;
\U3|U1|U4|MUX1|ALT_INV_Mux5~1_combout\ <= NOT \U3|U1|U4|MUX1|Mux5~1_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~11_combout\ <= NOT \U3|U1|U4|ShiftLeft0~11_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~10_combout\ <= NOT \U3|U1|U4|ShiftLeft0~10_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~14_combout\ <= NOT \U3|U1|U4|ShiftRight1~14_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~13_combout\ <= NOT \U3|U1|U4|ShiftRight1~13_combout\;
\U3|U1|U4|ALT_INV_ShiftRight0~4_combout\ <= NOT \U3|U1|U4|ShiftRight0~4_combout\;
\U3|U1|U4|ALT_INV_ShiftRight0~3_combout\ <= NOT \U3|U1|U4|ShiftRight0~3_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~12_combout\ <= NOT \U3|U1|U4|ShiftRight1~12_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~11_combout\ <= NOT \U3|U1|U4|ShiftRight1~11_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~10_combout\ <= NOT \U3|U1|U4|ShiftRight1~10_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~9_combout\ <= NOT \U3|U1|U4|ShiftLeft0~9_combout\;
\MUX6|ALT_INV_Mux14~4_combout\ <= NOT \MUX6|Mux14~4_combout\;
\MUX6|ALT_INV_Mux14~3_combout\ <= NOT \MUX6|Mux14~3_combout\;
\U1|U1|U3|ALT_INV_S\(1) <= NOT \U1|U1|U3|S\(1);
\MUX6|ALT_INV_Mux14~2_combout\ <= NOT \MUX6|Mux14~2_combout\;
\U2|ALT_INV_Mux14~0_combout\ <= NOT \U2|Mux14~0_combout\;
\MUX6|ALT_INV_Mux14~1_combout\ <= NOT \MUX6|Mux14~1_combout\;
\U3|ALT_INV_Swap_cond~0_combout\ <= NOT \U3|Swap_cond~0_combout\;
\U3|U1|U4|MUX1|ALT_INV_Mux6~2_combout\ <= NOT \U3|U1|U4|MUX1|Mux6~2_combout\;
\U3|U1|U4|MUX1|ALT_INV_Mux5~0_combout\ <= NOT \U3|U1|U4|MUX1|Mux5~0_combout\;
\U3|U1|U4|MUX1|ALT_INV_Mux6~1_combout\ <= NOT \U3|U1|U4|MUX1|Mux6~1_combout\;
\U3|U1|U4|MUX1|ALT_INV_Mux6~0_combout\ <= NOT \U3|U1|U4|MUX1|Mux6~0_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~8_combout\ <= NOT \U3|U1|U4|ShiftLeft0~8_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~7_combout\ <= NOT \U3|U1|U4|ShiftLeft0~7_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~6_combout\ <= NOT \U3|U1|U4|ShiftLeft0~6_combout\;
\MUX6|ALT_INV_Mux14~0_combout\ <= NOT \MUX6|Mux14~0_combout\;
\U3|U1|U4|MUX1|ALT_INV_Mux14~0_combout\ <= NOT \U3|U1|U4|MUX1|Mux14~0_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~9_combout\ <= NOT \U3|U1|U4|ShiftRight1~9_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~8_combout\ <= NOT \U3|U1|U4|ShiftRight1~8_combout\;
\U3|U1|U4|ALT_INV_ShiftRight0~2_combout\ <= NOT \U3|U1|U4|ShiftRight0~2_combout\;
\U3|U1|U4|ALT_INV_ShiftRight0~1_combout\ <= NOT \U3|U1|U4|ShiftRight0~1_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~7_combout\ <= NOT \U3|U1|U4|ShiftRight1~7_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~6_combout\ <= NOT \U3|U1|U4|ShiftRight1~6_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~5_combout\ <= NOT \U3|U1|U4|ShiftRight1~5_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~5_combout\ <= NOT \U3|U1|U4|ShiftLeft0~5_combout\;
\MUX5|ALT_INV_Y[0]~0_combout\ <= NOT \MUX5|Y[0]~0_combout\;
\MUX1|ALT_INV_Y[0]~0_combout\ <= NOT \MUX1|Y[0]~0_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~4_combout\ <= NOT \U3|U1|U4|ShiftLeft0~4_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~3_combout\ <= NOT \U3|U1|U4|ShiftLeft0~3_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~2_combout\ <= NOT \U3|U1|U4|ShiftLeft0~2_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~1_combout\ <= NOT \U3|U1|U4|ShiftLeft0~1_combout\;
\U3|U1|U4|ALT_INV_ShiftRight0~0_combout\ <= NOT \U3|U1|U4|ShiftRight0~0_combout\;
\U1|U1|U3|ALT_INV_S[0]~0_combout\ <= NOT \U1|U1|U3|S[0]~0_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~4_combout\ <= NOT \U3|U1|U4|ShiftRight1~4_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~3_combout\ <= NOT \U3|U1|U4|ShiftRight1~3_combout\;
\U3|ALT_INV_Asig[15]~15_combout\ <= NOT \U3|Asig[15]~15_combout\;
\U3|ALT_INV_Asig[13]~14_combout\ <= NOT \U3|Asig[13]~14_combout\;
\U3|ALT_INV_Asig[12]~13_combout\ <= NOT \U3|Asig[12]~13_combout\;
\U3|ALT_INV_Asig[14]~12_combout\ <= NOT \U3|Asig[14]~12_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~2_combout\ <= NOT \U3|U1|U4|ShiftRight1~2_combout\;
\U3|ALT_INV_Asig[11]~11_combout\ <= NOT \U3|Asig[11]~11_combout\;
\U3|ALT_INV_Asig[9]~10_combout\ <= NOT \U3|Asig[9]~10_combout\;
\U3|ALT_INV_Asig[10]~9_combout\ <= NOT \U3|Asig[10]~9_combout\;
\U3|ALT_INV_Asig[8]~8_combout\ <= NOT \U3|Asig[8]~8_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~1_combout\ <= NOT \U3|U1|U4|ShiftRight1~1_combout\;
\U3|ALT_INV_Asig[7]~7_combout\ <= NOT \U3|Asig[7]~7_combout\;
\U3|ALT_INV_Asig[5]~6_combout\ <= NOT \U3|Asig[5]~6_combout\;
\U3|ALT_INV_Asig[6]~5_combout\ <= NOT \U3|Asig[6]~5_combout\;
\U3|ALT_INV_Asig[4]~4_combout\ <= NOT \U3|Asig[4]~4_combout\;
\U3|U1|U4|ALT_INV_ShiftRight1~0_combout\ <= NOT \U3|U1|U4|ShiftRight1~0_combout\;
\U3|ALT_INV_Asig[3]~3_combout\ <= NOT \U3|Asig[3]~3_combout\;
\U3|ALT_INV_Asig[1]~2_combout\ <= NOT \U3|Asig[1]~2_combout\;
\U3|ALT_INV_Asig[2]~1_combout\ <= NOT \U3|Asig[2]~1_combout\;
\U3|U1|U4|MUX1|ALT_INV_Mux15~1_combout\ <= NOT \U3|U1|U4|MUX1|Mux15~1_combout\;
\U3|U1|U4|MUX1|ALT_INV_Mux15~0_combout\ <= NOT \U3|U1|U4|MUX1|Mux15~0_combout\;
\U3|U1|U4|ALT_INV_ShiftLeft0~0_combout\ <= NOT \U3|U1|U4|ShiftLeft0~0_combout\;
\U3|ALT_INV_ShiftCount[3]~0_combout\ <= NOT \U3|ShiftCount[3]~0_combout\;
\U3|ALT_INV_Asig[0]~0_combout\ <= NOT \U3|Asig[0]~0_combout\;
\U2|ALT_INV_Mux15~0_combout\ <= NOT \U2|Mux15~0_combout\;
\U1|U1|U3|ALT_INV_Cout~6_combout\ <= NOT \U1|U1|U3|Cout~6_combout\;
\U1|U1|U3|ALT_INV_Cout~5_combout\ <= NOT \U1|U1|U3|Cout~5_combout\;
\U1|U1|U3|ALT_INV_Cout~4_combout\ <= NOT \U1|U1|U3|Cout~4_combout\;
\U1|U1|U3|ALT_INV_Cout~3_combout\ <= NOT \U1|U1|U3|Cout~3_combout\;
\U1|U1|U3|ALT_INV_G[13]~2_combout\ <= NOT \U1|U1|U3|G[13]~2_combout\;
\U1|U1|U3|ALT_INV_temp~11_combout\ <= NOT \U1|U1|U3|temp~11_combout\;
\U1|U1|U3|ALT_INV_temp~10_combout\ <= NOT \U1|U1|U3|temp~10_combout\;
\U1|U1|U3|ALT_INV_G\(4) <= NOT \U1|U1|U3|G\(4);
\U1|U1|U3|ALT_INV_temp~9_combout\ <= NOT \U1|U1|U3|temp~9_combout\;
\U1|U1|U3|ALT_INV_temp~8_combout\ <= NOT \U1|U1|U3|temp~8_combout\;
\U1|U1|U3|ALT_INV_G\(5) <= NOT \U1|U1|U3|G\(5);
\U1|U1|U3|ALT_INV_P\(13) <= NOT \U1|U1|U3|P\(13);
\U1|U1|U3|ALT_INV_P\(14) <= NOT \U1|U1|U3|P\(14);
\U1|U1|U3|ALT_INV_temp~7_combout\ <= NOT \U1|U1|U3|temp~7_combout\;
\U1|U1|U3|ALT_INV_product~5_combout\ <= NOT \U1|U1|U3|product~5_combout\;
\U1|U1|U3|ALT_INV_temp~6_combout\ <= NOT \U1|U1|U3|temp~6_combout\;
\U1|U1|U3|ALT_INV_temp~5_combout\ <= NOT \U1|U1|U3|temp~5_combout\;
\U1|U1|U3|ALT_INV_P\(7) <= NOT \U1|U1|U3|P\(7);
\U1|U1|U3|ALT_INV_G\(6) <= NOT \U1|U1|U3|G\(6);
\U1|U1|U3|ALT_INV_carry[12]~3_combout\ <= NOT \U1|U1|U3|carry[12]~3_combout\;
\U1|U1|U3|ALT_INV_temp~4_combout\ <= NOT \U1|U1|U3|temp~4_combout\;
\U1|U1|U3|ALT_INV_temp~3_combout\ <= NOT \U1|U1|U3|temp~3_combout\;
\U1|U1|U3|ALT_INV_P\(5) <= NOT \U1|U1|U3|P\(5);
\U1|U1|U3|ALT_INV_G[11]~1_combout\ <= NOT \U1|U1|U3|G[11]~1_combout\;
\U1|U1|U3|ALT_INV_G[10]~0_combout\ <= NOT \U1|U1|U3|G[10]~0_combout\;
\U1|U1|U3|ALT_INV_temp~2_combout\ <= NOT \U1|U1|U3|temp~2_combout\;
\U1|U1|U3|ALT_INV_G\(2) <= NOT \U1|U1|U3|G\(2);
\U1|U1|U3|ALT_INV_product~4_combout\ <= NOT \U1|U1|U3|product~4_combout\;
\U1|U1|U3|ALT_INV_Cout~2_combout\ <= NOT \U1|U1|U3|Cout~2_combout\;
\U1|U1|U3|ALT_INV_Cout~1_combout\ <= NOT \U1|U1|U3|Cout~1_combout\;
\U1|U1|U3|ALT_INV_temp~1_combout\ <= NOT \U1|U1|U3|temp~1_combout\;
\U1|U1|U3|ALT_INV_product~3_combout\ <= NOT \U1|U1|U3|product~3_combout\;
\U1|U1|U3|ALT_INV_carry[9]~2_combout\ <= NOT \U1|U1|U3|carry[9]~2_combout\;
\U1|U1|U3|ALT_INV_temp~0_combout\ <= NOT \U1|U1|U3|temp~0_combout\;
\U1|U1|U3|ALT_INV_G\(0) <= NOT \U1|U1|U3|G\(0);
\U1|U1|U3|ALT_INV_product~2_combout\ <= NOT \U1|U1|U3|product~2_combout\;
\U1|U1|U3|ALT_INV_carry[8]~1_combout\ <= NOT \U1|U1|U3|carry[8]~1_combout\;
\U1|U1|U3|ALT_INV_carry[8]~0_combout\ <= NOT \U1|U1|U3|carry[8]~0_combout\;
\U1|U1|U3|ALT_INV_P\(3) <= NOT \U1|U1|U3|P\(3);
\U1|U1|U3|ALT_INV_G\(8) <= NOT \U1|U1|U3|G\(8);
\U1|U1|U3|ALT_INV_Cout~0_combout\ <= NOT \U1|U1|U3|Cout~0_combout\;
\U1|U1|U3|ALT_INV_P\(8) <= NOT \U1|U1|U3|P\(8);
\U1|U1|U3|ALT_INV_P\(9) <= NOT \U1|U1|U3|P\(9);
\U1|U1|U3|ALT_INV_P\(10) <= NOT \U1|U1|U3|P\(10);
\U1|U1|U3|ALT_INV_P\(11) <= NOT \U1|U1|U3|P\(11);
\U1|U1|U3|ALT_INV_product~1_combout\ <= NOT \U1|U1|U3|product~1_combout\;
\U1|U1|U3|ALT_INV_product~0_combout\ <= NOT \U1|U1|U3|product~0_combout\;
\U1|U1|U3|ALT_INV_P\(12) <= NOT \U1|U1|U3|P\(12);
\U1|U1|U3|ALT_INV_P\(15) <= NOT \U1|U1|U3|P\(15);
\U3|U1|U4|MUX1|ALT_INV_Mux7~0_combout\ <= NOT \U3|U1|U4|MUX1|Mux7~0_combout\;
\U3|U1|U4|MUX1|ALT_INV_Mux13~0_combout\ <= NOT \U3|U1|U4|MUX1|Mux13~0_combout\;
\U3|U1|U4|MUX1|ALT_INV_Mux12~0_combout\ <= NOT \U3|U1|U4|MUX1|Mux12~0_combout\;
\U3|U1|U4|MUX1|ALT_INV_Mux3~0_combout\ <= NOT \U3|U1|U4|MUX1|Mux3~0_combout\;
\U3|U1|U4|MUX1|ALT_INV_Mux2~0_combout\ <= NOT \U3|U1|U4|MUX1|Mux2~0_combout\;

-- Location: IOOBUF_X25_Y56_N98
\Y[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX6|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X59_Y34_N98
\Y[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX6|Mux14~5_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X35_Y56_N67
\Y[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX6|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X36_Y56_N67
\Y[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX6|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X23_Y56_N67
\Y[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX6|Mux11~1_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X25_Y56_N33
\Y[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX6|Mux10~7_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X40_Y56_N98
\Y[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX6|Mux9~5_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X35_Y56_N36
\Y[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX6|Mux8~1_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X25_Y56_N67
\Y[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX6|Mux7~4_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X19_Y56_N98
\Y[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX6|Mux6~2_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X38_Y56_N2
\Y[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX6|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X30_Y56_N67
\Y[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX6|Mux4~2_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X31_Y56_N36
\Y[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX6|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X40_Y56_N5
\Y[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX6|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X59_Y33_N98
\Y[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX6|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X28_Y56_N98
\Y[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX6|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X59_Y31_N98
\Zero~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Z1|ALT_INV_Output~combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X30_Y56_N98
\AltB~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|AltB~combout\,
	devoe => ww_devoe,
	o => \AltB~output_o\);

-- Location: IOOBUF_X38_Y56_N67
\AltBu~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U1|U3|ALT_INV_Cout~6_combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X33_Y56_N63
\AddnSub~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: IOIBUF_X33_Y56_N32
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X21_Y56_N63
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LABCELL_X30_Y37_N2
\U1|U1|U3|P[15]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|P\(15) = !\AddnSub~input_o\ $ (!\A[15]~input_o\ $ (\B[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	combout => \U1|U1|U3|P\(15));

-- Location: IOIBUF_X59_Y34_N32
\LogicFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: IOIBUF_X31_Y56_N63
\LogicFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: IOIBUF_X28_Y56_N1
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X59_Y34_N1
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X30_Y36_N6
\U2|Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U2|Mux15~0_combout\ = ( \B[0]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[0]~input_o\)) ) ) # ( !\B[0]~input_o\ & ( (\A[0]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011011101011111010111110101111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \U2|Mux15~0_combout\);

-- Location: IOIBUF_X59_Y34_N63
\ShiftFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X59_Y33_N63
\ExtWord~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X31_Y56_N1
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: MLABCELL_X31_Y33_N24
\U3|ShiftCount[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|ShiftCount[3]~0_combout\ = ( \B[3]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \U3|ShiftCount[3]~0_combout\);

-- Location: IOIBUF_X42_Y56_N1
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X30_Y56_N1
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LABCELL_X32_Y34_N28
\U3|Asig[9]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|Asig[9]~10_combout\ = ( \A[9]~input_o\ & ( ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)) # (\A[1]~input_o\) ) ) # ( !\A[9]~input_o\ & ( (\A[1]~input_o\ & (\ShiftFN[1]~input_o\ & \ExtWord~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000111111111110111011111111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \U3|Asig[9]~10_combout\);

-- Location: IOIBUF_X28_Y56_N63
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X35_Y56_N94
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LABCELL_X32_Y34_N6
\U3|Asig[10]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|Asig[10]~9_combout\ = ( \A[10]~input_o\ & ( (!\ShiftFN[1]~input_o\) # ((!\ExtWord~input_o\) # (\A[2]~input_o\)) ) ) # ( !\A[10]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & \A[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \U3|Asig[10]~9_combout\);

-- Location: IOIBUF_X31_Y56_N94
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X59_Y36_N63
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X32_Y34_N14
\U3|Asig[11]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|Asig[11]~11_combout\ = ( \A[11]~input_o\ & ( (!\ShiftFN[1]~input_o\) # ((!\ExtWord~input_o\) # (\A[3]~input_o\)) ) ) # ( !\A[11]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & \A[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \U3|Asig[11]~11_combout\);

-- Location: IOIBUF_X38_Y56_N32
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X32_Y34_N2
\U3|Asig[8]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|Asig[8]~8_combout\ = ( \A[8]~input_o\ & ( ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)) # (\A[0]~input_o\) ) ) # ( !\A[8]~input_o\ & ( (\A[0]~input_o\ & (\ShiftFN[1]~input_o\ & \ExtWord~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \U3|Asig[8]~8_combout\);

-- Location: IOIBUF_X59_Y36_N94
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: MLABCELL_X37_Y33_N2
\U3|U1|U4|ShiftRight1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~2_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( \U3|Asig[11]~11_combout\ ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( \U3|Asig[10]~9_combout\ ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( \U3|Asig[9]~10_combout\ ) ) ) # ( 
-- !\B[0]~input_o\ & ( !\B[1]~input_o\ & ( \U3|Asig[8]~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[9]~10_combout\,
	datab => \U3|ALT_INV_Asig[10]~9_combout\,
	datac => \U3|ALT_INV_Asig[11]~11_combout\,
	datad => \U3|ALT_INV_Asig[8]~8_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftRight1~2_combout\);

-- Location: IOIBUF_X59_Y37_N32
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X35_Y56_N1
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LABCELL_X32_Y34_N38
\U3|Asig[12]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|Asig[12]~13_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\A[12]~input_o\))) # (\ShiftFN[1]~input_o\ & (\A[4]~input_o\)) ) ) # ( !\ExtWord~input_o\ & ( \A[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \U3|Asig[12]~13_combout\);

-- Location: IOIBUF_X36_Y56_N1
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X36_Y56_N94
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X32_Y34_N24
\U3|Asig[13]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|Asig[13]~14_combout\ = ( \A[5]~input_o\ & ( ((\ShiftFN[1]~input_o\ & \ExtWord~input_o\)) # (\A[13]~input_o\) ) ) # ( !\A[5]~input_o\ & ( (\A[13]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100010101010100010001010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \U3|Asig[13]~14_combout\);

-- Location: IOIBUF_X23_Y56_N32
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X59_Y37_N94
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X32_Y34_N10
\U3|Asig[14]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|Asig[14]~12_combout\ = ( \A[14]~input_o\ & ( (!\ExtWord~input_o\) # ((!\ShiftFN[1]~input_o\) # (\A[6]~input_o\)) ) ) # ( !\A[14]~input_o\ & ( (\ExtWord~input_o\ & (\ShiftFN[1]~input_o\ & \A[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \U3|Asig[14]~12_combout\);

-- Location: IOIBUF_X33_Y56_N94
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LABCELL_X32_Y34_N32
\U3|Asig[15]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|Asig[15]~15_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[15]~input_o\))) # (\ExtWord~input_o\ & (\A[7]~input_o\)) ) ) # ( !\ShiftFN[1]~input_o\ & ( \A[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \U3|Asig[15]~15_combout\);

-- Location: MLABCELL_X34_Y33_N4
\U3|U1|U4|ShiftRight1~3\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~3_combout\ = ( \U3|Asig[15]~15_combout\ & ( \B[1]~input_o\ & ( (\U3|Asig[14]~12_combout\) # (\B[0]~input_o\) ) ) ) # ( !\U3|Asig[15]~15_combout\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & \U3|Asig[14]~12_combout\) ) ) ) # ( 
-- \U3|Asig[15]~15_combout\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\U3|Asig[12]~13_combout\)) # (\B[0]~input_o\ & ((\U3|Asig[13]~14_combout\))) ) ) ) # ( !\U3|Asig[15]~15_combout\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\U3|Asig[12]~13_combout\)) # 
-- (\B[0]~input_o\ & ((\U3|Asig[13]~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \U3|ALT_INV_Asig[12]~13_combout\,
	datac => \U3|ALT_INV_Asig[13]~14_combout\,
	datad => \U3|ALT_INV_Asig[14]~12_combout\,
	datae => \U3|ALT_INV_Asig[15]~15_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftRight1~3_combout\);

-- Location: IOIBUF_X59_Y36_N1
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: MLABCELL_X31_Y33_N36
\U3|U1|U4|ShiftRight0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight0~0_combout\ = ( \B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & \U3|U1|U4|ShiftRight1~3_combout\) ) ) # ( !\B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & \U3|U1|U4|ShiftRight1~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftRight1~2_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftRight1~3_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \U3|U1|U4|ShiftRight0~0_combout\);

-- Location: LABCELL_X32_Y34_N0
\U3|Asig[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|Asig[0]~0_combout\ = ( \A[0]~input_o\ & ( (!\ShiftFN[1]~input_o\) # ((!\ExtWord~input_o\) # (\A[8]~input_o\)) ) ) # ( !\A[0]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\A[8]~input_o\ & \ExtWord~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \U3|Asig[0]~0_combout\);

-- Location: MLABCELL_X31_Y33_N2
\U3|U1|U4|ShiftLeft0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~2_combout\ = ( !\B[0]~input_o\ & ( (\U3|Asig[0]~0_combout\ & !\B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[0]~0_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \U3|U1|U4|ShiftLeft0~2_combout\);

-- Location: LABCELL_X32_Y34_N20
\U3|Asig[6]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|Asig[6]~5_combout\ = ( \A[14]~input_o\ & ( ((\ExtWord~input_o\ & \ShiftFN[1]~input_o\)) # (\A[6]~input_o\) ) ) # ( !\A[14]~input_o\ & ( (\A[6]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \U3|Asig[6]~5_combout\);

-- Location: LABCELL_X32_Y34_N26
\U3|Asig[5]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|Asig[5]~6_combout\ = ( \A[5]~input_o\ & ( ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)) # (\A[13]~input_o\) ) ) # ( !\A[5]~input_o\ & ( (\A[13]~input_o\ & (\ShiftFN[1]~input_o\ & \ExtWord~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \U3|Asig[5]~6_combout\);

-- Location: LABCELL_X32_Y34_N22
\U3|Asig[7]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|Asig[7]~7_combout\ = (!\ExtWord~input_o\ & (((\A[7]~input_o\)))) # (\ExtWord~input_o\ & ((!\ShiftFN[1]~input_o\ & ((\A[7]~input_o\))) # (\ShiftFN[1]~input_o\ & (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	combout => \U3|Asig[7]~7_combout\);

-- Location: LABCELL_X32_Y33_N10
\U3|U1|U4|ShiftLeft0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~1_combout\ = ( \U3|Asig[7]~7_combout\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\U3|Asig[6]~5_combout\)) # (\B[0]~input_o\ & ((\U3|Asig[5]~6_combout\))) ) ) ) # ( !\U3|Asig[7]~7_combout\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- (\U3|Asig[6]~5_combout\)) # (\B[0]~input_o\ & ((\U3|Asig[5]~6_combout\))) ) ) ) # ( \U3|Asig[7]~7_combout\ & ( !\B[1]~input_o\ & ( (\U3|Asig[8]~8_combout\) # (\B[0]~input_o\) ) ) ) # ( !\U3|Asig[7]~7_combout\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- \U3|Asig[8]~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[6]~5_combout\,
	datab => \U3|ALT_INV_Asig[5]~6_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \U3|ALT_INV_Asig[8]~8_combout\,
	datae => \U3|ALT_INV_Asig[7]~7_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftLeft0~1_combout\);

-- Location: LABCELL_X32_Y34_N30
\U3|Asig[1]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|Asig[1]~2_combout\ = ( \A[9]~input_o\ & ( ((\ShiftFN[1]~input_o\ & \ExtWord~input_o\)) # (\A[1]~input_o\) ) ) # ( !\A[9]~input_o\ & ( (\A[1]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100010101010100010001010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \U3|Asig[1]~2_combout\);

-- Location: LABCELL_X32_Y34_N36
\U3|Asig[4]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|Asig[4]~4_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\A[4]~input_o\)) # (\ShiftFN[1]~input_o\ & ((\A[12]~input_o\))) ) ) # ( !\ExtWord~input_o\ & ( \A[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \U3|Asig[4]~4_combout\);

-- Location: LABCELL_X32_Y34_N4
\U3|Asig[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|Asig[2]~1_combout\ = ( \A[10]~input_o\ & ( ((\ExtWord~input_o\ & \ShiftFN[1]~input_o\)) # (\A[2]~input_o\) ) ) # ( !\A[10]~input_o\ & ( (\A[2]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \U3|Asig[2]~1_combout\);

-- Location: LABCELL_X32_Y34_N12
\U3|Asig[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|Asig[3]~3_combout\ = ( \A[11]~input_o\ & ( ((\ShiftFN[1]~input_o\ & \ExtWord~input_o\)) # (\A[3]~input_o\) ) ) # ( !\A[11]~input_o\ & ( (\A[3]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \U3|Asig[3]~3_combout\);

-- Location: LABCELL_X32_Y33_N12
\U3|U1|U4|ShiftLeft0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~3_combout\ = ( \B[0]~input_o\ & ( \U3|Asig[3]~3_combout\ & ( (!\B[1]~input_o\) # (\U3|Asig[1]~2_combout\) ) ) ) # ( !\B[0]~input_o\ & ( \U3|Asig[3]~3_combout\ & ( (!\B[1]~input_o\ & (\U3|Asig[4]~4_combout\)) # (\B[1]~input_o\ & 
-- ((\U3|Asig[2]~1_combout\))) ) ) ) # ( \B[0]~input_o\ & ( !\U3|Asig[3]~3_combout\ & ( (\B[1]~input_o\ & \U3|Asig[1]~2_combout\) ) ) ) # ( !\B[0]~input_o\ & ( !\U3|Asig[3]~3_combout\ & ( (!\B[1]~input_o\ & (\U3|Asig[4]~4_combout\)) # (\B[1]~input_o\ & 
-- ((\U3|Asig[2]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000100010001000100001010010111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \U3|ALT_INV_Asig[1]~2_combout\,
	datac => \U3|ALT_INV_Asig[4]~4_combout\,
	datad => \U3|ALT_INV_Asig[2]~1_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \U3|ALT_INV_Asig[3]~3_combout\,
	combout => \U3|U1|U4|ShiftLeft0~3_combout\);

-- Location: MLABCELL_X31_Y33_N6
\U3|U1|U4|ShiftLeft0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~4_combout\ = ( \U3|ShiftCount[3]~0_combout\ & ( (!\B[2]~input_o\ & \U3|U1|U4|ShiftLeft0~2_combout\) ) ) # ( !\U3|ShiftCount[3]~0_combout\ & ( (!\B[2]~input_o\ & (\U3|U1|U4|ShiftLeft0~1_combout\)) # (\B[2]~input_o\ & 
-- ((\U3|U1|U4|ShiftLeft0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \U3|U1|U4|ALT_INV_ShiftLeft0~2_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftLeft0~1_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~3_combout\,
	dataf => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	combout => \U3|U1|U4|ShiftLeft0~4_combout\);

-- Location: IOIBUF_X59_Y33_N1
\ShiftFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: MLABCELL_X31_Y33_N20
\U3|U1|U4|MUX1|Mux7~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux7~0_combout\ = ( !\ShiftFN[0]~input_o\ & ( (((!\ShiftFN[1]~input_o\ & ((\U3|Asig[8]~8_combout\))) # (\ShiftFN[1]~input_o\ & (\U3|U1|U4|ShiftRight0~0_combout\)))) ) ) # ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & 
-- ((((\U3|U1|U4|ShiftLeft0~4_combout\))))) # (\ShiftFN[1]~input_o\ & (((\U3|ShiftCount[3]~0_combout\ & ((\U3|Asig[15]~15_combout\)))) # (\U3|U1|U4|ShiftRight0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000011110000111100110011001100110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftRight0~0_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftLeft0~4_combout\,
	datad => \U3|ALT_INV_Asig[15]~15_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	datag => \U3|ALT_INV_Asig[8]~8_combout\,
	combout => \U3|U1|U4|MUX1|Mux7~0_combout\);

-- Location: LABCELL_X32_Y33_N6
\U3|U1|U4|ShiftRight1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~1_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( \U3|Asig[7]~7_combout\ ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( \U3|Asig[6]~5_combout\ ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( \U3|Asig[5]~6_combout\ ) ) ) # ( 
-- !\B[0]~input_o\ & ( !\B[1]~input_o\ & ( \U3|Asig[4]~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[6]~5_combout\,
	datab => \U3|ALT_INV_Asig[5]~6_combout\,
	datac => \U3|ALT_INV_Asig[4]~4_combout\,
	datad => \U3|ALT_INV_Asig[7]~7_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftRight1~1_combout\);

-- Location: LABCELL_X32_Y33_N2
\U3|U1|U4|ShiftRight1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~0_combout\ = ( \B[0]~input_o\ & ( \U3|Asig[3]~3_combout\ & ( (\U3|Asig[1]~2_combout\) # (\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \U3|Asig[3]~3_combout\ & ( (!\B[1]~input_o\ & ((\U3|Asig[0]~0_combout\))) # (\B[1]~input_o\ & 
-- (\U3|Asig[2]~1_combout\)) ) ) ) # ( \B[0]~input_o\ & ( !\U3|Asig[3]~3_combout\ & ( (!\B[1]~input_o\ & \U3|Asig[1]~2_combout\) ) ) ) # ( !\B[0]~input_o\ & ( !\U3|Asig[3]~3_combout\ & ( (!\B[1]~input_o\ & ((\U3|Asig[0]~0_combout\))) # (\B[1]~input_o\ & 
-- (\U3|Asig[2]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000101101011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \U3|ALT_INV_Asig[1]~2_combout\,
	datac => \U3|ALT_INV_Asig[2]~1_combout\,
	datad => \U3|ALT_INV_Asig[0]~0_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \U3|ALT_INV_Asig[3]~3_combout\,
	combout => \U3|U1|U4|ShiftRight1~0_combout\);

-- Location: MLABCELL_X31_Y33_N34
\U3|U1|U4|ShiftRight1~4\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~4_combout\ = ( \U3|U1|U4|ShiftRight1~0_combout\ & ( \B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & ((\U3|U1|U4|ShiftRight1~1_combout\))) # (\U3|ShiftCount[3]~0_combout\ & (\U3|U1|U4|ShiftRight1~3_combout\)) ) ) ) # ( 
-- !\U3|U1|U4|ShiftRight1~0_combout\ & ( \B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & ((\U3|U1|U4|ShiftRight1~1_combout\))) # (\U3|ShiftCount[3]~0_combout\ & (\U3|U1|U4|ShiftRight1~3_combout\)) ) ) ) # ( \U3|U1|U4|ShiftRight1~0_combout\ & ( 
-- !\B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\) # (\U3|U1|U4|ShiftRight1~2_combout\) ) ) ) # ( !\U3|U1|U4|ShiftRight1~0_combout\ & ( !\B[2]~input_o\ & ( (\U3|U1|U4|ShiftRight1~2_combout\ & \U3|ShiftCount[3]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftRight1~3_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftRight1~2_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftRight1~1_combout\,
	datad => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	datae => \U3|U1|U4|ALT_INV_ShiftRight1~0_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \U3|U1|U4|ShiftRight1~4_combout\);

-- Location: MLABCELL_X31_Y33_N8
\MUX1|Y[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX1|Y[0]~0_combout\ = ( \ShiftFN[1]~input_o\ & ( \ExtWord~input_o\ ) ) # ( !\ShiftFN[1]~input_o\ & ( !\ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \MUX1|Y[0]~0_combout\);

-- Location: MLABCELL_X31_Y33_N28
\U3|U1|U4|ShiftLeft0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~0_combout\ = ( !\B[2]~input_o\ & ( !\U3|ShiftCount[3]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \U3|U1|U4|ShiftLeft0~0_combout\);

-- Location: MLABCELL_X31_Y33_N30
\U3|U1|U4|MUX1|Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux15~0_combout\ = ( !\B[0]~input_o\ & ( (\U3|U1|U4|ShiftLeft0~0_combout\ & !\B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftLeft0~0_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \U3|U1|U4|MUX1|Mux15~0_combout\);

-- Location: MLABCELL_X31_Y36_N4
\U3|U1|U4|MUX1|Mux15~1\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux15~1_combout\ = ( \U3|Asig[0]~0_combout\ & ( (!\ShiftFN[0]~input_o\) # (\U3|U1|U4|MUX1|Mux15~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|U1|U4|MUX1|ALT_INV_Mux15~0_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \U3|ALT_INV_Asig[0]~0_combout\,
	combout => \U3|U1|U4|MUX1|Mux15~1_combout\);

-- Location: LABCELL_X30_Y36_N22
\U1|U1|U3|S[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|S[0]~0_combout\ = ( \B[0]~input_o\ & ( !\A[0]~input_o\ ) ) # ( !\B[0]~input_o\ & ( \A[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \U1|U1|U3|S[0]~0_combout\);

-- Location: LABCELL_X30_Y36_N28
\MUX5|Y[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX5|Y[0]~0_combout\ = ( \U3|U1|U4|MUX1|Mux15~1_combout\ & ( \U1|U1|U3|S[0]~0_combout\ & ( (!\ShiftFN[1]~input_o\) # ((!\MUX1|Y[0]~0_combout\ & ((\U3|U1|U4|ShiftRight1~4_combout\))) # (\MUX1|Y[0]~0_combout\ & (\U3|U1|U4|MUX1|Mux7~0_combout\))) ) ) ) # ( 
-- !\U3|U1|U4|MUX1|Mux15~1_combout\ & ( \U1|U1|U3|S[0]~0_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\MUX1|Y[0]~0_combout\)))) # (\ShiftFN[1]~input_o\ & ((!\MUX1|Y[0]~0_combout\ & ((\U3|U1|U4|ShiftRight1~4_combout\))) # (\MUX1|Y[0]~0_combout\ & 
-- (\U3|U1|U4|MUX1|Mux7~0_combout\)))) ) ) ) # ( \U3|U1|U4|MUX1|Mux15~1_combout\ & ( !\U1|U1|U3|S[0]~0_combout\ & ( (!\ShiftFN[1]~input_o\ & (((!\MUX1|Y[0]~0_combout\)))) # (\ShiftFN[1]~input_o\ & ((!\MUX1|Y[0]~0_combout\ & 
-- ((\U3|U1|U4|ShiftRight1~4_combout\))) # (\MUX1|Y[0]~0_combout\ & (\U3|U1|U4|MUX1|Mux7~0_combout\)))) ) ) ) # ( !\U3|U1|U4|MUX1|Mux15~1_combout\ & ( !\U1|U1|U3|S[0]~0_combout\ & ( (\ShiftFN[1]~input_o\ & ((!\MUX1|Y[0]~0_combout\ & 
-- ((\U3|U1|U4|ShiftRight1~4_combout\))) # (\MUX1|Y[0]~0_combout\ & (\U3|U1|U4|MUX1|Mux7~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \U3|U1|U4|MUX1|ALT_INV_Mux7~0_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftRight1~4_combout\,
	datad => \MUX1|ALT_INV_Y[0]~0_combout\,
	datae => \U3|U1|U4|MUX1|ALT_INV_Mux15~1_combout\,
	dataf => \U1|U1|U3|ALT_INV_S[0]~0_combout\,
	combout => \MUX5|Y[0]~0_combout\);

-- Location: IOIBUF_X59_Y37_N63
\FuncClass[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: IOIBUF_X25_Y56_N1
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X28_Y56_N32
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: MLABCELL_X29_Y37_N26
\U1|U1|U3|P[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|P\(8) = ( \A[8]~input_o\ & ( !\AddnSub~input_o\ $ (\B[8]~input_o\) ) ) # ( !\A[8]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \U1|U1|U3|P\(8));

-- Location: MLABCELL_X29_Y37_N30
\U1|U1|U3|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|Cout~0_combout\ = ( \A[7]~input_o\ & ( (\U1|U1|U3|P\(8) & (!\AddnSub~input_o\ $ (!\B[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \U1|U1|U3|ALT_INV_P\(8),
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \U1|U1|U3|Cout~0_combout\);

-- Location: IOIBUF_X33_Y56_N1
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LABCELL_X30_Y37_N28
\U1|U1|U3|P[11]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|P\(11) = !\B[11]~input_o\ $ (!\A[11]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	combout => \U1|U1|U3|P\(11));

-- Location: IOIBUF_X17_Y56_N1
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LABCELL_X30_Y37_N0
\U1|U1|U3|P[10]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|P\(10) = ( \A[10]~input_o\ & ( !\AddnSub~input_o\ $ (\B[10]~input_o\) ) ) # ( !\A[10]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \U1|U1|U3|P\(10));

-- Location: LABCELL_X30_Y38_N2
\U1|U1|U3|P[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|P\(3) = ( \A[3]~input_o\ & ( !\AddnSub~input_o\ $ (\B[3]~input_o\) ) ) # ( !\A[3]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \U1|U1|U3|P\(3));

-- Location: IOIBUF_X23_Y56_N94
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X30_Y56_N32
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X30_Y38_N4
\U1|U1|U3|carry[8]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[8]~1_combout\ = ( \AddnSub~input_o\ & ( (!\A[5]~input_o\ & (!\B[5]~input_o\ & (!\A[4]~input_o\ $ (\B[4]~input_o\)))) # (\A[5]~input_o\ & (\B[5]~input_o\ & (!\A[4]~input_o\ $ (\B[4]~input_o\)))) ) ) # ( !\AddnSub~input_o\ & ( 
-- (!\A[5]~input_o\ & (\B[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\)))) # (\A[5]~input_o\ & (!\B[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000010010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \U1|U1|U3|carry[8]~1_combout\);

-- Location: IOIBUF_X19_Y56_N32
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X30_Y38_N0
\U1|U1|U3|carry[8]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[8]~0_combout\ = ( \A[6]~input_o\ & ( (!\AddnSub~input_o\ & (!\B[6]~input_o\ & (!\B[7]~input_o\ $ (!\A[7]~input_o\)))) # (\AddnSub~input_o\ & (\B[6]~input_o\ & (!\B[7]~input_o\ $ (\A[7]~input_o\)))) ) ) # ( !\A[6]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\B[6]~input_o\ & (!\B[7]~input_o\ $ (!\A[7]~input_o\)))) # (\AddnSub~input_o\ & (!\B[6]~input_o\ & (!\B[7]~input_o\ $ (\A[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000101001000001000010100100001001000001000010100100000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \U1|U1|U3|carry[8]~0_combout\);

-- Location: MLABCELL_X29_Y35_N2
\U1|U1|U3|product~2\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|product~2_combout\ = ( \B[2]~input_o\ & ( \AddnSub~input_o\ & ( (\U1|U1|U3|P\(3) & (\U1|U1|U3|carry[8]~1_combout\ & (\A[2]~input_o\ & \U1|U1|U3|carry[8]~0_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \AddnSub~input_o\ & ( (\U1|U1|U3|P\(3) & 
-- (\U1|U1|U3|carry[8]~1_combout\ & (!\A[2]~input_o\ & \U1|U1|U3|carry[8]~0_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\AddnSub~input_o\ & ( (\U1|U1|U3|P\(3) & (\U1|U1|U3|carry[8]~1_combout\ & (!\A[2]~input_o\ & \U1|U1|U3|carry[8]~0_combout\))) ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\AddnSub~input_o\ & ( (\U1|U1|U3|P\(3) & (\U1|U1|U3|carry[8]~1_combout\ & (\A[2]~input_o\ & \U1|U1|U3|carry[8]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000001000000000000000100000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_P\(3),
	datab => \U1|U1|U3|ALT_INV_carry[8]~1_combout\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \U1|U1|U3|ALT_INV_carry[8]~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \U1|U1|U3|product~2_combout\);

-- Location: MLABCELL_X29_Y35_N4
\U1|U1|U3|G[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|G\(0) = ( \B[0]~input_o\ & ( (\A[0]~input_o\ & !\AddnSub~input_o\) ) ) # ( !\B[0]~input_o\ & ( (\A[0]~input_o\ & \AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \U1|U1|U3|G\(0));

-- Location: MLABCELL_X29_Y35_N8
\U1|U1|U3|temp~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|temp~0_combout\ = ( \B[1]~input_o\ & ( \A[1]~input_o\ & ( (\U1|U1|U3|product~2_combout\ & (\AddnSub~input_o\ & (\U1|U1|U3|G\(0) & \U1|U1|U3|P\(8)))) ) ) ) # ( !\B[1]~input_o\ & ( \A[1]~input_o\ & ( (\U1|U1|U3|product~2_combout\ & 
-- (!\AddnSub~input_o\ & (\U1|U1|U3|G\(0) & \U1|U1|U3|P\(8)))) ) ) ) # ( \B[1]~input_o\ & ( !\A[1]~input_o\ & ( (\U1|U1|U3|product~2_combout\ & (!\AddnSub~input_o\ & (\U1|U1|U3|G\(0) & \U1|U1|U3|P\(8)))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[1]~input_o\ & ( 
-- (\U1|U1|U3|product~2_combout\ & (\AddnSub~input_o\ & (\U1|U1|U3|G\(0) & \U1|U1|U3|P\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000010000000000000001000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_product~2_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \U1|U1|U3|ALT_INV_G\(0),
	datad => \U1|U1|U3|ALT_INV_P\(8),
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \U1|U1|U3|temp~0_combout\);

-- Location: MLABCELL_X29_Y37_N24
\U1|U1|U3|G[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|G\(8) = ( \A[8]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \U1|U1|U3|G\(8));

-- Location: MLABCELL_X29_Y37_N32
\U1|U1|U3|carry[9]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[9]~2_combout\ = ( !\U1|U1|U3|G\(8) & ( !\U1|U1|U3|temp~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|U1|U3|ALT_INV_temp~0_combout\,
	dataf => \U1|U1|U3|ALT_INV_G\(8),
	combout => \U1|U1|U3|carry[9]~2_combout\);

-- Location: IOIBUF_X19_Y56_N63
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: MLABCELL_X29_Y37_N22
\U1|U1|U3|P[9]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|P\(9) = !\AddnSub~input_o\ $ (!\B[9]~input_o\ $ (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	combout => \U1|U1|U3|P\(9));

-- Location: MLABCELL_X29_Y37_N20
\U1|U1|U3|product~3\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|product~3_combout\ = ( \A[8]~input_o\ & ( (!\AddnSub~input_o\ & (!\B[8]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\)))) # (\AddnSub~input_o\ & (\B[8]~input_o\ & (!\B[9]~input_o\ $ (\A[9]~input_o\)))) ) ) # ( !\A[8]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\B[8]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\)))) # (\AddnSub~input_o\ & (!\B[8]~input_o\ & (!\B[9]~input_o\ $ (\A[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000011000010000100001100000100100100000010010010010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \U1|U1|U3|product~3_combout\);

-- Location: MLABCELL_X29_Y35_N32
\U1|U1|U3|temp~1\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|temp~1_combout\ = ( \B[1]~input_o\ & ( \A[1]~input_o\ & ( (\U1|U1|U3|product~2_combout\ & (\U1|U1|U3|product~3_combout\ & !\AddnSub~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[1]~input_o\ & ( (\U1|U1|U3|product~2_combout\ & 
-- (\U1|U1|U3|product~3_combout\ & \AddnSub~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|U3|ALT_INV_product~2_combout\,
	datac => \U1|U1|U3|ALT_INV_product~3_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \U1|U1|U3|temp~1_combout\);

-- Location: MLABCELL_X29_Y37_N28
\U1|U1|U3|Cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|Cout~1_combout\ = (!\U1|U1|U3|temp~1_combout\ & ((!\A[9]~input_o\) # (!\AddnSub~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010010000111100001001000011110000100100001111000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \U1|U1|U3|ALT_INV_temp~1_combout\,
	datad => \ALT_INV_A[9]~input_o\,
	combout => \U1|U1|U3|Cout~1_combout\);

-- Location: MLABCELL_X29_Y37_N38
\U1|U1|U3|Cout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|Cout~2_combout\ = ( \U1|U1|U3|P\(9) & ( \U1|U1|U3|Cout~1_combout\ & ( (\U1|U1|U3|P\(11) & (\U1|U1|U3|P\(10) & ((!\U1|U1|U3|carry[9]~2_combout\) # (\U1|U1|U3|Cout~0_combout\)))) ) ) ) # ( \U1|U1|U3|P\(9) & ( !\U1|U1|U3|Cout~1_combout\ & ( 
-- (\U1|U1|U3|P\(11) & \U1|U1|U3|P\(10)) ) ) ) # ( !\U1|U1|U3|P\(9) & ( !\U1|U1|U3|Cout~1_combout\ & ( (\U1|U1|U3|P\(11) & \U1|U1|U3|P\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_Cout~0_combout\,
	datab => \U1|U1|U3|ALT_INV_P\(11),
	datac => \U1|U1|U3|ALT_INV_P\(10),
	datad => \U1|U1|U3|ALT_INV_carry[9]~2_combout\,
	datae => \U1|U1|U3|ALT_INV_P\(9),
	dataf => \U1|U1|U3|ALT_INV_Cout~1_combout\,
	combout => \U1|U1|U3|Cout~2_combout\);

-- Location: IOIBUF_X23_Y56_N1
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X42_Y56_N32
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LABCELL_X32_Y37_N6
\U1|U1|U3|product~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|product~0_combout\ = ( \B[14]~input_o\ & ( (!\AddnSub~input_o\ & (!\A[14]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\)))) # (\AddnSub~input_o\ & (\A[14]~input_o\ & (!\A[13]~input_o\ $ (\B[13]~input_o\)))) ) ) # ( !\B[14]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\A[14]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\)))) # (\AddnSub~input_o\ & (!\A[14]~input_o\ & (!\A[13]~input_o\ $ (\B[13]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000100100010000100010010000011000100000010001100010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \U1|U1|U3|product~0_combout\);

-- Location: MLABCELL_X29_Y38_N22
\U1|U1|U3|product~4\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|product~4_combout\ = ( \U1|U1|U3|product~3_combout\ & ( \U1|U1|U3|P\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|U3|ALT_INV_P\(10),
	dataf => \U1|U1|U3|ALT_INV_product~3_combout\,
	combout => \U1|U1|U3|product~4_combout\);

-- Location: IOIBUF_X36_Y56_N32
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LABCELL_X32_Y37_N2
\U1|U1|U3|P[12]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|P\(12) = !\B[12]~input_o\ $ (!\A[12]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	combout => \U1|U1|U3|P\(12));

-- Location: MLABCELL_X31_Y37_N4
\U1|U1|U3|product~5\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|product~5_combout\ = (\U1|U1|U3|P\(11) & \U1|U1|U3|P\(12))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|U3|ALT_INV_P\(11),
	datac => \U1|U1|U3|ALT_INV_P\(12),
	combout => \U1|U1|U3|product~5_combout\);

-- Location: LABCELL_X30_Y37_N24
\U1|U1|U3|temp~7\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|temp~7_combout\ = ( \U1|U1|U3|product~5_combout\ & ( (\U1|U1|U3|product~0_combout\ & \U1|U1|U3|product~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_product~0_combout\,
	datad => \U1|U1|U3|ALT_INV_product~4_combout\,
	dataf => \U1|U1|U3|ALT_INV_product~5_combout\,
	combout => \U1|U1|U3|temp~7_combout\);

-- Location: LABCELL_X30_Y38_N18
\U1|U1|U3|G[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|G\(5) = ( \B[5]~input_o\ & ( (\A[5]~input_o\ & !\AddnSub~input_o\) ) ) # ( !\B[5]~input_o\ & ( (\A[5]~input_o\ & \AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \U1|U1|U3|G\(5));

-- Location: LABCELL_X32_Y37_N36
\U1|U1|U3|P[13]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|P\(13) = !\AddnSub~input_o\ $ (!\A[13]~input_o\ $ (\B[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	combout => \U1|U1|U3|P\(13));

-- Location: LABCELL_X30_Y38_N26
\U1|U1|U3|temp~8\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|temp~8_combout\ = ( \U1|U1|U3|P\(13) & ( (\U1|U1|U3|product~5_combout\ & (\U1|U1|U3|product~4_combout\ & (\U1|U1|U3|G\(5) & \U1|U1|U3|carry[8]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_product~5_combout\,
	datab => \U1|U1|U3|ALT_INV_product~4_combout\,
	datac => \U1|U1|U3|ALT_INV_G\(5),
	datad => \U1|U1|U3|ALT_INV_carry[8]~0_combout\,
	dataf => \U1|U1|U3|ALT_INV_P\(13),
	combout => \U1|U1|U3|temp~8_combout\);

-- Location: LABCELL_X32_Y37_N32
\U1|U1|U3|P[14]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|P\(14) = !\B[14]~input_o\ $ (!\A[14]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	combout => \U1|U1|U3|P\(14));

-- Location: MLABCELL_X31_Y37_N8
\U1|U1|U3|temp~9\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|temp~9_combout\ = ( \U1|U1|U3|P\(14) & ( \U1|U1|U3|temp~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|U3|ALT_INV_temp~8_combout\,
	dataf => \U1|U1|U3|ALT_INV_P\(14),
	combout => \U1|U1|U3|temp~9_combout\);

-- Location: LABCELL_X30_Y37_N26
\U1|U1|U3|product~1\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|product~1_combout\ = ( \U1|U1|U3|P\(12) & ( \U1|U1|U3|product~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_product~0_combout\,
	dataf => \U1|U1|U3|ALT_INV_P\(12),
	combout => \U1|U1|U3|product~1_combout\);

-- Location: LABCELL_X30_Y38_N20
\U1|U1|U3|P[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|P\(7) = ( \AddnSub~input_o\ & ( !\B[7]~input_o\ $ (\A[7]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( !\B[7]~input_o\ $ (!\A[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \U1|U1|U3|P\(7));

-- Location: MLABCELL_X29_Y38_N6
\U1|U1|U3|G[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|G\(6) = ( !\B[6]~input_o\ & ( \AddnSub~input_o\ & ( \A[6]~input_o\ ) ) ) # ( \B[6]~input_o\ & ( !\AddnSub~input_o\ & ( \A[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010101010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \U1|U1|U3|G\(6));

-- Location: LABCELL_X30_Y37_N18
\U1|U1|U3|temp~5\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|temp~5_combout\ = ( \U1|U1|U3|G\(6) & ( (\U1|U1|U3|P\(11) & (\U1|U1|U3|product~4_combout\ & (\U1|U1|U3|product~1_combout\ & \U1|U1|U3|P\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_P\(11),
	datab => \U1|U1|U3|ALT_INV_product~4_combout\,
	datac => \U1|U1|U3|ALT_INV_product~1_combout\,
	datad => \U1|U1|U3|ALT_INV_P\(7),
	dataf => \U1|U1|U3|ALT_INV_G\(6),
	combout => \U1|U1|U3|temp~5_combout\);

-- Location: MLABCELL_X29_Y35_N36
\U1|U1|U3|temp~6\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|temp~6_combout\ = ( \B[1]~input_o\ & ( \A[1]~input_o\ & ( (\U1|U1|U3|product~2_combout\ & (\AddnSub~input_o\ & (!\B[0]~input_o\ $ (\A[0]~input_o\)))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[1]~input_o\ & ( (\U1|U1|U3|product~2_combout\ & 
-- (\AddnSub~input_o\ & (!\B[0]~input_o\ $ (\A[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100001000000000000000000000000000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \U1|U1|U3|ALT_INV_product~2_combout\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \U1|U1|U3|temp~6_combout\);

-- Location: LABCELL_X30_Y38_N30
\U1|U1|U3|G[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|G\(4) = ( \A[4]~input_o\ & ( !\B[4]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \U1|U1|U3|G\(4));

-- Location: LABCELL_X30_Y38_N16
\U1|U1|U3|P[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|P\(5) = ( \B[5]~input_o\ & ( !\A[5]~input_o\ $ (\AddnSub~input_o\) ) ) # ( !\B[5]~input_o\ & ( !\A[5]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \U1|U1|U3|P\(5));

-- Location: LABCELL_X30_Y38_N24
\U1|U1|U3|temp~10\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|temp~10_combout\ = ( \U1|U1|U3|P\(5) & ( (\U1|U1|U3|product~5_combout\ & (\U1|U1|U3|product~4_combout\ & (\U1|U1|U3|carry[8]~0_combout\ & \U1|U1|U3|G\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_product~5_combout\,
	datab => \U1|U1|U3|ALT_INV_product~4_combout\,
	datac => \U1|U1|U3|ALT_INV_carry[8]~0_combout\,
	datad => \U1|U1|U3|ALT_INV_G\(4),
	dataf => \U1|U1|U3|ALT_INV_P\(5),
	combout => \U1|U1|U3|temp~10_combout\);

-- Location: LABCELL_X32_Y37_N38
\U1|U1|U3|G[13]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|G[13]~2_combout\ = (\A[13]~input_o\ & (!\AddnSub~input_o\ $ (!\B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001000010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	combout => \U1|U1|U3|G[13]~2_combout\);

-- Location: LABCELL_X32_Y37_N20
\U1|U1|U3|Cout~3\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|Cout~3_combout\ = ( \AddnSub~input_o\ & ( \B[14]~input_o\ & ( (!\A[15]~input_o\ & (\A[14]~input_o\ & (\U1|U1|U3|G[13]~2_combout\ & !\B[15]~input_o\))) # (\A[15]~input_o\ & ((!\B[15]~input_o\) # ((\A[14]~input_o\ & \U1|U1|U3|G[13]~2_combout\)))) 
-- ) ) ) # ( !\AddnSub~input_o\ & ( \B[14]~input_o\ & ( (!\A[15]~input_o\ & (\B[15]~input_o\ & ((\U1|U1|U3|G[13]~2_combout\) # (\A[14]~input_o\)))) # (\A[15]~input_o\ & (((\B[15]~input_o\) # (\U1|U1|U3|G[13]~2_combout\)) # (\A[14]~input_o\))) ) ) ) # ( 
-- \AddnSub~input_o\ & ( !\B[14]~input_o\ & ( (!\A[15]~input_o\ & (!\B[15]~input_o\ & ((\U1|U1|U3|G[13]~2_combout\) # (\A[14]~input_o\)))) # (\A[15]~input_o\ & (((!\B[15]~input_o\) # (\U1|U1|U3|G[13]~2_combout\)) # (\A[14]~input_o\))) ) ) ) # ( 
-- !\AddnSub~input_o\ & ( !\B[14]~input_o\ & ( (!\A[15]~input_o\ & (\A[14]~input_o\ & (\U1|U1|U3|G[13]~2_combout\ & \B[15]~input_o\))) # (\A[15]~input_o\ & (((\A[14]~input_o\ & \U1|U1|U3|G[13]~2_combout\)) # (\B[15]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111011111110001010100010101011111110101011100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \U1|U1|U3|ALT_INV_G[13]~2_combout\,
	datad => \ALT_INV_B[15]~input_o\,
	datae => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \U1|U1|U3|Cout~3_combout\);

-- Location: LABCELL_X32_Y37_N0
\U1|U1|U3|temp~11\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|temp~11_combout\ = (\A[12]~input_o\ & (!\B[12]~input_o\ $ (!\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	combout => \U1|U1|U3|temp~11_combout\);

-- Location: LABCELL_X32_Y37_N8
\U1|U1|U3|Cout~4\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|Cout~4_combout\ = ( \U1|U1|U3|P\(15) & ( (!\U1|U1|U3|Cout~3_combout\ & ((!\U1|U1|U3|product~0_combout\) # ((!\U1|U1|U3|temp~10_combout\ & !\U1|U1|U3|temp~11_combout\)))) ) ) # ( !\U1|U1|U3|P\(15) & ( !\U1|U1|U3|Cout~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011100000110000001110000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_temp~10_combout\,
	datab => \U1|U1|U3|ALT_INV_product~0_combout\,
	datac => \U1|U1|U3|ALT_INV_Cout~3_combout\,
	datad => \U1|U1|U3|ALT_INV_temp~11_combout\,
	dataf => \U1|U1|U3|ALT_INV_P\(15),
	combout => \U1|U1|U3|Cout~4_combout\);

-- Location: LABCELL_X30_Y37_N22
\U1|U1|U3|Cout~5\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|Cout~5_combout\ = ( \U1|U1|U3|temp~6_combout\ & ( \U1|U1|U3|Cout~4_combout\ & ( (!\U1|U1|U3|P\(15)) # ((!\U1|U1|U3|temp~7_combout\ & (!\U1|U1|U3|temp~9_combout\ & !\U1|U1|U3|temp~5_combout\))) ) ) ) # ( !\U1|U1|U3|temp~6_combout\ & ( 
-- \U1|U1|U3|Cout~4_combout\ & ( (!\U1|U1|U3|P\(15)) # ((!\U1|U1|U3|temp~9_combout\ & !\U1|U1|U3|temp~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100110011001110110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_temp~7_combout\,
	datab => \U1|U1|U3|ALT_INV_P\(15),
	datac => \U1|U1|U3|ALT_INV_temp~9_combout\,
	datad => \U1|U1|U3|ALT_INV_temp~5_combout\,
	datae => \U1|U1|U3|ALT_INV_temp~6_combout\,
	dataf => \U1|U1|U3|ALT_INV_Cout~4_combout\,
	combout => \U1|U1|U3|Cout~5_combout\);

-- Location: LABCELL_X30_Y38_N8
\U1|U1|U3|G[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|G\(2) = ( \AddnSub~input_o\ & ( (\A[2]~input_o\ & !\B[2]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( (\A[2]~input_o\ & \B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \U1|U1|U3|G\(2));

-- Location: LABCELL_X30_Y38_N12
\U1|U1|U3|temp~2\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|temp~2_combout\ = ( \U1|U1|U3|P\(3) & ( (\U1|U1|U3|carry[8]~0_combout\ & (\U1|U1|U3|product~4_combout\ & (\U1|U1|U3|carry[8]~1_combout\ & \U1|U1|U3|G\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_carry[8]~0_combout\,
	datab => \U1|U1|U3|ALT_INV_product~4_combout\,
	datac => \U1|U1|U3|ALT_INV_carry[8]~1_combout\,
	datad => \U1|U1|U3|ALT_INV_G\(2),
	dataf => \U1|U1|U3|ALT_INV_P\(3),
	combout => \U1|U1|U3|temp~2_combout\);

-- Location: LABCELL_X30_Y37_N32
\U1|U1|U3|G[10]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|G[10]~0_combout\ = ( \A[10]~input_o\ & ( !\B[10]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \U1|U1|U3|G[10]~0_combout\);

-- Location: LABCELL_X30_Y35_N0
\U1|U1|U3|temp~3\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|temp~3_combout\ = ( \A[3]~input_o\ & ( \AddnSub~input_o\ & ( (!\B[3]~input_o\ & (!\A[4]~input_o\ $ (\B[4]~input_o\))) ) ) ) # ( \A[3]~input_o\ & ( !\AddnSub~input_o\ & ( (\B[3]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010010001000000000000000001000100001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \U1|U1|U3|temp~3_combout\);

-- Location: LABCELL_X30_Y37_N16
\U1|U1|U3|temp~4\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|temp~4_combout\ = ( \U1|U1|U3|P\(5) & ( (\U1|U1|U3|P\(11) & (\U1|U1|U3|product~4_combout\ & (\U1|U1|U3|temp~3_combout\ & \U1|U1|U3|carry[8]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_P\(11),
	datab => \U1|U1|U3|ALT_INV_product~4_combout\,
	datac => \U1|U1|U3|ALT_INV_temp~3_combout\,
	datad => \U1|U1|U3|ALT_INV_carry[8]~0_combout\,
	dataf => \U1|U1|U3|ALT_INV_P\(5),
	combout => \U1|U1|U3|temp~4_combout\);

-- Location: LABCELL_X32_Y37_N10
\U1|U1|U3|G[11]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|G[11]~1_combout\ = ( \A[11]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \U1|U1|U3|G[11]~1_combout\);

-- Location: MLABCELL_X31_Y37_N22
\U1|U1|U3|carry[12]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[12]~3_combout\ = ( !\U1|U1|U3|G[11]~1_combout\ & ( (!\U1|U1|U3|temp~4_combout\ & ((!\U1|U1|U3|P\(11)) # ((!\U1|U1|U3|temp~2_combout\ & !\U1|U1|U3|G[10]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010000000111100001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_temp~2_combout\,
	datab => \U1|U1|U3|ALT_INV_G[10]~0_combout\,
	datac => \U1|U1|U3|ALT_INV_temp~4_combout\,
	datad => \U1|U1|U3|ALT_INV_P\(11),
	dataf => \U1|U1|U3|ALT_INV_G[11]~1_combout\,
	combout => \U1|U1|U3|carry[12]~3_combout\);

-- Location: LABCELL_X30_Y36_N20
\U1|U1|U3|Cout~6\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|Cout~6_combout\ = ( \U1|U1|U3|carry[12]~3_combout\ & ( (!\U1|U1|U3|Cout~5_combout\) # ((\U1|U1|U3|P\(15) & (\U1|U1|U3|Cout~2_combout\ & \U1|U1|U3|product~1_combout\))) ) ) # ( !\U1|U1|U3|carry[12]~3_combout\ & ( (!\U1|U1|U3|Cout~5_combout\) # 
-- ((\U1|U1|U3|P\(15) & \U1|U1|U3|product~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110101111100001111010111110000111100011111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_P\(15),
	datab => \U1|U1|U3|ALT_INV_Cout~2_combout\,
	datac => \U1|U1|U3|ALT_INV_Cout~5_combout\,
	datad => \U1|U1|U3|ALT_INV_product~1_combout\,
	dataf => \U1|U1|U3|ALT_INV_carry[12]~3_combout\,
	combout => \U1|U1|U3|Cout~6_combout\);

-- Location: IOIBUF_X59_Y37_N1
\FuncClass[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: LABCELL_X30_Y36_N32
\MUX6|Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux15~0_combout\ = ( \U1|U1|U3|Cout~6_combout\ & ( \FuncClass[0]~input_o\ & ( (\U2|Mux15~0_combout\ & !\FuncClass[1]~input_o\) ) ) ) # ( !\U1|U1|U3|Cout~6_combout\ & ( \FuncClass[0]~input_o\ & ( (\FuncClass[1]~input_o\) # (\U2|Mux15~0_combout\) ) ) 
-- ) # ( \U1|U1|U3|Cout~6_combout\ & ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & ((\MUX5|Y[0]~0_combout\))) # (\FuncClass[1]~input_o\ & (!\U1|U1|U3|P\(15))) ) ) ) # ( !\U1|U1|U3|Cout~6_combout\ & ( !\FuncClass[0]~input_o\ & ( 
-- (!\FuncClass[1]~input_o\ & ((\MUX5|Y[0]~0_combout\))) # (\FuncClass[1]~input_o\ & (\U1|U1|U3|P\(15))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011111010101000110011111111110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_P\(15),
	datab => \U2|ALT_INV_Mux15~0_combout\,
	datac => \MUX5|ALT_INV_Y[0]~0_combout\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	datae => \U1|U1|U3|ALT_INV_Cout~6_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \MUX6|Mux15~0_combout\);

-- Location: MLABCELL_X31_Y33_N0
\U3|Swap_cond~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|Swap_cond~0_combout\ = ( \ExtWord~input_o\ & ( \ShiftFN[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \U3|Swap_cond~0_combout\);

-- Location: MLABCELL_X31_Y35_N26
\MUX6|Mux14~1\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux14~1_combout\ = ( !\FuncClass[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & \U3|Swap_cond~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \U3|ALT_INV_Swap_cond~0_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \MUX6|Mux14~1_combout\);

-- Location: MLABCELL_X31_Y35_N2
\MUX6|Mux14~0\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux14~0_combout\ = ( !\MUX1|Y[0]~0_combout\ & ( (!\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \MUX1|ALT_INV_Y[0]~0_combout\,
	combout => \MUX6|Mux14~0_combout\);

-- Location: MLABCELL_X34_Y33_N24
\U3|U1|U4|MUX1|Mux5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux5~0_combout\ = (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\)) # (\ShiftFN[1]~input_o\ & ((!\U3|U1|U4|ShiftLeft0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001100001111110000110000111111000011000011111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~0_combout\,
	combout => \U3|U1|U4|MUX1|Mux5~0_combout\);

-- Location: MLABCELL_X37_Y33_N4
\U3|U1|U4|ShiftRight1~7\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~7_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( \U3|Asig[12]~13_combout\ ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( \U3|Asig[11]~11_combout\ ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( \U3|Asig[10]~9_combout\ ) ) ) # 
-- ( !\B[0]~input_o\ & ( !\B[1]~input_o\ & ( \U3|Asig[9]~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[10]~9_combout\,
	datab => \U3|ALT_INV_Asig[12]~13_combout\,
	datac => \U3|ALT_INV_Asig[9]~10_combout\,
	datad => \U3|ALT_INV_Asig[11]~11_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftRight1~7_combout\);

-- Location: MLABCELL_X37_Y33_N28
\U3|U1|U4|ShiftLeft0~7\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~7_combout\ = ( \U3|Asig[7]~7_combout\ & ( \U3|Asig[9]~10_combout\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\U3|Asig[8]~8_combout\))) # (\B[1]~input_o\ & (\U3|Asig[6]~5_combout\))) ) ) ) # ( !\U3|Asig[7]~7_combout\ & ( 
-- \U3|Asig[9]~10_combout\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\U3|Asig[8]~8_combout\)))) # (\B[1]~input_o\ & (\U3|Asig[6]~5_combout\ & ((\B[0]~input_o\)))) ) ) ) # ( \U3|Asig[7]~7_combout\ & ( !\U3|Asig[9]~10_combout\ & ( (!\B[1]~input_o\ & 
-- (((\U3|Asig[8]~8_combout\ & \B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\U3|Asig[6]~5_combout\))) ) ) ) # ( !\U3|Asig[7]~7_combout\ & ( !\U3|Asig[9]~10_combout\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\U3|Asig[8]~8_combout\))) # 
-- (\B[1]~input_o\ & (\U3|Asig[6]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[6]~5_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \U3|ALT_INV_Asig[8]~8_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \U3|ALT_INV_Asig[7]~7_combout\,
	dataf => \U3|ALT_INV_Asig[9]~10_combout\,
	combout => \U3|U1|U4|ShiftLeft0~7_combout\);

-- Location: LABCELL_X32_Y33_N24
\U3|U1|U4|ShiftLeft0~6\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~6_combout\ = ( \U3|Asig[4]~4_combout\ & ( \U3|Asig[3]~3_combout\ & ( (!\B[0]~input_o\ & (((\U3|Asig[5]~6_combout\) # (\B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\U3|Asig[2]~1_combout\))) ) ) ) # ( 
-- !\U3|Asig[4]~4_combout\ & ( \U3|Asig[3]~3_combout\ & ( (!\B[0]~input_o\ & (((\U3|Asig[5]~6_combout\) # (\B[1]~input_o\)))) # (\B[0]~input_o\ & (\U3|Asig[2]~1_combout\ & (\B[1]~input_o\))) ) ) ) # ( \U3|Asig[4]~4_combout\ & ( !\U3|Asig[3]~3_combout\ & ( 
-- (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \U3|Asig[5]~6_combout\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\U3|Asig[2]~1_combout\))) ) ) ) # ( !\U3|Asig[4]~4_combout\ & ( !\U3|Asig[3]~3_combout\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\ & 
-- \U3|Asig[5]~6_combout\)))) # (\B[0]~input_o\ & (\U3|Asig[2]~1_combout\ & (\B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[2]~1_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \U3|ALT_INV_Asig[5]~6_combout\,
	datae => \U3|ALT_INV_Asig[4]~4_combout\,
	dataf => \U3|ALT_INV_Asig[3]~3_combout\,
	combout => \U3|U1|U4|ShiftLeft0~6_combout\);

-- Location: MLABCELL_X34_Y33_N0
\U3|U1|U4|ShiftLeft0~8\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~8_combout\ = ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\U3|Asig[1]~2_combout\)) # (\B[0]~input_o\ & ((\U3|Asig[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \U3|ALT_INV_Asig[1]~2_combout\,
	datad => \U3|ALT_INV_Asig[0]~0_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftLeft0~8_combout\);

-- Location: MLABCELL_X34_Y32_N12
\U3|U1|U4|MUX1|Mux6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux6~0_combout\ = ( \U3|U1|U4|ShiftLeft0~8_combout\ & ( \B[2]~input_o\ & ( (\U3|U1|U4|ShiftLeft0~6_combout\ & ((!\U3|ShiftCount[3]~0_combout\) # (!\ShiftFN[0]~input_o\))) ) ) ) # ( !\U3|U1|U4|ShiftLeft0~8_combout\ & ( \B[2]~input_o\ & ( 
-- (\U3|U1|U4|ShiftLeft0~6_combout\ & ((!\U3|ShiftCount[3]~0_combout\) # (!\ShiftFN[0]~input_o\))) ) ) ) # ( \U3|U1|U4|ShiftLeft0~8_combout\ & ( !\B[2]~input_o\ & ( (\U3|ShiftCount[3]~0_combout\) # (\U3|U1|U4|ShiftLeft0~7_combout\) ) ) ) # ( 
-- !\U3|U1|U4|ShiftLeft0~8_combout\ & ( !\B[2]~input_o\ & ( (\U3|U1|U4|ShiftLeft0~7_combout\ & !\U3|ShiftCount[3]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000000111111000000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftLeft0~7_combout\,
	datab => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~6_combout\,
	datae => \U3|U1|U4|ALT_INV_ShiftLeft0~8_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \U3|U1|U4|MUX1|Mux6~0_combout\);

-- Location: MLABCELL_X34_Y33_N18
\U3|U1|U4|ShiftRight1~8\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~8_combout\ = ( \U3|Asig[13]~14_combout\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\U3|Asig[14]~12_combout\)))) # (\B[1]~input_o\ & (((\U3|Asig[15]~15_combout\)))) ) ) # ( !\U3|Asig[13]~14_combout\ & ( (!\B[1]~input_o\ & 
-- (\B[0]~input_o\ & (\U3|Asig[14]~12_combout\))) # (\B[1]~input_o\ & (((\U3|Asig[15]~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111110110000101111111011000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \U3|ALT_INV_Asig[14]~12_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \U3|ALT_INV_Asig[15]~15_combout\,
	dataf => \U3|ALT_INV_Asig[13]~14_combout\,
	combout => \U3|U1|U4|ShiftRight1~8_combout\);

-- Location: MLABCELL_X34_Y33_N14
\U3|U1|U4|ShiftRight0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight0~1_combout\ = ( \B[1]~input_o\ & ( (\U3|Asig[15]~15_combout\ & !\B[0]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\U3|Asig[13]~14_combout\)) # (\B[0]~input_o\ & ((\U3|Asig[14]~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[13]~14_combout\,
	datab => \U3|ALT_INV_Asig[14]~12_combout\,
	datac => \U3|ALT_INV_Asig[15]~15_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftRight0~1_combout\);

-- Location: MLABCELL_X34_Y32_N38
\U3|U1|U4|MUX1|Mux6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux6~1_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & ((\U3|U1|U4|ShiftRight1~8_combout\))) # (\U3|ShiftCount[3]~0_combout\ & (\U3|Asig[15]~15_combout\)) ) ) # ( !\ShiftFN[0]~input_o\ & ( 
-- (!\U3|ShiftCount[3]~0_combout\ & \U3|U1|U4|ShiftRight0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[15]~15_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftRight1~8_combout\,
	datac => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftRight0~1_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \U3|U1|U4|MUX1|Mux6~1_combout\);

-- Location: MLABCELL_X34_Y32_N2
\U3|U1|U4|MUX1|Mux6~2\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux6~2_combout\ = ( \ShiftFN[1]~input_o\ & ( \U3|U1|U4|MUX1|Mux6~1_combout\ & ( (\U3|U1|U4|ShiftRight1~7_combout\) # (\U3|U1|U4|MUX1|Mux5~0_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \U3|U1|U4|MUX1|Mux6~1_combout\ & ( 
-- (!\U3|U1|U4|MUX1|Mux5~0_combout\ & (\U3|Asig[9]~10_combout\)) # (\U3|U1|U4|MUX1|Mux5~0_combout\ & ((\U3|U1|U4|MUX1|Mux6~0_combout\))) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\U3|U1|U4|MUX1|Mux6~1_combout\ & ( (!\U3|U1|U4|MUX1|Mux5~0_combout\ & 
-- \U3|U1|U4|ShiftRight1~7_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\U3|U1|U4|MUX1|Mux6~1_combout\ & ( (!\U3|U1|U4|MUX1|Mux5~0_combout\ & (\U3|Asig[9]~10_combout\)) # (\U3|U1|U4|MUX1|Mux5~0_combout\ & ((\U3|U1|U4|MUX1|Mux6~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111001000100010001000001010010111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|MUX1|ALT_INV_Mux5~0_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftRight1~7_combout\,
	datac => \U3|ALT_INV_Asig[9]~10_combout\,
	datad => \U3|U1|U4|MUX1|ALT_INV_Mux6~0_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \U3|U1|U4|MUX1|ALT_INV_Mux6~1_combout\,
	combout => \U3|U1|U4|MUX1|Mux6~2_combout\);

-- Location: LABCELL_X30_Y36_N16
\U1|U1|U3|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|S\(1) = ( \A[1]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\ & (!\A[0]~input_o\ $ (!\AddnSub~input_o\))) ) ) ) # ( !\A[1]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\) # (!\A[0]~input_o\ $ (\AddnSub~input_o\)) ) ) ) # ( \A[1]~input_o\ & ( 
-- !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (!\A[0]~input_o\ $ (\AddnSub~input_o\)) ) ) ) # ( !\A[1]~input_o\ & ( !\B[1]~input_o\ & ( (\B[0]~input_o\ & (!\A[0]~input_o\ $ (!\AddnSub~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100111111001111001111111100111100110000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U1|U1|U3|S\(1));

-- Location: LABCELL_X30_Y36_N0
\MUX6|Mux14~3\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux14~3_combout\ = ( \MUX1|Y[0]~0_combout\ & ( (!\FuncClass[0]~input_o\ & (!\FuncClass[1]~input_o\ & !\ShiftFN[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \MUX1|ALT_INV_Y[0]~0_combout\,
	combout => \MUX6|Mux14~3_combout\);

-- Location: LABCELL_X30_Y36_N4
\U2|Mux14~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U2|Mux14~0_combout\ = ( \B[1]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[1]~input_o\)) ) ) # ( !\B[1]~input_o\ & ( (\A[1]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011011101011111010111110101111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U2|Mux14~0_combout\);

-- Location: MLABCELL_X31_Y36_N6
\MUX6|Mux14~2\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux14~2_combout\ = ( !\FuncClass[1]~input_o\ & ( \FuncClass[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \MUX6|Mux14~2_combout\);

-- Location: LABCELL_X30_Y35_N6
\MUX6|Mux14~4\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux14~4_combout\ = ( \MUX6|Mux14~2_combout\ & ( ((\U1|U1|U3|S\(1) & \MUX6|Mux14~3_combout\)) # (\U2|Mux14~0_combout\) ) ) # ( !\MUX6|Mux14~2_combout\ & ( (\U1|U1|U3|S\(1) & \MUX6|Mux14~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_S\(1),
	datac => \MUX6|ALT_INV_Mux14~3_combout\,
	datad => \U2|ALT_INV_Mux14~0_combout\,
	dataf => \MUX6|ALT_INV_Mux14~2_combout\,
	combout => \MUX6|Mux14~4_combout\);

-- Location: MLABCELL_X34_Y33_N8
\U3|U1|U4|ShiftLeft0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~5_combout\ = ( \U3|Asig[0]~0_combout\ & ( (!\B[1]~input_o\ & (\U3|U1|U4|ShiftLeft0~0_combout\ & ((\U3|Asig[1]~2_combout\) # (\B[0]~input_o\)))) ) ) # ( !\U3|Asig[0]~0_combout\ & ( (!\B[0]~input_o\ & (\U3|Asig[1]~2_combout\ & 
-- (!\B[1]~input_o\ & \U3|U1|U4|ShiftLeft0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000011100000000000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \U3|ALT_INV_Asig[1]~2_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \U3|ALT_INV_Asig[0]~0_combout\,
	combout => \U3|U1|U4|ShiftLeft0~5_combout\);

-- Location: LABCELL_X32_Y33_N22
\U3|U1|U4|ShiftRight1~6\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~6_combout\ = ( \U3|Asig[7]~7_combout\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\) # (\U3|Asig[8]~8_combout\) ) ) ) # ( !\U3|Asig[7]~7_combout\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\ & \U3|Asig[8]~8_combout\) ) ) ) # ( 
-- \U3|Asig[7]~7_combout\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\U3|Asig[5]~6_combout\))) # (\B[0]~input_o\ & (\U3|Asig[6]~5_combout\)) ) ) ) # ( !\U3|Asig[7]~7_combout\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\U3|Asig[5]~6_combout\))) # 
-- (\B[0]~input_o\ & (\U3|Asig[6]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[6]~5_combout\,
	datab => \U3|ALT_INV_Asig[5]~6_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \U3|ALT_INV_Asig[8]~8_combout\,
	datae => \U3|ALT_INV_Asig[7]~7_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftRight1~6_combout\);

-- Location: LABCELL_X32_Y33_N18
\U3|U1|U4|ShiftRight1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~5_combout\ = ( \B[0]~input_o\ & ( \U3|Asig[3]~3_combout\ & ( (!\B[1]~input_o\ & (\U3|Asig[2]~1_combout\)) # (\B[1]~input_o\ & ((\U3|Asig[4]~4_combout\))) ) ) ) # ( !\B[0]~input_o\ & ( \U3|Asig[3]~3_combout\ & ( 
-- (\U3|Asig[1]~2_combout\) # (\B[1]~input_o\) ) ) ) # ( \B[0]~input_o\ & ( !\U3|Asig[3]~3_combout\ & ( (!\B[1]~input_o\ & (\U3|Asig[2]~1_combout\)) # (\B[1]~input_o\ & ((\U3|Asig[4]~4_combout\))) ) ) ) # ( !\B[0]~input_o\ & ( !\U3|Asig[3]~3_combout\ & ( 
-- (!\B[1]~input_o\ & \U3|Asig[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000010100101111101110111011101110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \U3|ALT_INV_Asig[1]~2_combout\,
	datac => \U3|ALT_INV_Asig[2]~1_combout\,
	datad => \U3|ALT_INV_Asig[4]~4_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \U3|ALT_INV_Asig[3]~3_combout\,
	combout => \U3|U1|U4|ShiftRight1~5_combout\);

-- Location: MLABCELL_X34_Y32_N4
\U3|U1|U4|ShiftRight0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight0~2_combout\ = ( \U3|ShiftCount[3]~0_combout\ & ( \U3|U1|U4|ShiftRight0~1_combout\ & ( (\B[2]~input_o\) # (\U3|U1|U4|ShiftRight1~7_combout\) ) ) ) # ( !\U3|ShiftCount[3]~0_combout\ & ( \U3|U1|U4|ShiftRight0~1_combout\ & ( 
-- (!\B[2]~input_o\ & ((\U3|U1|U4|ShiftRight1~5_combout\))) # (\B[2]~input_o\ & (\U3|U1|U4|ShiftRight1~6_combout\)) ) ) ) # ( \U3|ShiftCount[3]~0_combout\ & ( !\U3|U1|U4|ShiftRight0~1_combout\ & ( (\U3|U1|U4|ShiftRight1~7_combout\ & !\B[2]~input_o\) ) ) ) # 
-- ( !\U3|ShiftCount[3]~0_combout\ & ( !\U3|U1|U4|ShiftRight0~1_combout\ & ( (!\B[2]~input_o\ & ((\U3|U1|U4|ShiftRight1~5_combout\))) # (\B[2]~input_o\ & (\U3|U1|U4|ShiftRight1~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101001100000011000000000101111101010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftRight1~6_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftRight1~7_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \U3|U1|U4|ALT_INV_ShiftRight1~5_combout\,
	datae => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	dataf => \U3|U1|U4|ALT_INV_ShiftRight0~1_combout\,
	combout => \U3|U1|U4|ShiftRight0~2_combout\);

-- Location: MLABCELL_X34_Y32_N6
\U3|U1|U4|ShiftRight1~9\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~9_combout\ = ( \U3|ShiftCount[3]~0_combout\ & ( \U3|U1|U4|ShiftRight1~8_combout\ & ( (\B[2]~input_o\) # (\U3|U1|U4|ShiftRight1~7_combout\) ) ) ) # ( !\U3|ShiftCount[3]~0_combout\ & ( \U3|U1|U4|ShiftRight1~8_combout\ & ( 
-- (!\B[2]~input_o\ & ((\U3|U1|U4|ShiftRight1~5_combout\))) # (\B[2]~input_o\ & (\U3|U1|U4|ShiftRight1~6_combout\)) ) ) ) # ( \U3|ShiftCount[3]~0_combout\ & ( !\U3|U1|U4|ShiftRight1~8_combout\ & ( (\U3|U1|U4|ShiftRight1~7_combout\ & !\B[2]~input_o\) ) ) ) # 
-- ( !\U3|ShiftCount[3]~0_combout\ & ( !\U3|U1|U4|ShiftRight1~8_combout\ & ( (!\B[2]~input_o\ & ((\U3|U1|U4|ShiftRight1~5_combout\))) # (\B[2]~input_o\ & (\U3|U1|U4|ShiftRight1~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000001111010101010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftRight1~6_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftRight1~7_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftRight1~5_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	dataf => \U3|U1|U4|ALT_INV_ShiftRight1~8_combout\,
	combout => \U3|U1|U4|ShiftRight1~9_combout\);

-- Location: MLABCELL_X34_Y32_N30
\U3|U1|U4|MUX1|Mux14~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux14~0_combout\ = ( \U3|U1|U4|ShiftRight0~2_combout\ & ( \U3|U1|U4|ShiftRight1~9_combout\ & ( ((!\ShiftFN[0]~input_o\ & (\U3|Asig[1]~2_combout\)) # (\ShiftFN[0]~input_o\ & ((\U3|U1|U4|ShiftLeft0~5_combout\)))) # (\ShiftFN[1]~input_o\) ) ) 
-- ) # ( !\U3|U1|U4|ShiftRight0~2_combout\ & ( \U3|U1|U4|ShiftRight1~9_combout\ & ( (!\ShiftFN[0]~input_o\ & (\U3|Asig[1]~2_combout\ & (!\ShiftFN[1]~input_o\))) # (\ShiftFN[0]~input_o\ & (((\U3|U1|U4|ShiftLeft0~5_combout\) # (\ShiftFN[1]~input_o\)))) ) ) ) # 
-- ( \U3|U1|U4|ShiftRight0~2_combout\ & ( !\U3|U1|U4|ShiftRight1~9_combout\ & ( (!\ShiftFN[0]~input_o\ & (((\ShiftFN[1]~input_o\)) # (\U3|Asig[1]~2_combout\))) # (\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\ & \U3|U1|U4|ShiftLeft0~5_combout\)))) ) ) ) # ( 
-- !\U3|U1|U4|ShiftRight0~2_combout\ & ( !\U3|U1|U4|ShiftRight1~9_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & (\U3|Asig[1]~2_combout\)) # (\ShiftFN[0]~input_o\ & ((\U3|U1|U4|ShiftLeft0~5_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \U3|ALT_INV_Asig[1]~2_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~5_combout\,
	datae => \U3|U1|U4|ALT_INV_ShiftRight0~2_combout\,
	dataf => \U3|U1|U4|ALT_INV_ShiftRight1~9_combout\,
	combout => \U3|U1|U4|MUX1|Mux14~0_combout\);

-- Location: MLABCELL_X31_Y35_N10
\MUX6|Mux14~5\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux14~5_combout\ = ( \U3|U1|U4|MUX1|Mux14~0_combout\ & ( (((\MUX6|Mux14~1_combout\ & \U3|U1|U4|MUX1|Mux6~2_combout\)) # (\MUX6|Mux14~4_combout\)) # (\MUX6|Mux14~0_combout\) ) ) # ( !\U3|U1|U4|MUX1|Mux14~0_combout\ & ( ((\MUX6|Mux14~1_combout\ & 
-- \U3|U1|U4|MUX1|Mux6~2_combout\)) # (\MUX6|Mux14~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX6|ALT_INV_Mux14~1_combout\,
	datab => \MUX6|ALT_INV_Mux14~0_combout\,
	datac => \U3|U1|U4|MUX1|ALT_INV_Mux6~2_combout\,
	datad => \MUX6|ALT_INV_Mux14~4_combout\,
	dataf => \U3|U1|U4|MUX1|ALT_INV_Mux14~0_combout\,
	combout => \MUX6|Mux14~5_combout\);

-- Location: MLABCELL_X29_Y35_N20
\U1|U1|U3|temp~13\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|temp~13_combout\ = ( \AddnSub~input_o\ & ( (!\A[0]~input_o\ & (!\B[0]~input_o\ & (!\A[1]~input_o\ $ (\B[1]~input_o\)))) # (\A[0]~input_o\ & (\B[0]~input_o\ & (!\A[1]~input_o\ $ (\B[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000100001000011000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \U1|U1|U3|temp~13_combout\);

-- Location: MLABCELL_X29_Y35_N22
\U1|U1|U3|temp~12\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|temp~12_combout\ = ( \AddnSub~input_o\ & ( (!\A[1]~input_o\ & (!\B[1]~input_o\ & \U1|U1|U3|G\(0))) # (\A[1]~input_o\ & ((!\B[1]~input_o\) # (\U1|U1|U3|G\(0)))) ) ) # ( !\AddnSub~input_o\ & ( (!\A[1]~input_o\ & (\B[1]~input_o\ & \U1|U1|U3|G\(0))) 
-- # (\A[1]~input_o\ & ((\U1|U1|U3|G\(0)) # (\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \U1|U1|U3|ALT_INV_G\(0),
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \U1|U1|U3|temp~12_combout\);

-- Location: MLABCELL_X29_Y35_N26
\U1|U1|U3|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|S\(2) = ( \B[2]~input_o\ & ( \AddnSub~input_o\ & ( !\A[2]~input_o\ $ (((!\U1|U1|U3|temp~13_combout\ & !\U1|U1|U3|temp~12_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \AddnSub~input_o\ & ( !\A[2]~input_o\ $ (((\U1|U1|U3|temp~12_combout\) # 
-- (\U1|U1|U3|temp~13_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\AddnSub~input_o\ & ( !\A[2]~input_o\ $ (((\U1|U1|U3|temp~12_combout\) # (\U1|U1|U3|temp~13_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( !\AddnSub~input_o\ & ( !\A[2]~input_o\ $ 
-- (((!\U1|U1|U3|temp~13_combout\ & !\U1|U1|U3|temp~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000100001111000011110000111100001110111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_temp~13_combout\,
	datab => \U1|U1|U3|ALT_INV_temp~12_combout\,
	datac => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \U1|U1|U3|S\(2));

-- Location: LABCELL_X32_Y34_N34
\U2|Mux13~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U2|Mux13~0_combout\ = ( \B[2]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\A[2]~input_o\ $ (\LogicFN[1]~input_o\)) ) ) # ( !\B[2]~input_o\ & ( (\A[2]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000011111010111101011111101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \U2|Mux13~0_combout\);

-- Location: LABCELL_X30_Y35_N30
\MUX6|Mux13~0\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux13~0_combout\ = ( \MUX6|Mux14~2_combout\ & ( ((\U1|U1|U3|S\(2) & \MUX6|Mux14~3_combout\)) # (\U2|Mux13~0_combout\) ) ) # ( !\MUX6|Mux14~2_combout\ & ( (\U1|U1|U3|S\(2) & \MUX6|Mux14~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_S\(2),
	datac => \MUX6|ALT_INV_Mux14~3_combout\,
	datad => \U2|ALT_INV_Mux13~0_combout\,
	dataf => \MUX6|ALT_INV_Mux14~2_combout\,
	combout => \MUX6|Mux13~0_combout\);

-- Location: LABCELL_X35_Y33_N24
\U3|U1|U4|ShiftRight1~12\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~12_combout\ = ( \B[1]~input_o\ & ( \U3|Asig[10]~9_combout\ & ( (!\B[0]~input_o\ & ((\U3|Asig[12]~13_combout\))) # (\B[0]~input_o\ & (\U3|Asig[13]~14_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( \U3|Asig[10]~9_combout\ & ( 
-- (!\B[0]~input_o\) # (\U3|Asig[11]~11_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\U3|Asig[10]~9_combout\ & ( (!\B[0]~input_o\ & ((\U3|Asig[12]~13_combout\))) # (\B[0]~input_o\ & (\U3|Asig[13]~14_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\U3|Asig[10]~9_combout\ & ( (\B[0]~input_o\ & \U3|Asig[11]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001101010011010111110000111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[13]~14_combout\,
	datab => \U3|ALT_INV_Asig[12]~13_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \U3|ALT_INV_Asig[11]~11_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \U3|ALT_INV_Asig[10]~9_combout\,
	combout => \U3|U1|U4|ShiftRight1~12_combout\);

-- Location: MLABCELL_X37_Y33_N38
\U3|U1|U4|ShiftLeft0~11\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~11_combout\ = ( \U3|Asig[7]~7_combout\ & ( \B[1]~input_o\ & ( (\U3|Asig[8]~8_combout\) # (\B[0]~input_o\) ) ) ) # ( !\U3|Asig[7]~7_combout\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & \U3|Asig[8]~8_combout\) ) ) ) # ( 
-- \U3|Asig[7]~7_combout\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\U3|Asig[10]~9_combout\))) # (\B[0]~input_o\ & (\U3|Asig[9]~10_combout\)) ) ) ) # ( !\U3|Asig[7]~7_combout\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\U3|Asig[10]~9_combout\))) # 
-- (\B[0]~input_o\ & (\U3|Asig[9]~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[9]~10_combout\,
	datab => \U3|ALT_INV_Asig[10]~9_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \U3|ALT_INV_Asig[8]~8_combout\,
	datae => \U3|ALT_INV_Asig[7]~7_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftLeft0~11_combout\);

-- Location: LABCELL_X32_Y34_N18
\U3|U1|U4|ShiftLeft0~10\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~10_combout\ = ( \B[1]~input_o\ & ( \U3|Asig[6]~5_combout\ & ( (!\B[0]~input_o\ & (\U3|Asig[4]~4_combout\)) # (\B[0]~input_o\ & ((\U3|Asig[3]~3_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( \U3|Asig[6]~5_combout\ & ( (!\B[0]~input_o\) # 
-- (\U3|Asig[5]~6_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\U3|Asig[6]~5_combout\ & ( (!\B[0]~input_o\ & (\U3|Asig[4]~4_combout\)) # (\B[0]~input_o\ & ((\U3|Asig[3]~3_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( !\U3|Asig[6]~5_combout\ & ( 
-- (\U3|Asig[5]~6_combout\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[5]~6_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \U3|ALT_INV_Asig[4]~4_combout\,
	datad => \U3|ALT_INV_Asig[3]~3_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \U3|ALT_INV_Asig[6]~5_combout\,
	combout => \U3|U1|U4|ShiftLeft0~10_combout\);

-- Location: MLABCELL_X34_Y33_N10
\U3|U1|U4|ShiftLeft0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~9_combout\ = ( \U3|Asig[0]~0_combout\ & ( (!\B[0]~input_o\ & (((\U3|Asig[2]~1_combout\) # (\B[1]~input_o\)))) # (\B[0]~input_o\ & (\U3|Asig[1]~2_combout\ & (!\B[1]~input_o\))) ) ) # ( !\U3|Asig[0]~0_combout\ & ( (!\B[1]~input_o\ & 
-- ((!\B[0]~input_o\ & ((\U3|Asig[2]~1_combout\))) # (\B[0]~input_o\ & (\U3|Asig[1]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000100001011000000011010101110100001101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \U3|ALT_INV_Asig[1]~2_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \U3|ALT_INV_Asig[2]~1_combout\,
	dataf => \U3|ALT_INV_Asig[0]~0_combout\,
	combout => \U3|U1|U4|ShiftLeft0~9_combout\);

-- Location: LABCELL_X35_Y33_N34
\U3|U1|U4|MUX1|Mux5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux5~1_combout\ = ( \ShiftFN[0]~input_o\ & ( \B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & \U3|U1|U4|ShiftLeft0~10_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \B[2]~input_o\ & ( \U3|U1|U4|ShiftLeft0~10_combout\ ) ) ) # ( 
-- \ShiftFN[0]~input_o\ & ( !\B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & (\U3|U1|U4|ShiftLeft0~11_combout\)) # (\U3|ShiftCount[3]~0_combout\ & ((\U3|U1|U4|ShiftLeft0~9_combout\))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\B[2]~input_o\ & ( 
-- (!\U3|ShiftCount[3]~0_combout\ & (\U3|U1|U4|ShiftLeft0~11_combout\)) # (\U3|ShiftCount[3]~0_combout\ & ((\U3|U1|U4|ShiftLeft0~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001111000011110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftLeft0~11_combout\,
	datab => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftLeft0~10_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~9_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \U3|U1|U4|MUX1|Mux5~1_combout\);

-- Location: MLABCELL_X34_Y33_N28
\U3|U1|U4|ShiftRight1~13\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~13_combout\ = ( \B[1]~input_o\ & ( \U3|Asig[15]~15_combout\ ) ) # ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\U3|Asig[14]~12_combout\)) # (\B[0]~input_o\ & ((\U3|Asig[15]~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \U3|ALT_INV_Asig[14]~12_combout\,
	datad => \U3|ALT_INV_Asig[15]~15_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftRight1~13_combout\);

-- Location: MLABCELL_X34_Y33_N16
\U3|U1|U4|ShiftRight0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight0~3_combout\ = ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\U3|Asig[14]~12_combout\)) # (\B[0]~input_o\ & ((\U3|Asig[15]~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \U3|ALT_INV_Asig[14]~12_combout\,
	datad => \U3|ALT_INV_Asig[15]~15_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftRight0~3_combout\);

-- Location: LABCELL_X35_Y33_N38
\U3|U1|U4|MUX1|Mux5~2\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux5~2_combout\ = ( \U3|U1|U4|ShiftRight0~3_combout\ & ( (!\U3|ShiftCount[3]~0_combout\ & (((!\ShiftFN[0]~input_o\)) # (\U3|U1|U4|ShiftRight1~13_combout\))) # (\U3|ShiftCount[3]~0_combout\ & (((\U3|Asig[15]~15_combout\ & 
-- \ShiftFN[0]~input_o\)))) ) ) # ( !\U3|U1|U4|ShiftRight0~3_combout\ & ( (\ShiftFN[0]~input_o\ & ((!\U3|ShiftCount[3]~0_combout\ & (\U3|U1|U4|ShiftRight1~13_combout\)) # (\U3|ShiftCount[3]~0_combout\ & ((\U3|Asig[15]~15_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001111110000010100111111000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftRight1~13_combout\,
	datab => \U3|ALT_INV_Asig[15]~15_combout\,
	datac => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \U3|U1|U4|ALT_INV_ShiftRight0~3_combout\,
	combout => \U3|U1|U4|MUX1|Mux5~2_combout\);

-- Location: LABCELL_X35_Y33_N22
\U3|U1|U4|MUX1|Mux5~3\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux5~3_combout\ = ( \U3|U1|U4|MUX1|Mux5~1_combout\ & ( \U3|U1|U4|MUX1|Mux5~2_combout\ & ( ((!\ShiftFN[1]~input_o\ & ((\U3|Asig[10]~9_combout\))) # (\ShiftFN[1]~input_o\ & (\U3|U1|U4|ShiftRight1~12_combout\))) # 
-- (\U3|U1|U4|MUX1|Mux5~0_combout\) ) ) ) # ( !\U3|U1|U4|MUX1|Mux5~1_combout\ & ( \U3|U1|U4|MUX1|Mux5~2_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\U3|Asig[10]~9_combout\ & !\U3|U1|U4|MUX1|Mux5~0_combout\)))) # (\ShiftFN[1]~input_o\ & 
-- (((\U3|U1|U4|MUX1|Mux5~0_combout\)) # (\U3|U1|U4|ShiftRight1~12_combout\))) ) ) ) # ( \U3|U1|U4|MUX1|Mux5~1_combout\ & ( !\U3|U1|U4|MUX1|Mux5~2_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\U3|U1|U4|MUX1|Mux5~0_combout\) # (\U3|Asig[10]~9_combout\)))) # 
-- (\ShiftFN[1]~input_o\ & (\U3|U1|U4|ShiftRight1~12_combout\ & ((!\U3|U1|U4|MUX1|Mux5~0_combout\)))) ) ) ) # ( !\U3|U1|U4|MUX1|Mux5~1_combout\ & ( !\U3|U1|U4|MUX1|Mux5~2_combout\ & ( (!\U3|U1|U4|MUX1|Mux5~0_combout\ & ((!\ShiftFN[1]~input_o\ & 
-- ((\U3|Asig[10]~9_combout\))) # (\ShiftFN[1]~input_o\ & (\U3|U1|U4|ShiftRight1~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101011111000000110101000011110011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftRight1~12_combout\,
	datab => \U3|ALT_INV_Asig[10]~9_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \U3|U1|U4|MUX1|ALT_INV_Mux5~0_combout\,
	datae => \U3|U1|U4|MUX1|ALT_INV_Mux5~1_combout\,
	dataf => \U3|U1|U4|MUX1|ALT_INV_Mux5~2_combout\,
	combout => \U3|U1|U4|MUX1|Mux5~3_combout\);

-- Location: MLABCELL_X37_Y33_N34
\U3|U1|U4|ShiftRight1~11\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~11_combout\ = ( \U3|Asig[7]~7_combout\ & ( \U3|Asig[9]~10_combout\ & ( ((!\B[1]~input_o\ & (\U3|Asig[6]~5_combout\)) # (\B[1]~input_o\ & ((\U3|Asig[8]~8_combout\)))) # (\B[0]~input_o\) ) ) ) # ( !\U3|Asig[7]~7_combout\ & ( 
-- \U3|Asig[9]~10_combout\ & ( (!\B[1]~input_o\ & (\U3|Asig[6]~5_combout\ & (!\B[0]~input_o\))) # (\B[1]~input_o\ & (((\U3|Asig[8]~8_combout\) # (\B[0]~input_o\)))) ) ) ) # ( \U3|Asig[7]~7_combout\ & ( !\U3|Asig[9]~10_combout\ & ( (!\B[1]~input_o\ & 
-- (((\B[0]~input_o\)) # (\U3|Asig[6]~5_combout\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\ & \U3|Asig[8]~8_combout\)))) ) ) ) # ( !\U3|Asig[7]~7_combout\ & ( !\U3|Asig[9]~10_combout\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\U3|Asig[6]~5_combout\)) # 
-- (\B[1]~input_o\ & ((\U3|Asig[8]~8_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000011011100110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[6]~5_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \U3|ALT_INV_Asig[8]~8_combout\,
	datae => \U3|ALT_INV_Asig[7]~7_combout\,
	dataf => \U3|ALT_INV_Asig[9]~10_combout\,
	combout => \U3|U1|U4|ShiftRight1~11_combout\);

-- Location: LABCELL_X32_Y33_N28
\U3|U1|U4|ShiftRight1~10\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~10_combout\ = ( \U3|Asig[4]~4_combout\ & ( \U3|Asig[3]~3_combout\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\U3|Asig[2]~1_combout\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\U3|Asig[5]~6_combout\)))) ) ) ) # ( 
-- !\U3|Asig[4]~4_combout\ & ( \U3|Asig[3]~3_combout\ & ( (!\B[0]~input_o\ & (\U3|Asig[2]~1_combout\ & (!\B[1]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\U3|Asig[5]~6_combout\)))) ) ) ) # ( \U3|Asig[4]~4_combout\ & ( !\U3|Asig[3]~3_combout\ & ( 
-- (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\U3|Asig[2]~1_combout\))) # (\B[0]~input_o\ & (((\B[1]~input_o\ & \U3|Asig[5]~6_combout\)))) ) ) ) # ( !\U3|Asig[4]~4_combout\ & ( !\U3|Asig[3]~3_combout\ & ( (!\B[0]~input_o\ & (\U3|Asig[2]~1_combout\ & 
-- (!\B[1]~input_o\))) # (\B[0]~input_o\ & (((\B[1]~input_o\ & \U3|Asig[5]~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[2]~1_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \U3|ALT_INV_Asig[5]~6_combout\,
	datae => \U3|ALT_INV_Asig[4]~4_combout\,
	dataf => \U3|ALT_INV_Asig[3]~3_combout\,
	combout => \U3|U1|U4|ShiftRight1~10_combout\);

-- Location: LABCELL_X35_Y33_N10
\U3|U1|U4|ShiftRight1~14\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~14_combout\ = ( \U3|ShiftCount[3]~0_combout\ & ( \U3|U1|U4|ShiftRight1~13_combout\ & ( (\B[2]~input_o\) # (\U3|U1|U4|ShiftRight1~12_combout\) ) ) ) # ( !\U3|ShiftCount[3]~0_combout\ & ( \U3|U1|U4|ShiftRight1~13_combout\ & ( 
-- (!\B[2]~input_o\ & ((\U3|U1|U4|ShiftRight1~10_combout\))) # (\B[2]~input_o\ & (\U3|U1|U4|ShiftRight1~11_combout\)) ) ) ) # ( \U3|ShiftCount[3]~0_combout\ & ( !\U3|U1|U4|ShiftRight1~13_combout\ & ( (\U3|U1|U4|ShiftRight1~12_combout\ & !\B[2]~input_o\) ) ) 
-- ) # ( !\U3|ShiftCount[3]~0_combout\ & ( !\U3|U1|U4|ShiftRight1~13_combout\ & ( (!\B[2]~input_o\ & ((\U3|U1|U4|ShiftRight1~10_combout\))) # (\B[2]~input_o\ & (\U3|U1|U4|ShiftRight1~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftRight1~12_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftRight1~11_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftRight1~10_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	dataf => \U3|U1|U4|ALT_INV_ShiftRight1~13_combout\,
	combout => \U3|U1|U4|ShiftRight1~14_combout\);

-- Location: LABCELL_X35_Y33_N8
\U3|U1|U4|ShiftRight0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight0~4_combout\ = ( \U3|ShiftCount[3]~0_combout\ & ( \U3|U1|U4|ShiftRight0~3_combout\ & ( (\B[2]~input_o\) # (\U3|U1|U4|ShiftRight1~12_combout\) ) ) ) # ( !\U3|ShiftCount[3]~0_combout\ & ( \U3|U1|U4|ShiftRight0~3_combout\ & ( 
-- (!\B[2]~input_o\ & ((\U3|U1|U4|ShiftRight1~10_combout\))) # (\B[2]~input_o\ & (\U3|U1|U4|ShiftRight1~11_combout\)) ) ) ) # ( \U3|ShiftCount[3]~0_combout\ & ( !\U3|U1|U4|ShiftRight0~3_combout\ & ( (\U3|U1|U4|ShiftRight1~12_combout\ & !\B[2]~input_o\) ) ) ) 
-- # ( !\U3|ShiftCount[3]~0_combout\ & ( !\U3|U1|U4|ShiftRight0~3_combout\ & ( (!\B[2]~input_o\ & ((\U3|U1|U4|ShiftRight1~10_combout\))) # (\B[2]~input_o\ & (\U3|U1|U4|ShiftRight1~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftRight1~12_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftRight1~11_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \U3|U1|U4|ALT_INV_ShiftRight1~10_combout\,
	datae => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	dataf => \U3|U1|U4|ALT_INV_ShiftRight0~3_combout\,
	combout => \U3|U1|U4|ShiftRight0~4_combout\);

-- Location: LABCELL_X35_Y33_N0
\U3|U1|U4|MUX1|Mux13~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux13~0_combout\ = ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((((\U3|Asig[2]~1_combout\))))) # (\ShiftFN[0]~input_o\ & (((\U3|U1|U4|ShiftLeft0~0_combout\ & (\U3|U1|U4|ShiftLeft0~9_combout\))))) ) ) # ( \ShiftFN[1]~input_o\ & ( 
-- (!\ShiftFN[0]~input_o\ & (((\U3|U1|U4|ShiftRight0~4_combout\)))) # (\ShiftFN[0]~input_o\ & (\U3|U1|U4|ShiftRight1~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000101000110110001101110101010101011110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \U3|U1|U4|ALT_INV_ShiftRight1~14_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftRight0~4_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~9_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \U3|ALT_INV_Asig[2]~1_combout\,
	datag => \U3|U1|U4|ALT_INV_ShiftLeft0~0_combout\,
	combout => \U3|U1|U4|MUX1|Mux13~0_combout\);

-- Location: MLABCELL_X31_Y35_N0
\MUX6|Mux13~1\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux13~1_combout\ = ( \MUX6|Mux14~0_combout\ & ( (((\MUX6|Mux14~1_combout\ & \U3|U1|U4|MUX1|Mux5~3_combout\)) # (\U3|U1|U4|MUX1|Mux13~0_combout\)) # (\MUX6|Mux13~0_combout\) ) ) # ( !\MUX6|Mux14~0_combout\ & ( ((\MUX6|Mux14~1_combout\ & 
-- \U3|U1|U4|MUX1|Mux5~3_combout\)) # (\MUX6|Mux13~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101110101011101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX6|ALT_INV_Mux13~0_combout\,
	datab => \MUX6|ALT_INV_Mux14~1_combout\,
	datac => \U3|U1|U4|MUX1|ALT_INV_Mux5~3_combout\,
	datad => \U3|U1|U4|MUX1|ALT_INV_Mux13~0_combout\,
	dataf => \MUX6|ALT_INV_Mux14~0_combout\,
	combout => \MUX6|Mux13~1_combout\);

-- Location: MLABCELL_X37_Y33_N22
\U3|U1|U4|ShiftRight1~16\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~16_combout\ = ( \U3|Asig[7]~7_combout\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\U3|Asig[9]~10_combout\)) # (\B[0]~input_o\ & ((\U3|Asig[10]~9_combout\))) ) ) ) # ( !\U3|Asig[7]~7_combout\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- (\U3|Asig[9]~10_combout\)) # (\B[0]~input_o\ & ((\U3|Asig[10]~9_combout\))) ) ) ) # ( \U3|Asig[7]~7_combout\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\U3|Asig[8]~8_combout\) ) ) ) # ( !\U3|Asig[7]~7_combout\ & ( !\B[1]~input_o\ & ( (\B[0]~input_o\ & 
-- \U3|Asig[8]~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[9]~10_combout\,
	datab => \U3|ALT_INV_Asig[10]~9_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \U3|ALT_INV_Asig[8]~8_combout\,
	datae => \U3|ALT_INV_Asig[7]~7_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftRight1~16_combout\);

-- Location: LABCELL_X32_Y33_N34
\U3|U1|U4|ShiftRight1~15\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~15_combout\ = ( \U3|Asig[4]~4_combout\ & ( \U3|Asig[3]~3_combout\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\U3|Asig[5]~6_combout\)) # (\B[0]~input_o\ & ((\U3|Asig[6]~5_combout\)))) ) ) ) # ( !\U3|Asig[4]~4_combout\ & ( 
-- \U3|Asig[3]~3_combout\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\)) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\U3|Asig[5]~6_combout\)) # (\B[0]~input_o\ & ((\U3|Asig[6]~5_combout\))))) ) ) ) # ( \U3|Asig[4]~4_combout\ & ( !\U3|Asig[3]~3_combout\ & ( 
-- (!\B[1]~input_o\ & (\B[0]~input_o\)) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\U3|Asig[5]~6_combout\)) # (\B[0]~input_o\ & ((\U3|Asig[6]~5_combout\))))) ) ) ) # ( !\U3|Asig[4]~4_combout\ & ( !\U3|Asig[3]~3_combout\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ 
-- & (\U3|Asig[5]~6_combout\)) # (\B[0]~input_o\ & ((\U3|Asig[6]~5_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \U3|ALT_INV_Asig[5]~6_combout\,
	datad => \U3|ALT_INV_Asig[6]~5_combout\,
	datae => \U3|ALT_INV_Asig[4]~4_combout\,
	dataf => \U3|ALT_INV_Asig[3]~3_combout\,
	combout => \U3|U1|U4|ShiftRight1~15_combout\);

-- Location: MLABCELL_X37_Y33_N26
\U3|U1|U4|ShiftRight1~17\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~17_combout\ = ( \U3|Asig[12]~13_combout\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\U3|Asig[13]~14_combout\)) # (\B[0]~input_o\ & ((\U3|Asig[14]~12_combout\))) ) ) ) # ( !\U3|Asig[12]~13_combout\ & ( \B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\U3|Asig[13]~14_combout\)) # (\B[0]~input_o\ & ((\U3|Asig[14]~12_combout\))) ) ) ) # ( \U3|Asig[12]~13_combout\ & ( !\B[1]~input_o\ & ( (\B[0]~input_o\) # (\U3|Asig[11]~11_combout\) ) ) ) # ( !\U3|Asig[12]~13_combout\ & ( 
-- !\B[1]~input_o\ & ( (\U3|Asig[11]~11_combout\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[13]~14_combout\,
	datab => \U3|ALT_INV_Asig[11]~11_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \U3|ALT_INV_Asig[14]~12_combout\,
	datae => \U3|ALT_INV_Asig[12]~13_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftRight1~17_combout\);

-- Location: LABCELL_X32_Y34_N8
\U3|U1|U4|ShiftRight0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight0~5_combout\ = ( \U3|Asig[15]~15_combout\ & ( (!\B[1]~input_o\ & !\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \U3|ALT_INV_Asig[15]~15_combout\,
	combout => \U3|U1|U4|ShiftRight0~5_combout\);

-- Location: MLABCELL_X31_Y34_N28
\U3|U1|U4|ShiftRight0~6\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight0~6_combout\ = ( \U3|ShiftCount[3]~0_combout\ & ( \U3|U1|U4|ShiftRight0~5_combout\ & ( (\U3|U1|U4|ShiftRight1~17_combout\) # (\B[2]~input_o\) ) ) ) # ( !\U3|ShiftCount[3]~0_combout\ & ( \U3|U1|U4|ShiftRight0~5_combout\ & ( 
-- (!\B[2]~input_o\ & ((\U3|U1|U4|ShiftRight1~15_combout\))) # (\B[2]~input_o\ & (\U3|U1|U4|ShiftRight1~16_combout\)) ) ) ) # ( \U3|ShiftCount[3]~0_combout\ & ( !\U3|U1|U4|ShiftRight0~5_combout\ & ( (!\B[2]~input_o\ & \U3|U1|U4|ShiftRight1~17_combout\) ) ) ) 
-- # ( !\U3|ShiftCount[3]~0_combout\ & ( !\U3|U1|U4|ShiftRight0~5_combout\ & ( (!\B[2]~input_o\ & ((\U3|U1|U4|ShiftRight1~15_combout\))) # (\B[2]~input_o\ & (\U3|U1|U4|ShiftRight1~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftRight1~16_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftRight1~15_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \U3|U1|U4|ALT_INV_ShiftRight1~17_combout\,
	datae => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	dataf => \U3|U1|U4|ALT_INV_ShiftRight0~5_combout\,
	combout => \U3|U1|U4|ShiftRight0~6_combout\);

-- Location: MLABCELL_X31_Y34_N26
\U3|U1|U4|ShiftLeft0~12\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~12_combout\ = ( \U3|Asig[3]~3_combout\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\U3|Asig[1]~2_combout\))) # (\B[0]~input_o\ & (\U3|Asig[0]~0_combout\)) ) ) ) # ( !\U3|Asig[3]~3_combout\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((\U3|Asig[1]~2_combout\))) # (\B[0]~input_o\ & (\U3|Asig[0]~0_combout\)) ) ) ) # ( \U3|Asig[3]~3_combout\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\U3|Asig[2]~1_combout\) ) ) ) # ( !\U3|Asig[3]~3_combout\ & ( !\B[1]~input_o\ & ( (\B[0]~input_o\ & 
-- \U3|Asig[2]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[0]~0_combout\,
	datab => \U3|ALT_INV_Asig[1]~2_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \U3|ALT_INV_Asig[2]~1_combout\,
	datae => \U3|ALT_INV_Asig[3]~3_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftLeft0~12_combout\);

-- Location: MLABCELL_X31_Y34_N30
\U3|U1|U4|ShiftRight1~18\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~18_combout\ = ( \U3|ShiftCount[3]~0_combout\ & ( \U3|Asig[15]~15_combout\ & ( (\B[2]~input_o\) # (\U3|U1|U4|ShiftRight1~17_combout\) ) ) ) # ( !\U3|ShiftCount[3]~0_combout\ & ( \U3|Asig[15]~15_combout\ & ( (!\B[2]~input_o\ & 
-- ((\U3|U1|U4|ShiftRight1~15_combout\))) # (\B[2]~input_o\ & (\U3|U1|U4|ShiftRight1~16_combout\)) ) ) ) # ( \U3|ShiftCount[3]~0_combout\ & ( !\U3|Asig[15]~15_combout\ & ( (\U3|U1|U4|ShiftRight1~17_combout\ & !\B[2]~input_o\) ) ) ) # ( 
-- !\U3|ShiftCount[3]~0_combout\ & ( !\U3|Asig[15]~15_combout\ & ( (!\B[2]~input_o\ & ((\U3|U1|U4|ShiftRight1~15_combout\))) # (\B[2]~input_o\ & (\U3|U1|U4|ShiftRight1~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000011110000000000110011010101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftRight1~16_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftRight1~15_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftRight1~17_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	dataf => \U3|ALT_INV_Asig[15]~15_combout\,
	combout => \U3|U1|U4|ShiftRight1~18_combout\);

-- Location: MLABCELL_X31_Y34_N20
\U3|U1|U4|MUX1|Mux12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux12~0_combout\ = ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\U3|Asig[3]~3_combout\)) # (\ShiftFN[0]~input_o\ & (((\U3|U1|U4|ShiftLeft0~0_combout\ & (\U3|U1|U4|ShiftLeft0~12_combout\))))) ) ) # ( \ShiftFN[1]~input_o\ & ( 
-- ((!\ShiftFN[0]~input_o\ & (\U3|U1|U4|ShiftRight0~6_combout\)) # (\ShiftFN[0]~input_o\ & (((\U3|U1|U4|ShiftRight1~18_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100010001000111000011000000110001000100010001110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[3]~3_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \U3|U1|U4|ALT_INV_ShiftRight0~6_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~12_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \U3|U1|U4|ALT_INV_ShiftRight1~18_combout\,
	datag => \U3|U1|U4|ALT_INV_ShiftLeft0~0_combout\,
	combout => \U3|U1|U4|MUX1|Mux12~0_combout\);

-- Location: LABCELL_X30_Y38_N22
\U2|Mux12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U2|Mux12~0_combout\ = ( \A[3]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\B[3]~input_o\))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[3]~input_o\))) ) ) # ( !\A[3]~input_o\ & ( (\B[3]~input_o\ & 
-- ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000111100111100110011110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \U2|Mux12~0_combout\);

-- Location: MLABCELL_X29_Y35_N30
\U1|U1|U3|carry[5]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[5]~4_combout\ = ( \B[0]~input_o\ & ( (!\A[0]~input_o\ & (\A[1]~input_o\ & (!\AddnSub~input_o\ $ (!\B[1]~input_o\)))) # (\A[0]~input_o\ & ((!\AddnSub~input_o\ $ (!\B[1]~input_o\)) # (\A[1]~input_o\))) ) ) # ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\AddnSub~input_o\)) # (\B[1]~input_o\ & ((\A[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100010111010011010001011101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \U1|U1|U3|carry[5]~4_combout\);

-- Location: MLABCELL_X29_Y35_N28
\U1|U1|U3|carry[6]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[6]~5_combout\ = ( \A[2]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[2]~input_o\)) # (\U1|U1|U3|carry[5]~4_combout\) ) ) # ( !\A[2]~input_o\ & ( (\U1|U1|U3|carry[5]~4_combout\ & (!\AddnSub~input_o\ $ (!\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \U1|U1|U3|ALT_INV_carry[5]~4_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \U1|U1|U3|carry[6]~5_combout\);

-- Location: MLABCELL_X29_Y35_N12
\U1|U1|U3|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|S\(3) = ( \U1|U1|U3|carry[6]~5_combout\ & ( !\U1|U1|U3|P\(3) ) ) # ( !\U1|U1|U3|carry[6]~5_combout\ & ( \U1|U1|U3|P\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|U3|ALT_INV_P\(3),
	dataf => \U1|U1|U3|ALT_INV_carry[6]~5_combout\,
	combout => \U1|U1|U3|S\(3));

-- Location: MLABCELL_X31_Y34_N10
\MUX6|Mux12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux12~0_combout\ = ( \MUX6|Mux14~3_combout\ & ( ((\U2|Mux12~0_combout\ & \MUX6|Mux14~2_combout\)) # (\U1|U1|U3|S\(3)) ) ) # ( !\MUX6|Mux14~3_combout\ & ( (\U2|Mux12~0_combout\ & \MUX6|Mux14~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_Mux12~0_combout\,
	datac => \U1|U1|U3|ALT_INV_S\(3),
	datad => \MUX6|ALT_INV_Mux14~2_combout\,
	dataf => \MUX6|ALT_INV_Mux14~3_combout\,
	combout => \MUX6|Mux12~0_combout\);

-- Location: MLABCELL_X31_Y34_N18
\U3|U1|U4|ShiftRight0~7\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight0~7_combout\ = ( \U3|U1|U4|ShiftRight0~5_combout\ & ( (!\U3|ShiftCount[3]~0_combout\ & ((\U3|U1|U4|ShiftRight1~17_combout\) # (\B[2]~input_o\))) ) ) # ( !\U3|U1|U4|ShiftRight0~5_combout\ & ( (!\B[2]~input_o\ & 
-- (!\U3|ShiftCount[3]~0_combout\ & \U3|U1|U4|ShiftRight1~17_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftRight1~17_combout\,
	dataf => \U3|U1|U4|ALT_INV_ShiftRight0~5_combout\,
	combout => \U3|U1|U4|ShiftRight0~7_combout\);

-- Location: MLABCELL_X31_Y34_N12
\U3|U1|U4|ShiftLeft0~13\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~13_combout\ = ( \U3|Asig[9]~10_combout\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\) # (\U3|Asig[8]~8_combout\) ) ) ) # ( !\U3|Asig[9]~10_combout\ & ( \B[1]~input_o\ & ( (\U3|Asig[8]~8_combout\ & \B[0]~input_o\) ) ) ) # ( 
-- \U3|Asig[9]~10_combout\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\U3|Asig[11]~11_combout\)) # (\B[0]~input_o\ & ((\U3|Asig[10]~9_combout\))) ) ) ) # ( !\U3|Asig[9]~10_combout\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\U3|Asig[11]~11_combout\)) # 
-- (\B[0]~input_o\ & ((\U3|Asig[10]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[11]~11_combout\,
	datab => \U3|ALT_INV_Asig[10]~9_combout\,
	datac => \U3|ALT_INV_Asig[8]~8_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \U3|ALT_INV_Asig[9]~10_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftLeft0~13_combout\);

-- Location: LABCELL_X32_Y33_N38
\U3|U1|U4|ShiftLeft0~14\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~14_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( \U3|Asig[4]~4_combout\ ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( \U3|Asig[5]~6_combout\ ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( \U3|Asig[6]~5_combout\ ) ) ) # ( 
-- !\B[0]~input_o\ & ( !\B[1]~input_o\ & ( \U3|Asig[7]~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[6]~5_combout\,
	datab => \U3|ALT_INV_Asig[5]~6_combout\,
	datac => \U3|ALT_INV_Asig[4]~4_combout\,
	datad => \U3|ALT_INV_Asig[7]~7_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftLeft0~14_combout\);

-- Location: MLABCELL_X31_Y34_N16
\U3|U1|U4|ShiftLeft0~15\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~15_combout\ = ( \U3|U1|U4|ShiftLeft0~14_combout\ & ( (!\B[2]~input_o\ & ((!\U3|ShiftCount[3]~0_combout\ & (\U3|U1|U4|ShiftLeft0~13_combout\)) # (\U3|ShiftCount[3]~0_combout\ & ((\U3|U1|U4|ShiftLeft0~12_combout\))))) # (\B[2]~input_o\ 
-- & (!\U3|ShiftCount[3]~0_combout\)) ) ) # ( !\U3|U1|U4|ShiftLeft0~14_combout\ & ( (!\B[2]~input_o\ & ((!\U3|ShiftCount[3]~0_combout\ & (\U3|U1|U4|ShiftLeft0~13_combout\)) # (\U3|ShiftCount[3]~0_combout\ & ((\U3|U1|U4|ShiftLeft0~12_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftLeft0~13_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~12_combout\,
	dataf => \U3|U1|U4|ALT_INV_ShiftLeft0~14_combout\,
	combout => \U3|U1|U4|ShiftLeft0~15_combout\);

-- Location: MLABCELL_X31_Y34_N2
\U3|U1|U4|ShiftRight1~19\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~19_combout\ = ( \U3|Asig[15]~15_combout\ & ( (!\U3|U1|U4|ShiftLeft0~0_combout\) # (\U3|U1|U4|ShiftRight1~17_combout\) ) ) # ( !\U3|Asig[15]~15_combout\ & ( (\U3|U1|U4|ShiftRight1~17_combout\ & \U3|U1|U4|ShiftLeft0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|U1|U4|ALT_INV_ShiftRight1~17_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \U3|ALT_INV_Asig[15]~15_combout\,
	combout => \U3|U1|U4|ShiftRight1~19_combout\);

-- Location: MLABCELL_X31_Y34_N4
\U3|U1|U4|MUX1|Mux4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux4~0_combout\ = ( \ShiftFN[0]~input_o\ & ( \U3|U1|U4|ShiftRight1~19_combout\ & ( (\U3|U1|U4|ShiftLeft0~15_combout\) # (\ShiftFN[1]~input_o\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \U3|U1|U4|ShiftRight1~19_combout\ & ( (!\ShiftFN[1]~input_o\ 
-- & ((\U3|Asig[11]~11_combout\))) # (\ShiftFN[1]~input_o\ & (\U3|U1|U4|ShiftRight0~7_combout\)) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\U3|U1|U4|ShiftRight1~19_combout\ & ( (!\ShiftFN[1]~input_o\ & \U3|U1|U4|ShiftLeft0~15_combout\) ) ) ) # ( 
-- !\ShiftFN[0]~input_o\ & ( !\U3|U1|U4|ShiftRight1~19_combout\ & ( (!\ShiftFN[1]~input_o\ & ((\U3|Asig[11]~11_combout\))) # (\ShiftFN[1]~input_o\ & (\U3|U1|U4|ShiftRight0~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftRight0~7_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \U3|ALT_INV_Asig[11]~11_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~15_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \U3|U1|U4|ALT_INV_ShiftRight1~19_combout\,
	combout => \U3|U1|U4|MUX1|Mux4~0_combout\);

-- Location: MLABCELL_X31_Y34_N0
\MUX6|Mux12~1\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux12~1_combout\ = ( \MUX6|Mux14~0_combout\ & ( (((\MUX6|Mux14~1_combout\ & \U3|U1|U4|MUX1|Mux4~0_combout\)) # (\MUX6|Mux12~0_combout\)) # (\U3|U1|U4|MUX1|Mux12~0_combout\) ) ) # ( !\MUX6|Mux14~0_combout\ & ( ((\MUX6|Mux14~1_combout\ & 
-- \U3|U1|U4|MUX1|Mux4~0_combout\)) # (\MUX6|Mux12~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|MUX1|ALT_INV_Mux12~0_combout\,
	datab => \MUX6|ALT_INV_Mux14~1_combout\,
	datac => \MUX6|ALT_INV_Mux12~0_combout\,
	datad => \U3|U1|U4|MUX1|ALT_INV_Mux4~0_combout\,
	dataf => \MUX6|ALT_INV_Mux14~0_combout\,
	combout => \MUX6|Mux12~1_combout\);

-- Location: LABCELL_X30_Y35_N16
\U1|U1|U3|S[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|S\(4) = ( \A[3]~input_o\ & ( \AddnSub~input_o\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (((!\U1|U1|U3|carry[6]~5_combout\ & \B[3]~input_o\)))) ) ) ) # ( !\A[3]~input_o\ & ( \AddnSub~input_o\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ 
-- (((!\U1|U1|U3|carry[6]~5_combout\) # (\B[3]~input_o\)))) ) ) ) # ( \A[3]~input_o\ & ( !\AddnSub~input_o\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (((\B[3]~input_o\) # (\U1|U1|U3|carry[6]~5_combout\)))) ) ) ) # ( !\A[3]~input_o\ & ( !\AddnSub~input_o\ & ( 
-- !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (((\U1|U1|U3|carry[6]~5_combout\ & \B[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011010011001100110010110100110010110011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \U1|U1|U3|ALT_INV_carry[6]~5_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \U1|U1|U3|S\(4));

-- Location: LABCELL_X30_Y35_N32
\U2|Mux11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U2|Mux11~0_combout\ = ( \A[4]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\B[4]~input_o\))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[4]~input_o\))) ) ) # ( !\A[4]~input_o\ & ( (\B[4]~input_o\ & 
-- ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000111100111100110011110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \U2|Mux11~0_combout\);

-- Location: LABCELL_X30_Y35_N20
\MUX6|Mux11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux11~0_combout\ = ( \MUX6|Mux14~2_combout\ & ( ((\MUX6|Mux14~3_combout\ & \U1|U1|U3|S\(4))) # (\U2|Mux11~0_combout\) ) ) # ( !\MUX6|Mux14~2_combout\ & ( (\MUX6|Mux14~3_combout\ & \U1|U1|U3|S\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX6|ALT_INV_Mux14~3_combout\,
	datab => \U1|U1|U3|ALT_INV_S\(4),
	datac => \U2|ALT_INV_Mux11~0_combout\,
	dataf => \MUX6|ALT_INV_Mux14~2_combout\,
	combout => \MUX6|Mux11~0_combout\);

-- Location: MLABCELL_X37_Y33_N10
\U3|U1|U4|ShiftLeft0~17\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~17_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( \U3|Asig[9]~10_combout\ ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( \U3|Asig[10]~9_combout\ ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( \U3|Asig[11]~11_combout\ ) ) ) # ( 
-- !\B[0]~input_o\ & ( !\B[1]~input_o\ & ( \U3|Asig[12]~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[10]~9_combout\,
	datab => \U3|ALT_INV_Asig[12]~13_combout\,
	datac => \U3|ALT_INV_Asig[11]~11_combout\,
	datad => \U3|ALT_INV_Asig[9]~10_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftLeft0~17_combout\);

-- Location: MLABCELL_X31_Y33_N16
\U3|U1|U4|ShiftLeft0~18\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~18_combout\ = ( \U3|U1|U4|ShiftLeft0~3_combout\ & ( \B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & ((\U3|U1|U4|ShiftLeft0~1_combout\))) # (\U3|ShiftCount[3]~0_combout\ & (\U3|U1|U4|ShiftLeft0~2_combout\)) ) ) ) # ( 
-- !\U3|U1|U4|ShiftLeft0~3_combout\ & ( \B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & ((\U3|U1|U4|ShiftLeft0~1_combout\))) # (\U3|ShiftCount[3]~0_combout\ & (\U3|U1|U4|ShiftLeft0~2_combout\)) ) ) ) # ( \U3|U1|U4|ShiftLeft0~3_combout\ & ( 
-- !\B[2]~input_o\ & ( (\U3|ShiftCount[3]~0_combout\) # (\U3|U1|U4|ShiftLeft0~17_combout\) ) ) ) # ( !\U3|U1|U4|ShiftLeft0~3_combout\ & ( !\B[2]~input_o\ & ( (\U3|U1|U4|ShiftLeft0~17_combout\ & !\U3|ShiftCount[3]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftLeft0~17_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftLeft0~2_combout\,
	datac => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~1_combout\,
	datae => \U3|U1|U4|ALT_INV_ShiftLeft0~3_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \U3|U1|U4|ShiftLeft0~18_combout\);

-- Location: MLABCELL_X34_Y33_N20
\U3|U1|U4|MUX1|Mux3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux3~0_combout\ = ( !\U3|U1|U4|ShiftLeft0~0_combout\ & ( (!\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & (((\U3|Asig[12]~13_combout\))))) # (\ShiftFN[0]~input_o\ & ((!\ShiftFN[1]~input_o\ & (((\U3|U1|U4|ShiftLeft0~18_combout\)))) # 
-- (\ShiftFN[1]~input_o\ & (\U3|Asig[15]~15_combout\)))) ) ) # ( \U3|U1|U4|ShiftLeft0~0_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & (((\U3|Asig[12]~13_combout\)))) # (\ShiftFN[0]~input_o\ & (((\U3|U1|U4|ShiftLeft0~18_combout\)))))) # 
-- (\ShiftFN[1]~input_o\ & (((\U3|U1|U4|ShiftRight1~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000110001001000000111000101101000101110011010100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \U3|U1|U4|ALT_INV_ShiftRight1~3_combout\,
	datad => \U3|ALT_INV_Asig[12]~13_combout\,
	datae => \U3|U1|U4|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \U3|U1|U4|ALT_INV_ShiftLeft0~18_combout\,
	datag => \U3|ALT_INV_Asig[15]~15_combout\,
	combout => \U3|U1|U4|MUX1|Mux3~0_combout\);

-- Location: MLABCELL_X31_Y33_N38
\U3|U1|U4|ShiftRight0~8\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight0~8_combout\ = ( \B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & \U3|U1|U4|ShiftRight1~2_combout\) ) ) # ( !\B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & (\U3|U1|U4|ShiftRight1~1_combout\)) # (\U3|ShiftCount[3]~0_combout\ & 
-- ((\U3|U1|U4|ShiftRight1~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftRight1~2_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftRight1~1_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftRight1~3_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \U3|U1|U4|ShiftRight0~8_combout\);

-- Location: MLABCELL_X31_Y33_N14
\U3|U1|U4|ShiftRight1~20\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~20_combout\ = ( \U3|Asig[15]~15_combout\ & ( \B[2]~input_o\ & ( (\U3|ShiftCount[3]~0_combout\) # (\U3|U1|U4|ShiftRight1~2_combout\) ) ) ) # ( !\U3|Asig[15]~15_combout\ & ( \B[2]~input_o\ & ( (\U3|U1|U4|ShiftRight1~2_combout\ & 
-- !\U3|ShiftCount[3]~0_combout\) ) ) ) # ( \U3|Asig[15]~15_combout\ & ( !\B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & ((\U3|U1|U4|ShiftRight1~1_combout\))) # (\U3|ShiftCount[3]~0_combout\ & (\U3|U1|U4|ShiftRight1~3_combout\)) ) ) ) # ( 
-- !\U3|Asig[15]~15_combout\ & ( !\B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & ((\U3|U1|U4|ShiftRight1~1_combout\))) # (\U3|ShiftCount[3]~0_combout\ & (\U3|U1|U4|ShiftRight1~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftRight1~3_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftRight1~2_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftRight1~1_combout\,
	datad => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	datae => \U3|ALT_INV_Asig[15]~15_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \U3|U1|U4|ShiftRight1~20_combout\);

-- Location: MLABCELL_X31_Y33_N4
\U3|U1|U4|ShiftLeft0~16\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~16_combout\ = ( !\U3|ShiftCount[3]~0_combout\ & ( (!\B[2]~input_o\ & ((\U3|U1|U4|ShiftLeft0~3_combout\))) # (\B[2]~input_o\ & (\U3|U1|U4|ShiftLeft0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \U3|U1|U4|ALT_INV_ShiftLeft0~2_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftLeft0~3_combout\,
	dataf => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	combout => \U3|U1|U4|ShiftLeft0~16_combout\);

-- Location: MLABCELL_X31_Y36_N10
\U3|U1|U4|MUX1|Mux11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux11~0_combout\ = ( \U3|U1|U4|ShiftLeft0~16_combout\ & ( \ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\U3|U1|U4|ShiftRight0~8_combout\)) # (\ShiftFN[0]~input_o\ & ((\U3|U1|U4|ShiftRight1~20_combout\))) ) ) ) # ( 
-- !\U3|U1|U4|ShiftLeft0~16_combout\ & ( \ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\U3|U1|U4|ShiftRight0~8_combout\)) # (\ShiftFN[0]~input_o\ & ((\U3|U1|U4|ShiftRight1~20_combout\))) ) ) ) # ( \U3|U1|U4|ShiftLeft0~16_combout\ & ( 
-- !\ShiftFN[1]~input_o\ & ( (\U3|Asig[4]~4_combout\) # (\ShiftFN[0]~input_o\) ) ) ) # ( !\U3|U1|U4|ShiftLeft0~16_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & \U3|Asig[4]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftRight0~8_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \U3|U1|U4|ALT_INV_ShiftRight1~20_combout\,
	datad => \U3|ALT_INV_Asig[4]~4_combout\,
	datae => \U3|U1|U4|ALT_INV_ShiftLeft0~16_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \U3|U1|U4|MUX1|Mux11~0_combout\);

-- Location: MLABCELL_X31_Y35_N8
\MUX6|Mux11~1\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux11~1_combout\ = ( \U3|U1|U4|MUX1|Mux11~0_combout\ & ( (((\MUX6|Mux14~1_combout\ & \U3|U1|U4|MUX1|Mux3~0_combout\)) # (\MUX6|Mux11~0_combout\)) # (\MUX6|Mux14~0_combout\) ) ) # ( !\U3|U1|U4|MUX1|Mux11~0_combout\ & ( ((\MUX6|Mux14~1_combout\ & 
-- \U3|U1|U4|MUX1|Mux3~0_combout\)) # (\MUX6|Mux11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX6|ALT_INV_Mux14~1_combout\,
	datab => \MUX6|ALT_INV_Mux14~0_combout\,
	datac => \MUX6|ALT_INV_Mux11~0_combout\,
	datad => \U3|U1|U4|MUX1|ALT_INV_Mux3~0_combout\,
	dataf => \U3|U1|U4|MUX1|ALT_INV_Mux11~0_combout\,
	combout => \MUX6|Mux11~1_combout\);

-- Location: LABCELL_X30_Y35_N28
\U1|U1|U3|carry[5]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[5]~6_combout\ = ( \AddnSub~input_o\ & ( (!\B[3]~input_o\ & ((\A[3]~input_o\) # (\U1|U1|U3|carry[6]~5_combout\))) # (\B[3]~input_o\ & (\U1|U1|U3|carry[6]~5_combout\ & \A[3]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( (!\B[3]~input_o\ & 
-- (\U1|U1|U3|carry[6]~5_combout\ & \A[3]~input_o\)) # (\B[3]~input_o\ & ((\A[3]~input_o\) # (\U1|U1|U3|carry[6]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \U1|U1|U3|ALT_INV_carry[6]~5_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \U1|U1|U3|carry[5]~6_combout\);

-- Location: LABCELL_X30_Y35_N24
\U1|U1|U3|S[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|S\(5) = ( \U1|U1|U3|P\(5) & ( (!\A[4]~input_o\ & ((!\U1|U1|U3|carry[5]~6_combout\) # (!\AddnSub~input_o\ $ (\B[4]~input_o\)))) # (\A[4]~input_o\ & (!\U1|U1|U3|carry[5]~6_combout\ & (!\AddnSub~input_o\ $ (\B[4]~input_o\)))) ) ) # ( 
-- !\U1|U1|U3|P\(5) & ( (!\A[4]~input_o\ & (\U1|U1|U3|carry[5]~6_combout\ & (!\AddnSub~input_o\ $ (!\B[4]~input_o\)))) # (\A[4]~input_o\ & ((!\AddnSub~input_o\ $ (!\B[4]~input_o\)) # (\U1|U1|U3|carry[5]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001111101000101000111110111101011100000101110101110000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \U1|U1|U3|ALT_INV_carry[5]~6_combout\,
	dataf => \U1|U1|U3|ALT_INV_P\(5),
	combout => \U1|U1|U3|S\(5));

-- Location: MLABCELL_X34_Y32_N32
\MUX6|Mux10~1\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux10~1_combout\ = ( \U3|U1|U4|ShiftRight1~8_combout\ & ( \B[2]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (((!\U3|ShiftCount[3]~0_combout\ & \U3|U1|U4|ShiftRight0~1_combout\)))) # (\ShiftFN[0]~input_o\ & (\U3|Asig[15]~15_combout\)) ) ) ) # ( 
-- !\U3|U1|U4|ShiftRight1~8_combout\ & ( \B[2]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (((!\U3|ShiftCount[3]~0_combout\ & \U3|U1|U4|ShiftRight0~1_combout\)))) # (\ShiftFN[0]~input_o\ & (\U3|Asig[15]~15_combout\)) ) ) ) # ( \U3|U1|U4|ShiftRight1~8_combout\ & ( 
-- !\B[2]~input_o\ & ( (\U3|U1|U4|ShiftRight0~1_combout\) # (\ShiftFN[0]~input_o\) ) ) ) # ( !\U3|U1|U4|ShiftRight1~8_combout\ & ( !\B[2]~input_o\ & ( (!\ShiftFN[0]~input_o\ & \U3|U1|U4|ShiftRight0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100000101110001010000010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[15]~15_combout\,
	datab => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \U3|U1|U4|ALT_INV_ShiftRight0~1_combout\,
	datae => \U3|U1|U4|ALT_INV_ShiftRight1~8_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \MUX6|Mux10~1_combout\);

-- Location: MLABCELL_X34_Y32_N10
\MUX6|Mux10~0\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux10~0_combout\ = ( \U3|ShiftCount[3]~0_combout\ & ( \B[2]~input_o\ & ( (!\ShiftFN[0]~input_o\ & \U3|Asig[5]~6_combout\) ) ) ) # ( !\U3|ShiftCount[3]~0_combout\ & ( \B[2]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\U3|Asig[5]~6_combout\)) # 
-- (\ShiftFN[0]~input_o\ & ((\U3|U1|U4|ShiftLeft0~8_combout\))) ) ) ) # ( \U3|ShiftCount[3]~0_combout\ & ( !\B[2]~input_o\ & ( (!\ShiftFN[0]~input_o\ & \U3|Asig[5]~6_combout\) ) ) ) # ( !\U3|ShiftCount[3]~0_combout\ & ( !\B[2]~input_o\ & ( 
-- (!\ShiftFN[0]~input_o\ & (\U3|Asig[5]~6_combout\)) # (\ShiftFN[0]~input_o\ & ((\U3|U1|U4|ShiftLeft0~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001000100010001000100010011101110010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \U3|ALT_INV_Asig[5]~6_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftLeft0~6_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~8_combout\,
	datae => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \MUX6|Mux10~0_combout\);

-- Location: MLABCELL_X34_Y33_N26
\MUX6|Mux10~3\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux10~3_combout\ = (\ShiftFN[1]~input_o\ & !\U3|U1|U4|ShiftLeft0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~0_combout\,
	combout => \MUX6|Mux10~3_combout\);

-- Location: MLABCELL_X31_Y33_N26
\MUX6|Mux10~2\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux10~2_combout\ = ( !\U3|ShiftCount[3]~0_combout\ & ( \ShiftFN[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	combout => \MUX6|Mux10~2_combout\);

-- Location: MLABCELL_X34_Y32_N18
\MUX6|Mux10~4\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux10~4_combout\ = ( \MUX6|Mux10~2_combout\ & ( \U3|U1|U4|ShiftRight1~7_combout\ & ( (\U3|U1|U4|ShiftRight1~6_combout\) # (\MUX6|Mux10~3_combout\) ) ) ) # ( !\MUX6|Mux10~2_combout\ & ( \U3|U1|U4|ShiftRight1~7_combout\ & ( (!\MUX6|Mux10~3_combout\ & 
-- ((\MUX6|Mux10~0_combout\))) # (\MUX6|Mux10~3_combout\ & (\MUX6|Mux10~1_combout\)) ) ) ) # ( \MUX6|Mux10~2_combout\ & ( !\U3|U1|U4|ShiftRight1~7_combout\ & ( (!\MUX6|Mux10~3_combout\ & \U3|U1|U4|ShiftRight1~6_combout\) ) ) ) # ( !\MUX6|Mux10~2_combout\ & ( 
-- !\U3|U1|U4|ShiftRight1~7_combout\ & ( (!\MUX6|Mux10~3_combout\ & ((\MUX6|Mux10~0_combout\))) # (\MUX6|Mux10~3_combout\ & (\MUX6|Mux10~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX6|ALT_INV_Mux10~1_combout\,
	datab => \MUX6|ALT_INV_Mux10~0_combout\,
	datac => \MUX6|ALT_INV_Mux10~3_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftRight1~6_combout\,
	datae => \MUX6|ALT_INV_Mux10~2_combout\,
	dataf => \U3|U1|U4|ALT_INV_ShiftRight1~7_combout\,
	combout => \MUX6|Mux10~4_combout\);

-- Location: LABCELL_X30_Y38_N6
\MUX6|Mux10~5\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux10~5_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[5]~input_o\ & (\B[5]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[5]~input_o\ & (!\B[5]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[5]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011101100001011000010110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \MUX6|Mux10~5_combout\);

-- Location: LABCELL_X30_Y36_N26
\MUX6|Mux10~6\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux10~6_combout\ = ( \U3|Swap_cond~0_combout\ & ( \MUX6|Mux10~5_combout\ & ( ((\U1|U1|U3|S\(5) & \MUX1|Y[0]~0_combout\)) # (\FuncClass[0]~input_o\) ) ) ) # ( !\U3|Swap_cond~0_combout\ & ( \MUX6|Mux10~5_combout\ & ( ((!\MUX1|Y[0]~0_combout\ & 
-- ((\MUX6|Mux10~4_combout\))) # (\MUX1|Y[0]~0_combout\ & (\U1|U1|U3|S\(5)))) # (\FuncClass[0]~input_o\) ) ) ) # ( \U3|Swap_cond~0_combout\ & ( !\MUX6|Mux10~5_combout\ & ( (!\FuncClass[0]~input_o\ & (\U1|U1|U3|S\(5) & \MUX1|Y[0]~0_combout\)) ) ) ) # ( 
-- !\U3|Swap_cond~0_combout\ & ( !\MUX6|Mux10~5_combout\ & ( (!\FuncClass[0]~input_o\ & ((!\MUX1|Y[0]~0_combout\ & ((\MUX6|Mux10~4_combout\))) # (\MUX1|Y[0]~0_combout\ & (\U1|U1|U3|S\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000100000001001010111111101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \U1|U1|U3|ALT_INV_S\(5),
	datac => \MUX1|ALT_INV_Y[0]~0_combout\,
	datad => \MUX6|ALT_INV_Mux10~4_combout\,
	datae => \U3|ALT_INV_Swap_cond~0_combout\,
	dataf => \MUX6|ALT_INV_Mux10~5_combout\,
	combout => \MUX6|Mux10~6_combout\);

-- Location: MLABCELL_X37_Y33_N14
\U3|U1|U4|ShiftLeft0~19\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~19_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( \U3|Asig[10]~9_combout\ ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( \U3|Asig[11]~11_combout\ ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( \U3|Asig[12]~13_combout\ ) ) ) # 
-- ( !\B[0]~input_o\ & ( !\B[1]~input_o\ & ( \U3|Asig[13]~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[10]~9_combout\,
	datab => \U3|ALT_INV_Asig[12]~13_combout\,
	datac => \U3|ALT_INV_Asig[11]~11_combout\,
	datad => \U3|ALT_INV_Asig[13]~14_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftLeft0~19_combout\);

-- Location: MLABCELL_X34_Y32_N26
\U3|U1|U4|ShiftLeft0~20\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~20_combout\ = ( \U3|U1|U4|ShiftLeft0~6_combout\ & ( \B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & (\U3|U1|U4|ShiftLeft0~7_combout\)) # (\U3|ShiftCount[3]~0_combout\ & ((\U3|U1|U4|ShiftLeft0~8_combout\))) ) ) ) # ( 
-- !\U3|U1|U4|ShiftLeft0~6_combout\ & ( \B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & (\U3|U1|U4|ShiftLeft0~7_combout\)) # (\U3|ShiftCount[3]~0_combout\ & ((\U3|U1|U4|ShiftLeft0~8_combout\))) ) ) ) # ( \U3|U1|U4|ShiftLeft0~6_combout\ & ( 
-- !\B[2]~input_o\ & ( (\U3|ShiftCount[3]~0_combout\) # (\U3|U1|U4|ShiftLeft0~19_combout\) ) ) ) # ( !\U3|U1|U4|ShiftLeft0~6_combout\ & ( !\B[2]~input_o\ & ( (\U3|U1|U4|ShiftLeft0~19_combout\ & !\U3|ShiftCount[3]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftLeft0~7_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftLeft0~19_combout\,
	datac => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~8_combout\,
	datae => \U3|U1|U4|ALT_INV_ShiftLeft0~6_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \U3|U1|U4|ShiftLeft0~20_combout\);

-- Location: MLABCELL_X34_Y32_N36
\U3|U1|U4|ShiftRight1~21\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~21_combout\ = ( \U3|U1|U4|ShiftLeft0~0_combout\ & ( \U3|U1|U4|ShiftRight1~8_combout\ ) ) # ( !\U3|U1|U4|ShiftLeft0~0_combout\ & ( \U3|Asig[15]~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|U1|U4|ALT_INV_ShiftRight1~8_combout\,
	datac => \U3|ALT_INV_Asig[15]~15_combout\,
	dataf => \U3|U1|U4|ALT_INV_ShiftLeft0~0_combout\,
	combout => \U3|U1|U4|ShiftRight1~21_combout\);

-- Location: MLABCELL_X34_Y32_N20
\U3|U1|U4|MUX1|Mux2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux2~0_combout\ = ( !\ShiftFN[1]~input_o\ & ( (((!\ShiftFN[0]~input_o\ & ((\U3|Asig[13]~14_combout\))) # (\ShiftFN[0]~input_o\ & (\U3|U1|U4|ShiftLeft0~20_combout\)))) ) ) # ( \ShiftFN[1]~input_o\ & ( ((!\ShiftFN[0]~input_o\ & 
-- (\U3|U1|U4|ShiftRight0~1_combout\ & (\U3|U1|U4|ShiftLeft0~0_combout\))) # (\ShiftFN[0]~input_o\ & (((\U3|U1|U4|ShiftRight1~21_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000001010000010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftRight0~1_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftLeft0~20_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftLeft0~0_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftRight1~21_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	datag => \U3|ALT_INV_Asig[13]~14_combout\,
	combout => \U3|U1|U4|MUX1|Mux2~0_combout\);

-- Location: LABCELL_X30_Y36_N2
\MUX6|Mux10~7\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux10~7_combout\ = ( \U3|U1|U4|MUX1|Mux2~0_combout\ & ( (!\FuncClass[1]~input_o\ & (((!\FuncClass[0]~input_o\ & \U3|Swap_cond~0_combout\)) # (\MUX6|Mux10~6_combout\))) ) ) # ( !\U3|U1|U4|MUX1|Mux2~0_combout\ & ( (!\FuncClass[1]~input_o\ & 
-- (\MUX6|Mux10~6_combout\ & ((!\U3|Swap_cond~0_combout\) # (\FuncClass[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000100000011000000010000001100100011000000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \MUX6|ALT_INV_Mux10~6_combout\,
	datad => \U3|ALT_INV_Swap_cond~0_combout\,
	dataf => \U3|U1|U4|MUX1|ALT_INV_Mux2~0_combout\,
	combout => \MUX6|Mux10~7_combout\);

-- Location: MLABCELL_X34_Y33_N30
\U3|U1|U4|ShiftRight0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight0~9_combout\ = ( !\B[1]~input_o\ & ( (\U3|U1|U4|ShiftLeft0~0_combout\ & ((!\B[0]~input_o\ & (\U3|Asig[14]~12_combout\)) # (\B[0]~input_o\ & ((\U3|Asig[15]~15_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \U3|ALT_INV_Asig[14]~12_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftLeft0~0_combout\,
	datad => \U3|ALT_INV_Asig[15]~15_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftRight0~9_combout\);

-- Location: LABCELL_X35_Y33_N36
\U3|U1|U4|ShiftRight1~22\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~22_combout\ = (!\U3|U1|U4|ShiftLeft0~0_combout\ & ((\U3|Asig[15]~15_combout\))) # (\U3|U1|U4|ShiftLeft0~0_combout\ & (\U3|U1|U4|ShiftRight1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftRight1~13_combout\,
	datab => \U3|ALT_INV_Asig[15]~15_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~0_combout\,
	combout => \U3|U1|U4|ShiftRight1~22_combout\);

-- Location: MLABCELL_X37_Y33_N18
\U3|U1|U4|ShiftLeft0~21\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~21_combout\ = ( \U3|Asig[12]~13_combout\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\) # (\U3|Asig[11]~11_combout\) ) ) ) # ( !\U3|Asig[12]~13_combout\ & ( \B[1]~input_o\ & ( (\U3|Asig[11]~11_combout\ & \B[0]~input_o\) ) ) ) # ( 
-- \U3|Asig[12]~13_combout\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\U3|Asig[14]~12_combout\))) # (\B[0]~input_o\ & (\U3|Asig[13]~14_combout\)) ) ) ) # ( !\U3|Asig[12]~13_combout\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\U3|Asig[14]~12_combout\))) 
-- # (\B[0]~input_o\ & (\U3|Asig[13]~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[13]~14_combout\,
	datab => \U3|ALT_INV_Asig[11]~11_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \U3|ALT_INV_Asig[14]~12_combout\,
	datae => \U3|ALT_INV_Asig[12]~13_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftLeft0~21_combout\);

-- Location: LABCELL_X35_Y33_N6
\U3|U1|U4|ShiftLeft0~22\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~22_combout\ = ( \U3|U1|U4|ShiftLeft0~21_combout\ & ( \B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & (\U3|U1|U4|ShiftLeft0~11_combout\)) # (\U3|ShiftCount[3]~0_combout\ & ((\U3|U1|U4|ShiftLeft0~9_combout\))) ) ) ) # ( 
-- !\U3|U1|U4|ShiftLeft0~21_combout\ & ( \B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & (\U3|U1|U4|ShiftLeft0~11_combout\)) # (\U3|ShiftCount[3]~0_combout\ & ((\U3|U1|U4|ShiftLeft0~9_combout\))) ) ) ) # ( \U3|U1|U4|ShiftLeft0~21_combout\ & ( 
-- !\B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\) # (\U3|U1|U4|ShiftLeft0~10_combout\) ) ) ) # ( !\U3|U1|U4|ShiftLeft0~21_combout\ & ( !\B[2]~input_o\ & ( (\U3|U1|U4|ShiftLeft0~10_combout\ & \U3|ShiftCount[3]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftLeft0~11_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftLeft0~10_combout\,
	datac => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~9_combout\,
	datae => \U3|U1|U4|ALT_INV_ShiftLeft0~21_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \U3|U1|U4|ShiftLeft0~22_combout\);

-- Location: MLABCELL_X34_Y33_N34
\U3|U1|U4|MUX1|Mux1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux1~0_combout\ = ( \ShiftFN[0]~input_o\ & ( \U3|U1|U4|ShiftLeft0~22_combout\ & ( (!\ShiftFN[1]~input_o\) # (\U3|U1|U4|ShiftRight1~22_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \U3|U1|U4|ShiftLeft0~22_combout\ & ( (!\ShiftFN[1]~input_o\ 
-- & (\U3|Asig[14]~12_combout\)) # (\ShiftFN[1]~input_o\ & ((\U3|U1|U4|ShiftRight0~9_combout\))) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\U3|U1|U4|ShiftLeft0~22_combout\ & ( (\ShiftFN[1]~input_o\ & \U3|U1|U4|ShiftRight1~22_combout\) ) ) ) # ( 
-- !\ShiftFN[0]~input_o\ & ( !\U3|U1|U4|ShiftLeft0~22_combout\ & ( (!\ShiftFN[1]~input_o\ & (\U3|Asig[14]~12_combout\)) # (\ShiftFN[1]~input_o\ & ((\U3|U1|U4|ShiftRight0~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[14]~12_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftRight0~9_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \U3|U1|U4|ALT_INV_ShiftRight1~22_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \U3|U1|U4|ALT_INV_ShiftLeft0~22_combout\,
	combout => \U3|U1|U4|MUX1|Mux1~0_combout\);

-- Location: LABCELL_X30_Y38_N32
\MUX6|Mux9~3\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux9~3_combout\ = ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\))) # (\LogicFN[1]~input_o\ & (\A[6]~input_o\ & \B[6]~input_o\)) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\LogicFN[1]~input_o\ & \A[6]~input_o\)) # 
-- (\B[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111100001100110000110000110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \MUX6|Mux9~3_combout\);

-- Location: MLABCELL_X29_Y38_N8
\U1|U1|U3|P[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|P\(6) = ( \B[6]~input_o\ & ( \AddnSub~input_o\ & ( \A[6]~input_o\ ) ) ) # ( !\B[6]~input_o\ & ( \AddnSub~input_o\ & ( !\A[6]~input_o\ ) ) ) # ( \B[6]~input_o\ & ( !\AddnSub~input_o\ & ( !\A[6]~input_o\ ) ) ) # ( !\B[6]~input_o\ & ( 
-- !\AddnSub~input_o\ & ( \A[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \U1|U1|U3|P\(6));

-- Location: LABCELL_X30_Y35_N26
\U1|U1|U3|carry[6]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[6]~7_combout\ = ( \U1|U1|U3|carry[6]~5_combout\ & ( (\U1|U1|U3|P\(3) & (!\A[4]~input_o\ $ (!\AddnSub~input_o\ $ (\B[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000011010010000000001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \U1|U1|U3|ALT_INV_P\(3),
	dataf => \U1|U1|U3|ALT_INV_carry[6]~5_combout\,
	combout => \U1|U1|U3|carry[6]~7_combout\);

-- Location: LABCELL_X30_Y35_N34
\U1|U1|U3|carry[6]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[6]~8_combout\ = ( !\U1|U1|U3|G\(4) & ( !\U1|U1|U3|temp~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_temp~3_combout\,
	dataf => \U1|U1|U3|ALT_INV_G\(4),
	combout => \U1|U1|U3|carry[6]~8_combout\);

-- Location: LABCELL_X30_Y35_N10
\U1|U1|U3|S[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|S\(6) = ( \U1|U1|U3|G\(5) & ( !\U1|U1|U3|P\(6) ) ) # ( !\U1|U1|U3|G\(5) & ( !\U1|U1|U3|P\(6) $ (((!\U1|U1|U3|P\(5)) # ((!\U1|U1|U3|carry[6]~7_combout\ & \U1|U1|U3|carry[6]~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001010110011001100101011010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_P\(6),
	datab => \U1|U1|U3|ALT_INV_P\(5),
	datac => \U1|U1|U3|ALT_INV_carry[6]~7_combout\,
	datad => \U1|U1|U3|ALT_INV_carry[6]~8_combout\,
	dataf => \U1|U1|U3|ALT_INV_G\(5),
	combout => \U1|U1|U3|S\(6));

-- Location: LABCELL_X35_Y33_N14
\MUX6|Mux9~1\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux9~1_combout\ = ( \U3|ShiftCount[3]~0_combout\ & ( \B[2]~input_o\ & ( (\ShiftFN[0]~input_o\ & \U3|Asig[15]~15_combout\) ) ) ) # ( !\U3|ShiftCount[3]~0_combout\ & ( \B[2]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((\U3|U1|U4|ShiftRight0~3_combout\))) # 
-- (\ShiftFN[0]~input_o\ & (\U3|Asig[15]~15_combout\)) ) ) ) # ( \U3|ShiftCount[3]~0_combout\ & ( !\B[2]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\U3|U1|U4|ShiftRight0~3_combout\)) # (\ShiftFN[0]~input_o\ & ((\U3|U1|U4|ShiftRight1~13_combout\))) ) ) ) # ( 
-- !\U3|ShiftCount[3]~0_combout\ & ( !\B[2]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\U3|U1|U4|ShiftRight0~3_combout\)) # (\ShiftFN[0]~input_o\ & ((\U3|U1|U4|ShiftRight1~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100011011000110110001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \U3|ALT_INV_Asig[15]~15_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftRight0~3_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftRight1~13_combout\,
	datae => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \MUX6|Mux9~1_combout\);

-- Location: LABCELL_X35_Y33_N30
\MUX6|Mux9~0\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux9~0_combout\ = ( \ShiftFN[0]~input_o\ & ( \B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & \U3|U1|U4|ShiftLeft0~9_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \B[2]~input_o\ & ( \U3|Asig[6]~5_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( 
-- !\B[2]~input_o\ & ( (\U3|U1|U4|ShiftLeft0~10_combout\ & !\U3|ShiftCount[3]~0_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\B[2]~input_o\ & ( \U3|Asig[6]~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100000011000001010101010101010000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Asig[6]~5_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftLeft0~10_combout\,
	datac => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~9_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \MUX6|Mux9~0_combout\);

-- Location: LABCELL_X35_Y33_N16
\MUX6|Mux9~2\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux9~2_combout\ = ( \MUX6|Mux9~0_combout\ & ( \MUX6|Mux10~2_combout\ & ( (!\MUX6|Mux10~3_combout\ & ((\U3|U1|U4|ShiftRight1~11_combout\))) # (\MUX6|Mux10~3_combout\ & (\U3|U1|U4|ShiftRight1~12_combout\)) ) ) ) # ( !\MUX6|Mux9~0_combout\ & ( 
-- \MUX6|Mux10~2_combout\ & ( (!\MUX6|Mux10~3_combout\ & ((\U3|U1|U4|ShiftRight1~11_combout\))) # (\MUX6|Mux10~3_combout\ & (\U3|U1|U4|ShiftRight1~12_combout\)) ) ) ) # ( \MUX6|Mux9~0_combout\ & ( !\MUX6|Mux10~2_combout\ & ( (!\MUX6|Mux10~3_combout\) # 
-- (\MUX6|Mux9~1_combout\) ) ) ) # ( !\MUX6|Mux9~0_combout\ & ( !\MUX6|Mux10~2_combout\ & ( (\MUX6|Mux10~3_combout\ & \MUX6|Mux9~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX6|ALT_INV_Mux10~3_combout\,
	datab => \MUX6|ALT_INV_Mux9~1_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftRight1~12_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftRight1~11_combout\,
	datae => \MUX6|ALT_INV_Mux9~0_combout\,
	dataf => \MUX6|ALT_INV_Mux10~2_combout\,
	combout => \MUX6|Mux9~2_combout\);

-- Location: LABCELL_X30_Y36_N10
\MUX6|Mux9~4\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux9~4_combout\ = ( \U3|Swap_cond~0_combout\ & ( \MUX6|Mux9~2_combout\ & ( (!\FuncClass[0]~input_o\ & (((\MUX1|Y[0]~0_combout\ & \U1|U1|U3|S\(6))))) # (\FuncClass[0]~input_o\ & (\MUX6|Mux9~3_combout\)) ) ) ) # ( !\U3|Swap_cond~0_combout\ & ( 
-- \MUX6|Mux9~2_combout\ & ( (!\FuncClass[0]~input_o\ & (((!\MUX1|Y[0]~0_combout\) # (\U1|U1|U3|S\(6))))) # (\FuncClass[0]~input_o\ & (\MUX6|Mux9~3_combout\)) ) ) ) # ( \U3|Swap_cond~0_combout\ & ( !\MUX6|Mux9~2_combout\ & ( (!\FuncClass[0]~input_o\ & 
-- (((\MUX1|Y[0]~0_combout\ & \U1|U1|U3|S\(6))))) # (\FuncClass[0]~input_o\ & (\MUX6|Mux9~3_combout\)) ) ) ) # ( !\U3|Swap_cond~0_combout\ & ( !\MUX6|Mux9~2_combout\ & ( (!\FuncClass[0]~input_o\ & (((\MUX1|Y[0]~0_combout\ & \U1|U1|U3|S\(6))))) # 
-- (\FuncClass[0]~input_o\ & (\MUX6|Mux9~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011011000100010001101110110001101110110001000100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \MUX6|ALT_INV_Mux9~3_combout\,
	datac => \MUX1|ALT_INV_Y[0]~0_combout\,
	datad => \U1|U1|U3|ALT_INV_S\(6),
	datae => \U3|ALT_INV_Swap_cond~0_combout\,
	dataf => \MUX6|ALT_INV_Mux9~2_combout\,
	combout => \MUX6|Mux9~4_combout\);

-- Location: LABCELL_X30_Y36_N12
\MUX6|Mux9~5\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux9~5_combout\ = ( \MUX6|Mux9~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\U3|Swap_cond~0_combout\) # ((\U3|U1|U4|MUX1|Mux1~0_combout\) # (\FuncClass[0]~input_o\)))) ) ) # ( !\MUX6|Mux9~4_combout\ & ( (\U3|Swap_cond~0_combout\ & 
-- (!\FuncClass[1]~input_o\ & (!\FuncClass[0]~input_o\ & \U3|U1|U4|MUX1|Mux1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000010001100110011001000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Swap_cond~0_combout\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \U3|U1|U4|MUX1|ALT_INV_Mux1~0_combout\,
	dataf => \MUX6|ALT_INV_Mux9~4_combout\,
	combout => \MUX6|Mux9~5_combout\);

-- Location: LABCELL_X30_Y35_N22
\U1|U1|U3|carry[7]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[7]~9_combout\ = ( !\U1|U1|U3|G\(6) & ( (!\U1|U1|U3|G\(5)) # (!\U1|U1|U3|P\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|U3|ALT_INV_G\(5),
	datad => \U1|U1|U3|ALT_INV_P\(6),
	dataf => \U1|U1|U3|ALT_INV_G\(6),
	combout => \U1|U1|U3|carry[7]~9_combout\);

-- Location: LABCELL_X30_Y35_N12
\U1|U1|U3|temp~14\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|temp~14_combout\ = ( \U1|U1|U3|P\(5) & ( \U1|U1|U3|P\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|U3|ALT_INV_P\(6),
	dataf => \U1|U1|U3|ALT_INV_P\(5),
	combout => \U1|U1|U3|temp~14_combout\);

-- Location: LABCELL_X30_Y35_N38
\U1|U1|U3|S[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|S\(7) = ( \U1|U1|U3|P\(7) & ( \U1|U1|U3|G\(4) & ( (\U1|U1|U3|carry[7]~9_combout\ & !\U1|U1|U3|temp~14_combout\) ) ) ) # ( !\U1|U1|U3|P\(7) & ( \U1|U1|U3|G\(4) & ( (!\U1|U1|U3|carry[7]~9_combout\) # (\U1|U1|U3|temp~14_combout\) ) ) ) # ( 
-- \U1|U1|U3|P\(7) & ( !\U1|U1|U3|G\(4) & ( (\U1|U1|U3|carry[7]~9_combout\ & ((!\U1|U1|U3|temp~14_combout\) # ((!\U1|U1|U3|temp~3_combout\ & !\U1|U1|U3|carry[6]~7_combout\)))) ) ) ) # ( !\U1|U1|U3|P\(7) & ( !\U1|U1|U3|G\(4) & ( 
-- (!\U1|U1|U3|carry[7]~9_combout\) # ((\U1|U1|U3|temp~14_combout\ & ((\U1|U1|U3|carry[6]~7_combout\) # (\U1|U1|U3|temp~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011011111001100110010000011001100111111110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_temp~3_combout\,
	datab => \U1|U1|U3|ALT_INV_carry[7]~9_combout\,
	datac => \U1|U1|U3|ALT_INV_carry[6]~7_combout\,
	datad => \U1|U1|U3|ALT_INV_temp~14_combout\,
	datae => \U1|U1|U3|ALT_INV_P\(7),
	dataf => \U1|U1|U3|ALT_INV_G\(4),
	combout => \U1|U1|U3|S\(7));

-- Location: LABCELL_X30_Y38_N28
\U2|Mux8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U2|Mux8~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\B[7]~input_o\ $ (!\A[7]~input_o\))) # (\LogicFN[1]~input_o\ & (\B[7]~input_o\ & \A[7]~input_o\)) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\LogicFN[1]~input_o\ & \A[7]~input_o\)) # 
-- (\B[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100001100110000110000110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \U2|Mux8~0_combout\);

-- Location: MLABCELL_X31_Y36_N16
\MUX6|Mux8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux8~0_combout\ = ( \MUX6|Mux14~2_combout\ & ( ((\U1|U1|U3|S\(7) & \MUX6|Mux14~3_combout\)) # (\U2|Mux8~0_combout\) ) ) # ( !\MUX6|Mux14~2_combout\ & ( (\U1|U1|U3|S\(7) & \MUX6|Mux14~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|U3|ALT_INV_S\(7),
	datac => \MUX6|ALT_INV_Mux14~3_combout\,
	datad => \U2|ALT_INV_Mux8~0_combout\,
	dataf => \MUX6|ALT_INV_Mux14~2_combout\,
	combout => \MUX6|Mux8~0_combout\);

-- Location: MLABCELL_X34_Y33_N36
\U3|U1|U4|ShiftLeft0~24\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~24_combout\ = ( \U3|Asig[15]~15_combout\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\U3|Asig[13]~14_combout\))) # (\B[0]~input_o\ & (\U3|Asig[12]~13_combout\)) ) ) ) # ( !\U3|Asig[15]~15_combout\ & ( \B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & ((\U3|Asig[13]~14_combout\))) # (\B[0]~input_o\ & (\U3|Asig[12]~13_combout\)) ) ) ) # ( \U3|Asig[15]~15_combout\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\U3|Asig[14]~12_combout\) ) ) ) # ( !\U3|Asig[15]~15_combout\ & ( 
-- !\B[1]~input_o\ & ( (\B[0]~input_o\ & \U3|Asig[14]~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \U3|ALT_INV_Asig[12]~13_combout\,
	datac => \U3|ALT_INV_Asig[13]~14_combout\,
	datad => \U3|ALT_INV_Asig[14]~12_combout\,
	datae => \U3|ALT_INV_Asig[15]~15_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \U3|U1|U4|ShiftLeft0~24_combout\);

-- Location: MLABCELL_X31_Y34_N38
\U3|U1|U4|ShiftLeft0~25\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~25_combout\ = ( \U3|ShiftCount[3]~0_combout\ & ( \B[2]~input_o\ & ( \U3|U1|U4|ShiftLeft0~12_combout\ ) ) ) # ( !\U3|ShiftCount[3]~0_combout\ & ( \B[2]~input_o\ & ( \U3|U1|U4|ShiftLeft0~13_combout\ ) ) ) # ( 
-- \U3|ShiftCount[3]~0_combout\ & ( !\B[2]~input_o\ & ( \U3|U1|U4|ShiftLeft0~14_combout\ ) ) ) # ( !\U3|ShiftCount[3]~0_combout\ & ( !\B[2]~input_o\ & ( \U3|U1|U4|ShiftLeft0~24_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftLeft0~14_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftLeft0~12_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftLeft0~24_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~13_combout\,
	datae => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \U3|U1|U4|ShiftLeft0~25_combout\);

-- Location: MLABCELL_X31_Y33_N10
\U3|U1|U4|MUX1|Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux0~0_combout\ = ( \ShiftFN[1]~input_o\ & ( (\U3|Asig[15]~15_combout\ & ((\U3|U1|U4|MUX1|Mux15~0_combout\) # (\ShiftFN[0]~input_o\))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\U3|Asig[15]~15_combout\)) # 
-- (\ShiftFN[0]~input_o\ & ((\U3|U1|U4|ShiftLeft0~25_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \U3|ALT_INV_Asig[15]~15_combout\,
	datac => \U3|U1|U4|MUX1|ALT_INV_Mux15~0_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~25_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \U3|U1|U4|MUX1|Mux0~0_combout\);

-- Location: MLABCELL_X31_Y34_N32
\U3|U1|U4|ShiftRight1~23\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight1~23_combout\ = ( \U3|Asig[15]~15_combout\ & ( ((!\B[2]~input_o\ & (\U3|U1|U4|ShiftRight1~16_combout\)) # (\B[2]~input_o\ & ((\U3|U1|U4|ShiftRight1~17_combout\)))) # (\U3|ShiftCount[3]~0_combout\) ) ) # ( !\U3|Asig[15]~15_combout\ & ( 
-- (!\U3|ShiftCount[3]~0_combout\ & ((!\B[2]~input_o\ & (\U3|U1|U4|ShiftRight1~16_combout\)) # (\B[2]~input_o\ & ((\U3|U1|U4|ShiftRight1~17_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000000001010011111111110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftRight1~16_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftRight1~17_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	dataf => \U3|ALT_INV_Asig[15]~15_combout\,
	combout => \U3|U1|U4|ShiftRight1~23_combout\);

-- Location: MLABCELL_X31_Y34_N8
\U3|U1|U4|ShiftLeft0~23\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftLeft0~23_combout\ = ( \B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & \U3|U1|U4|ShiftLeft0~12_combout\) ) ) # ( !\B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & \U3|U1|U4|ShiftLeft0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	datac => \U3|U1|U4|ALT_INV_ShiftLeft0~14_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftLeft0~12_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \U3|U1|U4|ShiftLeft0~23_combout\);

-- Location: MLABCELL_X31_Y34_N34
\U3|U1|U4|ShiftRight0~10\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|ShiftRight0~10_combout\ = ( \B[2]~input_o\ & ( (\U3|U1|U4|ShiftRight1~17_combout\ & !\U3|ShiftCount[3]~0_combout\) ) ) # ( !\B[2]~input_o\ & ( (!\U3|ShiftCount[3]~0_combout\ & (\U3|U1|U4|ShiftRight1~16_combout\)) # (\U3|ShiftCount[3]~0_combout\ 
-- & ((\U3|U1|U4|ShiftRight0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftRight1~16_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftRight1~17_combout\,
	datac => \U3|ALT_INV_ShiftCount[3]~0_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftRight0~5_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \U3|U1|U4|ShiftRight0~10_combout\);

-- Location: MLABCELL_X31_Y36_N34
\U3|U1|U4|MUX1|Mux8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U3|U1|U4|MUX1|Mux8~0_combout\ = ( \ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \U3|U1|U4|ShiftRight1~23_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \U3|U1|U4|ShiftRight0~10_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( 
-- !\ShiftFN[1]~input_o\ & ( \U3|U1|U4|ShiftLeft0~23_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( \U3|Asig[7]~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|ALT_INV_ShiftRight1~23_combout\,
	datab => \U3|U1|U4|ALT_INV_ShiftLeft0~23_combout\,
	datac => \U3|ALT_INV_Asig[7]~7_combout\,
	datad => \U3|U1|U4|ALT_INV_ShiftRight0~10_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \U3|U1|U4|MUX1|Mux8~0_combout\);

-- Location: MLABCELL_X31_Y36_N0
\MUX6|Mux8~1\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux8~1_combout\ = ( !\MUX1|Y[0]~0_combout\ & ( (((\U3|U1|U4|MUX1|Mux8~0_combout\ & (!\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))) # (\MUX6|Mux8~0_combout\)) ) ) # ( \MUX1|Y[0]~0_combout\ & ( ((\ShiftFN[1]~input_o\ & 
-- (\U3|U1|U4|MUX1|Mux0~0_combout\ & (!\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\)))) # (\MUX6|Mux8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011111100110011001101110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \MUX6|ALT_INV_Mux8~0_combout\,
	datac => \U3|U1|U4|MUX1|ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	datae => \MUX1|ALT_INV_Y[0]~0_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	datag => \U3|U1|U4|MUX1|ALT_INV_Mux8~0_combout\,
	combout => \MUX6|Mux8~1_combout\);

-- Location: MLABCELL_X31_Y36_N18
\MUX6|Mux7~0\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux7~0_combout\ = ( !\ShiftFN[1]~input_o\ & ( (\ExtWord~input_o\ & (!\FuncClass[1]~input_o\ & !\FuncClass[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \MUX6|Mux7~0_combout\);

-- Location: MLABCELL_X31_Y36_N22
\MUX6|Mux7~1\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux7~1_combout\ = ( \U1|U1|U3|S\(7) & ( (\MUX6|Mux7~0_combout\ & ((!\ShiftFN[0]~input_o\) # (\U3|U1|U4|MUX1|Mux8~0_combout\))) ) ) # ( !\U1|U1|U3|S\(7) & ( (\MUX6|Mux7~0_combout\ & (\U3|U1|U4|MUX1|Mux8~0_combout\ & \ShiftFN[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX6|ALT_INV_Mux7~0_combout\,
	datac => \U3|U1|U4|MUX1|ALT_INV_Mux8~0_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \U1|U1|U3|ALT_INV_S\(7),
	combout => \MUX6|Mux7~1_combout\);

-- Location: MLABCELL_X31_Y36_N24
\MUX6|Mux1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux1~0_combout\ = ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\) # (\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \MUX6|Mux1~0_combout\);

-- Location: MLABCELL_X29_Y38_N16
\U1|U1|U3|carry[8]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[8]~13_combout\ = ( !\U1|U1|U3|temp~6_combout\ & ( (!\A[7]~input_o\ & ((!\U1|U1|U3|G\(6)) # (!\B[7]~input_o\ $ (\AddnSub~input_o\)))) # (\A[7]~input_o\ & (!\U1|U1|U3|G\(6) & (!\B[7]~input_o\ $ (\AddnSub~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010001110111010001000111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \U1|U1|U3|ALT_INV_G\(6),
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \U1|U1|U3|ALT_INV_temp~6_combout\,
	combout => \U1|U1|U3|carry[8]~13_combout\);

-- Location: LABCELL_X30_Y38_N34
\U1|U1|U3|carry[8]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[8]~12_combout\ = ( \U1|U1|U3|P\(5) & ( (!\U1|U1|U3|G\(5) & !\U1|U1|U3|G\(4)) ) ) # ( !\U1|U1|U3|P\(5) & ( !\U1|U1|U3|G\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_G\(5),
	datac => \U1|U1|U3|ALT_INV_G\(4),
	dataf => \U1|U1|U3|ALT_INV_P\(5),
	combout => \U1|U1|U3|carry[8]~12_combout\);

-- Location: MLABCELL_X29_Y35_N18
\U1|U1|U3|carry[8]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[8]~10_combout\ = ( \B[1]~input_o\ & ( \A[1]~input_o\ & ( (!\B[2]~input_o\ & (((\AddnSub~input_o\ & \U1|U1|U3|G\(0))) # (\A[2]~input_o\))) # (\B[2]~input_o\ & ((!\AddnSub~input_o\) # ((\A[2]~input_o\ & \U1|U1|U3|G\(0))))) ) ) ) # ( 
-- !\B[1]~input_o\ & ( \A[1]~input_o\ & ( (!\B[2]~input_o\ & (((\A[2]~input_o\ & \U1|U1|U3|G\(0))) # (\AddnSub~input_o\))) # (\B[2]~input_o\ & (((!\AddnSub~input_o\ & \U1|U1|U3|G\(0))) # (\A[2]~input_o\))) ) ) ) # ( \B[1]~input_o\ & ( !\A[1]~input_o\ & ( 
-- (!\B[2]~input_o\ & (\A[2]~input_o\ & ((\U1|U1|U3|G\(0)) # (\AddnSub~input_o\)))) # (\B[2]~input_o\ & (!\AddnSub~input_o\ & ((\U1|U1|U3|G\(0)) # (\A[2]~input_o\)))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[2]~input_o\ & (\AddnSub~input_o\ & 
-- ((\U1|U1|U3|G\(0)) # (\A[2]~input_o\)))) # (\B[2]~input_o\ & (\A[2]~input_o\ & ((!\AddnSub~input_o\) # (\U1|U1|U3|G\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000011101000101000111010000011101011111010111010001111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \U1|U1|U3|ALT_INV_G\(0),
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \U1|U1|U3|carry[8]~10_combout\);

-- Location: MLABCELL_X29_Y38_N32
\U1|U1|U3|carry[8]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[8]~11_combout\ = ( \U1|U1|U3|carry[8]~1_combout\ & ( \AddnSub~input_o\ & ( (!\A[3]~input_o\ & (\U1|U1|U3|carry[8]~10_combout\ & !\B[3]~input_o\)) # (\A[3]~input_o\ & ((!\B[3]~input_o\) # (\U1|U1|U3|carry[8]~10_combout\))) ) ) ) # ( 
-- \U1|U1|U3|carry[8]~1_combout\ & ( !\AddnSub~input_o\ & ( (!\A[3]~input_o\ & (\U1|U1|U3|carry[8]~10_combout\ & \B[3]~input_o\)) # (\A[3]~input_o\ & ((\B[3]~input_o\) # (\U1|U1|U3|carry[8]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110001011100000000000000000111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \U1|U1|U3|ALT_INV_carry[8]~10_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datae => \U1|U1|U3|ALT_INV_carry[8]~1_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \U1|U1|U3|carry[8]~11_combout\);

-- Location: MLABCELL_X29_Y38_N0
\U1|U1|U3|S[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|S\(8) = ( \U1|U1|U3|P\(8) & ( \U1|U1|U3|carry[8]~11_combout\ & ( (!\U1|U1|U3|carry[8]~0_combout\ & \U1|U1|U3|carry[8]~13_combout\) ) ) ) # ( !\U1|U1|U3|P\(8) & ( \U1|U1|U3|carry[8]~11_combout\ & ( (!\U1|U1|U3|carry[8]~13_combout\) # 
-- (\U1|U1|U3|carry[8]~0_combout\) ) ) ) # ( \U1|U1|U3|P\(8) & ( !\U1|U1|U3|carry[8]~11_combout\ & ( (\U1|U1|U3|carry[8]~13_combout\ & ((!\U1|U1|U3|carry[8]~0_combout\) # (\U1|U1|U3|carry[8]~12_combout\))) ) ) ) # ( !\U1|U1|U3|P\(8) & ( 
-- !\U1|U1|U3|carry[8]~11_combout\ & ( (!\U1|U1|U3|carry[8]~13_combout\) # ((\U1|U1|U3|carry[8]~0_combout\ & !\U1|U1|U3|carry[8]~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011100001000110010001111011101110111010010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_carry[8]~0_combout\,
	datab => \U1|U1|U3|ALT_INV_carry[8]~13_combout\,
	datac => \U1|U1|U3|ALT_INV_carry[8]~12_combout\,
	datae => \U1|U1|U3|ALT_INV_P\(8),
	dataf => \U1|U1|U3|ALT_INV_carry[8]~11_combout\,
	combout => \U1|U1|U3|S\(8));

-- Location: MLABCELL_X31_Y36_N30
\MUX6|Mux7~3\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux7~3_combout\ = ( \U3|U1|U4|MUX1|Mux0~0_combout\ & ( \ExtWord~input_o\ ) ) # ( \U3|U1|U4|MUX1|Mux0~0_combout\ & ( !\ExtWord~input_o\ & ( (!\MUX6|Mux1~0_combout\ & ((\U3|U1|U4|MUX1|Mux7~0_combout\))) # (\MUX6|Mux1~0_combout\ & (\U1|U1|U3|S\(8))) ) 
-- ) ) # ( !\U3|U1|U4|MUX1|Mux0~0_combout\ & ( !\ExtWord~input_o\ & ( (!\MUX6|Mux1~0_combout\ & ((\U3|U1|U4|MUX1|Mux7~0_combout\))) # (\MUX6|Mux1~0_combout\ & (\U1|U1|U3|S\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX6|ALT_INV_Mux1~0_combout\,
	datab => \U1|U1|U3|ALT_INV_S\(8),
	datad => \U3|U1|U4|MUX1|ALT_INV_Mux7~0_combout\,
	datae => \U3|U1|U4|MUX1|ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \MUX6|Mux7~3_combout\);

-- Location: LABCELL_X30_Y36_N36
\MUX6|Mux7~2\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux7~2_combout\ = ( \B[8]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[8]~input_o\)) ) ) # ( !\B[8]~input_o\ & ( (\A[8]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011011101011111010111110101111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \MUX6|Mux7~2_combout\);

-- Location: MLABCELL_X31_Y35_N12
\MUX6|Mux3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux3~0_combout\ = ( !\FuncClass[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & ((!\ExtWord~input_o\) # (\ShiftFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000000110011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \MUX6|Mux3~0_combout\);

-- Location: LABCELL_X30_Y37_N6
\MUX6|Mux7~4\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux7~4_combout\ = ( \MUX6|Mux3~0_combout\ & ( (((\MUX6|Mux14~2_combout\ & \MUX6|Mux7~2_combout\)) # (\MUX6|Mux7~3_combout\)) # (\MUX6|Mux7~1_combout\) ) ) # ( !\MUX6|Mux3~0_combout\ & ( ((\MUX6|Mux14~2_combout\ & \MUX6|Mux7~2_combout\)) # 
-- (\MUX6|Mux7~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001100110111011100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX6|ALT_INV_Mux14~2_combout\,
	datab => \MUX6|ALT_INV_Mux7~1_combout\,
	datac => \MUX6|ALT_INV_Mux7~3_combout\,
	datad => \MUX6|ALT_INV_Mux7~2_combout\,
	dataf => \MUX6|ALT_INV_Mux3~0_combout\,
	combout => \MUX6|Mux7~4_combout\);

-- Location: MLABCELL_X29_Y35_N14
\U1|U1|U3|carry[9]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[9]~14_combout\ = ( \A[1]~input_o\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\AddnSub~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & (\A[2]~input_o\)) # (\B[1]~input_o\ & 
-- ((!\AddnSub~input_o\))))) ) ) # ( !\A[1]~input_o\ & ( (\A[2]~input_o\ & (!\AddnSub~input_o\ $ (!\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000110101010111000011010101011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \U1|U1|U3|carry[9]~14_combout\);

-- Location: LABCELL_X30_Y38_N36
\U1|U1|U3|carry[9]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[9]~15_combout\ = ( \U1|U1|U3|carry[9]~14_combout\ & ( \A[3]~input_o\ & ( (!\B[4]~input_o\ $ (!\AddnSub~input_o\)) # (\A[4]~input_o\) ) ) ) # ( !\U1|U1|U3|carry[9]~14_combout\ & ( \A[3]~input_o\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & 
-- ((\AddnSub~input_o\))) # (\B[3]~input_o\ & (\A[4]~input_o\)))) # (\B[4]~input_o\ & ((!\B[3]~input_o\ & (\A[4]~input_o\)) # (\B[3]~input_o\ & ((!\AddnSub~input_o\))))) ) ) ) # ( \U1|U1|U3|carry[9]~14_combout\ & ( !\A[3]~input_o\ & ( (!\B[4]~input_o\ & 
-- ((!\B[3]~input_o\ & ((\AddnSub~input_o\))) # (\B[3]~input_o\ & (\A[4]~input_o\)))) # (\B[4]~input_o\ & ((!\B[3]~input_o\ & (\A[4]~input_o\)) # (\B[3]~input_o\ & ((!\AddnSub~input_o\))))) ) ) ) # ( !\U1|U1|U3|carry[9]~14_combout\ & ( !\A[3]~input_o\ & ( 
-- (\A[4]~input_o\ & (!\B[4]~input_o\ $ (!\AddnSub~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000101111000111000010111100011100101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	datae => \U1|U1|U3|ALT_INV_carry[9]~14_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \U1|U1|U3|carry[9]~15_combout\);

-- Location: LABCELL_X30_Y38_N14
\U1|U1|U3|carry[9]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[9]~16_combout\ = ( \U1|U1|U3|P\(5) & ( (\U1|U1|U3|carry[8]~0_combout\ & ((\U1|U1|U3|G\(5)) # (\U1|U1|U3|carry[9]~15_combout\))) ) ) # ( !\U1|U1|U3|P\(5) & ( (\U1|U1|U3|carry[8]~0_combout\ & \U1|U1|U3|G\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_carry[8]~0_combout\,
	datac => \U1|U1|U3|ALT_INV_carry[9]~15_combout\,
	datad => \U1|U1|U3|ALT_INV_G\(5),
	dataf => \U1|U1|U3|ALT_INV_P\(5),
	combout => \U1|U1|U3|carry[9]~16_combout\);

-- Location: MLABCELL_X29_Y37_N0
\U1|U1|U3|S[9]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|S\(9) = ( \U1|U1|U3|P\(9) & ( \U1|U1|U3|carry[8]~13_combout\ & ( (\U1|U1|U3|carry[9]~2_combout\ & ((!\U1|U1|U3|carry[9]~16_combout\) # (!\U1|U1|U3|P\(8)))) ) ) ) # ( !\U1|U1|U3|P\(9) & ( \U1|U1|U3|carry[8]~13_combout\ & ( 
-- (!\U1|U1|U3|carry[9]~2_combout\) # ((\U1|U1|U3|carry[9]~16_combout\ & \U1|U1|U3|P\(8))) ) ) ) # ( \U1|U1|U3|P\(9) & ( !\U1|U1|U3|carry[8]~13_combout\ & ( (!\U1|U1|U3|P\(8) & \U1|U1|U3|carry[9]~2_combout\) ) ) ) # ( !\U1|U1|U3|P\(9) & ( 
-- !\U1|U1|U3|carry[8]~13_combout\ & ( (!\U1|U1|U3|carry[9]~2_combout\) # (\U1|U1|U3|P\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011000011000000110011110001111100010000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_carry[9]~16_combout\,
	datab => \U1|U1|U3|ALT_INV_P\(8),
	datac => \U1|U1|U3|ALT_INV_carry[9]~2_combout\,
	datae => \U1|U1|U3|ALT_INV_P\(9),
	dataf => \U1|U1|U3|ALT_INV_carry[8]~13_combout\,
	combout => \U1|U1|U3|S\(9));

-- Location: MLABCELL_X31_Y35_N18
\MUX6|Mux6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux6~1_combout\ = ( \U3|U1|U4|MUX1|Mux6~2_combout\ & ( (!\ExtWord~input_o\ & (((!\MUX6|Mux1~0_combout\) # (\U1|U1|U3|S\(9))))) # (\ExtWord~input_o\ & (\U3|U1|U4|MUX1|Mux0~0_combout\)) ) ) # ( !\U3|U1|U4|MUX1|Mux6~2_combout\ & ( (!\ExtWord~input_o\ & 
-- (((\MUX6|Mux1~0_combout\ & \U1|U1|U3|S\(9))))) # (\ExtWord~input_o\ & (\U3|U1|U4|MUX1|Mux0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101000001010011010111000101111101011100010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|MUX1|ALT_INV_Mux0~0_combout\,
	datab => \MUX6|ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \U1|U1|U3|ALT_INV_S\(9),
	dataf => \U3|U1|U4|MUX1|ALT_INV_Mux6~2_combout\,
	combout => \MUX6|Mux6~1_combout\);

-- Location: LABCELL_X30_Y36_N38
\MUX6|Mux6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux6~0_combout\ = ( \A[9]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[9]~input_o\) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[9]~input_o\))) ) ) # ( !\A[9]~input_o\ & ( (\B[9]~input_o\ & ((!\LogicFN[0]~input_o\) 
-- # (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101001011010101011110101101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \MUX6|Mux6~0_combout\);

-- Location: LABCELL_X30_Y37_N8
\MUX6|Mux6~2\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux6~2_combout\ = ( \MUX6|Mux3~0_combout\ & ( (((\MUX6|Mux14~2_combout\ & \MUX6|Mux6~0_combout\)) # (\MUX6|Mux6~1_combout\)) # (\MUX6|Mux7~1_combout\) ) ) # ( !\MUX6|Mux3~0_combout\ & ( ((\MUX6|Mux14~2_combout\ & \MUX6|Mux6~0_combout\)) # 
-- (\MUX6|Mux7~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001100110111011100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX6|ALT_INV_Mux14~2_combout\,
	datab => \MUX6|ALT_INV_Mux7~1_combout\,
	datac => \MUX6|ALT_INV_Mux6~1_combout\,
	datad => \MUX6|ALT_INV_Mux6~0_combout\,
	dataf => \MUX6|ALT_INV_Mux3~0_combout\,
	combout => \MUX6|Mux6~2_combout\);

-- Location: LABCELL_X30_Y37_N34
\MUX6|Mux5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux5~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\B[10]~input_o\ & (\A[10]~input_o\ & !\LogicFN[1]~input_o\)) # (\B[10]~input_o\ & (!\A[10]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[10]~input_o\ & 
-- \LogicFN[1]~input_o\)) # (\B[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100110011111100111100000000110011110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \MUX6|Mux5~0_combout\);

-- Location: MLABCELL_X29_Y37_N4
\U1|U1|U3|carry[10]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[10]~19_combout\ = ( \AddnSub~input_o\ & ( \U1|U1|U3|temp~0_combout\ & ( (\B[9]~input_o\ & (!\U1|U1|U3|temp~1_combout\ & !\A[9]~input_o\)) ) ) ) # ( !\AddnSub~input_o\ & ( \U1|U1|U3|temp~0_combout\ & ( (!\B[9]~input_o\ & 
-- (!\U1|U1|U3|temp~1_combout\ & !\A[9]~input_o\)) ) ) ) # ( \AddnSub~input_o\ & ( !\U1|U1|U3|temp~0_combout\ & ( (!\U1|U1|U3|temp~1_combout\ & ((!\U1|U1|U3|G\(8) & ((!\A[9]~input_o\) # (\B[9]~input_o\))) # (\U1|U1|U3|G\(8) & (\B[9]~input_o\ & 
-- !\A[9]~input_o\)))) ) ) ) # ( !\AddnSub~input_o\ & ( !\U1|U1|U3|temp~0_combout\ & ( (!\U1|U1|U3|temp~1_combout\ & ((!\U1|U1|U3|G\(8) & ((!\B[9]~input_o\) # (!\A[9]~input_o\))) # (\U1|U1|U3|G\(8) & (!\B[9]~input_o\ & !\A[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000010000000101100000010000011000000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_G\(8),
	datab => \ALT_INV_B[9]~input_o\,
	datac => \U1|U1|U3|ALT_INV_temp~1_combout\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_AddnSub~input_o\,
	dataf => \U1|U1|U3|ALT_INV_temp~0_combout\,
	combout => \U1|U1|U3|carry[10]~19_combout\);

-- Location: LABCELL_X30_Y38_N38
\U1|U1|U3|carry[10]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[10]~17_combout\ = ( \U1|U1|U3|G\(2) & ( \A[3]~input_o\ & ( (!\B[4]~input_o\ $ (!\AddnSub~input_o\)) # (\A[4]~input_o\) ) ) ) # ( !\U1|U1|U3|G\(2) & ( \A[3]~input_o\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & (\AddnSub~input_o\)) # 
-- (\B[3]~input_o\ & ((\A[4]~input_o\))))) # (\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\A[4]~input_o\))) # (\B[3]~input_o\ & (!\AddnSub~input_o\)))) ) ) ) # ( \U1|U1|U3|G\(2) & ( !\A[3]~input_o\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & (\AddnSub~input_o\)) # 
-- (\B[3]~input_o\ & ((\A[4]~input_o\))))) # (\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\A[4]~input_o\))) # (\B[3]~input_o\ & (!\AddnSub~input_o\)))) ) ) ) # ( !\U1|U1|U3|G\(2) & ( !\A[3]~input_o\ & ( (\A[4]~input_o\ & (!\B[4]~input_o\ $ (!\AddnSub~input_o\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000110000111111000011000011111100101101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \U1|U1|U3|ALT_INV_G\(2),
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \U1|U1|U3|carry[10]~17_combout\);

-- Location: LABCELL_X30_Y38_N10
\U1|U1|U3|carry[10]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[10]~18_combout\ = ( \U1|U1|U3|carry[10]~17_combout\ & ( (\U1|U1|U3|carry[8]~0_combout\ & ((\U1|U1|U3|G\(5)) # (\U1|U1|U3|P\(5)))) ) ) # ( !\U1|U1|U3|carry[10]~17_combout\ & ( (\U1|U1|U3|carry[8]~0_combout\ & \U1|U1|U3|G\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_carry[8]~0_combout\,
	datac => \U1|U1|U3|ALT_INV_P\(5),
	datad => \U1|U1|U3|ALT_INV_G\(5),
	dataf => \U1|U1|U3|ALT_INV_carry[10]~17_combout\,
	combout => \U1|U1|U3|carry[10]~18_combout\);

-- Location: MLABCELL_X29_Y37_N10
\U1|U1|U3|S[10]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|S\(10) = ( \U1|U1|U3|carry[10]~19_combout\ & ( \U1|U1|U3|carry[10]~18_combout\ & ( !\U1|U1|U3|P\(10) $ (!\U1|U1|U3|product~3_combout\) ) ) ) # ( !\U1|U1|U3|carry[10]~19_combout\ & ( \U1|U1|U3|carry[10]~18_combout\ & ( !\U1|U1|U3|P\(10) ) ) ) # ( 
-- \U1|U1|U3|carry[10]~19_combout\ & ( !\U1|U1|U3|carry[10]~18_combout\ & ( !\U1|U1|U3|P\(10) $ (((!\U1|U1|U3|product~3_combout\) # (\U1|U1|U3|carry[8]~13_combout\))) ) ) ) # ( !\U1|U1|U3|carry[10]~19_combout\ & ( !\U1|U1|U3|carry[10]~18_combout\ & ( 
-- !\U1|U1|U3|P\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011111100001111110000111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|U3|ALT_INV_carry[8]~13_combout\,
	datac => \U1|U1|U3|ALT_INV_P\(10),
	datad => \U1|U1|U3|ALT_INV_product~3_combout\,
	datae => \U1|U1|U3|ALT_INV_carry[10]~19_combout\,
	dataf => \U1|U1|U3|ALT_INV_carry[10]~18_combout\,
	combout => \U1|U1|U3|S\(10));

-- Location: MLABCELL_X31_Y35_N16
\MUX6|Mux5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux5~1_combout\ = ( \U3|U1|U4|MUX1|Mux5~3_combout\ & ( (!\ExtWord~input_o\ & (((!\MUX6|Mux1~0_combout\) # (\U1|U1|U3|S\(10))))) # (\ExtWord~input_o\ & (\U3|U1|U4|MUX1|Mux0~0_combout\)) ) ) # ( !\U3|U1|U4|MUX1|Mux5~3_combout\ & ( (!\ExtWord~input_o\ 
-- & (((\MUX6|Mux1~0_combout\ & \U1|U1|U3|S\(10))))) # (\ExtWord~input_o\ & (\U3|U1|U4|MUX1|Mux0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101000000110101010111001111010101011100111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|MUX1|ALT_INV_Mux0~0_combout\,
	datab => \MUX6|ALT_INV_Mux1~0_combout\,
	datac => \U1|U1|U3|ALT_INV_S\(10),
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \U3|U1|U4|MUX1|ALT_INV_Mux5~3_combout\,
	combout => \MUX6|Mux5~1_combout\);

-- Location: LABCELL_X30_Y37_N10
\MUX6|Mux5~2\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux5~2_combout\ = ( \MUX6|Mux3~0_combout\ & ( (((\MUX6|Mux14~2_combout\ & \MUX6|Mux5~0_combout\)) # (\MUX6|Mux5~1_combout\)) # (\MUX6|Mux7~1_combout\) ) ) # ( !\MUX6|Mux3~0_combout\ & ( ((\MUX6|Mux14~2_combout\ & \MUX6|Mux5~0_combout\)) # 
-- (\MUX6|Mux7~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX6|ALT_INV_Mux14~2_combout\,
	datab => \MUX6|ALT_INV_Mux7~1_combout\,
	datac => \MUX6|ALT_INV_Mux5~0_combout\,
	datad => \MUX6|ALT_INV_Mux5~1_combout\,
	dataf => \MUX6|ALT_INV_Mux3~0_combout\,
	combout => \MUX6|Mux5~2_combout\);

-- Location: MLABCELL_X29_Y37_N14
\U1|U1|U3|temp~15\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|temp~15_combout\ = ( \A[9]~input_o\ & ( \U1|U1|U3|P\(10) & ( !\AddnSub~input_o\ $ (!\B[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \U1|U1|U3|ALT_INV_P\(10),
	combout => \U1|U1|U3|temp~15_combout\);

-- Location: MLABCELL_X31_Y37_N20
\U1|U1|U3|carry[11]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[11]~22_combout\ = ( \U1|U1|U3|P\(10) & ( (!\U1|U1|U3|temp~2_combout\ & (!\U1|U1|U3|G[10]~0_combout\ & (!\U1|U1|U3|temp~1_combout\ & !\U1|U1|U3|temp~15_combout\))) ) ) # ( !\U1|U1|U3|P\(10) & ( (!\U1|U1|U3|temp~2_combout\ & 
-- (!\U1|U1|U3|G[10]~0_combout\ & !\U1|U1|U3|temp~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_temp~2_combout\,
	datab => \U1|U1|U3|ALT_INV_G[10]~0_combout\,
	datac => \U1|U1|U3|ALT_INV_temp~1_combout\,
	datad => \U1|U1|U3|ALT_INV_temp~15_combout\,
	dataf => \U1|U1|U3|ALT_INV_P\(10),
	combout => \U1|U1|U3|carry[11]~22_combout\);

-- Location: MLABCELL_X29_Y37_N18
\U1|U1|U3|carry[11]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[11]~23_combout\ = ( \U1|U1|U3|P\(10) & ( (\U1|U1|U3|P\(9) & ((\U1|U1|U3|temp~0_combout\) # (\U1|U1|U3|G\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_G\(8),
	datab => \U1|U1|U3|ALT_INV_P\(9),
	datac => \U1|U1|U3|ALT_INV_temp~0_combout\,
	dataf => \U1|U1|U3|ALT_INV_P\(10),
	combout => \U1|U1|U3|carry[11]~23_combout\);

-- Location: LABCELL_X30_Y35_N8
\U1|U1|U3|carry[11]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[11]~20_combout\ = ( \U1|U1|U3|G\(5) & ( (!\U1|U1|U3|P\(6) & !\U1|U1|U3|G\(6)) ) ) # ( !\U1|U1|U3|G\(5) & ( (!\U1|U1|U3|G\(6) & ((!\U1|U1|U3|P\(6)) # ((!\U1|U1|U3|P\(5)) # (\U1|U1|U3|carry[6]~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011110000111000001111000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_P\(6),
	datab => \U1|U1|U3|ALT_INV_P\(5),
	datac => \U1|U1|U3|ALT_INV_G\(6),
	datad => \U1|U1|U3|ALT_INV_carry[6]~8_combout\,
	dataf => \U1|U1|U3|ALT_INV_G\(5),
	combout => \U1|U1|U3|carry[11]~20_combout\);

-- Location: MLABCELL_X29_Y38_N24
\U1|U1|U3|carry[11]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[11]~21_combout\ = ( !\U1|U1|U3|temp~6_combout\ & ( (!\A[7]~input_o\ & ((!\B[7]~input_o\ $ (\AddnSub~input_o\)) # (\U1|U1|U3|carry[11]~20_combout\))) # (\A[7]~input_o\ & (\U1|U1|U3|carry[11]~20_combout\ & (!\B[7]~input_o\ $ 
-- (\AddnSub~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000011111001100100001111100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \U1|U1|U3|ALT_INV_carry[11]~20_combout\,
	dataf => \U1|U1|U3|ALT_INV_temp~6_combout\,
	combout => \U1|U1|U3|carry[11]~21_combout\);

-- Location: MLABCELL_X31_Y37_N6
\U1|U1|U3|S[11]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|S\(11) = ( \U1|U1|U3|carry[11]~21_combout\ & ( !\U1|U1|U3|P\(11) $ (((\U1|U1|U3|carry[11]~22_combout\ & !\U1|U1|U3|carry[11]~23_combout\))) ) ) # ( !\U1|U1|U3|carry[11]~21_combout\ & ( !\U1|U1|U3|P\(11) $ (((\U1|U1|U3|carry[11]~22_combout\ & 
-- (!\U1|U1|U3|carry[11]~23_combout\ & !\U1|U1|U3|product~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110011001100100111001100110010011100100111001001110010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_carry[11]~22_combout\,
	datab => \U1|U1|U3|ALT_INV_P\(11),
	datac => \U1|U1|U3|ALT_INV_carry[11]~23_combout\,
	datad => \U1|U1|U3|ALT_INV_product~4_combout\,
	dataf => \U1|U1|U3|ALT_INV_carry[11]~21_combout\,
	combout => \U1|U1|U3|S\(11));

-- Location: MLABCELL_X31_Y35_N14
\MUX6|Mux4~1\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux4~1_combout\ = ( \U1|U1|U3|S\(11) & ( (!\ExtWord~input_o\ & (((\U3|U1|U4|MUX1|Mux4~0_combout\) # (\MUX6|Mux1~0_combout\)))) # (\ExtWord~input_o\ & (\U3|U1|U4|MUX1|Mux0~0_combout\)) ) ) # ( !\U1|U1|U3|S\(11) & ( (!\ExtWord~input_o\ & 
-- (((!\MUX6|Mux1~0_combout\ & \U3|U1|U4|MUX1|Mux4~0_combout\)))) # (\ExtWord~input_o\ & (\U3|U1|U4|MUX1|Mux0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000100011101000100011101110111010001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|U4|MUX1|ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \MUX6|ALT_INV_Mux1~0_combout\,
	datad => \U3|U1|U4|MUX1|ALT_INV_Mux4~0_combout\,
	dataf => \U1|U1|U3|ALT_INV_S\(11),
	combout => \MUX6|Mux4~1_combout\);

-- Location: LABCELL_X30_Y37_N30
\MUX6|Mux4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux4~0_combout\ = (!\B[11]~input_o\ & (\A[11]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[11]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[11]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001110001010101100111000101010110011100010101011001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	combout => \MUX6|Mux4~0_combout\);

-- Location: LABCELL_X30_Y37_N4
\MUX6|Mux4~2\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux4~2_combout\ = ( \MUX6|Mux3~0_combout\ & ( (((\MUX6|Mux14~2_combout\ & \MUX6|Mux4~0_combout\)) # (\MUX6|Mux4~1_combout\)) # (\MUX6|Mux7~1_combout\) ) ) # ( !\MUX6|Mux3~0_combout\ & ( ((\MUX6|Mux14~2_combout\ & \MUX6|Mux4~0_combout\)) # 
-- (\MUX6|Mux7~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001100110111011100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX6|ALT_INV_Mux14~2_combout\,
	datab => \MUX6|ALT_INV_Mux7~1_combout\,
	datac => \MUX6|ALT_INV_Mux4~1_combout\,
	datad => \MUX6|ALT_INV_Mux4~0_combout\,
	dataf => \MUX6|ALT_INV_Mux3~0_combout\,
	combout => \MUX6|Mux4~2_combout\);

-- Location: LABCELL_X32_Y37_N16
\MUX6|Mux3~4\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux3~4_combout\ = ( \LogicFN[1]~input_o\ & ( !\FuncClass[1]~input_o\ & ( (\FuncClass[0]~input_o\ & ((!\A[12]~input_o\ & (\B[12]~input_o\ & !\LogicFN[0]~input_o\)) # (\A[12]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[12]~input_o\))))) ) ) ) # ( 
-- !\LogicFN[1]~input_o\ & ( !\FuncClass[1]~input_o\ & ( (\FuncClass[0]~input_o\ & (!\B[12]~input_o\ $ (((!\A[12]~input_o\) # (!\LogicFN[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010100000101010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	datae => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \MUX6|Mux3~4_combout\);

-- Location: MLABCELL_X31_Y35_N22
\MUX6|Mux3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux3~1_combout\ = (\MUX6|Mux3~0_combout\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX6|ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_ExtWord~input_o\,
	combout => \MUX6|Mux3~1_combout\);

-- Location: MLABCELL_X31_Y37_N10
\U1|U1|U3|carry[12]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[12]~27_combout\ = ( \U1|U1|U3|P\(10) & ( (\U1|U1|U3|P\(11) & ((\U1|U1|U3|temp~15_combout\) # (\U1|U1|U3|temp~1_combout\))) ) ) # ( !\U1|U1|U3|P\(10) & ( (\U1|U1|U3|P\(11) & \U1|U1|U3|temp~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_temp~1_combout\,
	datac => \U1|U1|U3|ALT_INV_P\(11),
	datad => \U1|U1|U3|ALT_INV_temp~15_combout\,
	dataf => \U1|U1|U3|ALT_INV_P\(10),
	combout => \U1|U1|U3|carry[12]~27_combout\);

-- Location: MLABCELL_X29_Y38_N30
\U1|U1|U3|carry[12]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[12]~24_combout\ = ( \U1|U1|U3|carry[8]~12_combout\ & ( !\U1|U1|U3|G\(6) ) ) # ( !\U1|U1|U3|carry[8]~12_combout\ & ( (!\U1|U1|U3|G\(6) & !\U1|U1|U3|P\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|U3|ALT_INV_G\(6),
	datad => \U1|U1|U3|ALT_INV_P\(6),
	dataf => \U1|U1|U3|ALT_INV_carry[8]~12_combout\,
	combout => \U1|U1|U3|carry[12]~24_combout\);

-- Location: MLABCELL_X29_Y38_N28
\U1|U1|U3|carry[12]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[12]~25_combout\ = ( \AddnSub~input_o\ & ( (!\U1|U1|U3|temp~6_combout\ & ((!\B[7]~input_o\ & (\U1|U1|U3|carry[12]~24_combout\ & !\A[7]~input_o\)) # (\B[7]~input_o\ & ((!\A[7]~input_o\) # (\U1|U1|U3|carry[12]~24_combout\))))) ) ) # ( 
-- !\AddnSub~input_o\ & ( (!\U1|U1|U3|temp~6_combout\ & ((!\B[7]~input_o\ & ((!\A[7]~input_o\) # (\U1|U1|U3|carry[12]~24_combout\))) # (\B[7]~input_o\ & (\U1|U1|U3|carry[12]~24_combout\ & !\A[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000100000101100000010000001110000000100000111000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \U1|U1|U3|ALT_INV_carry[12]~24_combout\,
	datac => \U1|U1|U3|ALT_INV_temp~6_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \U1|U1|U3|carry[12]~25_combout\);

-- Location: LABCELL_X30_Y37_N14
\U1|U1|U3|carry[12]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[12]~26_combout\ = ( \U1|U1|U3|P\(10) & ( \U1|U1|U3|P\(11) & ( (\U1|U1|U3|P\(9) & ((!\U1|U1|U3|carry[9]~2_combout\) # ((\U1|U1|U3|P\(8) & !\U1|U1|U3|carry[12]~25_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_P\(8),
	datab => \U1|U1|U3|ALT_INV_carry[12]~25_combout\,
	datac => \U1|U1|U3|ALT_INV_P\(9),
	datad => \U1|U1|U3|ALT_INV_carry[9]~2_combout\,
	datae => \U1|U1|U3|ALT_INV_P\(10),
	dataf => \U1|U1|U3|ALT_INV_P\(11),
	combout => \U1|U1|U3|carry[12]~26_combout\);

-- Location: MLABCELL_X31_Y36_N26
\U1|U1|U3|S[12]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|S\(12) = ( \U1|U1|U3|P\(12) & ( (\U1|U1|U3|carry[12]~3_combout\ & (!\U1|U1|U3|carry[12]~27_combout\ & !\U1|U1|U3|carry[12]~26_combout\)) ) ) # ( !\U1|U1|U3|P\(12) & ( (!\U1|U1|U3|carry[12]~3_combout\) # ((\U1|U1|U3|carry[12]~26_combout\) # 
-- (\U1|U1|U3|carry[12]~27_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_carry[12]~3_combout\,
	datab => \U1|U1|U3|ALT_INV_carry[12]~27_combout\,
	datac => \U1|U1|U3|ALT_INV_carry[12]~26_combout\,
	dataf => \U1|U1|U3|ALT_INV_P\(12),
	combout => \U1|U1|U3|S\(12));

-- Location: MLABCELL_X31_Y35_N20
\MUX6|Mux3~2\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux3~2_combout\ = ( !\MUX6|Mux7~1_combout\ & ( (!\MUX6|Mux3~0_combout\) # ((!\ExtWord~input_o\) # (!\U3|U1|U4|MUX1|Mux0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX6|ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \U3|U1|U4|MUX1|ALT_INV_Mux0~0_combout\,
	dataf => \MUX6|ALT_INV_Mux7~1_combout\,
	combout => \MUX6|Mux3~2_combout\);

-- Location: MLABCELL_X31_Y35_N6
\MUX6|Mux3~3\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux3~3_combout\ = ( \U3|U1|U4|MUX1|Mux3~0_combout\ & ( \MUX6|Mux3~2_combout\ & ( ((\MUX6|Mux3~1_combout\ & ((!\MUX6|Mux1~0_combout\) # (\U1|U1|U3|S\(12))))) # (\MUX6|Mux3~4_combout\) ) ) ) # ( !\U3|U1|U4|MUX1|Mux3~0_combout\ & ( 
-- \MUX6|Mux3~2_combout\ & ( ((\MUX6|Mux3~1_combout\ & (\MUX6|Mux1~0_combout\ & \U1|U1|U3|S\(12)))) # (\MUX6|Mux3~4_combout\) ) ) ) # ( \U3|U1|U4|MUX1|Mux3~0_combout\ & ( !\MUX6|Mux3~2_combout\ ) ) # ( !\U3|U1|U4|MUX1|Mux3~0_combout\ & ( 
-- !\MUX6|Mux3~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101110111010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX6|ALT_INV_Mux3~4_combout\,
	datab => \MUX6|ALT_INV_Mux3~1_combout\,
	datac => \MUX6|ALT_INV_Mux1~0_combout\,
	datad => \U1|U1|U3|ALT_INV_S\(12),
	datae => \U3|U1|U4|MUX1|ALT_INV_Mux3~0_combout\,
	dataf => \MUX6|ALT_INV_Mux3~2_combout\,
	combout => \MUX6|Mux3~3_combout\);

-- Location: MLABCELL_X31_Y35_N30
\MUX6|Mux2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux2~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\B[13]~input_o\ $ (!\A[13]~input_o\))) # (\LogicFN[1]~input_o\ & (\B[13]~input_o\ & \A[13]~input_o\)) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\LogicFN[1]~input_o\ & 
-- \A[13]~input_o\)) # (\B[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100001100110000110000110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \MUX6|Mux2~0_combout\);

-- Location: LABCELL_X32_Y37_N26
\U1|U1|U3|carry[13]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[13]~29_combout\ = ( \U1|U1|U3|P\(12) & ( (!\U1|U1|U3|temp~11_combout\ & (!\U1|U1|U3|G[11]~1_combout\ & ((!\U1|U1|U3|G[10]~0_combout\) # (!\U1|U1|U3|P\(11))))) ) ) # ( !\U1|U1|U3|P\(12) & ( !\U1|U1|U3|temp~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_temp~11_combout\,
	datab => \U1|U1|U3|ALT_INV_G[11]~1_combout\,
	datac => \U1|U1|U3|ALT_INV_G[10]~0_combout\,
	datad => \U1|U1|U3|ALT_INV_P\(11),
	dataf => \U1|U1|U3|ALT_INV_P\(12),
	combout => \U1|U1|U3|carry[13]~29_combout\);

-- Location: MLABCELL_X31_Y37_N14
\U1|U1|U3|carry[13]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[13]~30_combout\ = ( \U1|U1|U3|carry[13]~29_combout\ & ( \U1|U1|U3|temp~4_combout\ & ( (!\U1|U1|U3|P\(12) & !\U1|U1|U3|temp~10_combout\) ) ) ) # ( \U1|U1|U3|carry[13]~29_combout\ & ( !\U1|U1|U3|temp~4_combout\ & ( 
-- (!\U1|U1|U3|temp~10_combout\ & ((!\U1|U1|U3|P\(12)) # ((!\U1|U1|U3|P\(11)) # (!\U1|U1|U3|temp~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001110000000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_P\(12),
	datab => \U1|U1|U3|ALT_INV_P\(11),
	datac => \U1|U1|U3|ALT_INV_temp~10_combout\,
	datad => \U1|U1|U3|ALT_INV_temp~2_combout\,
	datae => \U1|U1|U3|ALT_INV_carry[13]~29_combout\,
	dataf => \U1|U1|U3|ALT_INV_temp~4_combout\,
	combout => \U1|U1|U3|carry[13]~30_combout\);

-- Location: MLABCELL_X29_Y38_N14
\U1|U1|U3|carry[13]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[13]~28_combout\ = ( \A[7]~input_o\ & ( \U1|U1|U3|carry[7]~9_combout\ & ( (\U1|U1|U3|product~3_combout\ & ((!\B[7]~input_o\ $ (!\AddnSub~input_o\)) # (\U1|U1|U3|temp~6_combout\))) ) ) ) # ( !\A[7]~input_o\ & ( \U1|U1|U3|carry[7]~9_combout\ 
-- & ( (\U1|U1|U3|product~3_combout\ & \U1|U1|U3|temp~6_combout\) ) ) ) # ( \A[7]~input_o\ & ( !\U1|U1|U3|carry[7]~9_combout\ & ( \U1|U1|U3|product~3_combout\ ) ) ) # ( !\A[7]~input_o\ & ( !\U1|U1|U3|carry[7]~9_combout\ & ( (\U1|U1|U3|product~3_combout\ & 
-- ((!\B[7]~input_o\ $ (!\AddnSub~input_o\)) # (\U1|U1|U3|temp~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001010101010101010101010100000000010101010001010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_product~3_combout\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \U1|U1|U3|ALT_INV_temp~6_combout\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \U1|U1|U3|ALT_INV_carry[7]~9_combout\,
	combout => \U1|U1|U3|carry[13]~28_combout\);

-- Location: MLABCELL_X31_Y37_N38
\U1|U1|U3|S[13]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|S\(13) = ( \U1|U1|U3|P\(13) & ( \U1|U1|U3|P\(10) & ( (\U1|U1|U3|carry[13]~30_combout\ & ((!\U1|U1|U3|product~5_combout\) # ((\U1|U1|U3|carry[10]~19_combout\ & !\U1|U1|U3|carry[13]~28_combout\)))) ) ) ) # ( !\U1|U1|U3|P\(13) & ( \U1|U1|U3|P\(10) 
-- & ( (!\U1|U1|U3|carry[13]~30_combout\) # ((\U1|U1|U3|product~5_combout\ & ((!\U1|U1|U3|carry[10]~19_combout\) # (\U1|U1|U3|carry[13]~28_combout\)))) ) ) ) # ( \U1|U1|U3|P\(13) & ( !\U1|U1|U3|P\(10) & ( \U1|U1|U3|carry[13]~30_combout\ ) ) ) # ( 
-- !\U1|U1|U3|P\(13) & ( !\U1|U1|U3|P\(10) & ( !\U1|U1|U3|carry[13]~30_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100110011001111011100110111010010001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_product~5_combout\,
	datab => \U1|U1|U3|ALT_INV_carry[13]~30_combout\,
	datac => \U1|U1|U3|ALT_INV_carry[10]~19_combout\,
	datad => \U1|U1|U3|ALT_INV_carry[13]~28_combout\,
	datae => \U1|U1|U3|ALT_INV_P\(13),
	dataf => \U1|U1|U3|ALT_INV_P\(10),
	combout => \U1|U1|U3|S\(13));

-- Location: MLABCELL_X31_Y35_N34
\MUX6|Mux2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux2~1_combout\ = ( \U3|U1|U4|MUX1|Mux2~0_combout\ & ( (\MUX6|Mux3~1_combout\ & ((!\MUX6|Mux1~0_combout\) # (\U1|U1|U3|S\(13)))) ) ) # ( !\U3|U1|U4|MUX1|Mux2~0_combout\ & ( (\MUX6|Mux3~1_combout\ & (\MUX6|Mux1~0_combout\ & \U1|U1|U3|S\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX6|ALT_INV_Mux3~1_combout\,
	datac => \MUX6|ALT_INV_Mux1~0_combout\,
	datad => \U1|U1|U3|ALT_INV_S\(13),
	dataf => \U3|U1|U4|MUX1|ALT_INV_Mux2~0_combout\,
	combout => \MUX6|Mux2~1_combout\);

-- Location: MLABCELL_X31_Y35_N32
\MUX6|Mux2~2\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux2~2_combout\ = ( \MUX6|Mux2~1_combout\ ) # ( !\MUX6|Mux2~1_combout\ & ( (!\MUX6|Mux3~2_combout\) # ((\MUX6|Mux14~2_combout\ & \MUX6|Mux2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110101111100001111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX6|ALT_INV_Mux14~2_combout\,
	datac => \MUX6|ALT_INV_Mux3~2_combout\,
	datad => \MUX6|ALT_INV_Mux2~0_combout\,
	dataf => \MUX6|ALT_INV_Mux2~1_combout\,
	combout => \MUX6|Mux2~2_combout\);

-- Location: MLABCELL_X31_Y37_N0
\U1|U1|U3|temp~16\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|temp~16_combout\ = ( \U1|U1|U3|temp~4_combout\ & ( (\U1|U1|U3|P\(13) & \U1|U1|U3|P\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|U3|ALT_INV_P\(13),
	datac => \U1|U1|U3|ALT_INV_P\(12),
	dataf => \U1|U1|U3|ALT_INV_temp~4_combout\,
	combout => \U1|U1|U3|temp~16_combout\);

-- Location: MLABCELL_X31_Y37_N2
\U1|U1|U3|carry[14]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[14]~32_combout\ = ( \U1|U1|U3|P\(10) & ( (\U1|U1|U3|P\(13) & \U1|U1|U3|product~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|U3|ALT_INV_P\(13),
	datad => \U1|U1|U3|ALT_INV_product~5_combout\,
	dataf => \U1|U1|U3|ALT_INV_P\(10),
	combout => \U1|U1|U3|carry[14]~32_combout\);

-- Location: LABCELL_X32_Y37_N24
\U1|U1|U3|temp~17\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|temp~17_combout\ = ( \U1|U1|U3|P\(12) & ( \U1|U1|U3|G[11]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|U3|ALT_INV_G[11]~1_combout\,
	dataf => \U1|U1|U3|ALT_INV_P\(12),
	combout => \U1|U1|U3|temp~17_combout\);

-- Location: LABCELL_X32_Y37_N30
\U1|U1|U3|carry[14]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[14]~33_combout\ = ( \U1|U1|U3|temp~11_combout\ & ( \U1|U1|U3|G[10]~0_combout\ & ( (!\U1|U1|U3|P\(13) & !\U1|U1|U3|G[13]~2_combout\) ) ) ) # ( !\U1|U1|U3|temp~11_combout\ & ( \U1|U1|U3|G[10]~0_combout\ & ( (!\U1|U1|U3|G[13]~2_combout\ & 
-- ((!\U1|U1|U3|P\(13)) # ((!\U1|U1|U3|temp~17_combout\ & !\U1|U1|U3|product~5_combout\)))) ) ) ) # ( \U1|U1|U3|temp~11_combout\ & ( !\U1|U1|U3|G[10]~0_combout\ & ( (!\U1|U1|U3|P\(13) & !\U1|U1|U3|G[13]~2_combout\) ) ) ) # ( !\U1|U1|U3|temp~11_combout\ & ( 
-- !\U1|U1|U3|G[10]~0_combout\ & ( (!\U1|U1|U3|G[13]~2_combout\ & ((!\U1|U1|U3|temp~17_combout\) # (!\U1|U1|U3|P\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000000000110011000000000011101100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_temp~17_combout\,
	datab => \U1|U1|U3|ALT_INV_P\(13),
	datac => \U1|U1|U3|ALT_INV_product~5_combout\,
	datad => \U1|U1|U3|ALT_INV_G[13]~2_combout\,
	datae => \U1|U1|U3|ALT_INV_temp~11_combout\,
	dataf => \U1|U1|U3|ALT_INV_G[10]~0_combout\,
	combout => \U1|U1|U3|carry[14]~33_combout\);

-- Location: MLABCELL_X31_Y37_N26
\U1|U1|U3|carry[14]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[14]~34_combout\ = ( \U1|U1|U3|carry[14]~33_combout\ & ( !\U1|U1|U3|temp~8_combout\ & ( (!\U1|U1|U3|P\(13)) # ((!\U1|U1|U3|temp~10_combout\ & ((!\U1|U1|U3|product~5_combout\) # (!\U1|U1|U3|temp~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_product~5_combout\,
	datab => \U1|U1|U3|ALT_INV_temp~10_combout\,
	datac => \U1|U1|U3|ALT_INV_P\(13),
	datad => \U1|U1|U3|ALT_INV_temp~2_combout\,
	datae => \U1|U1|U3|ALT_INV_carry[14]~33_combout\,
	dataf => \U1|U1|U3|ALT_INV_temp~8_combout\,
	combout => \U1|U1|U3|carry[14]~34_combout\);

-- Location: MLABCELL_X29_Y38_N38
\U1|U1|U3|carry[14]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[14]~31_combout\ = ( \A[7]~input_o\ & ( \U1|U1|U3|temp~6_combout\ & ( \U1|U1|U3|product~3_combout\ ) ) ) # ( !\A[7]~input_o\ & ( \U1|U1|U3|temp~6_combout\ & ( \U1|U1|U3|product~3_combout\ ) ) ) # ( \A[7]~input_o\ & ( 
-- !\U1|U1|U3|temp~6_combout\ & ( (\U1|U1|U3|product~3_combout\ & ((!\AddnSub~input_o\ $ (!\B[7]~input_o\)) # (\U1|U1|U3|G\(6)))) ) ) ) # ( !\A[7]~input_o\ & ( !\U1|U1|U3|temp~6_combout\ & ( (\U1|U1|U3|product~3_combout\ & (\U1|U1|U3|G\(6) & 
-- (!\AddnSub~input_o\ $ (!\B[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000101010101000101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_product~3_combout\,
	datab => \U1|U1|U3|ALT_INV_G\(6),
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \U1|U1|U3|ALT_INV_temp~6_combout\,
	combout => \U1|U1|U3|carry[14]~31_combout\);

-- Location: MLABCELL_X31_Y37_N28
\U1|U1|U3|S[14]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|S\(14) = ( \U1|U1|U3|carry[14]~31_combout\ & ( \U1|U1|U3|P\(14) & ( (!\U1|U1|U3|temp~16_combout\ & (!\U1|U1|U3|carry[14]~32_combout\ & \U1|U1|U3|carry[14]~34_combout\)) ) ) ) # ( !\U1|U1|U3|carry[14]~31_combout\ & ( \U1|U1|U3|P\(14) & ( 
-- (!\U1|U1|U3|temp~16_combout\ & (\U1|U1|U3|carry[14]~34_combout\ & ((!\U1|U1|U3|carry[14]~32_combout\) # (\U1|U1|U3|carry[10]~19_combout\)))) ) ) ) # ( \U1|U1|U3|carry[14]~31_combout\ & ( !\U1|U1|U3|P\(14) & ( ((!\U1|U1|U3|carry[14]~34_combout\) # 
-- (\U1|U1|U3|carry[14]~32_combout\)) # (\U1|U1|U3|temp~16_combout\) ) ) ) # ( !\U1|U1|U3|carry[14]~31_combout\ & ( !\U1|U1|U3|P\(14) & ( ((!\U1|U1|U3|carry[14]~34_combout\) # ((\U1|U1|U3|carry[14]~32_combout\ & !\U1|U1|U3|carry[10]~19_combout\))) # 
-- (\U1|U1|U3|temp~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101110101111111110111011100000000100010100000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_temp~16_combout\,
	datab => \U1|U1|U3|ALT_INV_carry[14]~32_combout\,
	datac => \U1|U1|U3|ALT_INV_carry[10]~19_combout\,
	datad => \U1|U1|U3|ALT_INV_carry[14]~34_combout\,
	datae => \U1|U1|U3|ALT_INV_carry[14]~31_combout\,
	dataf => \U1|U1|U3|ALT_INV_P\(14),
	combout => \U1|U1|U3|S\(14));

-- Location: MLABCELL_X31_Y35_N38
\MUX6|Mux1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux1~2_combout\ = ( \U3|U1|U4|MUX1|Mux1~0_combout\ & ( (\MUX6|Mux3~1_combout\ & ((!\MUX6|Mux1~0_combout\) # (\U1|U1|U3|S\(14)))) ) ) # ( !\U3|U1|U4|MUX1|Mux1~0_combout\ & ( (\U1|U1|U3|S\(14) & (\MUX6|Mux1~0_combout\ & \MUX6|Mux3~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|U3|ALT_INV_S\(14),
	datac => \MUX6|ALT_INV_Mux1~0_combout\,
	datad => \MUX6|ALT_INV_Mux3~1_combout\,
	dataf => \U3|U1|U4|MUX1|ALT_INV_Mux1~0_combout\,
	combout => \MUX6|Mux1~2_combout\);

-- Location: LABCELL_X32_Y37_N34
\MUX6|Mux1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux1~1_combout\ = (!\B[14]~input_o\ & (\A[14]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[14]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[14]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001110001010101100111000101010110011100010101011001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	combout => \MUX6|Mux1~1_combout\);

-- Location: MLABCELL_X31_Y35_N28
\MUX6|Mux1~3\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux1~3_combout\ = ( \MUX6|Mux1~1_combout\ & ( (!\MUX6|Mux3~2_combout\) # ((\MUX6|Mux14~2_combout\) # (\MUX6|Mux1~2_combout\)) ) ) # ( !\MUX6|Mux1~1_combout\ & ( (!\MUX6|Mux3~2_combout\) # (\MUX6|Mux1~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX6|ALT_INV_Mux3~2_combout\,
	datac => \MUX6|ALT_INV_Mux1~2_combout\,
	datad => \MUX6|ALT_INV_Mux14~2_combout\,
	dataf => \MUX6|ALT_INV_Mux1~1_combout\,
	combout => \MUX6|Mux1~3_combout\);

-- Location: MLABCELL_X29_Y37_N16
\U1|U1|U3|carry[15]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[15]~35_combout\ = ( \U1|U1|U3|temp~0_combout\ & ( (\U1|U1|U3|P\(9) & \U1|U1|U3|P\(10)) ) ) # ( !\U1|U1|U3|temp~0_combout\ & ( (\U1|U1|U3|P\(9) & (\U1|U1|U3|P\(10) & ((\U1|U1|U3|Cout~0_combout\) # (\U1|U1|U3|G\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000000010000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_G\(8),
	datab => \U1|U1|U3|ALT_INV_P\(9),
	datac => \U1|U1|U3|ALT_INV_P\(10),
	datad => \U1|U1|U3|ALT_INV_Cout~0_combout\,
	dataf => \U1|U1|U3|ALT_INV_temp~0_combout\,
	combout => \U1|U1|U3|carry[15]~35_combout\);

-- Location: MLABCELL_X31_Y37_N34
\U1|U1|U3|carry[15]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[15]~36_combout\ = (\U1|U1|U3|P\(14) & (\U1|U1|U3|P\(13) & \U1|U1|U3|product~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_P\(14),
	datab => \U1|U1|U3|ALT_INV_P\(13),
	datad => \U1|U1|U3|ALT_INV_product~5_combout\,
	combout => \U1|U1|U3|carry[15]~36_combout\);

-- Location: MLABCELL_X31_Y37_N32
\U1|U1|U3|carry[15]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[15]~40_combout\ = ( \U1|U1|U3|temp~8_combout\ & ( \U1|U1|U3|P\(14) ) ) # ( !\U1|U1|U3|temp~8_combout\ & ( (\U1|U1|U3|P\(14) & (\U1|U1|U3|P\(13) & \U1|U1|U3|temp~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_P\(14),
	datab => \U1|U1|U3|ALT_INV_P\(13),
	datad => \U1|U1|U3|ALT_INV_temp~10_combout\,
	dataf => \U1|U1|U3|ALT_INV_temp~8_combout\,
	combout => \U1|U1|U3|carry[15]~40_combout\);

-- Location: LABCELL_X32_Y37_N4
\U1|U1|U3|carry[15]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[15]~37_combout\ = ( \B[14]~input_o\ & ( (!\AddnSub~input_o\ & ((\U1|U1|U3|G[13]~2_combout\) # (\A[14]~input_o\))) # (\AddnSub~input_o\ & (\A[14]~input_o\ & \U1|U1|U3|G[13]~2_combout\)) ) ) # ( !\B[14]~input_o\ & ( (!\AddnSub~input_o\ & 
-- (\A[14]~input_o\ & \U1|U1|U3|G[13]~2_combout\)) # (\AddnSub~input_o\ & ((\U1|U1|U3|G[13]~2_combout\) # (\A[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \U1|U1|U3|ALT_INV_G[13]~2_combout\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \U1|U1|U3|carry[15]~37_combout\);

-- Location: LABCELL_X32_Y37_N14
\U1|U1|U3|carry[15]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[15]~38_combout\ = ( !\U1|U1|U3|carry[15]~37_combout\ & ( \U1|U1|U3|P\(12) & ( (!\U1|U1|U3|P\(14)) # ((!\U1|U1|U3|P\(13)) # ((!\U1|U1|U3|G[11]~1_combout\ & !\U1|U1|U3|temp~11_combout\))) ) ) ) # ( !\U1|U1|U3|carry[15]~37_combout\ & ( 
-- !\U1|U1|U3|P\(12) & ( (!\U1|U1|U3|P\(14)) # ((!\U1|U1|U3|P\(13)) # (!\U1|U1|U3|temp~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010000000000000000011111110111110100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_P\(14),
	datab => \U1|U1|U3|ALT_INV_G[11]~1_combout\,
	datac => \U1|U1|U3|ALT_INV_P\(13),
	datad => \U1|U1|U3|ALT_INV_temp~11_combout\,
	datae => \U1|U1|U3|ALT_INV_carry[15]~37_combout\,
	dataf => \U1|U1|U3|ALT_INV_P\(12),
	combout => \U1|U1|U3|carry[15]~38_combout\);

-- Location: LABCELL_X30_Y37_N36
\U1|U1|U3|carry[15]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|carry[15]~39_combout\ = ( \U1|U1|U3|temp~6_combout\ & ( \U1|U1|U3|carry[15]~38_combout\ & ( (!\U1|U1|U3|temp~7_combout\ & (!\U1|U1|U3|temp~5_combout\ & ((!\U1|U1|U3|temp~4_combout\) # (!\U1|U1|U3|product~1_combout\)))) ) ) ) # ( 
-- !\U1|U1|U3|temp~6_combout\ & ( \U1|U1|U3|carry[15]~38_combout\ & ( (!\U1|U1|U3|temp~5_combout\ & ((!\U1|U1|U3|temp~4_combout\) # (!\U1|U1|U3|product~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000110000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_temp~7_combout\,
	datab => \U1|U1|U3|ALT_INV_temp~4_combout\,
	datac => \U1|U1|U3|ALT_INV_temp~5_combout\,
	datad => \U1|U1|U3|ALT_INV_product~1_combout\,
	datae => \U1|U1|U3|ALT_INV_temp~6_combout\,
	dataf => \U1|U1|U3|ALT_INV_carry[15]~38_combout\,
	combout => \U1|U1|U3|carry[15]~39_combout\);

-- Location: MLABCELL_X31_Y37_N18
\U1|U1|U3|S[15]\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|U1|U3|S\(15) = ( \U1|U1|U3|carry[15]~39_combout\ & ( \U1|U1|U3|P\(15) & ( (!\U1|U1|U3|carry[15]~40_combout\ & ((!\U1|U1|U3|carry[15]~36_combout\) # ((\U1|U1|U3|carry[11]~22_combout\ & !\U1|U1|U3|carry[15]~35_combout\)))) ) ) ) # ( 
-- \U1|U1|U3|carry[15]~39_combout\ & ( !\U1|U1|U3|P\(15) & ( ((\U1|U1|U3|carry[15]~36_combout\ & ((!\U1|U1|U3|carry[11]~22_combout\) # (\U1|U1|U3|carry[15]~35_combout\)))) # (\U1|U1|U3|carry[15]~40_combout\) ) ) ) # ( !\U1|U1|U3|carry[15]~39_combout\ & ( 
-- !\U1|U1|U3|P\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000010111111111100000000000000001111010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_carry[11]~22_combout\,
	datab => \U1|U1|U3|ALT_INV_carry[15]~35_combout\,
	datac => \U1|U1|U3|ALT_INV_carry[15]~36_combout\,
	datad => \U1|U1|U3|ALT_INV_carry[15]~40_combout\,
	datae => \U1|U1|U3|ALT_INV_carry[15]~39_combout\,
	dataf => \U1|U1|U3|ALT_INV_P\(15),
	combout => \U1|U1|U3|S\(15));

-- Location: MLABCELL_X31_Y36_N14
\MUX3|Y[15]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX3|Y[15]~0_combout\ = ( \U1|U1|U3|S\(7) & ( \ExtWord~input_o\ & ( (!\ShiftFN[0]~input_o\) # (\U3|U1|U4|MUX1|Mux8~0_combout\) ) ) ) # ( !\U1|U1|U3|S\(7) & ( \ExtWord~input_o\ & ( (\U3|U1|U4|MUX1|Mux8~0_combout\ & \ShiftFN[0]~input_o\) ) ) ) # ( 
-- \U1|U1|U3|S\(7) & ( !\ExtWord~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\U1|U1|U3|S\(15))) # (\ShiftFN[0]~input_o\ & ((\U3|U1|U4|MUX1|Mux0~0_combout\))) ) ) ) # ( !\U1|U1|U3|S\(7) & ( !\ExtWord~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\U1|U1|U3|S\(15))) # 
-- (\ShiftFN[0]~input_o\ & ((\U3|U1|U4|MUX1|Mux0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_S\(15),
	datab => \U3|U1|U4|MUX1|ALT_INV_Mux8~0_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \U3|U1|U4|MUX1|ALT_INV_Mux0~0_combout\,
	datae => \U1|U1|U3|ALT_INV_S\(7),
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \MUX3|Y[15]~0_combout\);

-- Location: MLABCELL_X31_Y36_N20
\U2|Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U2|Mux0~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[15]~input_o\ & (\B[15]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[15]~input_o\ & (!\B[15]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[15]~input_o\ & \LogicFN[1]~input_o\)) 
-- # (\B[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100111100000000110011110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \U2|Mux0~0_combout\);

-- Location: MLABCELL_X31_Y36_N38
\MUX6|Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \MUX6|Mux0~0_combout\ = ( \U3|U1|U4|MUX1|Mux0~0_combout\ & ( !\FuncClass[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & (((\MUX3|Y[15]~0_combout\)) # (\ShiftFN[1]~input_o\))) # (\FuncClass[0]~input_o\ & (((\U2|Mux0~0_combout\)))) ) ) ) # ( 
-- !\U3|U1|U4|MUX1|Mux0~0_combout\ & ( !\FuncClass[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & (!\ShiftFN[1]~input_o\ & (\MUX3|Y[15]~0_combout\))) # (\FuncClass[0]~input_o\ & (((\U2|Mux0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111011100000111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \MUX3|ALT_INV_Y[15]~0_combout\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \U2|ALT_INV_Mux0~0_combout\,
	datae => \U3|U1|U4|MUX1|ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \MUX6|Mux0~0_combout\);

-- Location: LABCELL_X30_Y35_N4
\U1|Z1|Output~0\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|Z1|Output~0_combout\ = ( !\U1|U1|U3|S[0]~0_combout\ & ( (!\U1|U1|U3|S\(1) & (!\U1|U1|U3|S\(4) & !\U1|U1|U3|S\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_S\(1),
	datab => \U1|U1|U3|ALT_INV_S\(4),
	datac => \U1|U1|U3|ALT_INV_S\(3),
	dataf => \U1|U1|U3|ALT_INV_S[0]~0_combout\,
	combout => \U1|Z1|Output~0_combout\);

-- Location: LABCELL_X30_Y35_N14
\U1|Z1|Output~1\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|Z1|Output~1_combout\ = ( !\U1|U1|U3|S\(2) & ( (\U1|Z1|Output~0_combout\ & (!\U1|U1|U3|S\(6) & (!\U1|U1|U3|S\(5) & !\U1|U1|U3|S\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Z1|ALT_INV_Output~0_combout\,
	datab => \U1|U1|U3|ALT_INV_S\(6),
	datac => \U1|U1|U3|ALT_INV_S\(5),
	datad => \U1|U1|U3|ALT_INV_S\(7),
	dataf => \U1|U1|U3|ALT_INV_S\(2),
	combout => \U1|Z1|Output~1_combout\);

-- Location: MLABCELL_X31_Y35_N24
\U1|Z1|Output~2\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|Z1|Output~2_combout\ = ( !\U1|U1|U3|S\(11) & ( (!\U1|U1|U3|S\(9) & (\U1|Z1|Output~1_combout\ & (!\U1|U1|U3|S\(10) & !\U1|U1|U3|S\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_S\(9),
	datab => \U1|Z1|ALT_INV_Output~1_combout\,
	datac => \U1|U1|U3|ALT_INV_S\(10),
	datad => \U1|U1|U3|ALT_INV_S\(8),
	dataf => \U1|U1|U3|ALT_INV_S\(11),
	combout => \U1|Z1|Output~2_combout\);

-- Location: MLABCELL_X31_Y35_N36
\U1|Z1|Output\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|Z1|Output~combout\ = ( \U1|U1|U3|S\(15) ) # ( !\U1|U1|U3|S\(15) & ( (((!\U1|Z1|Output~2_combout\) # (\U1|U1|U3|S\(13))) # (\U1|U1|U3|S\(14))) # (\U1|U1|U3|S\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|U3|ALT_INV_S\(12),
	datab => \U1|U1|U3|ALT_INV_S\(14),
	datac => \U1|Z1|ALT_INV_Output~2_combout\,
	datad => \U1|U1|U3|ALT_INV_S\(13),
	dataf => \U1|U1|U3|ALT_INV_S\(15),
	combout => \U1|Z1|Output~combout\);

-- Location: LABCELL_X30_Y36_N14
\U1|AltB\ : arriaii_lcell_comb
-- Equation(s):
-- \U1|AltB~combout\ = !\U1|U1|U3|Cout~6_combout\ $ (!\U1|U1|U3|P\(15))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|U3|ALT_INV_Cout~6_combout\,
	datad => \U1|U1|U3|ALT_INV_P\(15),
	combout => \U1|AltB~combout\);

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;

ww_Y(8) <= \Y[8]~output_o\;

ww_Y(9) <= \Y[9]~output_o\;

ww_Y(10) <= \Y[10]~output_o\;

ww_Y(11) <= \Y[11]~output_o\;

ww_Y(12) <= \Y[12]~output_o\;

ww_Y(13) <= \Y[13]~output_o\;

ww_Y(14) <= \Y[14]~output_o\;

ww_Y(15) <= \Y[15]~output_o\;

ww_Zero <= \Zero~output_o\;

ww_AltB <= \AltB~output_o\;

ww_AltBu <= \AltBu~output_o\;
END structure;


