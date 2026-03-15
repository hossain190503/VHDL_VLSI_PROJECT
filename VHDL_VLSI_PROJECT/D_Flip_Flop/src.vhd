library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- D Flip Flop entity [20, 21]
entity flip_flop is
Port ( D : in STD_LOGIC;
       CLK : in STD_LOGIC;
       RST : in STD_LOGIC;
       Q, Qb : out STD_LOGIC); -- Q is output, Qb is inverse output
end flip_flop;

architecture Behavioral of flip_flop is
begin
process (D, CLK, RST)
begin
if (RST = '1') then
    Q <= '0';
    Qb <= '1';
elsif (rising_edge(CLK)) then
    Q <= D;
    Qb <= not D; -- Capture D and its complement on clock edge
end if;
end process;
end Behavioral;