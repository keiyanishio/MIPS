library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  

entity ula_aula16 is
	
	generic ( 
			larguraDados : natural := 32
			);
	
	port (
		entradaA, entradaB  : in std_logic_vector (larguraDados-1 downto 0);
		sel_res : in std_logic_vector (1 downto 0);
		sel_inverte_B : in std_logic;
		resultado : out std_logic_vector (larguraDados-1 downto 0);
		zero: out std_logic
	);
end entity;

architecture arquitetura of ula_aula16 is

	signal carry_out_0 : std_logic;
	signal carry_out_1 : std_logic;
	signal carry_out_2 : std_logic;
	signal carry_out_3 : std_logic;
	signal carry_out_4 : std_logic;
	signal carry_out_5 : std_logic;
	signal carry_out_6 : std_logic;
	signal carry_out_7 : std_logic;
	signal carry_out_8 : std_logic;
	signal carry_out_9 : std_logic;
	signal carry_out_10 : std_logic;
	signal carry_out_11 : std_logic;
	signal carry_out_12 : std_logic;
	signal carry_out_13 : std_logic;
	signal carry_out_14 : std_logic;
	signal carry_out_15 : std_logic;
	signal carry_out_16 : std_logic;
	signal carry_out_17 : std_logic;
	signal carry_out_18 : std_logic;
	signal carry_out_19 : std_logic;
	signal carry_out_20 : std_logic;
	signal carry_out_21 : std_logic;
	signal carry_out_22 : std_logic;
	signal carry_out_23 : std_logic;
	signal carry_out_24 : std_logic;
	signal carry_out_25 : std_logic;
	signal carry_out_26 : std_logic;
	signal carry_out_27 : std_logic;
	signal carry_out_28 : std_logic;
	signal carry_out_29 : std_logic;
	signal carry_out_30 : std_logic;
	signal carry_out_31 : std_logic;
	
	signal overflow : std_logic;
	signal slt_31 : std_logic;
	signal saida_soma: std_logic;
	
