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
      flagZero, FlagOverflow: out std_logic
    );
end entity;

architecture comportamento of ULA is
	constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');
	
   signal soma 	  : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_and	  : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_or     : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal op_slt	  : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	
	signal signalCarryIn : std_logic;
	signal signalLess		: std_logic;
	signal signalSet		: std_logic;
	
	signal entrada0CO : STD_logic;
	signal entrada1CO : STD_logic;
	signal entrada2CO : STD_logic;
	signal entrada3CO : STD_logic;
	signal entrada4CO : STD_logic;
	signal entrada5CO : STD_logic;
	signal entrada6CO : STD_logic;
	signal entrada7CO : STD_logic;
	signal entrada8CO : STD_logic;
	signal entrada9CO : STD_logic;
	signal entrada10CO : STD_logic;
	signal entrada11CO : STD_logic;
	signal entrada12CO : STD_logic;
	signal entrada13CO : STD_logic;
	signal entrada14CO : STD_logic;
	signal entrada15CO : STD_logic;
	signal entrada16CO : STD_logic;
	signal entrada17CO : STD_logic;
	signal entrada18CO : STD_logic;
	signal entrada19CO : STD_logic;
	signal entrada20CO : STD_logic;
	signal entrada21CO : STD_logic;
	signal entrada22CO : STD_logic;
	signal entrada23CO : STD_logic;
	signal entrada24CO : STD_logic;
	signal entrada25CO : STD_logic;
	signal entrada26CO : STD_logic;
	signal entrada27CO : STD_logic;
	signal entrada28CO : STD_logic;
	signal entrada29CO : STD_logic;
	signal entrada30CO : STD_logic;
	signal entrada31CO : STD_logic;
	
	signal signalSaida : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	
	alias entradaA0 : std_logic is entradaA(0);
	alias entradaA1 : std_logic is entradaA(1);
	alias entradaA2 : std_logic is entradaA(2);
	alias entradaA3 : std_logic is entradaA(3);
	alias entradaA4 : std_logic is entradaA(4);
	alias entradaA5 : std_logic is entradaA(5);
	alias entradaA6 : std_logic is entradaA(6);
	alias entradaA7 : std_logic is entradaA(7);
	alias entradaA8 : std_logic is entradaA(8);
	alias entradaA9 : std_logic is entradaA(9);
	alias entradaA10 : std_logic is entradaA(10);
	alias entradaA11 : std_logic is entradaA(11);
	alias entradaA12 : std_logic is entradaA(12);
	alias entradaA13 : std_logic is entradaA(13);
	alias entradaA14 : std_logic is entradaA(14);
	alias entradaA15 : std_logic is entradaA(15);
	alias entradaA16 : std_logic is entradaA(16);
	alias entradaA17 : std_logic is entradaA(17);
	alias entradaA18 : std_logic is entradaA(18);
	alias entradaA19 : std_logic is entradaA(19);
	alias entradaA20 : std_logic is entradaA(20);
	alias entradaA21 : std_logic is entradaA(21);
	alias entradaA22 : std_logic is entradaA(22);
	alias entradaA23 : std_logic is entradaA(23);
	alias entradaA24 : std_logic is entradaA(24);
	alias entradaA25 : std_logic is entradaA(25);
	alias entradaA26 : std_logic is entradaA(26);
	alias entradaA27 : std_logic is entradaA(27);
	alias entradaA28 : std_logic is entradaA(28);
	alias entradaA29 : std_logic is entradaA(29);
	alias entradaA30 : std_logic is entradaA(30);
	alias entradaA31 : std_logic is entradaA(31);
	
	alias entradaB0 : std_logic is entradaB(0);
	alias entradaB1 : std_logic is entradaB(1);
	alias entradaB2 : std_logic is entradaB(2);
	alias entradaB3 : std_logic is entradaB(3);
	alias entradaB4 : std_logic is entradaB(4);
	alias entradaB5 : std_logic is entradaB(5);
	alias entradaB6 : std_logic is entradaB(6);
	alias entradaB7 : std_logic is entradaB(7);
	alias entradaB8 : std_logic is entradaB(8);
	alias entradaB9 : std_logic is entradaB(9);
	alias entradaB10 : std_logic is entradaB(10);
	alias entradaB11 : std_logic is entradaB(11);
	alias entradaB12 : std_logic is entradaB(12);
	alias entradaB13 : std_logic is entradaB(13);
	alias entradaB14 : std_logic is entradaB(14);
	alias entradaB15 : std_logic is entradaB(15);
	alias entradaB16 : std_logic is entradaB(16);
	alias entradaB17 : std_logic is entradaB(17);
	alias entradaB18 : std_logic is entradaB(18);
	alias entradaB19 : std_logic is entradaB(19);
	alias entradaB20 : std_logic is entradaB(20);
	alias entradaB21 : std_logic is entradaB(21);
	alias entradaB22 : std_logic is entradaB(22);
	alias entradaB23 : std_logic is entradaB(23);
	alias entradaB24 : std_logic is entradaB(24);
	alias entradaB25 : std_logic is entradaB(25);
	alias entradaB26 : std_logic is entradaB(26);
	alias entradaB27 : std_logic is entradaB(27);
	alias entradaB28 : std_logic is entradaB(28);
	alias entradaB29 : std_logic is entradaB(29);
	alias entradaB30 : std_logic is entradaB(30);
	alias entradaB31 : std_logic is entradaB(31);

    begin
	 
		signalCarryIn <= seletor(2);
		
      entrada0 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA0,
				entradaB =>entradaB0,
				CarryIn => signalCarryIn,
				seletor => seletor,
				less => signalLess,
				saida => signalSaida(0),
				CarryOut => entrada0CO
			);
		entrada1 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA1,
				entradaB =>entradaB1,
				CarryIn => entrada0CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(1),
				CarryOut => entrada1CO
			);
		entrada2 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA2,
				entradaB =>entradaB2,
				CarryIn => entrada1CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(2),
				CarryOut => entrada2CO
			);
		entrada3 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA3,
				entradaB =>entradaB3,
				CarryIn => entrada2CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(3),
				CarryOut => entrada3CO
			);
		entrada4 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA4,
				entradaB =>entradaB4,
				CarryIn => entrada3CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(4),
				CarryOut => entrada4CO
			);
		entrada5 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA5,
				entradaB =>entradaB5,
				CarryIn => entrada4CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(5),
				CarryOut => entrada5CO
			);
		entrada6 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA6,
				entradaB =>entradaB6,
				CarryIn => entrada5CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(6),
				CarryOut => entrada6CO
			);
		entrada7 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA7,
				entradaB =>entradaB7,
				CarryIn => entrada6CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(7),
				CarryOut => entrada7CO
			);
		entrada8 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA8,
				entradaB =>entradaB8,
				CarryIn => entrada7CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(8),
				CarryOut => entrada8CO
			);
		entrada9 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA9,
				entradaB =>entradaB9,
				CarryIn => entrada8CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(9),
				CarryOut => entrada9CO
			);
		entrada10 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA10,
				entradaB =>entradaB10,
				CarryIn => entrada9CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(10),
				CarryOut => entrada10CO
			);
		entrada11 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA11,
				entradaB =>entradaB11,
				CarryIn => entrada10CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(11),
				CarryOut => entrada11CO
			);
		entrada12 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA12,
				entradaB =>entradaB12,
				CarryIn => entrada11CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(12),
				CarryOut => entrada12CO
			);
		entrada13 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA13,
				entradaB =>entradaB13,
				CarryIn => entrada12CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(13),
				CarryOut => entrada13CO
			);
		entrada14 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA14,
				entradaB =>entradaB14,
				CarryIn => entrada13CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(14),
				CarryOut => entrada14CO
			);
		entrada15 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA15,
				entradaB =>entradaB15,
				CarryIn => entrada14CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(15),
				CarryOut => entrada15CO
			);
		entrada16 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA16,
				entradaB =>entradaB16,
				CarryIn => entrada15CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(16),
				CarryOut => entrada16CO
			);
		entrada17 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA17,
				entradaB =>entradaB17,
				CarryIn => entrada16CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(17),
				CarryOut => entrada17CO
			);
		entrada18 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA18,
				entradaB =>entradaB18,
				CarryIn => entrada17CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(18),
				CarryOut => entrada18CO
			);
		entrada19 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA19,
				entradaB =>entradaB19,
				CarryIn => entrada18CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(19),
				CarryOut => entrada19CO
			);
		entrada20 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA20,
				entradaB =>entradaB20,
				CarryIn => entrada19CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(20),
				CarryOut => entrada20CO
			);
		entrada21 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA21,
				entradaB =>entradaB21,
				CarryIn => entrada20CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(21),
				CarryOut => entrada21CO
			);
		entrada22 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA22,
				entradaB =>entradaB22,
				CarryIn => entrada21CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(22),
				CarryOut => entrada22CO
			);
		entrada23 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA23,
				entradaB =>entradaB23,
				CarryIn => entrada22CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(23),
				CarryOut => entrada23CO
			);
		entrada24 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA24,
				entradaB =>entradaB24,
				CarryIn => entrada23CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(24),
				CarryOut => entrada24CO
			);
		entrada25 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA25,
				entradaB =>entradaB25,
				CarryIn => entrada24CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(25),
				CarryOut => entrada25CO
			);
		entrada26 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA26,
				entradaB =>entradaB26,
				CarryIn => entrada25CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(26),
				CarryOut => entrada26CO
			);
		entrada27 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA27,
				entradaB =>entradaB27,
				CarryIn => entrada26CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(27),
				CarryOut => entrada27CO
			);
		entrada28 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA28,
				entradaB =>entradaB28,
				CarryIn => entrada27CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(28),
				CarryOut => entrada28CO
			);
		entrada29 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA29,
				entradaB =>entradaB29,
				CarryIn => entrada28CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(29),
				CarryOut => entrada29CO
			);
		entrada30 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA30,
				entradaB =>entradaB30,
				CarryIn => entrada29CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(30),
				CarryOut => entrada30CO
			);
		entrada31 : entity work.ULA1Bit
			port map(
				entradaA =>entradaA31,
				entradaB =>entradaB31,
				CarryIn => entrada30CO,
				seletor => seletor,
				less => '0',
				saida => signalSaida(31),
				set => signalSet,
				CarryOut => entrada31CO
			);
		
			
		FlagOverflow <= (entrada30CO xor entrada31CO);
		
		signalLess <= (signalSet xor FlagOverflow);

      saida <= signalSaida;
		
		
      flagZero <= '1' when unsigned(saida) = unsigned(zero) else '0';

end architecture;