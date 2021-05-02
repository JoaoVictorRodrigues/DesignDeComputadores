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

-- DATE "05/02/2021 11:38:03"

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
	HEX1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END calculadora;

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
SIGNAL \Processador|incremento|Add0~1_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Processador|incremento|Add0~2\ : std_logic;
SIGNAL \Processador|incremento|Add0~5_sumout\ : std_logic;
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
SIGNAL \Processador|ROM|memROM~3_combout\ : std_logic;
SIGNAL \Processador|incremento|Add0~26\ : std_logic;
SIGNAL \Processador|incremento|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|ROM|memROM~4_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~0_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~2_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~1_combout\ : std_logic;
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
SIGNAL \Processador|ULA|Add0~34_cout\ : std_logic;
SIGNAL \Processador|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~12_q\ : std_logic;
SIGNAL \Decoder|Equal0~0_combout\ : std_logic;
SIGNAL \Processador|ULA|Add0~2\ : std_logic;
SIGNAL \Processador|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~13_q\ : std_logic;
SIGNAL \Processador|ULA|Add0~14\ : std_logic;
SIGNAL \Processador|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~14_q\ : std_logic;
SIGNAL \Processador|ULA|Add0~10\ : std_logic;
SIGNAL \Processador|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~15_q\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \Processador|ULA|Add0~6\ : std_logic;
SIGNAL \Processador|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~16_q\ : std_logic;
SIGNAL \Processador|ULA|Add0~18\ : std_logic;
SIGNAL \Processador|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~17_q\ : std_logic;
SIGNAL \Processador|ULA|Add0~30\ : std_logic;
SIGNAL \Processador|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~18_q\ : std_logic;
SIGNAL \Processador|ULA|Add0~26\ : std_logic;
SIGNAL \Processador|ULA|Add0~21_sumout\ : std_logic;
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
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \Decoder|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \disp0_1|reg|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);

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
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\Decoder|ALT_INV_Equal0~0_combout\ <= NOT \Decoder|Equal0~0_combout\;
\Processador|ROM|ALT_INV_memROM~5_combout\ <= NOT \Processador|ROM|memROM~5_combout\;
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
\Processador|Banco_Registradores|ALT_INV_registrador~17_q\ <= NOT \Processador|Banco_Registradores|registrador~17_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~18_q\ <= NOT \Processador|Banco_Registradores|registrador~18_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~19_q\ <= NOT \Processador|Banco_Registradores|registrador~19_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~16_q\ <= NOT \Processador|Banco_Registradores|registrador~16_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~13_q\ <= NOT \Processador|Banco_Registradores|registrador~13_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~14_q\ <= NOT \Processador|Banco_Registradores|registrador~14_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~15_q\ <= NOT \Processador|Banco_Registradores|registrador~15_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~12_q\ <= NOT \Processador|Banco_Registradores|registrador~12_q\;
\Processador|PC|ALT_INV_DOUT\(7) <= NOT \Processador|PC|DOUT\(7);
\Processador|PC|ALT_INV_DOUT\(6) <= NOT \Processador|PC|DOUT\(6);
\Processador|PC|ALT_INV_DOUT\(5) <= NOT \Processador|PC|DOUT\(5);
\Processador|PC|ALT_INV_DOUT\(4) <= NOT \Processador|PC|DOUT\(4);
\Processador|PC|ALT_INV_DOUT\(3) <= NOT \Processador|PC|DOUT\(3);
\Processador|PC|ALT_INV_DOUT\(2) <= NOT \Processador|PC|DOUT\(2);
\Processador|PC|ALT_INV_DOUT\(1) <= NOT \Processador|PC|DOUT\(1);
\Processador|PC|ALT_INV_DOUT\(0) <= NOT \Processador|PC|DOUT\(0);

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

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

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

\Processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incremento|Add0~9_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(2));

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

\Processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incremento|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(3));

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

\Processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incremento|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(4));

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

\Processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incremento|Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(5));

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

\Processador|ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~3_combout\ = (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) & \Processador|ROM|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|ROM|memROM~3_combout\);

\Processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incremento|Add0~25_sumout\,
	asdata => \Processador|ROM|memROM~3_combout\,
	sload => \Processador|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(6));

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

