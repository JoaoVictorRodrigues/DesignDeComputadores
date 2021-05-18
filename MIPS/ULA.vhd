library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA is
    generic
    (
        larguraDados : natural := 8
    );
    port
    (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(2 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      flagZero: out std_logic
    );
end entity;

architecture comportamento of ULA is
	constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');

   signal sum :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal sub : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_and :    STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_or :     STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_xor :    STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_not :    STD_LOGIC_VECTOR((larguraDados-1) downto 0);

    begin
      sum      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      sub      <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
      op_and    <= entradaA and entradaB;
      op_or     <= entradaA or entradaB;
      op_xor    <= entradaA xor entradaB;
      op_not    <= not entradaA;

      saida <= op_and when (seletor = "000") else
               op_or when (seletor = "001") else
               sum when   (seletor = "010") else
               sub when   (seletor = "110") else
              --  slt when   (seletor = "111") else
          
          entradaA;      -- outra opcao: saida = entradaA

      flagZero <= '1' when unsigned(saida) = unsigned(zero) else '0';

end architecture;