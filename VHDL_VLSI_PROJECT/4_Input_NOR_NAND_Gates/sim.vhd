library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity for 4-input NAND and NOR [2, 3]
entity NAND_NOR is
Port ( A, B, C, D : in STD_LOGIC; -- Four inputs
       X, Y : out STD_LOGIC);    -- X for NAND result, Y for NOR result
end NAND_NOR;

architecture Behavioral of NAND_NOR is
begin
-- Implementing 4-input NAND using paired logic [3]
X<= ((A nand B) nand (C nand D));
-- Implementing 4-input NOR using paired logic [3]
Y<=((A nor B) nor (C nor D));
end Behavioral;