\Processador|ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~4_combout\ = (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) & \Processador|ROM|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|ROM|memROM~4_combout\);

\Processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incremento|Add0~29_sumout\,
	asdata => \Processador|ROM|memROM~4_combout\,
	sload => \Processador|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(7));

\Processador|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~0_combout\ = ( !\Processador|PC|DOUT\(7) & ( (!\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(5) & !\Processador|PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(5),
	datad => \Processador|PC|ALT_INV_DOUT\(6),
	datae => \Processador|PC|ALT_INV_DOUT\(7),
	combout => \Processador|ROM|memROM~0_combout\);

\Processador|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~2_combout\ = (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) & \Processador|ROM|memROM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|ROM|memROM~2_combout\);

\Processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incremento|Add0~5_sumout\,
	asdata => \Processador|ROM|memROM~2_combout\,
	sload => \Processador|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(1));

\Processador|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~1_combout\ = (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(2) & \Processador|ROM|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|ROM|memROM~1_combout\);

\Processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incremento|Add0~1_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(0));

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\Processador|ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~5_combout\ = (\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) & \Processador|ROM|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|ROM|memROM~5_combout\);

\Processador|ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|Add0~34_cout\ = CARRY(( !\Processador|ROM|memROM~5_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~5_combout\,
	cin => GND,
	cout => \Processador|ULA|Add0~34_cout\);

\Processador|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|Add0~1_sumout\ = SUM(( \Processador|Banco_Registradores|registrador~12_q\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\SW[0]~input_o\) # ((!\Processador|ROM|memROM~3_combout\ & !\Processador|ROM|memROM~4_combout\)))) ) + ( 
-- \Processador|ULA|Add0~34_cout\ ))
-- \Processador|ULA|Add0~2\ = CARRY(( \Processador|Banco_Registradores|registrador~12_q\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\SW[0]~input_o\) # ((!\Processador|ROM|memROM~3_combout\ & !\Processador|ROM|memROM~4_combout\)))) ) + ( 
-- \Processador|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~3_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~4_combout\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~12_q\,
	dataf => \ALT_INV_SW[0]~input_o\,
	cin => \Processador|ULA|Add0~34_cout\,
	sumout => \Processador|ULA|Add0~1_sumout\,
	cout => \Processador|ULA|Add0~2\);

\Processador|Banco_Registradores|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|Add0~1_sumout\,
	ena => \Processador|ROM|memROM~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~12_q\);

\disp0_1|reg|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~12_q\,
	ena => \Processador|ROM|memROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(0));

\Decoder|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal0~0_combout\ = (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) & \Processador|ROM|memROM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Decoder|Equal0~0_combout\);

\Processador|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|Add0~13_sumout\ = SUM(( \Processador|Banco_Registradores|registrador~13_q\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\Decoder|Equal0~0_combout\) # ((!\SW[1]~input_o\)))) # (\Processador|ROM|memROM~5_combout\ & 
-- (((\Processador|ROM|memROM~2_combout\)))) ) + ( \Processador|ULA|Add0~2\ ))
-- \Processador|ULA|Add0~14\ = CARRY(( \Processador|Banco_Registradores|registrador~13_q\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\Decoder|Equal0~0_combout\) # ((!\SW[1]~input_o\)))) # (\Processador|ROM|memROM~5_combout\ & 
-- (((\Processador|ROM|memROM~2_combout\)))) ) + ( \Processador|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datab => \Decoder|ALT_INV_Equal0~0_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~2_combout\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~13_q\,
	dataf => \ALT_INV_SW[1]~input_o\,
	cin => \Processador|ULA|Add0~2\,
	sumout => \Processador|ULA|Add0~13_sumout\,
	cout => \Processador|ULA|Add0~14\);

\Processador|Banco_Registradores|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|Add0~13_sumout\,
	ena => \Processador|ROM|memROM~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~13_q\);

