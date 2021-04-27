library IEEE;
use IEEE.std_logic_1164.all;
use work.constantesProcessador.all;

entity Aula_Enderecamento is
  port (
    -- Entradas (placa)
    CLOCK_50 : in STD_LOGIC;
	 palavraControle  :  in  std_logic_vector(dataWidth-1 downto 0);
	 
--    KEY: in STD_LOGIC_VECTOR(3 DOWNTO 0);
    --SW: in STD_LOGIC_VECTOR(7 DOWNTO 0);

    -- Saidas (placa)
	 saidaRegistradores :  out  std_logic_vector(dataWidth-1 downto 0);
	 programCounter  :  out  std_logic_vector(addrWidth-1 downto 0);
	 opCode  :  out  std_logic_vector(4 downto 0)
    --LEDR  : out STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0')
--    HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 downto 0)
  );
end entity;


architecture RTL of Aula_Enderecamento is

signal ULA_MUXULAImed, ULAentradaA, ULAentradaB, barramentoLeituraDados, barramentoEscritaDados : std_logic_vector(dataWidth-1 DOWNTO 0);
signal MUXRAMImediato_MUXULAImediato, MUXULAImed_RegA, MUXRAMImediato_RegB : std_logic_vector(dataWidth-1 DOWNTO 0);
signal PC_ROM, Incr_MUX_ProxPC, Incr_PC, barramentoEnderecos : std_logic_vector (addrWidth-1 DOWNTO 0);
signal Instrucao : std_logic_vector(dataROMWidth-1 DOWNTO 0);
signal pontosControle : std_logic_vector(ptsCtrlWidth-1 downto 0);
signal habilitaBlocos : std_logic_vector(3 DOWNTO 0);
signal clk : std_logic;

-- Formato da instrucao
alias opCodeLocal: std_logic_vector(4 DOWNTO 0) is Instrucao(addrWidth-1 downto addrWidth-5);
alias SelReg: std_logic_vector(2 DOWNTO 0) is Instrucao(addrWidth-6 downto addrWidth-8);
alias enderecoRAM: std_logic_vector(addrWidth-1 DOWNTO 0) is Instrucao(addrWidth-1 downto 0);
alias imediatoDado: std_logic_vector (dataWidth-1 DOWNTO 0) is Instrucao(dataWidth-1 downto 0);
alias imediatoEndereco: std_logic_vector (addrWidth-1 DOWNTO 0) is Instrucao(addrWidth-1 downto 0);

-- Formato dos pontos de controle
alias selMUX_JMP_PC: std_logic is pontosControle(ptsCtrlWidth-1);
alias selMUX_RAM_Imediato: std_logic is pontosControle(ptsCtrlWidth-2);
alias habEscritaregistradores: std_LOGIC is pontosControle(ptsCtrlWidth-3);
alias ULAop: std_logic_vector(2 downto 0) is pontosControle(ptsCtrlWidth-4 downto ptsCtrlWidth-6);
alias habLeituraBarramento: std_logic is pontosControle(ptsCtrlWidth-7);
alias habEscritaBarramento: std_logic is pontosControle(ptsCtrlWidth-8);

begin

ULA: entity work.ULA port map (entradaA => ULAentradaA, entradaB => ULAentradaB, saida => ULA_MUXULAImed, seletor => ULAop);

--seteSegA: entity work.conversorHex7Seg
--            port map (dadoHex => , apaga => , negativo => , overFlow => , saida7seg => );

RAM: entity work.memoriaRAM
            port map (clk => clk, addr => barramentoEnderecos, we => habEscritaBarramento,
							 re => habLeituraBarramento, habilita => habilitaBlocos(1),
							 dado_in => barramentoEscritaDados, dado_out => barramentoLeituraDados);

MUX_proxPC: entity work.muxGenerico2x1 generic map (larguraDados => addrWidth)
            port map (entradaA_MUX => Incr_MUX_ProxPC, entradaB_MUX => imediatoEndereco, seletor_MUX => selMUX_JMP_PC, saida_MUX => Incr_PC);

incremento: entity work.somaConstante generic map (larguraDados => addrWidth)
            port map (entrada => PC_ROM, saida => Incr_MUX_ProxPC);

ROM: entity work.memoriaROM
            port map (Endereco => PC_ROM, Dado => Instrucao);

PC: entity work.registradorGenerico generic map (larguraDados => addrWidth)
            port map (CLK => clk, DIN => Incr_PC, DOUT => PC_ROM, ENABLE => '1', RST => '0');

MUX_RAM_Imediato: entity work.muxGenerico2x1
            port map (entradaA_MUX => barramentoLeituraDados, entradaB_MUX => imediatoDado, seletor_MUX => selMUX_RAM_Imediato, saida_MUX => MUXRAMImediato_MUXULAImediato);

Banco_Registradores: entity work.bancoRegistradoresArqRegMem   generic map (larguraDados => dataWidth, larguraEndBancoRegs => 3)
          port map ( clk => clk,
              endereco => SelReg,
              dadoEscrita => ULA_MUXULAImed,
              habilitaEscrita => habEscritaregistradores,
              saida  => ULAentradaA);
				
ULAentradaB <= MUXRAMImediato_MUXULAImediato;
				
--MUX_ULA_RAMImediato: entity work.muxGenerico2x1
--            port map (entradaA_MUX => MUXRAMImediato_MUXULAImediato, entradaB_MUX => ULA_MUXULAImed, seletor_MUX => selMUX_ULA_Imediato, saida_MUX => MUXULAImed_RegA);
				
--RegA: entity work.registradorGenerico
--            port map (CLK => clk, DIN => MUXULAImed_RegA, DOUT => ULAentradaA, ENABLE => habRegA, RST => '0');
				
--RegB: entity work.registradorGenerico
--            port map (CLK => clk, DIN => MUXRAMImediato_RegB, DOUT => ULAentradaB, ENABLE => habRegB, RST => '0');				

--MUX_RA_RB: entity work.muxGenerico2x1
--            port map (entradaA_MUX => ULAentradaA, entradaB_MUX => ULAentradaB, seletor_MUX => SelRegAB, saida_MUX => barramentoEscritaDados);
				
decodInstrucao: entity work.decodificadorInstrucoes
				port map (opCode => opCodeLocal, pontosControle => pontosControle);
				
decodificador: entity work.decodificador2x4
        port map (seletor => barramentoEnderecos(addrWidth-2 downto addrWidth-3), habilita => habilitaBlocos);

--saidaLEDs: entity work.interfaceLEDs
--        port map (clk => clk, entrada => barramentoEscritaDados(dataWidth-1 downto 0), saida => LEDR(dataWidth-1 downto 0), habilita => habilitaBlocos(3));

--entradaChaves: entity work.interfaceCHAVES
--        port map (entrada => SW(dataWidth-1 downto 0), saida => barramentoLeituraDados(dataWidth-1 downto 0), habilita => habilitaBlocos(2));

barramentoEnderecos <= imediatoEndereco;
clk <= CLOCK_50;

end architecture;
