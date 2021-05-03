library ieee;
use ieee.std_logic_1164.all;
use work.constantesProcessador.all;

entity display4 is
  
  port (
    -- Input ports
    clk     : in  std_logic;
    barramentoEscritaDados :in std_logic_vector(dataWidth-1 downto 0);
	 habilita: in std_logic;

    -- Output ports
    display4 :  out  std_logic_vector(6 downto 0)
	 
  );
end entity;


architecture arch_name of display4 is

  signal regOut: std_logic_vector(dataWidth-1 downto 0);
  alias regOut4: std_logic_vector(3 downto 0) is regOut(3 downto 0);
  
begin

  reg:  entity work.registradorGenerico generic map (larguraDados => dataWidth)
         port map (DIN => barramentoEscritaDados, DOUT =>  regOut, ENABLE =>  habilita, CLK =>  clk, RST => '0');
			
	
  disp4: entity work.conversorHex7Seg port map
    (
		dadoHex => regOut4,
      saida7seg => display4
    );
	 

end architecture;