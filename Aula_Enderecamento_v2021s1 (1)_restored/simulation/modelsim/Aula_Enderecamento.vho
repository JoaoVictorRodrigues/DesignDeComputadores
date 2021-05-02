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

-- DATE "05/01/2021 20:50:52"

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
	PC : BUFFER std_logic_vector(7 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END calculadora;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Processador|incremento|Add0~1_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Processador|incremento|Add0~2\ : std_logic;
SIGNAL \Processador|incremento|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|ROM|memROM~2_combout\ : std_logic;
SIGNAL \Processador|incremento|Add0~6\ : std_logic;
SIGNAL \Processador|incremento|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|incremento|Add0~10\ : std_logic;
SIGNAL \Processador|incremento|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|incremento|Add0~14\ : std_logic;
SIGNAL \Processador|incremento|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|incremento|Add0~18\ : std_logic;
SIGNAL \Processador|incremento|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|incremento|Add0~22\ : std_logic;
SIGNAL \Processador|incremento|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|ROM|memROM~3_combout\ : std_logic;
SIGNAL \Processador|incremento|Add0~26\ : std_logic;
SIGNAL \Processador|incremento|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|ROM|memROM~4_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~0_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~1_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
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
SIGNAL \Processador|ROM|memROM~5_combout\ : std_logic;
SIGNAL \Decoder|Equal0~0_combout\ : std_logic;
SIGNAL \Processador|ULA|Add0~34_cout\ : std_logic;
SIGNAL \Processador|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~12feeder_combout\ : std_logic;
SIGNAL \Processador|ULA|saida~0_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~37_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~12_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~20feeder_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~36_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~20_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~28_combout\ : std_logic;
SIGNAL \Processador|ULA|Add0~2\ : std_logic;
SIGNAL \Processador|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~13feeder_combout\ : std_logic;
SIGNAL \Processador|ULA|saida~3_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~13_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~21feeder_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~21_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~31_combout\ : std_logic;
SIGNAL \Processador|ULA|Add0~14\ : std_logic;
SIGNAL \Processador|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~14feeder_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~22feeder_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~22_q\ : std_logic;
SIGNAL \Processador|ULA|saida~2_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~14_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~30_combout\ : std_logic;
SIGNAL \Processador|ULA|Add0~10\ : std_logic;
SIGNAL \Processador|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~15feeder_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~23feeder_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~23_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~15DUPLICATE_q\ : std_logic;
SIGNAL \Processador|ULA|saida~1_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~15_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~29_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \Processador|ULA|Add0~6\ : std_logic;
SIGNAL \Processador|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~24feeder_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~16feeder_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~16_q\ : std_logic;
SIGNAL \Processador|ULA|saida~4_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~24_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~16DUPLICATE_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~32_combout\ : std_logic;
SIGNAL \Processador|ULA|Add0~18\ : std_logic;
SIGNAL \Processador|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~17feeder_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~25feeder_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~25DUPLICATE_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~17DUPLICATE_q\ : std_logic;
SIGNAL \Processador|ULA|saida~7_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~17_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~25_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~35_combout\ : std_logic;
SIGNAL \Processador|ULA|Add0~30\ : std_logic;
SIGNAL \Processador|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~18feeder_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~26feeder_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~26_q\ : std_logic;
SIGNAL \Processador|ULA|saida~6_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~18_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~34_combout\ : std_logic;
SIGNAL \Processador|ULA|Add0~26\ : std_logic;
SIGNAL \Processador|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~19feeder_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~27feeder_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~27_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~19_q\ : std_logic;
SIGNAL \Processador|ULA|saida~5_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~19DUPLICATE_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~33_combout\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \disp0_1|reg|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~35_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~34_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~33_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~32_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~31_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~30_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~29_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~28_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \disp0_1|reg|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \Processador|ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \Processador|ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Processador|ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Processador|ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \Processador|ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Processador|ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Processador|ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~17DUPLICATE_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~25DUPLICATE_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~19DUPLICATE_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~16DUPLICATE_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~15DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \Decoder|ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
PC <= ww_PC;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Processador|ROM|ALT_INV_memROM~5_combout\ <= NOT \Processador|ROM|memROM~5_combout\;
\Processador|Banco_Registradores|ALT_INV_registrador~35_combout\ <= NOT \Processador|Banco_Registradores|registrador~35_combout\;
\Processador|Banco_Registradores|ALT_INV_registrador~34_combout\ <= NOT \Processador|Banco_Registradores|registrador~34_combout\;
\Processador|Banco_Registradores|ALT_INV_registrador~33_combout\ <= NOT \Processador|Banco_Registradores|registrador~33_combout\;
\Processador|Banco_Registradores|ALT_INV_registrador~32_combout\ <= NOT \Processador|Banco_Registradores|registrador~32_combout\;
\Processador|Banco_Registradores|ALT_INV_registrador~31_combout\ <= NOT \Processador|Banco_Registradores|registrador~31_combout\;
\Processador|Banco_Registradores|ALT_INV_registrador~30_combout\ <= NOT \Processador|Banco_Registradores|registrador~30_combout\;
\Processador|Banco_Registradores|ALT_INV_registrador~29_combout\ <= NOT \Processador|Banco_Registradores|registrador~29_combout\;
\Processador|Banco_Registradores|ALT_INV_registrador~28_combout\ <= NOT \Processador|Banco_Registradores|registrador~28_combout\;
\Processador|ROM|ALT_INV_memROM~4_combout\ <= NOT \Processador|ROM|memROM~4_combout\;
\Processador|ROM|ALT_INV_memROM~3_combout\ <= NOT \Processador|ROM|memROM~3_combout\;
\Processador|ROM|ALT_INV_memROM~2_combout\ <= NOT \Processador|ROM|memROM~2_combout\;
\Processador|ROM|ALT_INV_memROM~0_combout\ <= NOT \Processador|ROM|memROM~0_combout\;
\disp0_1|reg|ALT_INV_DOUT\(5) <= NOT \disp0_1|reg|DOUT\(5);
\disp0_1|reg|ALT_INV_DOUT\(6) <= NOT \disp0_1|reg|DOUT\(6);
\disp0_1|reg|ALT_INV_DOUT\(7) <= NOT \disp0_1|reg|DOUT\(7);
\disp0_1|reg|ALT_INV_DOUT\(4) <= NOT \disp0_1|reg|DOUT\(4);
\disp0_1|reg|ALT_INV_DOUT\(1) <= NOT \disp0_1|reg|DOUT\(1);
\disp0_1|reg|ALT_INV_DOUT\(2) <= NOT \disp0_1|reg|DOUT\(2);
\disp0_1|reg|ALT_INV_DOUT\(3) <= NOT \disp0_1|reg|DOUT\(3);
\disp0_1|reg|ALT_INV_DOUT\(0) <= NOT \disp0_1|reg|DOUT\(0);
\Processador|ULA|ALT_INV_Add0~29_sumout\ <= NOT \Processador|ULA|Add0~29_sumout\;
\Processador|ULA|ALT_INV_Add0~25_sumout\ <= NOT \Processador|ULA|Add0~25_sumout\;
\Processador|ULA|ALT_INV_Add0~21_sumout\ <= NOT \Processador|ULA|Add0~21_sumout\;
\Processador|ULA|ALT_INV_Add0~17_sumout\ <= NOT \Processador|ULA|Add0~17_sumout\;
\Processador|ULA|ALT_INV_Add0~13_sumout\ <= NOT \Processador|ULA|Add0~13_sumout\;
\Processador|ULA|ALT_INV_Add0~9_sumout\ <= NOT \Processador|ULA|Add0~9_sumout\;
\Processador|ULA|ALT_INV_Add0~5_sumout\ <= NOT \Processador|ULA|Add0~5_sumout\;
\Processador|ULA|ALT_INV_Add0~1_sumout\ <= NOT \Processador|ULA|Add0~1_sumout\;
\Processador|Banco_Registradores|ALT_INV_registrador~17_q\ <= NOT \Processador|Banco_Registradores|registrador~17_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~25_q\ <= NOT \Processador|Banco_Registradores|registrador~25_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~18_q\ <= NOT \Processador|Banco_Registradores|registrador~18_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~26_q\ <= NOT \Processador|Banco_Registradores|registrador~26_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~19_q\ <= NOT \Processador|Banco_Registradores|registrador~19_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~27_q\ <= NOT \Processador|Banco_Registradores|registrador~27_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~16_q\ <= NOT \Processador|Banco_Registradores|registrador~16_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~24_q\ <= NOT \Processador|Banco_Registradores|registrador~24_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~13_q\ <= NOT \Processador|Banco_Registradores|registrador~13_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~21_q\ <= NOT \Processador|Banco_Registradores|registrador~21_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~14_q\ <= NOT \Processador|Banco_Registradores|registrador~14_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~22_q\ <= NOT \Processador|Banco_Registradores|registrador~22_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~15_q\ <= NOT \Processador|Banco_Registradores|registrador~15_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~23_q\ <= NOT \Processador|Banco_Registradores|registrador~23_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~12_q\ <= NOT \Processador|Banco_Registradores|registrador~12_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~20_q\ <= NOT \Processador|Banco_Registradores|registrador~20_q\;
\Processador|PC|ALT_INV_DOUT\(7) <= NOT \Processador|PC|DOUT\(7);
\Processador|PC|ALT_INV_DOUT\(6) <= NOT \Processador|PC|DOUT\(6);
\Processador|PC|ALT_INV_DOUT\(5) <= NOT \Processador|PC|DOUT\(5);
\Processador|PC|ALT_INV_DOUT\(4) <= NOT \Processador|PC|DOUT\(4);
\Processador|PC|ALT_INV_DOUT\(3) <= NOT \Processador|PC|DOUT\(3);
\Processador|PC|ALT_INV_DOUT\(2) <= NOT \Processador|PC|DOUT\(2);
\Processador|PC|ALT_INV_DOUT\(1) <= NOT \Processador|PC|DOUT\(1);
\Processador|PC|ALT_INV_DOUT\(0) <= NOT \Processador|PC|DOUT\(0);
\Processador|Banco_Registradores|ALT_INV_registrador~17DUPLICATE_q\ <= NOT \Processador|Banco_Registradores|registrador~17DUPLICATE_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~25DUPLICATE_q\ <= NOT \Processador|Banco_Registradores|registrador~25DUPLICATE_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~19DUPLICATE_q\ <= NOT \Processador|Banco_Registradores|registrador~19DUPLICATE_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~16DUPLICATE_q\ <= NOT \Processador|Banco_Registradores|registrador~16DUPLICATE_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~15DUPLICATE_q\ <= NOT \Processador|Banco_Registradores|registrador~15DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\Decoder|ALT_INV_Equal0~0_combout\ <= NOT \Decoder|Equal0~0_combout\;

-- Location: IOOBUF_X11_Y0_N19
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

-- Location: IOOBUF_X14_Y0_N53
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

-- Location: IOOBUF_X12_Y0_N36
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

-- Location: IOOBUF_X12_Y0_N19
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X54_Y14_N45
\PC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC(6));

