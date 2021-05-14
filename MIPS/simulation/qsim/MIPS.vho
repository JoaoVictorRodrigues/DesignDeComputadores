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

-- DATE "05/13/2021 17:55:44"

-- 
-- Device: Altera 5CSEMA4U23C6 Package UFBGA672
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

ENTITY 	MIPS IS
    PORT (
	clk : IN std_logic;
	addrOUT : OUT std_logic_vector(31 DOWNTO 0);
	countPC : OUT std_logic_vector(31 DOWNTO 0);
	dataRead : OUT std_logic_vector(31 DOWNTO 0);
	dataWrite : OUT std_logic_vector(31 DOWNTO 0)
	);
END MIPS;

ARCHITECTURE structure OF MIPS IS
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
SIGNAL ww_addrOUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_countPC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_dataRead : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_dataWrite : std_logic_vector(31 DOWNTO 0);
SIGNAL \addrOUT[0]~output_o\ : std_logic;
SIGNAL \addrOUT[1]~output_o\ : std_logic;
SIGNAL \addrOUT[2]~output_o\ : std_logic;
SIGNAL \addrOUT[3]~output_o\ : std_logic;
SIGNAL \addrOUT[4]~output_o\ : std_logic;
SIGNAL \addrOUT[5]~output_o\ : std_logic;
SIGNAL \addrOUT[6]~output_o\ : std_logic;
SIGNAL \addrOUT[7]~output_o\ : std_logic;
SIGNAL \addrOUT[8]~output_o\ : std_logic;
SIGNAL \addrOUT[9]~output_o\ : std_logic;
SIGNAL \addrOUT[10]~output_o\ : std_logic;
SIGNAL \addrOUT[11]~output_o\ : std_logic;
SIGNAL \addrOUT[12]~output_o\ : std_logic;
SIGNAL \addrOUT[13]~output_o\ : std_logic;
SIGNAL \addrOUT[14]~output_o\ : std_logic;
SIGNAL \addrOUT[15]~output_o\ : std_logic;
SIGNAL \addrOUT[16]~output_o\ : std_logic;
SIGNAL \addrOUT[17]~output_o\ : std_logic;
SIGNAL \addrOUT[18]~output_o\ : std_logic;
SIGNAL \addrOUT[19]~output_o\ : std_logic;
SIGNAL \addrOUT[20]~output_o\ : std_logic;
SIGNAL \addrOUT[21]~output_o\ : std_logic;
SIGNAL \addrOUT[22]~output_o\ : std_logic;
SIGNAL \addrOUT[23]~output_o\ : std_logic;
SIGNAL \addrOUT[24]~output_o\ : std_logic;
SIGNAL \addrOUT[25]~output_o\ : std_logic;
SIGNAL \addrOUT[26]~output_o\ : std_logic;
SIGNAL \addrOUT[27]~output_o\ : std_logic;
SIGNAL \addrOUT[28]~output_o\ : std_logic;
SIGNAL \addrOUT[29]~output_o\ : std_logic;
SIGNAL \addrOUT[30]~output_o\ : std_logic;
SIGNAL \addrOUT[31]~output_o\ : std_logic;
SIGNAL \countPC[0]~output_o\ : std_logic;
SIGNAL \countPC[1]~output_o\ : std_logic;
SIGNAL \countPC[2]~output_o\ : std_logic;
SIGNAL \countPC[3]~output_o\ : std_logic;
SIGNAL \countPC[4]~output_o\ : std_logic;
SIGNAL \countPC[5]~output_o\ : std_logic;
SIGNAL \countPC[6]~output_o\ : std_logic;
SIGNAL \countPC[7]~output_o\ : std_logic;
SIGNAL \countPC[8]~output_o\ : std_logic;
SIGNAL \countPC[9]~output_o\ : std_logic;
SIGNAL \countPC[10]~output_o\ : std_logic;
SIGNAL \countPC[11]~output_o\ : std_logic;
SIGNAL \countPC[12]~output_o\ : std_logic;
SIGNAL \countPC[13]~output_o\ : std_logic;
SIGNAL \countPC[14]~output_o\ : std_logic;
SIGNAL \countPC[15]~output_o\ : std_logic;
SIGNAL \countPC[16]~output_o\ : std_logic;
SIGNAL \countPC[17]~output_o\ : std_logic;
SIGNAL \countPC[18]~output_o\ : std_logic;
SIGNAL \countPC[19]~output_o\ : std_logic;
SIGNAL \countPC[20]~output_o\ : std_logic;
SIGNAL \countPC[21]~output_o\ : std_logic;
SIGNAL \countPC[22]~output_o\ : std_logic;
SIGNAL \countPC[23]~output_o\ : std_logic;
SIGNAL \countPC[24]~output_o\ : std_logic;
SIGNAL \countPC[25]~output_o\ : std_logic;
SIGNAL \countPC[26]~output_o\ : std_logic;
SIGNAL \countPC[27]~output_o\ : std_logic;
SIGNAL \countPC[28]~output_o\ : std_logic;
SIGNAL \countPC[29]~output_o\ : std_logic;
SIGNAL \countPC[30]~output_o\ : std_logic;
SIGNAL \countPC[31]~output_o\ : std_logic;
SIGNAL \dataRead[0]~output_o\ : std_logic;
SIGNAL \dataRead[1]~output_o\ : std_logic;
SIGNAL \dataRead[2]~output_o\ : std_logic;
SIGNAL \dataRead[3]~output_o\ : std_logic;
SIGNAL \dataRead[4]~output_o\ : std_logic;
SIGNAL \dataRead[5]~output_o\ : std_logic;
SIGNAL \dataRead[6]~output_o\ : std_logic;
SIGNAL \dataRead[7]~output_o\ : std_logic;
SIGNAL \dataRead[8]~output_o\ : std_logic;
SIGNAL \dataRead[9]~output_o\ : std_logic;
SIGNAL \dataRead[10]~output_o\ : std_logic;
SIGNAL \dataRead[11]~output_o\ : std_logic;
SIGNAL \dataRead[12]~output_o\ : std_logic;
SIGNAL \dataRead[13]~output_o\ : std_logic;
SIGNAL \dataRead[14]~output_o\ : std_logic;
SIGNAL \dataRead[15]~output_o\ : std_logic;
SIGNAL \dataRead[16]~output_o\ : std_logic;
SIGNAL \dataRead[17]~output_o\ : std_logic;
SIGNAL \dataRead[18]~output_o\ : std_logic;
SIGNAL \dataRead[19]~output_o\ : std_logic;
SIGNAL \dataRead[20]~output_o\ : std_logic;
SIGNAL \dataRead[21]~output_o\ : std_logic;
SIGNAL \dataRead[22]~output_o\ : std_logic;
SIGNAL \dataRead[23]~output_o\ : std_logic;
SIGNAL \dataRead[24]~output_o\ : std_logic;
SIGNAL \dataRead[25]~output_o\ : std_logic;
SIGNAL \dataRead[26]~output_o\ : std_logic;
SIGNAL \dataRead[27]~output_o\ : std_logic;
SIGNAL \dataRead[28]~output_o\ : std_logic;
SIGNAL \dataRead[29]~output_o\ : std_logic;
SIGNAL \dataRead[30]~output_o\ : std_logic;
SIGNAL \dataRead[31]~output_o\ : std_logic;
SIGNAL \dataWrite[0]~output_o\ : std_logic;
SIGNAL \dataWrite[1]~output_o\ : std_logic;
SIGNAL \dataWrite[2]~output_o\ : std_logic;
SIGNAL \dataWrite[3]~output_o\ : std_logic;
SIGNAL \dataWrite[4]~output_o\ : std_logic;
SIGNAL \dataWrite[5]~output_o\ : std_logic;
SIGNAL \dataWrite[6]~output_o\ : std_logic;
SIGNAL \dataWrite[7]~output_o\ : std_logic;
SIGNAL \dataWrite[8]~output_o\ : std_logic;
SIGNAL \dataWrite[9]~output_o\ : std_logic;
SIGNAL \dataWrite[10]~output_o\ : std_logic;
SIGNAL \dataWrite[11]~output_o\ : std_logic;
SIGNAL \dataWrite[12]~output_o\ : std_logic;
SIGNAL \dataWrite[13]~output_o\ : std_logic;
SIGNAL \dataWrite[14]~output_o\ : std_logic;
SIGNAL \dataWrite[15]~output_o\ : std_logic;
SIGNAL \dataWrite[16]~output_o\ : std_logic;
SIGNAL \dataWrite[17]~output_o\ : std_logic;
SIGNAL \dataWrite[18]~output_o\ : std_logic;
SIGNAL \dataWrite[19]~output_o\ : std_logic;
SIGNAL \dataWrite[20]~output_o\ : std_logic;
SIGNAL \dataWrite[21]~output_o\ : std_logic;
SIGNAL \dataWrite[22]~output_o\ : std_logic;
SIGNAL \dataWrite[23]~output_o\ : std_logic;
SIGNAL \dataWrite[24]~output_o\ : std_logic;
SIGNAL \dataWrite[25]~output_o\ : std_logic;
SIGNAL \dataWrite[26]~output_o\ : std_logic;
SIGNAL \dataWrite[27]~output_o\ : std_logic;
SIGNAL \dataWrite[28]~output_o\ : std_logic;
SIGNAL \dataWrite[29]~output_o\ : std_logic;
SIGNAL \dataWrite[30]~output_o\ : std_logic;
SIGNAL \dataWrite[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \somador|Add0~5_sumout\ : std_logic;
SIGNAL \somador|Add0~6\ : std_logic;
SIGNAL \somador|Add0~9_sumout\ : std_logic;
SIGNAL \somador|Add0~10\ : std_logic;
SIGNAL \somador|Add0~13_sumout\ : std_logic;
SIGNAL \somador|Add0~14\ : std_logic;
SIGNAL \somador|Add0~17_sumout\ : std_logic;
SIGNAL \somador|Add0~18\ : std_logic;
SIGNAL \somador|Add0~1_sumout\ : std_logic;
SIGNAL \rom|memROM~0_combout\ : std_logic;
SIGNAL \rom|memROM~1_combout\ : std_logic;
SIGNAL \UC|Equal8~0_combout\ : std_logic;
SIGNAL \somador|Add0~2\ : std_logic;
SIGNAL \somador|Add0~21_sumout\ : std_logic;
SIGNAL \rom|memROM~2_combout\ : std_logic;
SIGNAL \rom|memROM~3_combout\ : std_logic;
SIGNAL \UC|controleULA~0_combout\ : std_logic;
SIGNAL \UC|tipo_i~0_combout\ : std_logic;
SIGNAL \bRegistradores|Equal0~0_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[0]~31_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1094_combout\ : std_logic;
SIGNAL \UC|Equal8~1_combout\ : std_logic;
SIGNAL \ULA|Add0~130_cout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \UC|Equal1~0_combout\ : std_logic;
SIGNAL \rom|memROM~5_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1091_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~38_q\ : std_logic;
SIGNAL \muxUlaMemoria|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1092_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~134_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1093_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~102_q\ : std_logic;
SIGNAL \rom|memROM~4_combout\ : std_logic;
SIGNAL \rom|memROM~6_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1062_combout\ : std_logic;
SIGNAL \ULA|saida~0_combout\ : std_logic;
SIGNAL \ULA|saida[0]~1_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1095_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~39_q\ : std_logic;
SIGNAL \bRegistradores|registrador~135_q\ : std_logic;
SIGNAL \muxUlaMemoria|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~103_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1063_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \ULA|saida[1]~2_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1096_combout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~40_q\ : std_logic;
SIGNAL \muxUlaMemoria|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~136_q\ : std_logic;
SIGNAL \bRegistradores|registrador~104_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1064_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \ULA|saida[2]~3_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1097_combout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~41_q\ : std_logic;
SIGNAL \muxUlaMemoria|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~137_q\ : std_logic;
SIGNAL \bRegistradores|registrador~105_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1065_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \ULA|saida[3]~4_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1098_combout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~42_q\ : std_logic;
SIGNAL \muxUlaMemoria|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~138_q\ : std_logic;
SIGNAL \bRegistradores|registrador~106_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1066_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \ULA|saida[4]~5_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1099_combout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~43_q\ : std_logic;
SIGNAL \muxUlaMemoria|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~139_q\ : std_logic;
SIGNAL \bRegistradores|registrador~107_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1067_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \ULA|saida[5]~6_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1100_combout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~44_q\ : std_logic;
SIGNAL \muxUlaMemoria|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~140_q\ : std_logic;
SIGNAL \bRegistradores|registrador~108_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1068_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \ULA|saida[6]~7_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1101_combout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~45_q\ : std_logic;
SIGNAL \muxUlaMemoria|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~141_q\ : std_logic;
SIGNAL \bRegistradores|registrador~109_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1069_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \ULA|saida[7]~8_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1102_combout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~33_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~46_q\ : std_logic;
SIGNAL \bRegistradores|registrador~142_q\ : std_logic;
SIGNAL \bRegistradores|registrador~110_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1070_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[8]~7_combout\ : std_logic;
SIGNAL \ULA|saida[8]~9_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1103_combout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~37_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~47_q\ : std_logic;
SIGNAL \bRegistradores|registrador~143_q\ : std_logic;
SIGNAL \bRegistradores|registrador~111_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1071_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[9]~8_combout\ : std_logic;
SIGNAL \ULA|saida[9]~10_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1104_combout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~41_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~48_q\ : std_logic;
SIGNAL \bRegistradores|registrador~144_q\ : std_logic;
SIGNAL \bRegistradores|registrador~112_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1072_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[10]~9_combout\ : std_logic;
SIGNAL \ULA|saida[10]~11_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1105_combout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~45_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~49_q\ : std_logic;
SIGNAL \bRegistradores|registrador~145_q\ : std_logic;
SIGNAL \bRegistradores|registrador~113_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1073_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[11]~10_combout\ : std_logic;
SIGNAL \ULA|saida[11]~12_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1106_combout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~49_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~50_q\ : std_logic;
SIGNAL \bRegistradores|registrador~146_q\ : std_logic;
SIGNAL \bRegistradores|registrador~114_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1074_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[12]~11_combout\ : std_logic;
SIGNAL \ULA|saida[12]~13_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1107_combout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~53_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~51_q\ : std_logic;
SIGNAL \bRegistradores|registrador~147_q\ : std_logic;
SIGNAL \bRegistradores|registrador~115_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1075_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[13]~12_combout\ : std_logic;
SIGNAL \ULA|saida[13]~14_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1108_combout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~57_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~52_q\ : std_logic;
SIGNAL \bRegistradores|registrador~148_q\ : std_logic;
SIGNAL \bRegistradores|registrador~116_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1076_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[14]~13_combout\ : std_logic;
SIGNAL \ULA|saida[14]~15_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1109_combout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~61_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~53_q\ : std_logic;
SIGNAL \bRegistradores|registrador~149_q\ : std_logic;
SIGNAL \bRegistradores|registrador~117_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1077_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[15]~14_combout\ : std_logic;
SIGNAL \ULA|saida[15]~16_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1110_combout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~65_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~54_q\ : std_logic;
SIGNAL \bRegistradores|registrador~150_q\ : std_logic;
SIGNAL \bRegistradores|registrador~118_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1078_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[16]~15_combout\ : std_logic;
SIGNAL \ULA|saida[16]~17_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1111_combout\ : std_logic;
SIGNAL \ULA|Add0~66\ : std_logic;
SIGNAL \ULA|Add0~69_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~55_q\ : std_logic;
SIGNAL \bRegistradores|registrador~151_q\ : std_logic;
SIGNAL \bRegistradores|registrador~119_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1079_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[17]~16_combout\ : std_logic;
SIGNAL \ULA|saida[17]~18_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1112_combout\ : std_logic;
SIGNAL \ULA|Add0~70\ : std_logic;
SIGNAL \ULA|Add0~73_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~56_q\ : std_logic;
SIGNAL \bRegistradores|registrador~152_q\ : std_logic;
SIGNAL \bRegistradores|registrador~120_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1080_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[18]~17_combout\ : std_logic;
SIGNAL \ULA|saida[18]~19_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1113_combout\ : std_logic;
SIGNAL \ULA|Add0~74\ : std_logic;
SIGNAL \ULA|Add0~77_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~57_q\ : std_logic;
SIGNAL \bRegistradores|registrador~153_q\ : std_logic;
SIGNAL \bRegistradores|registrador~121_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1081_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[19]~18_combout\ : std_logic;
SIGNAL \ULA|saida[19]~20_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1114_combout\ : std_logic;
SIGNAL \ULA|Add0~78\ : std_logic;
SIGNAL \ULA|Add0~81_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~58_q\ : std_logic;
SIGNAL \bRegistradores|registrador~154_q\ : std_logic;
SIGNAL \bRegistradores|registrador~122_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1082_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[20]~19_combout\ : std_logic;
SIGNAL \ULA|saida[20]~21_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1115_combout\ : std_logic;
SIGNAL \ULA|Add0~82\ : std_logic;
SIGNAL \ULA|Add0~85_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~59_q\ : std_logic;
SIGNAL \bRegistradores|registrador~155_q\ : std_logic;
SIGNAL \bRegistradores|registrador~123_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1083_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[21]~20_combout\ : std_logic;
SIGNAL \ULA|saida[21]~22_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1116_combout\ : std_logic;
SIGNAL \ULA|Add0~86\ : std_logic;
SIGNAL \ULA|Add0~89_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~60_q\ : std_logic;
SIGNAL \bRegistradores|registrador~156_q\ : std_logic;
SIGNAL \bRegistradores|registrador~124_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1084_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[22]~21_combout\ : std_logic;
SIGNAL \ULA|saida[22]~23_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1117_combout\ : std_logic;
SIGNAL \ULA|Add0~90\ : std_logic;
SIGNAL \ULA|Add0~93_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~61_q\ : std_logic;
SIGNAL \bRegistradores|registrador~157_q\ : std_logic;
SIGNAL \bRegistradores|registrador~125_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1085_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[23]~22_combout\ : std_logic;
SIGNAL \ULA|saida[23]~24_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1118_combout\ : std_logic;
SIGNAL \ULA|Add0~94\ : std_logic;
SIGNAL \ULA|Add0~97_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~62_q\ : std_logic;
SIGNAL \bRegistradores|registrador~158_q\ : std_logic;
SIGNAL \bRegistradores|registrador~126_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1086_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[24]~23_combout\ : std_logic;
SIGNAL \ULA|saida[24]~25_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1119_combout\ : std_logic;
SIGNAL \ULA|Add0~98\ : std_logic;
SIGNAL \ULA|Add0~101_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~63_q\ : std_logic;
SIGNAL \bRegistradores|registrador~159_q\ : std_logic;
SIGNAL \bRegistradores|registrador~127_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1087_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[25]~24_combout\ : std_logic;
SIGNAL \ULA|saida[25]~26_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1120_combout\ : std_logic;
SIGNAL \ULA|Add0~102\ : std_logic;
SIGNAL \ULA|Add0~105_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~64_q\ : std_logic;
SIGNAL \bRegistradores|registrador~160_q\ : std_logic;
SIGNAL \bRegistradores|registrador~128_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1088_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[26]~25_combout\ : std_logic;
SIGNAL \ULA|saida[26]~27_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1121_combout\ : std_logic;
SIGNAL \ULA|Add0~106\ : std_logic;
SIGNAL \ULA|Add0~109_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~65_q\ : std_logic;
SIGNAL \bRegistradores|registrador~161_q\ : std_logic;
SIGNAL \bRegistradores|registrador~129_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1089_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[27]~26_combout\ : std_logic;
SIGNAL \ULA|saida[27]~28_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1122_combout\ : std_logic;
SIGNAL \ULA|Add0~110\ : std_logic;
SIGNAL \ULA|Add0~113_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~66_q\ : std_logic;
SIGNAL \bRegistradores|registrador~162_q\ : std_logic;
SIGNAL \bRegistradores|registrador~130_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1090_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[28]~27_combout\ : std_logic;
SIGNAL \ULA|saida[28]~29_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1123_combout\ : std_logic;
SIGNAL \ULA|Add0~114\ : std_logic;
SIGNAL \ULA|Add0~117_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~67_q\ : std_logic;
SIGNAL \bRegistradores|registrador~163_q\ : std_logic;
SIGNAL \bRegistradores|registrador~131_q\ : std_logic;
SIGNAL \bRegistradores|saidaB[29]~0_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[29]~28_combout\ : std_logic;
SIGNAL \ULA|saida[29]~30_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1124_combout\ : std_logic;
SIGNAL \ULA|Add0~118\ : std_logic;
SIGNAL \ULA|Add0~121_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~68_q\ : std_logic;
SIGNAL \bRegistradores|registrador~164_q\ : std_logic;
SIGNAL \bRegistradores|registrador~132_q\ : std_logic;
SIGNAL \bRegistradores|saidaB[30]~1_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[30]~29_combout\ : std_logic;
SIGNAL \ULA|saida[30]~31_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1125_combout\ : std_logic;
SIGNAL \ULA|Add0~122\ : std_logic;
SIGNAL \ULA|Add0~125_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~69_q\ : std_logic;
SIGNAL \bRegistradores|registrador~165_q\ : std_logic;
SIGNAL \bRegistradores|registrador~133_q\ : std_logic;
SIGNAL \bRegistradores|saidaB[31]~2_combout\ : std_logic;
SIGNAL \muxRtImedULA|saida_MUX[31]~30_combout\ : std_logic;
SIGNAL \ULA|saida[31]~32_combout\ : std_logic;
SIGNAL \somador|Add0~22\ : std_logic;
SIGNAL \somador|Add0~25_sumout\ : std_logic;
SIGNAL \somador|Add0~26\ : std_logic;
SIGNAL \somador|Add0~29_sumout\ : std_logic;
SIGNAL \somador|Add0~30\ : std_logic;
SIGNAL \somador|Add0~33_sumout\ : std_logic;
SIGNAL \somador|Add0~34\ : std_logic;
SIGNAL \somador|Add0~37_sumout\ : std_logic;
SIGNAL \somador|Add0~38\ : std_logic;
SIGNAL \somador|Add0~41_sumout\ : std_logic;
SIGNAL \somador|Add0~42\ : std_logic;
SIGNAL \somador|Add0~45_sumout\ : std_logic;
SIGNAL \somador|Add0~46\ : std_logic;
SIGNAL \somador|Add0~49_sumout\ : std_logic;
SIGNAL \somador|Add0~50\ : std_logic;
SIGNAL \somador|Add0~53_sumout\ : std_logic;
SIGNAL \somador|Add0~54\ : std_logic;
SIGNAL \somador|Add0~57_sumout\ : std_logic;
SIGNAL \somador|Add0~58\ : std_logic;
SIGNAL \somador|Add0~61_sumout\ : std_logic;
SIGNAL \somador|Add0~62\ : std_logic;
SIGNAL \somador|Add0~65_sumout\ : std_logic;
SIGNAL \somador|Add0~66\ : std_logic;
SIGNAL \somador|Add0~69_sumout\ : std_logic;
SIGNAL \somador|Add0~70\ : std_logic;
SIGNAL \somador|Add0~73_sumout\ : std_logic;
SIGNAL \somador|Add0~74\ : std_logic;
SIGNAL \somador|Add0~77_sumout\ : std_logic;
SIGNAL \somador|Add0~78\ : std_logic;
SIGNAL \somador|Add0~81_sumout\ : std_logic;
SIGNAL \somador|Add0~82\ : std_logic;
SIGNAL \somador|Add0~85_sumout\ : std_logic;
SIGNAL \somador|Add0~86\ : std_logic;
SIGNAL \somador|Add0~89_sumout\ : std_logic;
SIGNAL \somador|Add0~90\ : std_logic;
SIGNAL \somador|Add0~93_sumout\ : std_logic;
SIGNAL \somador|Add0~94\ : std_logic;
SIGNAL \somador|Add0~97_sumout\ : std_logic;
SIGNAL \somador|Add0~98\ : std_logic;
SIGNAL \somador|Add0~101_sumout\ : std_logic;
SIGNAL \somador|Add0~102\ : std_logic;
SIGNAL \somador|Add0~105_sumout\ : std_logic;
SIGNAL \somador|Add0~106\ : std_logic;
SIGNAL \somador|Add0~109_sumout\ : std_logic;
SIGNAL \somador|Add0~110\ : std_logic;
SIGNAL \somador|Add0~113_sumout\ : std_logic;
SIGNAL \somador|Add0~114\ : std_logic;
SIGNAL \somador|Add0~117_sumout\ : std_logic;
SIGNAL \bRegistradores|saidaB[0]~3_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[1]~4_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[2]~5_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[3]~6_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[4]~7_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[5]~8_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[6]~9_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[7]~10_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[8]~11_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[9]~12_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[10]~13_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[11]~14_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[12]~15_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[13]~16_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[14]~17_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[15]~18_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[16]~19_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[17]~20_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[18]~21_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[19]~22_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[20]~23_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[21]~24_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[22]~25_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[23]~26_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[24]~27_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[25]~28_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[26]~29_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[27]~30_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[28]~31_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \bRegistradores|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~124_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~156_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~123_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~155_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~122_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~154_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~121_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~153_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~120_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~152_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~119_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~151_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~118_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~150_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~117_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~149_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~116_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~148_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~115_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~147_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~114_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~146_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~113_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~145_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~112_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~144_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~111_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~143_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~110_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~142_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~109_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~108_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~107_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~106_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~105_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~104_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~135_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~102_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~103_q\ : std_logic;
SIGNAL \ULA|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \rom|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \rom|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \rom|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~134_q\ : std_logic;
SIGNAL \UC|ALT_INV_tipo_i~0_combout\ : std_logic;
SIGNAL \UC|ALT_INV_controleULA~0_combout\ : std_logic;
SIGNAL \rom|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \rom|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \UC|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \rom|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \rom|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~133_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~165_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~132_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~164_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~131_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~163_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~130_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~162_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~129_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~161_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~128_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~160_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~127_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~159_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~126_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~158_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~125_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~157_q\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[31]~30_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaB[31]~2_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[30]~29_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaB[30]~1_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[29]~28_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaB[29]~0_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[28]~27_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[27]~26_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1089_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[26]~25_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1088_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[25]~24_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[24]~23_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[23]~22_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1085_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[22]~21_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1084_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[21]~20_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[20]~19_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[19]~18_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1081_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[18]~17_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1080_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[17]~16_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1079_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[16]~15_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[15]~14_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[14]~13_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1076_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[13]~12_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1075_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[12]~11_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[11]~10_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[10]~9_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[9]~8_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1071_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[8]~7_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1069_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~141_q\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~140_q\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~139_q\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~138_q\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~137_q\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~136_q\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1125_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1124_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1123_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1122_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1121_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1120_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1119_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1118_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1117_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1116_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1115_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1114_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1113_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1112_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1111_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1110_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1109_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1108_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1107_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1106_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1105_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1104_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1103_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1102_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1101_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1100_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1099_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1098_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1097_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1096_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1095_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1094_combout\ : std_logic;
SIGNAL \muxRtImedULA|ALT_INV_saida_MUX[0]~31_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Equal1~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
addrOUT <= ww_addrOUT;
countPC <= ww_countPC;
dataRead <= ww_dataRead;
dataWrite <= ww_dataWrite;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\bRegistradores|ALT_INV_registrador~61_q\ <= NOT \bRegistradores|registrador~61_q\;
\ULA|ALT_INV_Add0~89_sumout\ <= NOT \ULA|Add0~89_sumout\;
\bRegistradores|ALT_INV_registrador~124_q\ <= NOT \bRegistradores|registrador~124_q\;
\bRegistradores|ALT_INV_registrador~156_q\ <= NOT \bRegistradores|registrador~156_q\;
\bRegistradores|ALT_INV_registrador~60_q\ <= NOT \bRegistradores|registrador~60_q\;
\ULA|ALT_INV_Add0~85_sumout\ <= NOT \ULA|Add0~85_sumout\;
\bRegistradores|ALT_INV_registrador~123_q\ <= NOT \bRegistradores|registrador~123_q\;
\bRegistradores|ALT_INV_registrador~155_q\ <= NOT \bRegistradores|registrador~155_q\;
\bRegistradores|ALT_INV_registrador~59_q\ <= NOT \bRegistradores|registrador~59_q\;
\ULA|ALT_INV_Add0~81_sumout\ <= NOT \ULA|Add0~81_sumout\;
\bRegistradores|ALT_INV_registrador~122_q\ <= NOT \bRegistradores|registrador~122_q\;
\bRegistradores|ALT_INV_registrador~154_q\ <= NOT \bRegistradores|registrador~154_q\;
\bRegistradores|ALT_INV_registrador~58_q\ <= NOT \bRegistradores|registrador~58_q\;
\ULA|ALT_INV_Add0~77_sumout\ <= NOT \ULA|Add0~77_sumout\;
\bRegistradores|ALT_INV_registrador~121_q\ <= NOT \bRegistradores|registrador~121_q\;
\bRegistradores|ALT_INV_registrador~153_q\ <= NOT \bRegistradores|registrador~153_q\;
\bRegistradores|ALT_INV_registrador~57_q\ <= NOT \bRegistradores|registrador~57_q\;
\ULA|ALT_INV_Add0~73_sumout\ <= NOT \ULA|Add0~73_sumout\;
\bRegistradores|ALT_INV_registrador~120_q\ <= NOT \bRegistradores|registrador~120_q\;
\bRegistradores|ALT_INV_registrador~152_q\ <= NOT \bRegistradores|registrador~152_q\;
\bRegistradores|ALT_INV_registrador~56_q\ <= NOT \bRegistradores|registrador~56_q\;
\ULA|ALT_INV_Add0~69_sumout\ <= NOT \ULA|Add0~69_sumout\;
\bRegistradores|ALT_INV_registrador~119_q\ <= NOT \bRegistradores|registrador~119_q\;
\bRegistradores|ALT_INV_registrador~151_q\ <= NOT \bRegistradores|registrador~151_q\;
\bRegistradores|ALT_INV_registrador~55_q\ <= NOT \bRegistradores|registrador~55_q\;
\ULA|ALT_INV_Add0~65_sumout\ <= NOT \ULA|Add0~65_sumout\;
\bRegistradores|ALT_INV_registrador~118_q\ <= NOT \bRegistradores|registrador~118_q\;
\bRegistradores|ALT_INV_registrador~150_q\ <= NOT \bRegistradores|registrador~150_q\;
\bRegistradores|ALT_INV_registrador~54_q\ <= NOT \bRegistradores|registrador~54_q\;
\ULA|ALT_INV_Add0~61_sumout\ <= NOT \ULA|Add0~61_sumout\;
\bRegistradores|ALT_INV_registrador~117_q\ <= NOT \bRegistradores|registrador~117_q\;
\bRegistradores|ALT_INV_registrador~149_q\ <= NOT \bRegistradores|registrador~149_q\;
\bRegistradores|ALT_INV_registrador~53_q\ <= NOT \bRegistradores|registrador~53_q\;
\ULA|ALT_INV_Add0~57_sumout\ <= NOT \ULA|Add0~57_sumout\;
\bRegistradores|ALT_INV_registrador~116_q\ <= NOT \bRegistradores|registrador~116_q\;
\bRegistradores|ALT_INV_registrador~148_q\ <= NOT \bRegistradores|registrador~148_q\;
\bRegistradores|ALT_INV_registrador~52_q\ <= NOT \bRegistradores|registrador~52_q\;
\ULA|ALT_INV_Add0~53_sumout\ <= NOT \ULA|Add0~53_sumout\;
\bRegistradores|ALT_INV_registrador~115_q\ <= NOT \bRegistradores|registrador~115_q\;
\bRegistradores|ALT_INV_registrador~147_q\ <= NOT \bRegistradores|registrador~147_q\;
\bRegistradores|ALT_INV_registrador~51_q\ <= NOT \bRegistradores|registrador~51_q\;
\ULA|ALT_INV_Add0~49_sumout\ <= NOT \ULA|Add0~49_sumout\;
\bRegistradores|ALT_INV_registrador~114_q\ <= NOT \bRegistradores|registrador~114_q\;
\bRegistradores|ALT_INV_registrador~146_q\ <= NOT \bRegistradores|registrador~146_q\;
\bRegistradores|ALT_INV_registrador~50_q\ <= NOT \bRegistradores|registrador~50_q\;
\ULA|ALT_INV_Add0~45_sumout\ <= NOT \ULA|Add0~45_sumout\;
\bRegistradores|ALT_INV_registrador~113_q\ <= NOT \bRegistradores|registrador~113_q\;
\bRegistradores|ALT_INV_registrador~145_q\ <= NOT \bRegistradores|registrador~145_q\;
\bRegistradores|ALT_INV_registrador~49_q\ <= NOT \bRegistradores|registrador~49_q\;
\ULA|ALT_INV_Add0~41_sumout\ <= NOT \ULA|Add0~41_sumout\;
\bRegistradores|ALT_INV_registrador~112_q\ <= NOT \bRegistradores|registrador~112_q\;
\bRegistradores|ALT_INV_registrador~144_q\ <= NOT \bRegistradores|registrador~144_q\;
\bRegistradores|ALT_INV_registrador~48_q\ <= NOT \bRegistradores|registrador~48_q\;
\ULA|ALT_INV_Add0~37_sumout\ <= NOT \ULA|Add0~37_sumout\;
\bRegistradores|ALT_INV_registrador~111_q\ <= NOT \bRegistradores|registrador~111_q\;
\bRegistradores|ALT_INV_registrador~143_q\ <= NOT \bRegistradores|registrador~143_q\;
\bRegistradores|ALT_INV_registrador~47_q\ <= NOT \bRegistradores|registrador~47_q\;
\ULA|ALT_INV_Add0~33_sumout\ <= NOT \ULA|Add0~33_sumout\;
\bRegistradores|ALT_INV_registrador~110_q\ <= NOT \bRegistradores|registrador~110_q\;
\bRegistradores|ALT_INV_registrador~142_q\ <= NOT \bRegistradores|registrador~142_q\;
\bRegistradores|ALT_INV_registrador~46_q\ <= NOT \bRegistradores|registrador~46_q\;
\ULA|ALT_INV_Add0~29_sumout\ <= NOT \ULA|Add0~29_sumout\;
\bRegistradores|ALT_INV_registrador~109_q\ <= NOT \bRegistradores|registrador~109_q\;
\bRegistradores|ALT_INV_registrador~45_q\ <= NOT \bRegistradores|registrador~45_q\;
\ULA|ALT_INV_Add0~25_sumout\ <= NOT \ULA|Add0~25_sumout\;
\bRegistradores|ALT_INV_registrador~108_q\ <= NOT \bRegistradores|registrador~108_q\;
\bRegistradores|ALT_INV_registrador~44_q\ <= NOT \bRegistradores|registrador~44_q\;
\ULA|ALT_INV_Add0~21_sumout\ <= NOT \ULA|Add0~21_sumout\;
\bRegistradores|ALT_INV_registrador~107_q\ <= NOT \bRegistradores|registrador~107_q\;
\bRegistradores|ALT_INV_registrador~43_q\ <= NOT \bRegistradores|registrador~43_q\;
\ULA|ALT_INV_Add0~17_sumout\ <= NOT \ULA|Add0~17_sumout\;
\bRegistradores|ALT_INV_registrador~106_q\ <= NOT \bRegistradores|registrador~106_q\;
\bRegistradores|ALT_INV_registrador~42_q\ <= NOT \bRegistradores|registrador~42_q\;
\ULA|ALT_INV_Add0~13_sumout\ <= NOT \ULA|Add0~13_sumout\;
\bRegistradores|ALT_INV_registrador~105_q\ <= NOT \bRegistradores|registrador~105_q\;
\bRegistradores|ALT_INV_registrador~41_q\ <= NOT \bRegistradores|registrador~41_q\;
\ULA|ALT_INV_Add0~9_sumout\ <= NOT \ULA|Add0~9_sumout\;
\bRegistradores|ALT_INV_registrador~104_q\ <= NOT \bRegistradores|registrador~104_q\;
\bRegistradores|ALT_INV_registrador~40_q\ <= NOT \bRegistradores|registrador~40_q\;
\ULA|ALT_INV_Add0~5_sumout\ <= NOT \ULA|Add0~5_sumout\;
\bRegistradores|ALT_INV_registrador~135_q\ <= NOT \bRegistradores|registrador~135_q\;
\bRegistradores|ALT_INV_registrador~39_q\ <= NOT \bRegistradores|registrador~39_q\;
\ULA|ALT_INV_Add0~1_sumout\ <= NOT \ULA|Add0~1_sumout\;
\bRegistradores|ALT_INV_registrador~102_q\ <= NOT \bRegistradores|registrador~102_q\;
\bRegistradores|ALT_INV_registrador~38_q\ <= NOT \bRegistradores|registrador~38_q\;
\bRegistradores|ALT_INV_registrador~1063_combout\ <= NOT \bRegistradores|registrador~1063_combout\;
\bRegistradores|ALT_INV_registrador~103_q\ <= NOT \bRegistradores|registrador~103_q\;
\ULA|ALT_INV_saida~0_combout\ <= NOT \ULA|saida~0_combout\;
\bRegistradores|ALT_INV_Equal0~0_combout\ <= NOT \bRegistradores|Equal0~0_combout\;
\bRegistradores|ALT_INV_registrador~1062_combout\ <= NOT \bRegistradores|registrador~1062_combout\;
\rom|ALT_INV_memROM~6_combout\ <= NOT \rom|memROM~6_combout\;
\rom|ALT_INV_memROM~5_combout\ <= NOT \rom|memROM~5_combout\;
\rom|ALT_INV_memROM~4_combout\ <= NOT \rom|memROM~4_combout\;
\bRegistradores|ALT_INV_registrador~134_q\ <= NOT \bRegistradores|registrador~134_q\;
\UC|ALT_INV_tipo_i~0_combout\ <= NOT \UC|tipo_i~0_combout\;
\UC|ALT_INV_controleULA~0_combout\ <= NOT \UC|controleULA~0_combout\;
\rom|ALT_INV_memROM~3_combout\ <= NOT \rom|memROM~3_combout\;
\rom|ALT_INV_memROM~2_combout\ <= NOT \rom|memROM~2_combout\;
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\UC|ALT_INV_Equal8~0_combout\ <= NOT \UC|Equal8~0_combout\;
\rom|ALT_INV_memROM~1_combout\ <= NOT \rom|memROM~1_combout\;
\rom|ALT_INV_memROM~0_combout\ <= NOT \rom|memROM~0_combout\;
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\ULA|ALT_INV_Add0~125_sumout\ <= NOT \ULA|Add0~125_sumout\;
\bRegistradores|ALT_INV_registrador~133_q\ <= NOT \bRegistradores|registrador~133_q\;
\bRegistradores|ALT_INV_registrador~165_q\ <= NOT \bRegistradores|registrador~165_q\;
\bRegistradores|ALT_INV_registrador~69_q\ <= NOT \bRegistradores|registrador~69_q\;
\ULA|ALT_INV_Add0~121_sumout\ <= NOT \ULA|Add0~121_sumout\;
\bRegistradores|ALT_INV_registrador~132_q\ <= NOT \bRegistradores|registrador~132_q\;
\bRegistradores|ALT_INV_registrador~164_q\ <= NOT \bRegistradores|registrador~164_q\;
\bRegistradores|ALT_INV_registrador~68_q\ <= NOT \bRegistradores|registrador~68_q\;
\ULA|ALT_INV_Add0~117_sumout\ <= NOT \ULA|Add0~117_sumout\;
\bRegistradores|ALT_INV_registrador~131_q\ <= NOT \bRegistradores|registrador~131_q\;
\bRegistradores|ALT_INV_registrador~163_q\ <= NOT \bRegistradores|registrador~163_q\;
\bRegistradores|ALT_INV_registrador~67_q\ <= NOT \bRegistradores|registrador~67_q\;
\ULA|ALT_INV_Add0~113_sumout\ <= NOT \ULA|Add0~113_sumout\;
\bRegistradores|ALT_INV_registrador~130_q\ <= NOT \bRegistradores|registrador~130_q\;
\bRegistradores|ALT_INV_registrador~162_q\ <= NOT \bRegistradores|registrador~162_q\;
\bRegistradores|ALT_INV_registrador~66_q\ <= NOT \bRegistradores|registrador~66_q\;
\ULA|ALT_INV_Add0~109_sumout\ <= NOT \ULA|Add0~109_sumout\;
\bRegistradores|ALT_INV_registrador~129_q\ <= NOT \bRegistradores|registrador~129_q\;
\bRegistradores|ALT_INV_registrador~161_q\ <= NOT \bRegistradores|registrador~161_q\;
\bRegistradores|ALT_INV_registrador~65_q\ <= NOT \bRegistradores|registrador~65_q\;
\ULA|ALT_INV_Add0~105_sumout\ <= NOT \ULA|Add0~105_sumout\;
\bRegistradores|ALT_INV_registrador~128_q\ <= NOT \bRegistradores|registrador~128_q\;
\bRegistradores|ALT_INV_registrador~160_q\ <= NOT \bRegistradores|registrador~160_q\;
\bRegistradores|ALT_INV_registrador~64_q\ <= NOT \bRegistradores|registrador~64_q\;
\ULA|ALT_INV_Add0~101_sumout\ <= NOT \ULA|Add0~101_sumout\;
\bRegistradores|ALT_INV_registrador~127_q\ <= NOT \bRegistradores|registrador~127_q\;
\bRegistradores|ALT_INV_registrador~159_q\ <= NOT \bRegistradores|registrador~159_q\;
\bRegistradores|ALT_INV_registrador~63_q\ <= NOT \bRegistradores|registrador~63_q\;
\ULA|ALT_INV_Add0~97_sumout\ <= NOT \ULA|Add0~97_sumout\;
\bRegistradores|ALT_INV_registrador~126_q\ <= NOT \bRegistradores|registrador~126_q\;
\bRegistradores|ALT_INV_registrador~158_q\ <= NOT \bRegistradores|registrador~158_q\;
\bRegistradores|ALT_INV_registrador~62_q\ <= NOT \bRegistradores|registrador~62_q\;
\ULA|ALT_INV_Add0~93_sumout\ <= NOT \ULA|Add0~93_sumout\;
\bRegistradores|ALT_INV_registrador~125_q\ <= NOT \bRegistradores|registrador~125_q\;
\bRegistradores|ALT_INV_registrador~157_q\ <= NOT \bRegistradores|registrador~157_q\;
\PC|ALT_INV_DOUT\(31) <= NOT \PC|DOUT\(31);
\PC|ALT_INV_DOUT\(30) <= NOT \PC|DOUT\(30);
\PC|ALT_INV_DOUT\(29) <= NOT \PC|DOUT\(29);
\PC|ALT_INV_DOUT\(28) <= NOT \PC|DOUT\(28);
\PC|ALT_INV_DOUT\(27) <= NOT \PC|DOUT\(27);
\PC|ALT_INV_DOUT\(26) <= NOT \PC|DOUT\(26);
\PC|ALT_INV_DOUT\(25) <= NOT \PC|DOUT\(25);
\PC|ALT_INV_DOUT\(24) <= NOT \PC|DOUT\(24);
\PC|ALT_INV_DOUT\(23) <= NOT \PC|DOUT\(23);
\PC|ALT_INV_DOUT\(22) <= NOT \PC|DOUT\(22);
\PC|ALT_INV_DOUT\(21) <= NOT \PC|DOUT\(21);
\PC|ALT_INV_DOUT\(20) <= NOT \PC|DOUT\(20);
\PC|ALT_INV_DOUT\(19) <= NOT \PC|DOUT\(19);
\PC|ALT_INV_DOUT\(18) <= NOT \PC|DOUT\(18);
\PC|ALT_INV_DOUT\(17) <= NOT \PC|DOUT\(17);
\PC|ALT_INV_DOUT\(16) <= NOT \PC|DOUT\(16);
\PC|ALT_INV_DOUT\(15) <= NOT \PC|DOUT\(15);
\PC|ALT_INV_DOUT\(14) <= NOT \PC|DOUT\(14);
\PC|ALT_INV_DOUT\(13) <= NOT \PC|DOUT\(13);
\PC|ALT_INV_DOUT\(12) <= NOT \PC|DOUT\(12);
\PC|ALT_INV_DOUT\(11) <= NOT \PC|DOUT\(11);
\PC|ALT_INV_DOUT\(10) <= NOT \PC|DOUT\(10);
\PC|ALT_INV_DOUT\(9) <= NOT \PC|DOUT\(9);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\muxRtImedULA|ALT_INV_saida_MUX[31]~30_combout\ <= NOT \muxRtImedULA|saida_MUX[31]~30_combout\;
\bRegistradores|ALT_INV_saidaB[31]~2_combout\ <= NOT \bRegistradores|saidaB[31]~2_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[30]~29_combout\ <= NOT \muxRtImedULA|saida_MUX[30]~29_combout\;
\bRegistradores|ALT_INV_saidaB[30]~1_combout\ <= NOT \bRegistradores|saidaB[30]~1_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[29]~28_combout\ <= NOT \muxRtImedULA|saida_MUX[29]~28_combout\;
\bRegistradores|ALT_INV_saidaB[29]~0_combout\ <= NOT \bRegistradores|saidaB[29]~0_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[28]~27_combout\ <= NOT \muxRtImedULA|saida_MUX[28]~27_combout\;
\bRegistradores|ALT_INV_registrador~1090_combout\ <= NOT \bRegistradores|registrador~1090_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[27]~26_combout\ <= NOT \muxRtImedULA|saida_MUX[27]~26_combout\;
\bRegistradores|ALT_INV_registrador~1089_combout\ <= NOT \bRegistradores|registrador~1089_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[26]~25_combout\ <= NOT \muxRtImedULA|saida_MUX[26]~25_combout\;
\bRegistradores|ALT_INV_registrador~1088_combout\ <= NOT \bRegistradores|registrador~1088_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[25]~24_combout\ <= NOT \muxRtImedULA|saida_MUX[25]~24_combout\;
\bRegistradores|ALT_INV_registrador~1087_combout\ <= NOT \bRegistradores|registrador~1087_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[24]~23_combout\ <= NOT \muxRtImedULA|saida_MUX[24]~23_combout\;
\bRegistradores|ALT_INV_registrador~1086_combout\ <= NOT \bRegistradores|registrador~1086_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[23]~22_combout\ <= NOT \muxRtImedULA|saida_MUX[23]~22_combout\;
\bRegistradores|ALT_INV_registrador~1085_combout\ <= NOT \bRegistradores|registrador~1085_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[22]~21_combout\ <= NOT \muxRtImedULA|saida_MUX[22]~21_combout\;
\bRegistradores|ALT_INV_registrador~1084_combout\ <= NOT \bRegistradores|registrador~1084_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[21]~20_combout\ <= NOT \muxRtImedULA|saida_MUX[21]~20_combout\;
\bRegistradores|ALT_INV_registrador~1083_combout\ <= NOT \bRegistradores|registrador~1083_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[20]~19_combout\ <= NOT \muxRtImedULA|saida_MUX[20]~19_combout\;
\bRegistradores|ALT_INV_registrador~1082_combout\ <= NOT \bRegistradores|registrador~1082_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[19]~18_combout\ <= NOT \muxRtImedULA|saida_MUX[19]~18_combout\;
\bRegistradores|ALT_INV_registrador~1081_combout\ <= NOT \bRegistradores|registrador~1081_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[18]~17_combout\ <= NOT \muxRtImedULA|saida_MUX[18]~17_combout\;
\bRegistradores|ALT_INV_registrador~1080_combout\ <= NOT \bRegistradores|registrador~1080_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[17]~16_combout\ <= NOT \muxRtImedULA|saida_MUX[17]~16_combout\;
\bRegistradores|ALT_INV_registrador~1079_combout\ <= NOT \bRegistradores|registrador~1079_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[16]~15_combout\ <= NOT \muxRtImedULA|saida_MUX[16]~15_combout\;
\bRegistradores|ALT_INV_registrador~1078_combout\ <= NOT \bRegistradores|registrador~1078_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[15]~14_combout\ <= NOT \muxRtImedULA|saida_MUX[15]~14_combout\;
\bRegistradores|ALT_INV_registrador~1077_combout\ <= NOT \bRegistradores|registrador~1077_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[14]~13_combout\ <= NOT \muxRtImedULA|saida_MUX[14]~13_combout\;
\bRegistradores|ALT_INV_registrador~1076_combout\ <= NOT \bRegistradores|registrador~1076_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[13]~12_combout\ <= NOT \muxRtImedULA|saida_MUX[13]~12_combout\;
\bRegistradores|ALT_INV_registrador~1075_combout\ <= NOT \bRegistradores|registrador~1075_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[12]~11_combout\ <= NOT \muxRtImedULA|saida_MUX[12]~11_combout\;
\bRegistradores|ALT_INV_registrador~1074_combout\ <= NOT \bRegistradores|registrador~1074_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[11]~10_combout\ <= NOT \muxRtImedULA|saida_MUX[11]~10_combout\;
\bRegistradores|ALT_INV_registrador~1073_combout\ <= NOT \bRegistradores|registrador~1073_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[10]~9_combout\ <= NOT \muxRtImedULA|saida_MUX[10]~9_combout\;
\bRegistradores|ALT_INV_registrador~1072_combout\ <= NOT \bRegistradores|registrador~1072_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[9]~8_combout\ <= NOT \muxRtImedULA|saida_MUX[9]~8_combout\;
\bRegistradores|ALT_INV_registrador~1071_combout\ <= NOT \bRegistradores|registrador~1071_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[8]~7_combout\ <= NOT \muxRtImedULA|saida_MUX[8]~7_combout\;
\bRegistradores|ALT_INV_registrador~1070_combout\ <= NOT \bRegistradores|registrador~1070_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[7]~6_combout\ <= NOT \muxRtImedULA|saida_MUX[7]~6_combout\;
\bRegistradores|ALT_INV_registrador~1069_combout\ <= NOT \bRegistradores|registrador~1069_combout\;
\bRegistradores|ALT_INV_registrador~141_q\ <= NOT \bRegistradores|registrador~141_q\;
\muxRtImedULA|ALT_INV_saida_MUX[6]~5_combout\ <= NOT \muxRtImedULA|saida_MUX[6]~5_combout\;
\bRegistradores|ALT_INV_registrador~1068_combout\ <= NOT \bRegistradores|registrador~1068_combout\;
\bRegistradores|ALT_INV_registrador~140_q\ <= NOT \bRegistradores|registrador~140_q\;
\muxRtImedULA|ALT_INV_saida_MUX[5]~4_combout\ <= NOT \muxRtImedULA|saida_MUX[5]~4_combout\;
\bRegistradores|ALT_INV_registrador~1067_combout\ <= NOT \bRegistradores|registrador~1067_combout\;
\bRegistradores|ALT_INV_registrador~139_q\ <= NOT \bRegistradores|registrador~139_q\;
\muxRtImedULA|ALT_INV_saida_MUX[4]~3_combout\ <= NOT \muxRtImedULA|saida_MUX[4]~3_combout\;
\bRegistradores|ALT_INV_registrador~1066_combout\ <= NOT \bRegistradores|registrador~1066_combout\;
\bRegistradores|ALT_INV_registrador~138_q\ <= NOT \bRegistradores|registrador~138_q\;
\muxRtImedULA|ALT_INV_saida_MUX[3]~2_combout\ <= NOT \muxRtImedULA|saida_MUX[3]~2_combout\;
\bRegistradores|ALT_INV_registrador~1065_combout\ <= NOT \bRegistradores|registrador~1065_combout\;
\bRegistradores|ALT_INV_registrador~137_q\ <= NOT \bRegistradores|registrador~137_q\;
\muxRtImedULA|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \muxRtImedULA|saida_MUX[2]~1_combout\;
\bRegistradores|ALT_INV_registrador~1064_combout\ <= NOT \bRegistradores|registrador~1064_combout\;
\bRegistradores|ALT_INV_registrador~136_q\ <= NOT \bRegistradores|registrador~136_q\;
\muxRtImedULA|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \muxRtImedULA|saida_MUX[1]~0_combout\;
\UC|ALT_INV_Equal8~1_combout\ <= NOT \UC|Equal8~1_combout\;
\bRegistradores|ALT_INV_registrador~1125_combout\ <= NOT \bRegistradores|registrador~1125_combout\;
\bRegistradores|ALT_INV_registrador~1124_combout\ <= NOT \bRegistradores|registrador~1124_combout\;
\bRegistradores|ALT_INV_registrador~1123_combout\ <= NOT \bRegistradores|registrador~1123_combout\;
\bRegistradores|ALT_INV_registrador~1122_combout\ <= NOT \bRegistradores|registrador~1122_combout\;
\bRegistradores|ALT_INV_registrador~1121_combout\ <= NOT \bRegistradores|registrador~1121_combout\;
\bRegistradores|ALT_INV_registrador~1120_combout\ <= NOT \bRegistradores|registrador~1120_combout\;
\bRegistradores|ALT_INV_registrador~1119_combout\ <= NOT \bRegistradores|registrador~1119_combout\;
\bRegistradores|ALT_INV_registrador~1118_combout\ <= NOT \bRegistradores|registrador~1118_combout\;
\bRegistradores|ALT_INV_registrador~1117_combout\ <= NOT \bRegistradores|registrador~1117_combout\;
\bRegistradores|ALT_INV_registrador~1116_combout\ <= NOT \bRegistradores|registrador~1116_combout\;
\bRegistradores|ALT_INV_registrador~1115_combout\ <= NOT \bRegistradores|registrador~1115_combout\;
\bRegistradores|ALT_INV_registrador~1114_combout\ <= NOT \bRegistradores|registrador~1114_combout\;
\bRegistradores|ALT_INV_registrador~1113_combout\ <= NOT \bRegistradores|registrador~1113_combout\;
\bRegistradores|ALT_INV_registrador~1112_combout\ <= NOT \bRegistradores|registrador~1112_combout\;
\bRegistradores|ALT_INV_registrador~1111_combout\ <= NOT \bRegistradores|registrador~1111_combout\;
\bRegistradores|ALT_INV_registrador~1110_combout\ <= NOT \bRegistradores|registrador~1110_combout\;
\bRegistradores|ALT_INV_registrador~1109_combout\ <= NOT \bRegistradores|registrador~1109_combout\;
\bRegistradores|ALT_INV_registrador~1108_combout\ <= NOT \bRegistradores|registrador~1108_combout\;
\bRegistradores|ALT_INV_registrador~1107_combout\ <= NOT \bRegistradores|registrador~1107_combout\;
\bRegistradores|ALT_INV_registrador~1106_combout\ <= NOT \bRegistradores|registrador~1106_combout\;
\bRegistradores|ALT_INV_registrador~1105_combout\ <= NOT \bRegistradores|registrador~1105_combout\;
\bRegistradores|ALT_INV_registrador~1104_combout\ <= NOT \bRegistradores|registrador~1104_combout\;
\bRegistradores|ALT_INV_registrador~1103_combout\ <= NOT \bRegistradores|registrador~1103_combout\;
\bRegistradores|ALT_INV_registrador~1102_combout\ <= NOT \bRegistradores|registrador~1102_combout\;
\bRegistradores|ALT_INV_registrador~1101_combout\ <= NOT \bRegistradores|registrador~1101_combout\;
\bRegistradores|ALT_INV_registrador~1100_combout\ <= NOT \bRegistradores|registrador~1100_combout\;
\bRegistradores|ALT_INV_registrador~1099_combout\ <= NOT \bRegistradores|registrador~1099_combout\;
\bRegistradores|ALT_INV_registrador~1098_combout\ <= NOT \bRegistradores|registrador~1098_combout\;
\bRegistradores|ALT_INV_registrador~1097_combout\ <= NOT \bRegistradores|registrador~1097_combout\;
\bRegistradores|ALT_INV_registrador~1096_combout\ <= NOT \bRegistradores|registrador~1096_combout\;
\bRegistradores|ALT_INV_registrador~1095_combout\ <= NOT \bRegistradores|registrador~1095_combout\;
\bRegistradores|ALT_INV_registrador~1094_combout\ <= NOT \bRegistradores|registrador~1094_combout\;
\muxRtImedULA|ALT_INV_saida_MUX[0]~31_combout\ <= NOT \muxRtImedULA|saida_MUX[0]~31_combout\;
\UC|ALT_INV_Equal1~0_combout\ <= NOT \UC|Equal1~0_combout\;

\addrOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[0]~1_combout\,
	devoe => ww_devoe,
	o => \addrOUT[0]~output_o\);

\addrOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[1]~2_combout\,
	devoe => ww_devoe,
	o => \addrOUT[1]~output_o\);

\addrOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[2]~3_combout\,
	devoe => ww_devoe,
	o => \addrOUT[2]~output_o\);

\addrOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[3]~4_combout\,
	devoe => ww_devoe,
	o => \addrOUT[3]~output_o\);

\addrOUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[4]~5_combout\,
	devoe => ww_devoe,
	o => \addrOUT[4]~output_o\);

\addrOUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[5]~6_combout\,
	devoe => ww_devoe,
	o => \addrOUT[5]~output_o\);

\addrOUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[6]~7_combout\,
	devoe => ww_devoe,
	o => \addrOUT[6]~output_o\);

\addrOUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[7]~8_combout\,
	devoe => ww_devoe,
	o => \addrOUT[7]~output_o\);

\addrOUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[8]~9_combout\,
	devoe => ww_devoe,
	o => \addrOUT[8]~output_o\);

\addrOUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[9]~10_combout\,
	devoe => ww_devoe,
	o => \addrOUT[9]~output_o\);

\addrOUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[10]~11_combout\,
	devoe => ww_devoe,
	o => \addrOUT[10]~output_o\);

\addrOUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[11]~12_combout\,
	devoe => ww_devoe,
	o => \addrOUT[11]~output_o\);

\addrOUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[12]~13_combout\,
	devoe => ww_devoe,
	o => \addrOUT[12]~output_o\);

\addrOUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[13]~14_combout\,
	devoe => ww_devoe,
	o => \addrOUT[13]~output_o\);

\addrOUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[14]~15_combout\,
	devoe => ww_devoe,
	o => \addrOUT[14]~output_o\);

\addrOUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[15]~16_combout\,
	devoe => ww_devoe,
	o => \addrOUT[15]~output_o\);

\addrOUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[16]~17_combout\,
	devoe => ww_devoe,
	o => \addrOUT[16]~output_o\);

\addrOUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[17]~18_combout\,
	devoe => ww_devoe,
	o => \addrOUT[17]~output_o\);

\addrOUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[18]~19_combout\,
	devoe => ww_devoe,
	o => \addrOUT[18]~output_o\);

\addrOUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[19]~20_combout\,
	devoe => ww_devoe,
	o => \addrOUT[19]~output_o\);

\addrOUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[20]~21_combout\,
	devoe => ww_devoe,
	o => \addrOUT[20]~output_o\);

\addrOUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[21]~22_combout\,
	devoe => ww_devoe,
	o => \addrOUT[21]~output_o\);

\addrOUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[22]~23_combout\,
	devoe => ww_devoe,
	o => \addrOUT[22]~output_o\);

\addrOUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[23]~24_combout\,
	devoe => ww_devoe,
	o => \addrOUT[23]~output_o\);

\addrOUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[24]~25_combout\,
	devoe => ww_devoe,
	o => \addrOUT[24]~output_o\);

\addrOUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[25]~26_combout\,
	devoe => ww_devoe,
	o => \addrOUT[25]~output_o\);

\addrOUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[26]~27_combout\,
	devoe => ww_devoe,
	o => \addrOUT[26]~output_o\);

\addrOUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[27]~28_combout\,
	devoe => ww_devoe,
	o => \addrOUT[27]~output_o\);

\addrOUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[28]~29_combout\,
	devoe => ww_devoe,
	o => \addrOUT[28]~output_o\);

\addrOUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[29]~30_combout\,
	devoe => ww_devoe,
	o => \addrOUT[29]~output_o\);

\addrOUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[30]~31_combout\,
	devoe => ww_devoe,
	o => \addrOUT[30]~output_o\);

\addrOUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[31]~32_combout\,
	devoe => ww_devoe,
	o => \addrOUT[31]~output_o\);

\countPC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \countPC[0]~output_o\);

\countPC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \countPC[1]~output_o\);

\countPC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => \countPC[2]~output_o\);

\countPC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => \countPC[3]~output_o\);

\countPC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => \countPC[4]~output_o\);

\countPC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \countPC[5]~output_o\);

\countPC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => \countPC[6]~output_o\);

\countPC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => \countPC[7]~output_o\);

\countPC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => \countPC[8]~output_o\);

\countPC[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(9),
	devoe => ww_devoe,
	o => \countPC[9]~output_o\);

\countPC[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(10),
	devoe => ww_devoe,
	o => \countPC[10]~output_o\);

\countPC[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(11),
	devoe => ww_devoe,
	o => \countPC[11]~output_o\);

\countPC[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(12),
	devoe => ww_devoe,
	o => \countPC[12]~output_o\);

\countPC[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(13),
	devoe => ww_devoe,
	o => \countPC[13]~output_o\);

\countPC[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(14),
	devoe => ww_devoe,
	o => \countPC[14]~output_o\);

\countPC[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(15),
	devoe => ww_devoe,
	o => \countPC[15]~output_o\);

\countPC[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(16),
	devoe => ww_devoe,
	o => \countPC[16]~output_o\);

\countPC[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(17),
	devoe => ww_devoe,
	o => \countPC[17]~output_o\);

\countPC[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(18),
	devoe => ww_devoe,
	o => \countPC[18]~output_o\);

\countPC[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(19),
	devoe => ww_devoe,
	o => \countPC[19]~output_o\);

\countPC[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(20),
	devoe => ww_devoe,
	o => \countPC[20]~output_o\);

\countPC[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(21),
	devoe => ww_devoe,
	o => \countPC[21]~output_o\);

\countPC[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(22),
	devoe => ww_devoe,
	o => \countPC[22]~output_o\);

\countPC[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(23),
	devoe => ww_devoe,
	o => \countPC[23]~output_o\);

\countPC[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(24),
	devoe => ww_devoe,
	o => \countPC[24]~output_o\);

\countPC[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(25),
	devoe => ww_devoe,
	o => \countPC[25]~output_o\);

\countPC[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(26),
	devoe => ww_devoe,
	o => \countPC[26]~output_o\);

\countPC[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(27),
	devoe => ww_devoe,
	o => \countPC[27]~output_o\);

\countPC[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(28),
	devoe => ww_devoe,
	o => \countPC[28]~output_o\);

\countPC[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(29),
	devoe => ww_devoe,
	o => \countPC[29]~output_o\);

\countPC[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(30),
	devoe => ww_devoe,
	o => \countPC[30]~output_o\);

\countPC[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(31),
	devoe => ww_devoe,
	o => \countPC[31]~output_o\);

\dataRead[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[0]~output_o\);

\dataRead[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[1]~output_o\);

\dataRead[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[2]~output_o\);

\dataRead[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[3]~output_o\);

\dataRead[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[4]~output_o\);

\dataRead[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[5]~output_o\);

\dataRead[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[6]~output_o\);

\dataRead[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[7]~output_o\);

\dataRead[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[8]~output_o\);

\dataRead[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[9]~output_o\);

\dataRead[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[10]~output_o\);

\dataRead[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[11]~output_o\);

\dataRead[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[12]~output_o\);

\dataRead[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[13]~output_o\);

\dataRead[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[14]~output_o\);

\dataRead[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[15]~output_o\);

\dataRead[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[16]~output_o\);

\dataRead[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[17]~output_o\);

\dataRead[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[18]~output_o\);

\dataRead[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[19]~output_o\);

\dataRead[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[20]~output_o\);

\dataRead[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[21]~output_o\);

\dataRead[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[22]~output_o\);

\dataRead[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[23]~output_o\);

\dataRead[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[24]~output_o\);

\dataRead[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[25]~output_o\);

\dataRead[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[26]~output_o\);

\dataRead[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[27]~output_o\);

\dataRead[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[28]~output_o\);

\dataRead[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[29]~output_o\);

\dataRead[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[30]~output_o\);

\dataRead[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataRead[31]~output_o\);

\dataWrite[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[0]~3_combout\,
	devoe => ww_devoe,
	o => \dataWrite[0]~output_o\);

\dataWrite[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[1]~4_combout\,
	devoe => ww_devoe,
	o => \dataWrite[1]~output_o\);

\dataWrite[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[2]~5_combout\,
	devoe => ww_devoe,
	o => \dataWrite[2]~output_o\);

\dataWrite[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[3]~6_combout\,
	devoe => ww_devoe,
	o => \dataWrite[3]~output_o\);

\dataWrite[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[4]~7_combout\,
	devoe => ww_devoe,
	o => \dataWrite[4]~output_o\);

\dataWrite[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[5]~8_combout\,
	devoe => ww_devoe,
	o => \dataWrite[5]~output_o\);

\dataWrite[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[6]~9_combout\,
	devoe => ww_devoe,
	o => \dataWrite[6]~output_o\);

\dataWrite[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[7]~10_combout\,
	devoe => ww_devoe,
	o => \dataWrite[7]~output_o\);

\dataWrite[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[8]~11_combout\,
	devoe => ww_devoe,
	o => \dataWrite[8]~output_o\);

\dataWrite[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[9]~12_combout\,
	devoe => ww_devoe,
	o => \dataWrite[9]~output_o\);

\dataWrite[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[10]~13_combout\,
	devoe => ww_devoe,
	o => \dataWrite[10]~output_o\);

\dataWrite[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[11]~14_combout\,
	devoe => ww_devoe,
	o => \dataWrite[11]~output_o\);

\dataWrite[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[12]~15_combout\,
	devoe => ww_devoe,
	o => \dataWrite[12]~output_o\);

\dataWrite[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[13]~16_combout\,
	devoe => ww_devoe,
	o => \dataWrite[13]~output_o\);

\dataWrite[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[14]~17_combout\,
	devoe => ww_devoe,
	o => \dataWrite[14]~output_o\);

\dataWrite[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[15]~18_combout\,
	devoe => ww_devoe,
	o => \dataWrite[15]~output_o\);

\dataWrite[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[16]~19_combout\,
	devoe => ww_devoe,
	o => \dataWrite[16]~output_o\);

\dataWrite[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[17]~20_combout\,
	devoe => ww_devoe,
	o => \dataWrite[17]~output_o\);

\dataWrite[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[18]~21_combout\,
	devoe => ww_devoe,
	o => \dataWrite[18]~output_o\);

\dataWrite[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[19]~22_combout\,
	devoe => ww_devoe,
	o => \dataWrite[19]~output_o\);

\dataWrite[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[20]~23_combout\,
	devoe => ww_devoe,
	o => \dataWrite[20]~output_o\);

\dataWrite[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[21]~24_combout\,
	devoe => ww_devoe,
	o => \dataWrite[21]~output_o\);

\dataWrite[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[22]~25_combout\,
	devoe => ww_devoe,
	o => \dataWrite[22]~output_o\);

\dataWrite[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[23]~26_combout\,
	devoe => ww_devoe,
	o => \dataWrite[23]~output_o\);

\dataWrite[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[24]~27_combout\,
	devoe => ww_devoe,
	o => \dataWrite[24]~output_o\);

\dataWrite[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[25]~28_combout\,
	devoe => ww_devoe,
	o => \dataWrite[25]~output_o\);

\dataWrite[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[26]~29_combout\,
	devoe => ww_devoe,
	o => \dataWrite[26]~output_o\);

\dataWrite[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[27]~30_combout\,
	devoe => ww_devoe,
	o => \dataWrite[27]~output_o\);

\dataWrite[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[28]~31_combout\,
	devoe => ww_devoe,
	o => \dataWrite[28]~output_o\);

\dataWrite[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[29]~0_combout\,
	devoe => ww_devoe,
	o => \dataWrite[29]~output_o\);

\dataWrite[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[30]~1_combout\,
	devoe => ww_devoe,
	o => \dataWrite[30]~output_o\);

\dataWrite[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bRegistradores|saidaB[31]~2_combout\,
	devoe => ww_devoe,
	o => \dataWrite[31]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\somador|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~5_sumout\ = SUM(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))
-- \somador|Add0~6\ = CARRY(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => GND,
	sumout => \somador|Add0~5_sumout\,
	cout => \somador|Add0~6\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\somador|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~9_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \somador|Add0~6\ ))
-- \somador|Add0~10\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \somador|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \somador|Add0~6\,
	sumout => \somador|Add0~9_sumout\,
	cout => \somador|Add0~10\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\somador|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~13_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \somador|Add0~10\ ))
-- \somador|Add0~14\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \somador|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \somador|Add0~10\,
	sumout => \somador|Add0~13_sumout\,
	cout => \somador|Add0~14\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\somador|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~17_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \somador|Add0~14\ ))
-- \somador|Add0~18\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \somador|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \somador|Add0~14\,
	sumout => \somador|Add0~17_sumout\,
	cout => \somador|Add0~18\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\somador|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~1_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \somador|Add0~18\ ))
-- \somador|Add0~2\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \somador|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \somador|Add0~18\,
	sumout => \somador|Add0~1_sumout\,
	cout => \somador|Add0~2\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\rom|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|memROM~0_combout\ = (!\PC|DOUT\(5) & ((!\PC|DOUT\(2) & (!\PC|DOUT\(3) & !\PC|DOUT\(4))) # (\PC|DOUT\(2) & ((\PC|DOUT\(4))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010100000000100001010000000010000101000000001000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \rom|memROM~0_combout\);

\rom|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|memROM~1_combout\ = (!\PC|DOUT\(3) & ((!\PC|DOUT\(2) & (!\PC|DOUT\(4))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(5)))))) # (\PC|DOUT\(3) & (((\PC|DOUT\(4) & !\PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100011110000000110001111000000011000111100000001100011110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \rom|memROM~1_combout\);

\UC|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal8~0_combout\ = (!\PC|DOUT\(6) & ((\rom|memROM~1_combout\) # (\rom|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \rom|ALT_INV_memROM~0_combout\,
	datac => \rom|ALT_INV_memROM~1_combout\,
	combout => \UC|Equal8~0_combout\);

\somador|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~21_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \somador|Add0~2\ ))
-- \somador|Add0~22\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \somador|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \somador|Add0~2\,
	sumout => \somador|Add0~21_sumout\,
	cout => \somador|Add0~22\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\rom|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|memROM~2_combout\ = (!\PC|DOUT\(5) & ((!\PC|DOUT\(3) & (!\PC|DOUT\(2) & \PC|DOUT\(4))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(4))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100000000000001110000000000000111000000000000011100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \rom|memROM~2_combout\);

\rom|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|memROM~3_combout\ = (!\PC|DOUT\(6) & \rom|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \rom|ALT_INV_memROM~2_combout\,
	combout => \rom|memROM~3_combout\);

\UC|controleULA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|controleULA~0_combout\ = ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))) # (\UC|Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011111110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal8~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \rom|ALT_INV_memROM~3_combout\,
	combout => \UC|controleULA~0_combout\);

\UC|tipo_i~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|tipo_i~0_combout\ = ( !\PC|DOUT\(4) & ( \PC|DOUT\(5) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) ) ) # ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & (!\PC|DOUT\(2) & \PC|DOUT\(3)))) ) ) ) # ( 
-- !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & (\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000001000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \UC|tipo_i~0_combout\);

\bRegistradores|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|Equal0~0_combout\ = ( !\PC|DOUT\(4) & ( \PC|DOUT\(5) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) ) ) # ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(6) & !\PC|DOUT\(7)) ) ) ) # ( !\PC|DOUT\(4) & ( 
-- !\PC|DOUT\(5) & ( (!\PC|DOUT\(6) & !\PC|DOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \bRegistradores|Equal0~0_combout\);

\muxRtImedULA|saida_MUX[0]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[0]~31_combout\ = (!\UC|tipo_i~0_combout\ & (!\bRegistradores|registrador~1062_combout\ & \bRegistradores|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1062_combout\,
	datac => \bRegistradores|ALT_INV_Equal0~0_combout\,
	combout => \muxRtImedULA|saida_MUX[0]~31_combout\);

\bRegistradores|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1094_combout\ = ((!\PC|DOUT\(6) & (!\PC|DOUT\(7) & \rom|memROM~2_combout\))) # (\bRegistradores|registrador~38_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011111111000010001111111100001000111111110000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_registrador~38_q\,
	combout => \bRegistradores|registrador~1094_combout\);

\UC|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal8~1_combout\ = (\rom|memROM~1_combout\) # (\rom|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~0_combout\,
	datab => \rom|ALT_INV_memROM~1_combout\,
	combout => \UC|Equal8~1_combout\);

\ULA|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~130_cout\ = CARRY(( ((!\rom|memROM~3_combout\) # ((!\PC|DOUT\(6) & \UC|Equal8~1_combout\))) # (\PC|DOUT\(7)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001101110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \UC|ALT_INV_Equal8~1_combout\,
	cin => GND,
	cout => \ULA|Add0~130_cout\);

\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1094_combout\)) ) + ( !\muxRtImedULA|saida_MUX[0]~31_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~130_cout\ ))
-- \ULA|Add0~2\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1094_combout\)) ) + ( !\muxRtImedULA|saida_MUX[0]~31_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~130_cout\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011010000111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \muxRtImedULA|ALT_INV_saida_MUX[0]~31_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1094_combout\,
	dataf => \UC|ALT_INV_Equal8~0_combout\,
	cin => \ULA|Add0~130_cout\,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

\UC|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal1~0_combout\ = (!\PC|DOUT\(6) & (!\rom|memROM~0_combout\ & (\rom|memROM~1_combout\ & !\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \rom|ALT_INV_memROM~0_combout\,
	datac => \rom|ALT_INV_memROM~1_combout\,
	datad => \PC|ALT_INV_DOUT\(7),
	combout => \UC|Equal1~0_combout\);

\rom|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|memROM~5_combout\ = (!\PC|DOUT\(2) & (!\PC|DOUT\(5) $ (((!\PC|DOUT\(3) & !\PC|DOUT\(4)))))) # (\PC|DOUT\(2) & (((!\PC|DOUT\(4) & !\PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101010000000011110101000000001111010100000000111101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \rom|memROM~5_combout\);

\bRegistradores|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1091_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ & ( (\PC|DOUT\(7)) # (\PC|DOUT\(6)) ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ & ( (((!\rom|memROM~0_combout\ & !\rom|memROM~1_combout\)) # 
-- (\PC|DOUT\(7))) # (\PC|DOUT\(6)) ) ) ) # ( \rom|memROM~2_combout\ & ( !\rom|memROM~5_combout\ & ( (((!\rom|memROM~0_combout\ & \rom|memROM~1_combout\)) # (\PC|DOUT\(7))) # (\PC|DOUT\(6)) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~5_combout\ & ( 
-- ((!\rom|memROM~0_combout\) # (\PC|DOUT\(7))) # (\PC|DOUT\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111111111010111011111111111010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \rom|ALT_INV_memROM~0_combout\,
	datac => \rom|ALT_INV_memROM~1_combout\,
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~5_combout\,
	combout => \bRegistradores|registrador~1091_combout\);

\bRegistradores|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~1_sumout\,
	asdata => \ULA|saida~0_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~38_q\);

\muxUlaMemoria|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxUlaMemoria|saida_MUX[0]~0_combout\ = ((!\UC|controleULA~0_combout\ & ((!\ULA|Add0~1_sumout\))) # (\UC|controleULA~0_combout\ & (!\ULA|saida~0_combout\))) # (\UC|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011111111111001001111111111100100111111111110010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \ULA|ALT_INV_saida~0_combout\,
	datac => \ULA|ALT_INV_Add0~1_sumout\,
	datad => \UC|ALT_INV_Equal1~0_combout\,
	combout => \muxUlaMemoria|saida_MUX[0]~0_combout\);

\bRegistradores|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1092_combout\ = ( \rom|memROM~2_combout\ & ( (!\PC|DOUT\(6) & (!\rom|memROM~0_combout\ & (!\rom|memROM~1_combout\ & !\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \rom|ALT_INV_memROM~0_combout\,
	datac => \rom|ALT_INV_memROM~1_combout\,
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1092_combout\);

\bRegistradores|registrador~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \muxUlaMemoria|saida_MUX[0]~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~134_q\);

\bRegistradores|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1093_combout\ = ( \rom|memROM~5_combout\ & ( (!\PC|DOUT\(6) & (!\rom|memROM~0_combout\ & (\rom|memROM~1_combout\ & !\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \rom|ALT_INV_memROM~0_combout\,
	datac => \rom|ALT_INV_memROM~1_combout\,
	datad => \PC|ALT_INV_DOUT\(7),
	dataf => \rom|ALT_INV_memROM~5_combout\,
	combout => \bRegistradores|registrador~1093_combout\);

\bRegistradores|registrador~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~1_sumout\,
	asdata => \ULA|saida~0_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~102_q\);

\rom|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|memROM~4_combout\ = ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & \PC|DOUT\(2))) ) ) ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \rom|memROM~4_combout\);

\rom|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|memROM~6_combout\ = ( !\PC|DOUT\(4) & ( \PC|DOUT\(5) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) ) ) # ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & !\PC|DOUT\(2))) ) ) ) # ( !\PC|DOUT\(4) & ( 
-- !\PC|DOUT\(5) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & ((\PC|DOUT\(3)) # (\PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001000100000001000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \rom|memROM~6_combout\);

\bRegistradores|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1062_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~134_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( !\bRegistradores|registrador~102_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( !\bRegistradores|registrador~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011111111000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~38_q\,
	datac => \bRegistradores|ALT_INV_registrador~134_q\,
	datad => \bRegistradores|ALT_INV_registrador~102_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1062_combout\);

\ULA|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida~0_combout\ = ( \bRegistradores|Equal0~0_combout\ & ( (!\PC|DOUT\(7) & (((!\UC|tipo_i~0_combout\ & !\bRegistradores|registrador~1062_combout\)) # (\rom|memROM~3_combout\))) # (\PC|DOUT\(7) & (((!\UC|tipo_i~0_combout\ & 
-- !\bRegistradores|registrador~1062_combout\)))) ) ) # ( !\bRegistradores|Equal0~0_combout\ & ( (!\PC|DOUT\(7) & \rom|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010111100100010001000100010001000101111001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_tipo_i~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1062_combout\,
	datae => \bRegistradores|ALT_INV_Equal0~0_combout\,
	combout => \ULA|saida~0_combout\);

\ULA|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~1_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~1_sumout\))) # (\UC|controleULA~0_combout\ & (\ULA|saida~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \ULA|ALT_INV_saida~0_combout\,
	datac => \ULA|ALT_INV_Add0~1_sumout\,
	combout => \ULA|saida[0]~1_combout\);

\bRegistradores|registrador~1095\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1095_combout\ = (\bRegistradores|registrador~39_q\ & (((!\rom|memROM~2_combout\) # (\PC|DOUT\(7))) # (\PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000000001111011100000000111101110000000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_registrador~39_q\,
	combout => \bRegistradores|registrador~1095_combout\);

\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1095_combout\)) ) + ( !\muxRtImedULA|saida_MUX[1]~0_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1095_combout\)) ) + ( !\muxRtImedULA|saida_MUX[1]~0_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011010000111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \muxRtImedULA|ALT_INV_saida_MUX[1]~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1095_combout\,
	dataf => \UC|ALT_INV_Equal8~0_combout\,
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

\bRegistradores|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~5_sumout\,
	asdata => \muxRtImedULA|saida_MUX[1]~0_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~39_q\);

\bRegistradores|registrador~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~5_sumout\,
	asdata => \muxRtImedULA|saida_MUX[1]~0_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~135_q\);

\muxUlaMemoria|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxUlaMemoria|saida_MUX[1]~1_combout\ = ((!\UC|controleULA~0_combout\ & ((!\ULA|Add0~5_sumout\))) # (\UC|controleULA~0_combout\ & (!\muxRtImedULA|saida_MUX[1]~0_combout\))) # (\UC|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011111111111001001111111111100100111111111110010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[1]~0_combout\,
	datac => \ULA|ALT_INV_Add0~5_sumout\,
	datad => \UC|ALT_INV_Equal1~0_combout\,
	combout => \muxUlaMemoria|saida_MUX[1]~1_combout\);

