library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bitsub_tb is
end bitsub_tb;

architecture Behavioral of bitsub_tb is
    component bitsub
    Port ( A, B : in STD_LOGIC_VECTOR (3 downto 0);
           D : out STD_LOGIC_VECTOR (3 downto 0);
           BR : out STD_LOGIC);
    end component;

    signal A, B, D: std_logic_vector(3 downto 0);
    signal BR: std_logic;

begin
    uut: bitsub port map (A=>A, B=>B, D=>D, BR=>BR); [9]

    stim_proc: process
    begin
    -- Test cases for 4-bit subtraction [10]
    A<="1111"; B<="1001"; wait for 10ns;
    A<="1010"; B<="0011"; wait for 10ns;
    A<="1000"; B<="0101"; wait for 10ns;
    A<="1010"; B<="0110"; wait for 10ns;
    end process;
end Behavioral;