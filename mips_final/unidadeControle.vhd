library ieee;
use ieee.std_logic_1164.all;

entity unidadeControle is
  port ( opcode : in std_logic_vector(5 downto 0);
			funct : in std_logic_vector(5 downto 0);
			mux_jmp : out std_logic;
         hab_esc : out std_logic;
			--ula_ctrl : out std_logic_vector(1 downto 0);
			mux_rt_rd: out std_logic_vector (1 downto 0);
			mux_rt_ime: out std_logic;
			mux_ula_mem: out std_logic_vector (1 downto 0);
			hab_beq: out std_logic;
			--opcode_out: out std_logic_vector(5 downto 0);
			tipo_r: out std_logic;
			jr: out std_logic;
			bne: out std_logic;
			andi_ori: out std_logic;
			habLeituraMEM: out std_logic;
			habEscritaMEM: out std_logic
  );
end entity;

architecture comportamento of unidadeControle is
 
  constant LW    : std_logic_vector(5 downto 0) := "100011";
  constant SW    : std_logic_vector(5 downto 0) := "101011";
  constant BEQ   : std_logic_vector(5 downto 0) := "000100";
  constant JMP   : std_logic_vector(5 downto 0) := "000010";
  
  constant ADDI  : std_logic_vector(5 downto 0) := "001000";
  constant ORI   : std_logic_vector(5 downto 0) := "001101";
  constant ANDI  : std_logic_vector(5 downto 0) := "001100";
  constant JAL   : std_logic_vector(5 downto 0) := "000011";
  constant JR_OP    : std_logic_vector(5 downto 0) := "001000"; --FUNCT
  constant LUI   : std_logic_vector(5 downto 0) := "001111";
  constant SLTI  : std_logic_vector(5 downto 0) := "001010";
  constant BNE_OP   : std_logic_vector(5 downto 0) := "000101";
  

  
  begin
		hab_esc <= '1' when (opcode = "000000" or opcode = LW or opcode = ADDI or opcode = ORI
									or opcode = ANDI or opcode = JAL or opcode = LUI or opcode = SLTI
									) else '0';
		
		--ula_ctrl <= "01" when (funct = SOMA or opcode = LW or opcode = SW) else "00";
		
		mux_rt_rd <= "01" when opcode = "000000" else 
		             "10" when opcode = JAL else 
						 "00";

						
		mux_rt_ime<= '1' when opcode = LW else
		             '1' when opcode = SW else 
						 '1' when opcode = ADDI else 
						 '1' when opcode = ORI else
						 '1' when opcode = ANDI else
					    '1' when opcode = SLTI else 	 
						 '0';
						 
		
						
		mux_ula_mem<= "01" when opcode = LW else
						  "10" when opcode = JAL else
						  "11" when opcode = LUI else
						  "00";
		
		hab_beq<= '1' when opcode = BEQ else 
               '0';
					
		bne<= '1' when opcode = BNE_OP else 
               '0';
				
			
	   habLeituraMEM<= '1' when opcode = LW else
	                   '0';	
							 
		habEscritaMEM<= '1' when opcode = SW else
	                   '0';	
							 
		mux_jmp <= '1' when opcode = JMP or opcode = JAL else
		           '0';
					  
	   tipo_r <= '1' when opcode = "000000" else '0';
		
		jr <= '1' when opcode = "000000" and funct = JR_OP else '0';
		
		andi_ori <= '1' when opcode = ANDI or opcode = ORI else '0';
		
end architecture;