\bRegistradores|registrador~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \muxUlaMemoria|saida_MUX[1]~1_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~103_q\);

\bRegistradores|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1063_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~135_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( !\bRegistradores|registrador~103_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000011111111000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~39_q\,
	datac => \bRegistradores|ALT_INV_registrador~135_q\,
	datad => \bRegistradores|ALT_INV_registrador~103_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1063_combout\);

\muxRtImedULA|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[1]~0_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1063_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1063_combout\,
	combout => \muxRtImedULA|saida_MUX[1]~0_combout\);

\ULA|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~2_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~5_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[1]~0_combout\,
	datac => \ULA|ALT_INV_Add0~5_sumout\,
	combout => \ULA|saida[1]~2_combout\);

\bRegistradores|registrador~1096\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1096_combout\ = (\bRegistradores|registrador~40_q\ & (((!\rom|memROM~2_combout\) # (\PC|DOUT\(7))) # (\PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000000001111011100000000111101110000000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_registrador~40_q\,
	combout => \bRegistradores|registrador~1096_combout\);

\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1096_combout\)) ) + ( !\muxRtImedULA|saida_MUX[2]~1_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1096_combout\)) ) + ( !\muxRtImedULA|saida_MUX[2]~1_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011010000111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \muxRtImedULA|ALT_INV_saida_MUX[2]~1_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1096_combout\,
	dataf => \UC|ALT_INV_Equal8~0_combout\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

\bRegistradores|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~9_sumout\,
	asdata => \muxRtImedULA|saida_MUX[2]~1_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~40_q\);

\muxUlaMemoria|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxUlaMemoria|saida_MUX[2]~2_combout\ = ((!\UC|controleULA~0_combout\ & ((!\ULA|Add0~9_sumout\))) # (\UC|controleULA~0_combout\ & (!\muxRtImedULA|saida_MUX[2]~1_combout\))) # (\UC|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011111111111001001111111111100100111111111110010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[2]~1_combout\,
	datac => \ULA|ALT_INV_Add0~9_sumout\,
	datad => \UC|ALT_INV_Equal1~0_combout\,
	combout => \muxUlaMemoria|saida_MUX[2]~2_combout\);

\bRegistradores|registrador~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \muxUlaMemoria|saida_MUX[2]~2_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~136_q\);

\bRegistradores|registrador~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~9_sumout\,
	asdata => \muxRtImedULA|saida_MUX[2]~1_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~104_q\);

\bRegistradores|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1064_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( !\bRegistradores|registrador~136_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~104_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~40_q\,
	datac => \bRegistradores|ALT_INV_registrador~136_q\,
	datad => \bRegistradores|ALT_INV_registrador~104_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1064_combout\);

\muxRtImedULA|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[2]~1_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1064_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1064_combout\,
	combout => \muxRtImedULA|saida_MUX[2]~1_combout\);

\ULA|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~3_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~9_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[2]~1_combout\,
	datac => \ULA|ALT_INV_Add0~9_sumout\,
	combout => \ULA|saida[2]~3_combout\);

\bRegistradores|registrador~1097\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1097_combout\ = (\bRegistradores|registrador~41_q\ & (((!\rom|memROM~2_combout\) # (\PC|DOUT\(7))) # (\PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000000001111011100000000111101110000000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_registrador~41_q\,
	combout => \bRegistradores|registrador~1097_combout\);

\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1097_combout\)) ) + ( !\muxRtImedULA|saida_MUX[3]~2_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~10\ 
-- ))
-- \ULA|Add0~14\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1097_combout\)) ) + ( !\muxRtImedULA|saida_MUX[3]~2_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1097_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[3]~2_combout\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

\bRegistradores|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~13_sumout\,
	asdata => \muxRtImedULA|saida_MUX[3]~2_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~41_q\);

\muxUlaMemoria|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxUlaMemoria|saida_MUX[3]~3_combout\ = ((!\UC|controleULA~0_combout\ & ((!\ULA|Add0~13_sumout\))) # (\UC|controleULA~0_combout\ & (!\muxRtImedULA|saida_MUX[3]~2_combout\))) # (\UC|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011111111111001001111111111100100111111111110010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[3]~2_combout\,
	datac => \ULA|ALT_INV_Add0~13_sumout\,
	datad => \UC|ALT_INV_Equal1~0_combout\,
	combout => \muxUlaMemoria|saida_MUX[3]~3_combout\);

\bRegistradores|registrador~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \muxUlaMemoria|saida_MUX[3]~3_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~137_q\);

\bRegistradores|registrador~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~13_sumout\,
	asdata => \muxRtImedULA|saida_MUX[3]~2_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~105_q\);

\bRegistradores|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1065_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( !\bRegistradores|registrador~137_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~105_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~41_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~41_q\,
	datac => \bRegistradores|ALT_INV_registrador~137_q\,
	datad => \bRegistradores|ALT_INV_registrador~105_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1065_combout\);

\muxRtImedULA|saida_MUX[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[3]~2_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1065_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1065_combout\,
	combout => \muxRtImedULA|saida_MUX[3]~2_combout\);

\ULA|saida[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[3]~4_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~13_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[3]~2_combout\,
	datac => \ULA|ALT_INV_Add0~13_sumout\,
	combout => \ULA|saida[3]~4_combout\);

\bRegistradores|registrador~1098\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1098_combout\ = (\bRegistradores|registrador~42_q\ & (((!\rom|memROM~2_combout\) # (\PC|DOUT\(7))) # (\PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000000001111011100000000111101110000000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_registrador~42_q\,
	combout => \bRegistradores|registrador~1098_combout\);

\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1098_combout\)) ) + ( !\muxRtImedULA|saida_MUX[4]~3_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~14\ 
-- ))
-- \ULA|Add0~18\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1098_combout\)) ) + ( !\muxRtImedULA|saida_MUX[4]~3_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1098_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[4]~3_combout\,
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

\bRegistradores|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~17_sumout\,
	asdata => \muxRtImedULA|saida_MUX[4]~3_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~42_q\);

\muxUlaMemoria|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxUlaMemoria|saida_MUX[4]~4_combout\ = ((!\UC|controleULA~0_combout\ & ((!\ULA|Add0~17_sumout\))) # (\UC|controleULA~0_combout\ & (!\muxRtImedULA|saida_MUX[4]~3_combout\))) # (\UC|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011111111111001001111111111100100111111111110010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[4]~3_combout\,
	datac => \ULA|ALT_INV_Add0~17_sumout\,
	datad => \UC|ALT_INV_Equal1~0_combout\,
	combout => \muxUlaMemoria|saida_MUX[4]~4_combout\);

\bRegistradores|registrador~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \muxUlaMemoria|saida_MUX[4]~4_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~138_q\);

\bRegistradores|registrador~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~17_sumout\,
	asdata => \muxRtImedULA|saida_MUX[4]~3_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~106_q\);

\bRegistradores|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1066_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( !\bRegistradores|registrador~138_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~106_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~42_q\,
	datac => \bRegistradores|ALT_INV_registrador~138_q\,
	datad => \bRegistradores|ALT_INV_registrador~106_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1066_combout\);

\muxRtImedULA|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[4]~3_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1066_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1066_combout\,
	combout => \muxRtImedULA|saida_MUX[4]~3_combout\);

\ULA|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~5_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~17_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[4]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[4]~3_combout\,
	datac => \ULA|ALT_INV_Add0~17_sumout\,
	combout => \ULA|saida[4]~5_combout\);

\bRegistradores|registrador~1099\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1099_combout\ = (\bRegistradores|registrador~43_q\ & (((!\rom|memROM~2_combout\) # (\PC|DOUT\(7))) # (\PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000000001111011100000000111101110000000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_registrador~43_q\,
	combout => \bRegistradores|registrador~1099_combout\);

\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1099_combout\)) ) + ( !\muxRtImedULA|saida_MUX[5]~4_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~18\ 
-- ))
-- \ULA|Add0~22\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1099_combout\)) ) + ( !\muxRtImedULA|saida_MUX[5]~4_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1099_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[5]~4_combout\,
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

\bRegistradores|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~21_sumout\,
	asdata => \muxRtImedULA|saida_MUX[5]~4_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~43_q\);

\muxUlaMemoria|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxUlaMemoria|saida_MUX[5]~5_combout\ = ((!\UC|controleULA~0_combout\ & ((!\ULA|Add0~21_sumout\))) # (\UC|controleULA~0_combout\ & (!\muxRtImedULA|saida_MUX[5]~4_combout\))) # (\UC|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011111111111001001111111111100100111111111110010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[5]~4_combout\,
	datac => \ULA|ALT_INV_Add0~21_sumout\,
	datad => \UC|ALT_INV_Equal1~0_combout\,
	combout => \muxUlaMemoria|saida_MUX[5]~5_combout\);

\bRegistradores|registrador~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \muxUlaMemoria|saida_MUX[5]~5_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~139_q\);

\bRegistradores|registrador~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~21_sumout\,
	asdata => \muxRtImedULA|saida_MUX[5]~4_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~107_q\);

\bRegistradores|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1067_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( !\bRegistradores|registrador~139_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~107_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~43_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~43_q\,
	datac => \bRegistradores|ALT_INV_registrador~139_q\,
	datad => \bRegistradores|ALT_INV_registrador~107_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1067_combout\);

\muxRtImedULA|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[5]~4_combout\ = ( \bRegistradores|registrador~1067_combout\ & ( (!\UC|tipo_i~0_combout\ & (((\bRegistradores|Equal0~0_combout\)))) # (\UC|tipo_i~0_combout\ & (!\PC|DOUT\(7) & (\rom|memROM~3_combout\))) ) ) # ( 
-- !\bRegistradores|registrador~1067_combout\ & ( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \UC|tipo_i~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000101111001000000010000000100000001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_tipo_i~0_combout\,
	datad => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datae => \bRegistradores|ALT_INV_registrador~1067_combout\,
	combout => \muxRtImedULA|saida_MUX[5]~4_combout\);

\ULA|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[5]~6_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~21_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[5]~4_combout\,
	datac => \ULA|ALT_INV_Add0~21_sumout\,
	combout => \ULA|saida[5]~6_combout\);

\bRegistradores|registrador~1100\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1100_combout\ = (\bRegistradores|registrador~44_q\ & (((!\rom|memROM~2_combout\) # (\PC|DOUT\(7))) # (\PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000000001111011100000000111101110000000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_registrador~44_q\,
	combout => \bRegistradores|registrador~1100_combout\);

\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1100_combout\)) ) + ( !\muxRtImedULA|saida_MUX[6]~5_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~22\ 
-- ))
-- \ULA|Add0~26\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1100_combout\)) ) + ( !\muxRtImedULA|saida_MUX[6]~5_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1100_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[6]~5_combout\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

\bRegistradores|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~25_sumout\,
	asdata => \muxRtImedULA|saida_MUX[6]~5_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~44_q\);

\muxUlaMemoria|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxUlaMemoria|saida_MUX[6]~6_combout\ = ((!\UC|controleULA~0_combout\ & ((!\ULA|Add0~25_sumout\))) # (\UC|controleULA~0_combout\ & (!\muxRtImedULA|saida_MUX[6]~5_combout\))) # (\UC|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011111111111001001111111111100100111111111110010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[6]~5_combout\,
	datac => \ULA|ALT_INV_Add0~25_sumout\,
	datad => \UC|ALT_INV_Equal1~0_combout\,
	combout => \muxUlaMemoria|saida_MUX[6]~6_combout\);

\bRegistradores|registrador~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \muxUlaMemoria|saida_MUX[6]~6_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~140_q\);

\bRegistradores|registrador~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~25_sumout\,
	asdata => \muxRtImedULA|saida_MUX[6]~5_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~108_q\);

\bRegistradores|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1068_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( !\bRegistradores|registrador~140_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~108_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~44_q\,
	datac => \bRegistradores|ALT_INV_registrador~140_q\,
	datad => \bRegistradores|ALT_INV_registrador~108_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1068_combout\);

\muxRtImedULA|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[6]~5_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1068_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1068_combout\,
	combout => \muxRtImedULA|saida_MUX[6]~5_combout\);

\ULA|saida[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~7_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~25_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[6]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[6]~5_combout\,
	datac => \ULA|ALT_INV_Add0~25_sumout\,
	combout => \ULA|saida[6]~7_combout\);

\bRegistradores|registrador~1101\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1101_combout\ = (\bRegistradores|registrador~45_q\ & (((!\rom|memROM~2_combout\) # (\PC|DOUT\(7))) # (\PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000000001111011100000000111101110000000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_registrador~45_q\,
	combout => \bRegistradores|registrador~1101_combout\);

\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1101_combout\)) ) + ( !\muxRtImedULA|saida_MUX[7]~6_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~26\ 
-- ))
-- \ULA|Add0~30\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1101_combout\)) ) + ( !\muxRtImedULA|saida_MUX[7]~6_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1101_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[7]~6_combout\,
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\,
	cout => \ULA|Add0~30\);

\bRegistradores|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~29_sumout\,
	asdata => \muxRtImedULA|saida_MUX[7]~6_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~45_q\);

\muxUlaMemoria|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxUlaMemoria|saida_MUX[7]~7_combout\ = ((!\UC|controleULA~0_combout\ & ((!\ULA|Add0~29_sumout\))) # (\UC|controleULA~0_combout\ & (!\muxRtImedULA|saida_MUX[7]~6_combout\))) # (\UC|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011111111111001001111111111100100111111111110010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[7]~6_combout\,
	datac => \ULA|ALT_INV_Add0~29_sumout\,
	datad => \UC|ALT_INV_Equal1~0_combout\,
	combout => \muxUlaMemoria|saida_MUX[7]~7_combout\);

\bRegistradores|registrador~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \muxUlaMemoria|saida_MUX[7]~7_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~141_q\);

\bRegistradores|registrador~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~29_sumout\,
	asdata => \muxRtImedULA|saida_MUX[7]~6_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~109_q\);

\bRegistradores|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1069_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( !\bRegistradores|registrador~141_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~109_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~45_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~45_q\,
	datac => \bRegistradores|ALT_INV_registrador~141_q\,
	datad => \bRegistradores|ALT_INV_registrador~109_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1069_combout\);

\muxRtImedULA|saida_MUX[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[7]~6_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1069_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1069_combout\,
	combout => \muxRtImedULA|saida_MUX[7]~6_combout\);

\ULA|saida[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~8_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~29_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[7]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[7]~6_combout\,
	datac => \ULA|ALT_INV_Add0~29_sumout\,
	combout => \ULA|saida[7]~8_combout\);

\bRegistradores|registrador~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1102_combout\ = (\bRegistradores|registrador~46_q\ & (((!\rom|memROM~2_combout\) # (\PC|DOUT\(7))) # (\PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000000001111011100000000111101110000000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_registrador~46_q\,
	combout => \bRegistradores|registrador~1102_combout\);

\ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1102_combout\)) ) + ( !\muxRtImedULA|saida_MUX[8]~7_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~30\ 
-- ))
-- \ULA|Add0~34\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1102_combout\)) ) + ( !\muxRtImedULA|saida_MUX[8]~7_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1102_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[8]~7_combout\,
	cin => \ULA|Add0~30\,
	sumout => \ULA|Add0~33_sumout\,
	cout => \ULA|Add0~34\);

\bRegistradores|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~33_sumout\,
	asdata => \muxRtImedULA|saida_MUX[8]~7_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~46_q\);

\bRegistradores|registrador~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~33_sumout\,
	asdata => \muxRtImedULA|saida_MUX[8]~7_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~142_q\);

\bRegistradores|registrador~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~33_sumout\,
	asdata => \muxRtImedULA|saida_MUX[8]~7_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~110_q\);

\bRegistradores|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1070_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~142_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~110_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~46_q\,
	datac => \bRegistradores|ALT_INV_registrador~142_q\,
	datad => \bRegistradores|ALT_INV_registrador~110_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1070_combout\);

\muxRtImedULA|saida_MUX[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[8]~7_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1070_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1070_combout\,
	combout => \muxRtImedULA|saida_MUX[8]~7_combout\);

\ULA|saida[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[8]~9_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~33_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[8]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[8]~7_combout\,
	datac => \ULA|ALT_INV_Add0~33_sumout\,
	combout => \ULA|saida[8]~9_combout\);

\bRegistradores|registrador~1103\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1103_combout\ = (\bRegistradores|registrador~47_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~47_q\,
	combout => \bRegistradores|registrador~1103_combout\);

\ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1103_combout\)) ) + ( !\muxRtImedULA|saida_MUX[9]~8_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~34\ 
-- ))
-- \ULA|Add0~38\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1103_combout\)) ) + ( !\muxRtImedULA|saida_MUX[9]~8_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1103_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[9]~8_combout\,
	cin => \ULA|Add0~34\,
	sumout => \ULA|Add0~37_sumout\,
	cout => \ULA|Add0~38\);

\bRegistradores|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~37_sumout\,
	asdata => \muxRtImedULA|saida_MUX[9]~8_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~47_q\);

\bRegistradores|registrador~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~37_sumout\,
	asdata => \muxRtImedULA|saida_MUX[9]~8_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~143_q\);

\bRegistradores|registrador~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~37_sumout\,
	asdata => \muxRtImedULA|saida_MUX[9]~8_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~111_q\);

\bRegistradores|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1071_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~143_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~111_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~47_q\,
	datac => \bRegistradores|ALT_INV_registrador~143_q\,
	datad => \bRegistradores|ALT_INV_registrador~111_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1071_combout\);

\muxRtImedULA|saida_MUX[9]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[9]~8_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1071_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1071_combout\,
	combout => \muxRtImedULA|saida_MUX[9]~8_combout\);

\ULA|saida[9]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[9]~10_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~37_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[9]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[9]~8_combout\,
	datac => \ULA|ALT_INV_Add0~37_sumout\,
	combout => \ULA|saida[9]~10_combout\);

\bRegistradores|registrador~1104\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1104_combout\ = (\bRegistradores|registrador~48_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~48_q\,
	combout => \bRegistradores|registrador~1104_combout\);

\ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1104_combout\)) ) + ( !\muxRtImedULA|saida_MUX[10]~9_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~38\ 
-- ))
-- \ULA|Add0~42\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1104_combout\)) ) + ( !\muxRtImedULA|saida_MUX[10]~9_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1104_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[10]~9_combout\,
	cin => \ULA|Add0~38\,
	sumout => \ULA|Add0~41_sumout\,
	cout => \ULA|Add0~42\);

\bRegistradores|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~41_sumout\,
	asdata => \muxRtImedULA|saida_MUX[10]~9_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~48_q\);

\bRegistradores|registrador~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~41_sumout\,
	asdata => \muxRtImedULA|saida_MUX[10]~9_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~144_q\);

\bRegistradores|registrador~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~41_sumout\,
	asdata => \muxRtImedULA|saida_MUX[10]~9_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~112_q\);

\bRegistradores|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1072_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~144_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~112_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~48_q\,
	datac => \bRegistradores|ALT_INV_registrador~144_q\,
	datad => \bRegistradores|ALT_INV_registrador~112_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1072_combout\);

\muxRtImedULA|saida_MUX[10]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[10]~9_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1072_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1072_combout\,
	combout => \muxRtImedULA|saida_MUX[10]~9_combout\);

\ULA|saida[10]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[10]~11_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~41_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[10]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[10]~9_combout\,
	datac => \ULA|ALT_INV_Add0~41_sumout\,
	combout => \ULA|saida[10]~11_combout\);

\bRegistradores|registrador~1105\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1105_combout\ = (\bRegistradores|registrador~49_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~49_q\,
	combout => \bRegistradores|registrador~1105_combout\);

\ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1105_combout\)) ) + ( !\muxRtImedULA|saida_MUX[11]~10_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~42\ ))
-- \ULA|Add0~46\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1105_combout\)) ) + ( !\muxRtImedULA|saida_MUX[11]~10_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1105_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[11]~10_combout\,
	cin => \ULA|Add0~42\,
	sumout => \ULA|Add0~45_sumout\,
	cout => \ULA|Add0~46\);

