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

-- DATE "05/06/2021 23:58:57"

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
	dataOUT : OUT std_logic_vector(31 DOWNTO 0);
	countPC : OUT std_logic_vector(31 DOWNTO 0)
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
SIGNAL ww_dataOUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_countPC : std_logic_vector(31 DOWNTO 0);
SIGNAL \dataOUT[0]~output_o\ : std_logic;
SIGNAL \dataOUT[1]~output_o\ : std_logic;
SIGNAL \dataOUT[2]~output_o\ : std_logic;
SIGNAL \dataOUT[3]~output_o\ : std_logic;
SIGNAL \dataOUT[4]~output_o\ : std_logic;
SIGNAL \dataOUT[5]~output_o\ : std_logic;
SIGNAL \dataOUT[6]~output_o\ : std_logic;
SIGNAL \dataOUT[7]~output_o\ : std_logic;
SIGNAL \dataOUT[8]~output_o\ : std_logic;
SIGNAL \dataOUT[9]~output_o\ : std_logic;
SIGNAL \dataOUT[10]~output_o\ : std_logic;
SIGNAL \dataOUT[11]~output_o\ : std_logic;
SIGNAL \dataOUT[12]~output_o\ : std_logic;
SIGNAL \dataOUT[13]~output_o\ : std_logic;
SIGNAL \dataOUT[14]~output_o\ : std_logic;
SIGNAL \dataOUT[15]~output_o\ : std_logic;
SIGNAL \dataOUT[16]~output_o\ : std_logic;
SIGNAL \dataOUT[17]~output_o\ : std_logic;
SIGNAL \dataOUT[18]~output_o\ : std_logic;
SIGNAL \dataOUT[19]~output_o\ : std_logic;
SIGNAL \dataOUT[20]~output_o\ : std_logic;
SIGNAL \dataOUT[21]~output_o\ : std_logic;
SIGNAL \dataOUT[22]~output_o\ : std_logic;
SIGNAL \dataOUT[23]~output_o\ : std_logic;
SIGNAL \dataOUT[24]~output_o\ : std_logic;
SIGNAL \dataOUT[25]~output_o\ : std_logic;
SIGNAL \dataOUT[26]~output_o\ : std_logic;
SIGNAL \dataOUT[27]~output_o\ : std_logic;
SIGNAL \dataOUT[28]~output_o\ : std_logic;
SIGNAL \dataOUT[29]~output_o\ : std_logic;
SIGNAL \dataOUT[30]~output_o\ : std_logic;
SIGNAL \dataOUT[31]~output_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \somador|Add0~1_sumout\ : std_logic;
SIGNAL \somador|Add0~2\ : std_logic;
SIGNAL \somador|Add0~5_sumout\ : std_logic;
SIGNAL \somador|Add0~6\ : std_logic;
SIGNAL \somador|Add0~9_sumout\ : std_logic;
SIGNAL \somador|Add0~10\ : std_logic;
SIGNAL \somador|Add0~13_sumout\ : std_logic;
SIGNAL \somador|Add0~14\ : std_logic;
SIGNAL \somador|Add0~17_sumout\ : std_logic;
SIGNAL \somador|Add0~18\ : std_logic;
SIGNAL \somador|Add0~21_sumout\ : std_logic;
SIGNAL \somador|Add0~22\ : std_logic;
SIGNAL \somador|Add0~25_sumout\ : std_logic;
SIGNAL \rom|memROM~0_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1128_combout\ : std_logic;
SIGNAL \rom|memROM~3_combout\ : std_logic;
SIGNAL \rom|memROM~4_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1126_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~294_q\ : std_logic;
SIGNAL \rom|memROM~2_combout\ : std_logic;
SIGNAL \bRegistradores|saidaB[0]~0_combout\ : std_logic;
SIGNAL \rom|memROM~1_combout\ : std_logic;
SIGNAL \bRegistradores|Equal1~0_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~38_q\ : std_logic;
SIGNAL \rom|memROM~5_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1062_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[0]~0_combout\ : std_logic;
SIGNAL \rom|memROM~6_combout\ : std_logic;
SIGNAL \ULA|Add0~130_cout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \UC|controleULA~0_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~295_q\ : std_logic;
SIGNAL \bRegistradores|registrador~39_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1063_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[1]~1_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1129_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1125_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~103_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1130_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~1127_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~359_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1064_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~1131_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~296_q\ : std_logic;
SIGNAL \bRegistradores|registrador~40_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1065_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[2]~2_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~104_q\ : std_logic;
SIGNAL \bRegistradores|registrador~360_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1066_combout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~297_q\ : std_logic;
SIGNAL \bRegistradores|registrador~41_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1067_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[3]~3_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~105_q\ : std_logic;
SIGNAL \bRegistradores|registrador~361_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1068_combout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~298_q\ : std_logic;
SIGNAL \bRegistradores|registrador~42_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1069_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[4]~4_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~106_q\ : std_logic;
SIGNAL \bRegistradores|registrador~362_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1070_combout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~299_q\ : std_logic;
SIGNAL \bRegistradores|registrador~43_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1071_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[5]~5_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~107_q\ : std_logic;
SIGNAL \bRegistradores|registrador~363_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1072_combout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~300_q\ : std_logic;
SIGNAL \bRegistradores|registrador~44_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1073_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[6]~6_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~108_q\ : std_logic;
SIGNAL \bRegistradores|registrador~364_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1074_combout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~301_q\ : std_logic;
SIGNAL \bRegistradores|registrador~45_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1075_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[7]~7_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~109_q\ : std_logic;
SIGNAL \bRegistradores|registrador~365_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1076_combout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~302_q\ : std_logic;
SIGNAL \bRegistradores|registrador~46_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1077_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[8]~8_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~110_q\ : std_logic;
SIGNAL \bRegistradores|registrador~366_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1078_combout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~33_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~303_q\ : std_logic;
SIGNAL \bRegistradores|registrador~47_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1079_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[9]~9_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~111_q\ : std_logic;
SIGNAL \bRegistradores|registrador~367_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1080_combout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~37_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~304_q\ : std_logic;
SIGNAL \bRegistradores|registrador~48_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1081_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[10]~10_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~112_q\ : std_logic;
SIGNAL \bRegistradores|registrador~368_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1082_combout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~41_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~305_q\ : std_logic;
SIGNAL \bRegistradores|registrador~49_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1083_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[11]~11_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~113_q\ : std_logic;
SIGNAL \bRegistradores|registrador~369_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1084_combout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~45_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~306_q\ : std_logic;
SIGNAL \bRegistradores|registrador~50_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1085_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[12]~12_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~114_q\ : std_logic;
SIGNAL \bRegistradores|registrador~370_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1086_combout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~49_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~307_q\ : std_logic;
SIGNAL \bRegistradores|registrador~51_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1087_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[13]~13_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~115_q\ : std_logic;
SIGNAL \bRegistradores|registrador~371_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1088_combout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~53_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~308_q\ : std_logic;
SIGNAL \bRegistradores|registrador~52_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1089_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[14]~14_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~116_q\ : std_logic;
SIGNAL \bRegistradores|registrador~372_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1090_combout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~57_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~309_q\ : std_logic;
SIGNAL \bRegistradores|registrador~53_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1091_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[15]~15_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~117_q\ : std_logic;
SIGNAL \bRegistradores|registrador~373_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1092_combout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~61_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~310_q\ : std_logic;
SIGNAL \bRegistradores|registrador~54_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1093_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[16]~16_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~118_q\ : std_logic;
SIGNAL \bRegistradores|registrador~374_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1094_combout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~65_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~311_q\ : std_logic;
SIGNAL \bRegistradores|registrador~55_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1095_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[17]~17_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~119_q\ : std_logic;
SIGNAL \bRegistradores|registrador~375_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1096_combout\ : std_logic;
SIGNAL \ULA|Add0~66\ : std_logic;
SIGNAL \ULA|Add0~69_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~312_q\ : std_logic;
SIGNAL \bRegistradores|registrador~56_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1097_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[18]~18_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~120_q\ : std_logic;
SIGNAL \bRegistradores|registrador~376_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1098_combout\ : std_logic;
SIGNAL \ULA|Add0~70\ : std_logic;
SIGNAL \ULA|Add0~73_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~313_q\ : std_logic;
SIGNAL \bRegistradores|registrador~57_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1099_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[19]~19_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~121_q\ : std_logic;
SIGNAL \bRegistradores|registrador~377_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1100_combout\ : std_logic;
SIGNAL \ULA|Add0~74\ : std_logic;
SIGNAL \ULA|Add0~77_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~314_q\ : std_logic;
SIGNAL \bRegistradores|registrador~58_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1101_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[20]~20_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~122_q\ : std_logic;
SIGNAL \bRegistradores|registrador~378_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1102_combout\ : std_logic;
SIGNAL \ULA|Add0~78\ : std_logic;
SIGNAL \ULA|Add0~81_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~315_q\ : std_logic;
SIGNAL \bRegistradores|registrador~59_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1103_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[21]~21_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~123_q\ : std_logic;
SIGNAL \bRegistradores|registrador~379_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1104_combout\ : std_logic;
SIGNAL \ULA|Add0~82\ : std_logic;
SIGNAL \ULA|Add0~85_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~316_q\ : std_logic;
SIGNAL \bRegistradores|registrador~60_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1105_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[22]~22_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~124_q\ : std_logic;
SIGNAL \bRegistradores|registrador~380_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1106_combout\ : std_logic;
SIGNAL \ULA|Add0~86\ : std_logic;
SIGNAL \ULA|Add0~89_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~317_q\ : std_logic;
SIGNAL \bRegistradores|registrador~61_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1107_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[23]~23_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~125_q\ : std_logic;
SIGNAL \bRegistradores|registrador~381_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1108_combout\ : std_logic;
SIGNAL \ULA|Add0~90\ : std_logic;
SIGNAL \ULA|Add0~93_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~318_q\ : std_logic;
SIGNAL \bRegistradores|registrador~62_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1109_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[24]~24_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~126_q\ : std_logic;
SIGNAL \bRegistradores|registrador~382_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1110_combout\ : std_logic;
SIGNAL \ULA|Add0~94\ : std_logic;
SIGNAL \ULA|Add0~97_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~319_q\ : std_logic;
SIGNAL \bRegistradores|registrador~63_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1111_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[25]~25_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~127_q\ : std_logic;
SIGNAL \bRegistradores|registrador~383_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1112_combout\ : std_logic;
SIGNAL \ULA|Add0~98\ : std_logic;
SIGNAL \ULA|Add0~101_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~320_q\ : std_logic;
SIGNAL \bRegistradores|registrador~64_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1113_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[26]~26_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~128_q\ : std_logic;
SIGNAL \bRegistradores|registrador~384_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1114_combout\ : std_logic;
SIGNAL \ULA|Add0~102\ : std_logic;
SIGNAL \ULA|Add0~105_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~321_q\ : std_logic;
SIGNAL \bRegistradores|registrador~65_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1115_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[27]~27_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~129_q\ : std_logic;
SIGNAL \bRegistradores|registrador~385_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1116_combout\ : std_logic;
SIGNAL \ULA|Add0~106\ : std_logic;
SIGNAL \ULA|Add0~109_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~322_q\ : std_logic;
SIGNAL \bRegistradores|registrador~66_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1117_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[28]~28_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~130_q\ : std_logic;
SIGNAL \bRegistradores|registrador~386_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1118_combout\ : std_logic;
SIGNAL \ULA|Add0~110\ : std_logic;
SIGNAL \ULA|Add0~113_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~323_q\ : std_logic;
SIGNAL \bRegistradores|registrador~67_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1119_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[29]~29_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~131_q\ : std_logic;
SIGNAL \bRegistradores|registrador~387_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1120_combout\ : std_logic;
SIGNAL \ULA|Add0~114\ : std_logic;
SIGNAL \ULA|Add0~117_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~324_q\ : std_logic;
SIGNAL \bRegistradores|registrador~68_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1121_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[30]~30_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~132_q\ : std_logic;
SIGNAL \bRegistradores|registrador~388_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1122_combout\ : std_logic;
SIGNAL \ULA|Add0~118\ : std_logic;
SIGNAL \ULA|Add0~121_sumout\ : std_logic;
SIGNAL \bRegistradores|registrador~325_q\ : std_logic;
SIGNAL \bRegistradores|registrador~69_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1123_combout\ : std_logic;
SIGNAL \bRegistradores|saidaA[31]~31_combout\ : std_logic;
SIGNAL \bRegistradores|registrador~133_q\ : std_logic;
SIGNAL \bRegistradores|registrador~389_q\ : std_logic;
SIGNAL \bRegistradores|registrador~1124_combout\ : std_logic;
SIGNAL \ULA|Add0~122\ : std_logic;
SIGNAL \ULA|Add0~125_sumout\ : std_logic;
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
SIGNAL \somador|Add0~118\ : std_logic;
SIGNAL \somador|Add0~121_sumout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[12]~12_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1085_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~306_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1084_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~369_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~113_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[11]~11_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~305_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~368_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~112_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[10]~10_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1081_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~304_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1080_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~367_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~111_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[9]~9_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1079_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~303_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~366_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~110_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[8]~8_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~302_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1076_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~365_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~109_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[7]~7_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1075_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~301_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~364_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~108_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[6]~6_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~300_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~363_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~107_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[5]~5_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1071_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~299_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~362_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~106_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[4]~4_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1069_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~298_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~361_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~105_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[3]~3_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~297_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~360_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~104_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[2]~2_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~296_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~359_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~103_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[1]~1_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~295_q\ : std_logic;
SIGNAL \UC|ALT_INV_controleULA~0_combout\ : std_logic;
SIGNAL \rom|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[0]~0_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \rom|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \rom|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaB[0]~0_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~294_q\ : std_logic;
SIGNAL \rom|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \rom|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \rom|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \rom|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \bRegistradores|ALT_INV_registrador~1124_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~389_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~133_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[31]~31_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1123_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1122_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~388_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~132_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[30]~30_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1121_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1120_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~387_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~131_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[29]~29_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1119_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1118_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~386_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~130_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[28]~28_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1117_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1116_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~385_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~129_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[27]~27_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1115_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1114_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~384_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~128_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[26]~26_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1113_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1112_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~383_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~127_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[25]~25_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1111_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1110_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~382_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~126_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[24]~24_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1109_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1108_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~381_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~125_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[23]~23_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1107_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1106_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~380_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~124_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[22]~22_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1105_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1104_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~379_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~123_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[21]~21_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1103_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1102_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~378_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~122_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[20]~20_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1101_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1100_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~377_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~121_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[19]~19_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1099_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1098_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~376_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~120_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[18]~18_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1097_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1096_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~375_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~119_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[17]~17_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1095_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1094_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~374_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~118_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[16]~16_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1093_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1092_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~373_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~117_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[15]~15_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1091_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~309_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~372_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~116_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[14]~14_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1089_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~308_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1088_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~371_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~115_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_saidaA[13]~13_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~307_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~370_q\ : std_logic;
SIGNAL \bRegistradores|ALT_INV_registrador~114_q\ : std_logic;

