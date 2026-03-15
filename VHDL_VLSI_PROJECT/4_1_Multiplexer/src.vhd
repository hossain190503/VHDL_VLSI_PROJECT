library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 4:1 Mux entity [15]
entity mux4to1 is
Port ( A : in STD_LOGIC_VECTOR (3 downto 0); -- 4 inputs
       S : in STD_LOGIC_VECTOR (1 downto 0); -- Select signal
       Y : out STD_LOGIC);                   -- Selected output
end mux4to1;

architecture Behavioral of mux4to1 is
begin
process(A,S)
begin
case S is
when "00"=> Y<=A(0); -- Select input 0
when "01"=> Y<=A(1); -- Select input 1
when "10"=> Y<=A(2); -- Select input 2
when "11"=> Y<=A(3); -- Select input 3
when others=> Y<='0';
end case;
end process;
end Behavioral;