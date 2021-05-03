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

-- DATE "05/02/2021 21:31:25"

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
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END calculadora;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \Processador|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|incremento|Add0~2\ : std_logic;
SIGNAL \Processador|incremento|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|incremento|Add0~6\ : std_logic;
SIGNAL \Processador|incremento|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|MUX_proxPC|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \Processador|incremento|Add0~10\ : std_logic;
SIGNAL \Processador|incremento|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|incremento|Add0~14\ : std_logic;
SIGNAL \Processador|incremento|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|incremento|Add0~18\ : std_logic;
SIGNAL \Processador|incremento|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|incremento|Add0~22\ : std_logic;
SIGNAL \Processador|incremento|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|incremento|Add0~26\ : std_logic;
SIGNAL \Processador|incremento|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|ROM|memROM~0_combout\ : std_logic;
SIGNAL \Processador|MUX_proxPC|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
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
SIGNAL \Processador|ULA|saida~0_combout\ : std_logic;
SIGNAL \Processador|UC|Equal8~0_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~12_q\ : std_logic;
SIGNAL \Decoder|habilitaDisplay0_1~0_combout\ : std_logic;
SIGNAL \Processador|ULA|saida~2_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~14_q\ : std_logic;
SIGNAL \Processador|ULA|saida~3_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~13_q\ : std_logic;
SIGNAL \disp0_1|reg|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \Processador|ULA|saida~1_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~15_q\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \Processador|ULA|saida~6_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~18_q\ : std_logic;
SIGNAL \Processador|ULA|saida~4_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~16_q\ : std_logic;
SIGNAL \Processador|ULA|saida~7_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~17_q\ : std_logic;
SIGNAL \Processador|ULA|saida~5_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~19_q\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \disp0_1|reg|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \disp0_1|reg|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|incremento|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Processador|incremento|ALT_INV_Add0~5_sumout\ : std_logic;

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
\Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[2]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\Processador|Banco_Registradores|ALT_INV_registrador~13_q\ <= NOT \Processador|Banco_Registradores|registrador~13_q\;
\Processador|ROM|ALT_INV_memROM~0_combout\ <= NOT \Processador|ROM|memROM~0_combout\;
\disp0_1|reg|ALT_INV_DOUT\(5) <= NOT \disp0_1|reg|DOUT\(5);
\disp0_1|reg|ALT_INV_DOUT\(6) <= NOT \disp0_1|reg|DOUT\(6);
\disp0_1|reg|ALT_INV_DOUT\(7) <= NOT \disp0_1|reg|DOUT\(7);
\disp0_1|reg|ALT_INV_DOUT\(4) <= NOT \disp0_1|reg|DOUT\(4);
\disp0_1|reg|ALT_INV_DOUT\(1) <= NOT \disp0_1|reg|DOUT\(1);
\disp0_1|reg|ALT_INV_DOUT\(2) <= NOT \disp0_1|reg|DOUT\(2);
\disp0_1|reg|ALT_INV_DOUT\(3) <= NOT \disp0_1|reg|DOUT\(3);
\disp0_1|reg|ALT_INV_DOUT\(0) <= NOT \disp0_1|reg|DOUT\(0);
\Processador|PC|ALT_INV_DOUT\(7) <= NOT \Processador|PC|DOUT\(7);
\Processador|PC|ALT_INV_DOUT\(6) <= NOT \Processador|PC|DOUT\(6);
\Processador|PC|ALT_INV_DOUT\(5) <= NOT \Processador|PC|DOUT\(5);
\Processador|PC|ALT_INV_DOUT\(4) <= NOT \Processador|PC|DOUT\(4);
\Processador|PC|ALT_INV_DOUT\(3) <= NOT \Processador|PC|DOUT\(3);
\Processador|PC|ALT_INV_DOUT\(2) <= NOT \Processador|PC|DOUT\(2);
\Processador|PC|ALT_INV_DOUT\(1) <= NOT \Processador|PC|DOUT\(1);
\Processador|PC|ALT_INV_DOUT\(0) <= NOT \Processador|PC|DOUT\(0);
\Processador|incremento|ALT_INV_Add0~9_sumout\ <= NOT \Processador|incremento|Add0~9_sumout\;
\Processador|incremento|ALT_INV_Add0~5_sumout\ <= NOT \Processador|incremento|Add0~5_sumout\;

