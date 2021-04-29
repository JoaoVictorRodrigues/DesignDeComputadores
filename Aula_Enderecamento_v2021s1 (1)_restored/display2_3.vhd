library ieee;
use ieee.std_logic_1164.all;
use work.constantesProcessador.all;

entity display2_3 is
  
  port (
    -- Input ports
    clk     : in  std_logic;
    barramentoEscritaDados :in std_logic_vector(dataWidth-1 downto 0);
	 habilita: in std_logic;

    -- Output ports
    display2 :  out  std_logic_vector(6 downto 0);
	 display3 : out  std_logic_vector(6 downto 0)
	 
  );
end entity;


architecture arch_name of display2_3 is

  signal regOut: std_logic_vector(dataWidth-1 downto 0);
  alias regOut2: std_logic_vector(3 downto 0) is regOut(3 downto 0);
  alias regOut3: std_logic_vector(3 downto 0) is regOut(7 downto 4);
  
  

begin

  reg:  entity work.registradorGenerico generic map (larguraDados => dataWidth)
         port map (DIN => barramentoEscritaDados, DOUT =>  regOut, ENABLE =>  habilita, CLK =>  clk, RST => '0');
			
	
  disp2: entity work.conversorHex7Seg port map
    (
        dadoHex => regOut2,
        saida7seg => display2
    );

  disp3: entity work.conversorHex7Seg port map
    (
        dadoHex => regOut3,
        saida7seg => display3 
    );
	 

end architecture;