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
	 flagZero: in std_logic := '0';
	 
    -- Output ports
    palavraControle  :  out std_logic_vector(10 downto 0)
  );
end entity;


architecture arch_name of Unidade_Controle is

   alias muxRtRd : std_logic is palavraControle(10);
	alias controleEscreveRegC : std_logic is palavraControle(9);
	alias muxRtImed : std_logic is palavraControle(8);
	alias controleULA : std_logic_vector(3 downto 0) is palavraControle(7 downto 4);
	alias muxUlaMem : std_logic is palavraControle(3);
	alias BEQ : std_logic is palavraControle(2);
	alias muxHabLeMem : std_logic is palavraControle(1);
	alias muxHabEscMem : std_logic is palavraControle(0);
  
  constant tipo_r : std_logic_vector(5 downto 0) := "000000";
  signal   tipo_i : std_logic;
  constant tipo_j : std_logic_vector(5 downto 0) := "000010";
  
  
  constant    add : std_logic_vector(5 downto 0) := "100000"; -- 0x20
  constant    sub : std_logic_vector(5 downto 0) := "100010"; -- 0x22
  constant op_and : std_logic_vector(5 downto 0) := "100100";
  constant  op_or : std_logic_vector(5 downto 0) := "100101";
  constant op_slt : std_logic_vector(5 downto 0) := "101010";
  
  constant load   : std_logic_vector(5 downto 0) := "100011";
  constant opBEQ  : std_logic_vector(5 downto 0) := "000100";
  constant store  : std_logic_vector(5 downto 0) := "101011";
  constant addi   : std_logic_vector(5 downto 0) := "001000";
  constant op_ori : std_logic_vector(5 downto 0) := "001101";
  constant op_andi: std_logic_vector(5 downto 0) := "001100";
  constant op_slti: std_logic_vector(5 downto 0) := "001010";
  

  begin
  
  tipo_i <= '1' when opCode = opbeq or opCode = load or 
					opCode = addi or opCode = op_ori or opCode = op_andi or opCode = op_slti else '0';
  
  muxRtImed <= tipo_i;
  muxRtRd <= not tipo_i;
  muxUlaMem <= '1' when opCode = load else '0';
  muxHabLeMem <= '1' when opCode = load else '0';
  muxHabEscMem <= '1' when opCode = store else '0';
  BEQ <= '1'when opCode = opBEQ else '0';
  
  controleEscreveRegC <= '1' when opCode = tipo_r or opCode = load else '0';
  
  controleULA <= "0001" when opCode = tipo_r AND funct = sub else
					  "0000" when opCode = tipo_r AND funct = add else
					  "0110" when opCode = tipo_r AND funct = op_and else
					  "0100" when opCode = tipo_r AND funct = op_or else
					  "0000" when opCode = tipo_r AND funct = op_slt else
					  "0111";
  
end architecture;