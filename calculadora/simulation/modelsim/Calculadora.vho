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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "06/16/2021 15:27:54"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	calculadora IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	PC : OUT std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END calculadora;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF calculadora IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Processador|incremento|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|ROM|memROM~1_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~2_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~0_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~43_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \Processador|incremento|Add0~2\ : std_logic;
SIGNAL \Processador|incremento|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|ROM|memROM~16_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~15_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~17_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \Processador|incremento|Add0~6\ : std_logic;
SIGNAL \Processador|incremento|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|ROM|memROM~19_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~20_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~5_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~18_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~21_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \Processador|incremento|Add0~10\ : std_logic;
SIGNAL \Processador|incremento|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|ROM|memROM~23_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~24_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~25_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~22_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~36_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \Processador|incremento|Add0~14\ : std_logic;
SIGNAL \Processador|incremento|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|ROM|memROM~26_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~27_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~28_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~29_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \Processador|incremento|Add0~18\ : std_logic;
SIGNAL \Processador|incremento|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|ROM|memROM~30_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~31_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \Processador|incremento|Add0~22\ : std_logic;
SIGNAL \Processador|incremento|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|ROM|memROM~32_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~33_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \Processador|incremento|Add0~26\ : std_logic;
SIGNAL \Processador|incremento|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|ROM|memROM~13_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~6_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~11_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~12_combout\ : std_logic;
SIGNAL \Processador|MUX_proxPC|saida_MUX[7]~1_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~35_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~3_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~41_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~40_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~42_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~8_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~9_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~7_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~10_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~14_combout\ : std_logic;
SIGNAL \Processador|MUX_proxPC|saida_MUX[7]~2_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~34_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~4_combout\ : std_logic;
SIGNAL \Processador|MUX_proxPC|saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \Processador|UC|palavraControle[7]~0_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[0]~SLOAD_MUX_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[1]~SLOAD_MUX_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[2]~SLOAD_MUX_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[3]~SLOAD_MUX_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[4]~SLOAD_MUX_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[5]~SLOAD_MUX_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[6]~SLOAD_MUX_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \Processador|PC|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|ROM|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \Processador|UC|ALT_INV_palavraControle[7]~0_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~43_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~36_combout\ : std_logic;
SIGNAL \Processador|incremento|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \Processador|incremento|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \Processador|incremento|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Processador|incremento|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Processador|incremento|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \Processador|incremento|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Processador|incremento|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Processador|incremento|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~42_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~41_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~40_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~35_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~34_combout\ : std_logic;
SIGNAL \Processador|MUX_proxPC|ALT_INV_saida_MUX[7]~2_combout\ : std_logic;
SIGNAL \Processador|MUX_proxPC|ALT_INV_saida_MUX[7]~1_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~33_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~32_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~31_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~30_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~29_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~27_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
PC <= ww_PC;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Processador|ROM|ALT_INV_memROM~26_combout\ <= NOT \Processador|ROM|memROM~26_combout\;
\Processador|ROM|ALT_INV_memROM~25_combout\ <= NOT \Processador|ROM|memROM~25_combout\;
\Processador|ROM|ALT_INV_memROM~24_combout\ <= NOT \Processador|ROM|memROM~24_combout\;
\Processador|ROM|ALT_INV_memROM~23_combout\ <= NOT \Processador|ROM|memROM~23_combout\;
\Processador|ROM|ALT_INV_memROM~22_combout\ <= NOT \Processador|ROM|memROM~22_combout\;
\Processador|ROM|ALT_INV_memROM~21_combout\ <= NOT \Processador|ROM|memROM~21_combout\;
\Processador|ROM|ALT_INV_memROM~20_combout\ <= NOT \Processador|ROM|memROM~20_combout\;
\Processador|ROM|ALT_INV_memROM~19_combout\ <= NOT \Processador|ROM|memROM~19_combout\;
\Processador|ROM|ALT_INV_memROM~18_combout\ <= NOT \Processador|ROM|memROM~18_combout\;
\Processador|ROM|ALT_INV_memROM~17_combout\ <= NOT \Processador|ROM|memROM~17_combout\;
\Processador|ROM|ALT_INV_memROM~16_combout\ <= NOT \Processador|ROM|memROM~16_combout\;
\Processador|ROM|ALT_INV_memROM~15_combout\ <= NOT \Processador|ROM|memROM~15_combout\;
\Processador|UC|ALT_INV_palavraControle[7]~0_combout\ <= NOT \Processador|UC|palavraControle[7]~0_combout\;
\Processador|ROM|ALT_INV_memROM~14_combout\ <= NOT \Processador|ROM|memROM~14_combout\;
\Processador|ROM|ALT_INV_memROM~13_combout\ <= NOT \Processador|ROM|memROM~13_combout\;
\Processador|ROM|ALT_INV_memROM~12_combout\ <= NOT \Processador|ROM|memROM~12_combout\;
\Processador|ROM|ALT_INV_memROM~11_combout\ <= NOT \Processador|ROM|memROM~11_combout\;
\Processador|ROM|ALT_INV_memROM~10_combout\ <= NOT \Processador|ROM|memROM~10_combout\;
\Processador|ROM|ALT_INV_memROM~9_combout\ <= NOT \Processador|ROM|memROM~9_combout\;
\Processador|ROM|ALT_INV_memROM~8_combout\ <= NOT \Processador|ROM|memROM~8_combout\;
\Processador|ROM|ALT_INV_memROM~7_combout\ <= NOT \Processador|ROM|memROM~7_combout\;
\Processador|ROM|ALT_INV_memROM~6_combout\ <= NOT \Processador|ROM|memROM~6_combout\;
\Processador|ROM|ALT_INV_memROM~5_combout\ <= NOT \Processador|ROM|memROM~5_combout\;
\Processador|ROM|ALT_INV_memROM~4_combout\ <= NOT \Processador|ROM|memROM~4_combout\;
\Processador|ROM|ALT_INV_memROM~3_combout\ <= NOT \Processador|ROM|memROM~3_combout\;
\Processador|ROM|ALT_INV_memROM~2_combout\ <= NOT \Processador|ROM|memROM~2_combout\;
\Processador|ROM|ALT_INV_memROM~1_combout\ <= NOT \Processador|ROM|memROM~1_combout\;
\Processador|ROM|ALT_INV_memROM~0_combout\ <= NOT \Processador|ROM|memROM~0_combout\;
\Processador|PC|ALT_INV_DOUT[7]~_Duplicate_1_q\ <= NOT \Processador|PC|DOUT[7]~_Duplicate_1_q\;
\Processador|ROM|ALT_INV_memROM~43_combout\ <= NOT \Processador|ROM|memROM~43_combout\;
\Processador|ROM|ALT_INV_memROM~36_combout\ <= NOT \Processador|ROM|memROM~36_combout\;
\Processador|incremento|ALT_INV_Add0~29_sumout\ <= NOT \Processador|incremento|Add0~29_sumout\;
\Processador|incremento|ALT_INV_Add0~25_sumout\ <= NOT \Processador|incremento|Add0~25_sumout\;
\Processador|incremento|ALT_INV_Add0~21_sumout\ <= NOT \Processador|incremento|Add0~21_sumout\;
\Processador|incremento|ALT_INV_Add0~17_sumout\ <= NOT \Processador|incremento|Add0~17_sumout\;
\Processador|incremento|ALT_INV_Add0~13_sumout\ <= NOT \Processador|incremento|Add0~13_sumout\;
\Processador|incremento|ALT_INV_Add0~9_sumout\ <= NOT \Processador|incremento|Add0~9_sumout\;
\Processador|incremento|ALT_INV_Add0~5_sumout\ <= NOT \Processador|incremento|Add0~5_sumout\;
\Processador|incremento|ALT_INV_Add0~1_sumout\ <= NOT \Processador|incremento|Add0~1_sumout\;
\Processador|PC|ALT_INV_DOUT[6]~_Duplicate_1_q\ <= NOT \Processador|PC|DOUT[6]~_Duplicate_1_q\;
\Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\ <= NOT \Processador|PC|DOUT[5]~_Duplicate_1_q\;
\Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\ <= NOT \Processador|PC|DOUT[4]~_Duplicate_1_q\;
\Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\ <= NOT \Processador|PC|DOUT[3]~_Duplicate_1_q\;
\Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\ <= NOT \Processador|PC|DOUT[2]~_Duplicate_1_q\;
\Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\ <= NOT \Processador|PC|DOUT[1]~_Duplicate_1_q\;
\Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\ <= NOT \Processador|PC|DOUT[0]~_Duplicate_1_q\;
\Processador|ROM|ALT_INV_memROM~42_combout\ <= NOT \Processador|ROM|memROM~42_combout\;
\Processador|ROM|ALT_INV_memROM~41_combout\ <= NOT \Processador|ROM|memROM~41_combout\;
\Processador|ROM|ALT_INV_memROM~40_combout\ <= NOT \Processador|ROM|memROM~40_combout\;
\Processador|ROM|ALT_INV_memROM~35_combout\ <= NOT \Processador|ROM|memROM~35_combout\;
\Processador|ROM|ALT_INV_memROM~34_combout\ <= NOT \Processador|ROM|memROM~34_combout\;
\Processador|MUX_proxPC|ALT_INV_saida_MUX[7]~2_combout\ <= NOT \Processador|MUX_proxPC|saida_MUX[7]~2_combout\;
\Processador|MUX_proxPC|ALT_INV_saida_MUX[7]~1_combout\ <= NOT \Processador|MUX_proxPC|saida_MUX[7]~1_combout\;
\Processador|ROM|ALT_INV_memROM~33_combout\ <= NOT \Processador|ROM|memROM~33_combout\;
\Processador|ROM|ALT_INV_memROM~32_combout\ <= NOT \Processador|ROM|memROM~32_combout\;
\Processador|ROM|ALT_INV_memROM~31_combout\ <= NOT \Processador|ROM|memROM~31_combout\;
\Processador|ROM|ALT_INV_memROM~30_combout\ <= NOT \Processador|ROM|memROM~30_combout\;
\Processador|ROM|ALT_INV_memROM~29_combout\ <= NOT \Processador|ROM|memROM~29_combout\;
\Processador|ROM|ALT_INV_memROM~28_combout\ <= NOT \Processador|ROM|memROM~28_combout\;
\Processador|ROM|ALT_INV_memROM~27_combout\ <= NOT \Processador|ROM|memROM~27_combout\;

