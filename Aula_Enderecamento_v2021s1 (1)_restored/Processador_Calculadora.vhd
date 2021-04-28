library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constantesProcessador.all;

entity Processador is

  port   (
    -- Input ports
    CLOCK_50     : in  std_logic;
    barramentoDadosEntrada: in  std_logic_vector(dataWidth-1 downto 0);
    -- dataIn : in STD_LOGIC_VECTOR(7 downto 0);
    -- KEY: in STD_LOGIC_VECTOR(3 DOWNTO 0);
    -- SW: in STD_LOGIC_VECTOR(7 DOWNTO 0);


    -- Output ports
    barramentoDadosSaida :  out  std_logic_vector(dataWidth-1 downto 0);
    barramentoEndereco  :  out  std_logic_vector(addrWidth-1 downto 0);
	  writeRam   : out STD_LOGIC;
	  readRam    : out STD_LOGIC
    -- programCounter  :  out  std_logic_vector(addrWidth-1 downto 0);
    -- opCode  :  out  std_logic_vector(4 downto 0);
    -- LEDR  : out STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');
    -- HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 downto 0)
  );
end entity;


architecture arch_name of Processador is

signal ULA_MUXULAImed, ULAentradaA, ULAentradaB, barramentoLeituraDados, barramentoEscritaDados : std_logic_vector(dataWidth-1 DOWNTO 0);
signal MUXRAMImediato_MUXULAImediato, MUXULAImed_RegA, MUXRAMImediato_RegB : std_logic_vector(dataWidth-1 DOWNTO 0);
signal PC_ROM, Incr_MUX_ProxPC, Incr_PC, barramentoEnderecos : std_logic_vector (addrWidth-1 DOWNTO 0);
signal Instrucao : std_logic_vector(dataROMWidth-1 DOWNTO 0);
signal pontosControle : std_logic_vector(ptsCtrlWidth-1 downto 0);
signal habilitaBlocos : std_logic_vector(3 DOWNTO 0);
-- signal clk : std_logic;

signal enableDisplaySignal : STD_LOGIC_VECTOR(5 DOWNTO 0);
signal displaySignal0, displaySignal1, displaySignal2, displaySignal3, displaySignal4, displaySignal5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
signal progCount : std_logic_vector(addrWidth-1 downto 0);
-- signal saiAcumulador : std_logic_vector(DATA_WIDTH-1 downto 0);
-- signal pontosControle : std_logic_vector(7 downto 0);
-- signal opCode : std_logic_vector(4 downto 0);

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
MUX_proxPC: entity work.muxGenerico2x1 generic map (larguraDados => addrWidth)
            port map (entradaA_MUX => Incr_MUX_ProxPC, entradaB_MUX => imediatoEndereco, seletor_MUX => selMUX_JMP_PC, saida_MUX => Incr_PC);

incremento: entity work.somaConstante generic map (larguraDados => addrWidth)
            port map (entrada => PC_ROM, saida => Incr_MUX_ProxPC);

ROM: entity work.memoriaROM
            port map (Endereco => PC_ROM, Dado => Instrucao);

PC: entity work.registradorGenerico generic map (larguraDados => addrWidth)
            port map (CLK => CLOCK_50, DIN => Incr_PC, DOUT => PC_ROM, ENABLE => '1', RST => '0');

MUX_RAM_Imediato: entity work.muxGenerico2x1
            port map (entradaA_MUX => barramentoDadosEntrada, entradaB_MUX => imediatoDado, seletor_MUX => selMUX_RAM_Imediato, saida_MUX => MUXRAMImediato_MUXULAImediato);

Banco_Registradores: entity work.bancoRegistradoresArqRegMem   generic map (larguraDados => dataWidth, larguraEndBancoRegs => 3)
          port map ( clk => CLOCK_50,
              endereco => SelReg,
              dadoEscrita => ULA_MUXULAImed,
              habilitaEscrita => habEscritaregistradores,
              saida  => ULAentradaA);
				
ULAentradaB <= MUXRAMImediato_MUXULAImediato;
-- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
-- FD:  entity work.Aula_Enderecamento --generic map (DATA_WIDTH => dataWidth, ADDR_WIDTH => addrWidth)
--         port map (palavraControle => pontosControle, opCode => opCode, saidaRegistradores => saidaRegistradores, 
-- 		   programCounter => programCounter, CLOCK_50 =>  CLOCK_50);
UC:  entity work.Unidade_Controle
        port map (palavraControle => pontosControle, opCode => opCodeLocal, clk =>  CLOCK_50);

writeRam <=  habEscritaBarramento;
readRam  <=  habLeituraBarramento;
barramentoEndereco <= imediatoEndereco;
barramentoDadosSaida <= ULAentradaA;
end architecture;