-- Location: IOOBUF_X12_Y0_N2
\PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC(0));

-- Location: IOOBUF_X11_Y0_N53
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
	i => \Processador|PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC(2));

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X12_Y0_N19
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

-- Location: IOOBUF_X14_Y0_N53
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

-- Location: IOOBUF_X54_Y14_N96
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

-- Location: FF_X21_Y1_N32
\Processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(0));

-- Location: LABCELL_X21_Y1_N30
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

-- Location: FF_X21_Y1_N31
\Processador|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X21_Y1_N33
\Processador|incremento|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~5_sumout\ = SUM(( \Processador|PC|DOUT\(1) ) + ( GND ) + ( \Processador|incremento|Add0~2\ ))
-- \Processador|incremento|Add0~6\ = CARRY(( \Processador|PC|DOUT\(1) ) + ( GND ) + ( \Processador|incremento|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	cin => \Processador|incremento|Add0~2\,
	sumout => \Processador|incremento|Add0~5_sumout\,
	cout => \Processador|incremento|Add0~6\);

-- Location: LABCELL_X21_Y1_N36
\Processador|incremento|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~9_sumout\ = SUM(( \Processador|PC|DOUT\(2) ) + ( GND ) + ( \Processador|incremento|Add0~6\ ))
-- \Processador|incremento|Add0~10\ = CARRY(( \Processador|PC|DOUT\(2) ) + ( GND ) + ( \Processador|incremento|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	cin => \Processador|incremento|Add0~6\,
	sumout => \Processador|incremento|Add0~9_sumout\,
	cout => \Processador|incremento|Add0~10\);

-- Location: LABCELL_X21_Y1_N3
\Processador|MUX_proxPC|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_proxPC|saida_MUX[2]~1_combout\ = ( \Processador|PC|DOUT[0]~DUPLICATE_q\ & ( (\Processador|incremento|Add0~9_sumout\ & ((!\Processador|ROM|memROM~0_combout\) # (!\Processador|PC|DOUT\(2)))) ) ) # ( !\Processador|PC|DOUT[0]~DUPLICATE_q\ & ( 
-- \Processador|incremento|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010100000101010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|incremento|ALT_INV_Add0~9_sumout\,
	datac => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	dataf => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \Processador|MUX_proxPC|saida_MUX[2]~1_combout\);

-- Location: FF_X21_Y1_N4
\Processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|MUX_proxPC|saida_MUX[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(2));

-- Location: LABCELL_X21_Y1_N39
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

-- Location: FF_X21_Y1_N40
\Processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(3));

-- Location: LABCELL_X21_Y1_N42
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

-- Location: FF_X21_Y1_N44
\Processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(4));

-- Location: LABCELL_X21_Y1_N45
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

-- Location: FF_X21_Y1_N46
\Processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(5));

-- Location: LABCELL_X21_Y1_N48
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

-- Location: FF_X21_Y1_N50
\Processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(6));

-- Location: LABCELL_X21_Y1_N51
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

-- Location: FF_X21_Y1_N52
\Processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(7));