-- Location: IOOBUF_X16_Y45_N93
\PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC(0));

-- Location: IOOBUF_X18_Y45_N19
\PC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_PC(1));

-- Location: IOOBUF_X14_Y45_N36
\PC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC(2));

-- Location: IOOBUF_X14_Y45_N2
\PC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC(3));

-- Location: IOOBUF_X12_Y45_N19
\PC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC(4));

-- Location: IOOBUF_X14_Y45_N19
\PC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC(5));

-- Location: IOOBUF_X14_Y45_N53
\PC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC(6));

-- Location: IOOBUF_X8_Y45_N93
\PC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC(7));

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[4]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[5]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[6]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[7]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[8]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: MLABCELL_X13_Y42_N30
\Processador|incremento|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~1_sumout\ = SUM(( \Processador|PC|DOUT[0]~_Duplicate_1_q\ ) + ( VCC ) + ( !VCC ))
-- \Processador|incremento|Add0~2\ = CARRY(( \Processador|PC|DOUT[0]~_Duplicate_1_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	cin => GND,
	sumout => \Processador|incremento|Add0~1_sumout\,
	cout => \Processador|incremento|Add0~2\);

-- Location: LABCELL_X12_Y42_N6
\Processador|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~1_combout\ = ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & ((\Processador|PC|DOUT[2]~_Duplicate_1_q\) # 
-- (\Processador|PC|DOUT[1]~_Duplicate_1_q\)))) # (\Processador|PC|DOUT[5]~_Duplicate_1_q\ & (((!\Processador|PC|DOUT[3]~_Duplicate_1_q\ & !\Processador|PC|DOUT[2]~_Duplicate_1_q\)) # (\Processador|PC|DOUT[1]~_Duplicate_1_q\))) ) ) # ( 
-- !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[2]~_Duplicate_1_q\ & (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & ((\Processador|PC|DOUT[1]~_Duplicate_1_q\) # (\Processador|PC|DOUT[5]~_Duplicate_1_q\)))) # 
-- (\Processador|PC|DOUT[2]~_Duplicate_1_q\ & (\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ((\Processador|PC|DOUT[1]~_Duplicate_1_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000101000100110000010101000111001001110100011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~1_combout\);

-- Location: LABCELL_X12_Y42_N42
\Processador|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~2_combout\ = ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[1]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[3]~_Duplicate_1_q\)) # (\Processador|PC|DOUT[1]~_Duplicate_1_q\ & 
-- ((!\Processador|PC|DOUT[2]~_Duplicate_1_q\) # (\Processador|PC|DOUT[3]~_Duplicate_1_q\))) ) ) # ( !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[1]~_Duplicate_1_q\ $ 
-- (\Processador|PC|DOUT[2]~_Duplicate_1_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001111110011110000111111001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~2_combout\);

-- Location: LABCELL_X12_Y42_N9
\Processador|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~0_combout\ = ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[1]~_Duplicate_1_q\) # ((\Processador|PC|DOUT[3]~_Duplicate_1_q\ & 
-- !\Processador|PC|DOUT[2]~_Duplicate_1_q\)))) # (\Processador|PC|DOUT[5]~_Duplicate_1_q\ & (((\Processador|PC|DOUT[3]~_Duplicate_1_q\ & !\Processador|PC|DOUT[1]~_Duplicate_1_q\)) # (\Processador|PC|DOUT[2]~_Duplicate_1_q\))) ) ) # ( 
-- !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[3]~_Duplicate_1_q\ & (((!\Processador|PC|DOUT[1]~_Duplicate_1_q\)))) # (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & 
-- (\Processador|PC|DOUT[1]~_Duplicate_1_q\ & \Processador|PC|DOUT[2]~_Duplicate_1_q\)) # (\Processador|PC|DOUT[5]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[1]~_Duplicate_1_q\ $ (!\Processador|PC|DOUT[2]~_Duplicate_1_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000111010010110000011101001010110010111101011011001011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~0_combout\);

-- Location: LABCELL_X12_Y42_N30
\Processador|ROM|memROM~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~43_combout\ = ( !\Processador|PC|DOUT[6]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[7]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[4]~_Duplicate_1_q\ & (((\Processador|ROM|memROM~1_combout\)))) # 
-- (\Processador|PC|DOUT[4]~_Duplicate_1_q\ & (\Processador|ROM|memROM~0_combout\)))) ) ) # ( \Processador|PC|DOUT[6]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[7]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[4]~_Duplicate_1_q\ & 
-- (!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ((!\Processador|ROM|memROM~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001010001010100000001000000000000010100010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[7]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	datad => \Processador|ROM|ALT_INV_memROM~1_combout\,
	datae => \Processador|PC|ALT_INV_DOUT[6]~_Duplicate_1_q\,
	dataf => \Processador|ROM|ALT_INV_memROM~2_combout\,
	datag => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|ROM|memROM~43_combout\);

-- Location: FF_X13_Y42_N32
\Processador|PC|DOUT[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~1_sumout\,
	asdata => \Processador|ROM|memROM~43_combout\,
	sload => \Processador|UC|palavraControle[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[0]~_Duplicate_1_q\);

-- Location: MLABCELL_X13_Y42_N33
\Processador|incremento|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~5_sumout\ = SUM(( \Processador|PC|DOUT[1]~_Duplicate_1_q\ ) + ( GND ) + ( \Processador|incremento|Add0~2\ ))
-- \Processador|incremento|Add0~6\ = CARRY(( \Processador|PC|DOUT[1]~_Duplicate_1_q\ ) + ( GND ) + ( \Processador|incremento|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	cin => \Processador|incremento|Add0~2\,
	sumout => \Processador|incremento|Add0~5_sumout\,
	cout => \Processador|incremento|Add0~6\);

-- Location: MLABCELL_X13_Y42_N0
\Processador|ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~16_combout\ = ( \Processador|PC|DOUT[5]~_Duplicate_1_q\ & ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[1]~_Duplicate_1_q\ & (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & 
-- ((!\Processador|PC|DOUT[4]~_Duplicate_1_q\)))) # (\Processador|PC|DOUT[1]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[2]~_Duplicate_1_q\ $ (((\Processador|PC|DOUT[3]~_Duplicate_1_q\ & !\Processador|PC|DOUT[4]~_Duplicate_1_q\))))) ) ) ) # ( 
-- !\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[3]~_Duplicate_1_q\ & (\Processador|PC|DOUT[4]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[1]~_Duplicate_1_q\ $ 
-- (!\Processador|PC|DOUT[2]~_Duplicate_1_q\)))) # (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[1]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[2]~_Duplicate_1_q\ & !\Processador|PC|DOUT[4]~_Duplicate_1_q\))) ) ) ) # ( 
-- \Processador|PC|DOUT[5]~_Duplicate_1_q\ & ( !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( !\Processador|PC|DOUT[2]~_Duplicate_1_q\ $ ((((!\Processador|PC|DOUT[3]~_Duplicate_1_q\ & \Processador|PC|DOUT[4]~_Duplicate_1_q\)) # 
-- (\Processador|PC|DOUT[1]~_Duplicate_1_q\))) ) ) ) # ( !\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ( !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[3]~_Duplicate_1_q\ & (((\Processador|PC|DOUT[2]~_Duplicate_1_q\ & 
-- \Processador|PC|DOUT[4]~_Duplicate_1_q\)))) # (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & (\Processador|PC|DOUT[1]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[4]~_Duplicate_1_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100101001010010110100100000010010000110001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	datae => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~16_combout\);

