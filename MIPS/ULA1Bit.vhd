library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

--- Unidade que realiza a operações da ULA com um unico bit,
--- Utilizada de forma combinada, uma para cada bit, para compor a ULA principal do sistema.

entity ULA1Bit is
    port
    (
      entradaA, entradaB, CarryIn:  in STD_LOGIC;
      seletor : in std_logic_vector (2 downto 0);
		less:  in STD_LOGIC;
      saida, CarryOut, set:    out STD_LOGIC
    );
end entity;

architecture comportamento of ULA1Bit is

   signal op_and  	  : STD_LOGIC;
   signal op_or  		  : STD_LOGIC;
	signal operacao  	  : STD_LOGIC;
	signal op_carryOut  : STD_LOGIC;
	signal op_slt		  : STD_LOGIC;
	signal inverte		  : STD_LOGIC;
	alias seletor1 : std_logic_vector(1 downto 0) is seletor(1 downto 0);
	
    begin
		
		inverte <= (not entradaB) when (seletor(2) = '1') else entradaB;
		
      op_and    	 <= entradaA and entradaB;
      op_or     	 <= entradaA or entradaB;
		operacao     <= ((entradaA xor inverte) xor CarryIn);
		op_carryOut  <= (CarryIn and (entradaA xor inverte)) or (entradaA and inverte);
		op_slt       <= less;


      saida <= op_and   when (seletor1 = "00") else
					op_or    when (seletor1 = "01") else
					operacao when (seletor1 = "10") else
					op_slt   when (seletor1 = "11") else
					'1';
		CarryOut <= op_carryOut;
		
		set <= ((entradaA xor inverte) xor CarryIn);

end architecture;