library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; -- For vector incrementing

-- 4-bit Up-Counter [19]
entity bit_counter is
Port ( clk : in STD_LOGIC;     -- System clock
       reset : in STD_LOGIC;   -- High-active reset
       counter : out STD_LOGIC_VECTOR (3 downto 0));
end bit_counter;

architecture Behavioral of bit_counter is
signal counter_up: std_logic_vector(3 downto 0);
begin
process(clk)
begin
if(rising_edge(clk)) then
    if(reset='1') then
        counter_up <= x"0"; -- Reset counter to 0
    else
        counter_up <= counter_up + x"1"; -- Increment on clock edge
    end if;
end if;
end process;
counter <= counter_up;
end Behavioral;
