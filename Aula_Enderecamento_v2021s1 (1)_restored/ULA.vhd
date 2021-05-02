library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;   -- Biblioteca IEEE para funções aritméticas
use work.constantesProcessador.all;

entity ULA is
    port
    (
        entradaA, entradaB: 	in STD_LOGIC_VECTOR((dataWidth-1) downto 0);
		  seletor: 					in STD_LOGIC_VECTOR(2 downto 0);
        saida:  					out STD_LOGIC_VECTOR((dataWidth-1) downto 0);
		  flagZero:					out std_logic
		  --flagCarry					out std_logic;
		  --overflow              out std_logic
    );
end entity;

architecture comportamento of ULA is
	constant zero : std_logic_vector(dataWidth-1 downto 0) := (others => '0');

	 signal soma : STD_LOGIC_VECTOR((dataWidth-1) downto 0);
 	 signal subtracao : STD_LOGIC_VECTOR((dataWidth-1) downto 0);
	 signal op_and : STD_LOGIC_VECTOR((dataWidth-1) downto 0);
	 signal op_or: STD_LOGIC_VECTOR((dataWidth-1) downto 0);
	 signal op_xor: STD_LOGIC_VECTOR((dataWidth-1) downto 0);
	 signal op_not: STD_LOGIC_VECTOR((dataWidth-1) downto 0);
	 
	 --alias A_7: std_logic is entradaA(7);
	 --alias B_7: std_logic is entradaB(7);
	 
	 
    begin
		soma 		<= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
		subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		op_and		<= entradaA and entradaB;
		op_or		<= entradaA or entradaB;
		op_xor		<= entradaA xor entradaB;
		op_not		<= not entradaA;


		saida <= soma when (seletor = "000") else
			 	subtracao when (seletor = "001") else
				op_and when    (seletor = "010") else
			 	op_or  when    (seletor = "011") else
				op_xor when    (seletor = "100") else
			 	op_not when    (seletor = "101") else
				entradaA when  (seletor = "110") else
			   entradaB when  (seletor = "111") else
			 	entradaB;      -- outra opcao: saida = entradaA
	  
	  
		flagZero <= '1' when unsigned(saida) = unsigned(zero) else '0';
		
		--flagCarry <= not (A_7 and B_7);
	  
end architecture;