\Processador|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|Add0~9_sumout\ = SUM(( \Processador|Banco_Registradores|registrador~14_q\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[2]~input_o\))) ) + ( \Processador|ULA|Add0~14\ ))
-- \Processador|ULA|Add0~10\ = CARRY(( \Processador|Banco_Registradores|registrador~14_q\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[2]~input_o\))) ) + ( \Processador|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~3_combout\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~14_q\,
	dataf => \ALT_INV_SW[2]~input_o\,
	cin => \Processador|ULA|Add0~14\,
	sumout => \Processador|ULA|Add0~9_sumout\,
	cout => \Processador|ULA|Add0~10\);

\Processador|Banco_Registradores|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|Add0~9_sumout\,
	ena => \Processador|ROM|memROM~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~14_q\);

\Processador|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|Add0~5_sumout\ = SUM(( \Processador|Banco_Registradores|registrador~15_q\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[3]~input_o\))) ) + ( \Processador|ULA|Add0~10\ ))
-- \Processador|ULA|Add0~6\ = CARRY(( \Processador|Banco_Registradores|registrador~15_q\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[3]~input_o\))) ) + ( \Processador|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~3_combout\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~15_q\,
	dataf => \ALT_INV_SW[3]~input_o\,
	cin => \Processador|ULA|Add0~10\,
	sumout => \Processador|ULA|Add0~5_sumout\,
	cout => \Processador|ULA|Add0~6\);

\Processador|Banco_Registradores|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|Add0~5_sumout\,
	ena => \Processador|ROM|memROM~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~15_q\);

\disp0_1|reg|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~15_q\,
	ena => \Processador|ROM|memROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(3));

\disp0_1|reg|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~14_q\,
	ena => \Processador|ROM|memROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(2));

\disp0_1|reg|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~13_q\,
	ena => \Processador|ROM|memROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(1));

\disp0_1|disp0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[0]~0_combout\ = (!\disp0_1|reg|DOUT\(3) & (!\disp0_1|reg|DOUT\(1) & (!\disp0_1|reg|DOUT\(0) $ (!\disp0_1|reg|DOUT\(2))))) # (\disp0_1|reg|DOUT\(3) & (\disp0_1|reg|DOUT\(0) & (!\disp0_1|reg|DOUT\(2) $ 
-- (!\disp0_1|reg|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(0),
	datab => \disp0_1|reg|ALT_INV_DOUT\(3),
	datac => \disp0_1|reg|ALT_INV_DOUT\(2),
	datad => \disp0_1|reg|ALT_INV_DOUT\(1),
	combout => \disp0_1|disp0|rascSaida7seg[0]~0_combout\);

\disp0_1|disp0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[1]~1_combout\ = (!\disp0_1|reg|DOUT\(3) & (\disp0_1|reg|DOUT\(2) & (!\disp0_1|reg|DOUT\(0) $ (!\disp0_1|reg|DOUT\(1))))) # (\disp0_1|reg|DOUT\(3) & ((!\disp0_1|reg|DOUT\(0) & (\disp0_1|reg|DOUT\(2))) # (\disp0_1|reg|DOUT\(0) & 
-- ((\disp0_1|reg|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(0),
	datab => \disp0_1|reg|ALT_INV_DOUT\(3),
	datac => \disp0_1|reg|ALT_INV_DOUT\(2),
	datad => \disp0_1|reg|ALT_INV_DOUT\(1),
	combout => \disp0_1|disp0|rascSaida7seg[1]~1_combout\);

\disp0_1|disp0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[2]~2_combout\ = (!\disp0_1|reg|DOUT\(3) & (!\disp0_1|reg|DOUT\(0) & (!\disp0_1|reg|DOUT\(2) & \disp0_1|reg|DOUT\(1)))) # (\disp0_1|reg|DOUT\(3) & (\disp0_1|reg|DOUT\(2) & ((!\disp0_1|reg|DOUT\(0)) # (\disp0_1|reg|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(0),
	datab => \disp0_1|reg|ALT_INV_DOUT\(3),
	datac => \disp0_1|reg|ALT_INV_DOUT\(2),
	datad => \disp0_1|reg|ALT_INV_DOUT\(1),
	combout => \disp0_1|disp0|rascSaida7seg[2]~2_combout\);

