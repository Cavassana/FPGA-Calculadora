library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.std_logic_unsigned.ALL;

ENTITY decod7segUnid IS 
    PORT(entrada_display		: IN STD_LOGIC_VECTOR(5 downto 0);
			a, b, c, d, e, f, g 	: OUT STD_LOGIC);
END decod7segUnid;

ARCHITECTURE teste_decod7segUnid OF decod7segUnid IS 

BEGIN 	

PROCESS(entrada_display)
	VARIABLE segmentos : STD_LOGIC_VECTOR(0 TO 6); 
BEGIN
	CASE entrada_display IS 
		WHEN "110010" => segmentos := "1110000"; -- -14
		WHEN "110011" => segmentos := "1110000"; -- -13
		WHEN "110100" => segmentos := "1110000"; -- -12
		WHEN "110101" => segmentos := "1110000"; -- -11
		WHEN "110110" => segmentos := "1110000"; -- -10
		WHEN "110111" => segmentos := "1110000"; -- -09
		WHEN "111000" => segmentos := "1110000"; -- -08
		WHEN "111001" => segmentos := "1110000"; -- -07
		WHEN "111010" => segmentos := "1011111"; -- -06
		WHEN "111011" => segmentos := "1011011"; -- -05
		WHEN "111100" => segmentos := "0110011"; -- -04
		WHEN "111101" => segmentos := "1111001"; -- -03	
		WHEN "111110" => segmentos := "1101101"; -- -02
		WHEN "111111" => segmentos := "0110000"; -- -01
		WHEN "000000" => segmentos := "1111110"; -- 00
		WHEN "000001" => segmentos := "0110000"; -- 01
		WHEN "000010" => segmentos := "1101101"; -- 02
		WHEN "000011" => segmentos := "1111001"; -- 03
		WHEN "000100" => segmentos := "0110011"; -- 04
		WHEN "000101" => segmentos := "1011011"; -- 05
		WHEN "000110" => segmentos := "1011111"; -- 06
		WHEN "000111" => segmentos := "1110000"; -- 07
		WHEN "000111" => segmentos := "1110000"; -- 08
		WHEN "000111" => segmentos := "1110000"; -- 09
		WHEN "000111" => segmentos := "1110000"; -- 10
		WHEN "000111" => segmentos := "1110000"; -- 11
		WHEN "000111" => segmentos := "1110000"; -- 12
		WHEN "000111" => segmentos := "1110000"; -- 13
		WHEN "000111" => segmentos := "1110000"; -- 14
		WHEN OTHERS   => segmentos := "0000000"; -- null
		
	END CASE;
	a <= segmentos(0);
	b <= segmentos(1);
	c <= segmentos(2);
	d <= segmentos(3);
	e <= segmentos(4);
	f <= segmentos(5);
    g <= segmentos(6);
	 
END PROCESS;

END teste_decod7segUnid;