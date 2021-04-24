library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constantesProcessador.all;

entity calculadora is
  port   (
-- Entradas (placa)
    CLOCK_50 : in STD_LOGIC;
--    KEY: in STD_LOGIC_VECTOR(3 DOWNTO 0);
    SW: in STD_LOGIC_VECTOR(7 DOWNTO 0);
    -- Input ports
    --clk  : in  std_logic;
    -- Output ports
    programCounter  :  out  std_logic_vector(addrWidth-1 downto 0);
	 saidaRegistradores :  out  std_logic_vector(dataWidth-1 downto 0);
	 LEDR  : out STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0')
  );
end entity;


architecture arch_name of calculadora is
  signal barramentoLeituraDados, barramentoEscritaDados : std_logic_vector(dataWidth-1 DOWNTO 0);
  signal habilitaBlocos : std_logic_vector(3 DOWNTO 0);
begin
  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
  CPU:  entity work.Processador_Calculadora --generic map (DATA_WIDTH => dataWidth, ADDR_WIDTH => addrWidth)
          port map (programCounter => programCounter, saidaRegistradores => saidaRegistradores, CLOCK_50 => CLOCK_50);

  saidaLEDs: entity work.interfaceLEDs
        port map (clk => CLOCK_50, entrada => barramentoEscritaDados(dataWidth-1 downto 0), saida => LEDR(dataWidth-1 downto 0), habilita => habilitaBlocos(3));

  entradaChaves: entity work.interfaceCHAVES
        port map (entrada => SW(dataWidth-1 downto 0), saida => barramentoLeituraDados(dataWidth-1 downto 0), habilita => habilitaBlocos(2));
end architecture;