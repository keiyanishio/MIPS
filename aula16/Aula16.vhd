library ieee;
use ieee.std_logic_1164.all;

entity Aula16 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 func: out std_logic_vector(5 downto 0);
	 PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
	 opc: out std_logic_vector(5 downto 0);
	 imedia: out std_logic_vector(15 downto 0);
	 
	 ula_saida: out std_logic_vector(31 downto 0);
	 RS_OUT: out std_logic_vector(31 downto 0);
	 RT_OUT: out std_logic_vector(31 downto 0)
  );
end entity;


architecture arquitetura of Aula16 is

-- Faltam alguns sinais:
   signal CLK: std_logic;
	signal saida_pc: std_logic_vector(larguraEnderecos-1 downto 0);
	signal saida_inc: std_logic_vector(larguraEnderecos-1 downto 0);
	signal saida_inc2: std_logic_vector(larguraEnderecos-1 downto 0);
	signal saida_rom: std_logic_vector(larguraEnderecos-1 downto 0);
	signal saida_rs: std_logic_vector(larguraEnderecos-1 downto 0);
   signal saida_rt: std_logic_vector(larguraEnderecos-1 downto 0);
   signal sel_inverte_B: std_logic;
	signal zero_flag: std_logic;
	signal saida_ula: std_logic_vector(larguraEnderecos-1 downto 0);
	
	signal RS: std_logic_vector(4 downto 0);
	signal RT: std_logic_vector(4 downto 0);
	signal RD: std_logic_vector(4 downto 0);
	
	signal endereco: std_logic_vector(larguraEnderecos-1 downto 0);
	
	signal escreve: std_logic;
	signal hab_esc: std_logic;
	
	signal Operacao_Ula: std_logic_vector (1 downto 0);
	signal selUla: std_logic_vector (1 downto 0);
	
	signal opcode: std_logic_vector (5 downto 0);
	signal funct: std_logic_vector(5 downto 0);
	
	signal sinal_in: std_logic_vector(15 downto 0);
	
	signal sinal_out: std_logic_vector(31 downto 0);
	
	signal sel_beq: std_logic;
	signal saida_mux_beq: std_logic_vector(31 downto 0);
	
	signal sel_rt_rd: std_logic;
	signal saida_mux_rt_rd: std_logic_vector(4 downto 0);
	
	signal sel_rt_imediato: std_logic;
	
	signal saida_mux_rt_imediato: std_logic_vector(31 downto 0);
	signal saida_ram: std_logic_vector(31 downto 0);
	
	signal WE: std_logic;
	signal RE: std_logic;
	
	signal sel_ula_mem: std_logic;
	signal saida_ula_mem:std_logic_vector(31 downto 0);
	
	signal mux_rt_rd: std_logic;
	signal mux_rt_ime: std_logic;
	signal mux_ula_mem: std_logic;
	signal hab_beq: std_logic;
	signal habLeituraMEM: std_logic;
	signal habEscritaMEM: std_logic;
	
	signal mux_jmp: std_logic;
	signal sel_jmp: std_logic;
	
	signal imediato: std_logic_vector(25 downto 0);
	
	signal saida_mux_pc_beq_pc: std_logic_vector(31 downto 0);
	
	signal imediato_i: std_logic_vector(15 downto 0);
						 
	
  
  
begin


-- Para simular, fica mais simples tirar o edgeDetector
--gravar:  if simulacao generate
CLK <= CLOCK_50;
--else generate
--detectorSub0: work.edgeDetector(bordaSubida)
--        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
--end generate;



-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => saida_mux_pc_beq_pc , DOUT => saida_pc, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 4)
        port map( entrada => saida_pc, saida => saida_inc);
		  
incrementaImediato :  entity work.somadorGenerico  generic map (larguraDados => 32)
        port map( entradaA => saida_inc, entradaB =>  sinal_out(29 downto 0) & "00", saida => saida_inc2);
		  
muxBeq : entity work.muxGenerico2x1 generic map (larguraDados => 32)
        port map( entradaA_MUX => saida_inc,
                 entradaB_MUX =>  saida_inc2,
                 seletor_MUX => sel_beq,
                 saida_MUX => saida_mux_beq);
					  