BEGIN

ww_clk <= clk;
dataOUT <= ww_dataOUT;
countPC <= ww_countPC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ULA|ALT_INV_Add0~9_sumout\ <= NOT \ULA|Add0~9_sumout\;
\ULA|ALT_INV_Add0~5_sumout\ <= NOT \ULA|Add0~5_sumout\;
\ULA|ALT_INV_Add0~1_sumout\ <= NOT \ULA|Add0~1_sumout\;
\bRegistradores|ALT_INV_registrador~69_q\ <= NOT \bRegistradores|registrador~69_q\;
\bRegistradores|ALT_INV_registrador~68_q\ <= NOT \bRegistradores|registrador~68_q\;
\bRegistradores|ALT_INV_registrador~67_q\ <= NOT \bRegistradores|registrador~67_q\;
\bRegistradores|ALT_INV_registrador~66_q\ <= NOT \bRegistradores|registrador~66_q\;
\bRegistradores|ALT_INV_registrador~65_q\ <= NOT \bRegistradores|registrador~65_q\;
\bRegistradores|ALT_INV_registrador~64_q\ <= NOT \bRegistradores|registrador~64_q\;
\bRegistradores|ALT_INV_registrador~63_q\ <= NOT \bRegistradores|registrador~63_q\;
\bRegistradores|ALT_INV_registrador~62_q\ <= NOT \bRegistradores|registrador~62_q\;
\bRegistradores|ALT_INV_registrador~61_q\ <= NOT \bRegistradores|registrador~61_q\;
\bRegistradores|ALT_INV_registrador~60_q\ <= NOT \bRegistradores|registrador~60_q\;
\bRegistradores|ALT_INV_registrador~59_q\ <= NOT \bRegistradores|registrador~59_q\;
\bRegistradores|ALT_INV_registrador~58_q\ <= NOT \bRegistradores|registrador~58_q\;
\bRegistradores|ALT_INV_registrador~57_q\ <= NOT \bRegistradores|registrador~57_q\;
\bRegistradores|ALT_INV_registrador~56_q\ <= NOT \bRegistradores|registrador~56_q\;
\bRegistradores|ALT_INV_registrador~55_q\ <= NOT \bRegistradores|registrador~55_q\;
\bRegistradores|ALT_INV_registrador~54_q\ <= NOT \bRegistradores|registrador~54_q\;
\bRegistradores|ALT_INV_registrador~53_q\ <= NOT \bRegistradores|registrador~53_q\;
\bRegistradores|ALT_INV_registrador~52_q\ <= NOT \bRegistradores|registrador~52_q\;
\bRegistradores|ALT_INV_registrador~51_q\ <= NOT \bRegistradores|registrador~51_q\;
\bRegistradores|ALT_INV_registrador~50_q\ <= NOT \bRegistradores|registrador~50_q\;
\bRegistradores|ALT_INV_registrador~49_q\ <= NOT \bRegistradores|registrador~49_q\;
\bRegistradores|ALT_INV_registrador~48_q\ <= NOT \bRegistradores|registrador~48_q\;
\bRegistradores|ALT_INV_registrador~47_q\ <= NOT \bRegistradores|registrador~47_q\;
\bRegistradores|ALT_INV_registrador~46_q\ <= NOT \bRegistradores|registrador~46_q\;
\bRegistradores|ALT_INV_registrador~45_q\ <= NOT \bRegistradores|registrador~45_q\;
\bRegistradores|ALT_INV_registrador~44_q\ <= NOT \bRegistradores|registrador~44_q\;
\bRegistradores|ALT_INV_registrador~43_q\ <= NOT \bRegistradores|registrador~43_q\;
\bRegistradores|ALT_INV_registrador~42_q\ <= NOT \bRegistradores|registrador~42_q\;
\bRegistradores|ALT_INV_registrador~41_q\ <= NOT \bRegistradores|registrador~41_q\;
\bRegistradores|ALT_INV_registrador~40_q\ <= NOT \bRegistradores|registrador~40_q\;
\bRegistradores|ALT_INV_registrador~39_q\ <= NOT \bRegistradores|registrador~39_q\;
\bRegistradores|ALT_INV_registrador~38_q\ <= NOT \bRegistradores|registrador~38_q\;
\bRegistradores|ALT_INV_saidaA[12]~12_combout\ <= NOT \bRegistradores|saidaA[12]~12_combout\;
\bRegistradores|ALT_INV_registrador~1085_combout\ <= NOT \bRegistradores|registrador~1085_combout\;
\bRegistradores|ALT_INV_registrador~306_q\ <= NOT \bRegistradores|registrador~306_q\;
\bRegistradores|ALT_INV_registrador~1084_combout\ <= NOT \bRegistradores|registrador~1084_combout\;
\bRegistradores|ALT_INV_registrador~369_q\ <= NOT \bRegistradores|registrador~369_q\;
\bRegistradores|ALT_INV_registrador~113_q\ <= NOT \bRegistradores|registrador~113_q\;
\bRegistradores|ALT_INV_saidaA[11]~11_combout\ <= NOT \bRegistradores|saidaA[11]~11_combout\;
\bRegistradores|ALT_INV_registrador~1083_combout\ <= NOT \bRegistradores|registrador~1083_combout\;
\bRegistradores|ALT_INV_registrador~305_q\ <= NOT \bRegistradores|registrador~305_q\;
\bRegistradores|ALT_INV_registrador~1082_combout\ <= NOT \bRegistradores|registrador~1082_combout\;
\bRegistradores|ALT_INV_registrador~368_q\ <= NOT \bRegistradores|registrador~368_q\;
\bRegistradores|ALT_INV_registrador~112_q\ <= NOT \bRegistradores|registrador~112_q\;
\bRegistradores|ALT_INV_saidaA[10]~10_combout\ <= NOT \bRegistradores|saidaA[10]~10_combout\;
\bRegistradores|ALT_INV_registrador~1081_combout\ <= NOT \bRegistradores|registrador~1081_combout\;
\bRegistradores|ALT_INV_registrador~304_q\ <= NOT \bRegistradores|registrador~304_q\;
\bRegistradores|ALT_INV_registrador~1080_combout\ <= NOT \bRegistradores|registrador~1080_combout\;
\bRegistradores|ALT_INV_registrador~367_q\ <= NOT \bRegistradores|registrador~367_q\;
\bRegistradores|ALT_INV_registrador~111_q\ <= NOT \bRegistradores|registrador~111_q\;
\bRegistradores|ALT_INV_saidaA[9]~9_combout\ <= NOT \bRegistradores|saidaA[9]~9_combout\;
\bRegistradores|ALT_INV_registrador~1079_combout\ <= NOT \bRegistradores|registrador~1079_combout\;
\bRegistradores|ALT_INV_registrador~303_q\ <= NOT \bRegistradores|registrador~303_q\;
\bRegistradores|ALT_INV_registrador~1078_combout\ <= NOT \bRegistradores|registrador~1078_combout\;
\bRegistradores|ALT_INV_registrador~366_q\ <= NOT \bRegistradores|registrador~366_q\;
\bRegistradores|ALT_INV_registrador~110_q\ <= NOT \bRegistradores|registrador~110_q\;
\bRegistradores|ALT_INV_saidaA[8]~8_combout\ <= NOT \bRegistradores|saidaA[8]~8_combout\;
\bRegistradores|ALT_INV_registrador~1077_combout\ <= NOT \bRegistradores|registrador~1077_combout\;
\bRegistradores|ALT_INV_registrador~302_q\ <= NOT \bRegistradores|registrador~302_q\;
\bRegistradores|ALT_INV_registrador~1076_combout\ <= NOT \bRegistradores|registrador~1076_combout\;
\bRegistradores|ALT_INV_registrador~365_q\ <= NOT \bRegistradores|registrador~365_q\;
\bRegistradores|ALT_INV_registrador~109_q\ <= NOT \bRegistradores|registrador~109_q\;
\bRegistradores|ALT_INV_saidaA[7]~7_combout\ <= NOT \bRegistradores|saidaA[7]~7_combout\;
\bRegistradores|ALT_INV_registrador~1075_combout\ <= NOT \bRegistradores|registrador~1075_combout\;
\bRegistradores|ALT_INV_registrador~301_q\ <= NOT \bRegistradores|registrador~301_q\;
\bRegistradores|ALT_INV_registrador~1074_combout\ <= NOT \bRegistradores|registrador~1074_combout\;
\bRegistradores|ALT_INV_registrador~364_q\ <= NOT \bRegistradores|registrador~364_q\;
\bRegistradores|ALT_INV_registrador~108_q\ <= NOT \bRegistradores|registrador~108_q\;
\bRegistradores|ALT_INV_saidaA[6]~6_combout\ <= NOT \bRegistradores|saidaA[6]~6_combout\;
\bRegistradores|ALT_INV_registrador~1073_combout\ <= NOT \bRegistradores|registrador~1073_combout\;
\bRegistradores|ALT_INV_registrador~300_q\ <= NOT \bRegistradores|registrador~300_q\;
\bRegistradores|ALT_INV_registrador~1072_combout\ <= NOT \bRegistradores|registrador~1072_combout\;
\bRegistradores|ALT_INV_registrador~363_q\ <= NOT \bRegistradores|registrador~363_q\;
\bRegistradores|ALT_INV_registrador~107_q\ <= NOT \bRegistradores|registrador~107_q\;
\bRegistradores|ALT_INV_saidaA[5]~5_combout\ <= NOT \bRegistradores|saidaA[5]~5_combout\;
\bRegistradores|ALT_INV_registrador~1071_combout\ <= NOT \bRegistradores|registrador~1071_combout\;
\bRegistradores|ALT_INV_registrador~299_q\ <= NOT \bRegistradores|registrador~299_q\;
\bRegistradores|ALT_INV_registrador~1070_combout\ <= NOT \bRegistradores|registrador~1070_combout\;
\bRegistradores|ALT_INV_registrador~362_q\ <= NOT \bRegistradores|registrador~362_q\;
\bRegistradores|ALT_INV_registrador~106_q\ <= NOT \bRegistradores|registrador~106_q\;
\bRegistradores|ALT_INV_saidaA[4]~4_combout\ <= NOT \bRegistradores|saidaA[4]~4_combout\;
\bRegistradores|ALT_INV_registrador~1069_combout\ <= NOT \bRegistradores|registrador~1069_combout\;
\bRegistradores|ALT_INV_registrador~298_q\ <= NOT \bRegistradores|registrador~298_q\;
\bRegistradores|ALT_INV_registrador~1068_combout\ <= NOT \bRegistradores|registrador~1068_combout\;
\bRegistradores|ALT_INV_registrador~361_q\ <= NOT \bRegistradores|registrador~361_q\;
\bRegistradores|ALT_INV_registrador~105_q\ <= NOT \bRegistradores|registrador~105_q\;
\bRegistradores|ALT_INV_saidaA[3]~3_combout\ <= NOT \bRegistradores|saidaA[3]~3_combout\;
\bRegistradores|ALT_INV_registrador~1067_combout\ <= NOT \bRegistradores|registrador~1067_combout\;
\bRegistradores|ALT_INV_registrador~297_q\ <= NOT \bRegistradores|registrador~297_q\;
\bRegistradores|ALT_INV_registrador~1066_combout\ <= NOT \bRegistradores|registrador~1066_combout\;
\bRegistradores|ALT_INV_registrador~360_q\ <= NOT \bRegistradores|registrador~360_q\;
\bRegistradores|ALT_INV_registrador~104_q\ <= NOT \bRegistradores|registrador~104_q\;
\bRegistradores|ALT_INV_saidaA[2]~2_combout\ <= NOT \bRegistradores|saidaA[2]~2_combout\;
\bRegistradores|ALT_INV_registrador~1065_combout\ <= NOT \bRegistradores|registrador~1065_combout\;
\bRegistradores|ALT_INV_registrador~296_q\ <= NOT \bRegistradores|registrador~296_q\;
\bRegistradores|ALT_INV_registrador~1064_combout\ <= NOT \bRegistradores|registrador~1064_combout\;
\bRegistradores|ALT_INV_registrador~359_q\ <= NOT \bRegistradores|registrador~359_q\;
\bRegistradores|ALT_INV_registrador~103_q\ <= NOT \bRegistradores|registrador~103_q\;
\bRegistradores|ALT_INV_saidaA[1]~1_combout\ <= NOT \bRegistradores|saidaA[1]~1_combout\;
\bRegistradores|ALT_INV_registrador~1063_combout\ <= NOT \bRegistradores|registrador~1063_combout\;
\bRegistradores|ALT_INV_registrador~295_q\ <= NOT \bRegistradores|registrador~295_q\;
\UC|ALT_INV_controleULA~0_combout\ <= NOT \UC|controleULA~0_combout\;
\rom|ALT_INV_memROM~6_combout\ <= NOT \rom|memROM~6_combout\;
\bRegistradores|ALT_INV_saidaA[0]~0_combout\ <= NOT \bRegistradores|saidaA[0]~0_combout\;
\bRegistradores|ALT_INV_registrador~1062_combout\ <= NOT \bRegistradores|registrador~1062_combout\;
\rom|ALT_INV_memROM~5_combout\ <= NOT \rom|memROM~5_combout\;
\bRegistradores|ALT_INV_Equal1~0_combout\ <= NOT \bRegistradores|Equal1~0_combout\;
\rom|ALT_INV_memROM~4_combout\ <= NOT \rom|memROM~4_combout\;
\bRegistradores|ALT_INV_saidaB[0]~0_combout\ <= NOT \bRegistradores|saidaB[0]~0_combout\;
\bRegistradores|ALT_INV_registrador~294_q\ <= NOT \bRegistradores|registrador~294_q\;
\rom|ALT_INV_memROM~3_combout\ <= NOT \rom|memROM~3_combout\;
\rom|ALT_INV_memROM~2_combout\ <= NOT \rom|memROM~2_combout\;
\rom|ALT_INV_memROM~1_combout\ <= NOT \rom|memROM~1_combout\;
\rom|ALT_INV_memROM~0_combout\ <= NOT \rom|memROM~0_combout\;
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
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\bRegistradores|ALT_INV_registrador~1124_combout\ <= NOT \bRegistradores|registrador~1124_combout\;
\bRegistradores|ALT_INV_registrador~389_q\ <= NOT \bRegistradores|registrador~389_q\;
\bRegistradores|ALT_INV_registrador~133_q\ <= NOT \bRegistradores|registrador~133_q\;
\bRegistradores|ALT_INV_saidaA[31]~31_combout\ <= NOT \bRegistradores|saidaA[31]~31_combout\;
\bRegistradores|ALT_INV_registrador~1123_combout\ <= NOT \bRegistradores|registrador~1123_combout\;
\bRegistradores|ALT_INV_registrador~325_q\ <= NOT \bRegistradores|registrador~325_q\;
\bRegistradores|ALT_INV_registrador~1122_combout\ <= NOT \bRegistradores|registrador~1122_combout\;
\bRegistradores|ALT_INV_registrador~388_q\ <= NOT \bRegistradores|registrador~388_q\;
\bRegistradores|ALT_INV_registrador~132_q\ <= NOT \bRegistradores|registrador~132_q\;
\bRegistradores|ALT_INV_saidaA[30]~30_combout\ <= NOT \bRegistradores|saidaA[30]~30_combout\;
\bRegistradores|ALT_INV_registrador~1121_combout\ <= NOT \bRegistradores|registrador~1121_combout\;
\bRegistradores|ALT_INV_registrador~324_q\ <= NOT \bRegistradores|registrador~324_q\;
\bRegistradores|ALT_INV_registrador~1120_combout\ <= NOT \bRegistradores|registrador~1120_combout\;
\bRegistradores|ALT_INV_registrador~387_q\ <= NOT \bRegistradores|registrador~387_q\;
\bRegistradores|ALT_INV_registrador~131_q\ <= NOT \bRegistradores|registrador~131_q\;
\bRegistradores|ALT_INV_saidaA[29]~29_combout\ <= NOT \bRegistradores|saidaA[29]~29_combout\;
\bRegistradores|ALT_INV_registrador~1119_combout\ <= NOT \bRegistradores|registrador~1119_combout\;
\bRegistradores|ALT_INV_registrador~323_q\ <= NOT \bRegistradores|registrador~323_q\;
\bRegistradores|ALT_INV_registrador~1118_combout\ <= NOT \bRegistradores|registrador~1118_combout\;
\bRegistradores|ALT_INV_registrador~386_q\ <= NOT \bRegistradores|registrador~386_q\;
\bRegistradores|ALT_INV_registrador~130_q\ <= NOT \bRegistradores|registrador~130_q\;
\bRegistradores|ALT_INV_saidaA[28]~28_combout\ <= NOT \bRegistradores|saidaA[28]~28_combout\;
\bRegistradores|ALT_INV_registrador~1117_combout\ <= NOT \bRegistradores|registrador~1117_combout\;
\bRegistradores|ALT_INV_registrador~322_q\ <= NOT \bRegistradores|registrador~322_q\;
\bRegistradores|ALT_INV_registrador~1116_combout\ <= NOT \bRegistradores|registrador~1116_combout\;
\bRegistradores|ALT_INV_registrador~385_q\ <= NOT \bRegistradores|registrador~385_q\;
\bRegistradores|ALT_INV_registrador~129_q\ <= NOT \bRegistradores|registrador~129_q\;
\bRegistradores|ALT_INV_saidaA[27]~27_combout\ <= NOT \bRegistradores|saidaA[27]~27_combout\;
\bRegistradores|ALT_INV_registrador~1115_combout\ <= NOT \bRegistradores|registrador~1115_combout\;
\bRegistradores|ALT_INV_registrador~321_q\ <= NOT \bRegistradores|registrador~321_q\;
\bRegistradores|ALT_INV_registrador~1114_combout\ <= NOT \bRegistradores|registrador~1114_combout\;
\bRegistradores|ALT_INV_registrador~384_q\ <= NOT \bRegistradores|registrador~384_q\;
\bRegistradores|ALT_INV_registrador~128_q\ <= NOT \bRegistradores|registrador~128_q\;
\bRegistradores|ALT_INV_saidaA[26]~26_combout\ <= NOT \bRegistradores|saidaA[26]~26_combout\;
\bRegistradores|ALT_INV_registrador~1113_combout\ <= NOT \bRegistradores|registrador~1113_combout\;
\bRegistradores|ALT_INV_registrador~320_q\ <= NOT \bRegistradores|registrador~320_q\;
\bRegistradores|ALT_INV_registrador~1112_combout\ <= NOT \bRegistradores|registrador~1112_combout\;
\bRegistradores|ALT_INV_registrador~383_q\ <= NOT \bRegistradores|registrador~383_q\;
\bRegistradores|ALT_INV_registrador~127_q\ <= NOT \bRegistradores|registrador~127_q\;
\bRegistradores|ALT_INV_saidaA[25]~25_combout\ <= NOT \bRegistradores|saidaA[25]~25_combout\;
\bRegistradores|ALT_INV_registrador~1111_combout\ <= NOT \bRegistradores|registrador~1111_combout\;
\bRegistradores|ALT_INV_registrador~319_q\ <= NOT \bRegistradores|registrador~319_q\;
\bRegistradores|ALT_INV_registrador~1110_combout\ <= NOT \bRegistradores|registrador~1110_combout\;
\bRegistradores|ALT_INV_registrador~382_q\ <= NOT \bRegistradores|registrador~382_q\;
\bRegistradores|ALT_INV_registrador~126_q\ <= NOT \bRegistradores|registrador~126_q\;
\bRegistradores|ALT_INV_saidaA[24]~24_combout\ <= NOT \bRegistradores|saidaA[24]~24_combout\;
\bRegistradores|ALT_INV_registrador~1109_combout\ <= NOT \bRegistradores|registrador~1109_combout\;
\bRegistradores|ALT_INV_registrador~318_q\ <= NOT \bRegistradores|registrador~318_q\;
\bRegistradores|ALT_INV_registrador~1108_combout\ <= NOT \bRegistradores|registrador~1108_combout\;
\bRegistradores|ALT_INV_registrador~381_q\ <= NOT \bRegistradores|registrador~381_q\;
\bRegistradores|ALT_INV_registrador~125_q\ <= NOT \bRegistradores|registrador~125_q\;
\bRegistradores|ALT_INV_saidaA[23]~23_combout\ <= NOT \bRegistradores|saidaA[23]~23_combout\;
\bRegistradores|ALT_INV_registrador~1107_combout\ <= NOT \bRegistradores|registrador~1107_combout\;
\bRegistradores|ALT_INV_registrador~317_q\ <= NOT \bRegistradores|registrador~317_q\;
\bRegistradores|ALT_INV_registrador~1106_combout\ <= NOT \bRegistradores|registrador~1106_combout\;
\bRegistradores|ALT_INV_registrador~380_q\ <= NOT \bRegistradores|registrador~380_q\;
\bRegistradores|ALT_INV_registrador~124_q\ <= NOT \bRegistradores|registrador~124_q\;
\bRegistradores|ALT_INV_saidaA[22]~22_combout\ <= NOT \bRegistradores|saidaA[22]~22_combout\;
\bRegistradores|ALT_INV_registrador~1105_combout\ <= NOT \bRegistradores|registrador~1105_combout\;
\bRegistradores|ALT_INV_registrador~316_q\ <= NOT \bRegistradores|registrador~316_q\;
\bRegistradores|ALT_INV_registrador~1104_combout\ <= NOT \bRegistradores|registrador~1104_combout\;
\bRegistradores|ALT_INV_registrador~379_q\ <= NOT \bRegistradores|registrador~379_q\;
\bRegistradores|ALT_INV_registrador~123_q\ <= NOT \bRegistradores|registrador~123_q\;
\bRegistradores|ALT_INV_saidaA[21]~21_combout\ <= NOT \bRegistradores|saidaA[21]~21_combout\;
\bRegistradores|ALT_INV_registrador~1103_combout\ <= NOT \bRegistradores|registrador~1103_combout\;
\bRegistradores|ALT_INV_registrador~315_q\ <= NOT \bRegistradores|registrador~315_q\;
\bRegistradores|ALT_INV_registrador~1102_combout\ <= NOT \bRegistradores|registrador~1102_combout\;
\bRegistradores|ALT_INV_registrador~378_q\ <= NOT \bRegistradores|registrador~378_q\;
\bRegistradores|ALT_INV_registrador~122_q\ <= NOT \bRegistradores|registrador~122_q\;
\bRegistradores|ALT_INV_saidaA[20]~20_combout\ <= NOT \bRegistradores|saidaA[20]~20_combout\;
\bRegistradores|ALT_INV_registrador~1101_combout\ <= NOT \bRegistradores|registrador~1101_combout\;
\bRegistradores|ALT_INV_registrador~314_q\ <= NOT \bRegistradores|registrador~314_q\;
\bRegistradores|ALT_INV_registrador~1100_combout\ <= NOT \bRegistradores|registrador~1100_combout\;
\bRegistradores|ALT_INV_registrador~377_q\ <= NOT \bRegistradores|registrador~377_q\;
\bRegistradores|ALT_INV_registrador~121_q\ <= NOT \bRegistradores|registrador~121_q\;
\bRegistradores|ALT_INV_saidaA[19]~19_combout\ <= NOT \bRegistradores|saidaA[19]~19_combout\;
\bRegistradores|ALT_INV_registrador~1099_combout\ <= NOT \bRegistradores|registrador~1099_combout\;
\bRegistradores|ALT_INV_registrador~313_q\ <= NOT \bRegistradores|registrador~313_q\;
\bRegistradores|ALT_INV_registrador~1098_combout\ <= NOT \bRegistradores|registrador~1098_combout\;
\bRegistradores|ALT_INV_registrador~376_q\ <= NOT \bRegistradores|registrador~376_q\;
\bRegistradores|ALT_INV_registrador~120_q\ <= NOT \bRegistradores|registrador~120_q\;
\bRegistradores|ALT_INV_saidaA[18]~18_combout\ <= NOT \bRegistradores|saidaA[18]~18_combout\;
\bRegistradores|ALT_INV_registrador~1097_combout\ <= NOT \bRegistradores|registrador~1097_combout\;
\bRegistradores|ALT_INV_registrador~312_q\ <= NOT \bRegistradores|registrador~312_q\;
\bRegistradores|ALT_INV_registrador~1096_combout\ <= NOT \bRegistradores|registrador~1096_combout\;
\bRegistradores|ALT_INV_registrador~375_q\ <= NOT \bRegistradores|registrador~375_q\;
\bRegistradores|ALT_INV_registrador~119_q\ <= NOT \bRegistradores|registrador~119_q\;
\bRegistradores|ALT_INV_saidaA[17]~17_combout\ <= NOT \bRegistradores|saidaA[17]~17_combout\;
\bRegistradores|ALT_INV_registrador~1095_combout\ <= NOT \bRegistradores|registrador~1095_combout\;
\bRegistradores|ALT_INV_registrador~311_q\ <= NOT \bRegistradores|registrador~311_q\;
\bRegistradores|ALT_INV_registrador~1094_combout\ <= NOT \bRegistradores|registrador~1094_combout\;
\bRegistradores|ALT_INV_registrador~374_q\ <= NOT \bRegistradores|registrador~374_q\;
\bRegistradores|ALT_INV_registrador~118_q\ <= NOT \bRegistradores|registrador~118_q\;
\bRegistradores|ALT_INV_saidaA[16]~16_combout\ <= NOT \bRegistradores|saidaA[16]~16_combout\;
\bRegistradores|ALT_INV_registrador~1093_combout\ <= NOT \bRegistradores|registrador~1093_combout\;
\bRegistradores|ALT_INV_registrador~310_q\ <= NOT \bRegistradores|registrador~310_q\;
\bRegistradores|ALT_INV_registrador~1092_combout\ <= NOT \bRegistradores|registrador~1092_combout\;
\bRegistradores|ALT_INV_registrador~373_q\ <= NOT \bRegistradores|registrador~373_q\;
\bRegistradores|ALT_INV_registrador~117_q\ <= NOT \bRegistradores|registrador~117_q\;
\bRegistradores|ALT_INV_saidaA[15]~15_combout\ <= NOT \bRegistradores|saidaA[15]~15_combout\;
\bRegistradores|ALT_INV_registrador~1091_combout\ <= NOT \bRegistradores|registrador~1091_combout\;
\bRegistradores|ALT_INV_registrador~309_q\ <= NOT \bRegistradores|registrador~309_q\;
\bRegistradores|ALT_INV_registrador~1090_combout\ <= NOT \bRegistradores|registrador~1090_combout\;
\bRegistradores|ALT_INV_registrador~372_q\ <= NOT \bRegistradores|registrador~372_q\;
\bRegistradores|ALT_INV_registrador~116_q\ <= NOT \bRegistradores|registrador~116_q\;
\bRegistradores|ALT_INV_saidaA[14]~14_combout\ <= NOT \bRegistradores|saidaA[14]~14_combout\;
\bRegistradores|ALT_INV_registrador~1089_combout\ <= NOT \bRegistradores|registrador~1089_combout\;
\bRegistradores|ALT_INV_registrador~308_q\ <= NOT \bRegistradores|registrador~308_q\;
\bRegistradores|ALT_INV_registrador~1088_combout\ <= NOT \bRegistradores|registrador~1088_combout\;
\bRegistradores|ALT_INV_registrador~371_q\ <= NOT \bRegistradores|registrador~371_q\;
\bRegistradores|ALT_INV_registrador~115_q\ <= NOT \bRegistradores|registrador~115_q\;
\bRegistradores|ALT_INV_saidaA[13]~13_combout\ <= NOT \bRegistradores|saidaA[13]~13_combout\;
\bRegistradores|ALT_INV_registrador~1087_combout\ <= NOT \bRegistradores|registrador~1087_combout\;
\bRegistradores|ALT_INV_registrador~307_q\ <= NOT \bRegistradores|registrador~307_q\;
\bRegistradores|ALT_INV_registrador~1086_combout\ <= NOT \bRegistradores|registrador~1086_combout\;
\bRegistradores|ALT_INV_registrador~370_q\ <= NOT \bRegistradores|registrador~370_q\;
\bRegistradores|ALT_INV_registrador~114_q\ <= NOT \bRegistradores|registrador~114_q\;

\dataOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~1_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[0]~output_o\);

\dataOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~5_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[1]~output_o\);

\dataOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~9_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[2]~output_o\);

\dataOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~13_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[3]~output_o\);

\dataOUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~17_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[4]~output_o\);

\dataOUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~21_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[5]~output_o\);

\dataOUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~25_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[6]~output_o\);

\dataOUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~29_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[7]~output_o\);

\dataOUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~33_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[8]~output_o\);

\dataOUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~37_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[9]~output_o\);

\dataOUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~41_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[10]~output_o\);

\dataOUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~45_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[11]~output_o\);

\dataOUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~49_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[12]~output_o\);

\dataOUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~53_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[13]~output_o\);

\dataOUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~57_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[14]~output_o\);

\dataOUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~61_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[15]~output_o\);

\dataOUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~65_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[16]~output_o\);

\dataOUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~69_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[17]~output_o\);

\dataOUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~73_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[18]~output_o\);

\dataOUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~77_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[19]~output_o\);

\dataOUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~81_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[20]~output_o\);

\dataOUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~85_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[21]~output_o\);

\dataOUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~89_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[22]~output_o\);

\dataOUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~93_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[23]~output_o\);

\dataOUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~97_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[24]~output_o\);

\dataOUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~101_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[25]~output_o\);

\dataOUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~105_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[26]~output_o\);

\dataOUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~109_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[27]~output_o\);

\dataOUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~113_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[28]~output_o\);

\dataOUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~117_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[29]~output_o\);

\dataOUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~121_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[30]~output_o\);

\dataOUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~125_sumout\,
	devoe => ww_devoe,
	o => \dataOUT[31]~output_o\);

\countPC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
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
	i => \PC|DOUT\(1),
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

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~0_combout\ = !\PC|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	combout => \PC|DOUT[0]~0_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PC|DOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

\somador|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( \PC|DOUT\(1) ) + ( !VCC ))
-- \somador|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( \PC|DOUT\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(1),
	cin => GND,
	sumout => \somador|Add0~1_sumout\,
	cout => \somador|Add0~2\);

\PC|DOUT[1]\ : dffeas
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
	q => \PC|DOUT\(1));

\somador|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~5_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \somador|Add0~2\ ))
-- \somador|Add0~6\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \somador|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \somador|Add0~2\,
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

\somador|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~21_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \somador|Add0~18\ ))
-- \somador|Add0~22\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \somador|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \somador|Add0~18\,
	sumout => \somador|Add0~21_sumout\,
	cout => \somador|Add0~22\);

\PC|DOUT[6]\ : dffeas
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
	q => \PC|DOUT\(6));

\somador|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~25_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \somador|Add0~22\ ))
-- \somador|Add0~26\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \somador|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \somador|Add0~22\,
	sumout => \somador|Add0~25_sumout\,
	cout => \somador|Add0~26\);

\PC|DOUT[7]\ : dffeas
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
	q => \PC|DOUT\(7));

\rom|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|memROM~0_combout\ = ( !\PC|DOUT\(4) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(2) & !\PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	combout => \rom|memROM~0_combout\);

\bRegistradores|registrador~1128\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1128_combout\ = !\ULA|Add0~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	combout => \bRegistradores|registrador~1128_combout\);

\rom|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|memROM~3_combout\ = ( !\PC|DOUT\(4) & ( !\PC|DOUT\(3) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(2) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \rom|memROM~3_combout\);

\rom|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|memROM~4_combout\ = (((\PC|DOUT\(2) & \PC|DOUT\(3))) # (\PC|DOUT\(5))) # (\PC|DOUT\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111000111111111111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \rom|memROM~4_combout\);

\bRegistradores|registrador~1126\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1126_combout\ = (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\rom|memROM~3_combout\ & !\rom|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \rom|ALT_INV_memROM~3_combout\,
	datad => \rom|ALT_INV_memROM~4_combout\,
	combout => \bRegistradores|registrador~1126_combout\);

\bRegistradores|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bRegistradores|registrador~1128_combout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~294_q\);

\rom|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|memROM~2_combout\ = ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(2) $ (!\PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \rom|memROM~2_combout\);

\bRegistradores|saidaB[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaB[0]~0_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~294_q\ ) ) ) # ( \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ ) ) # 
-- ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bRegistradores|ALT_INV_registrador~294_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|saidaB[0]~0_combout\);

\rom|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|memROM~1_combout\ = (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(2) $ (!\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000011000000000000001100000000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \rom|memROM~1_combout\);

\bRegistradores|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|Equal1~0_combout\ = ( \PC|DOUT\(4) & ( \PC|DOUT\(3) ) ) # ( !\PC|DOUT\(4) & ( \PC|DOUT\(3) & ( (((\PC|DOUT\(5)) # (\PC|DOUT\(2))) # (\PC|DOUT\(6))) # (\PC|DOUT\(7)) ) ) ) # ( \PC|DOUT\(4) & ( !\PC|DOUT\(3) ) ) # ( !\PC|DOUT\(4) & ( 
-- !\PC|DOUT\(3) & ( ((\PC|DOUT\(5)) # (\PC|DOUT\(6))) # (\PC|DOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \bRegistradores|Equal1~0_combout\);

\bRegistradores|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~1_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~38_q\);

\rom|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|memROM~5_combout\ = ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & ((!\PC|DOUT\(2)) # (!\PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \rom|memROM~5_combout\);

\bRegistradores|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1062_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( !\rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( !\rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~294_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (!\bRegistradores|registrador~38_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000010101010000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~294_q\,
	datac => \bRegistradores|ALT_INV_registrador~38_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1062_combout\);

\bRegistradores|saidaA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[0]~0_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (!\bRegistradores|registrador~1062_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (!\bRegistradores|registrador~1062_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (!\bRegistradores|registrador~1062_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100000000101111110000000000000000000000001011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1062_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[0]~0_combout\);

\rom|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|memROM~6_combout\ = (\rom|memROM~4_combout\) # (\PC|DOUT\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \rom|ALT_INV_memROM~4_combout\,
	combout => \rom|memROM~6_combout\);

\ULA|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~130_cout\ = CARRY(( (((\PC|DOUT\(6)) # (\rom|memROM~4_combout\)) # (\PC|DOUT\(7))) # (\rom|memROM~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \rom|ALT_INV_memROM~4_combout\,
	datad => \PC|ALT_INV_DOUT\(6),
	cin => GND,
	cout => \ULA|Add0~130_cout\);

\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( \bRegistradores|saidaA[0]~0_combout\ ) + ( !\bRegistradores|saidaB[0]~0_combout\ $ ((((\rom|memROM~6_combout\) # (\PC|DOUT\(7))) # (\rom|memROM~0_combout\))) ) + ( \ULA|Add0~130_cout\ ))
-- \ULA|Add0~2\ = CARRY(( \bRegistradores|saidaA[0]~0_combout\ ) + ( !\bRegistradores|saidaB[0]~0_combout\ $ ((((\rom|memROM~6_combout\) # (\PC|DOUT\(7))) # (\rom|memROM~0_combout\))) ) + ( \ULA|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011110001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \bRegistradores|ALT_INV_saidaB[0]~0_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[0]~0_combout\,
	dataf => \rom|ALT_INV_memROM~6_combout\,
	cin => \ULA|Add0~130_cout\,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

\UC|controleULA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|controleULA~0_combout\ = (!\rom|memROM~5_combout\) # (\rom|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~0_combout\,
	datab => \rom|ALT_INV_memROM~5_combout\,
	combout => \UC|controleULA~0_combout\);

\bRegistradores|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~5_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~295_q\);

\bRegistradores|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~5_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~39_q\);

\bRegistradores|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1063_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\rom|memROM~5_combout\) # (\bRegistradores|registrador~295_q\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~39_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~295_q\,
	datac => \bRegistradores|ALT_INV_registrador~39_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1063_combout\);

\bRegistradores|saidaA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[1]~1_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1063_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1063_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1063_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1063_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[1]~1_combout\);

\bRegistradores|registrador~1129\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1129_combout\ = !\ULA|Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~5_sumout\,
	combout => \bRegistradores|registrador~1129_combout\);

\bRegistradores|registrador~1125\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1125_combout\ = (\rom|memROM~3_combout\ & (((\rom|memROM~4_combout\) # (\PC|DOUT\(6))) # (\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000001110000111100000111000011110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \rom|ALT_INV_memROM~3_combout\,
	datad => \rom|ALT_INV_memROM~4_combout\,
	combout => \bRegistradores|registrador~1125_combout\);

\bRegistradores|registrador~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bRegistradores|registrador~1129_combout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~103_q\);

\bRegistradores|registrador~1130\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1130_combout\ = !\ULA|Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~5_sumout\,
	combout => \bRegistradores|registrador~1130_combout\);

\bRegistradores|registrador~1127\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1127_combout\ = (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (\rom|memROM~3_combout\ & !\rom|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \rom|ALT_INV_memROM~3_combout\,
	datad => \rom|ALT_INV_memROM~4_combout\,
	combout => \bRegistradores|registrador~1127_combout\);

\bRegistradores|registrador~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bRegistradores|registrador~1130_combout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~359_q\);

\bRegistradores|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1064_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( !\bRegistradores|registrador~359_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~295_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( !\bRegistradores|registrador~103_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110000001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~39_q\,
	datab => \bRegistradores|ALT_INV_registrador~103_q\,
	datac => \bRegistradores|ALT_INV_registrador~295_q\,
	datad => \bRegistradores|ALT_INV_registrador~359_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1064_combout\);

\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( \bRegistradores|saidaA[1]~1_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1064_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( \bRegistradores|saidaA[1]~1_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1064_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[1]~1_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

\bRegistradores|registrador~1131\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1131_combout\ = !\ULA|Add0~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~9_sumout\,
	combout => \bRegistradores|registrador~1131_combout\);

\bRegistradores|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bRegistradores|registrador~1131_combout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~296_q\);

\bRegistradores|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~9_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~40_q\);

\bRegistradores|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1065_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (!\bRegistradores|registrador~296_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~40_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000101010100000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~296_q\,
	datac => \bRegistradores|ALT_INV_registrador~40_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1065_combout\);

\bRegistradores|saidaA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[2]~2_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1065_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1065_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1065_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1065_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[2]~2_combout\);

\bRegistradores|registrador~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~9_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~104_q\);

\bRegistradores|registrador~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~9_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~360_q\);

\bRegistradores|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1066_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~360_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( !\bRegistradores|registrador~296_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~104_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~40_q\,
	datab => \bRegistradores|ALT_INV_registrador~104_q\,
	datac => \bRegistradores|ALT_INV_registrador~296_q\,
	datad => \bRegistradores|ALT_INV_registrador~360_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1066_combout\);

\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( \bRegistradores|saidaA[2]~2_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1066_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( \bRegistradores|saidaA[2]~2_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1066_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[2]~2_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1066_combout\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

\bRegistradores|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~13_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~297_q\);

\bRegistradores|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~13_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~41_q\);

\bRegistradores|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1067_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~297_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~41_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~297_q\,
	datac => \bRegistradores|ALT_INV_registrador~41_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1067_combout\);

\bRegistradores|saidaA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[3]~3_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1067_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1067_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1067_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1067_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[3]~3_combout\);

\bRegistradores|registrador~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~13_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~105_q\);

\bRegistradores|registrador~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~13_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~361_q\);

\bRegistradores|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1068_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~361_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~297_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~105_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~41_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~41_q\,
	datab => \bRegistradores|ALT_INV_registrador~105_q\,
	datac => \bRegistradores|ALT_INV_registrador~297_q\,
	datad => \bRegistradores|ALT_INV_registrador~361_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1068_combout\);

\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( \bRegistradores|saidaA[3]~3_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1068_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( \bRegistradores|saidaA[3]~3_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1068_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[3]~3_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1068_combout\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

\bRegistradores|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~17_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~298_q\);

\bRegistradores|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~17_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~42_q\);

\bRegistradores|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1069_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~298_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~42_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~298_q\,
	datac => \bRegistradores|ALT_INV_registrador~42_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1069_combout\);

\bRegistradores|saidaA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[4]~4_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1069_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1069_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1069_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1069_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[4]~4_combout\);

\bRegistradores|registrador~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~17_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~106_q\);

