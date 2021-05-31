library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--- Unidade de controle, ou UC, é responsável por ativar ou desativar os componenetes do processador,
--- para que a instrução seja executada de forma correta.
--- Recebe o OpCode vindo da instrução que a ROM manda, e realiza as ativações para realizar corretamente a instrução
--- A saída é a palavra de controle, que contem os bits necessários para configura as unidades lógicas


entity Unidade_Controle is
  generic (
		
		OPC_WIDTH : NATURAL := 6
  );
  
  port   (
    -- Input ports
	 opCode :  in  std_logic_vector(OPC_WIDTH-1 downto 0);
	 funct  :  in  std_logic_vector(OPC_WIDTH-1 downto 0);
	 
    -- Output ports
    palavraControle  :  out std_logic_vector(8 downto 0)
  );
end entity;


architecture arch_name of Unidade_Controle is

	alias muxPC4 : std_logic is palavraControle(8);
	alias muxRtRd : std_logic is palavraControle(7);
	alias controleEscreveRegC : std_logic is palavraControle(6);
	alias muxRtImed : std_logic is palavraControle(5);
	alias controleULA : std_logic_vector(1 downto 0) is palavraControle(4 downto 3);
	alias muxUlaMem : std_logic is palavraControle(2);
	alias BEQ : std_logic is palavraControle(1);
	alias we : std_logic is palavraControle(0);
  
  constant tipo_r : std_logic_vector(5 downto 0) := "000000";
  signal   tipo_i : std_logic;
  constant tipo_j : std_logic_vector(5 downto 0) := "000010";

  -- Tipo I
  constant load   : std_logic_vector(5 downto 0) := "100011";
  constant op_BEQ : std_logic_vector(5 downto 0) := "000100";
  constant store  : std_logic_vector(5 downto 0) := "101011";

  constant addi   : std_logic_vector(5 downto 0) := "001000";
  constant op_ori : std_logic_vector(5 downto 0) := "001101";
  constant op_andi: std_logic_vector(5 downto 0) := "001100";
  constant op_slti: std_logic_vector(5 downto 0) := "001010";
  

  begin
  
  tipo_i <= '1' when opCode = load or opCode = addi or opCode = op_ori or 
							opCode = op_andi or opCode = op_slti or opCode = store else '0';
  
  muxRtImed <= tipo_i;
  muxRtRd <= '1' when OpCode = tipo_r else '0';
  muxPC4 <= '1' when opCode = tipo_j else '0';
  muxUlaMem <= '1' when opCode = load else '0';
  we <= '1' when opCode = store else '0';
  BEQ <= '1'when opCode = op_BEQ else '0';
  controleEscreveRegC <= '1' when opCode = tipo_r or opCode = load else '0';
  
  controleULA <= "00" when opCode = load or opCode = store else 
                 "01" when opCode = op_BEQ else
                 "10" when opCode = tipo_r else
                 "11";
  
end architecture;