begin
	BIT0 : entity work.checa30a0
		port map (entradaA => entradaA(0), entradaB => entradaB(0), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => sel_inverte_B, 
				slt => slt_31, carry_out => carry_out_0, resultado => resultado(0));

	BIT1 : entity work.checa30a0
		port map (entradaA => entradaA(1), entradaB => entradaB(1), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_0, 
				slt => '0', carry_out => carry_out_1, resultado => resultado(1));
				
				
	BIT2 : entity work.checa30a0
		port map (entradaA => entradaA(2), entradaB => entradaB(2), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_1, 
				slt => '0', carry_out => carry_out_2, resultado => resultado(2));
				
				
				
	BIT3 : entity work.checa30a0
		port map (entradaA => entradaA(3), entradaB => entradaB(3), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_2, 
				slt => '0', carry_out => carry_out_3, resultado => resultado(3));
				
							
	BIT4 : entity work.checa30a0
		port map (entradaA => entradaA(4), entradaB => entradaB(4), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_3, 
				slt => '0', carry_out => carry_out_4, resultado => resultado(4));
				
				
					
	BIT5 : entity work.checa30a0
		port map (entradaA => entradaA(5), entradaB => entradaB(5), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_4, 
				slt => '0', carry_out => carry_out_5, resultado => resultado(5));
				
				
				
				

	BIT6 : entity work.checa30a0
		port map (entradaA => entradaA(6), entradaB => entradaB(6), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_5, 
				slt => '0', carry_out => carry_out_6, resultado => resultado(6));

	BIT7 : entity work.checa30a0
		port map (entradaA => entradaA(7), entradaB => entradaB(7), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_6, 
				slt => '0', carry_out => carry_out_7, resultado => resultado(7));
				
				
				
				
				
				
	BIT8 : entity work.checa30a0
		port map (entradaA => entradaA(8), entradaB => entradaB(8), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_7, 
				slt => '0', carry_out => carry_out_8, resultado => resultado(8));
			
			
			
			

	BIT9 : entity work.checa30a0
		port map (entradaA => entradaA(9), entradaB => entradaB(9), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_8, 
				slt => '0', carry_out => carry_out_9, resultado => resultado(9));
			
			
			
			
			
			
			

	BIT10 : entity work.checa30a0
		port map (entradaA => entradaA(10), entradaB => entradaB(10), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_9, 
				slt => '0', carry_out => carry_out_10, resultado => resultado(10));
			
			
		

	BIT11 : entity work.checa30a0
		port map (entradaA => entradaA(11), entradaB => entradaB(11), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_10, 
				slt => '0', carry_out => carry_out_11, resultado => resultado(11));
			
			
			

	BIT12 : entity work.checa30a0
		port map (entradaA => entradaA(12), entradaB => entradaB(12), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_11, 
				slt => '0', carry_out => carry_out_12, resultado => resultado(12));
			
			
			
			
			

	BIT13 : entity work.checa30a0
		port map (entradaA => entradaA(13), entradaB => entradaB(13), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_12, 
				slt => '0', carry_out => carry_out_13, resultado => resultado(13));
			
			
	BIT14 : entity work.checa30a0
		port map (entradaA => entradaA(14), entradaB => entradaB(14), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_13, 
				slt => '0', carry_out => carry_out_14, resultado => resultado(14));

			
			
			
			
			
	BIT15 : entity work.checa30a0
		port map (entradaA => entradaA(15), entradaB => entradaB(15), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_14, 
				slt => '0', carry_out => carry_out_15, resultado => resultado(15));

			
			
			
			
	BIT16 : entity work.checa30a0
		port map (entradaA => entradaA(16), entradaB => entradaB(16), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_15, 
				slt => '0', carry_out => carry_out_16, resultado => resultado(16));

			
			
			
			
			
	BIT17 : entity work.checa30a0
		port map (entradaA => entradaA(17), entradaB => entradaB(17), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_16, 
				slt => '0', carry_out => carry_out_17, resultado => resultado(17));

			
			
			
			
			
	BIT18 : entity work.checa30a0
		port map (entradaA => entradaA(18), entradaB => entradaB(18), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_17, 
				slt => '0', carry_out => carry_out_18, resultado => resultado(18));

			
			
			
			
	BIT19 : entity work.checa30a0
		port map (entradaA => entradaA(19), entradaB => entradaB(19), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_18, 
				slt => '0', carry_out => carry_out_19, resultado => resultado(19));

			
			
			
			
			
	BIT20 : entity work.checa30a0
		port map (entradaA => entradaA(20), entradaB => entradaB(20), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_19, 
				slt => '0', carry_out => carry_out_20, resultado => resultado(20));

			
			
			
			
			
	BIT21 : entity work.checa30a0
		port map (entradaA => entradaA(21), entradaB => entradaB(21), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_20, 
				slt => '0', carry_out => carry_out_21, resultado => resultado(21));

			
			
			
			
	BIT22 : entity work.checa30a0
		port map (entradaA => entradaA(22), entradaB => entradaB(22), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_21, 
				slt => '0', carry_out => carry_out_22, resultado => resultado(22));
			
			
			
			
			
			

	BIT23 : entity work.checa30a0
		port map (entradaA => entradaA(23), entradaB => entradaB(23), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_22, 
				slt => '0', carry_out => carry_out_23, resultado => resultado(23));
			
			
			
			
			
			

	BIT24 : entity work.checa30a0
		port map (entradaA => entradaA(24), entradaB => entradaB(24), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_23, 
				slt => '0', carry_out => carry_out_24, resultado => resultado(24));
			
			
			
			
			

	BIT25 : entity work.checa30a0
		port map (entradaA => entradaA(25), entradaB => entradaB(25), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_24, 
				slt => '0', carry_out => carry_out_25, resultado => resultado(25));
			
			
			
			
			
			
			

	BIT26 : entity work.checa30a0
		port map (entradaA => entradaA(26), entradaB => entradaB(26), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_25, 
				slt => '0', carry_out => carry_out_26, resultado => resultado(26));
			
			
			
			
			
			
			

	BIT27 : entity work.checa30a0
		port map (entradaA => entradaA(27), entradaB => entradaB(27), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_26, 
				slt => '0', carry_out => carry_out_27, resultado => resultado(27));
			
			
			
			
			
			

	BIT28 : entity work.checa30a0
		port map (entradaA => entradaA(28), entradaB => entradaB(28), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_27, 
				slt => '0', carry_out => carry_out_28, resultado => resultado(28));
			
			
			
			
			
			

	BIT29 : entity work.checa30a0
		port map (entradaA => entradaA(29), entradaB => entradaB(29), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_28, 
				slt => '0', carry_out => carry_out_29, resultado => resultado(29));
			
			
			
			
			

	BIT30 : entity work.checa30a0
		port map (entradaA => entradaA(30), entradaB => entradaB(30), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_29, 
				slt => '0', carry_out => carry_out_30, resultado => resultado(30));
			
			
			

	BIT31 : entity work.checa31
		port map (entradaA => entradaA(31), entradaB => entradaB(31), sel_res => sel_res,
				sel_inverte_B => sel_inverte_B, carry_in => carry_out_30, 
				slt => '0', carry_out => carry_out_31, resultado => resultado(31), overflow => overflow, 
				soma_out => saida_soma);
	
zero <= '1' when not (resultado(31) or resultado(30) or resultado(29) or resultado(28) or resultado(27) or resultado(26) or resultado(25) or resultado(24) or resultado(23) or resultado(22) or resultado(21) or resultado(20) or resultado(19) or resultado(18) or resultado(17) or resultado(16) or resultado(15) or resultado(14) or resultado(13) or resultado(12) or resultado(11) or resultado(10) or resultado (9) or resultado(8) or resultado(7) or resultado(6) or resultado(5) or resultado(4) or resultado(3) or resultado(2) or resultado(1) or resultado(0)) 
					else '0';
				
				
slt_31 <= overflow xor saida_soma;
	

end architecture;