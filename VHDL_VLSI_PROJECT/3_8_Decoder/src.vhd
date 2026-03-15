library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 3:8 Decoder [22, 23]
entity dec is
Port ( enable : in STD_LOGIC;
       A : in STD_LOGIC_VECTOR (2 downto 0); -- 3-bit input
       S : out STD_LOGIC_VECTOR (7 downto 0)); -- 8-bit decoded output
end dec;

architecture Behavioral of dec is
begin
-- Output logic for each decoded line [23, 24]
S(0)<= enable and (not A(2)) and (not A(1)) and (not A(0));
S(1)<= enable and (not A(2)) and (not A(1)) and (A(0));
S(2)<= enable and (not A(2)) and (A(1)) and (not A(0));
S(3)<= enable and (not A(2)) and (A(1)) and (A(0));
S(4)<= enable and (A(2)) and (not A(1)) and (not A(0));
S(5)<= enable and (A(2)) and (not A(1)) and (A(0));
S(6)<= enable and (A(2)) and (A(1)) and (not A(0));
S(7)<= enable and (A(2)) and (A(1)) and (A(0));
end Behavioral;