-- Location: LABCELL_X10_Y42_N36
\Processador|ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~15_combout\ = ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[1]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[3]~_Duplicate_1_q\)) # (\Processador|PC|DOUT[1]~_Duplicate_1_q\ & 
-- ((!\Processador|PC|DOUT[2]~_Duplicate_1_q\))) ) ) # ( !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[1]~_Duplicate_1_q\ & !\Processador|PC|DOUT[2]~_Duplicate_1_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011001111110000001100111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~15_combout\);

-- Location: MLABCELL_X13_Y42_N6
\Processador|ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~17_combout\ = ( !\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ( \Processador|PC|DOUT[6]~_Duplicate_1_q\ & ( (\Processador|ROM|memROM~15_combout\ & (!\Processador|PC|DOUT[7]~_Duplicate_1_q\ & !\Processador|PC|DOUT[4]~_Duplicate_1_q\)) 
-- ) ) ) # ( \Processador|PC|DOUT[5]~_Duplicate_1_q\ & ( !\Processador|PC|DOUT[6]~_Duplicate_1_q\ & ( (\Processador|ROM|memROM~16_combout\ & !\Processador|PC|DOUT[7]~_Duplicate_1_q\) ) ) ) # ( !\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ( 
-- !\Processador|PC|DOUT[6]~_Duplicate_1_q\ & ( (\Processador|ROM|memROM~16_combout\ & !\Processador|PC|DOUT[7]~_Duplicate_1_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~16_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~15_combout\,
	datac => \Processador|PC|ALT_INV_DOUT[7]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	datae => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[6]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~17_combout\);

-- Location: FF_X13_Y42_N35
\Processador|PC|DOUT[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~5_sumout\,
	asdata => \Processador|ROM|memROM~17_combout\,
	sload => \Processador|UC|palavraControle[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[1]~_Duplicate_1_q\);

-- Location: MLABCELL_X13_Y42_N36
\Processador|incremento|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~9_sumout\ = SUM(( \Processador|PC|DOUT[2]~_Duplicate_1_q\ ) + ( GND ) + ( \Processador|incremento|Add0~6\ ))
-- \Processador|incremento|Add0~10\ = CARRY(( \Processador|PC|DOUT[2]~_Duplicate_1_q\ ) + ( GND ) + ( \Processador|incremento|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	cin => \Processador|incremento|Add0~6\,
	sumout => \Processador|incremento|Add0~9_sumout\,
	cout => \Processador|incremento|Add0~10\);

-- Location: LABCELL_X10_Y42_N45
\Processador|ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~19_combout\ = ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (\Processador|PC|DOUT[4]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[3]~_Duplicate_1_q\ $ (!\Processador|PC|DOUT[1]~_Duplicate_1_q\))) ) ) # ( 
-- !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (\Processador|PC|DOUT[4]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[3]~_Duplicate_1_q\ & !\Processador|PC|DOUT[1]~_Duplicate_1_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~19_combout\);

-- Location: LABCELL_X10_Y42_N18
\Processador|ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~20_combout\ = ( \Processador|PC|DOUT[3]~_Duplicate_1_q\ & ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( !\Processador|PC|DOUT[4]~_Duplicate_1_q\ ) ) ) # ( \Processador|PC|DOUT[3]~_Duplicate_1_q\ & ( 
-- !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( !\Processador|PC|DOUT[4]~_Duplicate_1_q\ ) ) ) # ( !\Processador|PC|DOUT[3]~_Duplicate_1_q\ & ( !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (\Processador|PC|DOUT[4]~_Duplicate_1_q\ & 
-- \Processador|PC|DOUT[1]~_Duplicate_1_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	datae => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~20_combout\);

-- Location: LABCELL_X10_Y42_N39
\Processador|ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~5_combout\ = ( !\Processador|PC|DOUT[6]~_Duplicate_1_q\ & ( !\Processador|PC|DOUT[7]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT[7]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[6]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~5_combout\);

-- Location: LABCELL_X10_Y42_N42
\Processador|ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~18_combout\ = ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[4]~_Duplicate_1_q\ & \Processador|PC|DOUT[1]~_Duplicate_1_q\) ) ) # ( !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( 
-- (!\Processador|PC|DOUT[3]~_Duplicate_1_q\ & !\Processador|PC|DOUT[1]~_Duplicate_1_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~18_combout\);

