library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4to1_tb is
end mux4to1_tb;

architecture Behavioral of mux4to1_tb is
    component mux4to1
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC);
    end component;

    signal A: std_logic_vector(3 downto 0);
    signal S: std_logic_vector(1 downto 0);
    signal Y: std_logic;

begin
    uut: mux4to1 port map (A=>A, S=>S, Y=>Y); [16]

    stim_proc: process
    begin
    -- Selecting different inputs by changing S [17]
    A<="0000"; S<="00"; wait for 10ns;
    A<="0010"; S<="01"; wait for 10ns;
    A<="0100"; S<="10"; wait for 10ns;
    A<="1000"; S<="11"; wait for 10ns;
    end process;
end Behavioral;
