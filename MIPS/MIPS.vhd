library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


--- Top level do projeto, esse arquivo reune e instancia todos os componentes necessários para
--- o funcionamento do processador. 

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

  port(
   -- Input ports
   clk     : in  std_logic;
	SW      : in  std_logic_vector(1 downto 0);
	
	-- Output ports
   addrOUT :  out  std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	countPC : out  std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	dataRead: out std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	dataWrite: out std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	entradaAula: out std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	entradaBula: out std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	
	
	muxJRPC4OUT : out std_logic;
	muxPC4OUT : out std_logic;
	muxRtRdOUT : out std_logic_vector(1 downto 0);
	extensorOUT : out std_logic_vector(1 downto 0);
	controleEscreveRegCOUT : out std_logic;
	muxRtImedOUT : out std_logic;
	ulaOPOUT : out std_logic_vector(2 downto 0);
	muxUlaMemOUT : out std_logic;
	BEQOUT : out std_logic;
	BNEOUT : out std_logic;
	weOUT : out std_logic;
	
	dataREGW : out std_logic_vector (DATA_WIDTH_ROM-1 downto 0);
	
	Sinalextendido: out std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	HEX0,HEX1,HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(6 downto 0)
	
  );
end entity;


architecture arch_name of MIPS is
	
	signal pontosControle : std_logic_vector(15 downto 0);
	
	signal saidaSOMA : std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	signal saidaPC : std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	signal saidaULA : std_logic_vector(DATA_WIDTH_ROM-1 downto 0);
	signal registerA, registerB : std_logic_vector(DATA_WIDTH_REG-1 downto 0);
	signal instrucao : std_logic_vector(ADDR_WIDTH_ROM-1 downto 0);
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
	signal ulaCtrl : std_logic_vector(2 downto 0);
	signal saidaMuxJR : std_logic_vector (DATA_WIDTH_ROM-1 downto 0);
	
	alias OpCode : std_logic_vector(5 downto 0) is instrucao(31 downto 26);
	alias imediatoPC : std_logic_vector(25 downto 0) is instrucao(25 downto 0);
	alias enderecoA : std_logic_vector(4 downto 0) is instrucao(25 downto 21);
   alias enderecoB : std_logic_vector(4 downto 0) is instrucao(20 downto 16);
	alias imediato : std_logic_vector(15 downto 0) is instrucao(15 downto 0);
	alias enderecoC : std_logic_vector(4 downto 0) is instrucao(15 downto 11);
	alias shamt : std_logic_vector(4 downto 0) is instrucao(10 downto 6);
	alias funct : std_logic_vector(5 downto 0) is instrucao(5 downto 0);
	
	alias muxJRPC4 : std_logic is pontosControle(15);
	alias muxPC4 : std_logic is pontosControle(14);
	alias muxRtRd : std_logic_vector is pontosControle(13 downto 12);
	alias extensor : std_logic_vector(1 downto 0) is pontosControle(11 downto 10);
	alias controleEscreveRegC : std_logic is pontosControle(9);
	alias muxRtImed : std_logic is pontosControle(8);
	alias ulaOP : std_logic_vector(2 downto 0) is pontosControle(7 downto 5);
	alias muxUlaMem : std_logic_vector(1 downto 0) is pontosControle(4 downto 3);
	alias BEQ : std_logic is pontosControle(2);
	alias BNE : std_logic is pontosControle(1);
	alias we : std_logic is pontosControle(0);
	
	signal displaySignal: std_logic_vector(23 downto 0);
	