\disp0_1|disp0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[3]~3_combout\ = (!\disp0_1|reg|DOUT\(1) & (!\disp0_1|reg|DOUT\(3) & (!\disp0_1|reg|DOUT\(0) $ (!\disp0_1|reg|DOUT\(2))))) # (\disp0_1|reg|DOUT\(1) & ((!\disp0_1|reg|DOUT\(0) & (!\disp0_1|reg|DOUT\(2) & \disp0_1|reg|DOUT\(3))) 
-- # (\disp0_1|reg|DOUT\(0) & (\disp0_1|reg|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(0),
	datab => \disp0_1|reg|ALT_INV_DOUT\(1),
	datac => \disp0_1|reg|ALT_INV_DOUT\(2),
	datad => \disp0_1|reg|ALT_INV_DOUT\(3),
	combout => \disp0_1|disp0|rascSaida7seg[3]~3_combout\);

\disp0_1|disp0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[4]~4_combout\ = (!\disp0_1|reg|DOUT\(1) & ((!\disp0_1|reg|DOUT\(2) & ((\disp0_1|reg|DOUT\(0)))) # (\disp0_1|reg|DOUT\(2) & (!\disp0_1|reg|DOUT\(3))))) # (\disp0_1|reg|DOUT\(1) & (!\disp0_1|reg|DOUT\(3) & 
-- ((\disp0_1|reg|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(3),
	datab => \disp0_1|reg|ALT_INV_DOUT\(2),
	datac => \disp0_1|reg|ALT_INV_DOUT\(1),
	datad => \disp0_1|reg|ALT_INV_DOUT\(0),
	combout => \disp0_1|disp0|rascSaida7seg[4]~4_combout\);

\disp0_1|disp0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[5]~5_combout\ = (!\disp0_1|reg|DOUT\(0) & (!\disp0_1|reg|DOUT\(2) & (\disp0_1|reg|DOUT\(1) & !\disp0_1|reg|DOUT\(3)))) # (\disp0_1|reg|DOUT\(0) & (!\disp0_1|reg|DOUT\(3) $ (((\disp0_1|reg|DOUT\(2) & !\disp0_1|reg|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(0),
	datab => \disp0_1|reg|ALT_INV_DOUT\(2),
	datac => \disp0_1|reg|ALT_INV_DOUT\(1),
	datad => \disp0_1|reg|ALT_INV_DOUT\(3),
	combout => \disp0_1|disp0|rascSaida7seg[5]~5_combout\);

\disp0_1|disp0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[6]~6_combout\ = (!\disp0_1|reg|DOUT\(0) & (!\disp0_1|reg|DOUT\(1) & (!\disp0_1|reg|DOUT\(3) $ (\disp0_1|reg|DOUT\(2))))) # (\disp0_1|reg|DOUT\(0) & (!\disp0_1|reg|DOUT\(3) & (!\disp0_1|reg|DOUT\(2) $ (\disp0_1|reg|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(0),
	datab => \disp0_1|reg|ALT_INV_DOUT\(3),
	datac => \disp0_1|reg|ALT_INV_DOUT\(2),
	datad => \disp0_1|reg|ALT_INV_DOUT\(1),
	combout => \disp0_1|disp0|rascSaida7seg[6]~6_combout\);

\Processador|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|Add0~17_sumout\ = SUM(( \Processador|Banco_Registradores|registrador~16_q\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[4]~input_o\))) ) + ( \Processador|ULA|Add0~6\ ))
-- \Processador|ULA|Add0~18\ = CARRY(( \Processador|Banco_Registradores|registrador~16_q\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[4]~input_o\))) ) + ( \Processador|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~3_combout\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~16_q\,
	dataf => \ALT_INV_SW[4]~input_o\,
	cin => \Processador|ULA|Add0~6\,
	sumout => \Processador|ULA|Add0~17_sumout\,
	cout => \Processador|ULA|Add0~18\);

\Processador|Banco_Registradores|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|Add0~17_sumout\,
	ena => \Processador|ROM|memROM~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~16_q\);

\disp0_1|reg|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~16_q\,
	ena => \Processador|ROM|memROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(4));

