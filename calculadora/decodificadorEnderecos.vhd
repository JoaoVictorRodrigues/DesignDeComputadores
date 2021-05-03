library ieee;
use ieee.std_logic_1164.all;
use work.constantesProcessador.all;

entity decodificadorEnderecos is
  port (
    barramentoEnderecos  : in std_logic_vector(7 downto 0);
	 leitura: in std_logic;
	 escrita: in std_logic;
	 
    habilitaRAM,habilitaChaves7_0, habilitaChaves8_9 : out std_logic;
	 habilitaBotao0, habilitaBotao1,habilitaDisplay0_1: out std_logic;
	 habilitaDisplay2_3, habilitaDisplay4, habilitaDisplay5: out std_logic
  );
end entity;

-- RAM: 0000_0000 - 0011_1111
-- Chaves7_0: 0100_0000
-- Chaves8_9: 0100_0001
-- Botao0: 0100_0010
-- Botao1: 0100_0011
-- Display0_1:1000_0000
-- Display2_3:1000_0001
-- Display4: 1000_0010
-- Display5: 1000_0011

architecture comportamento of decodificadorEnderecos is

	signal posicaoZero : std_logic;
	signal posicaoUM : std_logic;
	signal posicaoDois : std_logic;
	signal posicaoTres : std_logic;
	signal Bloco0, Bloco1, Bloco2 : std_logic; 
	--Bloco3: std_logic;

  begin
  
   posicaoZero <= not (barramentoEnderecos(5) or barramentoEnderecos(4) or barramentoEnderecos(3) or barramentoEnderecos(2) or barramentoEnderecos(1) or barramentoEnderecos(0)); 
	posicaoUM   <= not (barramentoEnderecos(5) or barramentoEnderecos(4) or barramentoEnderecos(3) or barramentoEnderecos(2) or barramentoEnderecos(1) or (not barramentoEnderecos(0))); 
	posicaoDois <= not (barramentoEnderecos(5) or barramentoEnderecos(4) or barramentoEnderecos(3) or barramentoEnderecos(2) or (not barramentoEnderecos(1)) or barramentoEnderecos(0)); 
	posicaoTres <= not (barramentoEnderecos(5) or barramentoEnderecos(4) or barramentoEnderecos(3) or barramentoEnderecos(2) or (not barramentoEnderecos(1)) or (not barramentoEnderecos(0))); 
	
	Bloco0 <= '1' when barramentoEnderecos(7 downto 6) = "00"  else '0';
	Bloco1 <= '1' when barramentoEnderecos(7 downto 6) = "01"  else '0';
	Bloco2 <= '1' when barramentoEnderecos(7 downto 6) = "10"  else '0';
	--Bloco3 <= '1' when barramentoEnderecos(7 downto 6) = "11"  else '0';
	
	habilitaRAM <= Bloco0;
	
	habilitaChaves7_0 <= Bloco1 and posicaoZero and leitura;
	habilitaChaves8_9 <= Bloco1 and posicaoUM and leitura;
	habilitaBotao0 <= Bloco1 and posicaoDois and leitura;
	habilitaBotao1 <= Bloco1 and posicaoTres and leitura;
	
	habilitaDisplay0_1 <= Bloco2 and posicaoZero and escrita;
	habilitaDisplay2_3 <= Bloco2 and posicaoUM   and escrita;
	habilitaDisplay4   <= Bloco2 and posicaoDois and escrita;
	habilitaDisplay5   <= Bloco2 and posicaoTres and escrita;
	
end architecture;