-- Location: LABCELL_X10_Y42_N54
\Processador|ROM|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~21_combout\ = ( \Processador|PC|DOUT[2]~_Duplicate_1_q\ & ( \Processador|ROM|memROM~18_combout\ & ( (\Processador|ROM|memROM~5_combout\ & ((!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & (\Processador|ROM|memROM~19_combout\)) # 
-- (\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ((\Processador|ROM|memROM~20_combout\))))) ) ) ) # ( !\Processador|PC|DOUT[2]~_Duplicate_1_q\ & ( \Processador|ROM|memROM~18_combout\ & ( (\Processador|PC|DOUT[5]~_Duplicate_1_q\ & 
-- \Processador|ROM|memROM~5_combout\) ) ) ) # ( \Processador|PC|DOUT[2]~_Duplicate_1_q\ & ( !\Processador|ROM|memROM~18_combout\ & ( (\Processador|ROM|memROM~5_combout\ & ((!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & (\Processador|ROM|memROM~19_combout\)) # 
-- (\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ((\Processador|ROM|memROM~20_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010011100000000010101010000000000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	datab => \Processador|ROM|ALT_INV_memROM~19_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~20_combout\,
	datad => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datae => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	dataf => \Processador|ROM|ALT_INV_memROM~18_combout\,
	combout => \Processador|ROM|memROM~21_combout\);

-- Location: FF_X13_Y42_N38
\Processador|PC|DOUT[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~9_sumout\,
	asdata => \Processador|ROM|memROM~21_combout\,
	sload => \Processador|UC|palavraControle[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[2]~_Duplicate_1_q\);

-- Location: MLABCELL_X13_Y42_N39
\Processador|incremento|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~13_sumout\ = SUM(( \Processador|PC|DOUT[3]~_Duplicate_1_q\ ) + ( GND ) + ( \Processador|incremento|Add0~10\ ))
-- \Processador|incremento|Add0~14\ = CARRY(( \Processador|PC|DOUT[3]~_Duplicate_1_q\ ) + ( GND ) + ( \Processador|incremento|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	cin => \Processador|incremento|Add0~10\,
	sumout => \Processador|incremento|Add0~13_sumout\,
	cout => \Processador|incremento|Add0~14\);

-- Location: LABCELL_X10_Y42_N3
\Processador|ROM|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~23_combout\ = ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[4]~_Duplicate_1_q\ & (((\Processador|PC|DOUT[1]~_Duplicate_1_q\ & \Processador|PC|DOUT[3]~_Duplicate_1_q\)) # 
-- (\Processador|PC|DOUT[5]~_Duplicate_1_q\))) # (\Processador|PC|DOUT[4]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[1]~_Duplicate_1_q\ $ (((!\Processador|PC|DOUT[3]~_Duplicate_1_q\))))) ) ) # ( !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( 
-- (!\Processador|PC|DOUT[4]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[1]~_Duplicate_1_q\ & (\Processador|PC|DOUT[5]~_Duplicate_1_q\ & !\Processador|PC|DOUT[3]~_Duplicate_1_q\))) # (\Processador|PC|DOUT[4]~_Duplicate_1_q\ & 
-- ((!\Processador|PC|DOUT[3]~_Duplicate_1_q\) # ((\Processador|PC|DOUT[1]~_Duplicate_1_q\ & !\Processador|PC|DOUT[5]~_Duplicate_1_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110100010000010111010001000000011011011011100001101101101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~23_combout\);

-- Location: LABCELL_X10_Y42_N6
\Processador|ROM|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~24_combout\ = ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( ((!\Processador|PC|DOUT[1]~_Duplicate_1_q\) # ((\Processador|PC|DOUT[3]~_Duplicate_1_q\) # (\Processador|PC|DOUT[5]~_Duplicate_1_q\))) # 
-- (\Processador|PC|DOUT[4]~_Duplicate_1_q\) ) ) # ( !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (((!\Processador|PC|DOUT[1]~_Duplicate_1_q\ & \Processador|PC|DOUT[3]~_Duplicate_1_q\)) # (\Processador|PC|DOUT[5]~_Duplicate_1_q\)) # 
-- (\Processador|PC|DOUT[4]~_Duplicate_1_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111011111010111111101111111011111111111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~24_combout\);

-- Location: LABCELL_X10_Y42_N9
\Processador|ROM|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~25_combout\ = ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( ((!\Processador|PC|DOUT[1]~_Duplicate_1_q\ $ (\Processador|PC|DOUT[3]~_Duplicate_1_q\)) # (\Processador|PC|DOUT[5]~_Duplicate_1_q\)) # 
-- (\Processador|PC|DOUT[4]~_Duplicate_1_q\) ) ) # ( !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (((\Processador|PC|DOUT[3]~_Duplicate_1_q\) # (\Processador|PC|DOUT[5]~_Duplicate_1_q\)) # (\Processador|PC|DOUT[1]~_Duplicate_1_q\)) # 
-- (\Processador|PC|DOUT[4]~_Duplicate_1_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111111011111011111111101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~25_combout\);

-- Location: LABCELL_X10_Y42_N0
\Processador|ROM|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~22_combout\ = ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[4]~_Duplicate_1_q\ & (\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[1]~_Duplicate_1_q\) # 
-- (\Processador|PC|DOUT[3]~_Duplicate_1_q\)))) # (\Processador|PC|DOUT[4]~_Duplicate_1_q\ & (((!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & \Processador|PC|DOUT[3]~_Duplicate_1_q\)))) ) ) # ( !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( 
-- (!\Processador|PC|DOUT[3]~_Duplicate_1_q\ & (\Processador|PC|DOUT[4]~_Duplicate_1_q\ & (\Processador|PC|DOUT[1]~_Duplicate_1_q\))) # (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & (\Processador|PC|DOUT[5]~_Duplicate_1_q\ & 
-- (!\Processador|PC|DOUT[4]~_Duplicate_1_q\ $ (\Processador|PC|DOUT[1]~_Duplicate_1_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001001000100010000100100001000010110100000100001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~22_combout\);

-- Location: LABCELL_X10_Y42_N30
\Processador|ROM|memROM~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~36_combout\ = ( !\Processador|PC|DOUT[6]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[7]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[2]~_Duplicate_1_q\ & (((\Processador|ROM|memROM~22_combout\)))) # 
-- (\Processador|PC|DOUT[2]~_Duplicate_1_q\ & (\Processador|ROM|memROM~23_combout\)))) ) ) # ( \Processador|PC|DOUT[6]~_Duplicate_1_q\ & ( ((!\Processador|PC|DOUT[7]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[2]~_Duplicate_1_q\ & 
-- (!\Processador|ROM|memROM~24_combout\)) # (\Processador|PC|DOUT[2]~_Duplicate_1_q\ & ((!\Processador|ROM|memROM~25_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110001000100110000001100110000001100010001001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~23_combout\,
	datab => \Processador|PC|ALT_INV_DOUT[7]~_Duplicate_1_q\,
	datac => \Processador|ROM|ALT_INV_memROM~24_combout\,
	datad => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	datae => \Processador|PC|ALT_INV_DOUT[6]~_Duplicate_1_q\,
	dataf => \Processador|ROM|ALT_INV_memROM~25_combout\,
	datag => \Processador|ROM|ALT_INV_memROM~22_combout\,
	combout => \Processador|ROM|memROM~36_combout\);

-- Location: FF_X13_Y42_N41
\Processador|PC|DOUT[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~13_sumout\,
	asdata => \Processador|ROM|memROM~36_combout\,
	sload => \Processador|UC|palavraControle[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[3]~_Duplicate_1_q\);

-- Location: MLABCELL_X13_Y42_N42
\Processador|incremento|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~17_sumout\ = SUM(( \Processador|PC|DOUT[4]~_Duplicate_1_q\ ) + ( GND ) + ( \Processador|incremento|Add0~14\ ))
-- \Processador|incremento|Add0~18\ = CARRY(( \Processador|PC|DOUT[4]~_Duplicate_1_q\ ) + ( GND ) + ( \Processador|incremento|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	cin => \Processador|incremento|Add0~14\,
	sumout => \Processador|incremento|Add0~17_sumout\,
	cout => \Processador|incremento|Add0~18\);

-- Location: LABCELL_X12_Y42_N36
\Processador|ROM|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~26_combout\ = ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (\Processador|PC|DOUT[4]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[5]~_Duplicate_1_q\ $ (!\Processador|PC|DOUT[2]~_Duplicate_1_q\))) ) ) # ( 
-- !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & \Processador|PC|DOUT[4]~_Duplicate_1_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~26_combout\);

-- Location: LABCELL_X12_Y42_N39
\Processador|ROM|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~27_combout\ = ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (\Processador|PC|DOUT[5]~_Duplicate_1_q\ & \Processador|PC|DOUT[4]~_Duplicate_1_q\) ) ) # ( !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( 
-- (!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & (\Processador|PC|DOUT[4]~_Duplicate_1_q\ & \Processador|PC|DOUT[2]~_Duplicate_1_q\)) # (\Processador|PC|DOUT[5]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[4]~_Duplicate_1_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011001000110010001100100011000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~27_combout\);

