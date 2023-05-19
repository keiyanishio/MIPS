library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic ( larguraDados : natural := 32 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR (1 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		zero: out std_logic
    );
end entity;

architecture comportamento of ULASomaSub is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal passa : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal meio: STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		passa <= entradaB;
		meio <= soma when (seletor = "01") else
					subtracao when (seletor = "00")
					else passa;
		zero <= '1' when not (meio(31) or meio(30) or meio(29) or meio(28) or meio(27) or meio(26) or meio(25) or meio(24) or meio(23) or meio(22) or meio(21) or meio(20) or meio(19) or meio(18) or meio(17) or meio(16) or meio(15) or meio(14) or meio(13) or meio(12) or meio(11) or meio(10) or meio (9) or meio(8) or meio(7) or meio(6) or meio(5) or meio(4) or meio(3) or meio(2) or meio(1) or meio(0)) 
					else '0';
      saida <= meio;
end architecture;