\Processador|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|Add0~29_sumout\ = SUM(( \Processador|Banco_Registradores|registrador~17_q\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[5]~input_o\))) ) + ( \Processador|ULA|Add0~18\ ))
-- \Processador|ULA|Add0~30\ = CARRY(( \Processador|Banco_Registradores|registrador~17_q\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[5]~input_o\))) ) + ( \Processador|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~3_combout\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~17_q\,
	dataf => \ALT_INV_SW[5]~input_o\,
	cin => \Processador|ULA|Add0~18\,
	sumout => \Processador|ULA|Add0~29_sumout\,
	cout => \Processador|ULA|Add0~30\);

\Processador|Banco_Registradores|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|Add0~29_sumout\,
	ena => \Processador|ROM|memROM~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~17_q\);

\Processador|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|Add0~25_sumout\ = SUM(( \Processador|Banco_Registradores|registrador~18_q\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[6]~input_o\))) ) + ( \Processador|ULA|Add0~30\ ))
-- \Processador|ULA|Add0~26\ = CARRY(( \Processador|Banco_Registradores|registrador~18_q\ ) + ( (!\Processador|ROM|memROM~5_combout\ & ((!\Processador|ROM|memROM~3_combout\) # (!\SW[6]~input_o\))) ) + ( \Processador|ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~3_combout\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~18_q\,
	dataf => \ALT_INV_SW[6]~input_o\,
	cin => \Processador|ULA|Add0~30\,
	sumout => \Processador|ULA|Add0~25_sumout\,
	cout => \Processador|ULA|Add0~26\);

\Processador|Banco_Registradores|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|Add0~25_sumout\,
	ena => \Processador|ROM|memROM~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~18_q\);

\Processador|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|Add0~21_sumout\ = SUM(( \Processador|Banco_Registradores|registrador~19_q\ ) + ( (!\Processador|ROM|memROM~5_combout\ & (((!\Processador|ROM|memROM~3_combout\) # (!\SW[7]~input_o\)) # (\Processador|ROM|memROM~4_combout\))) ) + ( 
-- \Processador|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~4_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~3_combout\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~19_q\,
	dataf => \ALT_INV_SW[7]~input_o\,
	cin => \Processador|ULA|Add0~26\,
	sumout => \Processador|ULA|Add0~21_sumout\);

\Processador|Banco_Registradores|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|Add0~21_sumout\,
	ena => \Processador|ROM|memROM~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~19_q\);

\disp0_1|reg|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~19_q\,
	ena => \Processador|ROM|memROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(7));

\disp0_1|reg|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~18_q\,
	ena => \Processador|ROM|memROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(6));

\disp0_1|reg|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~17_q\,
	ena => \Processador|ROM|memROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(5));

\disp0_1|disp1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[0]~0_combout\ = (!\disp0_1|reg|DOUT\(7) & (!\disp0_1|reg|DOUT\(5) & (!\disp0_1|reg|DOUT\(4) $ (!\disp0_1|reg|DOUT\(6))))) # (\disp0_1|reg|DOUT\(7) & (\disp0_1|reg|DOUT\(4) & (!\disp0_1|reg|DOUT\(6) $ 
-- (!\disp0_1|reg|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(4),
	datab => \disp0_1|reg|ALT_INV_DOUT\(7),
	datac => \disp0_1|reg|ALT_INV_DOUT\(6),
	datad => \disp0_1|reg|ALT_INV_DOUT\(5),
	combout => \disp0_1|disp1|rascSaida7seg[0]~0_combout\);

\disp0_1|disp1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[1]~1_combout\ = (!\disp0_1|reg|DOUT\(7) & (\disp0_1|reg|DOUT\(6) & (!\disp0_1|reg|DOUT\(4) $ (!\disp0_1|reg|DOUT\(5))))) # (\disp0_1|reg|DOUT\(7) & ((!\disp0_1|reg|DOUT\(4) & (\disp0_1|reg|DOUT\(6))) # (\disp0_1|reg|DOUT\(4) & 
-- ((\disp0_1|reg|DOUT\(5))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(4),
	datab => \disp0_1|reg|ALT_INV_DOUT\(7),
	datac => \disp0_1|reg|ALT_INV_DOUT\(6),
	datad => \disp0_1|reg|ALT_INV_DOUT\(5),
	combout => \disp0_1|disp1|rascSaida7seg[1]~1_combout\);

\disp0_1|disp1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[2]~2_combout\ = (!\disp0_1|reg|DOUT\(7) & (!\disp0_1|reg|DOUT\(4) & (!\disp0_1|reg|DOUT\(6) & \disp0_1|reg|DOUT\(5)))) # (\disp0_1|reg|DOUT\(7) & (\disp0_1|reg|DOUT\(6) & ((!\disp0_1|reg|DOUT\(4)) # (\disp0_1|reg|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(4),
	datab => \disp0_1|reg|ALT_INV_DOUT\(7),
	datac => \disp0_1|reg|ALT_INV_DOUT\(6),
	datad => \disp0_1|reg|ALT_INV_DOUT\(5),
	combout => \disp0_1|disp1|rascSaida7seg[2]~2_combout\);

\disp0_1|disp1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[3]~3_combout\ = (!\disp0_1|reg|DOUT\(5) & (!\disp0_1|reg|DOUT\(7) & (!\disp0_1|reg|DOUT\(4) $ (!\disp0_1|reg|DOUT\(6))))) # (\disp0_1|reg|DOUT\(5) & ((!\disp0_1|reg|DOUT\(4) & (!\disp0_1|reg|DOUT\(6) & \disp0_1|reg|DOUT\(7))) 
-- # (\disp0_1|reg|DOUT\(4) & (\disp0_1|reg|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(4),
	datab => \disp0_1|reg|ALT_INV_DOUT\(5),
	datac => \disp0_1|reg|ALT_INV_DOUT\(6),
	datad => \disp0_1|reg|ALT_INV_DOUT\(7),
	combout => \disp0_1|disp1|rascSaida7seg[3]~3_combout\);

