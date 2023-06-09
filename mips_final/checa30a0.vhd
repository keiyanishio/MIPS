library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity checa30a0 is
    port
    (
        entradaA, entradaB, slt, carry_in, sel_inverte_B: in STD_LOGIC;
		  sel_res: in std_logic_vector(1 downto 0);
		  resultado, carry_out: out std_logic
		  
    );
end entity;

architecture comportamento of checa30a0 is
	signal inverte_B: std_logic;
	signal saida_muxB: std_logic;
	signal saida_soma: std_logic;
	
	
begin

muxB: entity work.muxGenerico_bit_1 generic map (larguraDados => 1)
        port map( entradaA_MUX => entradaB,
                 entradaB_MUX =>  inverte_B,
                 seletor_MUX => sel_inverte_B,
                 saida_MUX => saida_muxB);

somador: entity work.componenteSomador
        port map( entradaA => entradaA,
                 entradaB =>  saida_muxB,
					  carry_in => carry_in,
                 soma => saida_soma,
                 carry_out => carry_out);
					  
					  
muxResultado :  entity work.muxGenerico4x1_1
        port map( ent0_MUX => saida_muxB and entradaA,
                 ent1_MUX =>  saida_muxB or entradaA,
					  ent2_MUX => saida_soma,
					  ent3_MUX => slt,
                 seletor_MUX => sel_res,
                 saida_MUX => resultado);
					  
					  
					  
inverte_B <= not entradaB;


end architecture;