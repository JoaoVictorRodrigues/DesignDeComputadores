library ieee;
use ieee.std_logic_1164.all;

entity display0_1 is
  
  port (
    -- Input ports
    clk     : in  std_logic;
    barramentoEscritaDados :in std_logic_vector(dataWidth-1 downto 0);
	 habilita: in std_logic;

    -- Output ports
    display0 :  out  std_logic_vector(6 downto 0);
	 display1 :  out  std_logic_vector(6 downto 0)
	 
  );
end entity;


architecture arch_name of display0_1 is

  signal regOut: std_logic_vector(dataWidth-1 downto 0);
  alias regOut0: std_logic_vector(3 downto 0) is regOut(3 downto 0);
  alias regOut1: std_logic_vector(3 downto 0) is regOut(7 downto 4);
  
  

begin

  reg:  entity work.registradorGenerico generic map (larguraDados => dataWidth)
         port map (DIN => barramentoEscritaDados, DOUT =>  regOut, ENABLE =>  habilita, CLK =>  clk, RST => '0');
			
	
  disp0: entity work.conversorHex7Seg 
		port map(
        dadoHex => regOut0,
        saida7seg => display0  
		);

  disp1: entity work.conversorHex7Seg 
		port map(
        dadoHex => regOut1,
        saida7seg => display1 
		);
	 

end architecture;