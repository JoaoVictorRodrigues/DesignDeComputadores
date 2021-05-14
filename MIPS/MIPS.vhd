library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MIPS is
  generic   (
		DATA_WIDTH_ROM : natural := 32;
		ADDR_WIDTH_ROM : natural := 32;
		DATA_WIDTH_REG : natural := 32;
		imediato_width : natural := 16;
		ADDR_WIDTH_REG : natural := 5;
		contantePC : natural := 4;
		OP_WIDTH : natural := 6
  );

  port   (
    -- Input ports
    clk     : in  std_logic;

    -- Output ports
    addrOUT :  out  std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	countPC : out  std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	dataRead: out std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	dataWrite: out std_logic_vector(DATA_WIDTH_ROM-1 downto 0)
  );
end entity;


architecture arch_name of MIPS is
	
	signal saidaSOMA : std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	signal saidaPC : std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	signal saidaULA : std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	signal registerA, registerB : std_logic_vector(DATA_WIDTH_REG-1 downto 0);
	signal instrucao : std_logic_vector(ADDR_WIDTH_ROM-1 downto 0);
	signal pontosControle : std_logic_vector(10 downto 0);
	signal imediatoExt : std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	signal saidaShift : std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	signal flagZeroSignal : std_logic;
	signal PCin : std_logic_vector (DATA_WIDTH_ROM-1 downto 0);
	signal saidaRAM : std_logic_vector (DATA_WIDTH_ROM-1 downto 0);
	signal saidaMuxULARAM : std_logic_vector (DATA_WIDTH_ROM-1 downto 0);
	signal muxRtImedSignal : std_logic_vector (DATA_WIDTH_ROM-1 downto 0);
	signal muxRdRtOut : std_logic_vector (ADDR_WIDTH_REG-1 downto 0);
	signal entradaMuxProxPc : std_logic_vector (DATA_WIDTH_ROM-1 downto 0);
	signal saidaMuxProxPc : std_logic_vector (DATA_WIDTH_ROM-1 downto 0);
	
	
	alias OpCode : std_logic_vector(5 downto 0) is instrucao(31 downto 26);
	alias imediatoPC : std_logic_vector(25 downto 0) is instrucao(25 downto 0);
	alias enderecoA : std_logic_vector(4 downto 0) is instrucao(25 downto 21);
   	alias enderecoB : std_logic_vector(4 downto 0) is instrucao(20 downto 16);
	alias imediato : std_logic_vector(15 downto 0) is instrucao(15 downto 0);
	alias enderecoC : std_logic_vector(4 downto 0) is instrucao(15 downto 11);
	alias shamt : std_logic_vector(4 downto 0) is instrucao(10 downto 6);
	alias funct : std_logic_vector(5 downto 0) is instrucao(5 downto 0);
	
	alias muxPC4 : std_logic is pontosControle(10);
  	alias muxRtRd : std_logic is pontosControle(9);
	alias controleEscreveRegC : std_logic is pontosControle(8);
	alias muxRtImed : std_logic is pontosControle(7);
	alias controleULA : std_logic_vector(3 downto 0) is pontosControle(6 downto 3);
	alias muxUlaMem : std_logic is pontosControle(2);
	alias BEQ : std_logic is pontosControle(1);
	-- alias muxHabLeMem : std_logic is palavraControle(1);
	alias we : std_logic is pontosControle(0);
	

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
      entradaB => muxRtImedSignal,
      seletor => controleULA,
      saida => saidaULA,
	  flagZero => flagZeroSignal
    );
	 
	 muxRdRt : entity work.muxGenerico2x1 generic map (
		larguraDados => ADDR_WIDTH_REG
	 )
	 port map (
		entradaA_MUX => enderecoB,
		entradaB_MUX => enderecoC,
		seletor_MUX => muxRtRd,
		saida_MUX => muxRdRtOut
	 );

    bRegistradores : entity work.bancoReg generic map (
      larguraDados => DATA_WIDTH_REG,
      larguraEndBancoRegs => ADDR_WIDTH_REG
    )
    port map (
      clk => clk,
      enderecoA => enderecoA,
      enderecoB => enderecoB,
      enderecoC => muxRdRtOut,
      dadoEscritaC => saidaMuxULARAM,
      escreveC => controleEscreveRegC,
      saidaA => registerA,
      saidaB => registerB
    );
	 
	 muxRtImedULA : entity work.muxGenerico2x1 generic map (
		larguraDados => DATA_WIDTH_REG
	 )
	 port map (
		entradaA_MUX => registerB,
		entradaB_MUX => imediatoExt,
		seletor_MUX => muxRtImed,
		saida_MUX => muxRtImedSignal
	 );

    PC : entity work.RegistradorGenerico generic map (larguraDados => DATA_WIDTH_ROM)
		port map (
			DIN => saidaMuxProxPc,
			DOUT => saidaPC,
			ENABLE =>'1',
			CLK => clk,
			RST => '0'
		);
	 
	somador :  entity work.somaConstante generic map (larguraDados => DATA_WIDTH_REG,constante => 4)
		port map( 
			entrada => saidaPC,
			saida => saidaSOMA
		);
	 
	estendeSinal : entity work.estendeSinalGenerico generic map (
		larguraDadoEntrada => imediato_width,
		larguraDadoSaida => DATA_WIDTH_ROM
	 )
	 port map (
		estendeSinal_IN => imediato,
		estendeSinal_OUT => imediatoExt
	 );
	 
	 shift2 : entity work.somadorGenerico generic map (
		larguraDados => DATA_WIDTH_REG
	 )
	 port map (
		entradaA => saidaSOMA,
		entradaB => imediatoExt(29 downto 0) & "00",
		saida => saidaShift
	 );
	 
	 muxBeq : entity work.muxGenerico2x1 generic map (larguraDados => DATA_WIDTH_REG)
		 port map (
			entradaA_MUX => saidaSOMA,
			entradaB_MUX => saidaShift,
			seletor_MUX => (flagZeroSignal and BEQ),
			saida_MUX => entradaMuxProxPc
		 );
		 
	 UC : entity work.Unidade_Controle generic map (
		OPC_WIDTH => OP_WIDTH
	 )
	 port map (
		opCode => OpCode,
		funct => funct,
		palavraControle => pontosControle
	 );
	 
	RAM : entity work.RAMMIPS generic map (dataWidth => DATA_WIDTH_ROM,addrWidth => ADDR_WIDTH_ROM)
		port map (
			clk => clk,
			Endereco => saidaULA,
			Dado_in => registerB,
			Dado_out => saidaRAM,
			we => we
		);
	 
	muxUlaMemoria : entity work.muxGenerico2x1 generic map (larguraDados => DATA_WIDTH_REG)
		port map (
			entradaA_MUX => saidaULA,
			entradaB_MUX => saidaRAM,
			seletor_MUX => muxUlaMem,
			saida_MUX => saidaMuxULARAM
		);
	 

	muxProxPc : entity work.muxGenerico2x1 generic map (larguraDados => DATA_WIDTH_REG)
		port map (
			entradaA_MUX => entradaMuxProxPc,
			entradaB_MUX => saidaSOMA(31 downto 28) & imediatoPC & "00",
			seletor_MUX => muxPC4,
			saida_MUX => saidaMuxProxPc
		);

	addrOUT <= saidaULA;
	countPC <= saidaPC;
	dataRead <= saidaRAM;
	dataWrite <= registerB;
	 
end architecture;
