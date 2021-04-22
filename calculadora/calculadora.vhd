library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity calculadora is
  generic   (
    DATA_WIDTH  : natural :=  16;
    ADDR_WIDTH  : natural :=  12
  );

  port   (
    -- Input ports
    clk  : in  std_logic;
    -- Output ports
    programCounter  :  out  std_logic_vector(ADDR_WIDTH-1 downto 0);
	 saidaRegistradores :  out  std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end entity;


architecture arch_name of calculadora is
  
begin
  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
  CPU:  entity work.Processador_Calculadora generic map (DATA_WIDTH => DATA_WIDTH, ADDR_WIDTH => ADDR_WIDTH)
          port map (programCounter => programCounter, saidaRegistradores => saidaRegistradores, clk => clk);

end architecture;