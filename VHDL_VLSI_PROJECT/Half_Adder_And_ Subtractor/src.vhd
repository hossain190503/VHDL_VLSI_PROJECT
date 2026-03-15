library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity for combined Half Adder and Subtractor [10]
entity halfaddsub is
Port ( A, B : in STD_LOGIC;
       SUM, CARRY : out STD_LOGIC;  -- Adder outputs
       DIFF, BORR : out STD_LOGIC); -- Subtractor outputs
end halfaddsub;

architecture Behavioral of halfaddsub is
begin
-- Half Adder logic [10]
SUM<= A xor B;
CARRY<= A and B;

-- Half Subtractor logic [11]
DIFF<= A xor B;
BORR <=(not A) and B;
end Behavioral;