library ieee;
use ieee.std_logic_1164.all;

--- Componente responsabel por possibilitar o chaveamento de dados
--- Possui duas entradas que recebem dados e um seletos que indica qual das informações será usada
--- durante o processo.
--- A saída é a transmissão do dado selecionado

entity muxGenerico2x1 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8);
  port (
    entradaA_MUX, entradaB_MUX : in std_logic_vector((larguraDados-1) downto 0);
    seletor_MUX : in std_logic;
    saida_MUX : out std_logic_vector((larguraDados-1) downto 0)
  );
end entity;

architecture comportamento of muxGenerico2x1 is
  begin
    saida_MUX <= entradaB_MUX when (seletor_MUX = '1') else entradaA_MUX;
end architecture;