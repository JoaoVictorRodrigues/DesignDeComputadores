library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constantesProcessador.all;

entity calculadora is
  port (
-- Entradas (placa)
      CLOCK_50 : in STD_LOGIC;
      KEY: in STD_LOGIC_VECTOR(3 DOWNTO 0);
		SW: in STD_LOGIC_VECTOR(9 DOWNTO 0);
    -- Output ports
    PC: out std_logic_vector (addrWidth-1 downto 0);
	 LEDR  : out STD_LOGIC_VECTOR(9 DOWNTO 0) := (others => '0');
	 HEX0,HEX1,HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(6 downto 0)
	 );
	 
end entity;


architecture arch_name of calculadora is
  signal barramentoLeituraDados, barramentoEscritaDados : std_logic_vector(dataWidth-1 DOWNTO 0);
  --signal habilitaBlocos : std_logic_vector(3 DOWNTO 0);
  signal barramentoEnderecos : std_logic_vector (addrWidth-1 DOWNTO 0);
  signal clk : std_logic;
  signal pontosControle : std_logic_vector(ptsCtrlWidth-1 downto 0);
  signal WR,RR: std_logic;
  signal selecao: std_logic_vector(1 downto 0);
  signal chaves8_9: std_logic_vector(dataWidth-1 downto 0);
  signal botoes0_1: std_logic_vector(dataWidth-1 downto 0);
  
  signal habilitaRAM: std_logic;
  signal habilitaChaves7_0: std_logic;
  signal habilitaChaves8_9: std_logic;
  signal habilitaBotao0: std_logic;
  -- signal habilitaBotao1: std_logic;
  signal habilitaDisplay0_1: std_logic;
  signal habilitaDisplay2_3: std_logic;
  signal habilitaDisplay4: std_logic;
  signal habilitaDisplay5: std_logic;
  
  
  alias habLeituraBarramento: std_logic is pontosControle(ptsCtrlWidth-7);
  alias habEscritaBarramento: std_logic is pontosControle(ptsCtrlWidth-8);
begin
  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
   --generic map (DATA_WIDTH => dataWidth, ADDR_WIDTH => addrWidth)
  Processador:  entity work.Processador 
      port map (barramentoDadosEntrada => barramentoLeituraDados,
                    barramentoDadosSaida => barramentoEscritaDados,
                    barramentoEndereco => barramentoEnderecos,
                    writeRam => WR,
                    readRam => RR,
						        PC_out => PC,
							      CLOCK_50 => CLOCK_50);
  
  RAM: entity work.memoriaRAM
			port map (clk => CLOCK_50, addr => barramentoEnderecos(5 downto 0), we => WR,
							  re => RR, habilita => habilitaRAM,
							  dado_in => barramentoEscritaDados, dado_out => barramentoLeituraDados);
							  
  Decoder: entity work.decodificadorEnderecos
      port map (barramentoEnderecos => barramentoEnderecos,
		 leitura => RR,
		 escrita=> WR,
		 habilitaRAM => habilitaRAM ,habilitaChaves7_0 => habilitaChaves7_0, 
		 habilitaChaves8_9 => habilitaChaves8_9, habilitaBotao0 => habilitaBotao0, 
		--  habilitaBotao1 => habilitaBotao1 ,
		 habilitaDisplay0_1 => habilitaDisplay0_1, 
		 habilitaDisplay2_3 => habilitaDisplay2_3, habilitaDisplay4 => habilitaDisplay4, 
		 habilitaDisplay5 => habilitaDisplay5
	 );
					 
 -- saidaLEDs: entity work.interfaceLEDs
 --       port map (clk => CLOCK_50, entrada => barramentoEscritaDados(dataWidth-1 downto 0), saida => LEDR(dataWidth-1 downto 0), habilita => habilitaBlocos(3));

  entradaChaves0_7: entity work.interfaceCHAVES
        port map (entrada => SW(dataWidth-1 downto 0), saida => barramentoLeituraDados(dataWidth-1 downto 0), habilita => habilitaChaves7_0);
  
  entradaChaves8_9: entity work.interfaceCHAVES
        port map (entrada => chaves8_9, saida => barramentoLeituraDados(dataWidth-1 downto 0), habilita => habilitaChaves8_9);
		  
  chaves8_9(1 downto 0)<= SW(9 downto 8);
		  
  chaves8_9(7 downto 2) <= (others => '0');
  
  entradaBotao: entity work.interfaceBOTOES
		  port map ( entrada => KEY(3 downto 0), saida => barramentoLeituraDados(dataWidth-1 downto 0), habilita => habilitaBotao0);
  
  disp0_1: entity work.display0_1
			port map(clk => CLOCK_50, 
						barramentoEscritaDados => barramentoEscritaDados ,
						habilita => habilitaDisplay0_1,
						display0 => Hex0,
						display1 => Hex1);
						
  disp2_3: entity work.display2_3
			port map(clk => CLOCK_50, 
						barramentoEscritaDados => barramentoEscritaDados ,
						habilita => habilitaDisplay2_3,
						display2 => Hex2,
						display3 => Hex3); 
						
  disp4: entity work.display4
			port map(clk => CLOCK_50, 
						barramentoEscritaDados => barramentoEscritaDados ,
						habilita => habilitaDisplay4,
						display4 => Hex4);  	

  disp5: entity work.display5
			port map(clk => CLOCK_50, 
						barramentoEscritaDados => barramentoEscritaDados ,
						habilita => habilitaDisplay5,
						display5 => Hex5);  	
  LEDR <= SW;
end architecture;