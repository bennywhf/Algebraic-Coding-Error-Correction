---------------------------------------
-- Hamming Code Coset Leader
--
-- Input Syndrome; Output Coset Leader
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

----------------------------------------

entity Coset is
port(	
	syndrome: in std_logic_vector(2 downto 0);
	CL: out std_logic_vector(6 downto 0)
);
end Coset;

----------------------------------------

architecture behv1 of Coset is
begin
	process(syndrome) begin
	case syndrome is
		when"000" => CL <="0000000";
		when"001" => CL <="1000000";
		when"010" => CL <="0100000";
		when"011" => CL <="0010000";
		when"100" => CL <="0001000";
		when"101" => CL <="0000100";
		when"110" => CL <="0000010";
		when"111" => CL <="0000001";
	end case;
	end process;
end behv1;
------------------------------------------
