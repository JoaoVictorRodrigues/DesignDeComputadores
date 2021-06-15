library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--- Unidade de controle dedicada a ULA, responsável por decodificar os pontos de controle recebidos
--- da UC principal e selecionar qual a operação ela deve executar.
--- Dada a operação, a UC_ULA também recebe o campo funct para indicar qual a operação será executada


entity UC_ULA is 
    generic (
        OPC_WIDTH : NATURAL := 6
    );
    port   (
        -- Input ports
        ulaOP :  in  std_logic_vector(1 downto 0);
        funct  :  in  std_logic_vector(5 downto 0);
        -- Output ports
        ulaCtrl  :  out std_logic_vector(2 downto 0)
      );
end entity;

architecture arch_name of UC_ULA is
    
    constant add : std_logic_vector(5 downto 0) := "100000"; -- 0x20
    constant sub : std_logic_vector(5 downto 0) := "100010"; -- 0x22
    constant op_and : std_logic_vector(5 downto 0) := "100100";
    constant op_or : std_logic_vector(5 downto 0) := "100101";
    constant op_slt : std_logic_vector(5 downto 0) := "101010";

    begin
        ulaCtrl <= "000" when ulaOP = "10" and funct = op_and else
						 "001" when ulaOP = "10" and funct = op_or else
						 "010" when ulaOP = "10" and funct = add else
						 "110" when ulaOP = "10" and funct = sub else
						 "111" when ulaOP = "10" and funct = op_slt else
						 "010" when ulaOP = "00" else
						 "110" when ulaOP = "01" else
						 "001" when ulaOp = "11" else
						 "000";

end architecture;