\bRegistradores|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~45_sumout\,
	asdata => \muxRtImedULA|saida_MUX[11]~10_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~49_q\);

\bRegistradores|registrador~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~45_sumout\,
	asdata => \muxRtImedULA|saida_MUX[11]~10_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~145_q\);

\bRegistradores|registrador~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~45_sumout\,
	asdata => \muxRtImedULA|saida_MUX[11]~10_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~113_q\);

\bRegistradores|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1073_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~145_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~113_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~49_q\,
	datac => \bRegistradores|ALT_INV_registrador~145_q\,
	datad => \bRegistradores|ALT_INV_registrador~113_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1073_combout\);

\muxRtImedULA|saida_MUX[11]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[11]~10_combout\ = ( \bRegistradores|registrador~1073_combout\ & ( (!\UC|tipo_i~0_combout\ & (((\bRegistradores|Equal0~0_combout\)))) # (\UC|tipo_i~0_combout\ & (!\PC|DOUT\(7) & (\rom|memROM~3_combout\))) ) ) # ( 
-- !\bRegistradores|registrador~1073_combout\ & ( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \UC|tipo_i~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000101111001000000010000000100000001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_tipo_i~0_combout\,
	datad => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datae => \bRegistradores|ALT_INV_registrador~1073_combout\,
	combout => \muxRtImedULA|saida_MUX[11]~10_combout\);

\ULA|saida[11]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[11]~12_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~45_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[11]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[11]~10_combout\,
	datac => \ULA|ALT_INV_Add0~45_sumout\,
	combout => \ULA|saida[11]~12_combout\);

\bRegistradores|registrador~1106\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1106_combout\ = (\bRegistradores|registrador~50_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~50_q\,
	combout => \bRegistradores|registrador~1106_combout\);

\ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1106_combout\)) ) + ( !\muxRtImedULA|saida_MUX[12]~11_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~46\ ))
-- \ULA|Add0~50\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1106_combout\)) ) + ( !\muxRtImedULA|saida_MUX[12]~11_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1106_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[12]~11_combout\,
	cin => \ULA|Add0~46\,
	sumout => \ULA|Add0~49_sumout\,
	cout => \ULA|Add0~50\);

\bRegistradores|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~49_sumout\,
	asdata => \muxRtImedULA|saida_MUX[12]~11_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~50_q\);

\bRegistradores|registrador~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~49_sumout\,
	asdata => \muxRtImedULA|saida_MUX[12]~11_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~146_q\);

\bRegistradores|registrador~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~49_sumout\,
	asdata => \muxRtImedULA|saida_MUX[12]~11_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~114_q\);

\bRegistradores|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1074_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~146_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~114_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~50_q\,
	datac => \bRegistradores|ALT_INV_registrador~146_q\,
	datad => \bRegistradores|ALT_INV_registrador~114_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1074_combout\);

\muxRtImedULA|saida_MUX[12]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[12]~11_combout\ = ( \bRegistradores|registrador~1074_combout\ & ( (!\UC|tipo_i~0_combout\ & (((\bRegistradores|Equal0~0_combout\)))) # (\UC|tipo_i~0_combout\ & (!\PC|DOUT\(7) & (\rom|memROM~3_combout\))) ) ) # ( 
-- !\bRegistradores|registrador~1074_combout\ & ( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \UC|tipo_i~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000101111001000000010000000100000001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_tipo_i~0_combout\,
	datad => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datae => \bRegistradores|ALT_INV_registrador~1074_combout\,
	combout => \muxRtImedULA|saida_MUX[12]~11_combout\);

\ULA|saida[12]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[12]~13_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~49_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[12]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[12]~11_combout\,
	datac => \ULA|ALT_INV_Add0~49_sumout\,
	combout => \ULA|saida[12]~13_combout\);

\bRegistradores|registrador~1107\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1107_combout\ = (\bRegistradores|registrador~51_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~51_q\,
	combout => \bRegistradores|registrador~1107_combout\);

\ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1107_combout\)) ) + ( !\muxRtImedULA|saida_MUX[13]~12_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~50\ ))
-- \ULA|Add0~54\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1107_combout\)) ) + ( !\muxRtImedULA|saida_MUX[13]~12_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1107_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[13]~12_combout\,
	cin => \ULA|Add0~50\,
	sumout => \ULA|Add0~53_sumout\,
	cout => \ULA|Add0~54\);

\bRegistradores|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~53_sumout\,
	asdata => \muxRtImedULA|saida_MUX[13]~12_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~51_q\);

\bRegistradores|registrador~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~53_sumout\,
	asdata => \muxRtImedULA|saida_MUX[13]~12_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~147_q\);

\bRegistradores|registrador~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~53_sumout\,
	asdata => \muxRtImedULA|saida_MUX[13]~12_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~115_q\);

\bRegistradores|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1075_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~147_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~115_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~51_q\,
	datac => \bRegistradores|ALT_INV_registrador~147_q\,
	datad => \bRegistradores|ALT_INV_registrador~115_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1075_combout\);

\muxRtImedULA|saida_MUX[13]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[13]~12_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1075_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1075_combout\,
	combout => \muxRtImedULA|saida_MUX[13]~12_combout\);

\ULA|saida[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[13]~14_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~53_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[13]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[13]~12_combout\,
	datac => \ULA|ALT_INV_Add0~53_sumout\,
	combout => \ULA|saida[13]~14_combout\);

\bRegistradores|registrador~1108\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1108_combout\ = (\bRegistradores|registrador~52_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~52_q\,
	combout => \bRegistradores|registrador~1108_combout\);

\ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1108_combout\)) ) + ( !\muxRtImedULA|saida_MUX[14]~13_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~54\ ))
-- \ULA|Add0~58\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1108_combout\)) ) + ( !\muxRtImedULA|saida_MUX[14]~13_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1108_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[14]~13_combout\,
	cin => \ULA|Add0~54\,
	sumout => \ULA|Add0~57_sumout\,
	cout => \ULA|Add0~58\);

\bRegistradores|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~57_sumout\,
	asdata => \muxRtImedULA|saida_MUX[14]~13_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~52_q\);

\bRegistradores|registrador~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~57_sumout\,
	asdata => \muxRtImedULA|saida_MUX[14]~13_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~148_q\);

\bRegistradores|registrador~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~57_sumout\,
	asdata => \muxRtImedULA|saida_MUX[14]~13_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~116_q\);

\bRegistradores|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1076_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~148_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~116_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~52_q\,
	datac => \bRegistradores|ALT_INV_registrador~148_q\,
	datad => \bRegistradores|ALT_INV_registrador~116_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1076_combout\);

\muxRtImedULA|saida_MUX[14]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[14]~13_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1076_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1076_combout\,
	combout => \muxRtImedULA|saida_MUX[14]~13_combout\);

\ULA|saida[14]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[14]~15_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~57_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[14]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[14]~13_combout\,
	datac => \ULA|ALT_INV_Add0~57_sumout\,
	combout => \ULA|saida[14]~15_combout\);

\bRegistradores|registrador~1109\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1109_combout\ = (\bRegistradores|registrador~53_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~53_q\,
	combout => \bRegistradores|registrador~1109_combout\);

\ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1109_combout\)) ) + ( !\muxRtImedULA|saida_MUX[15]~14_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~58\ ))
-- \ULA|Add0~62\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1109_combout\)) ) + ( !\muxRtImedULA|saida_MUX[15]~14_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1109_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[15]~14_combout\,
	cin => \ULA|Add0~58\,
	sumout => \ULA|Add0~61_sumout\,
	cout => \ULA|Add0~62\);

\bRegistradores|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~61_sumout\,
	asdata => \muxRtImedULA|saida_MUX[15]~14_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~53_q\);

\bRegistradores|registrador~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~61_sumout\,
	asdata => \muxRtImedULA|saida_MUX[15]~14_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~149_q\);

\bRegistradores|registrador~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~61_sumout\,
	asdata => \muxRtImedULA|saida_MUX[15]~14_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~117_q\);

\bRegistradores|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1077_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~149_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~117_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~53_q\,
	datac => \bRegistradores|ALT_INV_registrador~149_q\,
	datad => \bRegistradores|ALT_INV_registrador~117_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1077_combout\);

\muxRtImedULA|saida_MUX[15]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[15]~14_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1077_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1077_combout\,
	combout => \muxRtImedULA|saida_MUX[15]~14_combout\);

\ULA|saida[15]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[15]~16_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~61_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[15]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[15]~14_combout\,
	datac => \ULA|ALT_INV_Add0~61_sumout\,
	combout => \ULA|saida[15]~16_combout\);

\bRegistradores|registrador~1110\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1110_combout\ = (\bRegistradores|registrador~54_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~54_q\,
	combout => \bRegistradores|registrador~1110_combout\);

\ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1110_combout\)) ) + ( !\muxRtImedULA|saida_MUX[16]~15_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~62\ ))
-- \ULA|Add0~66\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1110_combout\)) ) + ( !\muxRtImedULA|saida_MUX[16]~15_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1110_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[16]~15_combout\,
	cin => \ULA|Add0~62\,
	sumout => \ULA|Add0~65_sumout\,
	cout => \ULA|Add0~66\);

\bRegistradores|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~65_sumout\,
	asdata => \muxRtImedULA|saida_MUX[16]~15_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~54_q\);

\bRegistradores|registrador~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~65_sumout\,
	asdata => \muxRtImedULA|saida_MUX[16]~15_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~150_q\);

\bRegistradores|registrador~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~65_sumout\,
	asdata => \muxRtImedULA|saida_MUX[16]~15_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~118_q\);

\bRegistradores|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1078_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~150_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~118_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~54_q\,
	datac => \bRegistradores|ALT_INV_registrador~150_q\,
	datad => \bRegistradores|ALT_INV_registrador~118_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1078_combout\);

\muxRtImedULA|saida_MUX[16]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[16]~15_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1078_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1078_combout\,
	combout => \muxRtImedULA|saida_MUX[16]~15_combout\);

\ULA|saida[16]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[16]~17_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~65_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[16]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[16]~15_combout\,
	datac => \ULA|ALT_INV_Add0~65_sumout\,
	combout => \ULA|saida[16]~17_combout\);

\bRegistradores|registrador~1111\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1111_combout\ = (\bRegistradores|registrador~55_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~55_q\,
	combout => \bRegistradores|registrador~1111_combout\);

\ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1111_combout\)) ) + ( !\muxRtImedULA|saida_MUX[17]~16_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~66\ ))
-- \ULA|Add0~70\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1111_combout\)) ) + ( !\muxRtImedULA|saida_MUX[17]~16_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1111_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[17]~16_combout\,
	cin => \ULA|Add0~66\,
	sumout => \ULA|Add0~69_sumout\,
	cout => \ULA|Add0~70\);

\bRegistradores|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~69_sumout\,
	asdata => \muxRtImedULA|saida_MUX[17]~16_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~55_q\);

\bRegistradores|registrador~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~69_sumout\,
	asdata => \muxRtImedULA|saida_MUX[17]~16_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~151_q\);

\bRegistradores|registrador~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~69_sumout\,
	asdata => \muxRtImedULA|saida_MUX[17]~16_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~119_q\);

\bRegistradores|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1079_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~151_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~119_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~55_q\,
	datac => \bRegistradores|ALT_INV_registrador~151_q\,
	datad => \bRegistradores|ALT_INV_registrador~119_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1079_combout\);

\muxRtImedULA|saida_MUX[17]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[17]~16_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1079_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1079_combout\,
	combout => \muxRtImedULA|saida_MUX[17]~16_combout\);

\ULA|saida[17]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~18_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~69_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[17]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[17]~16_combout\,
	datac => \ULA|ALT_INV_Add0~69_sumout\,
	combout => \ULA|saida[17]~18_combout\);

\bRegistradores|registrador~1112\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1112_combout\ = (\bRegistradores|registrador~56_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~56_q\,
	combout => \bRegistradores|registrador~1112_combout\);

\ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1112_combout\)) ) + ( !\muxRtImedULA|saida_MUX[18]~17_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~70\ ))
-- \ULA|Add0~74\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1112_combout\)) ) + ( !\muxRtImedULA|saida_MUX[18]~17_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1112_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[18]~17_combout\,
	cin => \ULA|Add0~70\,
	sumout => \ULA|Add0~73_sumout\,
	cout => \ULA|Add0~74\);

\bRegistradores|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~73_sumout\,
	asdata => \muxRtImedULA|saida_MUX[18]~17_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~56_q\);

\bRegistradores|registrador~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~73_sumout\,
	asdata => \muxRtImedULA|saida_MUX[18]~17_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~152_q\);

\bRegistradores|registrador~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~73_sumout\,
	asdata => \muxRtImedULA|saida_MUX[18]~17_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~120_q\);

\bRegistradores|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1080_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~152_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~120_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~56_q\,
	datac => \bRegistradores|ALT_INV_registrador~152_q\,
	datad => \bRegistradores|ALT_INV_registrador~120_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1080_combout\);

\muxRtImedULA|saida_MUX[18]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[18]~17_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1080_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1080_combout\,
	combout => \muxRtImedULA|saida_MUX[18]~17_combout\);

\ULA|saida[18]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[18]~19_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~73_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[18]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[18]~17_combout\,
	datac => \ULA|ALT_INV_Add0~73_sumout\,
	combout => \ULA|saida[18]~19_combout\);

\bRegistradores|registrador~1113\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1113_combout\ = (\bRegistradores|registrador~57_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~57_q\,
	combout => \bRegistradores|registrador~1113_combout\);

\ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1113_combout\)) ) + ( !\muxRtImedULA|saida_MUX[19]~18_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~74\ ))
-- \ULA|Add0~78\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1113_combout\)) ) + ( !\muxRtImedULA|saida_MUX[19]~18_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1113_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[19]~18_combout\,
	cin => \ULA|Add0~74\,
	sumout => \ULA|Add0~77_sumout\,
	cout => \ULA|Add0~78\);

\bRegistradores|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~77_sumout\,
	asdata => \muxRtImedULA|saida_MUX[19]~18_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~57_q\);

\bRegistradores|registrador~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~77_sumout\,
	asdata => \muxRtImedULA|saida_MUX[19]~18_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~153_q\);

\bRegistradores|registrador~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~77_sumout\,
	asdata => \muxRtImedULA|saida_MUX[19]~18_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~121_q\);

\bRegistradores|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1081_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~153_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~121_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~57_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~57_q\,
	datac => \bRegistradores|ALT_INV_registrador~153_q\,
	datad => \bRegistradores|ALT_INV_registrador~121_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1081_combout\);

\muxRtImedULA|saida_MUX[19]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[19]~18_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1081_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1081_combout\,
	combout => \muxRtImedULA|saida_MUX[19]~18_combout\);

\ULA|saida[19]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[19]~20_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~77_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[19]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[19]~18_combout\,
	datac => \ULA|ALT_INV_Add0~77_sumout\,
	combout => \ULA|saida[19]~20_combout\);

\bRegistradores|registrador~1114\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1114_combout\ = (\bRegistradores|registrador~58_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~58_q\,
	combout => \bRegistradores|registrador~1114_combout\);

\ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1114_combout\)) ) + ( !\muxRtImedULA|saida_MUX[20]~19_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~78\ ))
-- \ULA|Add0~82\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1114_combout\)) ) + ( !\muxRtImedULA|saida_MUX[20]~19_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1114_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[20]~19_combout\,
	cin => \ULA|Add0~78\,
	sumout => \ULA|Add0~81_sumout\,
	cout => \ULA|Add0~82\);

\bRegistradores|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~81_sumout\,
	asdata => \muxRtImedULA|saida_MUX[20]~19_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~58_q\);

\bRegistradores|registrador~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~81_sumout\,
	asdata => \muxRtImedULA|saida_MUX[20]~19_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~154_q\);

\bRegistradores|registrador~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~81_sumout\,
	asdata => \muxRtImedULA|saida_MUX[20]~19_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~122_q\);

\bRegistradores|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1082_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~154_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~122_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~58_q\,
	datac => \bRegistradores|ALT_INV_registrador~154_q\,
	datad => \bRegistradores|ALT_INV_registrador~122_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1082_combout\);

\muxRtImedULA|saida_MUX[20]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[20]~19_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1082_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1082_combout\,
	combout => \muxRtImedULA|saida_MUX[20]~19_combout\);

\ULA|saida[20]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[20]~21_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~81_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[20]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[20]~19_combout\,
	datac => \ULA|ALT_INV_Add0~81_sumout\,
	combout => \ULA|saida[20]~21_combout\);

\bRegistradores|registrador~1115\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1115_combout\ = (\bRegistradores|registrador~59_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~59_q\,
	combout => \bRegistradores|registrador~1115_combout\);

\ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1115_combout\)) ) + ( !\muxRtImedULA|saida_MUX[21]~20_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~82\ ))
-- \ULA|Add0~86\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1115_combout\)) ) + ( !\muxRtImedULA|saida_MUX[21]~20_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1115_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[21]~20_combout\,
	cin => \ULA|Add0~82\,
	sumout => \ULA|Add0~85_sumout\,
	cout => \ULA|Add0~86\);

\bRegistradores|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~85_sumout\,
	asdata => \muxRtImedULA|saida_MUX[21]~20_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~59_q\);

\bRegistradores|registrador~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~85_sumout\,
	asdata => \muxRtImedULA|saida_MUX[21]~20_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~155_q\);

\bRegistradores|registrador~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~85_sumout\,
	asdata => \muxRtImedULA|saida_MUX[21]~20_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~123_q\);

\bRegistradores|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1083_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~155_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~123_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~59_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~59_q\,
	datac => \bRegistradores|ALT_INV_registrador~155_q\,
	datad => \bRegistradores|ALT_INV_registrador~123_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1083_combout\);

\muxRtImedULA|saida_MUX[21]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[21]~20_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1083_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1083_combout\,
	combout => \muxRtImedULA|saida_MUX[21]~20_combout\);

\ULA|saida[21]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[21]~22_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~85_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[21]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[21]~20_combout\,
	datac => \ULA|ALT_INV_Add0~85_sumout\,
	combout => \ULA|saida[21]~22_combout\);

\bRegistradores|registrador~1116\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1116_combout\ = (\bRegistradores|registrador~60_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~60_q\,
	combout => \bRegistradores|registrador~1116_combout\);

\ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1116_combout\)) ) + ( !\muxRtImedULA|saida_MUX[22]~21_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~86\ ))
-- \ULA|Add0~90\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1116_combout\)) ) + ( !\muxRtImedULA|saida_MUX[22]~21_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1116_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[22]~21_combout\,
	cin => \ULA|Add0~86\,
	sumout => \ULA|Add0~89_sumout\,
	cout => \ULA|Add0~90\);

\bRegistradores|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~89_sumout\,
	asdata => \muxRtImedULA|saida_MUX[22]~21_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~60_q\);

\bRegistradores|registrador~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~89_sumout\,
	asdata => \muxRtImedULA|saida_MUX[22]~21_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~156_q\);

\bRegistradores|registrador~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~89_sumout\,
	asdata => \muxRtImedULA|saida_MUX[22]~21_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~124_q\);

\bRegistradores|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1084_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~156_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~124_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~60_q\,
	datac => \bRegistradores|ALT_INV_registrador~156_q\,
	datad => \bRegistradores|ALT_INV_registrador~124_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1084_combout\);

\muxRtImedULA|saida_MUX[22]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[22]~21_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1084_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1084_combout\,
	combout => \muxRtImedULA|saida_MUX[22]~21_combout\);

\ULA|saida[22]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[22]~23_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~89_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[22]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[22]~21_combout\,
	datac => \ULA|ALT_INV_Add0~89_sumout\,
	combout => \ULA|saida[22]~23_combout\);

\bRegistradores|registrador~1117\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1117_combout\ = (\bRegistradores|registrador~61_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~61_q\,
	combout => \bRegistradores|registrador~1117_combout\);

\ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1117_combout\)) ) + ( !\muxRtImedULA|saida_MUX[23]~22_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~90\ ))
-- \ULA|Add0~94\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1117_combout\)) ) + ( !\muxRtImedULA|saida_MUX[23]~22_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1117_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[23]~22_combout\,
	cin => \ULA|Add0~90\,
	sumout => \ULA|Add0~93_sumout\,
	cout => \ULA|Add0~94\);

