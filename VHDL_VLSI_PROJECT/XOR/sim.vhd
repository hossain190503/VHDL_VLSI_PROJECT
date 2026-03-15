library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR_gate_tb is
end XOR_gate_tb;

architecture Behavioral of XOR_gate_tb is
    signal A, B, XOR_Output : STD_LOGIC;
begin
    -- Direct entity instantiation for the UUT [29]
    UUT: entity work.XOR_gate
    port map ( A => A, B => B, XOR_Output => XOR_Output );

    stim_proc: process
    begin
    -- Applying all logic combinations for XOR [29]
    A <= '0'; B <= '0'; wait for 10 ns;
    A <= '0'; B <= '1'; wait for 10 ns;
    A <= '1'; B <= '0'; wait for 10 ns;
    A <= '1'; B <= '1'; wait for 10 ns;
    wait;
    end process;
end Behavioral;