-- Location: LABCELL_X12_Y42_N12
\Processador|ROM|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~28_combout\ = ( !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[4]~_Duplicate_1_q\ & ((\Processador|PC|DOUT[5]~_Duplicate_1_q\) # (\Processador|PC|DOUT[2]~_Duplicate_1_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000000001111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~28_combout\);

-- Location: LABCELL_X12_Y42_N18
\Processador|ROM|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~29_combout\ = ( \Processador|PC|DOUT[1]~_Duplicate_1_q\ & ( \Processador|ROM|memROM~28_combout\ & ( (!\Processador|PC|DOUT[3]~_Duplicate_1_q\ & (\Processador|ROM|memROM~5_combout\ & \Processador|ROM|memROM~26_combout\)) ) ) ) # ( 
-- !\Processador|PC|DOUT[1]~_Duplicate_1_q\ & ( \Processador|ROM|memROM~28_combout\ & ( (\Processador|ROM|memROM~5_combout\ & ((\Processador|ROM|memROM~27_combout\) # (\Processador|PC|DOUT[3]~_Duplicate_1_q\))) ) ) ) # ( 
-- \Processador|PC|DOUT[1]~_Duplicate_1_q\ & ( !\Processador|ROM|memROM~28_combout\ & ( (!\Processador|PC|DOUT[3]~_Duplicate_1_q\ & (\Processador|ROM|memROM~5_combout\ & \Processador|ROM|memROM~26_combout\)) ) ) ) # ( !\Processador|PC|DOUT[1]~_Duplicate_1_q\ 
-- & ( !\Processador|ROM|memROM~28_combout\ & ( (!\Processador|PC|DOUT[3]~_Duplicate_1_q\ & (\Processador|ROM|memROM~5_combout\ & \Processador|ROM|memROM~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000100000001000010001001100110000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	datab => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~26_combout\,
	datad => \Processador|ROM|ALT_INV_memROM~27_combout\,
	datae => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	dataf => \Processador|ROM|ALT_INV_memROM~28_combout\,
	combout => \Processador|ROM|memROM~29_combout\);

-- Location: FF_X13_Y42_N44
\Processador|PC|DOUT[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~17_sumout\,
	asdata => \Processador|ROM|memROM~29_combout\,
	sload => \Processador|UC|palavraControle[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[4]~_Duplicate_1_q\);

-- Location: MLABCELL_X13_Y42_N45
\Processador|incremento|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~21_sumout\ = SUM(( \Processador|PC|DOUT[5]~_Duplicate_1_q\ ) + ( GND ) + ( \Processador|incremento|Add0~18\ ))
-- \Processador|incremento|Add0~22\ = CARRY(( \Processador|PC|DOUT[5]~_Duplicate_1_q\ ) + ( GND ) + ( \Processador|incremento|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	cin => \Processador|incremento|Add0~18\,
	sumout => \Processador|incremento|Add0~21_sumout\,
	cout => \Processador|incremento|Add0~22\);

-- Location: MLABCELL_X13_Y42_N12
\Processador|ROM|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~30_combout\ = ( \Processador|PC|DOUT[1]~_Duplicate_1_q\ & ( (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & \Processador|PC|DOUT[2]~_Duplicate_1_q\) ) ) # ( !\Processador|PC|DOUT[1]~_Duplicate_1_q\ & ( 
-- (\Processador|PC|DOUT[5]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[3]~_Duplicate_1_q\ $ (!\Processador|PC|DOUT[2]~_Duplicate_1_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~30_combout\);

-- Location: MLABCELL_X13_Y42_N21
\Processador|ROM|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~31_combout\ = ( !\Processador|PC|DOUT[7]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[6]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[4]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[0]~_Duplicate_1_q\ & \Processador|ROM|memROM~30_combout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[6]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	datad => \Processador|ROM|ALT_INV_memROM~30_combout\,
	dataf => \Processador|PC|ALT_INV_DOUT[7]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~31_combout\);

-- Location: FF_X13_Y42_N47
\Processador|PC|DOUT[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~21_sumout\,
	asdata => \Processador|ROM|memROM~31_combout\,
	sload => \Processador|UC|palavraControle[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[5]~_Duplicate_1_q\);

-- Location: MLABCELL_X13_Y42_N48
\Processador|incremento|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~25_sumout\ = SUM(( \Processador|PC|DOUT[6]~_Duplicate_1_q\ ) + ( GND ) + ( \Processador|incremento|Add0~22\ ))
-- \Processador|incremento|Add0~26\ = CARRY(( \Processador|PC|DOUT[6]~_Duplicate_1_q\ ) + ( GND ) + ( \Processador|incremento|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT[6]~_Duplicate_1_q\,
	cin => \Processador|incremento|Add0~22\,
	sumout => \Processador|incremento|Add0~25_sumout\,
	cout => \Processador|incremento|Add0~26\);

-- Location: LABCELL_X12_Y42_N54
\Processador|ROM|memROM~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~32_combout\ = ( \Processador|PC|DOUT[2]~_Duplicate_1_q\ & ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & (\Processador|PC|DOUT[1]~_Duplicate_1_q\ & (\Processador|PC|DOUT[3]~_Duplicate_1_q\ 
-- & \Processador|PC|DOUT[4]~_Duplicate_1_q\))) ) ) ) # ( !\Processador|PC|DOUT[2]~_Duplicate_1_q\ & ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[1]~_Duplicate_1_q\ & 
-- (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & !\Processador|PC|DOUT[4]~_Duplicate_1_q\))) ) ) ) # ( \Processador|PC|DOUT[2]~_Duplicate_1_q\ & ( !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & 
-- (!\Processador|PC|DOUT[1]~_Duplicate_1_q\ & (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & \Processador|PC|DOUT[4]~_Duplicate_1_q\))) # (\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[3]~_Duplicate_1_q\ & 
-- ((\Processador|PC|DOUT[4]~_Duplicate_1_q\) # (\Processador|PC|DOUT[1]~_Duplicate_1_q\))) # (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[4]~_Duplicate_1_q\))))) ) ) ) # ( !\Processador|PC|DOUT[2]~_Duplicate_1_q\ & ( 
-- !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[1]~_Duplicate_1_q\ & ((\Processador|PC|DOUT[4]~_Duplicate_1_q\))) # (\Processador|PC|DOUT[1]~_Duplicate_1_q\ & 
-- (\Processador|PC|DOUT[3]~_Duplicate_1_q\)))) # (\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[4]~_Duplicate_1_q\ & (\Processador|PC|DOUT[1]~_Duplicate_1_q\)) # (\Processador|PC|DOUT[4]~_Duplicate_1_q\ & 
-- ((!\Processador|PC|DOUT[3]~_Duplicate_1_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001111011010000101010101100000001000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	datae => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~32_combout\);

-- Location: LABCELL_X12_Y42_N45
\Processador|ROM|memROM~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~33_combout\ = ( !\Processador|PC|DOUT[7]~_Duplicate_1_q\ & ( (\Processador|ROM|memROM~32_combout\ & !\Processador|PC|DOUT[6]~_Duplicate_1_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~32_combout\,
	datad => \Processador|PC|ALT_INV_DOUT[6]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[7]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~33_combout\);

-- Location: FF_X13_Y42_N50
\Processador|PC|DOUT[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~25_sumout\,
	asdata => \Processador|ROM|memROM~33_combout\,
	sload => \Processador|UC|palavraControle[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[6]~_Duplicate_1_q\);

-- Location: MLABCELL_X13_Y42_N51
\Processador|incremento|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~29_sumout\ = SUM(( \Processador|PC|DOUT[7]~_Duplicate_1_q\ ) + ( GND ) + ( \Processador|incremento|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[7]~_Duplicate_1_q\,
	cin => \Processador|incremento|Add0~26\,
	sumout => \Processador|incremento|Add0~29_sumout\);

-- Location: MLABCELL_X9_Y42_N48
\Processador|ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~13_combout\ = ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[4]~_Duplicate_1_q\ & (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[2]~_Duplicate_1_q\) # 
-- (!\Processador|PC|DOUT[1]~_Duplicate_1_q\)))) # (\Processador|PC|DOUT[4]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[3]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[2]~_Duplicate_1_q\) # (!\Processador|PC|DOUT[1]~_Duplicate_1_q\))) # 
-- (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & (\Processador|PC|DOUT[2]~_Duplicate_1_q\)))) ) ) # ( !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[3]~_Duplicate_1_q\ & (\Processador|PC|DOUT[4]~_Duplicate_1_q\ & 
-- (!\Processador|PC|DOUT[2]~_Duplicate_1_q\ & !\Processador|PC|DOUT[1]~_Duplicate_1_q\))) # (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[2]~_Duplicate_1_q\) # ((\Processador|PC|DOUT[4]~_Duplicate_1_q\ & 
-- !\Processador|PC|DOUT[1]~_Duplicate_1_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100110000011100010011000001100111011000010110011101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~13_combout\);

