library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

ENTITY divisorFrequencia IS
GENERIC( frequencia_osc : NATURAL := 1250000); -- 12.5Mhz (padrao p/ teste)
	PORT(	clk	: IN STD_LOGIC;
			pulso	: OUT STD_LOGIC); -- pulso de 1hz
END divisorFrequencia;

ARCHITECTURE teste_divisorFrequencia OF divisorFrequencia IS 

BEGIN
-- Divisor de frequencia
PROCESS(clk) 
	VARIABLE aContagem: natural range 0 to frequencia_osc;
BEGIN
	IF (clk'EVENT AND clk ='1' AND aContagem<(frequencia_osc/2)-1) THEN
		pulso <='1';
		aContagem := aContagem+1;
	ELSIF (clk'EVENT AND clk ='1' AND aContagem<frequencia_osc-1) THEN
		pulso <='0';
		aContagem := aContagem+1;
	ELSIF (clk'EVENT AND clk ='1' AND aContagem<frequencia_osc) THEN
		pulso <='1';
		aContagem := 0;
	END IF;
END PROCESS; -- 

END teste_divisorFrequencia;