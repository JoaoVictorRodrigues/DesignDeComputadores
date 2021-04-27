library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

package constantesProcessador is

constant dataWidth: natural := 8;
constant addrWidth: natural := 9;
constant dataROMWidth: natural := 14;
constant opCodeWidth: natural := 4;
constant ptsCtrlWidth: natural := 8;

-- opCode e pontos de controle
subtype ptsCtrl_t is std_logic_vector(ptsCtrlWidth-1 downto 0);
constant Ctrl_LW  : ptsCtrl_t := "10000010";
constant Ctrl_SW  : ptsCtrl_t := "10000001";
constant Ctrl_JMP : ptsCtrl_t := "00000000";
constant Ctrl_NOP : ptsCtrl_t := "10000000";

subtype opCode_t is std_logic_vector(opCodeWidth-1 downto 0);
constant opLW  : opCode_t := "0000";
constant opSW  : opCode_t := "0001";
constant opJMP : opCode_t := "0010";

constant RegA : std_logic := '0';
constant RegB : std_logic := '1';

-- Formato dos pontos de controle
--alias selMUX_JMP_PC: std_logic is pontosControle(ptsCtrlWidth-1);
--alias selMUX_RAM_Imediato: std_logic is pontosControle(ptsCtrlWidth-2);
--alias selMUX_ULA_Imediato: std_logic is pontosControle(ptsCtrlWidth-3);
--alias habRegA: std_logic is pontosControle(ptsCtrlWidth-4);
--alias habRegB: std_logic is pontosControle(ptsCtrlWidth-5);
--alias ULAop: std_logic is pontosControle(ptsCtrlWidth-6);
--alias habLeituraBarramento: std_logic is pontosControle(ptsCtrlWidth-7);
--alias habEscritaBarramento: std_logic is pontosControle(ptsCtrlWidth-8);

end package constantesProcessador;