-- Location: IOOBUF_X12_Y0_N53
\PC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT[7]~DUPLICATE_q\,
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
	i => \disp0_1|disp0|rascSaida7seg[0]~0_combout\,
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
	i => \disp0_1|disp0|rascSaida7seg[1]~1_combout\,
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
	i => \disp0_1|disp0|rascSaida7seg[2]~2_combout\,
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
	i => \disp0_1|disp0|rascSaida7seg[3]~3_combout\,
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
	i => \disp0_1|disp0|rascSaida7seg[4]~4_combout\,
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
	i => \disp0_1|disp0|rascSaida7seg[5]~5_combout\,
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
	i => \disp0_1|disp0|rascSaida7seg[6]~6_combout\,
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
	i => \disp0_1|disp1|rascSaida7seg[0]~0_combout\,
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
	i => \disp0_1|disp1|rascSaida7seg[1]~1_combout\,
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
	i => \disp0_1|disp1|rascSaida7seg[2]~2_combout\,
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
	i => \disp0_1|disp1|rascSaida7seg[3]~3_combout\,
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
	i => \disp0_1|disp1|rascSaida7seg[4]~4_combout\,
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
	i => \disp0_1|disp1|rascSaida7seg[5]~5_combout\,
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
	i => \disp0_1|disp1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

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

