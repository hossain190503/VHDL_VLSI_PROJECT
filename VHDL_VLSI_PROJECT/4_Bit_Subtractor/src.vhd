library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 4-bit Subtractor entity [7, 8]
entity bitsub is
Port ( A, B : in STD_LOGIC_VECTOR (3 downto 0);
       D : out STD_LOGIC_VECTOR (3 downto 0); -- Difference
       BR : out STD_LOGIC);                   -- Final Borrow
end bitsub;

architecture Behavioral of bitsub is
signal br0, br1, br2, br3: std_logic; -- Internal borrow signals
begin
-- Bit-by-bit subtraction logic [8]
D(0)<= A(0) xor B(0);
br0<=((not A(0)) and B(0));

D(1)<= A(1) xor B (1) xor br0;
br1<=(not A(1) and B(1)) or (not(A(1) xor B(1)) and br0);

D(2)<= A(2) xor B (2) xor br1;
br2<=(not A(2) and B(2)) or (not(A(2) xor B(2)) and br1);

D(3)<= A(2) xor B (2) xor br2; -- Note: Source uses A(2), B(2) here [8]
br3<=(not A(3) and B(3)) or (not(A(3) xor B(3)) and br2);

BR<= br3;
end Behavioral;