-- Location: MLABCELL_X9_Y42_N30
\Processador|ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~6_combout\ = ( !\Processador|PC|DOUT[4]~_Duplicate_1_q\ & ( (\Processador|PC|DOUT[6]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[7]~_Duplicate_1_q\ & !\Processador|PC|DOUT[5]~_Duplicate_1_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT[6]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[7]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~6_combout\);

-- Location: MLABCELL_X9_Y42_N51
\Processador|ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~11_combout\ = ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[2]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[4]~_Duplicate_1_q\ $ (!\Processador|PC|DOUT[3]~_Duplicate_1_q\)) # 
-- (\Processador|PC|DOUT[1]~_Duplicate_1_q\))) # (\Processador|PC|DOUT[2]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[4]~_Duplicate_1_q\) # (!\Processador|PC|DOUT[3]~_Duplicate_1_q\ $ (\Processador|PC|DOUT[1]~_Duplicate_1_q\)))) ) ) # ( 
-- !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[4]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[3]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[2]~_Duplicate_1_q\))) # (\Processador|PC|DOUT[4]~_Duplicate_1_q\ & 
-- (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & (\Processador|PC|DOUT[2]~_Duplicate_1_q\ & \Processador|PC|DOUT[1]~_Duplicate_1_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000001100000001000000101101110111110110110111011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~11_combout\);

-- Location: LABCELL_X12_Y42_N24
\Processador|ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~12_combout\ = ( \Processador|PC|DOUT[3]~_Duplicate_1_q\ & ( !\Processador|PC|DOUT[1]~_Duplicate_1_q\ $ (\Processador|PC|DOUT[2]~_Duplicate_1_q\) ) ) # ( !\Processador|PC|DOUT[3]~_Duplicate_1_q\ & ( 
-- (\Processador|PC|DOUT[0]~_Duplicate_1_q\ & (\Processador|PC|DOUT[1]~_Duplicate_1_q\ & !\Processador|PC|DOUT[2]~_Duplicate_1_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~12_combout\);

-- Location: MLABCELL_X9_Y42_N42
\Processador|MUX_proxPC|saida_MUX[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_proxPC|saida_MUX[7]~1_combout\ = ( \Processador|PC|DOUT[6]~_Duplicate_1_q\ & ( \Processador|PC|DOUT[5]~_Duplicate_1_q\ & ( (\Processador|ROM|memROM~6_combout\ & !\Processador|ROM|memROM~12_combout\) ) ) ) # ( 
-- !\Processador|PC|DOUT[6]~_Duplicate_1_q\ & ( \Processador|PC|DOUT[5]~_Duplicate_1_q\ & ( (!\Processador|ROM|memROM~11_combout\) # ((\Processador|ROM|memROM~6_combout\ & !\Processador|ROM|memROM~12_combout\)) ) ) ) # ( 
-- \Processador|PC|DOUT[6]~_Duplicate_1_q\ & ( !\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ( (\Processador|ROM|memROM~6_combout\ & !\Processador|ROM|memROM~12_combout\) ) ) ) # ( !\Processador|PC|DOUT[6]~_Duplicate_1_q\ & ( 
-- !\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ( (!\Processador|ROM|memROM~13_combout\) # ((\Processador|ROM|memROM~6_combout\ & !\Processador|ROM|memROM~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110101010001100110000000011110011111100000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~13_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~6_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~11_combout\,
	datad => \Processador|ROM|ALT_INV_memROM~12_combout\,
	datae => \Processador|PC|ALT_INV_DOUT[6]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	combout => \Processador|MUX_proxPC|saida_MUX[7]~1_combout\);

-- Location: LABCELL_X10_Y42_N12
\Processador|ROM|memROM~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~35_combout\ = ( \Processador|PC|DOUT[3]~_Duplicate_1_q\ & ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[4]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[2]~_Duplicate_1_q\ $ 
-- (!\Processador|PC|DOUT[1]~_Duplicate_1_q\)) # (\Processador|PC|DOUT[5]~_Duplicate_1_q\))) # (\Processador|PC|DOUT[4]~_Duplicate_1_q\ & (\Processador|PC|DOUT[2]~_Duplicate_1_q\ & (\Processador|PC|DOUT[5]~_Duplicate_1_q\ & 
-- \Processador|PC|DOUT[1]~_Duplicate_1_q\))) ) ) ) # ( !\Processador|PC|DOUT[3]~_Duplicate_1_q\ & ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[4]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[1]~_Duplicate_1_q\ & 
-- (\Processador|PC|DOUT[2]~_Duplicate_1_q\)) # (\Processador|PC|DOUT[1]~_Duplicate_1_q\ & ((\Processador|PC|DOUT[5]~_Duplicate_1_q\))))) # (\Processador|PC|DOUT[4]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[2]~_Duplicate_1_q\) # 
-- ((!\Processador|PC|DOUT[1]~_Duplicate_1_q\)))) ) ) ) # ( \Processador|PC|DOUT[3]~_Duplicate_1_q\ & ( !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (\Processador|PC|DOUT[4]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[2]~_Duplicate_1_q\ & 
-- (\Processador|PC|DOUT[5]~_Duplicate_1_q\ & !\Processador|PC|DOUT[1]~_Duplicate_1_q\))) ) ) ) # ( !\Processador|PC|DOUT[3]~_Duplicate_1_q\ & ( !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[4]~_Duplicate_1_q\ & 
-- (\Processador|PC|DOUT[2]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & \Processador|PC|DOUT[1]~_Duplicate_1_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000001000000000001110111010011100010101010001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	datae => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~35_combout\);

-- Location: MLABCELL_X9_Y42_N36
\Processador|ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~3_combout\ = ( \Processador|ROM|memROM~35_combout\ & ( !\Processador|PC|DOUT[6]~_Duplicate_1_q\ $ (((!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[3]~_Duplicate_1_q\ & 
-- !\Processador|PC|DOUT[4]~_Duplicate_1_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111100000000111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[6]~_Duplicate_1_q\,
	dataf => \Processador|ROM|ALT_INV_memROM~35_combout\,
	combout => \Processador|ROM|memROM~3_combout\);

-- Location: LABCELL_X10_Y42_N51
\Processador|ROM|memROM~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~41_combout\ = ( \Processador|PC|DOUT[3]~_Duplicate_1_q\ & ( \Processador|PC|DOUT[4]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[6]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[2]~_Duplicate_1_q\ & 
-- ((\Processador|PC|DOUT[5]~_Duplicate_1_q\))) # (\Processador|PC|DOUT[2]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[1]~_Duplicate_1_q\ & !\Processador|PC|DOUT[5]~_Duplicate_1_q\)))) ) ) ) # ( \Processador|PC|DOUT[3]~_Duplicate_1_q\ & ( 
-- !\Processador|PC|DOUT[4]~_Duplicate_1_q\ & ( (\Processador|PC|DOUT[6]~_Duplicate_1_q\ & (\Processador|PC|DOUT[1]~_Duplicate_1_q\ & (\Processador|PC|DOUT[2]~_Duplicate_1_q\ & !\Processador|PC|DOUT[5]~_Duplicate_1_q\))) ) ) ) # ( 
-- !\Processador|PC|DOUT[3]~_Duplicate_1_q\ & ( !\Processador|PC|DOUT[4]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[6]~_Duplicate_1_q\) # ((!\Processador|PC|DOUT[1]~_Duplicate_1_q\ & 
-- \Processador|PC|DOUT[2]~_Duplicate_1_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111000000000000000010000000000000000000000000000100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[6]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	datae => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~41_combout\);

-- Location: MLABCELL_X9_Y42_N54
\Processador|ROM|memROM~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~40_combout\ = ( \Processador|PC|DOUT[3]~_Duplicate_1_q\ & ( \Processador|PC|DOUT[4]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[1]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[6]~_Duplicate_1_q\ & 
-- \Processador|PC|DOUT[5]~_Duplicate_1_q\)) ) ) ) # ( !\Processador|PC|DOUT[3]~_Duplicate_1_q\ & ( \Processador|PC|DOUT[4]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[6]~_Duplicate_1_q\ & (((\Processador|PC|DOUT[2]~_Duplicate_1_q\) # 
-- (\Processador|PC|DOUT[5]~_Duplicate_1_q\)) # (\Processador|PC|DOUT[1]~_Duplicate_1_q\))) ) ) ) # ( \Processador|PC|DOUT[3]~_Duplicate_1_q\ & ( !\Processador|PC|DOUT[4]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[1]~_Duplicate_1_q\ & 
-- (!\Processador|PC|DOUT[6]~_Duplicate_1_q\)) # (\Processador|PC|DOUT[1]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ((\Processador|PC|DOUT[2]~_Duplicate_1_q\))) # (\Processador|PC|DOUT[5]~_Duplicate_1_q\ & 
-- (!\Processador|PC|DOUT[6]~_Duplicate_1_q\)))) ) ) ) # ( !\Processador|PC|DOUT[3]~_Duplicate_1_q\ & ( !\Processador|PC|DOUT[4]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[1]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[6]~_Duplicate_1_q\)) # 
-- (\Processador|PC|DOUT[1]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[6]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[5]~_Duplicate_1_q\) # (\Processador|PC|DOUT[2]~_Duplicate_1_q\))) # (\Processador|PC|DOUT[6]~_Duplicate_1_q\ & 
-- (!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & \Processador|PC|DOUT[2]~_Duplicate_1_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011011100100011001101110001001100110011000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[6]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	datae => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~40_combout\);

-- Location: MLABCELL_X9_Y42_N39
\Processador|ROM|memROM~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~42_combout\ = ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( \Processador|ROM|memROM~41_combout\ ) ) # ( !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( \Processador|ROM|memROM~40_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|ROM|ALT_INV_memROM~41_combout\,
	datad => \Processador|ROM|ALT_INV_memROM~40_combout\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~42_combout\);

-- Location: LABCELL_X12_Y42_N51
\Processador|ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~8_combout\ = ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[2]~_Duplicate_1_q\) # (\Processador|PC|DOUT[1]~_Duplicate_1_q\))) ) ) # ( 
-- !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[1]~_Duplicate_1_q\) # (\Processador|PC|DOUT[2]~_Duplicate_1_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101010100000101010101010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~8_combout\);

-- Location: LABCELL_X12_Y42_N27
\Processador|ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~9_combout\ = ( \Processador|PC|DOUT[5]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[0]~_Duplicate_1_q\) # ((!\Processador|PC|DOUT[3]~_Duplicate_1_q\ & (!\Processador|PC|DOUT[1]~_Duplicate_1_q\ & 
-- !\Processador|PC|DOUT[2]~_Duplicate_1_q\))) ) ) # ( !\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ( (\Processador|PC|DOUT[3]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[0]~_Duplicate_1_q\) # (!\Processador|PC|DOUT[1]~_Duplicate_1_q\ $ 
-- (\Processador|PC|DOUT[2]~_Duplicate_1_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000100011001100100010001111101010101010101110101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	datac => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~9_combout\);

