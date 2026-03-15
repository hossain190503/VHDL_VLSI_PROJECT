-- Library declarations [1]
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity for 2-input AND and OR gates [1]
entity AND_OR is
Port ( A, B : in STD_LOGIC;  -- Inputs
       X, Y : out STD_LOGIC); -- X for AND output, Y for OR output
end AND_OR;

-- Behavioral architecture [1]
architecture Behavioral of AND_OR is
begin
X<= A and B; -- Logical AND operation
Y<= A or B;  -- Logical OR operation
end Behavioral;