\bRegistradores|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~93_sumout\,
	asdata => \muxRtImedULA|saida_MUX[23]~22_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~61_q\);

\bRegistradores|registrador~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~93_sumout\,
	asdata => \muxRtImedULA|saida_MUX[23]~22_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~157_q\);

\bRegistradores|registrador~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~93_sumout\,
	asdata => \muxRtImedULA|saida_MUX[23]~22_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~125_q\);

\bRegistradores|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1085_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~157_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~125_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~61_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~61_q\,
	datac => \bRegistradores|ALT_INV_registrador~157_q\,
	datad => \bRegistradores|ALT_INV_registrador~125_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1085_combout\);

\muxRtImedULA|saida_MUX[23]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[23]~22_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1085_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1085_combout\,
	combout => \muxRtImedULA|saida_MUX[23]~22_combout\);

\ULA|saida[23]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[23]~24_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~93_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[23]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[23]~22_combout\,
	datac => \ULA|ALT_INV_Add0~93_sumout\,
	combout => \ULA|saida[23]~24_combout\);

\bRegistradores|registrador~1118\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1118_combout\ = (\bRegistradores|registrador~62_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~62_q\,
	combout => \bRegistradores|registrador~1118_combout\);

\ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1118_combout\)) ) + ( !\muxRtImedULA|saida_MUX[24]~23_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~94\ ))
-- \ULA|Add0~98\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1118_combout\)) ) + ( !\muxRtImedULA|saida_MUX[24]~23_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1118_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[24]~23_combout\,
	cin => \ULA|Add0~94\,
	sumout => \ULA|Add0~97_sumout\,
	cout => \ULA|Add0~98\);

\bRegistradores|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~97_sumout\,
	asdata => \muxRtImedULA|saida_MUX[24]~23_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~62_q\);

\bRegistradores|registrador~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~97_sumout\,
	asdata => \muxRtImedULA|saida_MUX[24]~23_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~158_q\);

\bRegistradores|registrador~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~97_sumout\,
	asdata => \muxRtImedULA|saida_MUX[24]~23_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~126_q\);

\bRegistradores|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1086_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~158_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~126_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~62_q\,
	datac => \bRegistradores|ALT_INV_registrador~158_q\,
	datad => \bRegistradores|ALT_INV_registrador~126_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1086_combout\);

\muxRtImedULA|saida_MUX[24]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[24]~23_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1086_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1086_combout\,
	combout => \muxRtImedULA|saida_MUX[24]~23_combout\);

\ULA|saida[24]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[24]~25_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~97_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[24]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[24]~23_combout\,
	datac => \ULA|ALT_INV_Add0~97_sumout\,
	combout => \ULA|saida[24]~25_combout\);

\bRegistradores|registrador~1119\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1119_combout\ = (\bRegistradores|registrador~63_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~63_q\,
	combout => \bRegistradores|registrador~1119_combout\);

\ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1119_combout\)) ) + ( !\muxRtImedULA|saida_MUX[25]~24_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~98\ ))
-- \ULA|Add0~102\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1119_combout\)) ) + ( !\muxRtImedULA|saida_MUX[25]~24_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1119_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[25]~24_combout\,
	cin => \ULA|Add0~98\,
	sumout => \ULA|Add0~101_sumout\,
	cout => \ULA|Add0~102\);

\bRegistradores|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~101_sumout\,
	asdata => \muxRtImedULA|saida_MUX[25]~24_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~63_q\);

\bRegistradores|registrador~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~101_sumout\,
	asdata => \muxRtImedULA|saida_MUX[25]~24_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~159_q\);

\bRegistradores|registrador~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~101_sumout\,
	asdata => \muxRtImedULA|saida_MUX[25]~24_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~127_q\);

\bRegistradores|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1087_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~159_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~127_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~63_q\,
	datac => \bRegistradores|ALT_INV_registrador~159_q\,
	datad => \bRegistradores|ALT_INV_registrador~127_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1087_combout\);

\muxRtImedULA|saida_MUX[25]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[25]~24_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1087_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1087_combout\,
	combout => \muxRtImedULA|saida_MUX[25]~24_combout\);

\ULA|saida[25]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[25]~26_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~101_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[25]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[25]~24_combout\,
	datac => \ULA|ALT_INV_Add0~101_sumout\,
	combout => \ULA|saida[25]~26_combout\);

\bRegistradores|registrador~1120\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1120_combout\ = (\bRegistradores|registrador~64_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~64_q\,
	combout => \bRegistradores|registrador~1120_combout\);

\ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~105_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1120_combout\)) ) + ( !\muxRtImedULA|saida_MUX[26]~25_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~102\ ))
-- \ULA|Add0~106\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1120_combout\)) ) + ( !\muxRtImedULA|saida_MUX[26]~25_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~102\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1120_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[26]~25_combout\,
	cin => \ULA|Add0~102\,
	sumout => \ULA|Add0~105_sumout\,
	cout => \ULA|Add0~106\);

\bRegistradores|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~105_sumout\,
	asdata => \muxRtImedULA|saida_MUX[26]~25_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~64_q\);

\bRegistradores|registrador~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~105_sumout\,
	asdata => \muxRtImedULA|saida_MUX[26]~25_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~160_q\);

\bRegistradores|registrador~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~105_sumout\,
	asdata => \muxRtImedULA|saida_MUX[26]~25_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~128_q\);

\bRegistradores|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1088_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~160_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~128_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~64_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~64_q\,
	datac => \bRegistradores|ALT_INV_registrador~160_q\,
	datad => \bRegistradores|ALT_INV_registrador~128_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1088_combout\);

\muxRtImedULA|saida_MUX[26]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[26]~25_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1088_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1088_combout\,
	combout => \muxRtImedULA|saida_MUX[26]~25_combout\);

\ULA|saida[26]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[26]~27_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~105_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[26]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[26]~25_combout\,
	datac => \ULA|ALT_INV_Add0~105_sumout\,
	combout => \ULA|saida[26]~27_combout\);

\bRegistradores|registrador~1121\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1121_combout\ = (\bRegistradores|registrador~65_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~65_q\,
	combout => \bRegistradores|registrador~1121_combout\);

\ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1121_combout\)) ) + ( !\muxRtImedULA|saida_MUX[27]~26_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~106\ ))
-- \ULA|Add0~110\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1121_combout\)) ) + ( !\muxRtImedULA|saida_MUX[27]~26_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~106\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1121_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[27]~26_combout\,
	cin => \ULA|Add0~106\,
	sumout => \ULA|Add0~109_sumout\,
	cout => \ULA|Add0~110\);

\bRegistradores|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~109_sumout\,
	asdata => \muxRtImedULA|saida_MUX[27]~26_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~65_q\);

\bRegistradores|registrador~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~109_sumout\,
	asdata => \muxRtImedULA|saida_MUX[27]~26_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~161_q\);

\bRegistradores|registrador~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~109_sumout\,
	asdata => \muxRtImedULA|saida_MUX[27]~26_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~129_q\);

\bRegistradores|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1089_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~161_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~129_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~65_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~65_q\,
	datac => \bRegistradores|ALT_INV_registrador~161_q\,
	datad => \bRegistradores|ALT_INV_registrador~129_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1089_combout\);

\muxRtImedULA|saida_MUX[27]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[27]~26_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1089_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1089_combout\,
	combout => \muxRtImedULA|saida_MUX[27]~26_combout\);

\ULA|saida[27]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[27]~28_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~109_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[27]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[27]~26_combout\,
	datac => \ULA|ALT_INV_Add0~109_sumout\,
	combout => \ULA|saida[27]~28_combout\);

\bRegistradores|registrador~1122\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1122_combout\ = (\bRegistradores|registrador~66_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~66_q\,
	combout => \bRegistradores|registrador~1122_combout\);

\ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~113_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1122_combout\)) ) + ( !\muxRtImedULA|saida_MUX[28]~27_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~110\ ))
-- \ULA|Add0~114\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1122_combout\)) ) + ( !\muxRtImedULA|saida_MUX[28]~27_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~110\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1122_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[28]~27_combout\,
	cin => \ULA|Add0~110\,
	sumout => \ULA|Add0~113_sumout\,
	cout => \ULA|Add0~114\);

\bRegistradores|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~113_sumout\,
	asdata => \muxRtImedULA|saida_MUX[28]~27_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~66_q\);

\bRegistradores|registrador~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~113_sumout\,
	asdata => \muxRtImedULA|saida_MUX[28]~27_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~162_q\);

\bRegistradores|registrador~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~113_sumout\,
	asdata => \muxRtImedULA|saida_MUX[28]~27_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~130_q\);

\bRegistradores|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1090_combout\ = ( \rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~162_q\ ) ) ) # ( !\rom|memROM~4_combout\ & ( \rom|memROM~6_combout\ & ( \bRegistradores|registrador~130_q\ ) ) ) # ( 
-- !\rom|memROM~4_combout\ & ( !\rom|memROM~6_combout\ & ( \bRegistradores|registrador~66_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bRegistradores|ALT_INV_registrador~66_q\,
	datac => \bRegistradores|ALT_INV_registrador~162_q\,
	datad => \bRegistradores|ALT_INV_registrador~130_q\,
	datae => \rom|ALT_INV_memROM~4_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	combout => \bRegistradores|registrador~1090_combout\);

\muxRtImedULA|saida_MUX[28]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[28]~27_combout\ = (!\UC|tipo_i~0_combout\ & (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1090_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \bRegistradores|ALT_INV_registrador~1090_combout\,
	combout => \muxRtImedULA|saida_MUX[28]~27_combout\);

\ULA|saida[28]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[28]~29_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~113_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[28]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[28]~27_combout\,
	datac => \ULA|ALT_INV_Add0~113_sumout\,
	combout => \ULA|saida[28]~29_combout\);

\bRegistradores|registrador~1123\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1123_combout\ = (\bRegistradores|registrador~67_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~67_q\,
	combout => \bRegistradores|registrador~1123_combout\);

\ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1123_combout\)) ) + ( !\muxRtImedULA|saida_MUX[29]~28_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~114\ ))
-- \ULA|Add0~118\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1123_combout\)) ) + ( !\muxRtImedULA|saida_MUX[29]~28_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~114\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1123_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[29]~28_combout\,
	cin => \ULA|Add0~114\,
	sumout => \ULA|Add0~117_sumout\,
	cout => \ULA|Add0~118\);

\bRegistradores|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~117_sumout\,
	asdata => \muxRtImedULA|saida_MUX[29]~28_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~67_q\);

\bRegistradores|registrador~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~117_sumout\,
	asdata => \muxRtImedULA|saida_MUX[29]~28_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~163_q\);

\bRegistradores|registrador~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~117_sumout\,
	asdata => \muxRtImedULA|saida_MUX[29]~28_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~131_q\);

\bRegistradores|saidaB[29]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[29]~0_combout\ = ( \rom|memROM~6_combout\ & ( \bRegistradores|Equal0~0_combout\ & ( (!\rom|memROM~4_combout\ & ((\bRegistradores|registrador~131_q\))) # (\rom|memROM~4_combout\ & (\bRegistradores|registrador~163_q\)) ) ) ) # ( 
-- !\rom|memROM~6_combout\ & ( \bRegistradores|Equal0~0_combout\ & ( (\bRegistradores|registrador~67_q\ & !\rom|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~67_q\,
	datab => \bRegistradores|ALT_INV_registrador~163_q\,
	datac => \bRegistradores|ALT_INV_registrador~131_q\,
	datad => \rom|ALT_INV_memROM~4_combout\,
	datae => \rom|ALT_INV_memROM~6_combout\,
	dataf => \bRegistradores|ALT_INV_Equal0~0_combout\,
	combout => \bRegistradores|saidaB[29]~0_combout\);

\muxRtImedULA|saida_MUX[29]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[29]~28_combout\ = (!\UC|tipo_i~0_combout\ & \bRegistradores|saidaB[29]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_saidaB[29]~0_combout\,
	combout => \muxRtImedULA|saida_MUX[29]~28_combout\);

\ULA|saida[29]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[29]~30_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~117_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[29]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[29]~28_combout\,
	datac => \ULA|ALT_INV_Add0~117_sumout\,
	combout => \ULA|saida[29]~30_combout\);

\bRegistradores|registrador~1124\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1124_combout\ = (\bRegistradores|registrador~68_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~68_q\,
	combout => \bRegistradores|registrador~1124_combout\);

\ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~121_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1124_combout\)) ) + ( !\muxRtImedULA|saida_MUX[30]~29_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~118\ ))
-- \ULA|Add0~122\ = CARRY(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1124_combout\)) ) + ( !\muxRtImedULA|saida_MUX[30]~29_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( \ULA|Add0~118\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1124_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[30]~29_combout\,
	cin => \ULA|Add0~118\,
	sumout => \ULA|Add0~121_sumout\,
	cout => \ULA|Add0~122\);

\bRegistradores|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~121_sumout\,
	asdata => \muxRtImedULA|saida_MUX[30]~29_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~68_q\);

\bRegistradores|registrador~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~121_sumout\,
	asdata => \muxRtImedULA|saida_MUX[30]~29_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~164_q\);

\bRegistradores|registrador~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~121_sumout\,
	asdata => \muxRtImedULA|saida_MUX[30]~29_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~132_q\);

