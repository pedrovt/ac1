-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.1 Build 189 12/02/2015 SJ Lite Edition"

-- DATE "11/03/2017 01:13:23"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PCupdate IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	zero : IN std_logic;
	branch : IN std_logic;
	jump : IN std_logic;
	offSet32 : IN std_logic_vector(31 DOWNTO 0);
	jAddr26 : IN std_logic_vector(26 DOWNTO 0);
	pc : OUT std_logic_vector(31 DOWNTO 0)
	);
END PCupdate;

-- Design Ports Information
-- offSet32[30]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[31]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[0]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[1]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[2]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[3]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[5]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[6]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[7]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[8]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[9]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[10]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[11]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[12]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[13]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[14]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[15]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[16]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[17]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[18]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[19]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[20]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[21]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[22]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[23]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[24]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[25]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[26]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[27]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[28]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[29]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[30]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[31]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[0]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[1]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[2]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[0]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[3]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[1]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[4]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[2]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[5]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[3]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[6]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[4]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[7]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[5]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[8]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[6]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[9]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[7]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[10]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[8]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[11]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[9]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[12]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[10]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[13]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[11]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[14]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[12]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[15]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[13]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[16]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[14]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[17]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[15]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[18]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[16]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[19]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[17]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[20]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[18]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[21]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[19]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[22]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[20]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[23]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[21]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[24]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[22]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[25]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[23]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr26[26]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[24]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[25]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[26]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[27]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[28]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offSet32[29]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PCupdate IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_zero : std_logic;
SIGNAL ww_branch : std_logic;
SIGNAL ww_jump : std_logic;
SIGNAL ww_offSet32 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_jAddr26 : std_logic_vector(26 DOWNTO 0);
SIGNAL ww_pc : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \offSet32[30]~input_o\ : std_logic;
SIGNAL \offSet32[31]~input_o\ : std_logic;
SIGNAL \pc[0]~output_o\ : std_logic;
SIGNAL \pc[1]~output_o\ : std_logic;
SIGNAL \pc[2]~output_o\ : std_logic;
SIGNAL \pc[3]~output_o\ : std_logic;
SIGNAL \pc[4]~output_o\ : std_logic;
SIGNAL \pc[5]~output_o\ : std_logic;
SIGNAL \pc[6]~output_o\ : std_logic;
SIGNAL \pc[7]~output_o\ : std_logic;
SIGNAL \pc[8]~output_o\ : std_logic;
SIGNAL \pc[9]~output_o\ : std_logic;
SIGNAL \pc[10]~output_o\ : std_logic;
SIGNAL \pc[11]~output_o\ : std_logic;
SIGNAL \pc[12]~output_o\ : std_logic;
SIGNAL \pc[13]~output_o\ : std_logic;
SIGNAL \pc[14]~output_o\ : std_logic;
SIGNAL \pc[15]~output_o\ : std_logic;
SIGNAL \pc[16]~output_o\ : std_logic;
SIGNAL \pc[17]~output_o\ : std_logic;
SIGNAL \pc[18]~output_o\ : std_logic;
SIGNAL \pc[19]~output_o\ : std_logic;
SIGNAL \pc[20]~output_o\ : std_logic;
SIGNAL \pc[21]~output_o\ : std_logic;
SIGNAL \pc[22]~output_o\ : std_logic;
SIGNAL \pc[23]~output_o\ : std_logic;
SIGNAL \pc[24]~output_o\ : std_logic;
SIGNAL \pc[25]~output_o\ : std_logic;
SIGNAL \pc[26]~output_o\ : std_logic;
SIGNAL \pc[27]~output_o\ : std_logic;
SIGNAL \pc[28]~output_o\ : std_logic;
SIGNAL \pc[29]~output_o\ : std_logic;
SIGNAL \pc[30]~output_o\ : std_logic;
SIGNAL \pc[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \jAddr26[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \s_pc~0_combout\ : std_logic;
SIGNAL \jump~input_o\ : std_logic;
SIGNAL \s_pc[0]~1_combout\ : std_logic;
SIGNAL \jAddr26[1]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \s_pc~2_combout\ : std_logic;
SIGNAL \jAddr26[2]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \zero~input_o\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \branch~input_o\ : std_logic;
SIGNAL \offSet32[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \jAddr26[3]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \offSet32[1]~input_o\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7_combout\ : std_logic;
SIGNAL \jAddr26[4]~input_o\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \offSet32[2]~input_o\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \offSet32[3]~input_o\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \jAddr26[5]~input_o\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13_combout\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \offSet32[4]~input_o\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~19_combout\ : std_logic;
SIGNAL \jAddr26[6]~input_o\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \offSet32[5]~input_o\ : std_logic;
SIGNAL \Add1~20\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \jAddr26[7]~input_o\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \offSet32[6]~input_o\ : std_logic;
SIGNAL \Add1~24\ : std_logic;
SIGNAL \Add1~27_combout\ : std_logic;
SIGNAL \jAddr26[8]~input_o\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \jAddr26[9]~input_o\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \offSet32[7]~input_o\ : std_logic;
SIGNAL \Add1~28\ : std_logic;
SIGNAL \Add1~31_combout\ : std_logic;
SIGNAL \Add1~33_combout\ : std_logic;
SIGNAL \offSet32[8]~input_o\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \jAddr26[10]~input_o\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~37_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \jAddr26[11]~input_o\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \offSet32[9]~input_o\ : std_logic;
SIGNAL \Add1~36\ : std_logic;
SIGNAL \Add1~39_combout\ : std_logic;
SIGNAL \Add1~41_combout\ : std_logic;
SIGNAL \offSet32[10]~input_o\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add1~40\ : std_logic;
SIGNAL \Add1~43_combout\ : std_logic;
SIGNAL \jAddr26[12]~input_o\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \offSet32[11]~input_o\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add1~44\ : std_logic;
SIGNAL \Add1~47_combout\ : std_logic;
SIGNAL \jAddr26[13]~input_o\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~49_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \jAddr26[14]~input_o\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \offSet32[12]~input_o\ : std_logic;
SIGNAL \Add1~48\ : std_logic;
SIGNAL \Add1~51_combout\ : std_logic;
SIGNAL \Add1~53_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \jAddr26[15]~input_o\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \offSet32[13]~input_o\ : std_logic;
SIGNAL \Add1~52\ : std_logic;
SIGNAL \Add1~55_combout\ : std_logic;
SIGNAL \Add1~57_combout\ : std_logic;
SIGNAL \offSet32[14]~input_o\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add1~56\ : std_logic;
SIGNAL \Add1~59_combout\ : std_logic;
SIGNAL \jAddr26[16]~input_o\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~61_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \offSet32[15]~input_o\ : std_logic;
SIGNAL \Add1~60\ : std_logic;
SIGNAL \Add1~63_combout\ : std_logic;
SIGNAL \jAddr26[17]~input_o\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add1~65_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \jAddr26[18]~input_o\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add1~66_combout\ : std_logic;
SIGNAL \offSet32[16]~input_o\ : std_logic;
SIGNAL \Add1~64\ : std_logic;
SIGNAL \Add1~67_combout\ : std_logic;
SIGNAL \Add1~69_combout\ : std_logic;
SIGNAL \offSet32[17]~input_o\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add1~68\ : std_logic;
SIGNAL \Add1~71_combout\ : std_logic;
SIGNAL \jAddr26[19]~input_o\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add1~70_combout\ : std_logic;
SIGNAL \Add1~73_combout\ : std_logic;
SIGNAL \offSet32[18]~input_o\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add1~72\ : std_logic;
SIGNAL \Add1~75_combout\ : std_logic;
SIGNAL \jAddr26[20]~input_o\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add1~74_combout\ : std_logic;
SIGNAL \Add1~77_combout\ : std_logic;
SIGNAL \jAddr26[21]~input_o\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add1~78_combout\ : std_logic;
SIGNAL \offSet32[19]~input_o\ : std_logic;
SIGNAL \Add1~76\ : std_logic;
SIGNAL \Add1~79_combout\ : std_logic;
SIGNAL \Add1~81_combout\ : std_logic;
SIGNAL \jAddr26[22]~input_o\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add1~82_combout\ : std_logic;
SIGNAL \offSet32[20]~input_o\ : std_logic;
SIGNAL \Add1~80\ : std_logic;
SIGNAL \Add1~83_combout\ : std_logic;
SIGNAL \Add1~85_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \jAddr26[23]~input_o\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add1~86_combout\ : std_logic;
SIGNAL \offSet32[21]~input_o\ : std_logic;
SIGNAL \Add1~84\ : std_logic;
SIGNAL \Add1~87_combout\ : std_logic;
SIGNAL \Add1~89_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \offSet32[22]~input_o\ : std_logic;
SIGNAL \Add1~88\ : std_logic;
SIGNAL \Add1~91_combout\ : std_logic;
SIGNAL \jAddr26[24]~input_o\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add1~90_combout\ : std_logic;
SIGNAL \Add1~93_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \offSet32[23]~input_o\ : std_logic;
SIGNAL \Add1~92\ : std_logic;
SIGNAL \Add1~95_combout\ : std_logic;
SIGNAL \jAddr26[25]~input_o\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add1~94_combout\ : std_logic;
SIGNAL \Add1~97_combout\ : std_logic;
SIGNAL \jAddr26[26]~input_o\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add1~98_combout\ : std_logic;
SIGNAL \offSet32[24]~input_o\ : std_logic;
SIGNAL \Add1~96\ : std_logic;
SIGNAL \Add1~99_combout\ : std_logic;
SIGNAL \Add1~101_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add1~102_combout\ : std_logic;
SIGNAL \offSet32[25]~input_o\ : std_logic;
SIGNAL \Add1~100\ : std_logic;
SIGNAL \Add1~103_combout\ : std_logic;
SIGNAL \Add1~105_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add1~106_combout\ : std_logic;
SIGNAL \offSet32[26]~input_o\ : std_logic;
SIGNAL \Add1~104\ : std_logic;
SIGNAL \Add1~107_combout\ : std_logic;
SIGNAL \Add1~109_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add1~110_combout\ : std_logic;
SIGNAL \offSet32[27]~input_o\ : std_logic;
SIGNAL \Add1~108\ : std_logic;
SIGNAL \Add1~111_combout\ : std_logic;
SIGNAL \Add1~113_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \offSet32[28]~input_o\ : std_logic;
SIGNAL \Add1~112\ : std_logic;
SIGNAL \Add1~115_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add1~114_combout\ : std_logic;
SIGNAL \Add1~117_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add1~118_combout\ : std_logic;
SIGNAL \offSet32[29]~input_o\ : std_logic;
SIGNAL \Add1~116\ : std_logic;
SIGNAL \Add1~119_combout\ : std_logic;
SIGNAL \Add1~121_combout\ : std_logic;
SIGNAL s_pc : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_zero <= zero;
ww_branch <= branch;
ww_jump <= jump;
ww_offSet32 <= offSet32;
ww_jAddr26 <= jAddr26;
pc <= ww_pc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X115_Y45_N23
\pc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(0),
	devoe => ww_devoe,
	o => \pc[0]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\pc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(1),
	devoe => ww_devoe,
	o => \pc[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\pc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(2),
	devoe => ww_devoe,
	o => \pc[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\pc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(3),
	devoe => ww_devoe,
	o => \pc[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\pc[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(4),
	devoe => ww_devoe,
	o => \pc[4]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\pc[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(5),
	devoe => ww_devoe,
	o => \pc[5]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\pc[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(6),
	devoe => ww_devoe,
	o => \pc[6]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\pc[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(7),
	devoe => ww_devoe,
	o => \pc[7]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\pc[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(8),
	devoe => ww_devoe,
	o => \pc[8]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\pc[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(9),
	devoe => ww_devoe,
	o => \pc[9]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\pc[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(10),
	devoe => ww_devoe,
	o => \pc[10]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\pc[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(11),
	devoe => ww_devoe,
	o => \pc[11]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\pc[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(12),
	devoe => ww_devoe,
	o => \pc[12]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\pc[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(13),
	devoe => ww_devoe,
	o => \pc[13]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\pc[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(14),
	devoe => ww_devoe,
	o => \pc[14]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\pc[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(15),
	devoe => ww_devoe,
	o => \pc[15]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\pc[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(16),
	devoe => ww_devoe,
	o => \pc[16]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\pc[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(17),
	devoe => ww_devoe,
	o => \pc[17]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\pc[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(18),
	devoe => ww_devoe,
	o => \pc[18]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\pc[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(19),
	devoe => ww_devoe,
	o => \pc[19]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\pc[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(20),
	devoe => ww_devoe,
	o => \pc[20]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\pc[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(21),
	devoe => ww_devoe,
	o => \pc[21]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\pc[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(22),
	devoe => ww_devoe,
	o => \pc[22]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\pc[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(23),
	devoe => ww_devoe,
	o => \pc[23]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\pc[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(24),
	devoe => ww_devoe,
	o => \pc[24]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\pc[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(25),
	devoe => ww_devoe,
	o => \pc[25]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\pc[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(26),
	devoe => ww_devoe,
	o => \pc[26]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\pc[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(27),
	devoe => ww_devoe,
	o => \pc[27]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\pc[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(28),
	devoe => ww_devoe,
	o => \pc[28]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\pc[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(29),
	devoe => ww_devoe,
	o => \pc[29]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\pc[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(30),
	devoe => ww_devoe,
	o => \pc[30]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\pc[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(31),
	devoe => ww_devoe,
	o => \pc[31]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X113_Y73_N8
\jAddr26[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(0),
	o => \jAddr26[0]~input_o\);

-- Location: LCCOMB_X112_Y65_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (s_pc(0) & (\jAddr26[0]~input_o\ $ (VCC))) # (!s_pc(0) & (\jAddr26[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((s_pc(0) & \jAddr26[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(0),
	datab => \jAddr26[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X115_Y66_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X111_Y65_N4
\s_pc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc~0_combout\ = (\Add0~0_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \reset~input_o\,
	combout => \s_pc~0_combout\);

-- Location: IOIBUF_X115_Y66_N22
\jump~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump,
	o => \jump~input_o\);

-- Location: LCCOMB_X111_Y65_N6
\s_pc[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[0]~1_combout\ = (\jump~input_o\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jump~input_o\,
	datad => \reset~input_o\,
	combout => \s_pc[0]~1_combout\);

-- Location: FF_X112_Y65_N31
\s_pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_pc~0_combout\,
	sload => VCC,
	ena => \s_pc[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(0));

-- Location: IOIBUF_X115_Y62_N8
\jAddr26[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(1),
	o => \jAddr26[1]~input_o\);

-- Location: LCCOMB_X112_Y65_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (s_pc(1) & ((\jAddr26[1]~input_o\ & (\Add0~1\ & VCC)) # (!\jAddr26[1]~input_o\ & (!\Add0~1\)))) # (!s_pc(1) & ((\jAddr26[1]~input_o\ & (!\Add0~1\)) # (!\jAddr26[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((s_pc(1) & (!\jAddr26[1]~input_o\ & !\Add0~1\)) # (!s_pc(1) & ((!\Add0~1\) # (!\jAddr26[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(1),
	datab => \jAddr26[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X111_Y65_N28
\s_pc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc~2_combout\ = (!\reset~input_o\ & \Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \Add0~2_combout\,
	combout => \s_pc~2_combout\);

-- Location: FF_X112_Y65_N27
\s_pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_pc~2_combout\,
	sload => VCC,
	ena => \s_pc[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(1));

-- Location: IOIBUF_X113_Y73_N1
\jAddr26[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(2),
	o => \jAddr26[2]~input_o\);

-- Location: LCCOMB_X112_Y65_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((s_pc(2) $ (\jAddr26[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((s_pc(2) & ((\jAddr26[2]~input_o\) # (!\Add0~3\))) # (!s_pc(2) & (\jAddr26[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(2),
	datab => \jAddr26[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: IOIBUF_X100_Y73_N22
\zero~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zero,
	o => \zero~input_o\);

-- Location: LCCOMB_X109_Y65_N2
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = s_pc(2) $ (VCC)
-- \Add2~1\ = CARRY(s_pc(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(2),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: IOIBUF_X85_Y73_N8
\branch~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch,
	o => \branch~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\offSet32[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(0),
	o => \offSet32[0]~input_o\);

-- Location: LCCOMB_X110_Y65_N2
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Add2~0_combout\ & (\offSet32[0]~input_o\ $ (VCC))) # (!\Add2~0_combout\ & (\offSet32[0]~input_o\ & VCC))
-- \Add1~1\ = CARRY((\Add2~0_combout\ & \offSet32[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \offSet32[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X111_Y65_N10
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\zero~input_o\ & ((\branch~input_o\ & ((\Add1~0_combout\))) # (!\branch~input_o\ & (\Add2~0_combout\)))) # (!\zero~input_o\ & (\Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~input_o\,
	datab => \Add2~0_combout\,
	datac => \branch~input_o\,
	datad => \Add1~0_combout\,
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X108_Y65_N16
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (\jump~input_o\ & (\Add0~4_combout\)) # (!\jump~input_o\ & ((\Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump~input_o\,
	datac => \Add0~4_combout\,
	datad => \Add1~2_combout\,
	combout => \Add1~3_combout\);

-- Location: FF_X108_Y65_N17
\s_pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~3_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(2));

-- Location: IOIBUF_X115_Y47_N15
\jAddr26[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(3),
	o => \jAddr26[3]~input_o\);

-- Location: LCCOMB_X112_Y65_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (s_pc(3) & ((\jAddr26[3]~input_o\ & (\Add0~5\ & VCC)) # (!\jAddr26[3]~input_o\ & (!\Add0~5\)))) # (!s_pc(3) & ((\jAddr26[3]~input_o\ & (!\Add0~5\)) # (!\jAddr26[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((s_pc(3) & (!\jAddr26[3]~input_o\ & !\Add0~5\)) # (!s_pc(3) & ((!\Add0~5\) # (!\jAddr26[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(3),
	datab => \jAddr26[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: IOIBUF_X96_Y73_N15
\offSet32[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(1),
	o => \offSet32[1]~input_o\);

-- Location: LCCOMB_X109_Y65_N4
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (s_pc(3) & (!\Add2~1\)) # (!s_pc(3) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!s_pc(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(3),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X110_Y65_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\offSet32[1]~input_o\ & ((\Add2~2_combout\ & (\Add1~1\ & VCC)) # (!\Add2~2_combout\ & (!\Add1~1\)))) # (!\offSet32[1]~input_o\ & ((\Add2~2_combout\ & (!\Add1~1\)) # (!\Add2~2_combout\ & ((\Add1~1\) # (GND)))))
-- \Add1~5\ = CARRY((\offSet32[1]~input_o\ & (!\Add2~2_combout\ & !\Add1~1\)) # (!\offSet32[1]~input_o\ & ((!\Add1~1\) # (!\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offSet32[1]~input_o\,
	datab => \Add2~2_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X111_Y65_N24
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\branch~input_o\ & ((\zero~input_o\ & (\Add1~4_combout\)) # (!\zero~input_o\ & ((\Add2~2_combout\))))) # (!\branch~input_o\ & (((\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch~input_o\,
	datab => \Add1~4_combout\,
	datac => \Add2~2_combout\,
	datad => \zero~input_o\,
	combout => \Add1~6_combout\);

-- Location: LCCOMB_X109_Y65_N0
\Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~7_combout\ = (\jump~input_o\ & (\Add0~6_combout\)) # (!\jump~input_o\ & ((\Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jump~input_o\,
	datac => \Add0~6_combout\,
	datad => \Add1~6_combout\,
	combout => \Add1~7_combout\);

-- Location: FF_X109_Y65_N1
\s_pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~7_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(3));

-- Location: IOIBUF_X115_Y51_N1
\jAddr26[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(4),
	o => \jAddr26[4]~input_o\);

-- Location: LCCOMB_X112_Y65_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\jAddr26[4]~input_o\ $ (s_pc(4) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\jAddr26[4]~input_o\ & ((s_pc(4)) # (!\Add0~7\))) # (!\jAddr26[4]~input_o\ & (s_pc(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr26[4]~input_o\,
	datab => s_pc(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: IOIBUF_X89_Y73_N22
\offSet32[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(2),
	o => \offSet32[2]~input_o\);

-- Location: LCCOMB_X109_Y65_N6
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (s_pc(4) & (\Add2~3\ $ (GND))) # (!s_pc(4) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((s_pc(4) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(4),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X110_Y65_N6
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\offSet32[2]~input_o\ $ (\Add2~4_combout\ $ (!\Add1~5\)))) # (GND)
-- \Add1~9\ = CARRY((\offSet32[2]~input_o\ & ((\Add2~4_combout\) # (!\Add1~5\))) # (!\offSet32[2]~input_o\ & (\Add2~4_combout\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offSet32[2]~input_o\,
	datab => \Add2~4_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X111_Y65_N22
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\zero~input_o\ & ((\branch~input_o\ & (\Add1~8_combout\)) # (!\branch~input_o\ & ((\Add2~4_combout\))))) # (!\zero~input_o\ & (((\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~input_o\,
	datab => \Add1~8_combout\,
	datac => \branch~input_o\,
	datad => \Add2~4_combout\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X108_Y65_N6
\Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (\jump~input_o\ & (\Add0~8_combout\)) # (!\jump~input_o\ & ((\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump~input_o\,
	datac => \Add0~8_combout\,
	datad => \Add1~10_combout\,
	combout => \Add1~11_combout\);

-- Location: FF_X108_Y65_N7
\s_pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~11_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(4));

-- Location: LCCOMB_X111_Y65_N30
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\branch~input_o\ & (!\jump~input_o\ & \zero~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch~input_o\,
	datac => \jump~input_o\,
	datad => \zero~input_o\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X109_Y65_N8
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (s_pc(5) & (!\Add2~5\)) # (!s_pc(5) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!s_pc(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(5),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: IOIBUF_X109_Y73_N1
\offSet32[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(3),
	o => \offSet32[3]~input_o\);

-- Location: LCCOMB_X110_Y65_N8
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Add2~6_combout\ & ((\offSet32[3]~input_o\ & (\Add1~9\ & VCC)) # (!\offSet32[3]~input_o\ & (!\Add1~9\)))) # (!\Add2~6_combout\ & ((\offSet32[3]~input_o\ & (!\Add1~9\)) # (!\offSet32[3]~input_o\ & ((\Add1~9\) # (GND)))))
-- \Add1~15\ = CARRY((\Add2~6_combout\ & (!\offSet32[3]~input_o\ & !\Add1~9\)) # (!\Add2~6_combout\ & ((!\Add1~9\) # (!\offSet32[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \offSet32[3]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: IOIBUF_X115_Y49_N8
\jAddr26[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(5),
	o => \jAddr26[5]~input_o\);

-- Location: LCCOMB_X112_Y65_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (s_pc(5) & ((\jAddr26[5]~input_o\ & (\Add0~9\ & VCC)) # (!\jAddr26[5]~input_o\ & (!\Add0~9\)))) # (!s_pc(5) & ((\jAddr26[5]~input_o\ & (!\Add0~9\)) # (!\jAddr26[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((s_pc(5) & (!\jAddr26[5]~input_o\ & !\Add0~9\)) # (!s_pc(5) & ((!\Add0~9\) # (!\jAddr26[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(5),
	datab => \jAddr26[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X108_Y66_N16
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (!\jump~input_o\ & ((!\zero~input_o\) # (!\branch~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch~input_o\,
	datab => \zero~input_o\,
	datad => \jump~input_o\,
	combout => \Add1~12_combout\);

-- Location: LCCOMB_X111_Y65_N0
\Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~13_combout\ = (\Add2~6_combout\ & ((\Add1~12_combout\) # ((\jump~input_o\ & \Add0~10_combout\)))) # (!\Add2~6_combout\ & (\jump~input_o\ & (\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \jump~input_o\,
	datac => \Add0~10_combout\,
	datad => \Add1~12_combout\,
	combout => \Add1~13_combout\);

-- Location: LCCOMB_X108_Y65_N20
\Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (\Add1~13_combout\) # ((\Add1~16_combout\ & \Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~14_combout\,
	datad => \Add1~13_combout\,
	combout => \Add1~17_combout\);

-- Location: FF_X108_Y65_N21
\s_pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~17_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(5));

-- Location: LCCOMB_X109_Y65_N10
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (s_pc(6) & (\Add2~7\ $ (GND))) # (!s_pc(6) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((s_pc(6) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(6),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: IOIBUF_X98_Y73_N15
\offSet32[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(4),
	o => \offSet32[4]~input_o\);

-- Location: LCCOMB_X110_Y65_N10
\Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~19_combout\ = ((\Add2~8_combout\ $ (\offSet32[4]~input_o\ $ (!\Add1~15\)))) # (GND)
-- \Add1~20\ = CARRY((\Add2~8_combout\ & ((\offSet32[4]~input_o\) # (!\Add1~15\))) # (!\Add2~8_combout\ & (\offSet32[4]~input_o\ & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \offSet32[4]~input_o\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~19_combout\,
	cout => \Add1~20\);

-- Location: IOIBUF_X115_Y69_N22
\jAddr26[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(6),
	o => \jAddr26[6]~input_o\);

-- Location: LCCOMB_X112_Y65_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((s_pc(6) $ (\jAddr26[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((s_pc(6) & ((\jAddr26[6]~input_o\) # (!\Add0~11\))) # (!s_pc(6) & (\jAddr26[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(6),
	datab => \jAddr26[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X111_Y65_N20
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\Add2~8_combout\ & ((\Add1~12_combout\) # ((\jump~input_o\ & \Add0~12_combout\)))) # (!\Add2~8_combout\ & (\jump~input_o\ & (\Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \jump~input_o\,
	datac => \Add0~12_combout\,
	datad => \Add1~12_combout\,
	combout => \Add1~18_combout\);

-- Location: LCCOMB_X108_Y65_N14
\Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (\Add1~18_combout\) # ((\Add1~16_combout\ & \Add1~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~19_combout\,
	datad => \Add1~18_combout\,
	combout => \Add1~21_combout\);

-- Location: FF_X108_Y65_N15
\s_pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~21_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(6));

-- Location: LCCOMB_X109_Y65_N12
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (s_pc(7) & (!\Add2~9\)) # (!s_pc(7) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!s_pc(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(7),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: IOIBUF_X111_Y73_N1
\offSet32[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(5),
	o => \offSet32[5]~input_o\);

-- Location: LCCOMB_X110_Y65_N12
\Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (\Add2~10_combout\ & ((\offSet32[5]~input_o\ & (\Add1~20\ & VCC)) # (!\offSet32[5]~input_o\ & (!\Add1~20\)))) # (!\Add2~10_combout\ & ((\offSet32[5]~input_o\ & (!\Add1~20\)) # (!\offSet32[5]~input_o\ & ((\Add1~20\) # (GND)))))
-- \Add1~24\ = CARRY((\Add2~10_combout\ & (!\offSet32[5]~input_o\ & !\Add1~20\)) # (!\Add2~10_combout\ & ((!\Add1~20\) # (!\offSet32[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \offSet32[5]~input_o\,
	datad => VCC,
	cin => \Add1~20\,
	combout => \Add1~23_combout\,
	cout => \Add1~24\);

-- Location: IOIBUF_X115_Y69_N15
\jAddr26[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(7),
	o => \jAddr26[7]~input_o\);

-- Location: LCCOMB_X112_Y65_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (s_pc(7) & ((\jAddr26[7]~input_o\ & (\Add0~13\ & VCC)) # (!\jAddr26[7]~input_o\ & (!\Add0~13\)))) # (!s_pc(7) & ((\jAddr26[7]~input_o\ & (!\Add0~13\)) # (!\jAddr26[7]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((s_pc(7) & (!\jAddr26[7]~input_o\ & !\Add0~13\)) # (!s_pc(7) & ((!\Add0~13\) # (!\jAddr26[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(7),
	datab => \jAddr26[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X111_Y65_N14
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\Add2~10_combout\ & ((\Add1~12_combout\) # ((\jump~input_o\ & \Add0~14_combout\)))) # (!\Add2~10_combout\ & (\jump~input_o\ & (\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \jump~input_o\,
	datac => \Add0~14_combout\,
	datad => \Add1~12_combout\,
	combout => \Add1~22_combout\);

-- Location: LCCOMB_X108_Y65_N28
\Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~25_combout\ = (\Add1~22_combout\) # ((\Add1~16_combout\ & \Add1~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~23_combout\,
	datad => \Add1~22_combout\,
	combout => \Add1~25_combout\);

-- Location: FF_X108_Y65_N29
\s_pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~25_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(7));

-- Location: LCCOMB_X109_Y65_N14
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (s_pc(8) & (\Add2~11\ $ (GND))) # (!s_pc(8) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((s_pc(8) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(8),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: IOIBUF_X115_Y45_N15
\offSet32[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(6),
	o => \offSet32[6]~input_o\);

-- Location: LCCOMB_X110_Y65_N14
\Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~27_combout\ = ((\Add2~12_combout\ $ (\offSet32[6]~input_o\ $ (!\Add1~24\)))) # (GND)
-- \Add1~28\ = CARRY((\Add2~12_combout\ & ((\offSet32[6]~input_o\) # (!\Add1~24\))) # (!\Add2~12_combout\ & (\offSet32[6]~input_o\ & !\Add1~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \offSet32[6]~input_o\,
	datad => VCC,
	cin => \Add1~24\,
	combout => \Add1~27_combout\,
	cout => \Add1~28\);

-- Location: IOIBUF_X115_Y51_N8
\jAddr26[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(8),
	o => \jAddr26[8]~input_o\);

-- Location: LCCOMB_X112_Y65_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((s_pc(8) $ (\jAddr26[8]~input_o\ $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((s_pc(8) & ((\jAddr26[8]~input_o\) # (!\Add0~15\))) # (!s_pc(8) & (\jAddr26[8]~input_o\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(8),
	datab => \jAddr26[8]~input_o\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X111_Y65_N12
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\Add2~12_combout\ & ((\Add1~12_combout\) # ((\jump~input_o\ & \Add0~16_combout\)))) # (!\Add2~12_combout\ & (((\jump~input_o\ & \Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Add1~12_combout\,
	datac => \jump~input_o\,
	datad => \Add0~16_combout\,
	combout => \Add1~26_combout\);

-- Location: LCCOMB_X108_Y65_N26
\Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~29_combout\ = (\Add1~26_combout\) # ((\Add1~16_combout\ & \Add1~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~27_combout\,
	datad => \Add1~26_combout\,
	combout => \Add1~29_combout\);

-- Location: FF_X108_Y65_N27
\s_pc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~29_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(8));

-- Location: LCCOMB_X109_Y65_N16
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (s_pc(9) & (!\Add2~13\)) # (!s_pc(9) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!s_pc(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(9),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: IOIBUF_X115_Y68_N15
\jAddr26[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(9),
	o => \jAddr26[9]~input_o\);

-- Location: LCCOMB_X112_Y65_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\jAddr26[9]~input_o\ & ((s_pc(9) & (\Add0~17\ & VCC)) # (!s_pc(9) & (!\Add0~17\)))) # (!\jAddr26[9]~input_o\ & ((s_pc(9) & (!\Add0~17\)) # (!s_pc(9) & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((\jAddr26[9]~input_o\ & (!s_pc(9) & !\Add0~17\)) # (!\jAddr26[9]~input_o\ & ((!\Add0~17\) # (!s_pc(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr26[9]~input_o\,
	datab => s_pc(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X111_Y65_N2
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\Add2~14_combout\ & ((\Add1~12_combout\) # ((\jump~input_o\ & \Add0~18_combout\)))) # (!\Add2~14_combout\ & (((\jump~input_o\ & \Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \Add1~12_combout\,
	datac => \jump~input_o\,
	datad => \Add0~18_combout\,
	combout => \Add1~30_combout\);

-- Location: IOIBUF_X111_Y73_N8
\offSet32[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(7),
	o => \offSet32[7]~input_o\);

-- Location: LCCOMB_X110_Y65_N16
\Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~31_combout\ = (\Add2~14_combout\ & ((\offSet32[7]~input_o\ & (\Add1~28\ & VCC)) # (!\offSet32[7]~input_o\ & (!\Add1~28\)))) # (!\Add2~14_combout\ & ((\offSet32[7]~input_o\ & (!\Add1~28\)) # (!\offSet32[7]~input_o\ & ((\Add1~28\) # (GND)))))
-- \Add1~32\ = CARRY((\Add2~14_combout\ & (!\offSet32[7]~input_o\ & !\Add1~28\)) # (!\Add2~14_combout\ & ((!\Add1~28\) # (!\offSet32[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \offSet32[7]~input_o\,
	datad => VCC,
	cin => \Add1~28\,
	combout => \Add1~31_combout\,
	cout => \Add1~32\);

-- Location: LCCOMB_X108_Y65_N0
\Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~33_combout\ = (\Add1~30_combout\) # ((\Add1~16_combout\ & \Add1~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~30_combout\,
	datad => \Add1~31_combout\,
	combout => \Add1~33_combout\);

-- Location: FF_X108_Y65_N1
\s_pc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~33_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(9));

-- Location: IOIBUF_X91_Y73_N15
\offSet32[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(8),
	o => \offSet32[8]~input_o\);

-- Location: LCCOMB_X109_Y65_N18
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (s_pc(10) & (\Add2~15\ $ (GND))) # (!s_pc(10) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((s_pc(10) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(10),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X110_Y65_N18
\Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~35_combout\ = ((\offSet32[8]~input_o\ $ (\Add2~16_combout\ $ (!\Add1~32\)))) # (GND)
-- \Add1~36\ = CARRY((\offSet32[8]~input_o\ & ((\Add2~16_combout\) # (!\Add1~32\))) # (!\offSet32[8]~input_o\ & (\Add2~16_combout\ & !\Add1~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offSet32[8]~input_o\,
	datab => \Add2~16_combout\,
	datad => VCC,
	cin => \Add1~32\,
	combout => \Add1~35_combout\,
	cout => \Add1~36\);

-- Location: IOIBUF_X115_Y69_N1
\jAddr26[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(10),
	o => \jAddr26[10]~input_o\);

-- Location: LCCOMB_X112_Y65_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\jAddr26[10]~input_o\ $ (s_pc(10) $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\jAddr26[10]~input_o\ & ((s_pc(10)) # (!\Add0~19\))) # (!\jAddr26[10]~input_o\ & (s_pc(10) & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr26[10]~input_o\,
	datab => s_pc(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X111_Y65_N16
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\Add0~20_combout\ & ((\jump~input_o\) # ((\Add1~12_combout\ & \Add2~16_combout\)))) # (!\Add0~20_combout\ & (\Add1~12_combout\ & ((\Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \Add1~12_combout\,
	datac => \jump~input_o\,
	datad => \Add2~16_combout\,
	combout => \Add1~34_combout\);

-- Location: LCCOMB_X108_Y65_N2
\Add1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~37_combout\ = (\Add1~34_combout\) # ((\Add1~16_combout\ & \Add1~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~35_combout\,
	datad => \Add1~34_combout\,
	combout => \Add1~37_combout\);

-- Location: FF_X108_Y65_N3
\s_pc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~37_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(10));

-- Location: LCCOMB_X109_Y65_N20
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (s_pc(11) & (!\Add2~17\)) # (!s_pc(11) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!s_pc(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(11),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: IOIBUF_X89_Y73_N8
\jAddr26[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(11),
	o => \jAddr26[11]~input_o\);

-- Location: LCCOMB_X112_Y65_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (s_pc(11) & ((\jAddr26[11]~input_o\ & (\Add0~21\ & VCC)) # (!\jAddr26[11]~input_o\ & (!\Add0~21\)))) # (!s_pc(11) & ((\jAddr26[11]~input_o\ & (!\Add0~21\)) # (!\jAddr26[11]~input_o\ & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((s_pc(11) & (!\jAddr26[11]~input_o\ & !\Add0~21\)) # (!s_pc(11) & ((!\Add0~21\) # (!\jAddr26[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(11),
	datab => \jAddr26[11]~input_o\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X111_Y65_N18
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\Add2~18_combout\ & ((\Add1~12_combout\) # ((\jump~input_o\ & \Add0~22_combout\)))) # (!\Add2~18_combout\ & (((\jump~input_o\ & \Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \Add1~12_combout\,
	datac => \jump~input_o\,
	datad => \Add0~22_combout\,
	combout => \Add1~38_combout\);

-- Location: IOIBUF_X109_Y73_N8
\offSet32[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(9),
	o => \offSet32[9]~input_o\);

-- Location: LCCOMB_X110_Y65_N20
\Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~39_combout\ = (\offSet32[9]~input_o\ & ((\Add2~18_combout\ & (\Add1~36\ & VCC)) # (!\Add2~18_combout\ & (!\Add1~36\)))) # (!\offSet32[9]~input_o\ & ((\Add2~18_combout\ & (!\Add1~36\)) # (!\Add2~18_combout\ & ((\Add1~36\) # (GND)))))
-- \Add1~40\ = CARRY((\offSet32[9]~input_o\ & (!\Add2~18_combout\ & !\Add1~36\)) # (!\offSet32[9]~input_o\ & ((!\Add1~36\) # (!\Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offSet32[9]~input_o\,
	datab => \Add2~18_combout\,
	datad => VCC,
	cin => \Add1~36\,
	combout => \Add1~39_combout\,
	cout => \Add1~40\);

-- Location: LCCOMB_X108_Y65_N4
\Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~41_combout\ = (\Add1~38_combout\) # ((\Add1~16_combout\ & \Add1~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~38_combout\,
	datad => \Add1~39_combout\,
	combout => \Add1~41_combout\);

-- Location: FF_X108_Y65_N5
\s_pc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~41_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(11));

-- Location: IOIBUF_X96_Y73_N22
\offSet32[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(10),
	o => \offSet32[10]~input_o\);

-- Location: LCCOMB_X109_Y65_N22
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (s_pc(12) & (\Add2~19\ $ (GND))) # (!s_pc(12) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((s_pc(12) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(12),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X110_Y65_N22
\Add1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~43_combout\ = ((\offSet32[10]~input_o\ $ (\Add2~20_combout\ $ (!\Add1~40\)))) # (GND)
-- \Add1~44\ = CARRY((\offSet32[10]~input_o\ & ((\Add2~20_combout\) # (!\Add1~40\))) # (!\offSet32[10]~input_o\ & (\Add2~20_combout\ & !\Add1~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offSet32[10]~input_o\,
	datab => \Add2~20_combout\,
	datad => VCC,
	cin => \Add1~40\,
	combout => \Add1~43_combout\,
	cout => \Add1~44\);

-- Location: IOIBUF_X115_Y68_N22
\jAddr26[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(12),
	o => \jAddr26[12]~input_o\);

-- Location: LCCOMB_X112_Y65_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\jAddr26[12]~input_o\ $ (s_pc(12) $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\jAddr26[12]~input_o\ & ((s_pc(12)) # (!\Add0~23\))) # (!\jAddr26[12]~input_o\ & (s_pc(12) & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr26[12]~input_o\,
	datab => s_pc(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X108_Y65_N10
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\Add1~12_combout\ & ((\Add2~20_combout\) # ((\Add0~24_combout\ & \jump~input_o\)))) # (!\Add1~12_combout\ & (((\Add0~24_combout\ & \jump~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add2~20_combout\,
	datac => \Add0~24_combout\,
	datad => \jump~input_o\,
	combout => \Add1~42_combout\);

-- Location: LCCOMB_X108_Y65_N30
\Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~45_combout\ = (\Add1~42_combout\) # ((\Add1~16_combout\ & \Add1~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~43_combout\,
	datad => \Add1~42_combout\,
	combout => \Add1~45_combout\);

-- Location: FF_X108_Y65_N31
\s_pc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~45_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(12));

-- Location: IOIBUF_X102_Y73_N1
\offSet32[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(11),
	o => \offSet32[11]~input_o\);

-- Location: LCCOMB_X109_Y65_N24
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (s_pc(13) & (!\Add2~21\)) # (!s_pc(13) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!s_pc(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(13),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X110_Y65_N24
\Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~47_combout\ = (\offSet32[11]~input_o\ & ((\Add2~22_combout\ & (\Add1~44\ & VCC)) # (!\Add2~22_combout\ & (!\Add1~44\)))) # (!\offSet32[11]~input_o\ & ((\Add2~22_combout\ & (!\Add1~44\)) # (!\Add2~22_combout\ & ((\Add1~44\) # (GND)))))
-- \Add1~48\ = CARRY((\offSet32[11]~input_o\ & (!\Add2~22_combout\ & !\Add1~44\)) # (!\offSet32[11]~input_o\ & ((!\Add1~44\) # (!\Add2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offSet32[11]~input_o\,
	datab => \Add2~22_combout\,
	datad => VCC,
	cin => \Add1~44\,
	combout => \Add1~47_combout\,
	cout => \Add1~48\);

-- Location: IOIBUF_X115_Y49_N1
\jAddr26[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(13),
	o => \jAddr26[13]~input_o\);

-- Location: LCCOMB_X112_Y65_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\jAddr26[13]~input_o\ & ((s_pc(13) & (\Add0~25\ & VCC)) # (!s_pc(13) & (!\Add0~25\)))) # (!\jAddr26[13]~input_o\ & ((s_pc(13) & (!\Add0~25\)) # (!s_pc(13) & ((\Add0~25\) # (GND)))))
-- \Add0~27\ = CARRY((\jAddr26[13]~input_o\ & (!s_pc(13) & !\Add0~25\)) # (!\jAddr26[13]~input_o\ & ((!\Add0~25\) # (!s_pc(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr26[13]~input_o\,
	datab => s_pc(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X111_Y65_N8
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\Add2~22_combout\ & ((\Add1~12_combout\) # ((\jump~input_o\ & \Add0~26_combout\)))) # (!\Add2~22_combout\ & (((\jump~input_o\ & \Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~22_combout\,
	datab => \Add1~12_combout\,
	datac => \jump~input_o\,
	datad => \Add0~26_combout\,
	combout => \Add1~46_combout\);

-- Location: LCCOMB_X108_Y65_N12
\Add1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~49_combout\ = (\Add1~46_combout\) # ((\Add1~16_combout\ & \Add1~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~47_combout\,
	datad => \Add1~46_combout\,
	combout => \Add1~49_combout\);

-- Location: FF_X108_Y65_N13
\s_pc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~49_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(13));

-- Location: LCCOMB_X109_Y65_N26
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (s_pc(14) & (\Add2~23\ $ (GND))) # (!s_pc(14) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((s_pc(14) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(14),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: IOIBUF_X115_Y58_N15
\jAddr26[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(14),
	o => \jAddr26[14]~input_o\);

-- Location: LCCOMB_X112_Y65_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((s_pc(14) $ (\jAddr26[14]~input_o\ $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((s_pc(14) & ((\jAddr26[14]~input_o\) # (!\Add0~27\))) # (!s_pc(14) & (\jAddr26[14]~input_o\ & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(14),
	datab => \jAddr26[14]~input_o\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X108_Y65_N8
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\Add1~12_combout\ & ((\Add2~24_combout\) # ((\Add0~28_combout\ & \jump~input_o\)))) # (!\Add1~12_combout\ & (((\Add0~28_combout\ & \jump~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add2~24_combout\,
	datac => \Add0~28_combout\,
	datad => \jump~input_o\,
	combout => \Add1~50_combout\);

-- Location: IOIBUF_X107_Y73_N15
\offSet32[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(12),
	o => \offSet32[12]~input_o\);

-- Location: LCCOMB_X110_Y65_N26
\Add1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~51_combout\ = ((\Add2~24_combout\ $ (\offSet32[12]~input_o\ $ (!\Add1~48\)))) # (GND)
-- \Add1~52\ = CARRY((\Add2~24_combout\ & ((\offSet32[12]~input_o\) # (!\Add1~48\))) # (!\Add2~24_combout\ & (\offSet32[12]~input_o\ & !\Add1~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~24_combout\,
	datab => \offSet32[12]~input_o\,
	datad => VCC,
	cin => \Add1~48\,
	combout => \Add1~51_combout\,
	cout => \Add1~52\);

-- Location: LCCOMB_X108_Y65_N18
\Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~53_combout\ = (\Add1~50_combout\) # ((\Add1~16_combout\ & \Add1~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~50_combout\,
	datad => \Add1~51_combout\,
	combout => \Add1~53_combout\);

-- Location: FF_X108_Y65_N19
\s_pc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~53_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(14));

-- Location: LCCOMB_X109_Y65_N28
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (s_pc(15) & (!\Add2~25\)) # (!s_pc(15) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!s_pc(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(15),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: IOIBUF_X115_Y61_N15
\jAddr26[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(15),
	o => \jAddr26[15]~input_o\);

-- Location: LCCOMB_X112_Y65_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (s_pc(15) & ((\jAddr26[15]~input_o\ & (\Add0~29\ & VCC)) # (!\jAddr26[15]~input_o\ & (!\Add0~29\)))) # (!s_pc(15) & ((\jAddr26[15]~input_o\ & (!\Add0~29\)) # (!\jAddr26[15]~input_o\ & ((\Add0~29\) # (GND)))))
-- \Add0~31\ = CARRY((s_pc(15) & (!\jAddr26[15]~input_o\ & !\Add0~29\)) # (!s_pc(15) & ((!\Add0~29\) # (!\jAddr26[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(15),
	datab => \jAddr26[15]~input_o\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X108_Y65_N22
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\jump~input_o\ & ((\Add0~30_combout\) # ((\Add2~26_combout\ & \Add1~12_combout\)))) # (!\jump~input_o\ & (\Add2~26_combout\ & (\Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump~input_o\,
	datab => \Add2~26_combout\,
	datac => \Add1~12_combout\,
	datad => \Add0~30_combout\,
	combout => \Add1~54_combout\);

-- Location: IOIBUF_X102_Y73_N8
\offSet32[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(13),
	o => \offSet32[13]~input_o\);

-- Location: LCCOMB_X110_Y65_N28
\Add1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~55_combout\ = (\offSet32[13]~input_o\ & ((\Add2~26_combout\ & (\Add1~52\ & VCC)) # (!\Add2~26_combout\ & (!\Add1~52\)))) # (!\offSet32[13]~input_o\ & ((\Add2~26_combout\ & (!\Add1~52\)) # (!\Add2~26_combout\ & ((\Add1~52\) # (GND)))))
-- \Add1~56\ = CARRY((\offSet32[13]~input_o\ & (!\Add2~26_combout\ & !\Add1~52\)) # (!\offSet32[13]~input_o\ & ((!\Add1~52\) # (!\Add2~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offSet32[13]~input_o\,
	datab => \Add2~26_combout\,
	datad => VCC,
	cin => \Add1~52\,
	combout => \Add1~55_combout\,
	cout => \Add1~56\);

-- Location: LCCOMB_X108_Y65_N24
\Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~57_combout\ = (\Add1~54_combout\) # ((\Add1~16_combout\ & \Add1~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~54_combout\,
	datad => \Add1~55_combout\,
	combout => \Add1~57_combout\);

-- Location: FF_X108_Y65_N25
\s_pc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~57_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(15));

-- Location: IOIBUF_X98_Y73_N22
\offSet32[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(14),
	o => \offSet32[14]~input_o\);

-- Location: LCCOMB_X109_Y65_N30
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (s_pc(16) & (\Add2~27\ $ (GND))) # (!s_pc(16) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((s_pc(16) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(16),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X110_Y65_N30
\Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~59_combout\ = ((\offSet32[14]~input_o\ $ (\Add2~28_combout\ $ (!\Add1~56\)))) # (GND)
-- \Add1~60\ = CARRY((\offSet32[14]~input_o\ & ((\Add2~28_combout\) # (!\Add1~56\))) # (!\offSet32[14]~input_o\ & (\Add2~28_combout\ & !\Add1~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offSet32[14]~input_o\,
	datab => \Add2~28_combout\,
	datad => VCC,
	cin => \Add1~56\,
	combout => \Add1~59_combout\,
	cout => \Add1~60\);

-- Location: IOIBUF_X115_Y57_N15
\jAddr26[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(16),
	o => \jAddr26[16]~input_o\);

-- Location: LCCOMB_X112_Y64_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((s_pc(16) $ (\jAddr26[16]~input_o\ $ (!\Add0~31\)))) # (GND)
-- \Add0~33\ = CARRY((s_pc(16) & ((\jAddr26[16]~input_o\) # (!\Add0~31\))) # (!s_pc(16) & (\jAddr26[16]~input_o\ & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(16),
	datab => \jAddr26[16]~input_o\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X111_Y65_N26
\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\Add2~28_combout\ & ((\Add1~12_combout\) # ((\jump~input_o\ & \Add0~32_combout\)))) # (!\Add2~28_combout\ & (\jump~input_o\ & (\Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~28_combout\,
	datab => \jump~input_o\,
	datac => \Add0~32_combout\,
	datad => \Add1~12_combout\,
	combout => \Add1~58_combout\);

-- Location: LCCOMB_X110_Y65_N0
\Add1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~61_combout\ = (\Add1~58_combout\) # ((\Add1~16_combout\ & \Add1~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~59_combout\,
	datad => \Add1~58_combout\,
	combout => \Add1~61_combout\);

-- Location: FF_X110_Y65_N1
\s_pc[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~61_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(16));

-- Location: LCCOMB_X109_Y64_N0
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (s_pc(17) & (!\Add2~29\)) # (!s_pc(17) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!s_pc(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(17),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: IOIBUF_X115_Y41_N1
\offSet32[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(15),
	o => \offSet32[15]~input_o\);

-- Location: LCCOMB_X110_Y64_N0
\Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~63_combout\ = (\Add2~30_combout\ & ((\offSet32[15]~input_o\ & (\Add1~60\ & VCC)) # (!\offSet32[15]~input_o\ & (!\Add1~60\)))) # (!\Add2~30_combout\ & ((\offSet32[15]~input_o\ & (!\Add1~60\)) # (!\offSet32[15]~input_o\ & ((\Add1~60\) # (GND)))))
-- \Add1~64\ = CARRY((\Add2~30_combout\ & (!\offSet32[15]~input_o\ & !\Add1~60\)) # (!\Add2~30_combout\ & ((!\Add1~60\) # (!\offSet32[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~30_combout\,
	datab => \offSet32[15]~input_o\,
	datad => VCC,
	cin => \Add1~60\,
	combout => \Add1~63_combout\,
	cout => \Add1~64\);

-- Location: IOIBUF_X115_Y46_N1
\jAddr26[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(17),
	o => \jAddr26[17]~input_o\);

-- Location: LCCOMB_X112_Y64_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (s_pc(17) & ((\jAddr26[17]~input_o\ & (\Add0~33\ & VCC)) # (!\jAddr26[17]~input_o\ & (!\Add0~33\)))) # (!s_pc(17) & ((\jAddr26[17]~input_o\ & (!\Add0~33\)) # (!\jAddr26[17]~input_o\ & ((\Add0~33\) # (GND)))))
-- \Add0~35\ = CARRY((s_pc(17) & (!\jAddr26[17]~input_o\ & !\Add0~33\)) # (!s_pc(17) & ((!\Add0~33\) # (!\jAddr26[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(17),
	datab => \jAddr26[17]~input_o\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X108_Y64_N18
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = (\jump~input_o\ & ((\Add0~34_combout\) # ((\Add2~30_combout\ & \Add1~12_combout\)))) # (!\jump~input_o\ & (\Add2~30_combout\ & ((\Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump~input_o\,
	datab => \Add2~30_combout\,
	datac => \Add0~34_combout\,
	datad => \Add1~12_combout\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X108_Y64_N20
\Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~65_combout\ = (\Add1~62_combout\) # ((\Add1~16_combout\ & \Add1~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~63_combout\,
	datad => \Add1~62_combout\,
	combout => \Add1~65_combout\);

-- Location: FF_X108_Y64_N21
\s_pc[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~65_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(17));

-- Location: LCCOMB_X109_Y64_N2
\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (s_pc(18) & (\Add2~31\ $ (GND))) # (!s_pc(18) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((s_pc(18) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(18),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: IOIBUF_X115_Y50_N8
\jAddr26[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(18),
	o => \jAddr26[18]~input_o\);

-- Location: LCCOMB_X112_Y64_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\jAddr26[18]~input_o\ $ (s_pc(18) $ (!\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((\jAddr26[18]~input_o\ & ((s_pc(18)) # (!\Add0~35\))) # (!\jAddr26[18]~input_o\ & (s_pc(18) & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr26[18]~input_o\,
	datab => s_pc(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X108_Y64_N4
\Add1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~66_combout\ = (\Add2~32_combout\ & ((\Add1~12_combout\) # ((\jump~input_o\ & \Add0~36_combout\)))) # (!\Add2~32_combout\ & (((\jump~input_o\ & \Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~32_combout\,
	datab => \Add1~12_combout\,
	datac => \jump~input_o\,
	datad => \Add0~36_combout\,
	combout => \Add1~66_combout\);

-- Location: IOIBUF_X115_Y52_N8
\offSet32[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(16),
	o => \offSet32[16]~input_o\);

-- Location: LCCOMB_X110_Y64_N2
\Add1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~67_combout\ = ((\Add2~32_combout\ $ (\offSet32[16]~input_o\ $ (!\Add1~64\)))) # (GND)
-- \Add1~68\ = CARRY((\Add2~32_combout\ & ((\offSet32[16]~input_o\) # (!\Add1~64\))) # (!\Add2~32_combout\ & (\offSet32[16]~input_o\ & !\Add1~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~32_combout\,
	datab => \offSet32[16]~input_o\,
	datad => VCC,
	cin => \Add1~64\,
	combout => \Add1~67_combout\,
	cout => \Add1~68\);

-- Location: LCCOMB_X108_Y64_N26
\Add1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~69_combout\ = (\Add1~66_combout\) # ((\Add1~16_combout\ & \Add1~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~66_combout\,
	datad => \Add1~67_combout\,
	combout => \Add1~69_combout\);

-- Location: FF_X108_Y64_N27
\s_pc[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~69_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(18));

-- Location: IOIBUF_X115_Y41_N8
\offSet32[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(17),
	o => \offSet32[17]~input_o\);

-- Location: LCCOMB_X109_Y64_N4
\Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (s_pc(19) & (!\Add2~33\)) # (!s_pc(19) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!s_pc(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(19),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X110_Y64_N4
\Add1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~71_combout\ = (\offSet32[17]~input_o\ & ((\Add2~34_combout\ & (\Add1~68\ & VCC)) # (!\Add2~34_combout\ & (!\Add1~68\)))) # (!\offSet32[17]~input_o\ & ((\Add2~34_combout\ & (!\Add1~68\)) # (!\Add2~34_combout\ & ((\Add1~68\) # (GND)))))
-- \Add1~72\ = CARRY((\offSet32[17]~input_o\ & (!\Add2~34_combout\ & !\Add1~68\)) # (!\offSet32[17]~input_o\ & ((!\Add1~68\) # (!\Add2~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offSet32[17]~input_o\,
	datab => \Add2~34_combout\,
	datad => VCC,
	cin => \Add1~68\,
	combout => \Add1~71_combout\,
	cout => \Add1~72\);

-- Location: IOIBUF_X115_Y48_N1
\jAddr26[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(19),
	o => \jAddr26[19]~input_o\);

-- Location: LCCOMB_X112_Y64_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (s_pc(19) & ((\jAddr26[19]~input_o\ & (\Add0~37\ & VCC)) # (!\jAddr26[19]~input_o\ & (!\Add0~37\)))) # (!s_pc(19) & ((\jAddr26[19]~input_o\ & (!\Add0~37\)) # (!\jAddr26[19]~input_o\ & ((\Add0~37\) # (GND)))))
-- \Add0~39\ = CARRY((s_pc(19) & (!\jAddr26[19]~input_o\ & !\Add0~37\)) # (!s_pc(19) & ((!\Add0~37\) # (!\jAddr26[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(19),
	datab => \jAddr26[19]~input_o\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X113_Y64_N8
\Add1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~70_combout\ = (\Add1~12_combout\ & ((\Add2~34_combout\) # ((\jump~input_o\ & \Add0~38_combout\)))) # (!\Add1~12_combout\ & (\jump~input_o\ & (\Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \jump~input_o\,
	datac => \Add0~38_combout\,
	datad => \Add2~34_combout\,
	combout => \Add1~70_combout\);

-- Location: LCCOMB_X111_Y64_N16
\Add1~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~73_combout\ = (\Add1~70_combout\) # ((\Add1~16_combout\ & \Add1~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~71_combout\,
	datad => \Add1~70_combout\,
	combout => \Add1~73_combout\);

-- Location: FF_X111_Y64_N17
\s_pc[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~73_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(19));

-- Location: IOIBUF_X115_Y40_N8
\offSet32[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(18),
	o => \offSet32[18]~input_o\);

-- Location: LCCOMB_X109_Y64_N6
\Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (s_pc(20) & (\Add2~35\ $ (GND))) # (!s_pc(20) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((s_pc(20) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(20),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X110_Y64_N6
\Add1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~75_combout\ = ((\offSet32[18]~input_o\ $ (\Add2~36_combout\ $ (!\Add1~72\)))) # (GND)
-- \Add1~76\ = CARRY((\offSet32[18]~input_o\ & ((\Add2~36_combout\) # (!\Add1~72\))) # (!\offSet32[18]~input_o\ & (\Add2~36_combout\ & !\Add1~72\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offSet32[18]~input_o\,
	datab => \Add2~36_combout\,
	datad => VCC,
	cin => \Add1~72\,
	combout => \Add1~75_combout\,
	cout => \Add1~76\);

-- Location: IOIBUF_X115_Y57_N22
\jAddr26[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(20),
	o => \jAddr26[20]~input_o\);

-- Location: LCCOMB_X112_Y64_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((s_pc(20) $ (\jAddr26[20]~input_o\ $ (!\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((s_pc(20) & ((\jAddr26[20]~input_o\) # (!\Add0~39\))) # (!s_pc(20) & (\jAddr26[20]~input_o\ & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(20),
	datab => \jAddr26[20]~input_o\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X108_Y64_N2
\Add1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~74_combout\ = (\jump~input_o\ & ((\Add0~40_combout\) # ((\Add1~12_combout\ & \Add2~36_combout\)))) # (!\jump~input_o\ & (\Add1~12_combout\ & ((\Add2~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump~input_o\,
	datab => \Add1~12_combout\,
	datac => \Add0~40_combout\,
	datad => \Add2~36_combout\,
	combout => \Add1~74_combout\);

-- Location: LCCOMB_X108_Y64_N16
\Add1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~77_combout\ = (\Add1~74_combout\) # ((\Add1~16_combout\ & \Add1~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~75_combout\,
	datad => \Add1~74_combout\,
	combout => \Add1~77_combout\);

-- Location: FF_X108_Y64_N17
\s_pc[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~77_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(20));

-- Location: IOIBUF_X115_Y61_N22
\jAddr26[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(21),
	o => \jAddr26[21]~input_o\);

-- Location: LCCOMB_X112_Y64_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (s_pc(21) & ((\jAddr26[21]~input_o\ & (\Add0~41\ & VCC)) # (!\jAddr26[21]~input_o\ & (!\Add0~41\)))) # (!s_pc(21) & ((\jAddr26[21]~input_o\ & (!\Add0~41\)) # (!\jAddr26[21]~input_o\ & ((\Add0~41\) # (GND)))))
-- \Add0~43\ = CARRY((s_pc(21) & (!\jAddr26[21]~input_o\ & !\Add0~41\)) # (!s_pc(21) & ((!\Add0~41\) # (!\jAddr26[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(21),
	datab => \jAddr26[21]~input_o\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X109_Y64_N8
\Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (s_pc(21) & (!\Add2~37\)) # (!s_pc(21) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!s_pc(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(21),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X111_Y64_N28
\Add1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~78_combout\ = (\Add1~12_combout\ & ((\Add2~38_combout\) # ((\jump~input_o\ & \Add0~42_combout\)))) # (!\Add1~12_combout\ & (\jump~input_o\ & (\Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \jump~input_o\,
	datac => \Add0~42_combout\,
	datad => \Add2~38_combout\,
	combout => \Add1~78_combout\);

-- Location: IOIBUF_X115_Y36_N1
\offSet32[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(19),
	o => \offSet32[19]~input_o\);

-- Location: LCCOMB_X110_Y64_N8
\Add1~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~79_combout\ = (\Add2~38_combout\ & ((\offSet32[19]~input_o\ & (\Add1~76\ & VCC)) # (!\offSet32[19]~input_o\ & (!\Add1~76\)))) # (!\Add2~38_combout\ & ((\offSet32[19]~input_o\ & (!\Add1~76\)) # (!\offSet32[19]~input_o\ & ((\Add1~76\) # (GND)))))
-- \Add1~80\ = CARRY((\Add2~38_combout\ & (!\offSet32[19]~input_o\ & !\Add1~76\)) # (!\Add2~38_combout\ & ((!\Add1~76\) # (!\offSet32[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~38_combout\,
	datab => \offSet32[19]~input_o\,
	datad => VCC,
	cin => \Add1~76\,
	combout => \Add1~79_combout\,
	cout => \Add1~80\);

-- Location: LCCOMB_X111_Y64_N2
\Add1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~81_combout\ = (\Add1~78_combout\) # ((\Add1~16_combout\ & \Add1~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~78_combout\,
	datac => \Add1~16_combout\,
	datad => \Add1~79_combout\,
	combout => \Add1~81_combout\);

-- Location: FF_X111_Y64_N3
\s_pc[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~81_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(21));

-- Location: IOIBUF_X115_Y47_N22
\jAddr26[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(22),
	o => \jAddr26[22]~input_o\);

-- Location: LCCOMB_X112_Y64_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((s_pc(22) $ (\jAddr26[22]~input_o\ $ (!\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((s_pc(22) & ((\jAddr26[22]~input_o\) # (!\Add0~43\))) # (!s_pc(22) & (\jAddr26[22]~input_o\ & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(22),
	datab => \jAddr26[22]~input_o\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X109_Y64_N10
\Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (s_pc(22) & (\Add2~39\ $ (GND))) # (!s_pc(22) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((s_pc(22) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(22),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X111_Y64_N22
\Add1~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~82_combout\ = (\Add1~12_combout\ & ((\Add2~40_combout\) # ((\jump~input_o\ & \Add0~44_combout\)))) # (!\Add1~12_combout\ & (\jump~input_o\ & (\Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \jump~input_o\,
	datac => \Add0~44_combout\,
	datad => \Add2~40_combout\,
	combout => \Add1~82_combout\);

-- Location: IOIBUF_X115_Y42_N15
\offSet32[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(20),
	o => \offSet32[20]~input_o\);

-- Location: LCCOMB_X110_Y64_N10
\Add1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~83_combout\ = ((\Add2~40_combout\ $ (\offSet32[20]~input_o\ $ (!\Add1~80\)))) # (GND)
-- \Add1~84\ = CARRY((\Add2~40_combout\ & ((\offSet32[20]~input_o\) # (!\Add1~80\))) # (!\Add2~40_combout\ & (\offSet32[20]~input_o\ & !\Add1~80\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~40_combout\,
	datab => \offSet32[20]~input_o\,
	datad => VCC,
	cin => \Add1~80\,
	combout => \Add1~83_combout\,
	cout => \Add1~84\);

-- Location: LCCOMB_X111_Y64_N12
\Add1~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~85_combout\ = (\Add1~82_combout\) # ((\Add1~16_combout\ & \Add1~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~82_combout\,
	datad => \Add1~83_combout\,
	combout => \Add1~85_combout\);

-- Location: FF_X111_Y64_N13
\s_pc[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~85_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(22));

-- Location: LCCOMB_X109_Y64_N12
\Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (s_pc(23) & (!\Add2~41\)) # (!s_pc(23) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!s_pc(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(23),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: IOIBUF_X115_Y46_N8
\jAddr26[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(23),
	o => \jAddr26[23]~input_o\);

-- Location: LCCOMB_X112_Y64_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (s_pc(23) & ((\jAddr26[23]~input_o\ & (\Add0~45\ & VCC)) # (!\jAddr26[23]~input_o\ & (!\Add0~45\)))) # (!s_pc(23) & ((\jAddr26[23]~input_o\ & (!\Add0~45\)) # (!\jAddr26[23]~input_o\ & ((\Add0~45\) # (GND)))))
-- \Add0~47\ = CARRY((s_pc(23) & (!\jAddr26[23]~input_o\ & !\Add0~45\)) # (!s_pc(23) & ((!\Add0~45\) # (!\jAddr26[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(23),
	datab => \jAddr26[23]~input_o\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X111_Y64_N0
\Add1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~86_combout\ = (\Add1~12_combout\ & ((\Add2~42_combout\) # ((\Add0~46_combout\ & \jump~input_o\)))) # (!\Add1~12_combout\ & (((\Add0~46_combout\ & \jump~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add2~42_combout\,
	datac => \Add0~46_combout\,
	datad => \jump~input_o\,
	combout => \Add1~86_combout\);

-- Location: IOIBUF_X115_Y44_N1
\offSet32[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(21),
	o => \offSet32[21]~input_o\);

-- Location: LCCOMB_X110_Y64_N12
\Add1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~87_combout\ = (\Add2~42_combout\ & ((\offSet32[21]~input_o\ & (\Add1~84\ & VCC)) # (!\offSet32[21]~input_o\ & (!\Add1~84\)))) # (!\Add2~42_combout\ & ((\offSet32[21]~input_o\ & (!\Add1~84\)) # (!\offSet32[21]~input_o\ & ((\Add1~84\) # (GND)))))
-- \Add1~88\ = CARRY((\Add2~42_combout\ & (!\offSet32[21]~input_o\ & !\Add1~84\)) # (!\Add2~42_combout\ & ((!\Add1~84\) # (!\offSet32[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~42_combout\,
	datab => \offSet32[21]~input_o\,
	datad => VCC,
	cin => \Add1~84\,
	combout => \Add1~87_combout\,
	cout => \Add1~88\);

-- Location: LCCOMB_X111_Y64_N6
\Add1~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~89_combout\ = (\Add1~86_combout\) # ((\Add1~16_combout\ & \Add1~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Add1~86_combout\,
	datad => \Add1~87_combout\,
	combout => \Add1~89_combout\);

-- Location: FF_X111_Y64_N7
\s_pc[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~89_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(23));

-- Location: LCCOMB_X109_Y64_N14
\Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (s_pc(24) & (\Add2~43\ $ (GND))) # (!s_pc(24) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((s_pc(24) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(24),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: IOIBUF_X85_Y73_N22
\offSet32[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(22),
	o => \offSet32[22]~input_o\);

-- Location: LCCOMB_X110_Y64_N14
\Add1~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~91_combout\ = ((\Add2~44_combout\ $ (\offSet32[22]~input_o\ $ (!\Add1~88\)))) # (GND)
-- \Add1~92\ = CARRY((\Add2~44_combout\ & ((\offSet32[22]~input_o\) # (!\Add1~88\))) # (!\Add2~44_combout\ & (\offSet32[22]~input_o\ & !\Add1~88\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~44_combout\,
	datab => \offSet32[22]~input_o\,
	datad => VCC,
	cin => \Add1~88\,
	combout => \Add1~91_combout\,
	cout => \Add1~92\);

-- Location: IOIBUF_X115_Y36_N8
\jAddr26[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(24),
	o => \jAddr26[24]~input_o\);

-- Location: LCCOMB_X112_Y64_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\jAddr26[24]~input_o\ $ (s_pc(24) $ (!\Add0~47\)))) # (GND)
-- \Add0~49\ = CARRY((\jAddr26[24]~input_o\ & ((s_pc(24)) # (!\Add0~47\))) # (!\jAddr26[24]~input_o\ & (s_pc(24) & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr26[24]~input_o\,
	datab => s_pc(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X108_Y64_N28
\Add1~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~90_combout\ = (\jump~input_o\ & ((\Add0~48_combout\) # ((\Add1~12_combout\ & \Add2~44_combout\)))) # (!\jump~input_o\ & (\Add1~12_combout\ & (\Add2~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump~input_o\,
	datab => \Add1~12_combout\,
	datac => \Add2~44_combout\,
	datad => \Add0~48_combout\,
	combout => \Add1~90_combout\);

-- Location: LCCOMB_X109_Y64_N30
\Add1~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~93_combout\ = (\Add1~90_combout\) # ((\Add1~16_combout\ & \Add1~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~16_combout\,
	datac => \Add1~91_combout\,
	datad => \Add1~90_combout\,
	combout => \Add1~93_combout\);

-- Location: FF_X109_Y64_N31
\s_pc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~93_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(24));

-- Location: LCCOMB_X109_Y64_N16
\Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (s_pc(25) & (!\Add2~45\)) # (!s_pc(25) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!s_pc(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(25),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: IOIBUF_X115_Y44_N8
\offSet32[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(23),
	o => \offSet32[23]~input_o\);

-- Location: LCCOMB_X110_Y64_N16
\Add1~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~95_combout\ = (\Add2~46_combout\ & ((\offSet32[23]~input_o\ & (\Add1~92\ & VCC)) # (!\offSet32[23]~input_o\ & (!\Add1~92\)))) # (!\Add2~46_combout\ & ((\offSet32[23]~input_o\ & (!\Add1~92\)) # (!\offSet32[23]~input_o\ & ((\Add1~92\) # (GND)))))
-- \Add1~96\ = CARRY((\Add2~46_combout\ & (!\offSet32[23]~input_o\ & !\Add1~92\)) # (!\Add2~46_combout\ & ((!\Add1~92\) # (!\offSet32[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~46_combout\,
	datab => \offSet32[23]~input_o\,
	datad => VCC,
	cin => \Add1~92\,
	combout => \Add1~95_combout\,
	cout => \Add1~96\);

-- Location: IOIBUF_X115_Y48_N8
\jAddr26[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(25),
	o => \jAddr26[25]~input_o\);

-- Location: LCCOMB_X112_Y64_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (s_pc(25) & ((\jAddr26[25]~input_o\ & (\Add0~49\ & VCC)) # (!\jAddr26[25]~input_o\ & (!\Add0~49\)))) # (!s_pc(25) & ((\jAddr26[25]~input_o\ & (!\Add0~49\)) # (!\jAddr26[25]~input_o\ & ((\Add0~49\) # (GND)))))
-- \Add0~51\ = CARRY((s_pc(25) & (!\jAddr26[25]~input_o\ & !\Add0~49\)) # (!s_pc(25) & ((!\Add0~49\) # (!\jAddr26[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(25),
	datab => \jAddr26[25]~input_o\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X111_Y64_N18
\Add1~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~94_combout\ = (\Add1~12_combout\ & ((\Add2~46_combout\) # ((\jump~input_o\ & \Add0~50_combout\)))) # (!\Add1~12_combout\ & (\jump~input_o\ & ((\Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \jump~input_o\,
	datac => \Add2~46_combout\,
	datad => \Add0~50_combout\,
	combout => \Add1~94_combout\);

-- Location: LCCOMB_X111_Y64_N8
\Add1~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~97_combout\ = (\Add1~94_combout\) # ((\Add1~16_combout\ & \Add1~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~95_combout\,
	datad => \Add1~94_combout\,
	combout => \Add1~97_combout\);

-- Location: FF_X111_Y64_N9
\s_pc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~97_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(25));

-- Location: IOIBUF_X115_Y50_N1
\jAddr26[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr26(26),
	o => \jAddr26[26]~input_o\);

-- Location: LCCOMB_X112_Y64_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = ((\jAddr26[26]~input_o\ $ (s_pc(26) $ (!\Add0~51\)))) # (GND)
-- \Add0~53\ = CARRY((\jAddr26[26]~input_o\ & ((s_pc(26)) # (!\Add0~51\))) # (!\jAddr26[26]~input_o\ & (s_pc(26) & !\Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr26[26]~input_o\,
	datab => s_pc(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X109_Y64_N18
\Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (s_pc(26) & (\Add2~47\ $ (GND))) # (!s_pc(26) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((s_pc(26) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(26),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X108_Y64_N30
\Add1~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~98_combout\ = (\jump~input_o\ & ((\Add0~52_combout\) # ((\Add1~12_combout\ & \Add2~48_combout\)))) # (!\jump~input_o\ & (\Add1~12_combout\ & ((\Add2~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump~input_o\,
	datab => \Add1~12_combout\,
	datac => \Add0~52_combout\,
	datad => \Add2~48_combout\,
	combout => \Add1~98_combout\);

-- Location: IOIBUF_X115_Y36_N15
\offSet32[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(24),
	o => \offSet32[24]~input_o\);

-- Location: LCCOMB_X110_Y64_N18
\Add1~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~99_combout\ = ((\offSet32[24]~input_o\ $ (\Add2~48_combout\ $ (!\Add1~96\)))) # (GND)
-- \Add1~100\ = CARRY((\offSet32[24]~input_o\ & ((\Add2~48_combout\) # (!\Add1~96\))) # (!\offSet32[24]~input_o\ & (\Add2~48_combout\ & !\Add1~96\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offSet32[24]~input_o\,
	datab => \Add2~48_combout\,
	datad => VCC,
	cin => \Add1~96\,
	combout => \Add1~99_combout\,
	cout => \Add1~100\);

-- Location: LCCOMB_X108_Y64_N6
\Add1~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~101_combout\ = (\Add1~98_combout\) # ((\Add1~16_combout\ & \Add1~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~98_combout\,
	datad => \Add1~99_combout\,
	combout => \Add1~101_combout\);

-- Location: FF_X108_Y64_N7
\s_pc[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~101_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(26));

-- Location: LCCOMB_X109_Y64_N20
\Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (s_pc(27) & (!\Add2~49\)) # (!s_pc(27) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!s_pc(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(27),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X112_Y64_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (s_pc(27) & (!\Add0~53\)) # (!s_pc(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!s_pc(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X108_Y64_N8
\Add1~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~102_combout\ = (\jump~input_o\ & ((\Add0~54_combout\) # ((\Add1~12_combout\ & \Add2~50_combout\)))) # (!\jump~input_o\ & (\Add1~12_combout\ & (\Add2~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump~input_o\,
	datab => \Add1~12_combout\,
	datac => \Add2~50_combout\,
	datad => \Add0~54_combout\,
	combout => \Add1~102_combout\);

-- Location: IOIBUF_X115_Y56_N15
\offSet32[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(25),
	o => \offSet32[25]~input_o\);

-- Location: LCCOMB_X110_Y64_N20
\Add1~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~103_combout\ = (\offSet32[25]~input_o\ & ((\Add2~50_combout\ & (\Add1~100\ & VCC)) # (!\Add2~50_combout\ & (!\Add1~100\)))) # (!\offSet32[25]~input_o\ & ((\Add2~50_combout\ & (!\Add1~100\)) # (!\Add2~50_combout\ & ((\Add1~100\) # (GND)))))
-- \Add1~104\ = CARRY((\offSet32[25]~input_o\ & (!\Add2~50_combout\ & !\Add1~100\)) # (!\offSet32[25]~input_o\ & ((!\Add1~100\) # (!\Add2~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offSet32[25]~input_o\,
	datab => \Add2~50_combout\,
	datad => VCC,
	cin => \Add1~100\,
	combout => \Add1~103_combout\,
	cout => \Add1~104\);

-- Location: LCCOMB_X108_Y64_N12
\Add1~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~105_combout\ = (\Add1~102_combout\) # ((\Add1~16_combout\ & \Add1~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~102_combout\,
	datad => \Add1~103_combout\,
	combout => \Add1~105_combout\);

-- Location: FF_X108_Y64_N13
\s_pc[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~105_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(27));

-- Location: LCCOMB_X109_Y64_N22
\Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (s_pc(28) & (\Add2~51\ $ (GND))) # (!s_pc(28) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((s_pc(28) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(28),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X112_Y64_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (s_pc(28) & (\Add0~55\ $ (GND))) # (!s_pc(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((s_pc(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X111_Y64_N4
\Add1~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~106_combout\ = (\Add1~12_combout\ & ((\Add2~52_combout\) # ((\jump~input_o\ & \Add0~56_combout\)))) # (!\Add1~12_combout\ & (\jump~input_o\ & ((\Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \jump~input_o\,
	datac => \Add2~52_combout\,
	datad => \Add0~56_combout\,
	combout => \Add1~106_combout\);

-- Location: IOIBUF_X89_Y73_N15
\offSet32[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(26),
	o => \offSet32[26]~input_o\);

-- Location: LCCOMB_X110_Y64_N22
\Add1~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~107_combout\ = ((\offSet32[26]~input_o\ $ (\Add2~52_combout\ $ (!\Add1~104\)))) # (GND)
-- \Add1~108\ = CARRY((\offSet32[26]~input_o\ & ((\Add2~52_combout\) # (!\Add1~104\))) # (!\offSet32[26]~input_o\ & (\Add2~52_combout\ & !\Add1~104\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offSet32[26]~input_o\,
	datab => \Add2~52_combout\,
	datad => VCC,
	cin => \Add1~104\,
	combout => \Add1~107_combout\,
	cout => \Add1~108\);

-- Location: LCCOMB_X111_Y64_N26
\Add1~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~109_combout\ = (\Add1~106_combout\) # ((\Add1~16_combout\ & \Add1~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~106_combout\,
	datad => \Add1~107_combout\,
	combout => \Add1~109_combout\);

-- Location: FF_X111_Y64_N27
\s_pc[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~109_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(28));

-- Location: LCCOMB_X109_Y64_N24
\Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (s_pc(29) & (!\Add2~53\)) # (!s_pc(29) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!s_pc(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(29),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X112_Y64_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (s_pc(29) & (!\Add0~57\)) # (!s_pc(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!s_pc(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X111_Y64_N14
\Add1~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~110_combout\ = (\Add1~12_combout\ & ((\Add2~54_combout\) # ((\jump~input_o\ & \Add0~58_combout\)))) # (!\Add1~12_combout\ & (\jump~input_o\ & ((\Add0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \jump~input_o\,
	datac => \Add2~54_combout\,
	datad => \Add0~58_combout\,
	combout => \Add1~110_combout\);

-- Location: IOIBUF_X87_Y73_N22
\offSet32[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(27),
	o => \offSet32[27]~input_o\);

-- Location: LCCOMB_X110_Y64_N24
\Add1~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~111_combout\ = (\offSet32[27]~input_o\ & ((\Add2~54_combout\ & (\Add1~108\ & VCC)) # (!\Add2~54_combout\ & (!\Add1~108\)))) # (!\offSet32[27]~input_o\ & ((\Add2~54_combout\ & (!\Add1~108\)) # (!\Add2~54_combout\ & ((\Add1~108\) # (GND)))))
-- \Add1~112\ = CARRY((\offSet32[27]~input_o\ & (!\Add2~54_combout\ & !\Add1~108\)) # (!\offSet32[27]~input_o\ & ((!\Add1~108\) # (!\Add2~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offSet32[27]~input_o\,
	datab => \Add2~54_combout\,
	datad => VCC,
	cin => \Add1~108\,
	combout => \Add1~111_combout\,
	cout => \Add1~112\);

-- Location: LCCOMB_X111_Y64_N24
\Add1~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~113_combout\ = (\Add1~110_combout\) # ((\Add1~16_combout\ & \Add1~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~110_combout\,
	datad => \Add1~111_combout\,
	combout => \Add1~113_combout\);

-- Location: FF_X111_Y64_N25
\s_pc[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~113_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(29));

-- Location: LCCOMB_X109_Y64_N26
\Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (s_pc(30) & (\Add2~55\ $ (GND))) # (!s_pc(30) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((s_pc(30) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(30),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: IOIBUF_X87_Y73_N15
\offSet32[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(28),
	o => \offSet32[28]~input_o\);

-- Location: LCCOMB_X110_Y64_N26
\Add1~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~115_combout\ = ((\Add2~56_combout\ $ (\offSet32[28]~input_o\ $ (!\Add1~112\)))) # (GND)
-- \Add1~116\ = CARRY((\Add2~56_combout\ & ((\offSet32[28]~input_o\) # (!\Add1~112\))) # (!\Add2~56_combout\ & (\offSet32[28]~input_o\ & !\Add1~112\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~56_combout\,
	datab => \offSet32[28]~input_o\,
	datad => VCC,
	cin => \Add1~112\,
	combout => \Add1~115_combout\,
	cout => \Add1~116\);

-- Location: LCCOMB_X112_Y64_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (s_pc(30) & (\Add0~59\ $ (GND))) # (!s_pc(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((s_pc(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X111_Y64_N20
\Add1~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~114_combout\ = (\Add1~12_combout\ & ((\Add2~56_combout\) # ((\jump~input_o\ & \Add0~60_combout\)))) # (!\Add1~12_combout\ & (\jump~input_o\ & ((\Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \jump~input_o\,
	datac => \Add2~56_combout\,
	datad => \Add0~60_combout\,
	combout => \Add1~114_combout\);

-- Location: LCCOMB_X111_Y64_N30
\Add1~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~117_combout\ = (\Add1~114_combout\) # ((\Add1~16_combout\ & \Add1~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add1~115_combout\,
	datad => \Add1~114_combout\,
	combout => \Add1~117_combout\);

-- Location: FF_X111_Y64_N31
\s_pc[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~117_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(30));

-- Location: LCCOMB_X112_Y64_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (s_pc(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => s_pc(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X109_Y64_N28
\Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = s_pc(31) $ (\Add2~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(31),
	cin => \Add2~57\,
	combout => \Add2~58_combout\);

-- Location: LCCOMB_X111_Y64_N10
\Add1~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~118_combout\ = (\Add1~12_combout\ & ((\Add2~58_combout\) # ((\jump~input_o\ & \Add0~62_combout\)))) # (!\Add1~12_combout\ & (\jump~input_o\ & (\Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \jump~input_o\,
	datac => \Add0~62_combout\,
	datad => \Add2~58_combout\,
	combout => \Add1~118_combout\);

-- Location: IOIBUF_X85_Y73_N15
\offSet32[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(29),
	o => \offSet32[29]~input_o\);

-- Location: LCCOMB_X110_Y64_N28
\Add1~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~119_combout\ = \offSet32[29]~input_o\ $ (\Add1~116\ $ (\Add2~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offSet32[29]~input_o\,
	datad => \Add2~58_combout\,
	cin => \Add1~116\,
	combout => \Add1~119_combout\);

-- Location: LCCOMB_X110_Y64_N30
\Add1~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~121_combout\ = (\Add1~118_combout\) # ((\Add1~16_combout\ & \Add1~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~16_combout\,
	datac => \Add1~118_combout\,
	datad => \Add1~119_combout\,
	combout => \Add1~121_combout\);

-- Location: FF_X110_Y64_N31
\s_pc[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~121_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(31));

-- Location: IOIBUF_X58_Y0_N8
\offSet32[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(30),
	o => \offSet32[30]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\offSet32[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offSet32(31),
	o => \offSet32[31]~input_o\);

ww_pc(0) <= \pc[0]~output_o\;

ww_pc(1) <= \pc[1]~output_o\;

ww_pc(2) <= \pc[2]~output_o\;

ww_pc(3) <= \pc[3]~output_o\;

ww_pc(4) <= \pc[4]~output_o\;

ww_pc(5) <= \pc[5]~output_o\;

ww_pc(6) <= \pc[6]~output_o\;

ww_pc(7) <= \pc[7]~output_o\;

ww_pc(8) <= \pc[8]~output_o\;

ww_pc(9) <= \pc[9]~output_o\;

ww_pc(10) <= \pc[10]~output_o\;

ww_pc(11) <= \pc[11]~output_o\;

ww_pc(12) <= \pc[12]~output_o\;

ww_pc(13) <= \pc[13]~output_o\;

ww_pc(14) <= \pc[14]~output_o\;

ww_pc(15) <= \pc[15]~output_o\;

ww_pc(16) <= \pc[16]~output_o\;

ww_pc(17) <= \pc[17]~output_o\;

ww_pc(18) <= \pc[18]~output_o\;

ww_pc(19) <= \pc[19]~output_o\;

ww_pc(20) <= \pc[20]~output_o\;

ww_pc(21) <= \pc[21]~output_o\;

ww_pc(22) <= \pc[22]~output_o\;

ww_pc(23) <= \pc[23]~output_o\;

ww_pc(24) <= \pc[24]~output_o\;

ww_pc(25) <= \pc[25]~output_o\;

ww_pc(26) <= \pc[26]~output_o\;

ww_pc(27) <= \pc[27]~output_o\;

ww_pc(28) <= \pc[28]~output_o\;

ww_pc(29) <= \pc[29]~output_o\;

ww_pc(30) <= \pc[30]~output_o\;

ww_pc(31) <= \pc[31]~output_o\;
END structure;


