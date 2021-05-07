library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MIPS is
  generic   (
		DATA_WIDTH_ROM : natural := 32;
		ADDR_WIDTH_ROM : natural := 32;
		DATA_WIDTH_REG : natural := 32;
		ADDR_WIDTH_REG : natural := 5;
		contantePC : natural := 4;
		OP_WIDTH : natural := 6
  );

  port   (
    -- Input ports
    clk     : in  std_logic;

    -- Output ports
    dataOUT :  out  std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	 countPC : out  std_logic_vector(DATA_WIDTH_ROM-1 downto 0)
  );
end entity;


architecture arch_name of MIPS is
	
	signal saidaSOMA : std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	signal saidaPC : std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	signal saidaULAbReg : std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	signal registerA, registerB : std_logic_vector(DATA_WIDTH_REG-1 downto 0);
	signal instrucao : std_logic_vector(ADDR_WIDTH_ROM-1 downto 0);
	signal pontosControle : std_logic_vector(1 downto 0);
	
	
	alias OpCode : std_logic_vector(5 downto 0) is instrucao(31 downto 26);
	alias enderecoA : std_logic_vector(4 downto 0) is instrucao(25 downto 21);
   alias enderecoB : std_logic_vector(4 downto 0) is instrucao(20 downto 16);
	alias enderecoC : std_logic_vector(4 downto 0) is instrucao(15 downto 11);
	alias shamt : std_logic_vector(4 downto 0) is instrucao(10 downto 6);
	alias funct : std_logic_vector(5 downto 0) is instrucao(5 downto 0);
	alias controleULA : std_logic is pontosControle(1);
	alias controleEscreveRegC : std_logic is pontosControle(0);

begin
    rom : entity work.ROMMIPS generic map (
      dataWidth => DATA_WIDTH_ROM,
      addrWidth => ADDR_WIDTH_ROM
    )
    port map (
      Endereco => saidaPC,
      Dado => instrucao
    );

    ULA : entity work.ULA generic map (
      larguraDados => DATA_WIDTH_REG
    )
    port map (
      entradaA => registerA,
      entradaB => registerB,
      seletor => controleULA,
      saida => saidaULAbReg
    );

    bRegistradores : entity work.bancoReg generic map (
      larguraDados => DATA_WIDTH_REG,
      larguraEndBancoRegs => ADDR_WIDTH_REG
    )
    port map (
      clk => clk,
      enderecoA => enderecoA,
      enderecoB => enderecoB,
      enderecoC => enderecoC,
      dadoEscritaC => saidaULAbReg,
      escreveC => controleEscreveRegC,
      saidaA => registerA,
      saidaB => registerB
    );

    PC : entity work.RegistradorGenerico generic map (
      larguraDados => DATA_WIDTH_ROM
    )
    port map (
      DIN => saidaSOMA,
      DOUT => saidaPC,
      ENABLE =>'1',
      CLK => clk,
      RST => '0'
    );
	 
	 somador :  entity work.somadorGenerico generic map (
		larguraDados => DATA_WIDTH_REG,
		constanteSoma => 1
	 )
    port map( 
	 entradaA => saidaPC,
	 saida => saidaSOMA
	 );
	 
	 UC : entity work.Unidade_Controle generic map (
		OPC_WIDTH => OP_WIDTH
	 )
	 port map (
		opCode => OpCode,
		funct => funct,
		palavraControle => pontosControle
	 );
	 
	 dataOUT <= saidaULAbReg;
	 countPC <= saidaPC;
	 
end architecture;
