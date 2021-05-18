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
  
  -- Tipo R
  -- constant add : std_logic_vector(5 downto 0) := "100000"; -- 0x20
  -- constant sub : std_logic_vector(5 downto 0) := "100010"; -- 0x22
  -- constant op_and : std_logic_vector(5 downto 0) := "100100";
  -- constant op_or : std_logic_vector(5 downto 0) := "100101";
  -- constant op_slt : std_logic_vector(5 downto 0) := "101010";
  -- Tipo I
  constant load   : std_logic_vector(5 downto 0) := "100011";
  constant op_BEQ  : std_logic_vector(5 downto 0) := "000100";
  constant store  : std_logic_vector(5 downto 0) := "101011";

  constant addi   : std_logic_vector(5 downto 0) := "001000";
  constant op_ori : std_logic_vector(5 downto 0) := "001101";
  constant op_andi: std_logic_vector(5 downto 0) := "001100";
  constant op_slti: std_logic_vector(5 downto 0) := "001010";
  -- constant jmp		: std_logic_vector(5 downto 0) := "000010";
  

  begin
  
  tipo_i <= '1' when opCode = op_BEQ or opCode = load or 
					          opCode = addi or opCode = op_ori or 
                    opCode = op_andi or opCode = op_slti else '0';
  
  muxRtImed <= tipo_i;
  muxRtRd <= not tipo_i;
  muxPC4 <= '1' when opCode = tipo_j else '0';
  muxUlaMem <= '1' when opCode = load else '0';
  we <= '1' when opCode = load else '0';
  BEQ <= '1'when opCode = op_BEQ else '0';
  controleEscreveRegC <= '1' when opCode = tipo_r or opCode = load else '0';
  
  controleULA <= "00" when opCode = load or opCode = store else 
                 "01" when opCode = op_BEQ else
                 "10" when opCode = tipo_r else
                 "11";
                 
  
end architecture;