\bRegistradores|registrador~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~17_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~362_q\);

\bRegistradores|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1070_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~362_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~298_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~106_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~42_q\,
	datab => \bRegistradores|ALT_INV_registrador~106_q\,
	datac => \bRegistradores|ALT_INV_registrador~298_q\,
	datad => \bRegistradores|ALT_INV_registrador~362_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1070_combout\);

\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( \bRegistradores|saidaA[4]~4_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1070_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( \bRegistradores|saidaA[4]~4_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1070_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[4]~4_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1070_combout\,
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

\bRegistradores|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~21_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~299_q\);

\bRegistradores|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~21_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~43_q\);

\bRegistradores|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1071_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~299_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~43_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~299_q\,
	datac => \bRegistradores|ALT_INV_registrador~43_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1071_combout\);

\bRegistradores|saidaA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[5]~5_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1071_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1071_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1071_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1071_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[5]~5_combout\);

\bRegistradores|registrador~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~21_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~107_q\);

\bRegistradores|registrador~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~21_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~363_q\);

\bRegistradores|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1072_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~363_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~299_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~107_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~43_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~43_q\,
	datab => \bRegistradores|ALT_INV_registrador~107_q\,
	datac => \bRegistradores|ALT_INV_registrador~299_q\,
	datad => \bRegistradores|ALT_INV_registrador~363_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1072_combout\);

\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( \bRegistradores|saidaA[5]~5_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1072_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( \bRegistradores|saidaA[5]~5_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1072_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[5]~5_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1072_combout\,
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

\bRegistradores|registrador~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~25_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~300_q\);

\bRegistradores|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~25_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~44_q\);

\bRegistradores|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1073_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~300_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~44_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~300_q\,
	datac => \bRegistradores|ALT_INV_registrador~44_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1073_combout\);

\bRegistradores|saidaA[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[6]~6_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1073_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1073_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1073_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1073_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[6]~6_combout\);

\bRegistradores|registrador~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~25_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~108_q\);

\bRegistradores|registrador~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~25_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~364_q\);

\bRegistradores|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1074_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~364_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~300_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~108_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~44_q\,
	datab => \bRegistradores|ALT_INV_registrador~108_q\,
	datac => \bRegistradores|ALT_INV_registrador~300_q\,
	datad => \bRegistradores|ALT_INV_registrador~364_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1074_combout\);

\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( \bRegistradores|saidaA[6]~6_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1074_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( \bRegistradores|saidaA[6]~6_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1074_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[6]~6_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1074_combout\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

\bRegistradores|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~29_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~301_q\);

\bRegistradores|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~29_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~45_q\);

\bRegistradores|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1075_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~301_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~45_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~301_q\,
	datac => \bRegistradores|ALT_INV_registrador~45_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1075_combout\);

\bRegistradores|saidaA[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[7]~7_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1075_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1075_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1075_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1075_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[7]~7_combout\);

\bRegistradores|registrador~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~29_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~109_q\);

\bRegistradores|registrador~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~29_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~365_q\);

\bRegistradores|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1076_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~365_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~301_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~109_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~45_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~45_q\,
	datab => \bRegistradores|ALT_INV_registrador~109_q\,
	datac => \bRegistradores|ALT_INV_registrador~301_q\,
	datad => \bRegistradores|ALT_INV_registrador~365_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1076_combout\);

\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( \bRegistradores|saidaA[7]~7_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1076_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~26\ ))
-- \ULA|Add0~30\ = CARRY(( \bRegistradores|saidaA[7]~7_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1076_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[7]~7_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1076_combout\,
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\,
	cout => \ULA|Add0~30\);

\bRegistradores|registrador~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~33_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~302_q\);

\bRegistradores|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~33_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~46_q\);

\bRegistradores|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1077_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~302_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~46_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~302_q\,
	datac => \bRegistradores|ALT_INV_registrador~46_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1077_combout\);

\bRegistradores|saidaA[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[8]~8_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1077_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1077_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1077_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1077_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[8]~8_combout\);

\bRegistradores|registrador~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~33_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~110_q\);

\bRegistradores|registrador~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~33_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~366_q\);

\bRegistradores|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1078_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~366_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~302_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~110_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~46_q\,
	datab => \bRegistradores|ALT_INV_registrador~110_q\,
	datac => \bRegistradores|ALT_INV_registrador~302_q\,
	datad => \bRegistradores|ALT_INV_registrador~366_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1078_combout\);

\ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_sumout\ = SUM(( \bRegistradores|saidaA[8]~8_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1078_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~30\ ))
-- \ULA|Add0~34\ = CARRY(( \bRegistradores|saidaA[8]~8_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1078_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[8]~8_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1078_combout\,
	cin => \ULA|Add0~30\,
	sumout => \ULA|Add0~33_sumout\,
	cout => \ULA|Add0~34\);

\bRegistradores|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~37_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~303_q\);

\bRegistradores|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~37_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~47_q\);

\bRegistradores|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1079_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~303_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~47_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~303_q\,
	datac => \bRegistradores|ALT_INV_registrador~47_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1079_combout\);

\bRegistradores|saidaA[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[9]~9_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1079_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1079_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1079_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1079_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[9]~9_combout\);

\bRegistradores|registrador~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~37_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~111_q\);

\bRegistradores|registrador~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~37_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~367_q\);

\bRegistradores|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1080_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~367_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~303_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~111_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~47_q\,
	datab => \bRegistradores|ALT_INV_registrador~111_q\,
	datac => \bRegistradores|ALT_INV_registrador~303_q\,
	datad => \bRegistradores|ALT_INV_registrador~367_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1080_combout\);

\ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_sumout\ = SUM(( \bRegistradores|saidaA[9]~9_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1080_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~34\ ))
-- \ULA|Add0~38\ = CARRY(( \bRegistradores|saidaA[9]~9_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1080_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[9]~9_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1080_combout\,
	cin => \ULA|Add0~34\,
	sumout => \ULA|Add0~37_sumout\,
	cout => \ULA|Add0~38\);

\bRegistradores|registrador~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~41_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~304_q\);

\bRegistradores|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~41_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~48_q\);

\bRegistradores|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1081_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~304_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~48_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~304_q\,
	datac => \bRegistradores|ALT_INV_registrador~48_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1081_combout\);

\bRegistradores|saidaA[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[10]~10_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1081_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1081_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1081_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1081_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[10]~10_combout\);

\bRegistradores|registrador~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~41_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~112_q\);

\bRegistradores|registrador~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~41_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~368_q\);

\bRegistradores|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1082_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~368_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~304_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~112_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~48_q\,
	datab => \bRegistradores|ALT_INV_registrador~112_q\,
	datac => \bRegistradores|ALT_INV_registrador~304_q\,
	datad => \bRegistradores|ALT_INV_registrador~368_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1082_combout\);

\ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_sumout\ = SUM(( \bRegistradores|saidaA[10]~10_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1082_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~38\ ))
-- \ULA|Add0~42\ = CARRY(( \bRegistradores|saidaA[10]~10_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1082_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[10]~10_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1082_combout\,
	cin => \ULA|Add0~38\,
	sumout => \ULA|Add0~41_sumout\,
	cout => \ULA|Add0~42\);

\bRegistradores|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~45_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~305_q\);

\bRegistradores|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~45_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~49_q\);

\bRegistradores|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1083_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~305_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~49_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~305_q\,
	datac => \bRegistradores|ALT_INV_registrador~49_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1083_combout\);

\bRegistradores|saidaA[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[11]~11_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1083_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1083_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1083_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1083_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[11]~11_combout\);

\bRegistradores|registrador~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~45_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~113_q\);

\bRegistradores|registrador~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~45_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~369_q\);

\bRegistradores|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1084_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~369_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~305_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~113_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~49_q\,
	datab => \bRegistradores|ALT_INV_registrador~113_q\,
	datac => \bRegistradores|ALT_INV_registrador~305_q\,
	datad => \bRegistradores|ALT_INV_registrador~369_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1084_combout\);

\ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_sumout\ = SUM(( \bRegistradores|saidaA[11]~11_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1084_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~42\ ))
-- \ULA|Add0~46\ = CARRY(( \bRegistradores|saidaA[11]~11_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1084_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[11]~11_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1084_combout\,
	cin => \ULA|Add0~42\,
	sumout => \ULA|Add0~45_sumout\,
	cout => \ULA|Add0~46\);

\bRegistradores|registrador~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~49_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~306_q\);

\bRegistradores|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~49_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~50_q\);

\bRegistradores|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1085_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~306_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~50_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~306_q\,
	datac => \bRegistradores|ALT_INV_registrador~50_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1085_combout\);

\bRegistradores|saidaA[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[12]~12_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1085_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1085_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1085_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1085_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[12]~12_combout\);

\bRegistradores|registrador~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~49_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~114_q\);

\bRegistradores|registrador~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~49_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~370_q\);

\bRegistradores|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1086_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~370_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~306_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~114_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~50_q\,
	datab => \bRegistradores|ALT_INV_registrador~114_q\,
	datac => \bRegistradores|ALT_INV_registrador~306_q\,
	datad => \bRegistradores|ALT_INV_registrador~370_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1086_combout\);

\ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_sumout\ = SUM(( \bRegistradores|saidaA[12]~12_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1086_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~46\ ))
-- \ULA|Add0~50\ = CARRY(( \bRegistradores|saidaA[12]~12_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1086_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[12]~12_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1086_combout\,
	cin => \ULA|Add0~46\,
	sumout => \ULA|Add0~49_sumout\,
	cout => \ULA|Add0~50\);

\bRegistradores|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~53_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~307_q\);

