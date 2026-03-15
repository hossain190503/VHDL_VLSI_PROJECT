library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench_mux_8to1 is
end testbench_mux_8to1;

architecture Behavioral of testbench_mux_8to1 is
    component mux_8to1
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC);
    end component;

    signal A: std_logic_vector(7 downto 0);
    signal S: std_logic_vector(2 downto 0);
    signal Y: std_logic;

begin
    uut: mux_8to1 port map(A=>A, S=>S, Y=>Y); [18]

    stim: process
    begin
    -- Rotating through selection bits to output different input bits [18, 19]
    A<="00000000"; S<="001"; wait for 10ns ;
    A<="00000010"; S<="000"; wait for 10ns ;
    A<="00000100"; S<="010"; wait for 10ns ;
    A<="00001000"; S<="011"; wait for 10ns ;
    A<="00010000"; S<="100"; wait for 10ns ;
    A<="00100000"; S<="101"; wait for 10ns ;
    A<="01000000"; S<="110"; wait for 10ns ;
    A<="10000000"; S<="111"; wait for 10ns ;
    end process;
end Behavioral;