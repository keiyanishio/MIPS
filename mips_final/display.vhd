library ieee;
use ieee.std_logic_1164.all;

entity display is
  -- Total de bits das entradas e saidas
  port   (

    data_out: in std_logic_vector(31 downto 0);
	 HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector (6 downto 0)
  );
end entity;


architecture arquitetura of display is
  
  signal h0: std_logic_vector(6 downto 0);
  signal h1: std_logic_vector(6 downto 0);
  signal h2: std_logic_vector(6 downto 0);
  signal h3: std_logic_vector(6 downto 0);
  signal h4: std_logic_vector(6 downto 0);
  signal h5: std_logic_vector(6 downto 0);
  
begin



			 
display0 :  entity work.conversorHex7Seg
        port map(dadoHex => data_out(3 downto 0),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => h0);
			


			 
display1 :  entity work.conversorHex7Seg
        port map(dadoHex => data_out(7 downto 4),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => h1);
				
				
				

			 
display2 :  entity work.conversorHex7Seg
        port map(dadoHex => data_out(11 downto 8),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => h2);			

					  



			 
display3 :  entity work.conversorHex7Seg
        port map(dadoHex => data_out(15 downto 12),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => h3);	
					  


			 
display4 :  entity work.conversorHex7Seg
        port map(dadoHex => data_out(19 downto 16),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => h4);
					  
					  


			 
display5 :  entity work.conversorHex7Seg
        port map(dadoHex => data_out(23 downto 20),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => h5);
					  
HEX0 <= h0;
HEX1 <= h1;
HEX2 <= h2;
HEX3 <= h3;
HEX4 <= h4;
HEX5 <= h5;






end architecture;