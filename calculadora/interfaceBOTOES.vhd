library ieee;
use ieee.std_logic_1164.all;

entity interfaceBOTOES is
  generic ( dataWidth: natural := 8);
  
  port (
    entrada  : in std_logic_vector(3 downto 0);
	 habilita : in std_logic;
	 saida    : out std_logic_vector(dataWidth-1 downto 0)
	 );
end entity;

architecture comportamento of interfaceBOTOES is
  begin
	 saida <= "0000" & entrada when habilita = '1' else (others => 'Z');
end architecture;