-- Location: LABCELL_X12_Y42_N48
\Processador|ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~7_combout\ = ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (!\Processador|PC|DOUT[3]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[1]~_Duplicate_1_q\) # (!\Processador|PC|DOUT[2]~_Duplicate_1_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010100010001010101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	datab => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~7_combout\);

-- Location: LABCELL_X12_Y42_N0
\Processador|ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~10_combout\ = ( \Processador|ROM|memROM~9_combout\ & ( \Processador|ROM|memROM~7_combout\ & ( (!\Processador|ROM|memROM~8_combout\ & (\Processador|ROM|memROM~5_combout\ & ((\Processador|PC|DOUT[4]~_Duplicate_1_q\)))) # 
-- (\Processador|ROM|memROM~8_combout\ & (((\Processador|ROM|memROM~5_combout\ & \Processador|PC|DOUT[4]~_Duplicate_1_q\)) # (\Processador|ROM|memROM~6_combout\))) ) ) ) # ( !\Processador|ROM|memROM~9_combout\ & ( \Processador|ROM|memROM~7_combout\ & ( 
-- ((\Processador|ROM|memROM~8_combout\ & \Processador|ROM|memROM~6_combout\)) # (\Processador|ROM|memROM~5_combout\) ) ) ) # ( \Processador|ROM|memROM~9_combout\ & ( !\Processador|ROM|memROM~7_combout\ & ( (\Processador|ROM|memROM~8_combout\ & 
-- \Processador|ROM|memROM~6_combout\) ) ) ) # ( !\Processador|ROM|memROM~9_combout\ & ( !\Processador|ROM|memROM~7_combout\ & ( (!\Processador|ROM|memROM~8_combout\ & (\Processador|ROM|memROM~5_combout\ & ((!\Processador|PC|DOUT[4]~_Duplicate_1_q\)))) # 
-- (\Processador|ROM|memROM~8_combout\ & (((\Processador|ROM|memROM~5_combout\ & !\Processador|PC|DOUT[4]~_Duplicate_1_q\)) # (\Processador|ROM|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000101000001010000010100110111001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~8_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~6_combout\,
	datad => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	datae => \Processador|ROM|ALT_INV_memROM~9_combout\,
	dataf => \Processador|ROM|ALT_INV_memROM~7_combout\,
	combout => \Processador|ROM|memROM~10_combout\);

-- Location: MLABCELL_X9_Y42_N24
\Processador|ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~14_combout\ = ( \Processador|ROM|memROM~5_combout\ & ( \Processador|PC|DOUT[5]~_Duplicate_1_q\ & ( (!\Processador|ROM|memROM~11_combout\) # ((\Processador|ROM|memROM~6_combout\ & !\Processador|ROM|memROM~12_combout\)) ) ) ) # ( 
-- !\Processador|ROM|memROM~5_combout\ & ( \Processador|PC|DOUT[5]~_Duplicate_1_q\ & ( (\Processador|ROM|memROM~6_combout\ & !\Processador|ROM|memROM~12_combout\) ) ) ) # ( \Processador|ROM|memROM~5_combout\ & ( !\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ( 
-- (!\Processador|ROM|memROM~13_combout\) # ((\Processador|ROM|memROM~6_combout\ & !\Processador|ROM|memROM~12_combout\)) ) ) ) # ( !\Processador|ROM|memROM~5_combout\ & ( !\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ( (\Processador|ROM|memROM~6_combout\ & 
-- !\Processador|ROM|memROM~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000101110111010101000110011000000001111001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~13_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~6_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~11_combout\,
	datad => \Processador|ROM|ALT_INV_memROM~12_combout\,
	datae => \Processador|ROM|ALT_INV_memROM~5_combout\,
	dataf => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~14_combout\);

-- Location: MLABCELL_X9_Y42_N33
\Processador|MUX_proxPC|saida_MUX[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_proxPC|saida_MUX[7]~2_combout\ = ( \Processador|ROM|memROM~14_combout\ & ( (!\Processador|ROM|memROM~10_combout\ & !\Processador|PC|DOUT[7]~_Duplicate_1_q\) ) ) # ( !\Processador|ROM|memROM~14_combout\ & ( 
-- (\Processador|ROM|memROM~3_combout\ & (!\Processador|ROM|memROM~10_combout\ & !\Processador|PC|DOUT[7]~_Duplicate_1_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~3_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~10_combout\,
	datad => \Processador|PC|ALT_INV_DOUT[7]~_Duplicate_1_q\,
	dataf => \Processador|ROM|ALT_INV_memROM~14_combout\,
	combout => \Processador|MUX_proxPC|saida_MUX[7]~2_combout\);

-- Location: MLABCELL_X9_Y42_N18
\Processador|ROM|memROM~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~34_combout\ = ( \Processador|PC|DOUT[3]~_Duplicate_1_q\ & ( \Processador|PC|DOUT[4]~_Duplicate_1_q\ & ( !\Processador|PC|DOUT[6]~_Duplicate_1_q\ ) ) ) # ( !\Processador|PC|DOUT[3]~_Duplicate_1_q\ & ( 
-- !\Processador|PC|DOUT[4]~_Duplicate_1_q\ & ( \Processador|PC|DOUT[6]~_Duplicate_1_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT[6]~_Duplicate_1_q\,
	datae => \Processador|PC|ALT_INV_DOUT[3]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[4]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~34_combout\);

-- Location: MLABCELL_X9_Y42_N12
\Processador|ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~4_combout\ = ( \Processador|PC|DOUT[6]~_Duplicate_1_q\ & ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (\Processador|ROM|memROM~34_combout\ & (!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & ((!\Processador|PC|DOUT[2]~_Duplicate_1_q\) # 
-- (!\Processador|PC|DOUT[1]~_Duplicate_1_q\)))) ) ) ) # ( !\Processador|PC|DOUT[6]~_Duplicate_1_q\ & ( \Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (\Processador|ROM|memROM~34_combout\ & (\Processador|PC|DOUT[5]~_Duplicate_1_q\ & 
-- ((!\Processador|PC|DOUT[2]~_Duplicate_1_q\) # (\Processador|PC|DOUT[1]~_Duplicate_1_q\)))) ) ) ) # ( \Processador|PC|DOUT[6]~_Duplicate_1_q\ & ( !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( (\Processador|PC|DOUT[2]~_Duplicate_1_q\ & 
-- (\Processador|ROM|memROM~34_combout\ & (!\Processador|PC|DOUT[5]~_Duplicate_1_q\ & \Processador|PC|DOUT[1]~_Duplicate_1_q\))) ) ) ) # ( !\Processador|PC|DOUT[6]~_Duplicate_1_q\ & ( !\Processador|PC|DOUT[0]~_Duplicate_1_q\ & ( 
-- (\Processador|PC|DOUT[2]~_Duplicate_1_q\ & (\Processador|ROM|memROM~34_combout\ & \Processador|PC|DOUT[5]~_Duplicate_1_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000001000000000010000000110011000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[2]~_Duplicate_1_q\,
	datab => \Processador|ROM|ALT_INV_memROM~34_combout\,
	datac => \Processador|PC|ALT_INV_DOUT[5]~_Duplicate_1_q\,
	datad => \Processador|PC|ALT_INV_DOUT[1]~_Duplicate_1_q\,
	datae => \Processador|PC|ALT_INV_DOUT[6]~_Duplicate_1_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~_Duplicate_1_q\,
	combout => \Processador|ROM|memROM~4_combout\);

-- Location: MLABCELL_X9_Y42_N6
\Processador|MUX_proxPC|saida_MUX[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_proxPC|saida_MUX[7]~0_combout\ = ( \Processador|MUX_proxPC|saida_MUX[7]~2_combout\ & ( \Processador|ROM|memROM~4_combout\ & ( \Processador|incremento|Add0~29_sumout\ ) ) ) # ( !\Processador|MUX_proxPC|saida_MUX[7]~2_combout\ & ( 
-- \Processador|ROM|memROM~4_combout\ & ( \Processador|incremento|Add0~29_sumout\ ) ) ) # ( \Processador|MUX_proxPC|saida_MUX[7]~2_combout\ & ( !\Processador|ROM|memROM~4_combout\ & ( (\Processador|incremento|Add0~29_sumout\ & 
-- (\Processador|MUX_proxPC|saida_MUX[7]~1_combout\ & (\Processador|ROM|memROM~3_combout\ & \Processador|ROM|memROM~42_combout\))) ) ) ) # ( !\Processador|MUX_proxPC|saida_MUX[7]~2_combout\ & ( !\Processador|ROM|memROM~4_combout\ & ( 
-- \Processador|incremento|Add0~29_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|incremento|ALT_INV_Add0~29_sumout\,
	datab => \Processador|MUX_proxPC|ALT_INV_saida_MUX[7]~1_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~3_combout\,
	datad => \Processador|ROM|ALT_INV_memROM~42_combout\,
	datae => \Processador|MUX_proxPC|ALT_INV_saida_MUX[7]~2_combout\,
	dataf => \Processador|ROM|ALT_INV_memROM~4_combout\,
	combout => \Processador|MUX_proxPC|saida_MUX[7]~0_combout\);

