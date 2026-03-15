library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 8:1 Mux entity [17]
entity mux_8to1 is
Port ( A : in STD_LOGIC_VECTOR (7 downto 0); -- 8 inputs
       S : in STD_LOGIC_VECTOR (2 downto 0); -- 3 selection bits
       Y : out STD_LOGIC);
end mux_8to1;

architecture Behavioral of mux_8to1 is
begin
process(A, S)
begin
case S is
when "000"=> Y<=A(0);
when "001"=> Y<=A(1);
when "010"=> Y<=A(2);
when "011"=> Y<=A(3);
when "100"=> Y<=A(4);
when "101"=> Y<=A(5);
when "110"=> Y<=A(6);
when "111"=> Y<=A(7);
when others=> Y<='0';
end case;
end process;
end Behavioral;
