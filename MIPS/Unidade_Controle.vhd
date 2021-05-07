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
    palavraControle  :  out std_logic_vector(1 downto 0)
  );
end entity;


architecture arch_name of Unidade_Controle is

  alias controleULA : std_logic is palavraControle(1);
  alias controleEscreveRegC : std_logic is palavraControle(0);
  
  constant tipo_r : std_logic_vector(5 downto 0) := "000000";
  constant    add : std_logic_vector(5 downto 0) := "100000"; -- 0x20
  constant    sub : std_logic_vector(5 downto 0) := "100010"; -- 0x22

  begin

  
  controleEscreveRegC <= '1' when opCode = tipo_r else '0';
  
  controleULA <= '1' when opCode = tipo_r AND funct = sub else
						  '0' when opCode = tipo_r AND funct = add else
						  '1';
end architecture;