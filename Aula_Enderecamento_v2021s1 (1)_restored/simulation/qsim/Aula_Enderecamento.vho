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

<<<<<<< HEAD
-- DATE "05/02/2021 17:27:46"
=======
-- DATE "05/02/2021 18:31:47"
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

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
SIGNAL \PC[0]~output_o\ : std_logic;
SIGNAL \PC[1]~output_o\ : std_logic;
SIGNAL \PC[2]~output_o\ : std_logic;
SIGNAL \PC[3]~output_o\ : std_logic;
SIGNAL \PC[4]~output_o\ : std_logic;
SIGNAL \PC[5]~output_o\ : std_logic;
SIGNAL \PC[6]~output_o\ : std_logic;
SIGNAL \PC[7]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
<<<<<<< HEAD
=======
SIGNAL \Processador|incremento|Add0~1_sumout\ : std_logic;
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
SIGNAL \Processador|incremento|Add0~2\ : std_logic;
SIGNAL \Processador|incremento|Add0~6\ : std_logic;
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
<<<<<<< HEAD
SIGNAL \Processador|ROM|memROM~3_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~1_combout\ : std_logic;
SIGNAL \Processador|incremento|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|MUX_proxPC|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~0_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~2_combout\ : std_logic;
SIGNAL \Processador|incremento|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|MUX_proxPC|saida_MUX[0]~0_combout\ : std_logic;
=======
SIGNAL \Processador|ROM|memROM~0_combout\ : std_logic;
SIGNAL \Processador|incremento|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|MUX_proxPC|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \Processador|incremento|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|MUX_proxPC|saida_MUX[1]~0_combout\ : std_logic;
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
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
<<<<<<< HEAD
SIGNAL \Processador|ROM|memROM~4_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~7_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~10_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~5_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~6_combout\ : std_logic;
SIGNAL \Decoder|habilitaDisplay0_1~0_combout\ : std_logic;
SIGNAL \RAM|ram~144_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \Processador|ROM|memROM~9_combout\ : std_logic;
SIGNAL \Processador|ROM|memROM~8_combout\ : std_logic;
SIGNAL \RAM|ram~143_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \Processador|ULA|saida~7_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~36_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~20_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~37_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~12_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~28_combout\ : std_logic;
SIGNAL \Decoder|habilitaDisplay0_1~1_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \Processador|MUX_RAM_Imediato|saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \Processador|ULA|saida~0_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~23_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~15_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~29_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \Processador|MUX_RAM_Imediato|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \Processador|ULA|saida~1_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~22_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~14_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~30_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \Processador|MUX_RAM_Imediato|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \Processador|ULA|saida~2_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~21_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~13_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~31_combout\ : std_logic;
=======
SIGNAL \Processador|ULA|saida~0_combout\ : std_logic;
SIGNAL \Processador|UC|Equal8~0_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~12_q\ : std_logic;
SIGNAL \Decoder|habilitaDisplay0_1~0_combout\ : std_logic;
SIGNAL \Processador|ULA|saida~1_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~15_q\ : std_logic;
SIGNAL \Processador|ULA|saida~2_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~14_q\ : std_logic;
SIGNAL \Processador|ULA|saida~3_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~13_q\ : std_logic;
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
SIGNAL \disp0_1|disp0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \disp0_1|disp0|rascSaida7seg[6]~6_combout\ : std_logic;
<<<<<<< HEAD
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \Processador|MUX_RAM_Imediato|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \Processador|ULA|saida~3_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~24_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~16_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~32_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \Processador|MUX_RAM_Imediato|saida_MUX[7]~5_combout\ : std_logic;
SIGNAL \Processador|ULA|saida~4_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~27_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~19_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~33_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \Processador|MUX_RAM_Imediato|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \Processador|ULA|saida~5_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~26_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~18_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~34_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \Processador|MUX_RAM_Imediato|saida_MUX[5]~7_combout\ : std_logic;
SIGNAL \Processador|ULA|saida~6_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~25_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~17_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~35_combout\ : std_logic;
=======
SIGNAL \Processador|ULA|saida~4_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~16_q\ : std_logic;
SIGNAL \Processador|ULA|saida~5_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~19_q\ : std_logic;
SIGNAL \Processador|ULA|saida~6_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~18_q\ : std_logic;
SIGNAL \Processador|ULA|saida~7_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|registrador~17_q\ : std_logic;
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
SIGNAL \disp0_1|disp1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \disp0_1|disp1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \Decoder|habilitaDisplay2_3~0_combout\ : std_logic;
SIGNAL \disp2_3|disp2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \disp2_3|disp2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \disp2_3|disp2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \disp2_3|disp2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \disp2_3|disp2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \disp2_3|disp2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \disp2_3|disp2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \disp2_3|disp3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \disp2_3|disp3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \disp2_3|disp3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \disp2_3|disp3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \disp2_3|disp3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \disp2_3|disp3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \disp2_3|disp3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \disp0_1|reg|DOUT\ : std_logic_vector(7 DOWNTO 0);
<<<<<<< HEAD
SIGNAL \Processador|PC|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \disp2_3|reg|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[5]~7_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[7]~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~35_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~34_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~33_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~32_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~31_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~30_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~29_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \Decoder|ALT_INV_habilitaDisplay0_1~0_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~28_combout\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \Processador|Banco_Registradores|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \disp2_3|reg|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \disp0_1|reg|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|incremento|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Processador|incremento|ALT_INV_Add0~1_sumout\ : std_logic;
=======
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \Processador|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \disp0_1|reg|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|incremento|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Processador|incremento|ALT_INV_Add0~5_sumout\ : std_logic;
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

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
<<<<<<< HEAD
\Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[5]~7_combout\ <= NOT \Processador|MUX_RAM_Imediato|saida_MUX[5]~7_combout\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \Processador|MUX_RAM_Imediato|saida_MUX[6]~6_combout\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[7]~5_combout\ <= NOT \Processador|MUX_RAM_Imediato|saida_MUX[7]~5_combout\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\;
\Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[4]~3_combout\ <= NOT \Processador|MUX_RAM_Imediato|saida_MUX[4]~3_combout\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[1]~2_combout\ <= NOT \Processador|MUX_RAM_Imediato|saida_MUX[1]~2_combout\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \Processador|MUX_RAM_Imediato|saida_MUX[2]~1_combout\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[3]~0_combout\ <= NOT \Processador|MUX_RAM_Imediato|saida_MUX[3]~0_combout\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\Processador|ROM|ALT_INV_memROM~10_combout\ <= NOT \Processador|ROM|memROM~10_combout\;
\Processador|ROM|ALT_INV_memROM~9_combout\ <= NOT \Processador|ROM|memROM~9_combout\;
\Processador|ROM|ALT_INV_memROM~8_combout\ <= NOT \Processador|ROM|memROM~8_combout\;
\Processador|Banco_Registradores|ALT_INV_registrador~35_combout\ <= NOT \Processador|Banco_Registradores|registrador~35_combout\;
\Processador|Banco_Registradores|ALT_INV_registrador~17_q\ <= NOT \Processador|Banco_Registradores|registrador~17_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~25_q\ <= NOT \Processador|Banco_Registradores|registrador~25_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~34_combout\ <= NOT \Processador|Banco_Registradores|registrador~34_combout\;
\Processador|Banco_Registradores|ALT_INV_registrador~18_q\ <= NOT \Processador|Banco_Registradores|registrador~18_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~26_q\ <= NOT \Processador|Banco_Registradores|registrador~26_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~33_combout\ <= NOT \Processador|Banco_Registradores|registrador~33_combout\;
\Processador|Banco_Registradores|ALT_INV_registrador~19_q\ <= NOT \Processador|Banco_Registradores|registrador~19_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~27_q\ <= NOT \Processador|Banco_Registradores|registrador~27_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~32_combout\ <= NOT \Processador|Banco_Registradores|registrador~32_combout\;
\Processador|Banco_Registradores|ALT_INV_registrador~16_q\ <= NOT \Processador|Banco_Registradores|registrador~16_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~24_q\ <= NOT \Processador|Banco_Registradores|registrador~24_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~31_combout\ <= NOT \Processador|Banco_Registradores|registrador~31_combout\;
\Processador|Banco_Registradores|ALT_INV_registrador~13_q\ <= NOT \Processador|Banco_Registradores|registrador~13_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~21_q\ <= NOT \Processador|Banco_Registradores|registrador~21_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~30_combout\ <= NOT \Processador|Banco_Registradores|registrador~30_combout\;
\Processador|Banco_Registradores|ALT_INV_registrador~14_q\ <= NOT \Processador|Banco_Registradores|registrador~14_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~22_q\ <= NOT \Processador|Banco_Registradores|registrador~22_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~29_combout\ <= NOT \Processador|Banco_Registradores|registrador~29_combout\;
\Processador|Banco_Registradores|ALT_INV_registrador~15_q\ <= NOT \Processador|Banco_Registradores|registrador~15_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~23_q\ <= NOT \Processador|Banco_Registradores|registrador~23_q\;
\Decoder|ALT_INV_habilitaDisplay0_1~0_combout\ <= NOT \Decoder|habilitaDisplay0_1~0_combout\;
\Processador|ROM|ALT_INV_memROM~7_combout\ <= NOT \Processador|ROM|memROM~7_combout\;
\Processador|ROM|ALT_INV_memROM~6_combout\ <= NOT \Processador|ROM|memROM~6_combout\;
\Processador|ROM|ALT_INV_memROM~5_combout\ <= NOT \Processador|ROM|memROM~5_combout\;
\Processador|Banco_Registradores|ALT_INV_registrador~28_combout\ <= NOT \Processador|Banco_Registradores|registrador~28_combout\;
\Processador|Banco_Registradores|ALT_INV_registrador~12_q\ <= NOT \Processador|Banco_Registradores|registrador~12_q\;
\Processador|Banco_Registradores|ALT_INV_registrador~20_q\ <= NOT \Processador|Banco_Registradores|registrador~20_q\;
\Processador|ROM|ALT_INV_memROM~4_combout\ <= NOT \Processador|ROM|memROM~4_combout\;
\Processador|ROM|ALT_INV_memROM~3_combout\ <= NOT \Processador|ROM|memROM~3_combout\;
\Processador|ROM|ALT_INV_memROM~2_combout\ <= NOT \Processador|ROM|memROM~2_combout\;
\Processador|ROM|ALT_INV_memROM~1_combout\ <= NOT \Processador|ROM|memROM~1_combout\;
=======
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
\Processador|ROM|ALT_INV_memROM~0_combout\ <= NOT \Processador|ROM|memROM~0_combout\;
\disp2_3|reg|ALT_INV_DOUT\(5) <= NOT \disp2_3|reg|DOUT\(5);
\disp2_3|reg|ALT_INV_DOUT\(6) <= NOT \disp2_3|reg|DOUT\(6);
\disp2_3|reg|ALT_INV_DOUT\(7) <= NOT \disp2_3|reg|DOUT\(7);
\disp2_3|reg|ALT_INV_DOUT\(4) <= NOT \disp2_3|reg|DOUT\(4);
\disp2_3|reg|ALT_INV_DOUT\(1) <= NOT \disp2_3|reg|DOUT\(1);
\disp2_3|reg|ALT_INV_DOUT\(2) <= NOT \disp2_3|reg|DOUT\(2);
\disp2_3|reg|ALT_INV_DOUT\(3) <= NOT \disp2_3|reg|DOUT\(3);
\disp2_3|reg|ALT_INV_DOUT\(0) <= NOT \disp2_3|reg|DOUT\(0);
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
<<<<<<< HEAD
\Processador|incremento|ALT_INV_Add0~1_sumout\ <= NOT \Processador|incremento|Add0~1_sumout\;
=======
\Processador|incremento|ALT_INV_Add0~5_sumout\ <= NOT \Processador|incremento|Add0~5_sumout\;
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

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
	o => \PC[0]~output_o\);

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
	o => \PC[1]~output_o\);

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
	o => \PC[2]~output_o\);

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
	o => \PC[3]~output_o\);

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
	o => \PC[4]~output_o\);

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
	o => \PC[5]~output_o\);

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
	o => \PC[6]~output_o\);

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
	o => \PC[7]~output_o\);

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
	o => \LEDR[0]~output_o\);

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
	o => \LEDR[1]~output_o\);

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
	o => \LEDR[2]~output_o\);

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
	o => \LEDR[3]~output_o\);

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
	o => \LEDR[4]~output_o\);

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
	o => \LEDR[5]~output_o\);

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
	o => \LEDR[6]~output_o\);

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
	o => \LEDR[7]~output_o\);

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
	o => \LEDR[8]~output_o\);

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
	o => \LEDR[9]~output_o\);

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
	o => \HEX0[0]~output_o\);

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
	o => \HEX0[1]~output_o\);

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
	o => \HEX0[2]~output_o\);

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
	o => \HEX0[3]~output_o\);

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
	o => \HEX0[4]~output_o\);

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
	o => \HEX0[5]~output_o\);

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
	o => \HEX0[6]~output_o\);

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
	o => \HEX1[0]~output_o\);

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
	o => \HEX1[1]~output_o\);

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
	o => \HEX1[2]~output_o\);

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
	o => \HEX1[3]~output_o\);

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
	o => \HEX1[4]~output_o\);

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
	o => \HEX1[5]~output_o\);

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
	o => \HEX1[6]~output_o\);
