library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity for Full Adder and Full Subtractor [12]
entity FULLADDSUB is
Port ( A, B, C : in STD_LOGIC; -- Inputs (C is Carry/Borrow in)
       S, CO : out STD_LOGIC;   -- Sum and Carry out
       DIF, BORR : out STD_LOGIC); -- Difference and Borrow out
end FULLADDSUB;

architecture Behavioral of FULLADDSUB is
begin
-- Full Adder logic [13]
S <= ((A xor B) xor C);
CO <= ((A AND B) OR (B AND C) OR (C AND A));

-- Full Subtractor logic [13]
DIF <= ((A xor B) xor C);
BORR <= (NOT A AND B) OR (NOT (A XOR B) AND C);
end Behavioral;