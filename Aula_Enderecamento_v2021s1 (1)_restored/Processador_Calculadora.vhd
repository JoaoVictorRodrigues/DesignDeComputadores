library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constantesProcessador.all;

entity Processador_Calculadora is

  port   (
    -- Input ports
    CLOCK_50     : in  std_logic;
    -- Output ports
    saidaRegistradores :  out  std_logic_vector(dataWidth-1 downto 0);
	 programCounter  :  out  std_logic_vector(addrWidth-1 downto 0)
  );
end entity;


architecture arch_name of Processador_Calculadora is
  signal progCount : std_logic_vector(addrWidth-1 downto 0);
  --signal saiAcumulador : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal pontosControle : std_logic_vector(7 downto 0);
  signal opCode : std_logic_vector(4 downto 0);
  
begin

  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
  FD:  entity work.Aula_Enderecamento --generic map (DATA_WIDTH => dataWidth, ADDR_WIDTH => addrWidth)
          port map (palavraControle => pontosControle, opCode => opCode, saidaRegistradores => saidaRegistradores, 
						  programCounter => programCounter, CLOCK_50 =>  CLOCK_50);
  UC:  entity work.Unidade_Controle
          port map (palavraControle => pontosControle, opCode => opCode, clk =>  CLOCK_50);
end architecture;