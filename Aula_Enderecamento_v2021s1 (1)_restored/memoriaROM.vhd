library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constantesProcessador.all;

entity memoriaROM is

   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataROMWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataROMWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
        -- Inicializa os endereços:
        tmp(0) := load & load & "010000";  --Endereco 128 Le chave, deve modificar para 132
		  -- store 0 posições ram p/cada posição válida
		  
		  -- inicio do laco tmp(10)
		  -- le but 0
		  -- se 1: jsr le arg
		  -- 
		  
		  
		  -- le but 1
		  -- se 1: jsr le op
		 
		  -- jmp inicio do laco
		  
        tmp(1) := load & load & "011000";  --Endereco 192 Escreve LEDs, deve modificar para 200
        tmp(2) := jmp & "00000000000";
--		  tmp(3) := soma & Reg0 &"00000001000";
	--	  tmp(4) := soma & Reg1 & "00000001001";
		--  tmp(5) := sub & Reg0 &"00000001000";
		 -- tmp(6) := sub & Reg1 & "00000001001";
		 -- tmp(7) := soma_im & Reg4 &"00000001000";
		 -- tmp(8) := soma & Reg1 &"00000001000";
		  
		  -- le arg
		  
		  
		  -- le op
		  
		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;
