library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

package constantesProcessador is

constant dataWidth: natural := 8;
constant addrWidth: natural := 8;
constant dataROMWidth: natural := 16;
constant opCodeWidth: natural := 5;
constant ptsCtrlWidth: natural := 8;

-- opCode e pontos de controle
subtype ptsCtrl_t is std_logic_vector(ptsCtrlWidth-1 downto 0);
constant Ctrl_LW  : ptsCtrl_t := "10000010";
constant Ctrl_SW  : ptsCtrl_t := "10000001";
constant Ctrl_JMP : ptsCtrl_t := "00000000";
constant Ctrl_NOP : ptsCtrl_t := "10000000";


subtype opCode_t is std_logic_vector(opCodeWidth-1 downto 0);
constant load     : opCode_t := "00000";
constant store    : opCode_t := "00001";
constant jmp      : opCode_t := "00010";
constant je       : opCode_t := "00011"; -- jump equal
constant jlt      : opCode_t := "00100"; -- jump less then
constant jsr      : opCode_t := "00101"; -- jump to adress
constant ret      : opCode_t := "00110"; -- jump back
constant soma     : opCode_t := "00111";
constant subt     : opCode_t := "01000";
constant soma_im  : opCode_t := "01001"; -- imediato
constant sub_im   : opCode_t := "01010"; -- imediato
constant soma_Car : opCode_t := "01011"; -- CARRY
constant sub_bor  : opCode_t := "01100"; -- borrow
constant mul      : opCode_t := "01101";
constant div      : opCode_t := "01110";
constant l_AND    : opCode_t := "01111";
constant l_OR     : opCode_t := "10000";
constant l_NOT    : opCode_t := "10001";
constant l_XOR    : opCode_t := "10010";
constant mov      : opCode_t := "10011";


subtype reg_t is std_logic_vector(2 downto 0);

constant Reg0 : reg_t := "000";
constant Reg1 : reg_t := "001";
constant Reg2 : reg_t := "010";
constant Reg3 : reg_t := "011";
constant Reg4 : reg_t := "100";
constant Reg5 : reg_t := "101";
constant Reg6 : reg_t := "110";
constant Reg7 : reg_t := "111";

-- Formato dos pontos de controle
--alias selMUX_JMP_PC: std_logic is pontosControle(ptsCtrlWidth-1);
--alias selMUX_RAM_Imediato: std_logic is pontosControle(ptsCtrlWidth-2);
--alias selMUX_ULA_Imediato: std_logic is pontosControle(ptsCtrlWidth-3);
--alias habRegA: std_logic is pontosControle(ptsCtrlWidth-4);
--alias habRegB: std_logic is pontosControle(ptsCtrlWidth-5);
--alias ULAop: std_logic is pontosControle(ptsCtrlWidth-6);
--alias habLeituraBarramento: std_logic is pontosControle(ptsCtrlWidth-7);
--alias habEscritaBarramento: std_logic is pontosControle(ptsCtrlWidth-8);

-- Constantes de Endereçamento
subtype addr_t is std_logic_vector(addrWidth-1 downto 0);
constant addrChave0 : addr_t := "01000000";
constant addrChave1 : addr_t := "01000001";
constant addrBotao0 : addr_t := "01000010";
constant addrBotao1 : addr_t := "01000011";
constant addrDisplay01 : addr_t := "10000000";
constant addrDisplay23 : addr_t := "10000001";
constant addrDisplay4  : addr_t := "10000010";
constant addrDisplay5  : addr_t := "10000011";



-- Chaves7_0: 0100_0000
-- Chaves8_9: 0100_0001
-- Botao0: 0100_0010
-- Botao1: 0100_0011
-- Display0_1:1000_0000
-- Display2_3:1000_0001
-- Display4: 1000_0010
-- Display5: 1000_0011

end package constantesProcessador;