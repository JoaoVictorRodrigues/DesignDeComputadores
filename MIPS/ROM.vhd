library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


--- Memória ROM é a memória que guarda as instruções das operações que o processador
--- precisa realizar para que seu funcioamento seja adequado.
--- Tem como entrada, a instrução vinda do registrador PC, que indica qual linah da memória deve
--- ser executada.
--- Como saída, a ROM manda a instrução para o processador, indicando quais operações devem ser feitas
--- para que a instrução seja executada corretamente.


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
  FUNCTION initMemory
    RETURN blocoMemoria IS VARIABLE tmp : blocoMemoria := (OTHERS => (OTHERS => '0'));
  BEGIN
  
-- Valores iniciais no banco de registradores:
-- $t0   (#8) := 0x00
-- $t1   (#9) := 0x0A
-- $t2  (#10) := 0x0B
-- $t3  (#11) := 0x0C
-- $t4  (#12) := 0x0D
-- $t5  (#13) := 0x16
	
	
   --tmp(0) :=  x"AC090008"; --sw $t1 8($zero)     (m(8) := 0x0000000A)
   --tmp(1) :=  x"8C080008"; --lw $t0 8($zero)     ($t0  := 0x0000000A)
   --tmp(2) :=  x"012A4022"; --sub $t0 $t1 $t2     ($t0  := 0xFFFFFFFF)
   --tmp(3) :=  x"012A4024"; --and $t0 $t1 $t2     ($t0  := 0x0000000A)
   --tmp(4) :=  x"012A4025"; --or $t0 $t1 $t2      ($t0  := 0x0000000B)
   --tmp(5) :=  x"012A402A"; --slt $t0 $t1 $t2     ($t0  := 0x00000001)
   --tmp(6) :=  x"010A4020"; --add $t0 $t0 $t2     ($t0  := 0x0000000C)
									  --segunda execução:   ($t0 := 0x00000017)
   --tmp(7) :=  x"110BFFFE"; --beq $t0 $t3 0xFFFE  (pc := #6)
									  --segunda execução:   (pc := #8)
   --tmp(8) :=  x"08000000"; --j 0x000000          (pc := #0) 

	
	tmp(0)   :=  x"00004020"; --add $t0, $0, $0;    ($t0  := 0x00000000)
	tmp(1)   :=  x"3C090000"; --lui $t1, 0x0000;
	tmp(2)   :=  x"3529000A"; --ori $t1, $t1, 0x0A;   ($t1  := 0x0000000A)
	tmp(3)   :=  x"3C0A0000"; --lui $t2, 0x0000;
	tmp(4)   :=  x"354A000B"; --ori $t2, $t2, 0x0B;   ($t2  := 0x0000000B)
	tmp(5)   :=  x"3C0B0000"; --lui $t3, 0x0000;
	tmp(6)   :=  x"356B000C"; --ori $t3, $t3, 0x0C;   ($t3  := 0x0000000C)
	tmp(7)   :=  x"3C0C0000"; --lui $t4, 0x0000;
	tmp(8)   :=  x"358C000D"; --ori $t4, $t4, 0x0D;   ($t4  := 0x0000000D)
	tmp(9)   :=  x"3C0D0000"; --lui $t5, 0x0000;
	tmp(10)  :=  x"35AD8016"; --ori $t5, $t5, 0x8016;   ($t5  := 0x00008016)

	-- Ponteiro para o segmento de dados na RAM:
	tmp(11)   := x"3C0F0000"; --lui $t7, 0x0000;
	tmp(12)   := x"35EF0000"; --ori $t7, $t7, 0x0000;   ($t7  := 0x00000000)

	-- O restante é igual ao teste do subconjunto A:
	tmp(13)   := x"AC090008"; --sw $t1 8($t7)     (m(8) := 0x0000000A)
	tmp(14)   := x"8C080008"; --lw $t0 8($t7)     ($t0  := 0x0000000A)
	tmp(15)   := x"012A4022"; --sub $t0 $t1 $t2     ($t0  := 0xFFFFFFFF)
	tmp(16)   := x"012A4024"; --and $t0 $t1 $t2     ($t0  := 0x0000000A)
	tmp(17)   := x"012A4025"; --or $t0 $t1 $t2      ($t0  := 0x0000000B)
	tmp(18)   := x"012A402A"; --slt $t0 $t1 $t2     ($t0  := 0x00000001)
	tmp(19)   := x"010A4020"; --add $t0 $t0 $t2     ($t0  := 0x0000000C)
										 --segunda execução:   ($t0 := 0x00000017)
	tmp(20)   := x"110BFFFE"; --beq $t0 $t3 0xFFFE  (pc := #19)
										 --segunda execução:   (pc := #21)
	tmp(21)   := x"08000000"; --j 0x000000          (pc := #0)
	tmp(22)   := x"00000000";
	tmp(23)   := x"00000000";
	tmp(24)   := x"00000000";
	tmp(25)   := x"00000000";
	
	
	
    RETURN tmp;
  END initMemory;

  SIGNAL memROM : blocoMemoria := initMemory;

-- Utiliza uma quantidade menor de endereços locais:
   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

begin
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
end architecture;