-- Location: LABCELL_X21_Y1_N6
\Processador|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~0_combout\ = ( !\Processador|PC|DOUT\(7) & ( !\Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(1) & !\Processador|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(1),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	datae => \Processador|PC|ALT_INV_DOUT\(7),
	dataf => \Processador|PC|ALT_INV_DOUT\(5),
	combout => \Processador|ROM|memROM~0_combout\);

-- Location: LABCELL_X21_Y1_N0
\Processador|MUX_proxPC|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_proxPC|saida_MUX[1]~0_combout\ = ( \Processador|PC|DOUT\(2) & ( (\Processador|incremento|Add0~5_sumout\ & ((!\Processador|PC|DOUT\(0)) # (!\Processador|ROM|memROM~0_combout\))) ) ) # ( !\Processador|PC|DOUT\(2) & ( 
-- \Processador|incremento|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(0),
	datac => \Processador|incremento|ALT_INV_Add0~5_sumout\,
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	dataf => \Processador|PC|ALT_INV_DOUT\(2),
	combout => \Processador|MUX_proxPC|saida_MUX[1]~0_combout\);

-- Location: FF_X21_Y1_N1
\Processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|MUX_proxPC|saida_MUX[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(1));

-- Location: FF_X21_Y1_N5
\Processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|MUX_proxPC|saida_MUX[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X21_Y1_N49
\Processador|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|incremento|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[6]~DUPLICATE_q\);

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

-- Location: LABCELL_X43_Y1_N0
\Processador|ULA|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~0_combout\ = ( \Processador|PC|DOUT[0]~DUPLICATE_q\ & ( (\SW[0]~input_o\ & (\Processador|ROM|memROM~0_combout\ & !\Processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000001000000000000000000000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datac => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \Processador|ULA|saida~0_combout\);

-- Location: LABCELL_X43_Y1_N9
\Processador|UC|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|UC|Equal8~0_combout\ = ( \Processador|PC|DOUT[2]~DUPLICATE_q\ & ( (!\Processador|PC|DOUT[0]~DUPLICATE_q\) # (!\Processador|ROM|memROM~0_combout\) ) ) # ( !\Processador|PC|DOUT[2]~DUPLICATE_q\ & ( (!\Processador|ROM|memROM~0_combout\) # 
-- (\Processador|PC|DOUT[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \Processador|ROM|ALT_INV_memROM~0_combout\,
	dataf => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \Processador|UC|Equal8~0_combout\);

-- Location: FF_X43_Y1_N10
\Processador|Banco_Registradores|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|ULA|saida~0_combout\,
	sload => VCC,
	ena => \Processador|UC|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~12_q\);

-- Location: LABCELL_X43_Y1_N45
\Decoder|habilitaDisplay0_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|habilitaDisplay0_1~0_combout\ = (!\Processador|PC|DOUT[2]~DUPLICATE_q\ & (\Processador|ROM|memROM~0_combout\ & !\Processador|PC|DOUT[0]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datad => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \Decoder|habilitaDisplay0_1~0_combout\);

-- Location: FF_X43_Y1_N4
\disp0_1|reg|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|Banco_Registradores|registrador~12_q\,
	sload => VCC,
	ena => \Decoder|habilitaDisplay0_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(0));

-- Location: LABCELL_X43_Y1_N33
\Processador|ULA|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~2_combout\ = ( \Processador|ROM|memROM~0_combout\ & ( (\Processador|PC|DOUT[0]~DUPLICATE_q\ & (\SW[2]~input_o\ & !\Processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|ULA|saida~2_combout\);

-- Location: FF_X43_Y1_N35
\Processador|Banco_Registradores|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|ULA|saida~2_combout\,
	ena => \Processador|UC|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~14_q\);

-- Location: FF_X43_Y1_N37
\disp0_1|reg|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|Banco_Registradores|registrador~14_q\,
	sload => VCC,
	ena => \Decoder|habilitaDisplay0_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(2));

-- Location: LABCELL_X43_Y1_N51
\Processador|ULA|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~3_combout\ = ( \SW[1]~input_o\ & ( (!\Processador|PC|DOUT[2]~DUPLICATE_q\ & (\Processador|ROM|memROM~0_combout\ & \Processador|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datad => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \Processador|ULA|saida~3_combout\);

-- Location: FF_X43_Y1_N52
\Processador|Banco_Registradores|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|ULA|saida~3_combout\,
	ena => \Processador|UC|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~13_q\);

-- Location: LABCELL_X44_Y1_N39
\disp0_1|reg|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|reg|DOUT[1]~feeder_combout\ = ( \Processador|Banco_Registradores|registrador~13_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|Banco_Registradores|ALT_INV_registrador~13_q\,
	combout => \disp0_1|reg|DOUT[1]~feeder_combout\);

-- Location: FF_X44_Y1_N40
\disp0_1|reg|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \disp0_1|reg|DOUT[1]~feeder_combout\,
	ena => \Decoder|habilitaDisplay0_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(1));

-- Location: LABCELL_X43_Y1_N6
\Processador|ULA|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~1_combout\ = ( !\Processador|PC|DOUT[2]~DUPLICATE_q\ & ( (\Processador|PC|DOUT[0]~DUPLICATE_q\ & (\Processador|ROM|memROM~0_combout\ & \SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \Processador|ULA|saida~1_combout\);

-- Location: FF_X43_Y1_N7
\Processador|Banco_Registradores|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|ULA|saida~1_combout\,
	ena => \Processador|UC|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~15_q\);

-- Location: FF_X44_Y1_N35
\disp0_1|reg|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|Banco_Registradores|registrador~15_q\,
	sload => VCC,
	ena => \Decoder|habilitaDisplay0_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(3));

-- Location: LABCELL_X44_Y1_N42
\disp0_1|disp0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[0]~0_combout\ = ( \disp0_1|reg|DOUT\(1) & ( \disp0_1|reg|DOUT\(3) & ( (\disp0_1|reg|DOUT\(0) & !\disp0_1|reg|DOUT\(2)) ) ) ) # ( !\disp0_1|reg|DOUT\(1) & ( \disp0_1|reg|DOUT\(3) & ( (\disp0_1|reg|DOUT\(0) & 
-- \disp0_1|reg|DOUT\(2)) ) ) ) # ( !\disp0_1|reg|DOUT\(1) & ( !\disp0_1|reg|DOUT\(3) & ( !\disp0_1|reg|DOUT\(0) $ (!\disp0_1|reg|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000000000000000000011000000110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \disp0_1|reg|ALT_INV_DOUT\(0),
	datac => \disp0_1|reg|ALT_INV_DOUT\(2),
	datae => \disp0_1|reg|ALT_INV_DOUT\(1),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(3),
	combout => \disp0_1|disp0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X44_Y1_N48
\disp0_1|disp0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[1]~1_combout\ = ( \disp0_1|reg|DOUT\(1) & ( \disp0_1|reg|DOUT\(3) & ( (\disp0_1|reg|DOUT\(2)) # (\disp0_1|reg|DOUT\(0)) ) ) ) # ( !\disp0_1|reg|DOUT\(1) & ( \disp0_1|reg|DOUT\(3) & ( (!\disp0_1|reg|DOUT\(0) & 
-- \disp0_1|reg|DOUT\(2)) ) ) ) # ( \disp0_1|reg|DOUT\(1) & ( !\disp0_1|reg|DOUT\(3) & ( (!\disp0_1|reg|DOUT\(0) & \disp0_1|reg|DOUT\(2)) ) ) ) # ( !\disp0_1|reg|DOUT\(1) & ( !\disp0_1|reg|DOUT\(3) & ( (\disp0_1|reg|DOUT\(0) & \disp0_1|reg|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011000000110000001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \disp0_1|reg|ALT_INV_DOUT\(0),
	datac => \disp0_1|reg|ALT_INV_DOUT\(2),
	datae => \disp0_1|reg|ALT_INV_DOUT\(1),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(3),
	combout => \disp0_1|disp0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X44_Y1_N30
\disp0_1|disp0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[2]~2_combout\ = ( \disp0_1|reg|DOUT\(1) & ( \disp0_1|reg|DOUT\(3) & ( \disp0_1|reg|DOUT\(2) ) ) ) # ( !\disp0_1|reg|DOUT\(1) & ( \disp0_1|reg|DOUT\(3) & ( (!\disp0_1|reg|DOUT\(0) & \disp0_1|reg|DOUT\(2)) ) ) ) # ( 
-- \disp0_1|reg|DOUT\(1) & ( !\disp0_1|reg|DOUT\(3) & ( (!\disp0_1|reg|DOUT\(0) & !\disp0_1|reg|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000001100000011000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \disp0_1|reg|ALT_INV_DOUT\(0),
	datac => \disp0_1|reg|ALT_INV_DOUT\(2),
	datae => \disp0_1|reg|ALT_INV_DOUT\(1),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(3),
	combout => \disp0_1|disp0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X44_Y1_N27
\disp0_1|disp0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[3]~3_combout\ = ( \disp0_1|reg|DOUT\(1) & ( \disp0_1|reg|DOUT\(3) & ( !\disp0_1|reg|DOUT\(2) $ (\disp0_1|reg|DOUT\(0)) ) ) ) # ( \disp0_1|reg|DOUT\(1) & ( !\disp0_1|reg|DOUT\(3) & ( (\disp0_1|reg|DOUT\(2) & 
-- \disp0_1|reg|DOUT\(0)) ) ) ) # ( !\disp0_1|reg|DOUT\(1) & ( !\disp0_1|reg|DOUT\(3) & ( !\disp0_1|reg|DOUT\(2) $ (!\disp0_1|reg|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000001010000010100000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(2),
	datac => \disp0_1|reg|ALT_INV_DOUT\(0),
	datae => \disp0_1|reg|ALT_INV_DOUT\(1),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(3),
	combout => \disp0_1|disp0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X44_Y1_N3
\disp0_1|disp0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[4]~4_combout\ = ( \disp0_1|reg|DOUT\(3) & ( (!\disp0_1|reg|DOUT\(2) & (\disp0_1|reg|DOUT\(0) & !\disp0_1|reg|DOUT\(1))) ) ) # ( !\disp0_1|reg|DOUT\(3) & ( ((\disp0_1|reg|DOUT\(2) & !\disp0_1|reg|DOUT\(1))) # 
-- (\disp0_1|reg|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(2),
	datac => \disp0_1|reg|ALT_INV_DOUT\(0),
	datad => \disp0_1|reg|ALT_INV_DOUT\(1),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(3),
	combout => \disp0_1|disp0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X44_Y1_N6
\disp0_1|disp0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[5]~5_combout\ = ( \disp0_1|reg|DOUT\(0) & ( !\disp0_1|reg|DOUT\(3) $ (((\disp0_1|reg|DOUT\(2) & !\disp0_1|reg|DOUT\(1)))) ) ) # ( !\disp0_1|reg|DOUT\(0) & ( (!\disp0_1|reg|DOUT\(2) & (\disp0_1|reg|DOUT\(1) & 
-- !\disp0_1|reg|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010110100101101001011010010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(2),
	datab => \disp0_1|reg|ALT_INV_DOUT\(1),
	datac => \disp0_1|reg|ALT_INV_DOUT\(3),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(0),
	combout => \disp0_1|disp0|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X44_Y1_N9
\disp0_1|disp0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[6]~6_combout\ = ( \disp0_1|reg|DOUT\(3) & ( (\disp0_1|reg|DOUT\(2) & (!\disp0_1|reg|DOUT\(1) & !\disp0_1|reg|DOUT\(0))) ) ) # ( !\disp0_1|reg|DOUT\(3) & ( (!\disp0_1|reg|DOUT\(2) & (!\disp0_1|reg|DOUT\(1))) # 
-- (\disp0_1|reg|DOUT\(2) & (\disp0_1|reg|DOUT\(1) & \disp0_1|reg|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100110001001100010011000100101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(2),
	datab => \disp0_1|reg|ALT_INV_DOUT\(1),
	datac => \disp0_1|reg|ALT_INV_DOUT\(0),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(3),
	combout => \disp0_1|disp0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X43_Y1_N48
\Processador|ULA|saida~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~6_combout\ = ( \SW[6]~input_o\ & ( (\Processador|ROM|memROM~0_combout\ & (!\Processador|PC|DOUT[2]~DUPLICATE_q\ & \Processador|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datac => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \Processador|ULA|saida~6_combout\);

-- Location: FF_X43_Y1_N50
\Processador|Banco_Registradores|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|ULA|saida~6_combout\,
	ena => \Processador|UC|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~18_q\);

-- Location: FF_X43_Y1_N17
\disp0_1|reg|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|Banco_Registradores|registrador~18_q\,
	sload => VCC,
	ena => \Decoder|habilitaDisplay0_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(6));

-- Location: LABCELL_X43_Y1_N24
\Processador|ULA|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~4_combout\ = ( \SW[4]~input_o\ & ( (\Processador|ROM|memROM~0_combout\ & (!\Processador|PC|DOUT[2]~DUPLICATE_q\ & \Processador|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datac => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \Processador|ULA|saida~4_combout\);

-- Location: FF_X43_Y1_N26
\Processador|Banco_Registradores|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|ULA|saida~4_combout\,
	ena => \Processador|UC|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~16_q\);

-- Location: FF_X43_Y1_N2
\disp0_1|reg|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|Banco_Registradores|registrador~16_q\,
	sload => VCC,
	ena => \Decoder|habilitaDisplay0_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(4));

-- Location: LABCELL_X43_Y1_N42
\Processador|ULA|saida~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~7_combout\ = ( \SW[5]~input_o\ & ( (!\Processador|PC|DOUT[2]~DUPLICATE_q\ & (\Processador|ROM|memROM~0_combout\ & \Processador|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datac => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \Processador|ULA|saida~7_combout\);

-- Location: FF_X43_Y1_N43
\Processador|Banco_Registradores|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|ULA|saida~7_combout\,
	ena => \Processador|UC|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~17_q\);

-- Location: FF_X44_Y1_N20
\disp0_1|reg|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|Banco_Registradores|registrador~17_q\,
	sload => VCC,
	ena => \Decoder|habilitaDisplay0_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(5));

-- Location: LABCELL_X43_Y1_N27
\Processador|ULA|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~5_combout\ = ( \SW[7]~input_o\ & ( (!\Processador|PC|DOUT[2]~DUPLICATE_q\ & (\Processador|ROM|memROM~0_combout\ & \Processador|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datad => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \Processador|ULA|saida~5_combout\);

-- Location: FF_X43_Y1_N28
\Processador|Banco_Registradores|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|ULA|saida~5_combout\,
	ena => \Processador|UC|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~19_q\);

-- Location: FF_X44_Y1_N17
\disp0_1|reg|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|Banco_Registradores|registrador~19_q\,
	sload => VCC,
	ena => \Decoder|habilitaDisplay0_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(7));

-- Location: LABCELL_X44_Y1_N18
\disp0_1|disp1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[0]~0_combout\ = ( \disp0_1|reg|DOUT\(5) & ( \disp0_1|reg|DOUT\(7) & ( (!\disp0_1|reg|DOUT\(6) & \disp0_1|reg|DOUT\(4)) ) ) ) # ( !\disp0_1|reg|DOUT\(5) & ( \disp0_1|reg|DOUT\(7) & ( (\disp0_1|reg|DOUT\(6) & 
-- \disp0_1|reg|DOUT\(4)) ) ) ) # ( !\disp0_1|reg|DOUT\(5) & ( !\disp0_1|reg|DOUT\(7) & ( !\disp0_1|reg|DOUT\(6) $ (!\disp0_1|reg|DOUT\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100000000000000000000000000001100110000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \disp0_1|reg|ALT_INV_DOUT\(6),
	datad => \disp0_1|reg|ALT_INV_DOUT\(4),
	datae => \disp0_1|reg|ALT_INV_DOUT\(5),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(7),
	combout => \disp0_1|disp1|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y1_N21
\disp0_1|disp1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[1]~1_combout\ = ( \disp0_1|reg|DOUT\(4) & ( (!\disp0_1|reg|DOUT\(7) & (!\disp0_1|reg|DOUT\(5) & \disp0_1|reg|DOUT\(6))) # (\disp0_1|reg|DOUT\(7) & (\disp0_1|reg|DOUT\(5))) ) ) # ( !\disp0_1|reg|DOUT\(4) & ( 
-- (\disp0_1|reg|DOUT\(6) & ((\disp0_1|reg|DOUT\(5)) # (\disp0_1|reg|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000110010001100100000111000001110001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(7),
	datab => \disp0_1|reg|ALT_INV_DOUT\(5),
	datac => \disp0_1|reg|ALT_INV_DOUT\(6),
	datae => \disp0_1|reg|ALT_INV_DOUT\(4),
	combout => \disp0_1|disp1|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X44_Y1_N0
\disp0_1|disp1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[2]~2_combout\ = ( \disp0_1|reg|DOUT\(7) & ( (\disp0_1|reg|DOUT\(6) & ((!\disp0_1|reg|DOUT\(4)) # (\disp0_1|reg|DOUT\(5)))) ) ) # ( !\disp0_1|reg|DOUT\(7) & ( (!\disp0_1|reg|DOUT\(6) & (\disp0_1|reg|DOUT\(5) & 
-- !\disp0_1|reg|DOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000110011000000110011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \disp0_1|reg|ALT_INV_DOUT\(6),
	datac => \disp0_1|reg|ALT_INV_DOUT\(5),
	datad => \disp0_1|reg|ALT_INV_DOUT\(4),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(7),
	combout => \disp0_1|disp1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X43_Y1_N15
\disp0_1|disp1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[3]~3_combout\ = ( \disp0_1|reg|DOUT\(6) & ( (!\disp0_1|reg|DOUT\(4) & (!\disp0_1|reg|DOUT\(5) & !\disp0_1|reg|DOUT\(7))) # (\disp0_1|reg|DOUT\(4) & (\disp0_1|reg|DOUT\(5))) ) ) # ( !\disp0_1|reg|DOUT\(6) & ( 
-- (!\disp0_1|reg|DOUT\(4) & (\disp0_1|reg|DOUT\(5) & \disp0_1|reg|DOUT\(7))) # (\disp0_1|reg|DOUT\(4) & (!\disp0_1|reg|DOUT\(5) & !\disp0_1|reg|DOUT\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010101001010000010101010000000010101010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(4),
	datac => \disp0_1|reg|ALT_INV_DOUT\(5),
	datad => \disp0_1|reg|ALT_INV_DOUT\(7),
	datae => \disp0_1|reg|ALT_INV_DOUT\(6),
	combout => \disp0_1|disp1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X43_Y1_N57
\disp0_1|disp1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[4]~4_combout\ = ( \disp0_1|reg|DOUT\(4) & ( (!\disp0_1|reg|DOUT\(7)) # ((!\disp0_1|reg|DOUT\(5) & !\disp0_1|reg|DOUT\(6))) ) ) # ( !\disp0_1|reg|DOUT\(4) & ( (!\disp0_1|reg|DOUT\(7) & (!\disp0_1|reg|DOUT\(5) & 
-- \disp0_1|reg|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000111010101110101000001000000010001110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(7),
	datab => \disp0_1|reg|ALT_INV_DOUT\(5),
	datac => \disp0_1|reg|ALT_INV_DOUT\(6),
	datae => \disp0_1|reg|ALT_INV_DOUT\(4),
	combout => \disp0_1|disp1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X43_Y1_N30
\disp0_1|disp1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[5]~5_combout\ = ( \disp0_1|reg|DOUT\(5) & ( (!\disp0_1|reg|DOUT\(7) & ((!\disp0_1|reg|DOUT\(6)) # (\disp0_1|reg|DOUT\(4)))) ) ) # ( !\disp0_1|reg|DOUT\(5) & ( (\disp0_1|reg|DOUT\(4) & (!\disp0_1|reg|DOUT\(6) $ 
-- (\disp0_1|reg|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001111001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \disp0_1|reg|ALT_INV_DOUT\(6),
	datac => \disp0_1|reg|ALT_INV_DOUT\(4),
	datad => \disp0_1|reg|ALT_INV_DOUT\(7),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(5),
	combout => \disp0_1|disp1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X44_Y1_N15
\disp0_1|disp1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[6]~6_combout\ = ( !\disp0_1|reg|DOUT\(7) & ( \disp0_1|reg|DOUT\(5) & ( (\disp0_1|reg|DOUT\(4) & \disp0_1|reg|DOUT\(6)) ) ) ) # ( \disp0_1|reg|DOUT\(7) & ( !\disp0_1|reg|DOUT\(5) & ( (!\disp0_1|reg|DOUT\(4) & 
-- \disp0_1|reg|DOUT\(6)) ) ) ) # ( !\disp0_1|reg|DOUT\(7) & ( !\disp0_1|reg|DOUT\(5) & ( !\disp0_1|reg|DOUT\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011000000110000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \disp0_1|reg|ALT_INV_DOUT\(4),
	datac => \disp0_1|reg|ALT_INV_DOUT\(6),
	datae => \disp0_1|reg|ALT_INV_DOUT\(7),
	dataf => \disp0_1|reg|ALT_INV_DOUT\(5),
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

-- Location: LABCELL_X44_Y15_N0
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


