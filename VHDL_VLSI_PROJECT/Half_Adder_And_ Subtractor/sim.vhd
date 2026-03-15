library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity halfaddsub_tb is
end halfaddsub_tb;

architecture Behavioral of halfaddsub_tb is
    component halfaddsub
    Port ( A, B : in STD_LOGIC;
           SUM, CARRY, DIFF, BORR : out STD_LOGIC);
    end component;

    signal A, B, SUM, CARRY, DIFF, BORR : std_logic;

begin
    uut: halfaddsub port map (A=>A, B=>B, SUM=>SUM, CARRY=>CARRY, DIFF=>DIFF, BORR=>BORR); [11, 12]

    stim_proc: process
    begin
    -- Exhaustive test for 1-bit inputs [12]
    A<='0'; B<='0'; wait for 10ns;
    A<='0'; B<='1'; wait for 10ns;
    A<='1'; B<='0'; wait for 10ns;
    A<='1'; B<='1'; wait for 10ns;
    end process;
end Behavioral;