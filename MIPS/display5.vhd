library ieee;
use ieee.std_logic_1164.all;


entity display5 is
  
  port (
    -- Input ports
    clk     : in  std_logic;
    barramentoEscritaDados :in std_logic_vector(dataWidth-1 downto 0);
	 habilita: in std_logic;

    -- Output ports
    display5 :  out  std_logic_vector(6 downto 0)
	 
  );
end entity;


architecture arch_name of display5 is

  signal regOut: std_logic_vector(dataWidth-1 downto 0);
  alias regOut5: std_logic_vector(3 downto 0) is regOut(3 downto 0);
  
begin

  reg:  entity work.registradorGenerico generic map (larguraDados => dataWidth)
         port map (DIN => barramentoEscritaDados, DOUT =>  regOut, ENABLE =>  habilita, CLK =>  clk, RST => '0');
			
	
  disp5	: entity work.conversorHex7Seg port map
    (
		dadoHex => regOut5,
      saida7seg => display5
    );
	 

end architecture;