\bRegistradores|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~53_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~51_q\);

\bRegistradores|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1087_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~307_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~51_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~307_q\,
	datac => \bRegistradores|ALT_INV_registrador~51_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1087_combout\);

\bRegistradores|saidaA[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[13]~13_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1087_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1087_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1087_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1087_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[13]~13_combout\);

\bRegistradores|registrador~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~53_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~115_q\);

\bRegistradores|registrador~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~53_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~371_q\);

\bRegistradores|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1088_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~371_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~307_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~115_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~51_q\,
	datab => \bRegistradores|ALT_INV_registrador~115_q\,
	datac => \bRegistradores|ALT_INV_registrador~307_q\,
	datad => \bRegistradores|ALT_INV_registrador~371_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1088_combout\);

\ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_sumout\ = SUM(( \bRegistradores|saidaA[13]~13_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1088_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~50\ ))
-- \ULA|Add0~54\ = CARRY(( \bRegistradores|saidaA[13]~13_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1088_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[13]~13_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1088_combout\,
	cin => \ULA|Add0~50\,
	sumout => \ULA|Add0~53_sumout\,
	cout => \ULA|Add0~54\);

\bRegistradores|registrador~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~57_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~308_q\);

\bRegistradores|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~57_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~52_q\);

\bRegistradores|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1089_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~308_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~52_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~308_q\,
	datac => \bRegistradores|ALT_INV_registrador~52_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1089_combout\);

\bRegistradores|saidaA[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[14]~14_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1089_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1089_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1089_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1089_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[14]~14_combout\);

\bRegistradores|registrador~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~57_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~116_q\);

\bRegistradores|registrador~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~57_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~372_q\);

\bRegistradores|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1090_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~372_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~308_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~116_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~52_q\,
	datab => \bRegistradores|ALT_INV_registrador~116_q\,
	datac => \bRegistradores|ALT_INV_registrador~308_q\,
	datad => \bRegistradores|ALT_INV_registrador~372_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1090_combout\);

\ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_sumout\ = SUM(( \bRegistradores|saidaA[14]~14_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1090_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~54\ ))
-- \ULA|Add0~58\ = CARRY(( \bRegistradores|saidaA[14]~14_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1090_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[14]~14_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1090_combout\,
	cin => \ULA|Add0~54\,
	sumout => \ULA|Add0~57_sumout\,
	cout => \ULA|Add0~58\);

\bRegistradores|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~61_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~309_q\);

\bRegistradores|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~61_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~53_q\);

\bRegistradores|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1091_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~309_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~53_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~309_q\,
	datac => \bRegistradores|ALT_INV_registrador~53_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1091_combout\);

\bRegistradores|saidaA[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[15]~15_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1091_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1091_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1091_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1091_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[15]~15_combout\);

\bRegistradores|registrador~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~61_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~117_q\);

\bRegistradores|registrador~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~61_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~373_q\);

\bRegistradores|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1092_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~373_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~309_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~117_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~53_q\,
	datab => \bRegistradores|ALT_INV_registrador~117_q\,
	datac => \bRegistradores|ALT_INV_registrador~309_q\,
	datad => \bRegistradores|ALT_INV_registrador~373_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1092_combout\);

\ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_sumout\ = SUM(( \bRegistradores|saidaA[15]~15_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1092_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~58\ ))
-- \ULA|Add0~62\ = CARRY(( \bRegistradores|saidaA[15]~15_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1092_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[15]~15_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1092_combout\,
	cin => \ULA|Add0~58\,
	sumout => \ULA|Add0~61_sumout\,
	cout => \ULA|Add0~62\);

\bRegistradores|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~65_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~310_q\);

\bRegistradores|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~65_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~54_q\);

\bRegistradores|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1093_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~310_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~54_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~310_q\,
	datac => \bRegistradores|ALT_INV_registrador~54_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1093_combout\);

\bRegistradores|saidaA[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[16]~16_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1093_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1093_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1093_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1093_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[16]~16_combout\);

\bRegistradores|registrador~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~65_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~118_q\);

\bRegistradores|registrador~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~65_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~374_q\);

\bRegistradores|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1094_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~374_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~310_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~118_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~54_q\,
	datab => \bRegistradores|ALT_INV_registrador~118_q\,
	datac => \bRegistradores|ALT_INV_registrador~310_q\,
	datad => \bRegistradores|ALT_INV_registrador~374_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1094_combout\);

\ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_sumout\ = SUM(( \bRegistradores|saidaA[16]~16_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1094_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~62\ ))
-- \ULA|Add0~66\ = CARRY(( \bRegistradores|saidaA[16]~16_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1094_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[16]~16_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1094_combout\,
	cin => \ULA|Add0~62\,
	sumout => \ULA|Add0~65_sumout\,
	cout => \ULA|Add0~66\);

\bRegistradores|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~69_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~311_q\);

\bRegistradores|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~69_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~55_q\);

\bRegistradores|registrador~1095\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1095_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~311_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~55_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~311_q\,
	datac => \bRegistradores|ALT_INV_registrador~55_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1095_combout\);

\bRegistradores|saidaA[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[17]~17_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1095_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1095_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1095_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1095_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[17]~17_combout\);

\bRegistradores|registrador~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~69_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~119_q\);

\bRegistradores|registrador~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~69_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~375_q\);

\bRegistradores|registrador~1096\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1096_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~375_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~311_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~119_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~55_q\,
	datab => \bRegistradores|ALT_INV_registrador~119_q\,
	datac => \bRegistradores|ALT_INV_registrador~311_q\,
	datad => \bRegistradores|ALT_INV_registrador~375_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1096_combout\);

\ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_sumout\ = SUM(( \bRegistradores|saidaA[17]~17_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1096_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~66\ ))
-- \ULA|Add0~70\ = CARRY(( \bRegistradores|saidaA[17]~17_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1096_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[17]~17_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1096_combout\,
	cin => \ULA|Add0~66\,
	sumout => \ULA|Add0~69_sumout\,
	cout => \ULA|Add0~70\);

\bRegistradores|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~73_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~312_q\);

\bRegistradores|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~73_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~56_q\);

\bRegistradores|registrador~1097\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1097_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~312_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~56_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~312_q\,
	datac => \bRegistradores|ALT_INV_registrador~56_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1097_combout\);

\bRegistradores|saidaA[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[18]~18_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1097_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1097_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1097_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1097_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[18]~18_combout\);

\bRegistradores|registrador~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~73_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~120_q\);

\bRegistradores|registrador~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~73_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~376_q\);

\bRegistradores|registrador~1098\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1098_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~376_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~312_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~120_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~56_q\,
	datab => \bRegistradores|ALT_INV_registrador~120_q\,
	datac => \bRegistradores|ALT_INV_registrador~312_q\,
	datad => \bRegistradores|ALT_INV_registrador~376_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1098_combout\);

\ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_sumout\ = SUM(( \bRegistradores|saidaA[18]~18_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1098_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~70\ ))
-- \ULA|Add0~74\ = CARRY(( \bRegistradores|saidaA[18]~18_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1098_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[18]~18_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1098_combout\,
	cin => \ULA|Add0~70\,
	sumout => \ULA|Add0~73_sumout\,
	cout => \ULA|Add0~74\);

\bRegistradores|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~77_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~313_q\);

\bRegistradores|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~77_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~57_q\);

\bRegistradores|registrador~1099\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1099_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~313_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~57_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~313_q\,
	datac => \bRegistradores|ALT_INV_registrador~57_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1099_combout\);

\bRegistradores|saidaA[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[19]~19_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1099_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1099_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1099_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1099_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[19]~19_combout\);

\bRegistradores|registrador~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~77_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~121_q\);

\bRegistradores|registrador~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~77_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~377_q\);

\bRegistradores|registrador~1100\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1100_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~377_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~313_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~121_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~57_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~57_q\,
	datab => \bRegistradores|ALT_INV_registrador~121_q\,
	datac => \bRegistradores|ALT_INV_registrador~313_q\,
	datad => \bRegistradores|ALT_INV_registrador~377_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1100_combout\);

\ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_sumout\ = SUM(( \bRegistradores|saidaA[19]~19_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1100_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~74\ ))
-- \ULA|Add0~78\ = CARRY(( \bRegistradores|saidaA[19]~19_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1100_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[19]~19_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1100_combout\,
	cin => \ULA|Add0~74\,
	sumout => \ULA|Add0~77_sumout\,
	cout => \ULA|Add0~78\);

\bRegistradores|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~81_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~314_q\);

\bRegistradores|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~81_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~58_q\);

\bRegistradores|registrador~1101\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1101_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~314_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~58_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~314_q\,
	datac => \bRegistradores|ALT_INV_registrador~58_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1101_combout\);

\bRegistradores|saidaA[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[20]~20_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1101_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1101_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1101_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1101_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[20]~20_combout\);

\bRegistradores|registrador~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~81_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~122_q\);

\bRegistradores|registrador~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~81_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~378_q\);

\bRegistradores|registrador~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1102_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~378_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~314_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~122_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~58_q\,
	datab => \bRegistradores|ALT_INV_registrador~122_q\,
	datac => \bRegistradores|ALT_INV_registrador~314_q\,
	datad => \bRegistradores|ALT_INV_registrador~378_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1102_combout\);

\ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_sumout\ = SUM(( \bRegistradores|saidaA[20]~20_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1102_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~78\ ))
-- \ULA|Add0~82\ = CARRY(( \bRegistradores|saidaA[20]~20_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1102_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[20]~20_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1102_combout\,
	cin => \ULA|Add0~78\,
	sumout => \ULA|Add0~81_sumout\,
	cout => \ULA|Add0~82\);

\bRegistradores|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~85_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~315_q\);

\bRegistradores|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~85_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~59_q\);

\bRegistradores|registrador~1103\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1103_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~315_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~59_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~315_q\,
	datac => \bRegistradores|ALT_INV_registrador~59_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1103_combout\);

\bRegistradores|saidaA[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[21]~21_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1103_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1103_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1103_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1103_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[21]~21_combout\);

\bRegistradores|registrador~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~85_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~123_q\);

\bRegistradores|registrador~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~85_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~379_q\);

\bRegistradores|registrador~1104\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1104_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~379_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~315_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~123_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~59_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~59_q\,
	datab => \bRegistradores|ALT_INV_registrador~123_q\,
	datac => \bRegistradores|ALT_INV_registrador~315_q\,
	datad => \bRegistradores|ALT_INV_registrador~379_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1104_combout\);

\ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_sumout\ = SUM(( \bRegistradores|saidaA[21]~21_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1104_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~82\ ))
-- \ULA|Add0~86\ = CARRY(( \bRegistradores|saidaA[21]~21_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1104_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[21]~21_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1104_combout\,
	cin => \ULA|Add0~82\,
	sumout => \ULA|Add0~85_sumout\,
	cout => \ULA|Add0~86\);

\bRegistradores|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~89_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~316_q\);

\bRegistradores|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~89_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~60_q\);

\bRegistradores|registrador~1105\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1105_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~316_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~60_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~316_q\,
	datac => \bRegistradores|ALT_INV_registrador~60_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1105_combout\);

\bRegistradores|saidaA[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[22]~22_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1105_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1105_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1105_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1105_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[22]~22_combout\);

\bRegistradores|registrador~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~89_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~124_q\);

\bRegistradores|registrador~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~89_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~380_q\);

\bRegistradores|registrador~1106\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1106_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~380_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~316_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~124_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~60_q\,
	datab => \bRegistradores|ALT_INV_registrador~124_q\,
	datac => \bRegistradores|ALT_INV_registrador~316_q\,
	datad => \bRegistradores|ALT_INV_registrador~380_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1106_combout\);

\ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_sumout\ = SUM(( \bRegistradores|saidaA[22]~22_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1106_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~86\ ))
-- \ULA|Add0~90\ = CARRY(( \bRegistradores|saidaA[22]~22_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1106_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[22]~22_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1106_combout\,
	cin => \ULA|Add0~86\,
	sumout => \ULA|Add0~89_sumout\,
	cout => \ULA|Add0~90\);

\bRegistradores|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~93_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~317_q\);

\bRegistradores|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~93_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~61_q\);

\bRegistradores|registrador~1107\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1107_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~317_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~61_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~317_q\,
	datac => \bRegistradores|ALT_INV_registrador~61_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1107_combout\);

\bRegistradores|saidaA[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[23]~23_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1107_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1107_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1107_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1107_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[23]~23_combout\);

\bRegistradores|registrador~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~93_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~125_q\);

\bRegistradores|registrador~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~93_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~381_q\);

\bRegistradores|registrador~1108\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1108_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~381_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~317_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~125_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~61_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~61_q\,
	datab => \bRegistradores|ALT_INV_registrador~125_q\,
	datac => \bRegistradores|ALT_INV_registrador~317_q\,
	datad => \bRegistradores|ALT_INV_registrador~381_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1108_combout\);

\ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_sumout\ = SUM(( \bRegistradores|saidaA[23]~23_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1108_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~90\ ))
-- \ULA|Add0~94\ = CARRY(( \bRegistradores|saidaA[23]~23_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1108_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[23]~23_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1108_combout\,
	cin => \ULA|Add0~90\,
	sumout => \ULA|Add0~93_sumout\,
	cout => \ULA|Add0~94\);

\bRegistradores|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~97_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~318_q\);

\bRegistradores|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~97_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~62_q\);

\bRegistradores|registrador~1109\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1109_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~318_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~62_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~318_q\,
	datac => \bRegistradores|ALT_INV_registrador~62_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1109_combout\);

\bRegistradores|saidaA[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[24]~24_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1109_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1109_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1109_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1109_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[24]~24_combout\);

\bRegistradores|registrador~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~97_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~126_q\);

\bRegistradores|registrador~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~97_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~382_q\);

\bRegistradores|registrador~1110\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1110_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~382_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~318_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~126_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~62_q\,
	datab => \bRegistradores|ALT_INV_registrador~126_q\,
	datac => \bRegistradores|ALT_INV_registrador~318_q\,
	datad => \bRegistradores|ALT_INV_registrador~382_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1110_combout\);

\ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_sumout\ = SUM(( \bRegistradores|saidaA[24]~24_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1110_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~94\ ))
-- \ULA|Add0~98\ = CARRY(( \bRegistradores|saidaA[24]~24_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1110_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[24]~24_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1110_combout\,
	cin => \ULA|Add0~94\,
	sumout => \ULA|Add0~97_sumout\,
	cout => \ULA|Add0~98\);

\bRegistradores|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~101_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~319_q\);

\bRegistradores|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~101_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~63_q\);

\bRegistradores|registrador~1111\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1111_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~319_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~63_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~319_q\,
	datac => \bRegistradores|ALT_INV_registrador~63_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1111_combout\);

\bRegistradores|saidaA[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[25]~25_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1111_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1111_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1111_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1111_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[25]~25_combout\);

\bRegistradores|registrador~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~101_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~127_q\);

\bRegistradores|registrador~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~101_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~383_q\);

\bRegistradores|registrador~1112\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1112_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~383_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~319_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~127_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~63_q\,
	datab => \bRegistradores|ALT_INV_registrador~127_q\,
	datac => \bRegistradores|ALT_INV_registrador~319_q\,
	datad => \bRegistradores|ALT_INV_registrador~383_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1112_combout\);

\ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_sumout\ = SUM(( \bRegistradores|saidaA[25]~25_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1112_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~98\ ))
-- \ULA|Add0~102\ = CARRY(( \bRegistradores|saidaA[25]~25_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1112_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[25]~25_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1112_combout\,
	cin => \ULA|Add0~98\,
	sumout => \ULA|Add0~101_sumout\,
	cout => \ULA|Add0~102\);

\bRegistradores|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~105_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~320_q\);

\bRegistradores|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~105_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~64_q\);

\bRegistradores|registrador~1113\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1113_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~320_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~64_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~320_q\,
	datac => \bRegistradores|ALT_INV_registrador~64_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1113_combout\);

\bRegistradores|saidaA[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[26]~26_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1113_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1113_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1113_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1113_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[26]~26_combout\);

\bRegistradores|registrador~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~105_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~128_q\);

\bRegistradores|registrador~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~105_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~384_q\);

\bRegistradores|registrador~1114\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1114_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~384_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~320_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~128_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~64_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~64_q\,
	datab => \bRegistradores|ALT_INV_registrador~128_q\,
	datac => \bRegistradores|ALT_INV_registrador~320_q\,
	datad => \bRegistradores|ALT_INV_registrador~384_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1114_combout\);

\ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~105_sumout\ = SUM(( \bRegistradores|saidaA[26]~26_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1114_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~102\ ))
-- \ULA|Add0~106\ = CARRY(( \bRegistradores|saidaA[26]~26_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1114_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[26]~26_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1114_combout\,
	cin => \ULA|Add0~102\,
	sumout => \ULA|Add0~105_sumout\,
	cout => \ULA|Add0~106\);

\bRegistradores|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~109_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~321_q\);

\bRegistradores|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~109_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~65_q\);

\bRegistradores|registrador~1115\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1115_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~321_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~65_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~321_q\,
	datac => \bRegistradores|ALT_INV_registrador~65_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1115_combout\);

\bRegistradores|saidaA[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[27]~27_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1115_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1115_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1115_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1115_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[27]~27_combout\);

\bRegistradores|registrador~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~109_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~129_q\);

\bRegistradores|registrador~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~109_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~385_q\);

\bRegistradores|registrador~1116\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1116_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~385_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~321_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~129_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~65_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~65_q\,
	datab => \bRegistradores|ALT_INV_registrador~129_q\,
	datac => \bRegistradores|ALT_INV_registrador~321_q\,
	datad => \bRegistradores|ALT_INV_registrador~385_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1116_combout\);

\ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_sumout\ = SUM(( \bRegistradores|saidaA[27]~27_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1116_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~106\ ))
-- \ULA|Add0~110\ = CARRY(( \bRegistradores|saidaA[27]~27_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1116_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[27]~27_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1116_combout\,
	cin => \ULA|Add0~106\,
	sumout => \ULA|Add0~109_sumout\,
	cout => \ULA|Add0~110\);

\bRegistradores|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~113_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~322_q\);

\bRegistradores|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~113_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~66_q\);

\bRegistradores|registrador~1117\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1117_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~322_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~66_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~322_q\,
	datac => \bRegistradores|ALT_INV_registrador~66_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1117_combout\);

\bRegistradores|saidaA[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[28]~28_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1117_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1117_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1117_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1117_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[28]~28_combout\);

\bRegistradores|registrador~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~113_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~130_q\);

\bRegistradores|registrador~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~113_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~386_q\);

\bRegistradores|registrador~1118\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1118_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~386_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~322_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~130_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~66_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~66_q\,
	datab => \bRegistradores|ALT_INV_registrador~130_q\,
	datac => \bRegistradores|ALT_INV_registrador~322_q\,
	datad => \bRegistradores|ALT_INV_registrador~386_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1118_combout\);

\ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~113_sumout\ = SUM(( \bRegistradores|saidaA[28]~28_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1118_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~110\ ))
-- \ULA|Add0~114\ = CARRY(( \bRegistradores|saidaA[28]~28_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1118_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[28]~28_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1118_combout\,
	cin => \ULA|Add0~110\,
	sumout => \ULA|Add0~113_sumout\,
	cout => \ULA|Add0~114\);

\bRegistradores|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~117_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~323_q\);

\bRegistradores|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~117_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~67_q\);

\bRegistradores|registrador~1119\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1119_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~323_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~67_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~323_q\,
	datac => \bRegistradores|ALT_INV_registrador~67_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1119_combout\);

\bRegistradores|saidaA[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[29]~29_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1119_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1119_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1119_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1119_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[29]~29_combout\);

\bRegistradores|registrador~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~117_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~131_q\);

\bRegistradores|registrador~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~117_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~387_q\);

\bRegistradores|registrador~1120\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1120_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~387_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~323_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~131_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~67_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~67_q\,
	datab => \bRegistradores|ALT_INV_registrador~131_q\,
	datac => \bRegistradores|ALT_INV_registrador~323_q\,
	datad => \bRegistradores|ALT_INV_registrador~387_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1120_combout\);

\ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_sumout\ = SUM(( \bRegistradores|saidaA[29]~29_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1120_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~114\ ))
-- \ULA|Add0~118\ = CARRY(( \bRegistradores|saidaA[29]~29_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1120_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[29]~29_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1120_combout\,
	cin => \ULA|Add0~114\,
	sumout => \ULA|Add0~117_sumout\,
	cout => \ULA|Add0~118\);

\bRegistradores|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~121_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~324_q\);

\bRegistradores|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~121_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~68_q\);

\bRegistradores|registrador~1121\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1121_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~324_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~68_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~324_q\,
	datac => \bRegistradores|ALT_INV_registrador~68_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1121_combout\);

\bRegistradores|saidaA[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[30]~30_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1121_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1121_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1121_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1121_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[30]~30_combout\);

\bRegistradores|registrador~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~121_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~132_q\);

\bRegistradores|registrador~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~121_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~388_q\);

\bRegistradores|registrador~1122\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1122_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~388_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~324_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~132_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~68_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~68_q\,
	datab => \bRegistradores|ALT_INV_registrador~132_q\,
	datac => \bRegistradores|ALT_INV_registrador~324_q\,
	datad => \bRegistradores|ALT_INV_registrador~388_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1122_combout\);

\ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~121_sumout\ = SUM(( \bRegistradores|saidaA[30]~30_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1122_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~118\ ))
-- \ULA|Add0~122\ = CARRY(( \bRegistradores|saidaA[30]~30_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1122_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[30]~30_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1122_combout\,
	cin => \ULA|Add0~118\,
	sumout => \ULA|Add0~121_sumout\,
	cout => \ULA|Add0~122\);

\bRegistradores|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~125_sumout\,
	ena => \bRegistradores|registrador~1126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~325_q\);

\bRegistradores|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~125_sumout\,
	ena => \bRegistradores|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~69_q\);

\bRegistradores|registrador~1123\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1123_combout\ = ( \rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( !\rom|memROM~3_combout\ & ( \rom|memROM~2_combout\ & ( \rom|memROM~5_combout\ ) ) ) # ( \rom|memROM~3_combout\ & ( 
-- !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~325_q\ & !\rom|memROM~5_combout\) ) ) ) # ( !\rom|memROM~3_combout\ & ( !\rom|memROM~2_combout\ & ( (\bRegistradores|registrador~69_q\ & !\rom|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~325_q\,
	datac => \bRegistradores|ALT_INV_registrador~69_q\,
	datad => \rom|ALT_INV_memROM~5_combout\,
	datae => \rom|ALT_INV_memROM~3_combout\,
	dataf => \rom|ALT_INV_memROM~2_combout\,
	combout => \bRegistradores|registrador~1123_combout\);

\bRegistradores|saidaA[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|saidaA[31]~31_combout\ = ( \rom|memROM~2_combout\ & ( \bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1123_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( \rom|memROM~2_combout\ & ( 
-- !\bRegistradores|Equal1~0_combout\ & ( (\bRegistradores|registrador~1123_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) ) # ( !\rom|memROM~2_combout\ & ( !\bRegistradores|Equal1~0_combout\ & ( 
-- (\bRegistradores|registrador~1123_combout\ & ((!\rom|memROM~1_combout\) # ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000000000000000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \bRegistradores|ALT_INV_registrador~1123_combout\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \bRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bRegistradores|saidaA[31]~31_combout\);

\bRegistradores|registrador~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~125_sumout\,
	ena => \bRegistradores|registrador~1125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~133_q\);

\bRegistradores|registrador~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|Add0~125_sumout\,
	ena => \bRegistradores|registrador~1127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRegistradores|registrador~389_q\);

\bRegistradores|registrador~1124\ : cyclonev_lcell_comb
-- Equation(s):
-- \bRegistradores|registrador~1124_combout\ = ( \rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~389_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( \rom|memROM~3_combout\ & ( \bRegistradores|registrador~325_q\ ) ) ) # ( 
-- \rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~133_q\ ) ) ) # ( !\rom|memROM~2_combout\ & ( !\rom|memROM~3_combout\ & ( \bRegistradores|registrador~69_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bRegistradores|ALT_INV_registrador~69_q\,
	datab => \bRegistradores|ALT_INV_registrador~133_q\,
	datac => \bRegistradores|ALT_INV_registrador~325_q\,
	datad => \bRegistradores|ALT_INV_registrador~389_q\,
	datae => \rom|ALT_INV_memROM~2_combout\,
	dataf => \rom|ALT_INV_memROM~3_combout\,
	combout => \bRegistradores|registrador~1124_combout\);

\ULA|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_sumout\ = SUM(( \bRegistradores|saidaA[31]~31_combout\ ) + ( !\UC|controleULA~0_combout\ $ (((!\rom|memROM~3_combout\) # ((!\bRegistradores|registrador~1124_combout\) # (\rom|memROM~2_combout\)))) ) + ( \ULA|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_controleULA~0_combout\,
	datab => \rom|ALT_INV_memROM~3_combout\,
	datac => \rom|ALT_INV_memROM~2_combout\,
	datad => \bRegistradores|ALT_INV_saidaA[31]~31_combout\,
	dataf => \bRegistradores|ALT_INV_registrador~1124_combout\,
	cin => \ULA|Add0~122\,
	sumout => \ULA|Add0~125_sumout\);

\somador|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~29_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \somador|Add0~26\ ))
-- \somador|Add0~30\ = CARRY(( \PC|DOUT\(8) ) + ( GND ) + ( \somador|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \somador|Add0~26\,
	sumout => \somador|Add0~29_sumout\,
	cout => \somador|Add0~30\);

\PC|DOUT[8]\ : dffeas
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
	q => \PC|DOUT\(8));

\somador|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~33_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \somador|Add0~30\ ))
-- \somador|Add0~34\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \somador|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(9),
	cin => \somador|Add0~30\,
	sumout => \somador|Add0~33_sumout\,
	cout => \somador|Add0~34\);

