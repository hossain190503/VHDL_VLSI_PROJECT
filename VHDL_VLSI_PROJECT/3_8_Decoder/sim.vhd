library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dec_tb is
end dec_tb;

architecture Behavioral of dec_tb is
    component dec
    Port ( enable : in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (2 downto 0);
           S : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

    signal enable: std_logic;
    signal A: std_logic_vector (2 downto 0);
    signal S: std_logic_vector (7 downto 0);

begin
    uut: dec port map (enable=> enable, A=>A, S=>S); [24]

    stim_proc: process
    begin
    -- Test decoder output while enabled and disabled [25]
    enable<='0'; A<="000"; wait for 10 ns;
    enable<='1'; A<="000"; wait for 10 ns;
    enable<='1'; A<="001"; wait for 10 ns;
    enable<='1'; A<="010"; wait for 10 ns;
    enable<='1'; A<="011"; wait for 10 ns;
    enable<='1'; A<="100"; wait for 10 ns;
    enable<='1'; A<="101"; wait for 10 ns;
    enable<='1'; A<="110"; wait for 10 ns;
    enable<='1'; A<="111"; wait for 10 ns;
    end process;
end Behavioral;