muxRTRD : entity work.muxGenerico2x1 generic map (larguraDados => 5)
        port map( entradaA_MUX => RT,
                 entradaB_MUX =>  RD,
                 seletor_MUX => sel_rt_rd,
                 saida_MUX => saida_mux_rt_rd);  
		  
		  
-- O port map completo da ULA:
ULA1 : entity work.ula_aula16  generic map(larguraDados => 32)
          port map (entradaA => saida_rs, entradaB => saida_mux_rt_imediato, 
			           resultado => saida_ula, sel_inverte_B => sel_inverte_B, zero => zero_flag, sel_res => Operacao_Ula);
						  
muxULAMEM : entity work.muxGenerico2x1 generic map (larguraDados => 32)
        port map( entradaA_MUX => saida_ula,
                 entradaB_MUX => saida_ram,
                 seletor_MUX => sel_ula_mem,
                 saida_MUX => saida_ula_mem);
					  
					  
RAM1 : entity work.RAMMIPS  generic map (dataWidth => 32, addrWidth => 32, memoryAddrWidth => 6)
          port map (clk => CLK, Endereco => saida_ula, Dado_in => saida_rs, 
			           Dado_out => saida_ram, we => WE, re => RE);
			 

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.ROMMIPS  generic map (dataWidth => 32, addrWidth => 32, memoryAddrWidth => 6)
          port map (Endereco => saida_pc, Dado => saida_rom);
			 			 
Registradores : entity work.bancoReg   generic map (larguraDados => larguraEnderecos, larguraEndBancoRegs => 5)
          port map (clk => CLK,
						  enderecoA => RS, 
						  enderecoB => RT,
						  enderecoC => saida_mux_rt_rd,
						  dadoEscritaC => saida_ula,
						  escreveC => escreve,
						  saidaA => saida_rs,
						  saidaB => saida_rt);
						  
						  
muxRTIMEDIATO : entity work.muxGenerico2x1 generic map (larguraDados => 32)
			port map( entradaA_MUX => saida_rt,
                 entradaB_MUX =>  sinal_out,
                 seletor_MUX => sel_rt_imediato,
                 saida_MUX => saida_mux_rt_imediato);  
			 

UC : entity work.unidadeControle 
			port map (opcode => opcode,
						 funct => funct,
						 mux_jmp => mux_jmp,
						 hab_esc => hab_esc,
						 ula_ctrl => selUla,
						 mux_rt_rd => mux_rt_rd,
						 mux_rt_ime => mux_rt_ime,
						 mux_ula_mem => mux_ula_mem,
						 hab_beq => hab_beq,
						 habLeituraMEM => habLeituraMEM,
						 habEscritaMEM => habEscritaMEM);
						 
						 
SINAL_ESTENDE: entity work.SinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => 32)
          port map (estendeSinal_IN => sinal_in, estendeSinal_OUT =>  sinal_out);
			 
			 
muxPC_BEQ_JMP: entity work.muxGenerico2x1 generic map (larguraDados => 32)
			port map( entradaA_MUX => saida_mux_beq,
                 entradaB_MUX => saida_inc(31 downto 28) & imediato & "00",
                 seletor_MUX => sel_jmp,
                 saida_MUX => saida_mux_pc_beq_pc); 
			 
			 




opcode<=saida_rom(31 downto 26);
RS<=saida_rom(25 downto 21);
RT<=saida_rom(20 downto 16);
RD<=saida_rom(15 downto 11);
funct<=saida_rom(5 downto 0);
imediato <= saida_rom(25 downto 0);
imediato_i <= saida_rom(15 downto 0);


ula_saida <= saida_ula;

RS_OUT <= saida_rs;
RT_OUT <= saida_rt;

Operacao_Ula <= selUla;
escreve <= hab_esc;

func<=funct;
opc <= opcode;
imedia <= imediato_i;

sinal_in<=saida_rom(15 downto 0);

PC_OUT<=saida_pc;

sel_beq <= hab_beq and zero_flag;
sel_rt_rd <= mux_rt_rd;

sel_rt_imediato <= mux_rt_ime;

sel_ula_mem <= mux_ula_mem;

sel_jmp <= mux_jmp;

WE <= habEscritaMEM;
RE <= habLeituraMEM;
end architecture;