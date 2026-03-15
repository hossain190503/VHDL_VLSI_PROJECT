library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- XOR Gate entity [28]
entity XOR_gate is
Port ( A, B : in STD_LOGIC;
       XOR_Output : out STD_LOGIC);
end XOR_gate;

architecture Behavioral of XOR_gate is
begin
-- Direct assignment of XOR logic [28]
XOR_Output <= A xor B;
end Behavioral;