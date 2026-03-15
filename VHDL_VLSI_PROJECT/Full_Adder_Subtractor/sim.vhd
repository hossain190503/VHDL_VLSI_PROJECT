library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FULLADDSUB_TB is
end FULLADDSUB_TB;

architecture Behavioral of FULLADDSUB_TB is
    component FULLADDSUB
    Port ( A, B, C : in STD_LOGIC;
           S, CO, DIF, BORR : out STD_LOGIC);
    end component;

    signal A, B, C, S, CO, DIF, BORR: std_logic;

begin
    uut: FULLADDSUB PORT MAP(A=>A, B=>B, C=>C, S=>S, CO=>CO, DIF=>DIF, BORR=>BORR); [14]

    stim: process
    begin
    -- Testing all 8 combinations of 3 inputs [14, 15]
    A<='0'; B<='0'; C<='0'; wait for 10 ns;
    A<='0'; B<='0'; C<='1'; wait for 10 ns;
    A<='0'; B<='1'; C<='0'; wait for 10 ns;
    A<='0'; B<='1'; C<='1'; wait for 10 ns;
    A<='1'; B<='0'; C<='0'; wait for 10 ns;
    A<='1'; B<='0'; C<='1'; wait for 10 ns;
    A<='1'; B<='1'; C<='0'; wait for 10 ns;
    A<='1'; B<='1'; C<='1'; wait for 10 ns;
    end process;
end Behavioral;