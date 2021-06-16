library ieee;
use ieee.std_logic_1164.all;

--- Componente responsabel por possibilitar o chaveamento de dados
--- Possui duas entradas que recebem dados e um seletos que indica qual das informações será usada
--- durante o processo.
--- A saída é a transmissão do dado selecionado

entity muxGenerico4x1 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 5);
  port (
    entrada0, entrada1, entrada2, entrada3 : in std_logic_vector((larguraDados-1) downto 0);
    seletor_MUX : in std_logic_vector(1 downto 0);
    saida_MUX : out std_logic_vector((larguraDados-1) downto 0)
  );
end entity;

architecture comportamento of muxGenerico4x1 is
  begin
    saida_MUX <= entrada0 when seletor_MUX = "00" else 
					  entrada1 when seletor_MUX = "01" else
					  entrada2 when seletor_MUX = "10" else
					  entrada3;
end architecture;