\disp0_1|disp1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[4]~4_combout\ = (!\disp0_1|reg|DOUT\(5) & ((!\disp0_1|reg|DOUT\(6) & ((\disp0_1|reg|DOUT\(4)))) # (\disp0_1|reg|DOUT\(6) & (!\disp0_1|reg|DOUT\(7))))) # (\disp0_1|reg|DOUT\(5) & (!\disp0_1|reg|DOUT\(7) & 
-- ((\disp0_1|reg|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(7),
	datab => \disp0_1|reg|ALT_INV_DOUT\(6),
	datac => \disp0_1|reg|ALT_INV_DOUT\(5),
	datad => \disp0_1|reg|ALT_INV_DOUT\(4),
	combout => \disp0_1|disp1|rascSaida7seg[4]~4_combout\);

\disp0_1|disp1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[5]~5_combout\ = (!\disp0_1|reg|DOUT\(4) & (!\disp0_1|reg|DOUT\(6) & (\disp0_1|reg|DOUT\(5) & !\disp0_1|reg|DOUT\(7)))) # (\disp0_1|reg|DOUT\(4) & (!\disp0_1|reg|DOUT\(7) $ (((\disp0_1|reg|DOUT\(6) & !\disp0_1|reg|DOUT\(5))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(4),
	datab => \disp0_1|reg|ALT_INV_DOUT\(6),
	datac => \disp0_1|reg|ALT_INV_DOUT\(5),
	datad => \disp0_1|reg|ALT_INV_DOUT\(7),
	combout => \disp0_1|disp1|rascSaida7seg[5]~5_combout\);

\disp0_1|disp1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp1|rascSaida7seg[6]~6_combout\ = (!\disp0_1|reg|DOUT\(4) & (!\disp0_1|reg|DOUT\(5) & (!\disp0_1|reg|DOUT\(7) $ (\disp0_1|reg|DOUT\(6))))) # (\disp0_1|reg|DOUT\(4) & (!\disp0_1|reg|DOUT\(7) & (!\disp0_1|reg|DOUT\(6) $ (\disp0_1|reg|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp0_1|reg|ALT_INV_DOUT\(4),
	datab => \disp0_1|reg|ALT_INV_DOUT\(7),
	datac => \disp0_1|reg|ALT_INV_DOUT\(6),
	datad => \disp0_1|reg|ALT_INV_DOUT\(5),
	combout => \disp0_1|disp1|rascSaida7seg[6]~6_combout\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

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