begin

	--- Instancia ROM
	--- Recebe dado enviado pelo PC
	--- Envia a instrução referente a posição recebida
	ROM : entity work.ROMMIPS generic map (dataWidth => DATA_WIDTH_ROM,addrWidth => ADDR_WIDTH_ROM)
		port map (
			Endereco => saidaPC,
			Dado => instrucao
		);
	
	--- Instancia ULA_UC
	--- Recebe o codigo enviado pela UC e a funct das instruções do tipo R
	--- Envia o código para o seletor da ULA, para que a operação lógica seja executada
	UC_ULA: entity work.UC_ULA
		port map ( 
			ulaOP => ulaOP,
			funct => funct,
			ulaCtrl => ulaCtrl
		);
		
	--- Instancia ULA
	--- Recebe na entrada A o dado escrito no registrador A
	--- Recebe na entrada B o dado vindo do MUX Rt/ImedULA
	--- assim como no seletor, o dado enviado pela ULA_UC
	--- Envia o resultado da operação lógica e o sinal de flagZero, caso necessário
	ULA : entity work.ULA generic map (larguraDados => DATA_WIDTH_REG)
		port map (
			entradaA => registerA,
			entradaB => muxRtImedSignal,
			seletor => ulaCtrl,
			saida => saidaULA,
			flagZero => flagZeroSignal
		);

	--- Instancia MUX RD/RT
	--- MUX responsável por indicar se o dado escrito no registrador C será RT ou RD
	--- Recebe na entrada A, RT e na entrada B, RD, além do sinal do seletor, vindo da UC
	--- Envia o dado selecionado pelo código do seletor.
	muxRdRt : entity work.muxGenerico4x1 generic map (larguraDados => ADDR_WIDTH_REG)
		port map (
			entrada0 => enderecoB,
			entrada1 => enderecoC,
			entrada2 => "11111", --$ra
			entrada3 => "00000",
			seletor_MUX => muxRtRd,
			saida_MUX => muxRdRtOut
		 );
	
	--- Instancia Banco de Registradores
	--- Instancia três registradores de 5bits, que recebem os seguintes dados da instrução:
			--- RegA  = RS;
			--- RegB  = RT;
			--- RegC  = RT ou RD;
	--- Recebe os dados vindo da instrução, além dado vindo do MUX ULA/MEM, que é escrito em RegC,
	--- além de um sinal de controle, que habilita ou não, a escrita em RegC
	--- Envia os dados escritos no RegA e no RegB
	bRegistradores : entity work.bancoReg generic map (larguraDados => DATA_WIDTH_REG,larguraEndBancoRegs => ADDR_WIDTH_REG)
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
		 
	--- Instancia MUX RT/Imed
	--- MUX responsável por indicar se o dado mandado para a entrada B da ula será o valor de RegB,
	--- ou o valor do imediato da instrução;
	--- Recebe na entrada A, RegB e na entrada B, o imediato valor, além do sinal do seletor, vindo da UC
	--- Envia o dado selecionado pelo código do seletor.
	muxRtImedULA : entity work.muxGenerico2x1 generic map (larguraDados => DATA_WIDTH_REG)
		 port map (
			entradaA_MUX => registerB,
			entradaB_MUX => imediatoExt,
			seletor_MUX => muxRtImed,
			saida_MUX => muxRtImedSignal
		 );
		 	 
	--- Instancia PC
	--- Recebe a instrução do MUX ProxPC, o sinal de clock
	--- Envia qual será o próximo endereço que a ROM deve executar
   PC : entity work.RegistradorGenerico generic map (larguraDados => DATA_WIDTH_ROM)
		port map (
			DIN => saidaMuxJR,
			DOUT => saidaPC,
			ENABLE =>'1',
			CLK => clk,
			RST => '0'
		);
	 
	--- Instancia Somador
	--- Responsável por definir o passo de execução da ROM
	--- Recebe o endereço atual enviado pelo PC e soma 4 a ele
	--- Envia o novo valor para MUX ProxPC
	somador :  entity work.somaConstante generic map (larguraDados => DATA_WIDTH_REG,constante => 4)
		port map( 
			entrada => saidaPC,
			saida => saidaSOMA
		);

	--- Instancia Extende Sinal
	--- Recebe o valor imediado de 16 bits
	--- Envia O valore do imediato, agora extendido para 32 bits, completando os 16 bit mais significativos com 0
	estendeSinal : entity work.estendeSinalGenerico generic map (larguraDadoEntrada => imediato_width,larguraDadoSaida => DATA_WIDTH_ROM)
		port map (
			estendeSinal_IN => imediato,
			seletor => extensor,
			estendeSinal_OUT => imediatoExt
		);
	
	--- Instancia shift2 
	--- Recebe o sinal imediato extendido
	--- Envia o sinal imediato agora shifitado 2 bits para a esquerda, completanto os dois bits menos significativos com "00"
	shift2 : entity work.somadorGenerico generic map (larguraDados => DATA_WIDTH_REG)
		port map (
			entradaA => saidaSOMA,
			entradaB => imediatoExt(29 downto 0) & "00",
			saida => saidaShift
		);
	 --- Instancia MUX BEQ
	 --- MUX responsável por indicar se o dado mandado para a entrada A do MUX ProxPC será o PC+4 ou o imediato shiftado
	 --- Recebe PC + 4 na entrada A e imediato shiftado na entrada B além da seleção, que é composta 
	 --- pela flag zero e o sinal vindo da UC
	 --- Envia o dado selecionado pelo seletor
	 muxBeq : entity work.muxGenerico2x1 generic map (larguraDados => DATA_WIDTH_REG)
		 port map (
			entradaA_MUX => saidaSOMA,
			entradaB_MUX => saidaShift,
			seletor_MUX => (flagZeroSignal and BEQ) or ((not flagZeroSignal) and BNE),
			saida_MUX => entradaMuxProxPc
		 );
	
	--- Instancia UC (Unidade de controle)
	--- Recepe OpCode da ROM
	--- Envia palavra de controle gerindo os componenetes do sistema, ativando ou desativando-os
	UC : entity work.Unidade_Controle generic map (OPC_WIDTH => OP_WIDTH)
		port map (
			opCode => OpCode,
			funct => funct,
			palavraControle => pontosControle
		);
	
	--- Instancia RAM
	--- Memória responsável por armazenar dados processados
	--- Recebe o endereço resultante da operação da ULA e o dado vindo de RegB
	--- Envia um dado lido para o MUX ULA/MEM
	RAM : entity work.RAMMIPS generic map (dataWidth => DATA_WIDTH_ROM,addrWidth => ADDR_WIDTH_ROM)
		port map (
			clk => clk,
			Endereco => saidaULA,
			Dado_in => registerB,
			Dado_out => saidaRAM,
			we => we
		);
		
	--- Instancia MUX ULA/MEM
	--- MUX responsável por escolher se o dado escrito em RegC será o resultado da ULA ou o dado vindo da memória RAM
	--- Recebe na entrada A, o resultado da ULA e na entrada B o dado lido da RAM, além do código de seleção da UC
	--- Envia o dado selecionado pelo seletor para o RegC
	muxUlaMemoria : entity work.muxGenerico4x1 generic map (larguraDados => DATA_WIDTH_REG)
		port map (
			entrada0 => saidaULA,
			entrada1 => saidaRAM,
			entrada2 => saidaSOMA,
			entrada3 => x"00000000",
			seletor_MUX => muxUlaMem,
			saida_MUX => saidaMuxULARAM
		);
	 
	--- Instancia MUX ProxPc
	--- Responsável por escolher se o PC vai receber PC+4 ou um desvio do tipo BEQ
	--- Recebe na entrada A, a saida do MUX BEQ, e na entrada B, PC + 4, além do ponto de controle vindo da UC
	--- Envia o dado referente a seleção da UC
	muxProxPc : entity work.muxGenerico2x1 generic map (larguraDados => DATA_WIDTH_REG)
		port map (
			entradaA_MUX => entradaMuxProxPc,
			entradaB_MUX => saidaSOMA(31 downto 28) & imediatoPC & "00",
			seletor_MUX => muxPC4,
			saida_MUX => saidaMuxProxPc
		);
		
	mux_JR : entity work.muxGenerico2x1 generic map (larguraDados => DATA_WIDTH_REG)
		port map (
			entradaA_MUX => saidaMuxProxPc,
			entradaB_MUX => registerA,
			seletor_MUX => muxJRPC4,
			saida_MUX => saidaMuxJR
		);

	
	muxJRPC4OUT <= pontosControle(14);
	muxPC4OUT <= pontosControle(13);
	muxRtRdOUT <= pontosControle(12 downto 11);
	extensorOUT <= pontosControle(10 downto 9);
	controleEscreveRegCOUT <= pontosControle(8);
	muxRtImedOUT <= pontosControle(7);
	ulaOPOUT <= pontosControle(6 downto 4);
	muxUlaMemOUT <= pontosControle(3);
	BEQOUT <= pontosControle(2);
	BNEOUT <= pontosControle(1);
	weOUT <=  pontosControle(0);
	
	dataREGW <= saidaMuxULARAM;
	
	addrOUT <= saidaULA;
	countPC <= saidaPC;
	dataRead <= saidaRAM;
	dataWrite <= registerB;
	displaySignal <= saidaPC(23 downto 0) when SW = "00" else saidaULA(23 downto 0);
	Sinalextendido <= imediatoExt;
	entradaAula <= registerA;
	entradaBula <= muxRtImedSignal;
	
	
	DISPLAY0 : entity work.conversorHex7Seg
		port map(
			dadoHex => displaySignal(3 downto 0),
			saida7seg => hex0
		);
		
   DISPLAY1 : entity work.conversorHex7Seg 
		port map(
			dadoHex => displaySignal(7 downto 4),
			saida7seg => HEX1
		);
	DISPLAY2 : entity work.conversorHex7Seg 
		port map(
			dadoHex => displaySignal(11 downto 8),
			saida7seg => HEX2
		);
	DISPLAY3 : entity work.conversorHex7Seg 
		port map(
			dadoHex => displaySignal(15 downto 12),
			saida7seg => HEX3
		);
	DISPLAY4 : entity work.conversorHex7Seg 
		port map(
			dadoHex => displaySignal(19 downto 16),
			saida7seg => HEX4
		);
	DISPLAY5 : entity work.conversorHex7Seg 
		port map(
			dadoHex => displaySignal(23 downto 20),
			saida7seg => HEX5
		);
	 
end architecture;