\PC|DOUT[9]\ : dffeas
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
	q => \PC|DOUT\(9));

\somador|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~37_sumout\ = SUM(( \PC|DOUT\(10) ) + ( GND ) + ( \somador|Add0~34\ ))
-- \somador|Add0~38\ = CARRY(( \PC|DOUT\(10) ) + ( GND ) + ( \somador|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(10),
	cin => \somador|Add0~34\,
	sumout => \somador|Add0~37_sumout\,
	cout => \somador|Add0~38\);

\PC|DOUT[10]\ : dffeas
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
	q => \PC|DOUT\(10));

\somador|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~41_sumout\ = SUM(( \PC|DOUT\(11) ) + ( GND ) + ( \somador|Add0~38\ ))
-- \somador|Add0~42\ = CARRY(( \PC|DOUT\(11) ) + ( GND ) + ( \somador|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(11),
	cin => \somador|Add0~38\,
	sumout => \somador|Add0~41_sumout\,
	cout => \somador|Add0~42\);

\PC|DOUT[11]\ : dffeas
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
	q => \PC|DOUT\(11));

\somador|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~45_sumout\ = SUM(( \PC|DOUT\(12) ) + ( GND ) + ( \somador|Add0~42\ ))
-- \somador|Add0~46\ = CARRY(( \PC|DOUT\(12) ) + ( GND ) + ( \somador|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(12),
	cin => \somador|Add0~42\,
	sumout => \somador|Add0~45_sumout\,
	cout => \somador|Add0~46\);

\PC|DOUT[12]\ : dffeas
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
	q => \PC|DOUT\(12));

\somador|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~49_sumout\ = SUM(( \PC|DOUT\(13) ) + ( GND ) + ( \somador|Add0~46\ ))
-- \somador|Add0~50\ = CARRY(( \PC|DOUT\(13) ) + ( GND ) + ( \somador|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(13),
	cin => \somador|Add0~46\,
	sumout => \somador|Add0~49_sumout\,
	cout => \somador|Add0~50\);

\PC|DOUT[13]\ : dffeas
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
	q => \PC|DOUT\(13));

\somador|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~53_sumout\ = SUM(( \PC|DOUT\(14) ) + ( GND ) + ( \somador|Add0~50\ ))
-- \somador|Add0~54\ = CARRY(( \PC|DOUT\(14) ) + ( GND ) + ( \somador|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(14),
	cin => \somador|Add0~50\,
	sumout => \somador|Add0~53_sumout\,
	cout => \somador|Add0~54\);

\PC|DOUT[14]\ : dffeas
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
	q => \PC|DOUT\(14));

\somador|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~57_sumout\ = SUM(( \PC|DOUT\(15) ) + ( GND ) + ( \somador|Add0~54\ ))
-- \somador|Add0~58\ = CARRY(( \PC|DOUT\(15) ) + ( GND ) + ( \somador|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(15),
	cin => \somador|Add0~54\,
	sumout => \somador|Add0~57_sumout\,
	cout => \somador|Add0~58\);

\PC|DOUT[15]\ : dffeas
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
	q => \PC|DOUT\(15));

\somador|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~61_sumout\ = SUM(( \PC|DOUT\(16) ) + ( GND ) + ( \somador|Add0~58\ ))
-- \somador|Add0~62\ = CARRY(( \PC|DOUT\(16) ) + ( GND ) + ( \somador|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(16),
	cin => \somador|Add0~58\,
	sumout => \somador|Add0~61_sumout\,
	cout => \somador|Add0~62\);

\PC|DOUT[16]\ : dffeas
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
	q => \PC|DOUT\(16));

\somador|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~65_sumout\ = SUM(( \PC|DOUT\(17) ) + ( GND ) + ( \somador|Add0~62\ ))
-- \somador|Add0~66\ = CARRY(( \PC|DOUT\(17) ) + ( GND ) + ( \somador|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(17),
	cin => \somador|Add0~62\,
	sumout => \somador|Add0~65_sumout\,
	cout => \somador|Add0~66\);

\PC|DOUT[17]\ : dffeas
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
	q => \PC|DOUT\(17));

\somador|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~69_sumout\ = SUM(( \PC|DOUT\(18) ) + ( GND ) + ( \somador|Add0~66\ ))
-- \somador|Add0~70\ = CARRY(( \PC|DOUT\(18) ) + ( GND ) + ( \somador|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(18),
	cin => \somador|Add0~66\,
	sumout => \somador|Add0~69_sumout\,
	cout => \somador|Add0~70\);

\PC|DOUT[18]\ : dffeas
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
	q => \PC|DOUT\(18));

\somador|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~73_sumout\ = SUM(( \PC|DOUT\(19) ) + ( GND ) + ( \somador|Add0~70\ ))
-- \somador|Add0~74\ = CARRY(( \PC|DOUT\(19) ) + ( GND ) + ( \somador|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(19),
	cin => \somador|Add0~70\,
	sumout => \somador|Add0~73_sumout\,
	cout => \somador|Add0~74\);

\PC|DOUT[19]\ : dffeas
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
	q => \PC|DOUT\(19));

\somador|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~77_sumout\ = SUM(( \PC|DOUT\(20) ) + ( GND ) + ( \somador|Add0~74\ ))
-- \somador|Add0~78\ = CARRY(( \PC|DOUT\(20) ) + ( GND ) + ( \somador|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(20),
	cin => \somador|Add0~74\,
	sumout => \somador|Add0~77_sumout\,
	cout => \somador|Add0~78\);

\PC|DOUT[20]\ : dffeas
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
	q => \PC|DOUT\(20));

\somador|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~81_sumout\ = SUM(( \PC|DOUT\(21) ) + ( GND ) + ( \somador|Add0~78\ ))
-- \somador|Add0~82\ = CARRY(( \PC|DOUT\(21) ) + ( GND ) + ( \somador|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(21),
	cin => \somador|Add0~78\,
	sumout => \somador|Add0~81_sumout\,
	cout => \somador|Add0~82\);

\PC|DOUT[21]\ : dffeas
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
	q => \PC|DOUT\(21));

\somador|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~85_sumout\ = SUM(( \PC|DOUT\(22) ) + ( GND ) + ( \somador|Add0~82\ ))
-- \somador|Add0~86\ = CARRY(( \PC|DOUT\(22) ) + ( GND ) + ( \somador|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(22),
	cin => \somador|Add0~82\,
	sumout => \somador|Add0~85_sumout\,
	cout => \somador|Add0~86\);

\PC|DOUT[22]\ : dffeas
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
	q => \PC|DOUT\(22));

\somador|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~89_sumout\ = SUM(( \PC|DOUT\(23) ) + ( GND ) + ( \somador|Add0~86\ ))
-- \somador|Add0~90\ = CARRY(( \PC|DOUT\(23) ) + ( GND ) + ( \somador|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(23),
	cin => \somador|Add0~86\,
	sumout => \somador|Add0~89_sumout\,
	cout => \somador|Add0~90\);

\PC|DOUT[23]\ : dffeas
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
	q => \PC|DOUT\(23));

\somador|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~93_sumout\ = SUM(( \PC|DOUT\(24) ) + ( GND ) + ( \somador|Add0~90\ ))
-- \somador|Add0~94\ = CARRY(( \PC|DOUT\(24) ) + ( GND ) + ( \somador|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(24),
	cin => \somador|Add0~90\,
	sumout => \somador|Add0~93_sumout\,
	cout => \somador|Add0~94\);

\PC|DOUT[24]\ : dffeas
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
	q => \PC|DOUT\(24));

\somador|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~97_sumout\ = SUM(( \PC|DOUT\(25) ) + ( GND ) + ( \somador|Add0~94\ ))
-- \somador|Add0~98\ = CARRY(( \PC|DOUT\(25) ) + ( GND ) + ( \somador|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(25),
	cin => \somador|Add0~94\,
	sumout => \somador|Add0~97_sumout\,
	cout => \somador|Add0~98\);

\PC|DOUT[25]\ : dffeas
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
	q => \PC|DOUT\(25));

\somador|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~101_sumout\ = SUM(( \PC|DOUT\(26) ) + ( GND ) + ( \somador|Add0~98\ ))
-- \somador|Add0~102\ = CARRY(( \PC|DOUT\(26) ) + ( GND ) + ( \somador|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(26),
	cin => \somador|Add0~98\,
	sumout => \somador|Add0~101_sumout\,
	cout => \somador|Add0~102\);

\PC|DOUT[26]\ : dffeas
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
	q => \PC|DOUT\(26));

\somador|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~105_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \somador|Add0~102\ ))
-- \somador|Add0~106\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \somador|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(27),
	cin => \somador|Add0~102\,
	sumout => \somador|Add0~105_sumout\,
	cout => \somador|Add0~106\);

\PC|DOUT[27]\ : dffeas
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
	q => \PC|DOUT\(27));

\somador|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~109_sumout\ = SUM(( \PC|DOUT\(28) ) + ( GND ) + ( \somador|Add0~106\ ))
-- \somador|Add0~110\ = CARRY(( \PC|DOUT\(28) ) + ( GND ) + ( \somador|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(28),
	cin => \somador|Add0~106\,
	sumout => \somador|Add0~109_sumout\,
	cout => \somador|Add0~110\);

\PC|DOUT[28]\ : dffeas
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
	q => \PC|DOUT\(28));

\somador|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~113_sumout\ = SUM(( \PC|DOUT\(29) ) + ( GND ) + ( \somador|Add0~110\ ))
-- \somador|Add0~114\ = CARRY(( \PC|DOUT\(29) ) + ( GND ) + ( \somador|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(29),
	cin => \somador|Add0~110\,
	sumout => \somador|Add0~113_sumout\,
	cout => \somador|Add0~114\);

\PC|DOUT[29]\ : dffeas
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
	q => \PC|DOUT\(29));

\somador|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~117_sumout\ = SUM(( \PC|DOUT\(30) ) + ( GND ) + ( \somador|Add0~114\ ))
-- \somador|Add0~118\ = CARRY(( \PC|DOUT\(30) ) + ( GND ) + ( \somador|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(30),
	cin => \somador|Add0~114\,
	sumout => \somador|Add0~117_sumout\,
	cout => \somador|Add0~118\);

\PC|DOUT[30]\ : dffeas
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
	q => \PC|DOUT\(30));

\somador|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador|Add0~121_sumout\ = SUM(( \PC|DOUT\(31) ) + ( GND ) + ( \somador|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(31),
	cin => \somador|Add0~118\,
	sumout => \somador|Add0~121_sumout\);

\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \somador|Add0~121_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

ww_dataOUT(0) <= \dataOUT[0]~output_o\;

ww_dataOUT(1) <= \dataOUT[1]~output_o\;

ww_dataOUT(2) <= \dataOUT[2]~output_o\;

ww_dataOUT(3) <= \dataOUT[3]~output_o\;

ww_dataOUT(4) <= \dataOUT[4]~output_o\;

ww_dataOUT(5) <= \dataOUT[5]~output_o\;

ww_dataOUT(6) <= \dataOUT[6]~output_o\;

ww_dataOUT(7) <= \dataOUT[7]~output_o\;

ww_dataOUT(8) <= \dataOUT[8]~output_o\;

ww_dataOUT(9) <= \dataOUT[9]~output_o\;

ww_dataOUT(10) <= \dataOUT[10]~output_o\;

ww_dataOUT(11) <= \dataOUT[11]~output_o\;

ww_dataOUT(12) <= \dataOUT[12]~output_o\;

ww_dataOUT(13) <= \dataOUT[13]~output_o\;

ww_dataOUT(14) <= \dataOUT[14]~output_o\;

ww_dataOUT(15) <= \dataOUT[15]~output_o\;

ww_dataOUT(16) <= \dataOUT[16]~output_o\;

ww_dataOUT(17) <= \dataOUT[17]~output_o\;

ww_dataOUT(18) <= \dataOUT[18]~output_o\;

ww_dataOUT(19) <= \dataOUT[19]~output_o\;

ww_dataOUT(20) <= \dataOUT[20]~output_o\;

ww_dataOUT(21) <= \dataOUT[21]~output_o\;

ww_dataOUT(22) <= \dataOUT[22]~output_o\;

ww_dataOUT(23) <= \dataOUT[23]~output_o\;

ww_dataOUT(24) <= \dataOUT[24]~output_o\;

ww_dataOUT(25) <= \dataOUT[25]~output_o\;

ww_dataOUT(26) <= \dataOUT[26]~output_o\;

ww_dataOUT(27) <= \dataOUT[27]~output_o\;

ww_dataOUT(28) <= \dataOUT[28]~output_o\;

ww_dataOUT(29) <= \dataOUT[29]~output_o\;

ww_dataOUT(30) <= \dataOUT[30]~output_o\;

ww_dataOUT(31) <= \dataOUT[31]~output_o\;

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
END structure;