\bRegistradores|saidaB[30]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[30]~1_combout\ = ( \rom|memROM~6_combout\ & ( \bRegistradores|Equal0~0_combout\ & ( (!\rom|memROM~4_combout\ & ((\bRegistradores|registrador~132_q\))) # (\rom|memROM~4_combout\ & (\bRegistradores|registrador~164_q\)) ) ) ) # ( 
-- !\rom|memROM~6_combout\ & ( \bRegistradores|Equal0~0_combout\ & ( (\bRegistradores|registrador~68_q\ & !\rom|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~68_q\,
	datab => \bRegistradores|ALT_INV_registrador~164_q\,
	datac => \bRegistradores|ALT_INV_registrador~132_q\,
	datad => \rom|ALT_INV_memROM~4_combout\,
	datae => \rom|ALT_INV_memROM~6_combout\,
	dataf => \bRegistradores|ALT_INV_Equal0~0_combout\,
	combout => \bRegistradores|saidaB[30]~1_combout\);

\muxRtImedULA|saida_MUX[30]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[30]~29_combout\ = (!\UC|tipo_i~0_combout\ & \bRegistradores|saidaB[30]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_saidaB[30]~1_combout\,
	combout => \muxRtImedULA|saida_MUX[30]~29_combout\);

\ULA|saida[30]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[30]~31_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~121_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[30]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[30]~29_combout\,
	datac => \ULA|ALT_INV_Add0~121_sumout\,
	combout => \ULA|saida[30]~31_combout\);

\bRegistradores|registrador~1125\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1125_combout\ = (\bRegistradores|registrador~69_q\ & ((!\rom|memROM~3_combout\) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \bRegistradores|ALT_INV_registrador~69_q\,
	combout => \bRegistradores|registrador~1125_combout\);

\ULA|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_sumout\ = SUM(( (!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & \bRegistradores|registrador~1125_combout\)) ) + ( !\muxRtImedULA|saida_MUX[31]~30_combout\ $ (((!\PC|DOUT\(7) & (\rom|memROM~3_combout\ & !\UC|Equal8~0_combout\)))) ) + ( 
-- \ULA|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \UC|ALT_INV_Equal8~0_combout\,
	datad => \bRegistradores|ALT_INV_registrador~1125_combout\,
	dataf => \muxRtImedULA|ALT_INV_saida_MUX[31]~30_combout\,
	cin => \ULA|Add0~122\,
	sumout => \ULA|Add0~125_sumout\);

\bRegistradores|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~125_sumout\,
	asdata => \muxRtImedULA|saida_MUX[31]~30_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~69_q\);

\bRegistradores|registrador~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~125_sumout\,
	asdata => \muxRtImedULA|saida_MUX[31]~30_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~165_q\);

\bRegistradores|registrador~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~125_sumout\,
	asdata => \muxRtImedULA|saida_MUX[31]~30_combout\,
	sclr => \UC|Equal1~0_combout\,
	sload => \UC|controleULA~0_combout\,
	ena => \bRegistradores|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~133_q\);

\bRegistradores|saidaB[31]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[31]~2_combout\ = ( \rom|memROM~6_combout\ & ( \bRegistradores|Equal0~0_combout\ & ( (!\rom|memROM~4_combout\ & ((\bRegistradores|registrador~133_q\))) # (\rom|memROM~4_combout\ & (\bRegistradores|registrador~165_q\)) ) ) ) # ( 
-- !\rom|memROM~6_combout\ & ( \bRegistradores|Equal0~0_combout\ & ( (\bRegistradores|registrador~69_q\ & !\rom|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~69_q\,
	datab => \bRegistradores|ALT_INV_registrador~165_q\,
	datac => \bRegistradores|ALT_INV_registrador~133_q\,
	datad => \rom|ALT_INV_memROM~4_combout\,
	datae => \rom|ALT_INV_memROM~6_combout\,
	dataf => \bRegistradores|ALT_INV_Equal0~0_combout\,
	combout => \bRegistradores|saidaB[31]~2_combout\);

\muxRtImedULA|saida_MUX[31]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxRtImedULA|saida_MUX[31]~30_combout\ = (!\UC|tipo_i~0_combout\ & \bRegistradores|saidaB[31]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_tipo_i~0_combout\,
	datab => \bRegistradores|ALT_INV_saidaB[31]~2_combout\,
	combout => \muxRtImedULA|saida_MUX[31]~30_combout\);

\ULA|saida[31]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[31]~32_combout\ = (!\UC|controleULA~0_combout\ & ((\ULA|Add0~125_sumout\))) # (\UC|controleULA~0_combout\ & (\muxRtImedULA|saida_MUX[31]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \muxRtImedULA|ALT_INV_saida_MUX[31]~30_combout\,
	datac => \ULA|ALT_INV_Add0~125_sumout\,
	combout => \ULA|saida[31]~32_combout\);

\somador|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~25_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \somador|Add0~22\ ))
-- \somador|Add0~26\ = CARRY(( \PC|DOUT\(8) ) + ( GND ) + ( \somador|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \somador|Add0~22\,
	sumout => \somador|Add0~25_sumout\,
	cout => \somador|Add0~26\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\somador|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~29_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \somador|Add0~26\ ))
-- \somador|Add0~30\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \somador|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(9),
	cin => \somador|Add0~26\,
	sumout => \somador|Add0~29_sumout\,
	cout => \somador|Add0~30\);

\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

\somador|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~33_sumout\ = SUM(( \PC|DOUT\(10) ) + ( GND ) + ( \somador|Add0~30\ ))
-- \somador|Add0~34\ = CARRY(( \PC|DOUT\(10) ) + ( GND ) + ( \somador|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(10),
	cin => \somador|Add0~30\,
	sumout => \somador|Add0~33_sumout\,
	cout => \somador|Add0~34\);

\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

\somador|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~37_sumout\ = SUM(( \PC|DOUT\(11) ) + ( GND ) + ( \somador|Add0~34\ ))
-- \somador|Add0~38\ = CARRY(( \PC|DOUT\(11) ) + ( GND ) + ( \somador|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(11),
	cin => \somador|Add0~34\,
	sumout => \somador|Add0~37_sumout\,
	cout => \somador|Add0~38\);

\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

\somador|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~41_sumout\ = SUM(( \PC|DOUT\(12) ) + ( GND ) + ( \somador|Add0~38\ ))
-- \somador|Add0~42\ = CARRY(( \PC|DOUT\(12) ) + ( GND ) + ( \somador|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(12),
	cin => \somador|Add0~38\,
	sumout => \somador|Add0~41_sumout\,
	cout => \somador|Add0~42\);

\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

\somador|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~45_sumout\ = SUM(( \PC|DOUT\(13) ) + ( GND ) + ( \somador|Add0~42\ ))
-- \somador|Add0~46\ = CARRY(( \PC|DOUT\(13) ) + ( GND ) + ( \somador|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(13),
	cin => \somador|Add0~42\,
	sumout => \somador|Add0~45_sumout\,
	cout => \somador|Add0~46\);

\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

\somador|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~49_sumout\ = SUM(( \PC|DOUT\(14) ) + ( GND ) + ( \somador|Add0~46\ ))
-- \somador|Add0~50\ = CARRY(( \PC|DOUT\(14) ) + ( GND ) + ( \somador|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(14),
	cin => \somador|Add0~46\,
	sumout => \somador|Add0~49_sumout\,
	cout => \somador|Add0~50\);

\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

\somador|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~53_sumout\ = SUM(( \PC|DOUT\(15) ) + ( GND ) + ( \somador|Add0~50\ ))
-- \somador|Add0~54\ = CARRY(( \PC|DOUT\(15) ) + ( GND ) + ( \somador|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(15),
	cin => \somador|Add0~50\,
	sumout => \somador|Add0~53_sumout\,
	cout => \somador|Add0~54\);

\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

\somador|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~57_sumout\ = SUM(( \PC|DOUT\(16) ) + ( GND ) + ( \somador|Add0~54\ ))
-- \somador|Add0~58\ = CARRY(( \PC|DOUT\(16) ) + ( GND ) + ( \somador|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(16),
	cin => \somador|Add0~54\,
	sumout => \somador|Add0~57_sumout\,
	cout => \somador|Add0~58\);

\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

\somador|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~61_sumout\ = SUM(( \PC|DOUT\(17) ) + ( GND ) + ( \somador|Add0~58\ ))
-- \somador|Add0~62\ = CARRY(( \PC|DOUT\(17) ) + ( GND ) + ( \somador|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(17),
	cin => \somador|Add0~58\,
	sumout => \somador|Add0~61_sumout\,
	cout => \somador|Add0~62\);

\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

\somador|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~65_sumout\ = SUM(( \PC|DOUT\(18) ) + ( GND ) + ( \somador|Add0~62\ ))
-- \somador|Add0~66\ = CARRY(( \PC|DOUT\(18) ) + ( GND ) + ( \somador|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(18),
	cin => \somador|Add0~62\,
	sumout => \somador|Add0~65_sumout\,
	cout => \somador|Add0~66\);

\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

\somador|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~69_sumout\ = SUM(( \PC|DOUT\(19) ) + ( GND ) + ( \somador|Add0~66\ ))
-- \somador|Add0~70\ = CARRY(( \PC|DOUT\(19) ) + ( GND ) + ( \somador|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(19),
	cin => \somador|Add0~66\,
	sumout => \somador|Add0~69_sumout\,
	cout => \somador|Add0~70\);

\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

\somador|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~73_sumout\ = SUM(( \PC|DOUT\(20) ) + ( GND ) + ( \somador|Add0~70\ ))
-- \somador|Add0~74\ = CARRY(( \PC|DOUT\(20) ) + ( GND ) + ( \somador|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(20),
	cin => \somador|Add0~70\,
	sumout => \somador|Add0~73_sumout\,
	cout => \somador|Add0~74\);

\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

\somador|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~77_sumout\ = SUM(( \PC|DOUT\(21) ) + ( GND ) + ( \somador|Add0~74\ ))
-- \somador|Add0~78\ = CARRY(( \PC|DOUT\(21) ) + ( GND ) + ( \somador|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(21),
	cin => \somador|Add0~74\,
	sumout => \somador|Add0~77_sumout\,
	cout => \somador|Add0~78\);

\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

\somador|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~81_sumout\ = SUM(( \PC|DOUT\(22) ) + ( GND ) + ( \somador|Add0~78\ ))
-- \somador|Add0~82\ = CARRY(( \PC|DOUT\(22) ) + ( GND ) + ( \somador|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(22),
	cin => \somador|Add0~78\,
	sumout => \somador|Add0~81_sumout\,
	cout => \somador|Add0~82\);

\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

\somador|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~85_sumout\ = SUM(( \PC|DOUT\(23) ) + ( GND ) + ( \somador|Add0~82\ ))
-- \somador|Add0~86\ = CARRY(( \PC|DOUT\(23) ) + ( GND ) + ( \somador|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(23),
	cin => \somador|Add0~82\,
	sumout => \somador|Add0~85_sumout\,
	cout => \somador|Add0~86\);

\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

\somador|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~89_sumout\ = SUM(( \PC|DOUT\(24) ) + ( GND ) + ( \somador|Add0~86\ ))
-- \somador|Add0~90\ = CARRY(( \PC|DOUT\(24) ) + ( GND ) + ( \somador|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(24),
	cin => \somador|Add0~86\,
	sumout => \somador|Add0~89_sumout\,
	cout => \somador|Add0~90\);

\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

\somador|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~93_sumout\ = SUM(( \PC|DOUT\(25) ) + ( GND ) + ( \somador|Add0~90\ ))
-- \somador|Add0~94\ = CARRY(( \PC|DOUT\(25) ) + ( GND ) + ( \somador|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(25),
	cin => \somador|Add0~90\,
	sumout => \somador|Add0~93_sumout\,
	cout => \somador|Add0~94\);

\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

\somador|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~97_sumout\ = SUM(( \PC|DOUT\(26) ) + ( GND ) + ( \somador|Add0~94\ ))
-- \somador|Add0~98\ = CARRY(( \PC|DOUT\(26) ) + ( GND ) + ( \somador|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(26),
	cin => \somador|Add0~94\,
	sumout => \somador|Add0~97_sumout\,
	cout => \somador|Add0~98\);

\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

\somador|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~101_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \somador|Add0~98\ ))
-- \somador|Add0~102\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \somador|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(27),
	cin => \somador|Add0~98\,
	sumout => \somador|Add0~101_sumout\,
	cout => \somador|Add0~102\);

\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

\somador|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~105_sumout\ = SUM(( \PC|DOUT\(28) ) + ( GND ) + ( \somador|Add0~102\ ))
-- \somador|Add0~106\ = CARRY(( \PC|DOUT\(28) ) + ( GND ) + ( \somador|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(28),
	cin => \somador|Add0~102\,
	sumout => \somador|Add0~105_sumout\,
	cout => \somador|Add0~106\);

\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

\somador|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~109_sumout\ = SUM(( \PC|DOUT\(29) ) + ( GND ) + ( \somador|Add0~106\ ))
-- \somador|Add0~110\ = CARRY(( \PC|DOUT\(29) ) + ( GND ) + ( \somador|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(29),
	cin => \somador|Add0~106\,
	sumout => \somador|Add0~109_sumout\,
	cout => \somador|Add0~110\);

\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

\somador|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~113_sumout\ = SUM(( \PC|DOUT\(30) ) + ( GND ) + ( \somador|Add0~110\ ))
-- \somador|Add0~114\ = CARRY(( \PC|DOUT\(30) ) + ( GND ) + ( \somador|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(30),
	cin => \somador|Add0~110\,
	sumout => \somador|Add0~113_sumout\,
	cout => \somador|Add0~114\);

\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

\somador|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~117_sumout\ = SUM(( \PC|DOUT\(31) ) + ( GND ) + ( \somador|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(31),
	cin => \somador|Add0~114\,
	sumout => \somador|Add0~117_sumout\);

\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~117_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

\bRegistradores|saidaB[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[0]~3_combout\ = (!\bRegistradores|registrador~1062_combout\ & \bRegistradores|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~1062_combout\,
	datab => \bRegistradores|ALT_INV_Equal0~0_combout\,
	combout => \bRegistradores|saidaB[0]~3_combout\);

\bRegistradores|saidaB[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[1]~4_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1063_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1063_combout\,
	combout => \bRegistradores|saidaB[1]~4_combout\);

\bRegistradores|saidaB[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[2]~5_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1064_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1064_combout\,
	combout => \bRegistradores|saidaB[2]~5_combout\);

\bRegistradores|saidaB[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[3]~6_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1065_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1065_combout\,
	combout => \bRegistradores|saidaB[3]~6_combout\);

\bRegistradores|saidaB[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[4]~7_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1066_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1066_combout\,
	combout => \bRegistradores|saidaB[4]~7_combout\);

\bRegistradores|saidaB[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[5]~8_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1067_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1067_combout\,
	combout => \bRegistradores|saidaB[5]~8_combout\);

\bRegistradores|saidaB[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[6]~9_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1068_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1068_combout\,
	combout => \bRegistradores|saidaB[6]~9_combout\);

\bRegistradores|saidaB[7]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[7]~10_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1069_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1069_combout\,
	combout => \bRegistradores|saidaB[7]~10_combout\);

\bRegistradores|saidaB[8]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[8]~11_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1070_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1070_combout\,
	combout => \bRegistradores|saidaB[8]~11_combout\);

\bRegistradores|saidaB[9]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[9]~12_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1071_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1071_combout\,
	combout => \bRegistradores|saidaB[9]~12_combout\);

\bRegistradores|saidaB[10]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[10]~13_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1072_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1072_combout\,
	combout => \bRegistradores|saidaB[10]~13_combout\);

\bRegistradores|saidaB[11]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[11]~14_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1073_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1073_combout\,
	combout => \bRegistradores|saidaB[11]~14_combout\);

\bRegistradores|saidaB[12]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[12]~15_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1074_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1074_combout\,
	combout => \bRegistradores|saidaB[12]~15_combout\);

\bRegistradores|saidaB[13]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[13]~16_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1075_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1075_combout\,
	combout => \bRegistradores|saidaB[13]~16_combout\);

\bRegistradores|saidaB[14]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[14]~17_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1076_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1076_combout\,
	combout => \bRegistradores|saidaB[14]~17_combout\);

\bRegistradores|saidaB[15]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[15]~18_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1077_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1077_combout\,
	combout => \bRegistradores|saidaB[15]~18_combout\);

\bRegistradores|saidaB[16]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[16]~19_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1078_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1078_combout\,
	combout => \bRegistradores|saidaB[16]~19_combout\);

\bRegistradores|saidaB[17]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[17]~20_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1079_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1079_combout\,
	combout => \bRegistradores|saidaB[17]~20_combout\);

\bRegistradores|saidaB[18]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[18]~21_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1080_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1080_combout\,
	combout => \bRegistradores|saidaB[18]~21_combout\);

\bRegistradores|saidaB[19]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[19]~22_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1081_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1081_combout\,
	combout => \bRegistradores|saidaB[19]~22_combout\);

\bRegistradores|saidaB[20]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[20]~23_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1082_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1082_combout\,
	combout => \bRegistradores|saidaB[20]~23_combout\);

\bRegistradores|saidaB[21]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[21]~24_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1083_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1083_combout\,
	combout => \bRegistradores|saidaB[21]~24_combout\);

\bRegistradores|saidaB[22]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[22]~25_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1084_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1084_combout\,
	combout => \bRegistradores|saidaB[22]~25_combout\);

\bRegistradores|saidaB[23]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[23]~26_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1085_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1085_combout\,
	combout => \bRegistradores|saidaB[23]~26_combout\);

\bRegistradores|saidaB[24]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[24]~27_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1086_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1086_combout\,
	combout => \bRegistradores|saidaB[24]~27_combout\);

\bRegistradores|saidaB[25]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[25]~28_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1087_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1087_combout\,
	combout => \bRegistradores|saidaB[25]~28_combout\);

\bRegistradores|saidaB[26]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[26]~29_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1088_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1088_combout\,
	combout => \bRegistradores|saidaB[26]~29_combout\);

\bRegistradores|saidaB[27]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[27]~30_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1089_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1089_combout\,
	combout => \bRegistradores|saidaB[27]~30_combout\);

\bRegistradores|saidaB[28]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[28]~31_combout\ = (\bRegistradores|Equal0~0_combout\ & \bRegistradores|registrador~1090_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_Equal0~0_combout\,
	datab => \bRegistradores|ALT_INV_registrador~1090_combout\,
	combout => \bRegistradores|saidaB[28]~31_combout\);

ww_addrOUT(0) <= \addrOUT[0]~output_o\;

ww_addrOUT(1) <= \addrOUT[1]~output_o\;

ww_addrOUT(2) <= \addrOUT[2]~output_o\;

ww_addrOUT(3) <= \addrOUT[3]~output_o\;

ww_addrOUT(4) <= \addrOUT[4]~output_o\;

ww_addrOUT(5) <= \addrOUT[5]~output_o\;

ww_addrOUT(6) <= \addrOUT[6]~output_o\;

ww_addrOUT(7) <= \addrOUT[7]~output_o\;

ww_addrOUT(8) <= \addrOUT[8]~output_o\;

ww_addrOUT(9) <= \addrOUT[9]~output_o\;

ww_addrOUT(10) <= \addrOUT[10]~output_o\;

ww_addrOUT(11) <= \addrOUT[11]~output_o\;

ww_addrOUT(12) <= \addrOUT[12]~output_o\;

ww_addrOUT(13) <= \addrOUT[13]~output_o\;

ww_addrOUT(14) <= \addrOUT[14]~output_o\;

ww_addrOUT(15) <= \addrOUT[15]~output_o\;

ww_addrOUT(16) <= \addrOUT[16]~output_o\;

ww_addrOUT(17) <= \addrOUT[17]~output_o\;

ww_addrOUT(18) <= \addrOUT[18]~output_o\;

ww_addrOUT(19) <= \addrOUT[19]~output_o\;

ww_addrOUT(20) <= \addrOUT[20]~output_o\;

ww_addrOUT(21) <= \addrOUT[21]~output_o\;

ww_addrOUT(22) <= \addrOUT[22]~output_o\;

ww_addrOUT(23) <= \addrOUT[23]~output_o\;

ww_addrOUT(24) <= \addrOUT[24]~output_o\;

ww_addrOUT(25) <= \addrOUT[25]~output_o\;

ww_addrOUT(26) <= \addrOUT[26]~output_o\;

ww_addrOUT(27) <= \addrOUT[27]~output_o\;

ww_addrOUT(28) <= \addrOUT[28]~output_o\;

ww_addrOUT(29) <= \addrOUT[29]~output_o\;

ww_addrOUT(30) <= \addrOUT[30]~output_o\;

ww_addrOUT(31) <= \addrOUT[31]~output_o\;

ww_countPC(0) <= \countPC[0]~output_o\;

ww_countPC(1) <= \countPC[1]~output_o\;

ww_countPC(2) <= \countPC[2]~output_o\;

ww_countPC(3) <= \countPC[3]~output_o\;

ww_countPC(4) <= \countPC[4]~output_o\;

ww_countPC(5) <= \countPC[5]~output_o\;

ww_countPC(6) <= \countPC[6]~output_o\;

ww_countPC(7) <= \countPC[7]~output_o\;

ww_countPC(8) <= \countPC[8]~output_o\;

ww_countPC(9) <= \countPC[9]~output_o\;

ww_countPC(10) <= \countPC[10]~output_o\;

ww_countPC(11) <= \countPC[11]~output_o\;

ww_countPC(12) <= \countPC[12]~output_o\;

ww_countPC(13) <= \countPC[13]~output_o\;

ww_countPC(14) <= \countPC[14]~output_o\;

ww_countPC(15) <= \countPC[15]~output_o\;

ww_countPC(16) <= \countPC[16]~output_o\;

ww_countPC(17) <= \countPC[17]~output_o\;

ww_countPC(18) <= \countPC[18]~output_o\;

ww_countPC(19) <= \countPC[19]~output_o\;

ww_countPC(20) <= \countPC[20]~output_o\;

ww_countPC(21) <= \countPC[21]~output_o\;

ww_countPC(22) <= \countPC[22]~output_o\;

ww_countPC(23) <= \countPC[23]~output_o\;

ww_countPC(24) <= \countPC[24]~output_o\;

ww_countPC(25) <= \countPC[25]~output_o\;

ww_countPC(26) <= \countPC[26]~output_o\;

ww_countPC(27) <= \countPC[27]~output_o\;

ww_countPC(28) <= \countPC[28]~output_o\;

ww_countPC(29) <= \countPC[29]~output_o\;

ww_countPC(30) <= \countPC[30]~output_o\;

ww_countPC(31) <= \countPC[31]~output_o\;

ww_dataRead(0) <= \dataRead[0]~output_o\;

ww_dataRead(1) <= \dataRead[1]~output_o\;

ww_dataRead(2) <= \dataRead[2]~output_o\;

ww_dataRead(3) <= \dataRead[3]~output_o\;

ww_dataRead(4) <= \dataRead[4]~output_o\;

ww_dataRead(5) <= \dataRead[5]~output_o\;

ww_dataRead(6) <= \dataRead[6]~output_o\;

ww_dataRead(7) <= \dataRead[7]~output_o\;

ww_dataRead(8) <= \dataRead[8]~output_o\;

ww_dataRead(9) <= \dataRead[9]~output_o\;

ww_dataRead(10) <= \dataRead[10]~output_o\;

ww_dataRead(11) <= \dataRead[11]~output_o\;

ww_dataRead(12) <= \dataRead[12]~output_o\;

ww_dataRead(13) <= \dataRead[13]~output_o\;

ww_dataRead(14) <= \dataRead[14]~output_o\;

ww_dataRead(15) <= \dataRead[15]~output_o\;

ww_dataRead(16) <= \dataRead[16]~output_o\;

ww_dataRead(17) <= \dataRead[17]~output_o\;

ww_dataRead(18) <= \dataRead[18]~output_o\;

ww_dataRead(19) <= \dataRead[19]~output_o\;

ww_dataRead(20) <= \dataRead[20]~output_o\;

ww_dataRead(21) <= \dataRead[21]~output_o\;

ww_dataRead(22) <= \dataRead[22]~output_o\;

ww_dataRead(23) <= \dataRead[23]~output_o\;

ww_dataRead(24) <= \dataRead[24]~output_o\;

ww_dataRead(25) <= \dataRead[25]~output_o\;

ww_dataRead(26) <= \dataRead[26]~output_o\;

ww_dataRead(27) <= \dataRead[27]~output_o\;

ww_dataRead(28) <= \dataRead[28]~output_o\;

ww_dataRead(29) <= \dataRead[29]~output_o\;

ww_dataRead(30) <= \dataRead[30]~output_o\;

ww_dataRead(31) <= \dataRead[31]~output_o\;

ww_dataWrite(0) <= \dataWrite[0]~output_o\;

ww_dataWrite(1) <= \dataWrite[1]~output_o\;

ww_dataWrite(2) <= \dataWrite[2]~output_o\;

ww_dataWrite(3) <= \dataWrite[3]~output_o\;

ww_dataWrite(4) <= \dataWrite[4]~output_o\;

ww_dataWrite(5) <= \dataWrite[5]~output_o\;

ww_dataWrite(6) <= \dataWrite[6]~output_o\;

ww_dataWrite(7) <= \dataWrite[7]~output_o\;

ww_dataWrite(8) <= \dataWrite[8]~output_o\;

ww_dataWrite(9) <= \dataWrite[9]~output_o\;

ww_dataWrite(10) <= \dataWrite[10]~output_o\;

ww_dataWrite(11) <= \dataWrite[11]~output_o\;

ww_dataWrite(12) <= \dataWrite[12]~output_o\;

ww_dataWrite(13) <= \dataWrite[13]~output_o\;

ww_dataWrite(14) <= \dataWrite[14]~output_o\;

ww_dataWrite(15) <= \dataWrite[15]~output_o\;

ww_dataWrite(16) <= \dataWrite[16]~output_o\;

ww_dataWrite(17) <= \dataWrite[17]~output_o\;

ww_dataWrite(18) <= \dataWrite[18]~output_o\;

ww_dataWrite(19) <= \dataWrite[19]~output_o\;

ww_dataWrite(20) <= \dataWrite[20]~output_o\;

ww_dataWrite(21) <= \dataWrite[21]~output_o\;

ww_dataWrite(22) <= \dataWrite[22]~output_o\;

ww_dataWrite(23) <= \dataWrite[23]~output_o\;

ww_dataWrite(24) <= \dataWrite[24]~output_o\;

ww_dataWrite(25) <= \dataWrite[25]~output_o\;

ww_dataWrite(26) <= \dataWrite[26]~output_o\;

ww_dataWrite(27) <= \dataWrite[27]~output_o\;

ww_dataWrite(28) <= \dataWrite[28]~output_o\;

ww_dataWrite(29) <= \dataWrite[29]~output_o\;

ww_dataWrite(30) <= \dataWrite[30]~output_o\;

ww_dataWrite(31) <= \dataWrite[31]~output_o\;
END structure;


