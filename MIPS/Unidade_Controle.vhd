library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Unidade_Controle is
  generic (
		
		OPC_WIDTH : NATURAL := 6
  );
  
  port   (
    -- Input ports
	 opCode :  in  std_logic_vector(OPC_WIDTH-1 downto 0);
	 funct  :  in  std_logic_vector(OPC_WIDTH-1 downto 0);
	 
    -- Output ports
    palavraControle  :  out std_logic_vector(9 downto 0)
  );
end entity;


architecture arch_name of Unidade_Controle is

  alias muxPC4 : std_logic is palavraControle(9);
  alias muxRtRd : std_logic is palavraControle(8);
	alias controleEscreveRegC : std_logic is palavraControle(7);
	alias muxRtImed : std_logic is palavraControle(6);
	alias controleULA : std_logic_vector(2 downto 0) is palavraControle(5 downto 3);
	alias muxUlaMem : std_logic is palavraControle(2);
	alias BEQ : std_logic is palavraControle(1);
	-- alias muxHabLeMem : std_logic is palavraControle(1);
	alias we : std_logic is palavraControle(0);
  
  constant tipo_r : std_logic_vector(5 downto 0) := "000000";
  signal   tipo_i : std_logic;
  constant tipo_j : std_logic_vector(5 downto 0) := "000010";
  
  
  constant add : std_logic_vector(5 downto 0) := "100000"; -- 0x20
  constant sub : std_logic_vector(5 downto 0) := "100010"; -- 0x22
  constant op_and : std_logic_vector(5 downto 0) := "100100";
  constant op_or : std_logic_vector(5 downto 0) := "100101";
  constant op_slt : std_logic_vector(5 downto 0) := "101010";
  
  constant load   : std_logic_vector(5 downto 0) := "100011";
  constant opBEQ  : std_logic_vector(5 downto 0) := "000100";
  constant store  : std_logic_vector(5 downto 0) := "101011";
  constant addi   : std_logic_vector(5 downto 0) := "001000";
  constant op_ori : std_logic_vector(5 downto 0) := "001101";
  constant op_andi: std_logic_vector(5 downto 0) := "001100";
  constant op_slti: std_logic_vector(5 downto 0) := "001010";
  constant jmp		: std_logic_vector(5 downto 0) := "000010";
  

  begin
  
  tipo_i <= '1' when opCode = opbeq or opCode = load or 
					opCode = addi or opCode = op_ori or opCode = op_andi or opCode = op_slti or opCode = store else '0';
  
  muxPC4 <= '1' when opCode = jmp else '0';
  muxRtImed <= tipo_i;
  muxRtRd <= not tipo_i;
  muxUlaMem <= '1' when opCode = load else '0';
  we <= '1' when opCode = store else '0';
  --we <= '0' when opCode = store else '1';
  -- HabEscMem <= '1' when opCode = store else '0';
  BEQ <= '1'when opCode = opBEQ else '0';
  
  controleEscreveRegC <= '1' when opCode = tipo_r or opCode = load else '0';
  
  controleULA <= "110" when opCode = tipo_r AND funct = sub else
					  "010" when opCode = tipo_r AND funct = add else
					  "000" when opCode = tipo_r AND funct = op_and else
					  "001" when opCode = tipo_r AND funct = op_or else
					  "111" when opCode = tipo_r AND funct = op_slt else
					  "010" when oPcode = load else
					  "000";
  
end architecture;