<<<<<<< HEAD
=======

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
	o => \HEX2[0]~output_o\);

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
	o => \HEX2[1]~output_o\);

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
	o => \HEX2[2]~output_o\);

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
	o => \HEX2[3]~output_o\);

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
	o => \HEX2[4]~output_o\);

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
	o => \HEX2[5]~output_o\);

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
	o => \HEX2[6]~output_o\);

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
	o => \HEX3[0]~output_o\);

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
	o => \HEX3[1]~output_o\);

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
	o => \HEX3[2]~output_o\);

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
	o => \HEX3[3]~output_o\);

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
	o => \HEX3[4]~output_o\);

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
	o => \HEX3[5]~output_o\);

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
	o => \HEX3[6]~output_o\);

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
	o => \HEX4[0]~output_o\);

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
	o => \HEX4[1]~output_o\);

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
	o => \HEX4[2]~output_o\);

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
	o => \HEX4[3]~output_o\);

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
	o => \HEX4[4]~output_o\);

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
	o => \HEX4[5]~output_o\);

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
	o => \HEX4[6]~output_o\);

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
	o => \HEX5[0]~output_o\);

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
	o => \HEX5[1]~output_o\);

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
	o => \HEX5[2]~output_o\);

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
	o => \HEX5[3]~output_o\);

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
	o => \HEX5[4]~output_o\);

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
	o => \HEX5[5]~output_o\);

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
	o => \HEX5[6]~output_o\);
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2_3|disp2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \disp2_3|disp2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2_3|disp2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);
=======
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \Processador|incremento|Add0~1_sumout\,
	cout => \Processador|incremento|Add0~2\);

\Processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incremento|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(0));

\Processador|incremento|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~5_sumout\ = SUM(( \Processador|PC|DOUT\(1) ) + ( GND ) + ( \Processador|incremento|Add0~2\ ))
-- \Processador|incremento|Add0~6\ = CARRY(( \Processador|PC|DOUT\(1) ) + ( GND ) + ( \Processador|incremento|Add0~2\ ))
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2_3|disp2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2_3|disp2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

<<<<<<< HEAD
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2_3|disp2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);
=======
\Processador|incremento|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~13_sumout\ = SUM(( \Processador|PC|DOUT\(3) ) + ( GND ) + ( \Processador|incremento|Add0~10\ ))
-- \Processador|incremento|Add0~14\ = CARRY(( \Processador|PC|DOUT\(3) ) + ( GND ) + ( \Processador|incremento|Add0~10\ ))
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2_3|disp2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \disp2_3|disp3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);
=======
	clk => \CLOCK_50~input_o\,
	d => \Processador|incremento|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(3));

\Processador|incremento|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~17_sumout\ = SUM(( \Processador|PC|DOUT\(4) ) + ( GND ) + ( \Processador|incremento|Add0~14\ ))
-- \Processador|incremento|Add0~18\ = CARRY(( \Processador|PC|DOUT\(4) ) + ( GND ) + ( \Processador|incremento|Add0~14\ ))
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2_3|disp3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \disp2_3|disp3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);
=======
	clk => \CLOCK_50~input_o\,
	d => \Processador|incremento|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(4));

\Processador|incremento|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~21_sumout\ = SUM(( \Processador|PC|DOUT\(5) ) + ( GND ) + ( \Processador|incremento|Add0~18\ ))
-- \Processador|incremento|Add0~22\ = CARRY(( \Processador|PC|DOUT\(5) ) + ( GND ) + ( \Processador|incremento|Add0~18\ ))
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2_3|disp3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \disp2_3|disp3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);
=======
	clk => \CLOCK_50~input_o\,
	d => \Processador|incremento|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(5));

\Processador|incremento|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~25_sumout\ = SUM(( \Processador|PC|DOUT\(6) ) + ( GND ) + ( \Processador|incremento|Add0~22\ ))
-- \Processador|incremento|Add0~26\ = CARRY(( \Processador|PC|DOUT\(6) ) + ( GND ) + ( \Processador|incremento|Add0~22\ ))
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \disp2_3|disp3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2_3|disp3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

\HEX4[0]~output\ : cyclonev_io_obuf
=======
	datad => \Processador|PC|ALT_INV_DOUT\(6),
	cin => \Processador|incremento|Add0~22\,
	sumout => \Processador|incremento|Add0~25_sumout\,
	cout => \Processador|incremento|Add0~26\);

\Processador|PC|DOUT[6]\ : dffeas
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);
=======
	clk => \CLOCK_50~input_o\,
	d => \Processador|incremento|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(6));

\Processador|incremento|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incremento|Add0~29_sumout\ = SUM(( \Processador|PC|DOUT\(7) ) + ( GND ) + ( \Processador|incremento|Add0~26\ ))
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

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
	o => \HEX4[1]~output_o\);

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
	o => \HEX4[2]~output_o\);

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
	o => \HEX4[3]~output_o\);

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
	o => \HEX4[4]~output_o\);

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
	o => \HEX4[5]~output_o\);

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
	o => \HEX4[6]~output_o\);

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
	o => \HEX5[0]~output_o\);

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
	o => \HEX5[1]~output_o\);

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
	o => \HEX5[2]~output_o\);

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
	o => \HEX5[3]~output_o\);

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
	o => \HEX5[4]~output_o\);

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
	o => \HEX5[5]~output_o\);

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
	o => \HEX5[6]~output_o\);

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

\Processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incremento|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(1));

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

\Processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incremento|Add0~25_sumout\,
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

\Processador|PC|DOUT[7]\ : dffeas
<<<<<<< HEAD
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incremento|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(7));

\Processador|ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~3_combout\ = ( !\Processador|PC|DOUT\(7) & ( (!\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(5) & !\Processador|PC|DOUT\(6)))) ) )

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
	combout => \Processador|ROM|memROM~3_combout\);

\Processador|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~1_combout\ = (!\Processador|PC|DOUT\(0) & !\Processador|PC|DOUT\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	combout => \Processador|ROM|memROM~1_combout\);