-- Location: FF_X9_Y42_N35
\Processador|PC|DOUT[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|MUX_proxPC|saida_MUX[7]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[7]~_Duplicate_1_q\);

-- Location: MLABCELL_X9_Y42_N0
\Processador|UC|palavraControle[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|UC|palavraControle[7]~0_combout\ = ( \Processador|ROM|memROM~3_combout\ & ( !\Processador|ROM|memROM~10_combout\ & ( (!\Processador|PC|DOUT[7]~_Duplicate_1_q\ & (!\Processador|ROM|memROM~4_combout\ & ((!\Processador|ROM|memROM~14_combout\) # 
-- (!\Processador|ROM|memROM~42_combout\)))) # (\Processador|PC|DOUT[7]~_Duplicate_1_q\ & (((\Processador|ROM|memROM~14_combout\)))) ) ) ) # ( !\Processador|ROM|memROM~3_combout\ & ( !\Processador|ROM|memROM~10_combout\ & ( 
-- (\Processador|ROM|memROM~14_combout\ & ((!\Processador|ROM|memROM~4_combout\) # (\Processador|PC|DOUT[7]~_Duplicate_1_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101100011011000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[7]~_Duplicate_1_q\,
	datab => \Processador|ROM|ALT_INV_memROM~4_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~14_combout\,
	datad => \Processador|ROM|ALT_INV_memROM~42_combout\,
	datae => \Processador|ROM|ALT_INV_memROM~3_combout\,
	dataf => \Processador|ROM|ALT_INV_memROM~10_combout\,
	combout => \Processador|UC|palavraControle[7]~0_combout\);

-- Location: MLABCELL_X13_Y42_N57
\Processador|PC|DOUT[0]~SLOAD_MUX\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|PC|DOUT[0]~SLOAD_MUX_combout\ = ( \Processador|ROM|memROM~43_combout\ & ( (\Processador|incremento|Add0~1_sumout\) # (\Processador|UC|palavraControle[7]~0_combout\) ) ) # ( !\Processador|ROM|memROM~43_combout\ & ( 
-- (!\Processador|UC|palavraControle[7]~0_combout\ & \Processador|incremento|Add0~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[7]~0_combout\,
	datac => \Processador|incremento|ALT_INV_Add0~1_sumout\,
	dataf => \Processador|ROM|ALT_INV_memROM~43_combout\,
	combout => \Processador|PC|DOUT[0]~SLOAD_MUX_combout\);

-- Location: DDIOOUTCELL_X16_Y45_N101
\Processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|PC|DOUT[0]~SLOAD_MUX_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(0));

-- Location: MLABCELL_X13_Y42_N54
\Processador|PC|DOUT[1]~SLOAD_MUX\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|PC|DOUT[1]~SLOAD_MUX_combout\ = ( \Processador|ROM|memROM~17_combout\ & ( (\Processador|incremento|Add0~5_sumout\) # (\Processador|UC|palavraControle[7]~0_combout\) ) ) # ( !\Processador|ROM|memROM~17_combout\ & ( 
-- (!\Processador|UC|palavraControle[7]~0_combout\ & \Processador|incremento|Add0~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[7]~0_combout\,
	datac => \Processador|incremento|ALT_INV_Add0~5_sumout\,
	dataf => \Processador|ROM|ALT_INV_memROM~17_combout\,
	combout => \Processador|PC|DOUT[1]~SLOAD_MUX_combout\);

-- Location: DDIOOUTCELL_X18_Y45_N27
\Processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|PC|DOUT[1]~SLOAD_MUX_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(1));

-- Location: MLABCELL_X13_Y42_N24
\Processador|PC|DOUT[2]~SLOAD_MUX\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|PC|DOUT[2]~SLOAD_MUX_combout\ = (!\Processador|UC|palavraControle[7]~0_combout\ & ((\Processador|incremento|Add0~9_sumout\))) # (\Processador|UC|palavraControle[7]~0_combout\ & (\Processador|ROM|memROM~21_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[7]~0_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~21_combout\,
	datad => \Processador|incremento|ALT_INV_Add0~9_sumout\,
	combout => \Processador|PC|DOUT[2]~SLOAD_MUX_combout\);

-- Location: DDIOOUTCELL_X14_Y45_N44
\Processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|PC|DOUT[2]~SLOAD_MUX_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(2));

-- Location: MLABCELL_X13_Y42_N27
\Processador|PC|DOUT[3]~SLOAD_MUX\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|PC|DOUT[3]~SLOAD_MUX_combout\ = (!\Processador|UC|palavraControle[7]~0_combout\ & ((\Processador|incremento|Add0~13_sumout\))) # (\Processador|UC|palavraControle[7]~0_combout\ & (\Processador|ROM|memROM~36_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[7]~0_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~36_combout\,
	datad => \Processador|incremento|ALT_INV_Add0~13_sumout\,
	combout => \Processador|PC|DOUT[3]~SLOAD_MUX_combout\);

-- Location: DDIOOUTCELL_X14_Y45_N10
\Processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|PC|DOUT[3]~SLOAD_MUX_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(3));

-- Location: LABCELL_X12_Y42_N15
\Processador|PC|DOUT[4]~SLOAD_MUX\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|PC|DOUT[4]~SLOAD_MUX_combout\ = ( \Processador|incremento|Add0~17_sumout\ & ( (!\Processador|UC|palavraControle[7]~0_combout\) # (\Processador|ROM|memROM~29_combout\) ) ) # ( !\Processador|incremento|Add0~17_sumout\ & ( 
-- (\Processador|ROM|memROM~29_combout\ & \Processador|UC|palavraControle[7]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~29_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[7]~0_combout\,
	dataf => \Processador|incremento|ALT_INV_Add0~17_sumout\,
	combout => \Processador|PC|DOUT[4]~SLOAD_MUX_combout\);

-- Location: DDIOOUTCELL_X12_Y45_N27
\Processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|PC|DOUT[4]~SLOAD_MUX_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(4));

-- Location: MLABCELL_X13_Y42_N18
\Processador|PC|DOUT[5]~SLOAD_MUX\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|PC|DOUT[5]~SLOAD_MUX_combout\ = ( \Processador|incremento|Add0~21_sumout\ & ( (!\Processador|UC|palavraControle[7]~0_combout\) # (\Processador|ROM|memROM~31_combout\) ) ) # ( !\Processador|incremento|Add0~21_sumout\ & ( 
-- (\Processador|UC|palavraControle[7]~0_combout\ & \Processador|ROM|memROM~31_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|UC|ALT_INV_palavraControle[7]~0_combout\,
	datad => \Processador|ROM|ALT_INV_memROM~31_combout\,
	dataf => \Processador|incremento|ALT_INV_Add0~21_sumout\,
	combout => \Processador|PC|DOUT[5]~SLOAD_MUX_combout\);

-- Location: DDIOOUTCELL_X14_Y45_N27
\Processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|PC|DOUT[5]~SLOAD_MUX_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(5));

-- Location: MLABCELL_X13_Y42_N15
\Processador|PC|DOUT[6]~SLOAD_MUX\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|PC|DOUT[6]~SLOAD_MUX_combout\ = ( \Processador|incremento|Add0~25_sumout\ & ( (!\Processador|UC|palavraControle[7]~0_combout\) # (\Processador|ROM|memROM~33_combout\) ) ) # ( !\Processador|incremento|Add0~25_sumout\ & ( 
-- (\Processador|ROM|memROM~33_combout\ & \Processador|UC|palavraControle[7]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~33_combout\,
	datad => \Processador|UC|ALT_INV_palavraControle[7]~0_combout\,
	dataf => \Processador|incremento|ALT_INV_Add0~25_sumout\,
	combout => \Processador|PC|DOUT[6]~SLOAD_MUX_combout\);

-- Location: DDIOOUTCELL_X14_Y45_N61
\Processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|PC|DOUT[6]~SLOAD_MUX_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(6));

-- Location: DDIOOUTCELL_X8_Y45_N101
\Processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|MUX_proxPC|saida_MUX[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(7));

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: MLABCELL_X9_Y26_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


