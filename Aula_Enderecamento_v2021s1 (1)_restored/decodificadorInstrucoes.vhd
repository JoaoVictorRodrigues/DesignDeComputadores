library ieee;
use ieee.std_logic_1164.all;
use work.constantesProcessador.all;

entity decodificadorInstrucoes is
  port (
    opCode  : in std_logic_vector(oPcodeWidth-1 downto 0);
    pontosControle : out std_logic_vector(ptsCtrlWidth-1 downto 0)
  );
end entity;

architecture comportamento of decodificadorInstrucoes is
  begin
	 with opCode select
	 pontosControle <= Ctrl_LW when opLW,
				    Ctrl_SW when opSW,
					 Ctrl_JMP when opJMP,
					 Ctrl_NOP when others;
end architecture;