\Processador|MUX_proxPC|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_proxPC|saida_MUX[2]~1_combout\ = (\Processador|incremento|Add0~9_sumout\ & ((!\Processador|PC|DOUT\(2)) # ((!\Processador|ROM|memROM~3_combout\) # (!\Processador|ROM|memROM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111000000000111111100000000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \Processador|ROM|ALT_INV_memROM~3_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~1_combout\,
	datad => \Processador|incremento|ALT_INV_Add0~9_sumout\,
	combout => \Processador|MUX_proxPC|saida_MUX[2]~1_combout\);

\Processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|MUX_proxPC|saida_MUX[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(2));

\Processador|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~0_combout\ = (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(6) & !\Processador|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(4),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \Processador|PC|ALT_INV_DOUT\(6),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	combout => \Processador|ROM|memROM~0_combout\);

\Processador|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~2_combout\ = (!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(0) $ (!\Processador|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000011000000000000001100000000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM|memROM~2_combout\);

\Processador|MUX_proxPC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_proxPC|saida_MUX[0]~0_combout\ = ( \Processador|ROM|memROM~2_combout\ & ( \Processador|incremento|Add0~1_sumout\ ) ) # ( !\Processador|ROM|memROM~2_combout\ & ( \Processador|incremento|Add0~1_sumout\ & ( (!\Processador|PC|DOUT\(2)) # 
-- (((!\Processador|ROM|memROM~0_combout\) # (!\Processador|ROM|memROM~1_combout\)) # (\Processador|PC|DOUT\(3))) ) ) ) # ( \Processador|ROM|memROM~2_combout\ & ( !\Processador|incremento|Add0~1_sumout\ & ( (\Processador|PC|DOUT\(2) & 
-- (!\Processador|PC|DOUT\(3) & (\Processador|ROM|memROM~0_combout\ & \Processador|ROM|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010011111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \Processador|PC|ALT_INV_DOUT\(3),
	datac => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datad => \Processador|ROM|ALT_INV_memROM~1_combout\,
	datae => \Processador|ROM|ALT_INV_memROM~2_combout\,
	dataf => \Processador|incremento|ALT_INV_Add0~1_sumout\,
	combout => \Processador|MUX_proxPC|saida_MUX[0]~0_combout\);

\Processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|MUX_proxPC|saida_MUX[0]~0_combout\,
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

\Processador|ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~4_combout\ = ( !\Processador|PC|DOUT\(6) & ( !\Processador|PC|DOUT\(7) & ( (!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(4) & !\Processador|PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \Processador|PC|ALT_INV_DOUT\(3),
	datac => \Processador|PC|ALT_INV_DOUT\(4),
	datad => \Processador|PC|ALT_INV_DOUT\(5),
	datae => \Processador|PC|ALT_INV_DOUT\(6),
	dataf => \Processador|PC|ALT_INV_DOUT\(7),
	combout => \Processador|ROM|memROM~4_combout\);

\Processador|ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~7_combout\ = (!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(3) & ((!\Processador|PC|DOUT\(1)) # (\Processador|PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000000000110100000000000011010000000000001101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM|memROM~7_combout\);

\Processador|ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~10_combout\ = (\Processador|ROM|memROM~0_combout\ & \Processador|ROM|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~7_combout\,
	combout => \Processador|ROM|memROM~10_combout\);

\Processador|ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~5_combout\ = (\Processador|ROM|memROM~0_combout\ & \Processador|ROM|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~2_combout\,
	combout => \Processador|ROM|memROM~5_combout\);

\Processador|ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~6_combout\ = (\Processador|PC|DOUT\(1) & \Processador|ROM|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|ROM|ALT_INV_memROM~4_combout\,
	combout => \Processador|ROM|memROM~6_combout\);

\Decoder|habilitaDisplay0_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|habilitaDisplay0_1~0_combout\ = ( \Processador|ROM|memROM~7_combout\ & ( (\Processador|ROM|memROM~0_combout\ & ((!\Processador|ROM|memROM~1_combout\) # (\Processador|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000001100000000000000000000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(3),
	datac => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datad => \Processador|ROM|ALT_INV_memROM~1_combout\,
	datae => \Processador|ROM|ALT_INV_memROM~7_combout\,
	combout => \Decoder|habilitaDisplay0_1~0_combout\);

\RAM|ram~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~144_combout\ = (\Processador|ROM|memROM~5_combout\ & (\Decoder|habilitaDisplay0_1~0_combout\ & ((!\Processador|PC|DOUT\(0)) # (!\Processador|ROM|memROM~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010000000000011001000000000001100100000000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~6_combout\,
	datad => \Decoder|ALT_INV_habilitaDisplay0_1~0_combout\,
	combout => \RAM|ram~144_combout\);

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~28_combout\,
	ena => \RAM|ram~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\Processador|ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~9_combout\ = (\Processador|ROM|memROM~1_combout\ & \Processador|ROM|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~4_combout\,
	combout => \Processador|ROM|memROM~9_combout\);

\Processador|ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM|memROM~8_combout\ = (\Processador|ROM|memROM~3_combout\ & \Processador|ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~3_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~1_combout\,
	combout => \Processador|ROM|memROM~8_combout\);

\RAM|ram~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~143_combout\ = (!\Processador|ROM|memROM~5_combout\ & (\Decoder|habilitaDisplay0_1~0_combout\ & ((!\Processador|PC|DOUT\(0)) # (!\Processador|ROM|memROM~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~6_combout\,
	datad => \Decoder|ALT_INV_habilitaDisplay0_1~0_combout\,
	combout => \RAM|ram~143_combout\);

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~28_combout\,
	ena => \RAM|ram~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\Processador|ULA|saida~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~7_combout\ = ( !\Processador|ROM|memROM~5_combout\ & ( (!\Processador|ROM|memROM~10_combout\ & ((!\Processador|ROM|memROM~9_combout\ & ((!\Processador|ROM|memROM~8_combout\ & 
-- (\Processador|Banco_Registradores|registrador~28_combout\)) # (\Processador|ROM|memROM~8_combout\ & ((\RAM|ram~15_q\))))) # (\Processador|ROM|memROM~9_combout\ & (\Processador|Banco_Registradores|registrador~28_combout\)))) # 
-- (\Processador|ROM|memROM~10_combout\ & (((\RAM|ram~15_q\ & (!\Processador|ROM|memROM~9_combout\))))) ) ) # ( \Processador|ROM|memROM~5_combout\ & ( (!\Processador|ROM|memROM~10_combout\ & ((!\Processador|ROM|memROM~9_combout\ & 
-- ((!\Processador|ROM|memROM~8_combout\ & (\Processador|Banco_Registradores|registrador~28_combout\)) # (\Processador|ROM|memROM~8_combout\ & ((\RAM|ram~23_q\))))) # (\Processador|ROM|memROM~9_combout\ & 
-- (\Processador|Banco_Registradores|registrador~28_combout\)))) # (\Processador|ROM|memROM~10_combout\ & (((!\Processador|ROM|memROM~9_combout\ & (\RAM|ram~23_q\)) # (\Processador|ROM|memROM~9_combout\ & ((\Processador|ROM|memROM~8_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011100100010001001110010001000001111001000100000111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~10_combout\,
	datab => \Processador|Banco_Registradores|ALT_INV_registrador~28_combout\,
	datac => \RAM|ALT_INV_ram~23_q\,
	datad => \Processador|ROM|ALT_INV_memROM~9_combout\,
	datae => \Processador|ROM|ALT_INV_memROM~5_combout\,
	dataf => \Processador|ROM|ALT_INV_memROM~8_combout\,
	datag => \RAM|ALT_INV_ram~15_q\,
	combout => \Processador|ULA|saida~7_combout\);

\Processador|Banco_Registradores|registrador~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~36_combout\ = ( \Processador|ROM|memROM~0_combout\ & ( !\Processador|ROM|memROM~7_combout\ & ( (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	datae => \Processador|ROM|ALT_INV_memROM~0_combout\,
	dataf => \Processador|ROM|ALT_INV_memROM~7_combout\,
	combout => \Processador|Banco_Registradores|registrador~36_combout\);

\Processador|Banco_Registradores|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|saida~7_combout\,
	ena => \Processador|Banco_Registradores|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~20_q\);

\Processador|Banco_Registradores|registrador~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~37_combout\ = ( \Processador|PC|DOUT\(0) & ( (!\Processador|ROM|memROM~0_combout\) # ((\Processador|PC|DOUT\(2)) # (\Processador|PC|DOUT\(3))) ) ) # ( !\Processador|PC|DOUT\(0) & ( 
-- (!\Processador|ROM|memROM~0_combout\) # ((!\Processador|PC|DOUT\(2) $ (\Processador|PC|DOUT\(1))) # (\Processador|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101110111111101111111011111111111011101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(3),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	datae => \Processador|PC|ALT_INV_DOUT\(0),
	combout => \Processador|Banco_Registradores|registrador~37_combout\);

\Processador|Banco_Registradores|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|saida~7_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~12_q\);

\Processador|Banco_Registradores|registrador~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~28_combout\ = (!\Processador|PC|DOUT\(1) & (((\Processador|Banco_Registradores|registrador~12_q\)))) # (\Processador|PC|DOUT\(1) & ((!\Processador|ROM|memROM~4_combout\ & 
-- ((\Processador|Banco_Registradores|registrador~12_q\))) # (\Processador|ROM|memROM~4_combout\ & (\Processador|Banco_Registradores|registrador~20_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|ROM|ALT_INV_memROM~4_combout\,
	datac => \Processador|Banco_Registradores|ALT_INV_registrador~20_q\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~12_q\,
	combout => \Processador|Banco_Registradores|registrador~28_combout\);

\Decoder|habilitaDisplay0_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|habilitaDisplay0_1~1_combout\ = (\Processador|PC|DOUT\(0) & (!\Processador|ROM|memROM~5_combout\ & (\Processador|ROM|memROM~6_combout\ & \Decoder|habilitaDisplay0_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~6_combout\,
	datad => \Decoder|ALT_INV_habilitaDisplay0_1~0_combout\,
	combout => \Decoder|habilitaDisplay0_1~1_combout\);

\disp0_1|reg|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~28_combout\,
	ena => \Decoder|habilitaDisplay0_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(0));

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~29_combout\,
	ena => \RAM|ram~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~29_combout\,
	ena => \RAM|ram~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\Processador|MUX_RAM_Imediato|saida_MUX[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_RAM_Imediato|saida_MUX[3]~0_combout\ = ( \RAM|ram~18_q\ & ( \RAM|ram~26_q\ & ( (!\Processador|ROM|memROM~1_combout\) # (!\Processador|ROM|memROM~4_combout\) ) ) ) # ( !\RAM|ram~18_q\ & ( \RAM|ram~26_q\ & ( 
-- (\Processador|ROM|memROM~0_combout\ & (\Processador|ROM|memROM~2_combout\ & ((!\Processador|ROM|memROM~1_combout\) # (!\Processador|ROM|memROM~4_combout\)))) ) ) ) # ( \RAM|ram~18_q\ & ( !\RAM|ram~26_q\ & ( (!\Processador|ROM|memROM~0_combout\ & 
-- ((!\Processador|ROM|memROM~1_combout\) # ((!\Processador|ROM|memROM~4_combout\)))) # (\Processador|ROM|memROM~0_combout\ & (!\Processador|ROM|memROM~2_combout\ & ((!\Processador|ROM|memROM~1_combout\) # (!\Processador|ROM|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001010100000000000010101001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~1_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~4_combout\,
	datad => \Processador|ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_ram~18_q\,
	dataf => \RAM|ALT_INV_ram~26_q\,
	combout => \Processador|MUX_RAM_Imediato|saida_MUX[3]~0_combout\);

\Processador|ULA|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~0_combout\ = ( \Processador|MUX_RAM_Imediato|saida_MUX[3]~0_combout\ & ( ((!\Processador|ROM|memROM~8_combout\ & ((\Processador|Banco_Registradores|registrador~29_combout\))) # (\Processador|ROM|memROM~8_combout\ & 
-- ((!\Processador|ROM|memROM~9_combout\) # (!\Processador|Banco_Registradores|registrador~29_combout\)))) # (\Processador|ROM|memROM~10_combout\) ) ) # ( !\Processador|MUX_RAM_Imediato|saida_MUX[3]~0_combout\ & ( (!\Processador|ROM|memROM~8_combout\ & 
-- (((!\Processador|ROM|memROM~10_combout\ & \Processador|Banco_Registradores|registrador~29_combout\)))) # (\Processador|ROM|memROM~8_combout\ & (\Processador|ROM|memROM~9_combout\ & ((\Processador|Banco_Registradores|registrador~29_combout\) # 
-- (\Processador|ROM|memROM~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110110001010111111110111100000001101100010101111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~8_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~9_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~10_combout\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~29_combout\,
	datae => \Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[3]~0_combout\,
	combout => \Processador|ULA|saida~0_combout\);

\Processador|Banco_Registradores|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|saida~0_combout\,
	ena => \Processador|Banco_Registradores|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~23_q\);

\Processador|Banco_Registradores|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|saida~0_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~15_q\);

\Processador|Banco_Registradores|registrador~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~29_combout\ = (!\Processador|PC|DOUT\(1) & (((\Processador|Banco_Registradores|registrador~15_q\)))) # (\Processador|PC|DOUT\(1) & ((!\Processador|ROM|memROM~4_combout\ & 
-- ((\Processador|Banco_Registradores|registrador~15_q\))) # (\Processador|ROM|memROM~4_combout\ & (\Processador|Banco_Registradores|registrador~23_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|ROM|ALT_INV_memROM~4_combout\,
	datac => \Processador|Banco_Registradores|ALT_INV_registrador~23_q\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~15_q\,
	combout => \Processador|Banco_Registradores|registrador~29_combout\);

\disp0_1|reg|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~29_combout\,
	ena => \Decoder|habilitaDisplay0_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(3));

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~30_combout\,
	ena => \RAM|ram~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~30_combout\,
	ena => \RAM|ram~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\Processador|MUX_RAM_Imediato|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_RAM_Imediato|saida_MUX[2]~1_combout\ = (!\Processador|ROM|memROM~0_combout\ & (((\RAM|ram~17_q\)))) # (\Processador|ROM|memROM~0_combout\ & ((!\Processador|ROM|memROM~2_combout\ & (\RAM|ram~17_q\)) # (\Processador|ROM|memROM~2_combout\ & 
-- ((\RAM|ram~25_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~17_q\,
	datad => \RAM|ALT_INV_ram~25_q\,
	combout => \Processador|MUX_RAM_Imediato|saida_MUX[2]~1_combout\);

\Processador|ULA|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~1_combout\ = ( \Processador|MUX_RAM_Imediato|saida_MUX[2]~1_combout\ & ( (!\Processador|ROM|memROM~10_combout\ & (((\Processador|ROM|memROM~8_combout\ & !\Processador|ROM|memROM~9_combout\)) # 
-- (\Processador|Banco_Registradores|registrador~30_combout\))) # (\Processador|ROM|memROM~10_combout\ & (((!\Processador|ROM|memROM~9_combout\)))) ) ) # ( !\Processador|MUX_RAM_Imediato|saida_MUX[2]~1_combout\ & ( (!\Processador|ROM|memROM~10_combout\ & 
-- (\Processador|Banco_Registradores|registrador~30_combout\ & ((!\Processador|ROM|memROM~8_combout\) # (\Processador|ROM|memROM~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110000010011001111110000000000101100000100110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~8_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~9_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~10_combout\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~30_combout\,
	datae => \Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[2]~1_combout\,
	combout => \Processador|ULA|saida~1_combout\);

\Processador|Banco_Registradores|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|saida~1_combout\,
	ena => \Processador|Banco_Registradores|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~22_q\);

\Processador|Banco_Registradores|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|saida~1_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~14_q\);

\Processador|Banco_Registradores|registrador~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~30_combout\ = (!\Processador|PC|DOUT\(1) & (((\Processador|Banco_Registradores|registrador~14_q\)))) # (\Processador|PC|DOUT\(1) & ((!\Processador|ROM|memROM~4_combout\ & 
-- ((\Processador|Banco_Registradores|registrador~14_q\))) # (\Processador|ROM|memROM~4_combout\ & (\Processador|Banco_Registradores|registrador~22_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|ROM|ALT_INV_memROM~4_combout\,
	datac => \Processador|Banco_Registradores|ALT_INV_registrador~22_q\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~14_q\,
	combout => \Processador|Banco_Registradores|registrador~30_combout\);

\disp0_1|reg|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~30_combout\,
	ena => \Decoder|habilitaDisplay0_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(2));

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~31_combout\,
	ena => \RAM|ram~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~31_combout\,
	ena => \RAM|ram~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\Processador|MUX_RAM_Imediato|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_RAM_Imediato|saida_MUX[1]~2_combout\ = ( \RAM|ram~16_q\ & ( \RAM|ram~24_q\ & ( (!\Processador|ROM|memROM~1_combout\) # (!\Processador|ROM|memROM~4_combout\) ) ) ) # ( !\RAM|ram~16_q\ & ( \RAM|ram~24_q\ & ( 
-- (\Processador|ROM|memROM~0_combout\ & (\Processador|ROM|memROM~2_combout\ & ((!\Processador|ROM|memROM~1_combout\) # (!\Processador|ROM|memROM~4_combout\)))) ) ) ) # ( \RAM|ram~16_q\ & ( !\RAM|ram~24_q\ & ( (!\Processador|ROM|memROM~0_combout\ & 
-- ((!\Processador|ROM|memROM~1_combout\) # ((!\Processador|ROM|memROM~4_combout\)))) # (\Processador|ROM|memROM~0_combout\ & (!\Processador|ROM|memROM~2_combout\ & ((!\Processador|ROM|memROM~1_combout\) # (!\Processador|ROM|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001010100000000000010101001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~1_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~4_combout\,
	datad => \Processador|ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_ram~16_q\,
	dataf => \RAM|ALT_INV_ram~24_q\,
	combout => \Processador|MUX_RAM_Imediato|saida_MUX[1]~2_combout\);

\Processador|ULA|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~2_combout\ = ( \Processador|MUX_RAM_Imediato|saida_MUX[1]~2_combout\ & ( ((!\Processador|ROM|memROM~8_combout\ & ((\Processador|Banco_Registradores|registrador~31_combout\))) # (\Processador|ROM|memROM~8_combout\ & 
-- ((!\Processador|ROM|memROM~9_combout\) # (!\Processador|Banco_Registradores|registrador~31_combout\)))) # (\Processador|ROM|memROM~10_combout\) ) ) # ( !\Processador|MUX_RAM_Imediato|saida_MUX[1]~2_combout\ & ( (!\Processador|ROM|memROM~8_combout\ & 
-- (((!\Processador|ROM|memROM~10_combout\ & \Processador|Banco_Registradores|registrador~31_combout\)))) # (\Processador|ROM|memROM~8_combout\ & (\Processador|ROM|memROM~9_combout\ & ((\Processador|Banco_Registradores|registrador~31_combout\) # 
-- (\Processador|ROM|memROM~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110110001010111111110111100000001101100010101111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~8_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~9_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~10_combout\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~31_combout\,
	datae => \Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[1]~2_combout\,
	combout => \Processador|ULA|saida~2_combout\);

\Processador|Banco_Registradores|registrador~21\ : dffeas
=======
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
<<<<<<< HEAD
	d => \Processador|ULA|saida~2_combout\,
	ena => \Processador|Banco_Registradores|registrador~36_combout\,
=======
	d => \Processador|incremento|Add0~29_sumout\,
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~21_q\);

\Processador|Banco_Registradores|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|saida~2_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~13_q\);

\Processador|Banco_Registradores|registrador~31\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \Processador|Banco_Registradores|registrador~31_combout\ = (!\Processador|PC|DOUT\(1) & (((\Processador|Banco_Registradores|registrador~13_q\)))) # (\Processador|PC|DOUT\(1) & ((!\Processador|ROM|memROM~4_combout\ & 
-- ((\Processador|Banco_Registradores|registrador~13_q\))) # (\Processador|ROM|memROM~4_combout\ & (\Processador|Banco_Registradores|registrador~21_q\))))
=======
-- \Processador|ROM|memROM~0_combout\ = ( !\Processador|PC|DOUT\(6) & ( !\Processador|PC|DOUT\(7) & ( (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(4) & !\Processador|PC|DOUT\(5)))) ) ) )
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
=======
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
<<<<<<< HEAD
	datab => \Processador|ROM|ALT_INV_memROM~4_combout\,
	datac => \Processador|Banco_Registradores|ALT_INV_registrador~21_q\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~13_q\,
	combout => \Processador|Banco_Registradores|registrador~31_combout\);

\disp0_1|reg|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~31_combout\,
	ena => \Decoder|habilitaDisplay0_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(1));

\disp0_1|disp0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp0_1|disp0|rascSaida7seg[0]~0_combout\ = (!\disp0_1|reg|DOUT\(3) & (!\disp0_1|reg|DOUT\(1) & (!\disp0_1|reg|DOUT\(0) $ (!\disp0_1|reg|DOUT\(2))))) # (\disp0_1|reg|DOUT\(3) & (\disp0_1|reg|DOUT\(0) & (!\disp0_1|reg|DOUT\(2) $ 
-- (!\disp0_1|reg|DOUT\(1)))))
=======
	datab => \Processador|PC|ALT_INV_DOUT\(3),
	datac => \Processador|PC|ALT_INV_DOUT\(4),
	datad => \Processador|PC|ALT_INV_DOUT\(5),
	datae => \Processador|PC|ALT_INV_DOUT\(6),
	dataf => \Processador|PC|ALT_INV_DOUT\(7),
	combout => \Processador|ROM|memROM~0_combout\);

\Processador|MUX_proxPC|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_proxPC|saida_MUX[2]~1_combout\ = (\Processador|incremento|Add0~9_sumout\ & ((!\Processador|PC|DOUT\(0)) # ((!\Processador|PC|DOUT\(2)) # (!\Processador|ROM|memROM~0_combout\))))
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
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

\RAM|ram~19\ : dffeas
=======
	lut_mask => "0000000011111110000000001111111000000000111111100000000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datad => \Processador|incremento|ALT_INV_Add0~9_sumout\,
	combout => \Processador|MUX_proxPC|saida_MUX[2]~1_combout\);

\Processador|PC|DOUT[2]\ : dffeas
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
<<<<<<< HEAD
	d => \Processador|Banco_Registradores|registrador~32_combout\,
	ena => \RAM|ram~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~32_combout\,
	ena => \RAM|ram~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\Processador|MUX_RAM_Imediato|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_RAM_Imediato|saida_MUX[4]~3_combout\ = (!\Processador|ROM|memROM~0_combout\ & (((\RAM|ram~19_q\)))) # (\Processador|ROM|memROM~0_combout\ & ((!\Processador|ROM|memROM~2_combout\ & (\RAM|ram~19_q\)) # (\Processador|ROM|memROM~2_combout\ & 
-- ((\RAM|ram~27_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~19_q\,
	datad => \RAM|ALT_INV_ram~27_q\,
	combout => \Processador|MUX_RAM_Imediato|saida_MUX[4]~3_combout\);

\Processador|MUX_RAM_Imediato|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\ = (\Processador|ROM|memROM~4_combout\ & (!\Processador|PC|DOUT\(0) $ (\Processador|PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100100001001000010010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|ROM|ALT_INV_memROM~4_combout\,
	combout => \Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\);

\Processador|ULA|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~3_combout\ = ( \Processador|MUX_RAM_Imediato|saida_MUX[4]~3_combout\ & ( \Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\ & ( (!\Processador|ROM|memROM~10_combout\ & (\Processador|Banco_Registradores|registrador~32_combout\ & 
-- ((!\Processador|ROM|memROM~8_combout\) # (\Processador|ROM|memROM~9_combout\)))) ) ) ) # ( !\Processador|MUX_RAM_Imediato|saida_MUX[4]~3_combout\ & ( \Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\ & ( (!\Processador|ROM|memROM~10_combout\ & 
-- (\Processador|Banco_Registradores|registrador~32_combout\ & ((!\Processador|ROM|memROM~8_combout\) # (\Processador|ROM|memROM~9_combout\)))) ) ) ) # ( \Processador|MUX_RAM_Imediato|saida_MUX[4]~3_combout\ & ( 
-- !\Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\ & ( ((!\Processador|ROM|memROM~8_combout\ & ((\Processador|Banco_Registradores|registrador~32_combout\))) # (\Processador|ROM|memROM~8_combout\ & ((!\Processador|ROM|memROM~9_combout\) # 
-- (!\Processador|Banco_Registradores|registrador~32_combout\)))) # (\Processador|ROM|memROM~10_combout\) ) ) ) # ( !\Processador|MUX_RAM_Imediato|saida_MUX[4]~3_combout\ & ( !\Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\ & ( 
-- (!\Processador|ROM|memROM~10_combout\ & (\Processador|Banco_Registradores|registrador~32_combout\ & ((!\Processador|ROM|memROM~8_combout\) # (\Processador|ROM|memROM~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110000010111111110111100000000101100000000000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~8_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~9_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~10_combout\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~32_combout\,
	datae => \Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[4]~3_combout\,
	dataf => \Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \Processador|ULA|saida~3_combout\);

\Processador|Banco_Registradores|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|saida~3_combout\,
	ena => \Processador|Banco_Registradores|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~24_q\);

\Processador|Banco_Registradores|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|saida~3_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~16_q\);

\Processador|Banco_Registradores|registrador~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~32_combout\ = (!\Processador|PC|DOUT\(1) & (((\Processador|Banco_Registradores|registrador~16_q\)))) # (\Processador|PC|DOUT\(1) & ((!\Processador|ROM|memROM~4_combout\ & 
-- ((\Processador|Banco_Registradores|registrador~16_q\))) # (\Processador|ROM|memROM~4_combout\ & (\Processador|Banco_Registradores|registrador~24_q\))))
=======
	d => \Processador|MUX_proxPC|saida_MUX[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(2));

\Processador|MUX_proxPC|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_proxPC|saida_MUX[1]~0_combout\ = (\Processador|incremento|Add0~5_sumout\ & ((!\Processador|PC|DOUT\(0)) # ((!\Processador|PC|DOUT\(2)) # (!\Processador|ROM|memROM~0_combout\))))
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|ROM|ALT_INV_memROM~4_combout\,
	datac => \Processador|Banco_Registradores|ALT_INV_registrador~24_q\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~16_q\,
	combout => \Processador|Banco_Registradores|registrador~32_combout\);

\disp0_1|reg|DOUT[4]\ : dffeas
=======
	lut_mask => "0000111100001110000011110000111000001111000011100000111100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|incremento|ALT_INV_Add0~5_sumout\,
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|MUX_proxPC|saida_MUX[1]~0_combout\);

\Processador|PC|DOUT[1]\ : dffeas
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
<<<<<<< HEAD
	d => \Processador|Banco_Registradores|registrador~32_combout\,
	ena => \Decoder|habilitaDisplay0_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(4));
=======
	d => \Processador|MUX_proxPC|saida_MUX[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(1));
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~33_combout\,
	ena => \RAM|ram~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~33_combout\,
	ena => \RAM|ram~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\Processador|MUX_RAM_Imediato|saida_MUX[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_RAM_Imediato|saida_MUX[7]~5_combout\ = (!\Processador|ROM|memROM~0_combout\ & (((\RAM|ram~22_q\)))) # (\Processador|ROM|memROM~0_combout\ & ((!\Processador|ROM|memROM~2_combout\ & (\RAM|ram~22_q\)) # (\Processador|ROM|memROM~2_combout\ & 
-- ((\RAM|ram~30_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~22_q\,
	datad => \RAM|ALT_INV_ram~30_q\,
	combout => \Processador|MUX_RAM_Imediato|saida_MUX[7]~5_combout\);

\Processador|ULA|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~4_combout\ = ( \Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\ & ( \Processador|MUX_RAM_Imediato|saida_MUX[7]~5_combout\ & ( (!\Processador|ROM|memROM~10_combout\ & (\Processador|Banco_Registradores|registrador~33_combout\ & 
-- ((!\Processador|ROM|memROM~8_combout\) # (\Processador|ROM|memROM~9_combout\)))) ) ) ) # ( !\Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\ & ( \Processador|MUX_RAM_Imediato|saida_MUX[7]~5_combout\ & ( ((!\Processador|ROM|memROM~8_combout\ & 
-- ((\Processador|Banco_Registradores|registrador~33_combout\))) # (\Processador|ROM|memROM~8_combout\ & ((!\Processador|ROM|memROM~9_combout\) # (!\Processador|Banco_Registradores|registrador~33_combout\)))) # (\Processador|ROM|memROM~10_combout\) ) ) ) # ( 
-- \Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\ & ( !\Processador|MUX_RAM_Imediato|saida_MUX[7]~5_combout\ & ( (!\Processador|ROM|memROM~10_combout\ & (\Processador|Banco_Registradores|registrador~33_combout\ & ((!\Processador|ROM|memROM~8_combout\) 
-- # (\Processador|ROM|memROM~9_combout\)))) ) ) ) # ( !\Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\ & ( !\Processador|MUX_RAM_Imediato|saida_MUX[7]~5_combout\ & ( (!\Processador|ROM|memROM~10_combout\ & 
-- (\Processador|Banco_Registradores|registrador~33_combout\ & ((!\Processador|ROM|memROM~8_combout\) # (\Processador|ROM|memROM~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110000000000001011000001011111111011110000000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~8_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~9_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~10_combout\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~33_combout\,
	datae => \Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[7]~5_combout\,
	combout => \Processador|ULA|saida~4_combout\);

\Processador|Banco_Registradores|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|saida~4_combout\,
	ena => \Processador|Banco_Registradores|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~27_q\);

\Processador|Banco_Registradores|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|saida~4_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~19_q\);

\Processador|Banco_Registradores|registrador~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~33_combout\ = (!\Processador|PC|DOUT\(1) & (((\Processador|Banco_Registradores|registrador~19_q\)))) # (\Processador|PC|DOUT\(1) & ((!\Processador|ROM|memROM~4_combout\ & 
-- ((\Processador|Banco_Registradores|registrador~19_q\))) # (\Processador|ROM|memROM~4_combout\ & (\Processador|Banco_Registradores|registrador~27_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|ROM|ALT_INV_memROM~4_combout\,
	datac => \Processador|Banco_Registradores|ALT_INV_registrador~27_q\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~19_q\,
	combout => \Processador|Banco_Registradores|registrador~33_combout\);

\disp0_1|reg|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~33_combout\,
	ena => \Decoder|habilitaDisplay0_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(7));

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~34_combout\,
	ena => \RAM|ram~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);
=======
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\Processador|ULA|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~0_combout\ = (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & (\SW[0]~input_o\ & \Processador|ROM|memROM~0_combout\)))
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~34_combout\,
	ena => \RAM|ram~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\Processador|MUX_RAM_Imediato|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_RAM_Imediato|saida_MUX[6]~6_combout\ = (!\Processador|ROM|memROM~0_combout\ & (((\RAM|ram~21_q\)))) # (\Processador|ROM|memROM~0_combout\ & ((!\Processador|ROM|memROM~2_combout\ & (\RAM|ram~21_q\)) # (\Processador|ROM|memROM~2_combout\ & 
-- ((\RAM|ram~29_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~21_q\,
	datad => \RAM|ALT_INV_ram~29_q\,
	combout => \Processador|MUX_RAM_Imediato|saida_MUX[6]~6_combout\);

\Processador|ULA|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~5_combout\ = ( \Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\ & ( \Processador|MUX_RAM_Imediato|saida_MUX[6]~6_combout\ & ( (!\Processador|ROM|memROM~10_combout\ & (\Processador|Banco_Registradores|registrador~34_combout\ & 
-- ((!\Processador|ROM|memROM~8_combout\) # (\Processador|ROM|memROM~9_combout\)))) ) ) ) # ( !\Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\ & ( \Processador|MUX_RAM_Imediato|saida_MUX[6]~6_combout\ & ( ((!\Processador|ROM|memROM~8_combout\ & 
-- ((\Processador|Banco_Registradores|registrador~34_combout\))) # (\Processador|ROM|memROM~8_combout\ & ((!\Processador|ROM|memROM~9_combout\) # (!\Processador|Banco_Registradores|registrador~34_combout\)))) # (\Processador|ROM|memROM~10_combout\) ) ) ) # ( 
-- \Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\ & ( !\Processador|MUX_RAM_Imediato|saida_MUX[6]~6_combout\ & ( (!\Processador|ROM|memROM~10_combout\ & (\Processador|Banco_Registradores|registrador~34_combout\ & ((!\Processador|ROM|memROM~8_combout\) 
-- # (\Processador|ROM|memROM~9_combout\)))) ) ) ) # ( !\Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\ & ( !\Processador|MUX_RAM_Imediato|saida_MUX[6]~6_combout\ & ( (!\Processador|ROM|memROM~10_combout\ & 
-- (\Processador|Banco_Registradores|registrador~34_combout\ & ((!\Processador|ROM|memROM~8_combout\) # (\Processador|ROM|memROM~9_combout\)))) ) ) )
=======
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|ULA|saida~0_combout\);

\Processador|UC|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|UC|Equal8~0_combout\ = (!\Processador|ROM|memROM~0_combout\) # (!\Processador|PC|DOUT\(0) $ (!\Processador|PC|DOUT\(2)))
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000010110000000000001011000001011111111011110000000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~8_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~9_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~10_combout\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~34_combout\,
	datae => \Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[6]~6_combout\,
	combout => \Processador|ULA|saida~5_combout\);
=======
	lut_mask => "1111011011110110111101101111011011110110111101101111011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|UC|Equal8~0_combout\);
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

\Processador|Banco_Registradores|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
<<<<<<< HEAD
	d => \Processador|ULA|saida~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~36_combout\,
=======
	d => \Processador|ULA|saida~0_combout\,
	ena => \Processador|UC|Equal8~0_combout\,
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~26_q\);

<<<<<<< HEAD
\Processador|Banco_Registradores|registrador~18\ : dffeas
=======
\Decoder|habilitaDisplay0_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|habilitaDisplay0_1~0_combout\ = (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & \Processador|ROM|memROM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Decoder|habilitaDisplay0_1~0_combout\);

\disp0_1|reg|DOUT[0]\ : dffeas
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
<<<<<<< HEAD
	d => \Processador|ULA|saida~5_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~18_q\);

\Processador|Banco_Registradores|registrador~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~34_combout\ = (!\Processador|PC|DOUT\(1) & (((\Processador|Banco_Registradores|registrador~18_q\)))) # (\Processador|PC|DOUT\(1) & ((!\Processador|ROM|memROM~4_combout\ & 
-- ((\Processador|Banco_Registradores|registrador~18_q\))) # (\Processador|ROM|memROM~4_combout\ & (\Processador|Banco_Registradores|registrador~26_q\))))
=======
	d => \Processador|Banco_Registradores|registrador~12_q\,
	ena => \Decoder|habilitaDisplay0_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(0));

\Processador|ULA|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~1_combout\ = (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & (\SW[3]~input_o\ & \Processador|ROM|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|ULA|saida~1_combout\);
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

\Processador|Banco_Registradores|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|ROM|ALT_INV_memROM~4_combout\,
	datac => \Processador|Banco_Registradores|ALT_INV_registrador~26_q\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~18_q\,
	combout => \Processador|Banco_Registradores|registrador~34_combout\);

\disp0_1|reg|DOUT[6]\ : dffeas
=======
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|saida~1_combout\,
	ena => \Processador|UC|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~15_q\);

\disp0_1|reg|DOUT[3]\ : dffeas
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
<<<<<<< HEAD
	d => \Processador|Banco_Registradores|registrador~34_combout\,
	ena => \Decoder|habilitaDisplay0_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(6));
=======
	d => \Processador|Banco_Registradores|registrador~15_q\,
	ena => \Decoder|habilitaDisplay0_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(3));

\Processador|ULA|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~2_combout\ = (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & (\SW[2]~input_o\ & \Processador|ROM|memROM~0_combout\)))
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~35_combout\,
	ena => \RAM|ram~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);
=======
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|ULA|saida~2_combout\);
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
<<<<<<< HEAD
	d => \Processador|Banco_Registradores|registrador~35_combout\,
	ena => \RAM|ram~144_combout\,
=======
	d => \Processador|ULA|saida~2_combout\,
	ena => \Processador|UC|Equal8~0_combout\,
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

<<<<<<< HEAD
\Processador|MUX_RAM_Imediato|saida_MUX[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_RAM_Imediato|saida_MUX[5]~7_combout\ = (!\Processador|ROM|memROM~0_combout\ & (((\RAM|ram~20_q\)))) # (\Processador|ROM|memROM~0_combout\ & ((!\Processador|ROM|memROM~2_combout\ & (\RAM|ram~20_q\)) # (\Processador|ROM|memROM~2_combout\ & 
-- ((\RAM|ram~28_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~20_q\,
	datad => \RAM|ALT_INV_ram~28_q\,
	combout => \Processador|MUX_RAM_Imediato|saida_MUX[5]~7_combout\);

\Processador|ULA|saida~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~6_combout\ = ( \Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\ & ( \Processador|MUX_RAM_Imediato|saida_MUX[5]~7_combout\ & ( (!\Processador|ROM|memROM~10_combout\ & (\Processador|Banco_Registradores|registrador~35_combout\ & 
-- ((!\Processador|ROM|memROM~8_combout\) # (\Processador|ROM|memROM~9_combout\)))) ) ) ) # ( !\Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\ & ( \Processador|MUX_RAM_Imediato|saida_MUX[5]~7_combout\ & ( ((!\Processador|ROM|memROM~8_combout\ & 
-- ((\Processador|Banco_Registradores|registrador~35_combout\))) # (\Processador|ROM|memROM~8_combout\ & ((!\Processador|ROM|memROM~9_combout\) # (!\Processador|Banco_Registradores|registrador~35_combout\)))) # (\Processador|ROM|memROM~10_combout\) ) ) ) # ( 
-- \Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\ & ( !\Processador|MUX_RAM_Imediato|saida_MUX[5]~7_combout\ & ( (!\Processador|ROM|memROM~10_combout\ & (\Processador|Banco_Registradores|registrador~35_combout\ & ((!\Processador|ROM|memROM~8_combout\) 
-- # (\Processador|ROM|memROM~9_combout\)))) ) ) ) # ( !\Processador|MUX_RAM_Imediato|saida_MUX[4]~4_combout\ & ( !\Processador|MUX_RAM_Imediato|saida_MUX[5]~7_combout\ & ( (!\Processador|ROM|memROM~10_combout\ & 
-- (\Processador|Banco_Registradores|registrador~35_combout\ & ((!\Processador|ROM|memROM~8_combout\) # (\Processador|ROM|memROM~9_combout\)))) ) ) )

=======
\disp0_1|reg|DOUT[2]\ : dffeas
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110000000000001011000001011111111011110000000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	dataa => \Processador|ROM|ALT_INV_memROM~8_combout\,
	datab => \Processador|ROM|ALT_INV_memROM~9_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~10_combout\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~35_combout\,
	datae => \Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \Processador|MUX_RAM_Imediato|ALT_INV_saida_MUX[5]~7_combout\,
	combout => \Processador|ULA|saida~6_combout\);

\Processador|Banco_Registradores|registrador~25\ : dffeas
=======
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~14_q\,
	ena => \Decoder|habilitaDisplay0_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(2));

\Processador|ULA|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~3_combout\ = (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & (\SW[1]~input_o\ & \Processador|ROM|memROM~0_combout\)))

>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA|saida~6_combout\,
	ena => \Processador|Banco_Registradores|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~25_q\);

\Processador|Banco_Registradores|registrador~17\ : dffeas
=======
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|ULA|saida~3_combout\);

\Processador|Banco_Registradores|registrador~13\ : dffeas
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
<<<<<<< HEAD
	d => \Processador|ULA|saida~6_combout\,
	ena => \Processador|Banco_Registradores|registrador~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~17_q\);

\Processador|Banco_Registradores|registrador~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Registradores|registrador~35_combout\ = (!\Processador|PC|DOUT\(1) & (((\Processador|Banco_Registradores|registrador~17_q\)))) # (\Processador|PC|DOUT\(1) & ((!\Processador|ROM|memROM~4_combout\ & 
-- ((\Processador|Banco_Registradores|registrador~17_q\))) # (\Processador|ROM|memROM~4_combout\ & (\Processador|Banco_Registradores|registrador~25_q\))))
=======
	d => \Processador|ULA|saida~3_combout\,
	ena => \Processador|UC|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~13_q\);
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|ROM|ALT_INV_memROM~4_combout\,
	datac => \Processador|Banco_Registradores|ALT_INV_registrador~25_q\,
	datad => \Processador|Banco_Registradores|ALT_INV_registrador~17_q\,
	combout => \Processador|Banco_Registradores|registrador~35_combout\);

\disp0_1|reg|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
<<<<<<< HEAD
	d => \Processador|Banco_Registradores|registrador~35_combout\,
	ena => \Decoder|habilitaDisplay0_1~1_combout\,
=======
	d => \Processador|Banco_Registradores|registrador~13_q\,
	ena => \Decoder|habilitaDisplay0_1~0_combout\,
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
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

<<<<<<< HEAD
\Decoder|habilitaDisplay2_3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|habilitaDisplay2_3~0_combout\ = (\Processador|PC|DOUT\(0) & (\Processador|ROM|memROM~5_combout\ & (\Processador|ROM|memROM~6_combout\ & \Decoder|habilitaDisplay0_1~0_combout\)))
=======
\Processador|ULA|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~4_combout\ = (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & (\SW[4]~input_o\ & \Processador|ROM|memROM~0_combout\)))
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
=======
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
<<<<<<< HEAD
	datab => \Processador|ROM|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM|ALT_INV_memROM~6_combout\,
	datad => \Decoder|ALT_INV_habilitaDisplay0_1~0_combout\,
	combout => \Decoder|habilitaDisplay2_3~0_combout\);
=======
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|ULA|saida~4_combout\);
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

\disp2_3|reg|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
<<<<<<< HEAD
	d => \Processador|Banco_Registradores|registrador~28_combout\,
	ena => \Decoder|habilitaDisplay2_3~0_combout\,
=======
	d => \Processador|ULA|saida~4_combout\,
	ena => \Processador|UC|Equal8~0_combout\,
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2_3|reg|DOUT\(0));

\disp2_3|reg|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
<<<<<<< HEAD
	d => \Processador|Banco_Registradores|registrador~29_combout\,
	ena => \Decoder|habilitaDisplay2_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2_3|reg|DOUT\(3));
=======
	d => \Processador|Banco_Registradores|registrador~16_q\,
	ena => \Decoder|habilitaDisplay0_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(4));

\Processador|ULA|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~5_combout\ = (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & (\SW[7]~input_o\ & \Processador|ROM|memROM~0_combout\)))
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

\disp2_3|reg|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~30_combout\,
	ena => \Decoder|habilitaDisplay2_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2_3|reg|DOUT\(2));

\disp2_3|reg|DOUT[1]\ : dffeas
=======
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|ULA|saida~5_combout\);

\Processador|Banco_Registradores|registrador~19\ : dffeas
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
<<<<<<< HEAD
	d => \Processador|Banco_Registradores|registrador~31_combout\,
	ena => \Decoder|habilitaDisplay2_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2_3|reg|DOUT\(1));

\disp2_3|disp2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_3|disp2|rascSaida7seg[0]~0_combout\ = (!\disp2_3|reg|DOUT\(3) & (!\disp2_3|reg|DOUT\(1) & (!\disp2_3|reg|DOUT\(0) $ (!\disp2_3|reg|DOUT\(2))))) # (\disp2_3|reg|DOUT\(3) & (\disp2_3|reg|DOUT\(0) & (!\disp2_3|reg|DOUT\(2) $ 
-- (!\disp2_3|reg|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp2_3|reg|ALT_INV_DOUT\(0),
	datab => \disp2_3|reg|ALT_INV_DOUT\(3),
	datac => \disp2_3|reg|ALT_INV_DOUT\(2),
	datad => \disp2_3|reg|ALT_INV_DOUT\(1),
	combout => \disp2_3|disp2|rascSaida7seg[0]~0_combout\);

\disp2_3|disp2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_3|disp2|rascSaida7seg[1]~1_combout\ = (!\disp2_3|reg|DOUT\(3) & (\disp2_3|reg|DOUT\(2) & (!\disp2_3|reg|DOUT\(0) $ (!\disp2_3|reg|DOUT\(1))))) # (\disp2_3|reg|DOUT\(3) & ((!\disp2_3|reg|DOUT\(0) & (\disp2_3|reg|DOUT\(2))) # (\disp2_3|reg|DOUT\(0) & 
-- ((\disp2_3|reg|DOUT\(1))))))

=======
	d => \Processador|ULA|saida~5_combout\,
	ena => \Processador|UC|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~19_q\);

\disp0_1|reg|DOUT[7]\ : dffeas
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	dataa => \disp2_3|reg|ALT_INV_DOUT\(0),
	datab => \disp2_3|reg|ALT_INV_DOUT\(3),
	datac => \disp2_3|reg|ALT_INV_DOUT\(2),
	datad => \disp2_3|reg|ALT_INV_DOUT\(1),
	combout => \disp2_3|disp2|rascSaida7seg[1]~1_combout\);

\disp2_3|disp2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_3|disp2|rascSaida7seg[2]~2_combout\ = (!\disp2_3|reg|DOUT\(3) & (!\disp2_3|reg|DOUT\(0) & (!\disp2_3|reg|DOUT\(2) & \disp2_3|reg|DOUT\(1)))) # (\disp2_3|reg|DOUT\(3) & (\disp2_3|reg|DOUT\(2) & ((!\disp2_3|reg|DOUT\(0)) # (\disp2_3|reg|DOUT\(1)))))
=======
	clk => \CLOCK_50~input_o\,
	d => \Processador|Banco_Registradores|registrador~19_q\,
	ena => \Decoder|habilitaDisplay0_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(7));

\Processador|ULA|saida~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~6_combout\ = (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & (\SW[6]~input_o\ & \Processador|ROM|memROM~0_combout\)))
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp2_3|reg|ALT_INV_DOUT\(0),
	datab => \disp2_3|reg|ALT_INV_DOUT\(3),
	datac => \disp2_3|reg|ALT_INV_DOUT\(2),
	datad => \disp2_3|reg|ALT_INV_DOUT\(1),
	combout => \disp2_3|disp2|rascSaida7seg[2]~2_combout\);

\disp2_3|disp2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_3|disp2|rascSaida7seg[3]~3_combout\ = (!\disp2_3|reg|DOUT\(1) & (!\disp2_3|reg|DOUT\(3) & (!\disp2_3|reg|DOUT\(0) $ (!\disp2_3|reg|DOUT\(2))))) # (\disp2_3|reg|DOUT\(1) & ((!\disp2_3|reg|DOUT\(0) & (!\disp2_3|reg|DOUT\(2) & \disp2_3|reg|DOUT\(3))) 
-- # (\disp2_3|reg|DOUT\(0) & (\disp2_3|reg|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp2_3|reg|ALT_INV_DOUT\(0),
	datab => \disp2_3|reg|ALT_INV_DOUT\(1),
	datac => \disp2_3|reg|ALT_INV_DOUT\(2),
	datad => \disp2_3|reg|ALT_INV_DOUT\(3),
	combout => \disp2_3|disp2|rascSaida7seg[3]~3_combout\);

\disp2_3|disp2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_3|disp2|rascSaida7seg[4]~4_combout\ = (!\disp2_3|reg|DOUT\(1) & ((!\disp2_3|reg|DOUT\(2) & ((\disp2_3|reg|DOUT\(0)))) # (\disp2_3|reg|DOUT\(2) & (!\disp2_3|reg|DOUT\(3))))) # (\disp2_3|reg|DOUT\(1) & (!\disp2_3|reg|DOUT\(3) & 
-- ((\disp2_3|reg|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp2_3|reg|ALT_INV_DOUT\(3),
	datab => \disp2_3|reg|ALT_INV_DOUT\(2),
	datac => \disp2_3|reg|ALT_INV_DOUT\(1),
	datad => \disp2_3|reg|ALT_INV_DOUT\(0),
	combout => \disp2_3|disp2|rascSaida7seg[4]~4_combout\);

\disp2_3|disp2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_3|disp2|rascSaida7seg[5]~5_combout\ = (!\disp2_3|reg|DOUT\(0) & (!\disp2_3|reg|DOUT\(2) & (\disp2_3|reg|DOUT\(1) & !\disp2_3|reg|DOUT\(3)))) # (\disp2_3|reg|DOUT\(0) & (!\disp2_3|reg|DOUT\(3) $ (((\disp2_3|reg|DOUT\(2) & !\disp2_3|reg|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp2_3|reg|ALT_INV_DOUT\(0),
	datab => \disp2_3|reg|ALT_INV_DOUT\(2),
	datac => \disp2_3|reg|ALT_INV_DOUT\(1),
	datad => \disp2_3|reg|ALT_INV_DOUT\(3),
	combout => \disp2_3|disp2|rascSaida7seg[5]~5_combout\);

\disp2_3|disp2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_3|disp2|rascSaida7seg[6]~6_combout\ = (!\disp2_3|reg|DOUT\(0) & (!\disp2_3|reg|DOUT\(1) & (!\disp2_3|reg|DOUT\(3) $ (\disp2_3|reg|DOUT\(2))))) # (\disp2_3|reg|DOUT\(0) & (!\disp2_3|reg|DOUT\(3) & (!\disp2_3|reg|DOUT\(2) $ (\disp2_3|reg|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp2_3|reg|ALT_INV_DOUT\(0),
	datab => \disp2_3|reg|ALT_INV_DOUT\(3),
	datac => \disp2_3|reg|ALT_INV_DOUT\(2),
	datad => \disp2_3|reg|ALT_INV_DOUT\(1),
	combout => \disp2_3|disp2|rascSaida7seg[6]~6_combout\);

\disp2_3|reg|DOUT[4]\ : dffeas
=======
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|ULA|saida~6_combout\);

\Processador|Banco_Registradores|registrador~18\ : dffeas
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
<<<<<<< HEAD
	d => \Processador|Banco_Registradores|registrador~32_combout\,
	ena => \Decoder|habilitaDisplay2_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2_3|reg|DOUT\(4));

\disp2_3|reg|DOUT[7]\ : dffeas
=======
	d => \Processador|ULA|saida~6_combout\,
	ena => \Processador|UC|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~18_q\);

\disp0_1|reg|DOUT[6]\ : dffeas
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
<<<<<<< HEAD
	d => \Processador|Banco_Registradores|registrador~33_combout\,
	ena => \Decoder|habilitaDisplay2_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2_3|reg|DOUT\(7));

\disp2_3|reg|DOUT[6]\ : dffeas
=======
	d => \Processador|Banco_Registradores|registrador~18_q\,
	ena => \Decoder|habilitaDisplay0_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp0_1|reg|DOUT\(6));

\Processador|ULA|saida~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA|saida~7_combout\ = (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & (\SW[5]~input_o\ & \Processador|ROM|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \Processador|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|ULA|saida~7_combout\);

\Processador|Banco_Registradores|registrador~17\ : dffeas
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
<<<<<<< HEAD
	d => \Processador|Banco_Registradores|registrador~34_combout\,
	ena => \Decoder|habilitaDisplay2_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2_3|reg|DOUT\(6));
=======
	d => \Processador|ULA|saida~7_combout\,
	ena => \Processador|UC|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Registradores|registrador~17_q\);
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0

\disp2_3|reg|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
<<<<<<< HEAD
	d => \Processador|Banco_Registradores|registrador~35_combout\,
	ena => \Decoder|habilitaDisplay2_3~0_combout\,
=======
	d => \Processador|Banco_Registradores|registrador~17_q\,
	ena => \Decoder|habilitaDisplay0_1~0_combout\,
>>>>>>> 9b878947d680cd8d2ed93e8ae19d24164df842b0
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2_3|reg|DOUT\(5));

\disp2_3|disp3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_3|disp3|rascSaida7seg[0]~0_combout\ = (!\disp2_3|reg|DOUT\(7) & (!\disp2_3|reg|DOUT\(5) & (!\disp2_3|reg|DOUT\(4) $ (!\disp2_3|reg|DOUT\(6))))) # (\disp2_3|reg|DOUT\(7) & (\disp2_3|reg|DOUT\(4) & (!\disp2_3|reg|DOUT\(6) $ 
-- (!\disp2_3|reg|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp2_3|reg|ALT_INV_DOUT\(4),
	datab => \disp2_3|reg|ALT_INV_DOUT\(7),
	datac => \disp2_3|reg|ALT_INV_DOUT\(6),
	datad => \disp2_3|reg|ALT_INV_DOUT\(5),
	combout => \disp2_3|disp3|rascSaida7seg[0]~0_combout\);

\disp2_3|disp3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_3|disp3|rascSaida7seg[1]~1_combout\ = (!\disp2_3|reg|DOUT\(7) & (\disp2_3|reg|DOUT\(6) & (!\disp2_3|reg|DOUT\(4) $ (!\disp2_3|reg|DOUT\(5))))) # (\disp2_3|reg|DOUT\(7) & ((!\disp2_3|reg|DOUT\(4) & (\disp2_3|reg|DOUT\(6))) # (\disp2_3|reg|DOUT\(4) & 
-- ((\disp2_3|reg|DOUT\(5))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp2_3|reg|ALT_INV_DOUT\(4),
	datab => \disp2_3|reg|ALT_INV_DOUT\(7),
	datac => \disp2_3|reg|ALT_INV_DOUT\(6),
	datad => \disp2_3|reg|ALT_INV_DOUT\(5),
	combout => \disp2_3|disp3|rascSaida7seg[1]~1_combout\);

\disp2_3|disp3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_3|disp3|rascSaida7seg[2]~2_combout\ = (!\disp2_3|reg|DOUT\(7) & (!\disp2_3|reg|DOUT\(4) & (!\disp2_3|reg|DOUT\(6) & \disp2_3|reg|DOUT\(5)))) # (\disp2_3|reg|DOUT\(7) & (\disp2_3|reg|DOUT\(6) & ((!\disp2_3|reg|DOUT\(4)) # (\disp2_3|reg|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp2_3|reg|ALT_INV_DOUT\(4),
	datab => \disp2_3|reg|ALT_INV_DOUT\(7),
	datac => \disp2_3|reg|ALT_INV_DOUT\(6),
	datad => \disp2_3|reg|ALT_INV_DOUT\(5),
	combout => \disp2_3|disp3|rascSaida7seg[2]~2_combout\);

\disp2_3|disp3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_3|disp3|rascSaida7seg[3]~3_combout\ = (!\disp2_3|reg|DOUT\(5) & (!\disp2_3|reg|DOUT\(7) & (!\disp2_3|reg|DOUT\(4) $ (!\disp2_3|reg|DOUT\(6))))) # (\disp2_3|reg|DOUT\(5) & ((!\disp2_3|reg|DOUT\(4) & (!\disp2_3|reg|DOUT\(6) & \disp2_3|reg|DOUT\(7))) 
-- # (\disp2_3|reg|DOUT\(4) & (\disp2_3|reg|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp2_3|reg|ALT_INV_DOUT\(4),
	datab => \disp2_3|reg|ALT_INV_DOUT\(5),
	datac => \disp2_3|reg|ALT_INV_DOUT\(6),
	datad => \disp2_3|reg|ALT_INV_DOUT\(7),
	combout => \disp2_3|disp3|rascSaida7seg[3]~3_combout\);

\disp2_3|disp3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_3|disp3|rascSaida7seg[4]~4_combout\ = (!\disp2_3|reg|DOUT\(5) & ((!\disp2_3|reg|DOUT\(6) & ((\disp2_3|reg|DOUT\(4)))) # (\disp2_3|reg|DOUT\(6) & (!\disp2_3|reg|DOUT\(7))))) # (\disp2_3|reg|DOUT\(5) & (!\disp2_3|reg|DOUT\(7) & 
-- ((\disp2_3|reg|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp2_3|reg|ALT_INV_DOUT\(7),
	datab => \disp2_3|reg|ALT_INV_DOUT\(6),
	datac => \disp2_3|reg|ALT_INV_DOUT\(5),
	datad => \disp2_3|reg|ALT_INV_DOUT\(4),
	combout => \disp2_3|disp3|rascSaida7seg[4]~4_combout\);

\disp2_3|disp3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_3|disp3|rascSaida7seg[5]~5_combout\ = (!\disp2_3|reg|DOUT\(4) & (!\disp2_3|reg|DOUT\(6) & (\disp2_3|reg|DOUT\(5) & !\disp2_3|reg|DOUT\(7)))) # (\disp2_3|reg|DOUT\(4) & (!\disp2_3|reg|DOUT\(7) $ (((\disp2_3|reg|DOUT\(6) & !\disp2_3|reg|DOUT\(5))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp2_3|reg|ALT_INV_DOUT\(4),
	datab => \disp2_3|reg|ALT_INV_DOUT\(6),
	datac => \disp2_3|reg|ALT_INV_DOUT\(5),
	datad => \disp2_3|reg|ALT_INV_DOUT\(7),
	combout => \disp2_3|disp3|rascSaida7seg[5]~5_combout\);

\disp2_3|disp3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_3|disp3|rascSaida7seg[6]~6_combout\ = (!\disp2_3|reg|DOUT\(4) & (!\disp2_3|reg|DOUT\(5) & (!\disp2_3|reg|DOUT\(7) $ (\disp2_3|reg|DOUT\(6))))) # (\disp2_3|reg|DOUT\(4) & (!\disp2_3|reg|DOUT\(7) & (!\disp2_3|reg|DOUT\(6) $ (\disp2_3|reg|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \disp2_3|reg|ALT_INV_DOUT\(4),
	datab => \disp2_3|reg|ALT_INV_DOUT\(7),
	datac => \disp2_3|reg|ALT_INV_DOUT\(6),
	datad => \disp2_3|reg|ALT_INV_DOUT\(5),
	combout => \disp2_3|disp3|rascSaida7seg[6]~6_combout\);

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

ww_PC(0) <= \PC[0]~output_o\;

ww_PC(1) <= \PC[1]~output_o\;

ww_PC(2) <= \PC[2]~output_o\;

ww_PC(3) <= \PC[3]~output_o\;

ww_PC(4) <= \PC[4]~output_o\;

ww_PC(5) <= \PC[5]~output_o\;

ww_PC(6) <= \PC[6]~output_o\;

ww_PC(7) <= \PC[7]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


