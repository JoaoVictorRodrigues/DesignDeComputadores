library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROMMIPS IS
   generic (
          dataWidth: natural := 32;
          addrWidth: natural := 32;
       memoryAddrWidth:  natural := 6 );   -- 64 posicoes de 32 bits cada
   port ( Endereco : IN  STD_LOGIC_VECTOR (addrWidth-1 DOWNTO 0);
          Dado     : OUT STD_LOGIC_VECTOR (dataWidth-1 DOWNTO 0) );
end entity;

architecture assincrona OF ROMMIPS IS
  type blocoMemoria IS ARRAY(0 TO 2**memoryAddrWidth - 1) OF std_logic_vector(dataWidth-1 DOWNTO 0);

  -- signal memROM: blocoMemoria;
  -- attribute ram_init_file : string;
  -- attribute ram_init_file of memROM:
  -- signal is "ROMcontent.mif";
  FUNCTION initMemory
    RETURN blocoMemoria IS VARIABLE tmp : blocoMemoria := (OTHERS => (OTHERS => '0'));
  BEGIN
    -- Valores iniciais no banco de registradores
    -- $zero (#0) := 0x00
    -- $t0 (#8)  := 0x00
    -- $t1 (#9)  := 0x0A
    -- $t2 (#10) := 0x0B
    -- $t3 (#11) := 0x0C
    -- $t4 (#12) := 0x0D
    -- $t5 (#13) := 0x16
     
    --    -- Carga para instruções do grupo A e B pipeline:
    tmp(0) := "000000"&"01001"&"01000"&"01010"&"00000"&"100010"; -- sub $t1 $t0 $t2 (t0(reg8) = 5 e t1(reg9) = 3)
       tmp(1) := "000000"&"10001"&"10010"&"01000"&"00000"&"100000"; --add $t0, $s1, $s2
		  tmp(2) := "000000"&"10001"&"10010"&"01000"&"00000"&"100010"; --sub $t0, $s1, $s2
    RETURN tmp;
  END initMemory;

  SIGNAL memROM : blocoMemoria := initMemory;

-- Utiliza uma quantidade menor de endereços locais:
   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

begin
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
end architecture;