-- Location: LABCELL_X40_Y2_N30
\Processador|incremento|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~1_sumout\ = SUM(( \Processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \Processador|incremento|Add0~2\ = CARRY(( \Processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \Processador|incremento|Add0~1_sumout\,
	cout => \Processador|incremento|Add0~2\);

-- Location: LABCELL_X39_Y2_N54
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LABCELL_X40_Y2_N33
\Processador|incremento|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~5_sumout\ = SUM(( \Processador|PC|DOUT\(1) ) + ( GND ) + ( \Processador|incremento|Add0~2\ ))
-- \Processador|incremento|Add0~6\ = CARRY(( \Processador|PC|DOUT\(1) ) + ( GND ) + ( \Processador|incremento|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	cin => \Processador|incremento|Add0~2\,
	sumout => \Processador|incremento|Add0~5_sumout\,
	cout => \Processador|incremento|Add0~6\);

-- Location: LABCELL_X40_Y2_N3
\Processador|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~2_combout\ = ( \Processador|PC|DOUT\(1) & ( (!\Processador|PC|DOUT\(2) & \Processador|ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	dataf => \Processador|PC|ALT_INV_DOUT\(1),
	combout => \Processador|ROM|memROM~2_combout\);

-- Location: FF_X40_Y2_N35
\Processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~5_sumout\,
	asdata => \Processador|ROM|memROM~2_combout\,
	sload => \Processador|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(1));

-- Location: LABCELL_X40_Y2_N36
\Processador|incremento|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~9_sumout\ = SUM(( \Processador|PC|DOUT\(2) ) + ( GND ) + ( \Processador|incremento|Add0~6\ ))
-- \Processador|incremento|Add0~10\ = CARRY(( \Processador|PC|DOUT\(2) ) + ( GND ) + ( \Processador|incremento|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	cin => \Processador|incremento|Add0~6\,
	sumout => \Processador|incremento|Add0~9_sumout\,
	cout => \Processador|incremento|Add0~10\);

-- Location: FF_X40_Y2_N37
\Processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~9_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(2));

-- Location: LABCELL_X40_Y2_N39
\Processador|incremento|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~13_sumout\ = SUM(( \Processador|PC|DOUT\(3) ) + ( GND ) + ( \Processador|incremento|Add0~10\ ))
-- \Processador|incremento|Add0~14\ = CARRY(( \Processador|PC|DOUT\(3) ) + ( GND ) + ( \Processador|incremento|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	cin => \Processador|incremento|Add0~10\,
	sumout => \Processador|incremento|Add0~13_sumout\,
	cout => \Processador|incremento|Add0~14\);

-- Location: FF_X40_Y2_N41
\Processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(3));

-- Location: LABCELL_X40_Y2_N42
\Processador|incremento|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~17_sumout\ = SUM(( \Processador|PC|DOUT\(4) ) + ( GND ) + ( \Processador|incremento|Add0~14\ ))
-- \Processador|incremento|Add0~18\ = CARRY(( \Processador|PC|DOUT\(4) ) + ( GND ) + ( \Processador|incremento|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	cin => \Processador|incremento|Add0~14\,
	sumout => \Processador|incremento|Add0~17_sumout\,
	cout => \Processador|incremento|Add0~18\);

-- Location: FF_X40_Y2_N44
\Processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(4));

-- Location: LABCELL_X40_Y2_N45
\Processador|incremento|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~21_sumout\ = SUM(( \Processador|PC|DOUT\(5) ) + ( GND ) + ( \Processador|incremento|Add0~18\ ))
-- \Processador|incremento|Add0~22\ = CARRY(( \Processador|PC|DOUT\(5) ) + ( GND ) + ( \Processador|incremento|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(5),
	cin => \Processador|incremento|Add0~18\,
	sumout => \Processador|incremento|Add0~21_sumout\,
	cout => \Processador|incremento|Add0~22\);

-- Location: FF_X40_Y2_N46
\Processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(5));

-- Location: LABCELL_X40_Y2_N48
\Processador|incremento|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~25_sumout\ = SUM(( \Processador|PC|DOUT\(6) ) + ( GND ) + ( \Processador|incremento|Add0~22\ ))
-- \Processador|incremento|Add0~26\ = CARRY(( \Processador|PC|DOUT\(6) ) + ( GND ) + ( \Processador|incremento|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(6),
	cin => \Processador|incremento|Add0~22\,
	sumout => \Processador|incremento|Add0~25_sumout\,
	cout => \Processador|incremento|Add0~26\);

-- Location: FF_X40_Y2_N32
\Processador|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~1_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N9
\Processador|ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~3_combout\ = ( !\Processador|PC|DOUT\(1) & ( (\Processador|ROM|memROM~0_combout\ & (!\Processador|PC|DOUT[0]~DUPLICATE_q\ & !\Processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	dataf => \Processador|PC|ALT_INV_DOUT\(1),
	combout => \Processador|ROM|memROM~3_combout\);

-- Location: FF_X40_Y2_N50
\Processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~25_sumout\,
	asdata => \Processador|ROM|memROM~3_combout\,
	sload => \Processador|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(6));

-- Location: LABCELL_X40_Y2_N51
\Processador|incremento|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~29_sumout\ = SUM(( \Processador|PC|DOUT\(7) ) + ( GND ) + ( \Processador|incremento|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	cin => \Processador|incremento|Add0~26\,
	sumout => \Processador|incremento|Add0~29_sumout\);

-- Location: LABCELL_X40_Y2_N12
\Processador|ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~4_combout\ = ( \Processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(1) & \Processador|ROM|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|PC|ALT_INV_DOUT\(1),
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \Processador|ROM|memROM~4_combout\);

-- Location: FF_X40_Y2_N53
\Processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~29_sumout\,
	asdata => \Processador|ROM|memROM~4_combout\,
	sload => \Processador|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(7));

-- Location: LABCELL_X40_Y2_N0
\Processador|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~0_combout\ = ( !\Processador|PC|DOUT\(4) & ( (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(7) & !\Processador|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(3),
	datac => \Processador|PC|ALT_INV_DOUT\(7),
	datad => \Processador|PC|ALT_INV_DOUT\(5),
	dataf => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \Processador|ROM|memROM~0_combout\);

-- Location: LABCELL_X40_Y2_N6
\Processador|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~1_combout\ = ( !\Processador|PC|DOUT\(1) & ( (\Processador|ROM|memROM~0_combout\ & (!\Processador|PC|DOUT[0]~DUPLICATE_q\ & \Processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	dataf => \Processador|PC|ALT_INV_DOUT\(1),
	combout => \Processador|ROM|memROM~1_combout\);

-- Location: FF_X40_Y2_N31
\Processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~1_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(0));

-- Location: FF_X40_Y2_N49
\Processador|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~25_sumout\,
	asdata => \Processador|ROM|memROM~3_combout\,
	sload => \Processador|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X40_Y2_N52
\Processador|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~29_sumout\,
	asdata => \Processador|ROM|memROM~4_combout\,
	sload => \Processador|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[7]~DUPLICATE_q\);

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

-- Location: LABCELL_X41_Y2_N57
\Processador|ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~5_combout\ = ( !\Processador|PC|DOUT\(2) & ( (\Processador|PC|DOUT\(1) & (\Processador|ROM|memROM~0_combout\ & \Processador|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	dataf => \Processador|PC|ALT_INV_DOUT\(2),
	combout => \Processador|ROM|memROM~5_combout\);

-- Location: LABCELL_X40_Y2_N54
\Decoder|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal0~0_combout\ = ( !\Processador|PC|DOUT\(1) & ( (!\Processador|PC|DOUT\(2) & \Processador|ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|ROM|ALT_INV_memROM~0_combout\,
	dataf => \Processador|PC|ALT_INV_DOUT\(1),
	combout => \Decoder|Equal0~0_combout\);

-- Location: LABCELL_X41_Y2_N0
\Processador|ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|Add0~34_cout\ = CARRY(( !\Processador|ROM|memROM~5_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|ROM|ALT_INV_memROM~5_combout\,
	cin => GND,
	cout => \Processador|ULA|Add0~34_cout\);

-- Location: LABCELL_X41_Y2_N3
\Processador|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|Add0~1_sumout\ = SUM(( \Processador|Banco_Registradores|registrador~28_combout\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\SW[0]~input_o\) # ((!\Processador|ROM|memROM~4_combout\ & !\Processador|ROM|memROM~3_combout\)))) ) + ( 
-- \Processador|ULA|Add0~34_cout\ ))
-- \Processador|ULA|Add0~2\ = CARRY(( \Processador|Banco_Registradores|registrador~28_combout\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\SW[0]~input_o\) # ((!\Processador|ROM|memROM~4_combout\ & !\Processador|ROM|memROM~3_combout\)))) ) + ( 
-- \Processador|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~4_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~3_combout\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~28_combout\,
	dataf => \ALT_INV_SW[0]~input_o\,
	cin => \Processador|ULA|Add0~34_cout\,
	sumout => \Processador|ULA|Add0~1_sumout\,
	cout => \Processador|ULA|Add0~2\);

-- Location: LABCELL_X39_Y2_N36
\Processador|Banco_Registradores|registrador~12feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~12feeder_combout\ = \Processador|ULA|Add0~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|ULA|ALT_INV_Add0~1_sumout\,
	combout => \Processador|Banco_Registradores|registrador~12feeder_combout\);

-- Location: LABCELL_X41_Y2_N30
\Processador|ULA|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~0_combout\ = ( \Processador|Banco_Registradores|registrador~28_combout\ & ( \Processador|PC|DOUT\(1) & ( ((!\Processador|ROM|memROM~0_combout\) # (!\Processador|PC|DOUT\(0))) # (\Processador|PC|DOUT\(2)) ) ) ) # ( 
-- \Processador|Banco_Registradores|registrador~28_combout\ & ( !\Processador|PC|DOUT\(1) & ( (!\Processador|ROM|memROM~0_combout\) # ((!\Processador|PC|DOUT\(2) & ((!\Processador|PC|DOUT\(0)) # (\SW[0]~input_o\))) # (\Processador|PC|DOUT\(2) & 
-- (\Processador|PC|DOUT\(0)))) ) ) ) # ( !\Processador|Banco_Registradores|registrador~28_combout\ & ( !\Processador|PC|DOUT\(1) & ( (!\Processador|PC|DOUT\(2) & (\Processador|ROM|memROM~0_combout\ & (\Processador|PC|DOUT\(0) & \SW[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111011011110111100000000000000001111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(0),
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \Processador|Banco_Registradores|ALT_INV_registrador~28_combout\,
	dataf => \Processador|PC|ALT_INV_DOUT\(1),
	combout => \Processador|ULA|saida~0_combout\);

-- Location: LABCELL_X40_Y2_N21
\Processador|Banco_Registradores|registrador~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~37_combout\ = (!\Processador|ROM|memROM~0_combout\) # (!\Processador|PC|DOUT\(2) $ (((\Processador|PC|DOUT[0]~DUPLICATE_q\) # (\Processador|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110010011111111111001001111111111100100111111111110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|Banco_Registradores|registrador~37_combout\);

-- Location: FF_X39_Y2_N38
\Processador|Banco_Registradores|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~12feeder_combout\,
	asdata => \Processador|ULA|saida~0_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~12_q\);

-- Location: LABCELL_X39_Y2_N0
\Processador|Banco_Registradores|registrador~20feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~20feeder_combout\ = \Processador|ULA|Add0~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|ULA|ALT_INV_Add0~1_sumout\,
	combout => \Processador|Banco_Registradores|registrador~20feeder_combout\);

-- Location: MLABCELL_X42_Y2_N45
\Processador|Banco_Registradores|registrador~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~36_combout\ = ( !\Processador|PC|DOUT\(2) & ( (\Processador|PC|DOUT\(1) & \Processador|ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|ROM|ALT_INV_memROM~0_combout\,
	dataf => \Processador|PC|ALT_INV_DOUT\(2),
	combout => \Processador|Banco_Registradores|registrador~36_combout\);

-- Location: FF_X39_Y2_N1
\Processador|Banco_Registradores|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~20feeder_combout\,
	asdata => \Processador|ULA|saida~0_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~20_q\);

-- Location: LABCELL_X39_Y2_N48
\Processador|Banco_Registradores|registrador~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~28_combout\ = ( \Processador|PC|DOUT\(1) & ( (!\Processador|ROM|memROM~0_combout\ & (\Processador|Banco_Registradores|registrador~12_q\)) # (\Processador|ROM|memROM~0_combout\ & ((!\Processador|PC|DOUT\(2) & 
-- ((\Processador|Banco_Registradores|registrador~20_q\))) # (\Processador|PC|DOUT\(2) & (\Processador|Banco_Registradores|registrador~12_q\)))) ) ) # ( !\Processador|PC|DOUT\(1) & ( \Processador|Banco_Registradores|registrador~12_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010011010101010101001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|Banco_Registradores|ALT_INV_registrador~12_q\,
	datab => \Processador|Banco_Registradores|ALT_INV_registrador~20_q\,
	datac => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	dataf => \Processador|PC|ALT_INV_DOUT\(1),
	combout => \Processador|Banco_Registradores|registrador~28_combout\);

-- Location: LABCELL_X41_Y2_N6
\Processador|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|Add0~13_sumout\ = SUM(( (!\Processador|ROM|memROM~5_combout\ & ((!\Decoder|Equal0~0_combout\) # ((!\SW[1]~input_o\)))) # (\Processador|ROM|memROM~5_combout\ & (((\Processador|ROM|memROM~2_combout\)))) ) + ( 
-- \Processador|Banco_Registradores|registrador~31_combout\ ) + ( \Processador|ULA|Add0~2\ ))
-- \Processador|ULA|Add0~14\ = CARRY(( (!\Processador|ROM|memROM~5_combout\ & ((!\Decoder|Equal0~0_combout\) # ((!\SW[1]~input_o\)))) # (\Processador|ROM|memROM~5_combout\ & (((\Processador|ROM|memROM~2_combout\)))) ) + ( 
-- \Processador|Banco_Registradores|registrador~31_combout\ ) + ( \Processador|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100111110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal0~0_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~2_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \Processador|Banco_Registradores|ALT_INV_registrador~31_combout\,
	cin => \Processador|ULA|Add0~2\,
	sumout => \Processador|ULA|Add0~13_sumout\,
	cout => \Processador|ULA|Add0~14\);

-- Location: LABCELL_X39_Y2_N39
\Processador|Banco_Registradores|registrador~13feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~13feeder_combout\ = ( \Processador|ULA|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA|ALT_INV_Add0~13_sumout\,
	combout => \Processador|Banco_Registradores|registrador~13feeder_combout\);

-- Location: LABCELL_X40_Y2_N24
\Processador|ULA|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~3_combout\ = ( \Processador|ROM|memROM~0_combout\ & ( \SW[1]~input_o\ & ( (!\Processador|Banco_Registradores|registrador~31_combout\ & (\Processador|PC|DOUT[0]~DUPLICATE_q\ & ((!\Processador|PC|DOUT\(2))))) # 
-- (\Processador|Banco_Registradores|registrador~31_combout\ & (((!\Processador|PC|DOUT\(2)) # (\Processador|PC|DOUT\(1))) # (\Processador|PC|DOUT[0]~DUPLICATE_q\))) ) ) ) # ( !\Processador|ROM|memROM~0_combout\ & ( \SW[1]~input_o\ & ( 
-- \Processador|Banco_Registradores|registrador~31_combout\ ) ) ) # ( \Processador|ROM|memROM~0_combout\ & ( !\SW[1]~input_o\ & ( (!\Processador|Banco_Registradores|registrador~31_combout\ & (\Processador|PC|DOUT[0]~DUPLICATE_q\ & (\Processador|PC|DOUT\(1) & 
-- !\Processador|PC|DOUT\(2)))) # (\Processador|Banco_Registradores|registrador~31_combout\ & ((!\Processador|PC|DOUT[0]~DUPLICATE_q\ $ (\Processador|PC|DOUT\(2))) # (\Processador|PC|DOUT\(1)))) ) ) ) # ( !\Processador|ROM|memROM~0_combout\ & ( 
-- !\SW[1]~input_o\ & ( \Processador|Banco_Registradores|registrador~31_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010001110001010101010101010101010111011100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|Banco_Registradores|ALT_INV_registrador~31_combout\,
	datab => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT\(1),
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	datae => \Processador|ROM|ALT_INV_memROM~0_combout\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \Processador|ULA|saida~3_combout\);

-- Location: FF_X39_Y2_N40
\Processador|Banco_Registradores|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~13feeder_combout\,
	asdata => \Processador|ULA|saida~3_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~13_q\);

-- Location: LABCELL_X39_Y2_N3
\Processador|Banco_Registradores|registrador~21feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~21feeder_combout\ = ( \Processador|ULA|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA|ALT_INV_Add0~13_sumout\,
	combout => \Processador|Banco_Registradores|registrador~21feeder_combout\);

-- Location: FF_X39_Y2_N4
\Processador|Banco_Registradores|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~21feeder_combout\,
	asdata => \Processador|ULA|saida~3_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~21_q\);

-- Location: LABCELL_X40_Y2_N18
\Processador|Banco_Registradores|registrador~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~31_combout\ = ( \Processador|Banco_Registradores|registrador~21_q\ & ( ((\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) & \Processador|ROM|memROM~0_combout\))) # 
-- (\Processador|Banco_Registradores|registrador~13_q\) ) ) # ( !\Processador|Banco_Registradores|registrador~21_q\ & ( (\Processador|Banco_Registradores|registrador~13_q\ & ((!\Processador|PC|DOUT\(1)) # ((!\Processador|ROM|memROM~0_combout\) # 
-- (\Processador|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001011000011110000101100001111010011110000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|Banco_Registradores|ALT_INV_registrador~13_q\,
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	dataf => \Processador|Banco_Registradores|ALT_INV_registrador~21_q\,
	combout => \Processador|Banco_Registradores|registrador~31_combout\);

-- Location: LABCELL_X41_Y2_N9
\Processador|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|Add0~9_sumout\ = SUM(( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[2]~input_o\))) ) + ( \Processador|Banco_Registradores|registrador~30_combout\ ) + ( \Processador|ULA|Add0~14\ ))
-- \Processador|ULA|Add0~10\ = CARRY(( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[2]~input_o\))) ) + ( \Processador|Banco_Registradores|registrador~30_combout\ ) + ( \Processador|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~3_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \Processador|Banco_Registradores|ALT_INV_registrador~30_combout\,
	cin => \Processador|ULA|Add0~14\,
	sumout => \Processador|ULA|Add0~9_sumout\,
	cout => \Processador|ULA|Add0~10\);

-- Location: LABCELL_X39_Y2_N24
\Processador|Banco_Registradores|registrador~14feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~14feeder_combout\ = ( \Processador|ULA|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA|ALT_INV_Add0~9_sumout\,
	combout => \Processador|Banco_Registradores|registrador~14feeder_combout\);

-- Location: LABCELL_X39_Y2_N15
\Processador|Banco_Registradores|registrador~22feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~22feeder_combout\ = \Processador|ULA|Add0~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|ULA|ALT_INV_Add0~9_sumout\,
	combout => \Processador|Banco_Registradores|registrador~22feeder_combout\);

-- Location: FF_X39_Y2_N17
\Processador|Banco_Registradores|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~22feeder_combout\,
	asdata => \Processador|ULA|saida~2_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~22_q\);

-- Location: LABCELL_X39_Y2_N45
\Processador|ULA|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~2_combout\ = ( \Processador|Banco_Registradores|registrador~22_q\ & ( \Processador|Banco_Registradores|registrador~14_q\ & ( (!\Processador|ROM|memROM~0_combout\) # ((!\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(2)) # 
-- (\Processador|PC|DOUT\(1)))) # (\Processador|PC|DOUT\(0) & ((\Processador|PC|DOUT\(2))))) ) ) ) # ( !\Processador|Banco_Registradores|registrador~22_q\ & ( \Processador|Banco_Registradores|registrador~14_q\ & ( (!\Processador|ROM|memROM~0_combout\) # 
-- (!\Processador|PC|DOUT\(2) $ (((\Processador|PC|DOUT\(0)) # (\Processador|PC|DOUT\(1))))) ) ) ) # ( \Processador|Banco_Registradores|registrador~22_q\ & ( !\Processador|Banco_Registradores|registrador~14_q\ & ( (\Processador|PC|DOUT\(1) & 
-- (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & \Processador|ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000011111111100001111111111111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|PC|ALT_INV_DOUT\(0),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datae => \Processador|Banco_Registradores|ALT_INV_registrador~22_q\,
	dataf => \Processador|Banco_Registradores|ALT_INV_registrador~14_q\,
	combout => \Processador|ULA|saida~2_combout\);

-- Location: FF_X39_Y2_N26
\Processador|Banco_Registradores|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~14feeder_combout\,
	asdata => \Processador|ULA|saida~2_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~14_q\);

-- Location: LABCELL_X39_Y2_N27
\Processador|Banco_Registradores|registrador~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~30_combout\ = ( \Processador|PC|DOUT\(1) & ( (!\Processador|PC|DOUT\(2) & ((!\Processador|ROM|memROM~0_combout\ & (\Processador|Banco_Registradores|registrador~14_q\)) # (\Processador|ROM|memROM~0_combout\ & 
-- ((\Processador|Banco_Registradores|registrador~22_q\))))) # (\Processador|PC|DOUT\(2) & (\Processador|Banco_Registradores|registrador~14_q\)) ) ) # ( !\Processador|PC|DOUT\(1) & ( \Processador|Banco_Registradores|registrador~14_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101000111010101010100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|Banco_Registradores|ALT_INV_registrador~14_q\,
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|Banco_Registradores|ALT_INV_registrador~22_q\,
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	dataf => \Processador|PC|ALT_INV_DOUT\(1),
	combout => \Processador|Banco_Registradores|registrador~30_combout\);

-- Location: LABCELL_X41_Y2_N12
\Processador|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|Add0~5_sumout\ = SUM(( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[3]~input_o\))) ) + ( \Processador|Banco_Registradores|registrador~29_combout\ ) + ( \Processador|ULA|Add0~10\ ))
-- \Processador|ULA|Add0~6\ = CARRY(( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[3]~input_o\))) ) + ( \Processador|Banco_Registradores|registrador~29_combout\ ) + ( \Processador|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~3_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	dataf => \Processador|Banco_Registradores|ALT_INV_registrador~29_combout\,
	cin => \Processador|ULA|Add0~10\,
	sumout => \Processador|ULA|Add0~5_sumout\,
	cout => \Processador|ULA|Add0~6\);

-- Location: LABCELL_X39_Y2_N51
\Processador|Banco_Registradores|registrador~15feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~15feeder_combout\ = ( \Processador|ULA|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA|ALT_INV_Add0~5_sumout\,
	combout => \Processador|Banco_Registradores|registrador~15feeder_combout\);

-- Location: LABCELL_X39_Y2_N12
\Processador|Banco_Registradores|registrador~23feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~23feeder_combout\ = ( \Processador|ULA|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA|ALT_INV_Add0~5_sumout\,
	combout => \Processador|Banco_Registradores|registrador~23feeder_combout\);

-- Location: FF_X39_Y2_N13
\Processador|Banco_Registradores|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~23feeder_combout\,
	asdata => \Processador|ULA|saida~1_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~23_q\);

-- Location: FF_X39_Y2_N53
\Processador|Banco_Registradores|registrador~15DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~15feeder_combout\,
	asdata => \Processador|ULA|saida~1_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~15DUPLICATE_q\);

-- Location: LABCELL_X39_Y2_N42
\Processador|ULA|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~1_combout\ = ( \Processador|Banco_Registradores|registrador~23_q\ & ( \Processador|Banco_Registradores|registrador~15DUPLICATE_q\ & ( (!\Processador|ROM|memROM~0_combout\) # ((!\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(2)) 
-- # (\Processador|PC|DOUT\(1)))) # (\Processador|PC|DOUT\(0) & ((\Processador|PC|DOUT\(2))))) ) ) ) # ( !\Processador|Banco_Registradores|registrador~23_q\ & ( \Processador|Banco_Registradores|registrador~15DUPLICATE_q\ & ( 
-- (!\Processador|ROM|memROM~0_combout\) # (!\Processador|PC|DOUT\(2) $ (((\Processador|PC|DOUT\(0)) # (\Processador|PC|DOUT\(1))))) ) ) ) # ( \Processador|Banco_Registradores|registrador~23_q\ & ( !\Processador|Banco_Registradores|registrador~15DUPLICATE_q\ 
-- & ( (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(0) & (\Processador|ROM|memROM~0_combout\ & !\Processador|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000011111000111101111111110011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|PC|ALT_INV_DOUT\(0),
	datac => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	datae => \Processador|Banco_Registradores|ALT_INV_registrador~23_q\,
	dataf => \Processador|Banco_Registradores|ALT_INV_registrador~15DUPLICATE_q\,
	combout => \Processador|ULA|saida~1_combout\);

-- Location: FF_X39_Y2_N52
\Processador|Banco_Registradores|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~15feeder_combout\,
	asdata => \Processador|ULA|saida~1_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~15_q\);

-- Location: LABCELL_X40_Y2_N15
\Processador|Banco_Registradores|registrador~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~29_combout\ = ( \Processador|PC|DOUT\(1) & ( (!\Processador|ROM|memROM~0_combout\ & (((\Processador|Banco_Registradores|registrador~15_q\)))) # (\Processador|ROM|memROM~0_combout\ & ((!\Processador|PC|DOUT\(2) 
-- & ((\Processador|Banco_Registradores|registrador~23_q\))) # (\Processador|PC|DOUT\(2) & (\Processador|Banco_Registradores|registrador~15_q\)))) ) ) # ( !\Processador|PC|DOUT\(1) & ( \Processador|Banco_Registradores|registrador~15_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001011010011110000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|Banco_Registradores|ALT_INV_registrador~15_q\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~23_q\,
	dataf => \Processador|PC|ALT_INV_DOUT\(1),
	combout => \Processador|Banco_Registradores|registrador~29_combout\);

-- Location: FF_X41_Y2_N35
\disp0_1|reg|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|Banco_Registradores|registrador~29_combout\,
	sload => VCC,
	ena => \Processador|ROM|memROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(3));

-- Location: FF_X41_Y2_N41
\disp0_1|reg|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|Banco_Registradores|registrador~30_combout\,
	sload => VCC,
	ena => \Processador|ROM|memROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(2));

-- Location: FF_X41_Y2_N38
\disp0_1|reg|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|Banco_Registradores|registrador~31_combout\,
	sload => VCC,
	ena => \Processador|ROM|memROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(1));

-- Location: FF_X41_Y2_N28
\disp0_1|reg|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|Banco_Registradores|registrador~28_combout\,
	sload => VCC,
	ena => \Processador|ROM|memROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(0));

-- Location: LABCELL_X41_Y2_N42
\disp0_1|disp0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[0]~0_combout\ = ( \disp0_1|reg|DOUT\(0) & ( (!\disp0_1|reg|DOUT\(3) & (!\disp0_1|reg|DOUT\(2) & !\disp0_1|reg|DOUT\(1))) # (\disp0_1|reg|DOUT\(3) & (!\disp0_1|reg|DOUT\(2) $ (!\disp0_1|reg|DOUT\(1)))) ) ) # ( 
-- !\disp0_1|reg|DOUT\(0) & ( (!\disp0_1|reg|DOUT\(3) & (\disp0_1|reg|DOUT\(2) & !\disp0_1|reg|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010010100100101001001010010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(3),
	datab => \disp0_1|reg|ALT_INV_DOUT\(2),
	datac => \disp0_1|reg|ALT_INV_DOUT\(1),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(0),
	combout => \disp0_1|disp0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X41_Y2_N51
\disp0_1|disp0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[1]~1_combout\ = ( \disp0_1|reg|DOUT\(0) & ( (!\disp0_1|reg|DOUT\(3) & (\disp0_1|reg|DOUT\(2) & !\disp0_1|reg|DOUT\(1))) # (\disp0_1|reg|DOUT\(3) & ((\disp0_1|reg|DOUT\(1)))) ) ) # ( !\disp0_1|reg|DOUT\(0) & ( 
-- (\disp0_1|reg|DOUT\(2) & ((\disp0_1|reg|DOUT\(1)) # (\disp0_1|reg|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001100100010010101010010001001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(3),
	datab => \disp0_1|reg|ALT_INV_DOUT\(2),
	datad => \disp0_1|reg|ALT_INV_DOUT\(1),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(0),
	combout => \disp0_1|disp0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y2_N39
\disp0_1|disp0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[2]~2_combout\ = ( \disp0_1|reg|DOUT\(1) & ( (!\disp0_1|reg|DOUT\(3) & (!\disp0_1|reg|DOUT\(0) & !\disp0_1|reg|DOUT\(2))) # (\disp0_1|reg|DOUT\(3) & ((\disp0_1|reg|DOUT\(2)))) ) ) # ( !\disp0_1|reg|DOUT\(1) & ( 
-- (\disp0_1|reg|DOUT\(3) & (!\disp0_1|reg|DOUT\(0) & \disp0_1|reg|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010001000010101011000100001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(3),
	datab => \disp0_1|reg|ALT_INV_DOUT\(0),
	datad => \disp0_1|reg|ALT_INV_DOUT\(2),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(1),
	combout => \disp0_1|disp0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X41_Y2_N45
\disp0_1|disp0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[3]~3_combout\ = ( \disp0_1|reg|DOUT\(0) & ( (!\disp0_1|reg|DOUT\(2) & (!\disp0_1|reg|DOUT\(3) & !\disp0_1|reg|DOUT\(1))) # (\disp0_1|reg|DOUT\(2) & ((\disp0_1|reg|DOUT\(1)))) ) ) # ( !\disp0_1|reg|DOUT\(0) & ( 
-- (!\disp0_1|reg|DOUT\(3) & (\disp0_1|reg|DOUT\(2) & !\disp0_1|reg|DOUT\(1))) # (\disp0_1|reg|DOUT\(3) & (!\disp0_1|reg|DOUT\(2) & \disp0_1|reg|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001000100001000100100010010001000001100111000100000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(3),
	datab => \disp0_1|reg|ALT_INV_DOUT\(2),
	datad => \disp0_1|reg|ALT_INV_DOUT\(1),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(0),
	combout => \disp0_1|disp0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y2_N54
\disp0_1|disp0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[4]~4_combout\ = ( \disp0_1|reg|DOUT\(0) & ( (!\disp0_1|reg|DOUT\(3)) # ((!\disp0_1|reg|DOUT\(2) & !\disp0_1|reg|DOUT\(1))) ) ) # ( !\disp0_1|reg|DOUT\(0) & ( (\disp0_1|reg|DOUT\(2) & (!\disp0_1|reg|DOUT\(3) & 
-- !\disp0_1|reg|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011111100111100001111110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \disp0_1|reg|ALT_INV_DOUT\(2),
	datac => \disp0_1|reg|ALT_INV_DOUT\(3),
	datad => \disp0_1|reg|ALT_INV_DOUT\(1),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(0),
	combout => \disp0_1|disp0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X41_Y2_N48
\disp0_1|disp0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[5]~5_combout\ = ( \disp0_1|reg|DOUT\(0) & ( !\disp0_1|reg|DOUT\(3) $ (((\disp0_1|reg|DOUT\(2) & !\disp0_1|reg|DOUT\(1)))) ) ) # ( !\disp0_1|reg|DOUT\(0) & ( (!\disp0_1|reg|DOUT\(3) & (!\disp0_1|reg|DOUT\(2) & 
-- \disp0_1|reg|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010011010100110101001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(3),
	datab => \disp0_1|reg|ALT_INV_DOUT\(2),
	datac => \disp0_1|reg|ALT_INV_DOUT\(1),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(0),
	combout => \disp0_1|disp0|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X41_Y2_N36
\disp0_1|disp0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[6]~6_combout\ = ( \disp0_1|reg|DOUT\(2) & ( (!\disp0_1|reg|DOUT\(3) & (\disp0_1|reg|DOUT\(0) & \disp0_1|reg|DOUT\(1))) # (\disp0_1|reg|DOUT\(3) & (!\disp0_1|reg|DOUT\(0) & !\disp0_1|reg|DOUT\(1))) ) ) # ( 
-- !\disp0_1|reg|DOUT\(2) & ( (!\disp0_1|reg|DOUT\(3) & !\disp0_1|reg|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000001000100001000100100010000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(3),
	datab => \disp0_1|reg|ALT_INV_DOUT\(0),
	datad => \disp0_1|reg|ALT_INV_DOUT\(1),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(2),
	combout => \disp0_1|disp0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X41_Y2_N15
\Processador|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|Add0~17_sumout\ = SUM(( \Processador|Banco_Registradores|registrador~32_combout\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[4]~input_o\))) ) + ( \Processador|ULA|Add0~6\ ))
-- \Processador|ULA|Add0~18\ = CARRY(( \Processador|Banco_Registradores|registrador~32_combout\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[4]~input_o\))) ) + ( \Processador|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~3_combout\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~32_combout\,
	dataf => \ALT_INV_SW[4]~input_o\,
	cin => \Processador|ULA|Add0~6\,
	sumout => \Processador|ULA|Add0~17_sumout\,
	cout => \Processador|ULA|Add0~18\);

-- Location: LABCELL_X39_Y2_N33
\Processador|Banco_Registradores|registrador~24feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~24feeder_combout\ = ( \Processador|ULA|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA|ALT_INV_Add0~17_sumout\,
	combout => \Processador|Banco_Registradores|registrador~24feeder_combout\);

-- Location: LABCELL_X39_Y2_N6
\Processador|Banco_Registradores|registrador~16feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~16feeder_combout\ = ( \Processador|ULA|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA|ALT_INV_Add0~17_sumout\,
	combout => \Processador|Banco_Registradores|registrador~16feeder_combout\);

-- Location: FF_X39_Y2_N8
\Processador|Banco_Registradores|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~16feeder_combout\,
	asdata => \Processador|ULA|saida~4_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~16_q\);

-- Location: LABCELL_X39_Y2_N18
\Processador|ULA|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~4_combout\ = ( \Processador|Banco_Registradores|registrador~24_q\ & ( \Processador|Banco_Registradores|registrador~16_q\ & ( (!\Processador|ROM|memROM~0_combout\) # ((!\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(2)) # 
-- (\Processador|PC|DOUT\(1)))) # (\Processador|PC|DOUT\(0) & ((\Processador|PC|DOUT\(2))))) ) ) ) # ( !\Processador|Banco_Registradores|registrador~24_q\ & ( \Processador|Banco_Registradores|registrador~16_q\ & ( (!\Processador|ROM|memROM~0_combout\) # 
-- (!\Processador|PC|DOUT\(2) $ (((\Processador|PC|DOUT\(0)) # (\Processador|PC|DOUT\(1))))) ) ) ) # ( \Processador|Banco_Registradores|registrador~24_q\ & ( !\Processador|Banco_Registradores|registrador~16_q\ & ( (\Processador|PC|DOUT\(1) & 
-- (!\Processador|PC|DOUT\(0) & (\Processador|ROM|memROM~0_combout\ & !\Processador|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000011111000111101111111110011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|PC|ALT_INV_DOUT\(0),
	datac => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	datae => \Processador|Banco_Registradores|ALT_INV_registrador~24_q\,
	dataf => \Processador|Banco_Registradores|ALT_INV_registrador~16_q\,
	combout => \Processador|ULA|saida~4_combout\);

-- Location: FF_X39_Y2_N34
\Processador|Banco_Registradores|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~24feeder_combout\,
	asdata => \Processador|ULA|saida~4_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~24_q\);

-- Location: FF_X39_Y2_N7
\Processador|Banco_Registradores|registrador~16DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~16feeder_combout\,
	asdata => \Processador|ULA|saida~4_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~16DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N57
\Processador|Banco_Registradores|registrador~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~32_combout\ = ( \Processador|PC|DOUT\(1) & ( (!\Processador|ROM|memROM~0_combout\ & (((\Processador|Banco_Registradores|registrador~16DUPLICATE_q\)))) # (\Processador|ROM|memROM~0_combout\ & 
-- ((!\Processador|PC|DOUT\(2) & (\Processador|Banco_Registradores|registrador~24_q\)) # (\Processador|PC|DOUT\(2) & ((\Processador|Banco_Registradores|registrador~16DUPLICATE_q\))))) ) ) # ( !\Processador|PC|DOUT\(1) & ( 
-- \Processador|Banco_Registradores|registrador~16DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|Banco_Registradores|ALT_INV_registrador~24_q\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~16DUPLICATE_q\,
	dataf => \Processador|PC|ALT_INV_DOUT\(1),
	combout => \Processador|Banco_Registradores|registrador~32_combout\);

-- Location: LABCELL_X41_Y2_N18
\Processador|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|Add0~29_sumout\ = SUM(( \Processador|Banco_Registradores|registrador~35_combout\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[5]~input_o\))) ) + ( \Processador|ULA|Add0~18\ ))
-- \Processador|ULA|Add0~30\ = CARRY(( \Processador|Banco_Registradores|registrador~35_combout\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[5]~input_o\))) ) + ( \Processador|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110111011100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~3_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datac => \Processador|Banco_Registradores|ALT_INV_registrador~35_combout\,
	dataf => \ALT_INV_SW[5]~input_o\,
	cin => \Processador|ULA|Add0~18\,
	sumout => \Processador|ULA|Add0~29_sumout\,
	cout => \Processador|ULA|Add0~30\);

-- Location: MLABCELL_X42_Y2_N51
\Processador|Banco_Registradores|registrador~17feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~17feeder_combout\ = ( \Processador|ULA|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA|ALT_INV_Add0~29_sumout\,
	combout => \Processador|Banco_Registradores|registrador~17feeder_combout\);

-- Location: MLABCELL_X42_Y2_N15
\Processador|Banco_Registradores|registrador~25feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~25feeder_combout\ = ( \Processador|ULA|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA|ALT_INV_Add0~29_sumout\,
	combout => \Processador|Banco_Registradores|registrador~25feeder_combout\);

-- Location: FF_X42_Y2_N16
\Processador|Banco_Registradores|registrador~25DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~25feeder_combout\,
	asdata => \Processador|ULA|saida~7_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~25DUPLICATE_q\);

-- Location: FF_X42_Y2_N53
\Processador|Banco_Registradores|registrador~17DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~17feeder_combout\,
	asdata => \Processador|ULA|saida~7_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~17DUPLICATE_q\);

-- Location: MLABCELL_X42_Y2_N54
\Processador|ULA|saida~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~7_combout\ = ( \Processador|Banco_Registradores|registrador~25DUPLICATE_q\ & ( \Processador|Banco_Registradores|registrador~17DUPLICATE_q\ & ( (!\Processador|ROM|memROM~0_combout\) # ((!\Processador|PC|DOUT\(0) & 
-- ((!\Processador|PC|DOUT\(2)) # (\Processador|PC|DOUT\(1)))) # (\Processador|PC|DOUT\(0) & ((\Processador|PC|DOUT\(2))))) ) ) ) # ( !\Processador|Banco_Registradores|registrador~25DUPLICATE_q\ & ( \Processador|Banco_Registradores|registrador~17DUPLICATE_q\ 
-- & ( (!\Processador|ROM|memROM~0_combout\) # (!\Processador|PC|DOUT\(2) $ (((\Processador|PC|DOUT\(0)) # (\Processador|PC|DOUT\(1))))) ) ) ) # ( \Processador|Banco_Registradores|registrador~25DUPLICATE_q\ & ( 
-- !\Processador|Banco_Registradores|registrador~17DUPLICATE_q\ & ( (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & \Processador|ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000011111111100001111111111111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|PC|ALT_INV_DOUT\(0),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datae => \Processador|Banco_Registradores|ALT_INV_registrador~25DUPLICATE_q\,
	dataf => \Processador|Banco_Registradores|ALT_INV_registrador~17DUPLICATE_q\,
	combout => \Processador|ULA|saida~7_combout\);

-- Location: FF_X42_Y2_N52
\Processador|Banco_Registradores|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~17feeder_combout\,
	asdata => \Processador|ULA|saida~7_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~17_q\);

-- Location: FF_X42_Y2_N17
\Processador|Banco_Registradores|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~25feeder_combout\,
	asdata => \Processador|ULA|saida~7_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~25_q\);

-- Location: MLABCELL_X42_Y2_N27
\Processador|Banco_Registradores|registrador~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~35_combout\ = ( \Processador|Banco_Registradores|registrador~25_q\ & ( ((!\Processador|PC|DOUT\(2) & (\Processador|ROM|memROM~0_combout\ & \Processador|PC|DOUT\(1)))) # 
-- (\Processador|Banco_Registradores|registrador~17_q\) ) ) # ( !\Processador|Banco_Registradores|registrador~25_q\ & ( (\Processador|Banco_Registradores|registrador~17_q\ & (((!\Processador|ROM|memROM~0_combout\) # (!\Processador|PC|DOUT\(1))) # 
-- (\Processador|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111101000000001111110100000010111111110000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(1),
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~17_q\,
	dataf => \Processador|Banco_Registradores|ALT_INV_registrador~25_q\,
	combout => \Processador|Banco_Registradores|registrador~35_combout\);

-- Location: FF_X42_Y2_N29
\disp0_1|reg|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~35_combout\,
	ena => \Processador|ROM|memROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(5));

-- Location: FF_X41_Y2_N20
\disp0_1|reg|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|Banco_Registradores|registrador~32_combout\,
	sload => VCC,
	ena => \Processador|ROM|memROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(4));

-- Location: LABCELL_X41_Y2_N21
\Processador|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|Add0~25_sumout\ = SUM(( \Processador|Banco_Registradores|registrador~34_combout\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[6]~input_o\))) ) + ( \Processador|ULA|Add0~30\ ))
-- \Processador|ULA|Add0~26\ = CARRY(( \Processador|Banco_Registradores|registrador~34_combout\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[6]~input_o\))) ) + ( \Processador|ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~3_combout\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~34_combout\,
	dataf => \ALT_INV_SW[6]~input_o\,
	cin => \Processador|ULA|Add0~30\,
	sumout => \Processador|ULA|Add0~25_sumout\,
	cout => \Processador|ULA|Add0~26\);

-- Location: MLABCELL_X42_Y2_N36
\Processador|Banco_Registradores|registrador~18feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~18feeder_combout\ = \Processador|ULA|Add0~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|ULA|ALT_INV_Add0~25_sumout\,
	combout => \Processador|Banco_Registradores|registrador~18feeder_combout\);

-- Location: MLABCELL_X42_Y2_N33
\Processador|Banco_Registradores|registrador~26feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~26feeder_combout\ = \Processador|ULA|Add0~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ULA|ALT_INV_Add0~25_sumout\,
	combout => \Processador|Banco_Registradores|registrador~26feeder_combout\);

-- Location: FF_X42_Y2_N34
\Processador|Banco_Registradores|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~26feeder_combout\,
	asdata => \Processador|ULA|saida~6_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~26_q\);

-- Location: MLABCELL_X42_Y2_N57
\Processador|ULA|saida~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~6_combout\ = ( \Processador|Banco_Registradores|registrador~26_q\ & ( \Processador|Banco_Registradores|registrador~18_q\ & ( (!\Processador|ROM|memROM~0_combout\) # ((!\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(2)) # 
-- (\Processador|PC|DOUT\(1)))) # (\Processador|PC|DOUT\(0) & ((\Processador|PC|DOUT\(2))))) ) ) ) # ( !\Processador|Banco_Registradores|registrador~26_q\ & ( \Processador|Banco_Registradores|registrador~18_q\ & ( (!\Processador|ROM|memROM~0_combout\) # 
-- (!\Processador|PC|DOUT\(2) $ (((\Processador|PC|DOUT\(0)) # (\Processador|PC|DOUT\(1))))) ) ) ) # ( \Processador|Banco_Registradores|registrador~26_q\ & ( !\Processador|Banco_Registradores|registrador~18_q\ & ( (\Processador|PC|DOUT\(1) & 
-- (!\Processador|PC|DOUT\(0) & (\Processador|ROM|memROM~0_combout\ & !\Processador|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000011111000111101111111110011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|PC|ALT_INV_DOUT\(0),
	datac => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	datae => \Processador|Banco_Registradores|ALT_INV_registrador~26_q\,
	dataf => \Processador|Banco_Registradores|ALT_INV_registrador~18_q\,
	combout => \Processador|ULA|saida~6_combout\);

-- Location: FF_X42_Y2_N38
\Processador|Banco_Registradores|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~18feeder_combout\,
	asdata => \Processador|ULA|saida~6_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~18_q\);

-- Location: MLABCELL_X42_Y2_N0
\Processador|Banco_Registradores|registrador~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~34_combout\ = ( \Processador|Banco_Registradores|registrador~18_q\ & ( \Processador|Banco_Registradores|registrador~26_q\ ) ) # ( !\Processador|Banco_Registradores|registrador~18_q\ & ( 
-- \Processador|Banco_Registradores|registrador~26_q\ & ( (!\Processador|PC|DOUT\(2) & (\Processador|ROM|memROM~0_combout\ & \Processador|PC|DOUT\(1))) ) ) ) # ( \Processador|Banco_Registradores|registrador~18_q\ & ( 
-- !\Processador|Banco_Registradores|registrador~26_q\ & ( ((!\Processador|ROM|memROM~0_combout\) # (!\Processador|PC|DOUT\(1))) # (\Processador|PC|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111011111110100000010000000101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(1),
	datae => \Processador|Banco_Registradores|ALT_INV_registrador~18_q\,
	dataf => \Processador|Banco_Registradores|ALT_INV_registrador~26_q\,
	combout => \Processador|Banco_Registradores|registrador~34_combout\);

-- Location: FF_X42_Y2_N2
\disp0_1|reg|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~34_combout\,
	ena => \Processador|ROM|memROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(6));

-- Location: LABCELL_X41_Y2_N24
\Processador|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|Add0~21_sumout\ = SUM(( (!\Processador|ROM|memROM~5_combout\ & (((!\Processador|ROM|memROM~3_combout\) # (!\SW[7]~input_o\)) # (\Processador|ROM|memROM~4_combout\))) ) + ( \Processador|Banco_Registradores|registrador~33_combout\ ) + ( 
-- \Processador|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100110011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~4_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~3_combout\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \Processador|Banco_Registradores|ALT_INV_registrador~33_combout\,
	cin => \Processador|ULA|Add0~26\,
	sumout => \Processador|ULA|Add0~21_sumout\);

-- Location: LABCELL_X39_Y2_N9
\Processador|Banco_Registradores|registrador~19feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~19feeder_combout\ = ( \Processador|ULA|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA|ALT_INV_Add0~21_sumout\,
	combout => \Processador|Banco_Registradores|registrador~19feeder_combout\);

-- Location: LABCELL_X39_Y2_N30
\Processador|Banco_Registradores|registrador~27feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~27feeder_combout\ = ( \Processador|ULA|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA|ALT_INV_Add0~21_sumout\,
	combout => \Processador|Banco_Registradores|registrador~27feeder_combout\);

-- Location: FF_X39_Y2_N31
\Processador|Banco_Registradores|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~27feeder_combout\,
	asdata => \Processador|ULA|saida~5_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~27_q\);

-- Location: FF_X39_Y2_N11
\Processador|Banco_Registradores|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~19feeder_combout\,
	asdata => \Processador|ULA|saida~5_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~19_q\);

-- Location: LABCELL_X39_Y2_N21
\Processador|ULA|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~5_combout\ = ( \Processador|Banco_Registradores|registrador~27_q\ & ( \Processador|Banco_Registradores|registrador~19_q\ & ( (!\Processador|ROM|memROM~0_combout\) # ((!\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(2)) # 
-- (\Processador|PC|DOUT\(1)))) # (\Processador|PC|DOUT\(0) & ((\Processador|PC|DOUT\(2))))) ) ) ) # ( !\Processador|Banco_Registradores|registrador~27_q\ & ( \Processador|Banco_Registradores|registrador~19_q\ & ( (!\Processador|ROM|memROM~0_combout\) # 
-- (!\Processador|PC|DOUT\(2) $ (((\Processador|PC|DOUT\(0)) # (\Processador|PC|DOUT\(1))))) ) ) ) # ( \Processador|Banco_Registradores|registrador~27_q\ & ( !\Processador|Banco_Registradores|registrador~19_q\ & ( (\Processador|PC|DOUT\(1) & 
-- (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & \Processador|ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000011111111100001111111111111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|PC|ALT_INV_DOUT\(0),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datae => \Processador|Banco_Registradores|ALT_INV_registrador~27_q\,
	dataf => \Processador|Banco_Registradores|ALT_INV_registrador~19_q\,
	combout => \Processador|ULA|saida~5_combout\);

-- Location: FF_X39_Y2_N10
\Processador|Banco_Registradores|registrador~19DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~19feeder_combout\,
	asdata => \Processador|ULA|saida~5_combout\,
	sload => \Processador|ROM|ALT_INV_memROM~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~19DUPLICATE_q\);

-- Location: MLABCELL_X42_Y2_N24
\Processador|Banco_Registradores|registrador~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~33_combout\ = ( \Processador|Banco_Registradores|registrador~27_q\ & ( ((!\Processador|PC|DOUT\(2) & (\Processador|ROM|memROM~0_combout\ & \Processador|PC|DOUT\(1)))) # 
-- (\Processador|Banco_Registradores|registrador~19DUPLICATE_q\) ) ) # ( !\Processador|Banco_Registradores|registrador~27_q\ & ( (\Processador|Banco_Registradores|registrador~19DUPLICATE_q\ & (((!\Processador|ROM|memROM~0_combout\) # 
-- (!\Processador|PC|DOUT\(1))) # (\Processador|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001101000011110000110100001111001011110000111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datac => \Processador|Banco_Registradores|ALT_INV_registrador~19DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	dataf => \Processador|Banco_Registradores|ALT_INV_registrador~27_q\,
	combout => \Processador|Banco_Registradores|registrador~33_combout\);

-- Location: FF_X42_Y2_N26
\disp0_1|reg|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|Banco_Registradores|registrador~33_combout\,
	ena => \Processador|ROM|memROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(7));

-- Location: MLABCELL_X42_Y2_N9
\disp0_1|disp1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[0]~0_combout\ = ( \disp0_1|reg|DOUT\(7) & ( (\disp0_1|reg|DOUT\(4) & (!\disp0_1|reg|DOUT\(5) $ (!\disp0_1|reg|DOUT\(6)))) ) ) # ( !\disp0_1|reg|DOUT\(7) & ( (!\disp0_1|reg|DOUT\(5) & (!\disp0_1|reg|DOUT\(4) $ 
-- (!\disp0_1|reg|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100000010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(5),
	datab => \disp0_1|reg|ALT_INV_DOUT\(4),
	datad => \disp0_1|reg|ALT_INV_DOUT\(6),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(7),
	combout => \disp0_1|disp1|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y2_N12
\disp0_1|disp1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[1]~1_combout\ = ( \disp0_1|reg|DOUT\(7) & ( (!\disp0_1|reg|DOUT\(4) & (\disp0_1|reg|DOUT\(6))) # (\disp0_1|reg|DOUT\(4) & ((\disp0_1|reg|DOUT\(5)))) ) ) # ( !\disp0_1|reg|DOUT\(7) & ( (\disp0_1|reg|DOUT\(6) & 
-- (!\disp0_1|reg|DOUT\(4) $ (!\disp0_1|reg|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(6),
	datab => \disp0_1|reg|ALT_INV_DOUT\(4),
	datac => \disp0_1|reg|ALT_INV_DOUT\(5),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(7),
	combout => \disp0_1|disp1|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y2_N6
\disp0_1|disp1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[2]~2_combout\ = ( \disp0_1|reg|DOUT\(7) & ( (\disp0_1|reg|DOUT\(6) & ((!\disp0_1|reg|DOUT\(4)) # (\disp0_1|reg|DOUT\(5)))) ) ) # ( !\disp0_1|reg|DOUT\(7) & ( (\disp0_1|reg|DOUT\(5) & (!\disp0_1|reg|DOUT\(4) & 
-- !\disp0_1|reg|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(5),
	datab => \disp0_1|reg|ALT_INV_DOUT\(4),
	datac => \disp0_1|reg|ALT_INV_DOUT\(6),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(7),
	combout => \disp0_1|disp1|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y2_N42
\disp0_1|disp1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[3]~3_combout\ = ( \disp0_1|reg|DOUT\(7) & ( (\disp0_1|reg|DOUT\(5) & (!\disp0_1|reg|DOUT\(4) $ (\disp0_1|reg|DOUT\(6)))) ) ) # ( !\disp0_1|reg|DOUT\(7) & ( (!\disp0_1|reg|DOUT\(4) & (!\disp0_1|reg|DOUT\(5) & 
-- \disp0_1|reg|DOUT\(6))) # (\disp0_1|reg|DOUT\(4) & (!\disp0_1|reg|DOUT\(5) $ (\disp0_1|reg|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000011001100001100001100001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \disp0_1|reg|ALT_INV_DOUT\(4),
	datac => \disp0_1|reg|ALT_INV_DOUT\(5),
	datad => \disp0_1|reg|ALT_INV_DOUT\(6),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(7),
	combout => \disp0_1|disp1|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y2_N39
\disp0_1|disp1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[4]~4_combout\ = ( \disp0_1|reg|DOUT\(7) & ( (!\disp0_1|reg|DOUT\(6) & (\disp0_1|reg|DOUT\(4) & !\disp0_1|reg|DOUT\(5))) ) ) # ( !\disp0_1|reg|DOUT\(7) & ( ((\disp0_1|reg|DOUT\(6) & !\disp0_1|reg|DOUT\(5))) # 
-- (\disp0_1|reg|DOUT\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(6),
	datac => \disp0_1|reg|ALT_INV_DOUT\(4),
	datad => \disp0_1|reg|ALT_INV_DOUT\(5),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(7),
	combout => \disp0_1|disp1|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y2_N21
\disp0_1|disp1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[5]~5_combout\ = ( \disp0_1|reg|DOUT\(7) & ( (!\disp0_1|reg|DOUT\(5) & (\disp0_1|reg|DOUT\(4) & \disp0_1|reg|DOUT\(6))) ) ) # ( !\disp0_1|reg|DOUT\(7) & ( (!\disp0_1|reg|DOUT\(5) & (\disp0_1|reg|DOUT\(4) & 
-- !\disp0_1|reg|DOUT\(6))) # (\disp0_1|reg|DOUT\(5) & ((!\disp0_1|reg|DOUT\(6)) # (\disp0_1|reg|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101010111110000010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(5),
	datac => \disp0_1|reg|ALT_INV_DOUT\(4),
	datad => \disp0_1|reg|ALT_INV_DOUT\(6),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(7),
	combout => \disp0_1|disp1|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y2_N18
\disp0_1|disp1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[6]~6_combout\ = ( \disp0_1|reg|DOUT\(7) & ( (!\disp0_1|reg|DOUT\(4) & (\disp0_1|reg|DOUT\(6) & !\disp0_1|reg|DOUT\(5))) ) ) # ( !\disp0_1|reg|DOUT\(7) & ( (!\disp0_1|reg|DOUT\(6) & ((!\disp0_1|reg|DOUT\(5)))) # 
-- (\disp0_1|reg|DOUT\(6) & (\disp0_1|reg|DOUT\(4) & \disp0_1|reg|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000011111100000000001100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \disp0_1|reg|ALT_INV_DOUT\(4),
	datac => \disp0_1|reg|ALT_INV_DOUT\(6),
	datad => \disp0_1|reg|ALT_INV_DOUT\(5),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(7),
	combout => \disp0_1|disp1|rascSaida7seg[6]~6_combout\);

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
END structure;


