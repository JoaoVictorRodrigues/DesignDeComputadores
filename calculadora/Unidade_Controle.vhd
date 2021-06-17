library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constantesProcessador.all;

entity Unidade_Controle is
  port   (
    -- Input ports
    clk  :  in  std_logic;
	 opCode  :  in  std_logic_vector(4 downto 0);
	 flagZero: in std_logic;
	 --carryOut: in std_logic;
	 
    -- Output ports
    palavraControle  :  out std_logic_vector(7 downto 0)
  );
end entity;


architecture arch_name of Unidade_Controle is
  alias selMuxProxPC : std_logic is palavraControle(7);
  alias selMuxULAImed : std_logic is palavraControle(6);
  alias HabEscritaRegistradores : std_logic is palavraControle(5);
  alias selOperacaoULA : std_logic_vector(2 downto 0) is palavraControle(4 downto 2);
  alias habLeituraMEM : std_logic is palavraControle(1);
  alias habEscritaMEM : std_logic is palavraControle(0);

  begin

  
  selMuxProxPC <= '1' when opCode = jmp or opCode = je or opCode = jsr or opCode = jlt or opCode = ret else '0';
  selMuxULAImed <= '1' when opCode = soma_im or opCode = mov or opCode = sub_im else '0';
  HabEscritaRegistradores <= '1' when opCode = load or opCode = mov or opCode = soma or opCode = soma_im or opCode = subt or opCode = sub_im or opCode = soma_Car or opCode = sub_bor or opCode = mul or opCode = div or opCode = l_AND or opCode = l_NOT or opCode = l_OR or opCode = l_XOR else '0';
  selOperacaoULA <= "000" when opCode = soma or opCode = soma_im or opCode = soma_Car or opCode = mul  else
                    "001" when opCode = subt  or opCode = sub_bor or opCode = sub_im or opCode = div else
                    "010" when opCode = l_AND else
                    "011" when opCode = l_OR  else
                    "100" when opCode = l_XOR else
                    "101" when opCode = l_NOT else
						  "110" when opCode = store else
						  "111"; -- Entrada B para a saida 
						  
  hableituraMEM <= '1' when opCode = load or opCode = soma or opCode = subt or opCode = soma_Car or opCode = sub_bor or opCode = mul or opCode = div;
  habEscritaMEM <= '1' when opCode = store else '0';
end architecture;