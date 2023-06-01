library ieee;
use ieee.std_logic_1164.all;

entity unidadeControleULA is
	
	port (
		opcode : in std_logic_vector (5 downto 0);
		funct : in std_logic_vector (5 downto 0);
		tipo_r : in std_logic;
		saida : out std_logic_vector (2 downto 0)
	);
end entity;

architecture comportamento of unidadeControleULA is
	signal saida_dec_op: std_logic_vector (2 downto 0);
	signal saida_dec_funct: std_logic_vector (2 downto 0);

begin
	decOPCODE :	entity work.decoderOPCODE
		port map (opcode => opcode, saida => saida_dec_op);
		
	decFUNCT  :	entity work.decoderFUNCT
		port map (funct => funct, saida => saida_dec_funct);

	MUX : entity work.muxGenerico2x1  generic map (larguraDados => 3)
		port map (entradaA_MUX => saida_dec_op, entradaB_MUX => saida_dec_funct, seletor_MUX => tipo_r,
						saida_MUX => saida);

end architecture;