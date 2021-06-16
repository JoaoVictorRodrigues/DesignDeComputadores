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
    palavraControle  :  out std_logic_vector(14 downto 0)
  );
end entity;


architecture arch_name of Unidade_Controle is

	alias muxJRPC4 : std_logic is palavraControle(14);
	alias muxPC4 : std_logic is palavraControle(13);
	alias muxRtRd : std_logic_vector is palavraControle(12 downto 11);
	alias extensor : std_logic_vector(1 downto 0) is palavraControle(10 downto 9);
	alias controleEscreveRegC : std_logic is palavraControle(8);
	alias muxRtImed : std_logic is palavraControle(7);
	alias controleULA : std_logic_vector(2 downto 0) is palavraControle(6 downto 4);
	alias muxUlaMem : std_logic is palavraControle(3);
	alias BEQ : std_logic is palavraControle(2);
	alias BNE : std_logic is palavraControle(1);
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
  constant op_lui : std_logic_vector(5 downto 0) := "001111";
  constant op_bne : std_logic_vector(5 downto 0) := "000101";
  constant op_jal : std_logic_vector(5 downto 0) := "000011";


  begin
  
  tipo_i <= '1' when opCode = load or opCode = store or opCode = op_lui or
							opCode = addi or opCode = op_andi or opCode = op_ori or
							opCode = op_slti else '0';
  
  
  muxJRPC4 <= '1' when opCode = tipo_r and funct = "001000" else '0';
  muxPC4 <= '1' when opCode = tipo_j or opCode = op_jal else '0';
  muxRtRd <=  "10" when opCode = op_jal  else 
				  "01" when OpCode = tipo_r  else 
				  "00";
				  
  extensor <= "01" when opCode = op_lui else 
				  "10" when opCode = op_ori else
				  "00";
				  
  muxRtImed <= tipo_i;
  
  controleULA <= "000" when opCode = load or opCode = store or opCode = addi else 
                 "001" when opCode = op_BEQ or opCode = op_bne else
                 "010" when opCode = tipo_r else
					  "011" when opCode = op_ori else
					  "100" when opCode = op_slti else
					  "101" when opCode = op_andi else
					  "110" when opCode = op_lui else
					  "111";
					  
  controleEscreveRegC <= '1' when opCode = tipo_r or opCode = load or opCode = op_lui or 
									  opCode = addi or opCode = op_andi or opCode = op_ori or
									  opCode = op_slti or opCode = op_jal else '0';
									  
  muxUlaMem <= '1' when opCode = load else '0';
  BEQ <= '1'when opCode = op_BEQ else '0';
  BNE <= '1'when opCode = op_bne else '0';
  we <= '1' when opCode = store else '0';
  
  
  
  
  
end architecture;