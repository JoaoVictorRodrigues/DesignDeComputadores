LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

PACKAGE op_constants IS
    CONSTANT opcode_w : NATURAL := 8;

    CONSTANT load  : STD_LOGIC_VECTOR(opcode_w - 1 DOWNTO 0) := "00000";
    CONSTANT store : STD_LOGIC_VECTOR(opcode_w - 1 DOWNTO 0) := "00001";
    CONSTANT jmp   : STD_LOGIC_VECTOR(opcode_w - 1 DOWNTO 0) := "00010";
    CONSTANT je    : STD_LOGIC_VECTOR(opcode_w - 1 DOWNTO 0) := "00011";
    CONSTANT jlt   : STD_LOGIC_VECTOR(opcode_w - 1 DOWNTO 0) := "00100";
    CONSTANT jsr   : STD_LOGIC_VECTOR(opcode_w - 1 DOWNTO 0) := "00101";
    CONSTANT rte   : STD_LOGIC_VECTOR(opcode_w - 1 DOWNTO 0) := "00110";
    CONSTANT soma_mem: STD_LOGIC_VECTOR(opcode_w - 1 DOWNTO 0) := "00111";
    CONSTANT sub_mem : STD_LOGIC_VECTOR(opcode_w - 1 DOWNTO 0) := "01000";
    CONSTANT soma_ime: STD_LOGIC_VECTOR(opcode_w - 1 DOWNTO 0) := "01001";
    CONSTANT sub_ime : STD_LOGIC_VECTOR(opcode_w - 1 DOWNTO 0) := "01010";
    CONSTANT soma_cry: STD_LOGIC_VECTOR(opcode_w - 1 DOWNTO 0) := "01011";
    CONSTANT sub_bor : STD_LOGIC_VECTOR(opcode_w - 1 DOWNTO 0) := "01100";
	 CONSTANT mul     : STD_LOGIC_VECTOR(opcode_w - 1 DOWNTO 0) := "01101";
	 CONSTANT div     : STD_LOGIC_VECTOR(opcode_w - 1 DOWNTO 0) := "01111";
	 CONSTANT ands    : STD_LOGIC_VECTOR(opcode_w - 1 DOWNTO 0) := "10000";
	 CONSTANT ors     : STD_LOGIC_VECTOR(opcode_w - 1 DOWNTO 0) := "10001";
	 CONSTANT nots    : STD_LOGIC_VECTOR(opcode_w - 1 DOWNTO 0) := "10010";
	 CONSTANT xors    : STD_LOGIC_VECTOR(opcode_w - 1 DOWNTO 0) := "10011";

END PACKAGE op_constants;