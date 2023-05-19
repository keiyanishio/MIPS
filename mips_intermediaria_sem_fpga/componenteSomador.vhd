library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity componenteSomador is
    port
    (
        entradaA, entradaB, carry_in: in STD_LOGIC;
		  soma, carry_out: out std_logic
		  
    );
end entity;

architecture comportamento of componenteSomador is
    begin
        soma <= carry_in xor (entradaA xor entradaB);
		  carry_out <= ((entradaA xor entradaB) and carry_in) or (entradaA and entradaB);
end architecture;