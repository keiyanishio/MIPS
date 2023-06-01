library ieee;
use ieee.std_logic_1164.all;

entity unidadeControle is
  port ( opcode : in std_logic_vector(5 downto 0);
			funct : in std_logic_vector(5 downto 0);
			mux_jmp : out std_logic;
         hab_esc : out std_logic;
			--ula_ctrl : out std_logic_vector(1 downto 0);
			mux_rt_rd: out std_logic;
			mux_rt_ime: out std_logic;
			mux_ula_mem: out std_logic;
			hab_beq: out std_logic;
			--opcode_out: out std_logic_vector(5 downto 0);
			tipo_r: out std_logic;
			habLeituraMEM: out std_logic;
			habEscritaMEM: out std_logic
  );
end entity;

architecture comportamento of unidadeControle is
 
  constant LW    : std_logic_vector(5 downto 0) := "100011";
  constant SW    : std_logic_vector(5 downto 0) := "101011";
  constant BEQ   : std_logic_vector(5 downto 0) := "000100";
  constant JMP   : std_logic_vector(5 downto 0) := "000010";
  

  begin
		hab_esc <= '1' when (opcode = "000000" or opcode = LW) else '0';
		
		--ula_ctrl <= "01" when (funct = SOMA or opcode = LW or opcode = SW) else "00";
		
		mux_rt_rd <= '0' when opcode = LW else 
		            '0' when opcode = SW else 
						'0' when opcode = BEQ else 
						'1';
						
		mux_rt_ime<= '1' when opcode = LW else
		            '1' when opcode = SW else 
						'0';
						
		mux_ula_mem<= '1' when opcode = LW else
						  '0';
		
		hab_beq<= '1' when opcode = BEQ else 
               '0';	
			
	   habLeituraMEM<= '1' when opcode = LW else
	                   '0';	
							 
		habEscritaMEM<= '1' when opcode = SW else
	                   '0';	
							 
		mux_jmp <= '1' when opcode = JMP else
		           '0';
					  
	   tipo_r <= '1' when opcode = "000000" else '0';
		
end architecture;