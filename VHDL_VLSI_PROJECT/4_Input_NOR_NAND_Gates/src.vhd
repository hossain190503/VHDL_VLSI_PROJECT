library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NAND_NOR_tb is
end NAND_NOR_tb;

architecture Behavioral of NAND_NOR_tb is
    component NAND_NOR is
    Port ( A, B, C, D : in STD_LOGIC;
           X, Y : out STD_LOGIC);
    end component;

    signal A,B,C,D: std_logic:='0';
    signal X,Y: std_logic;

begin
    -- Unit Under Test instantiation [4]
    uut: NAND_NOR port map (A=>A, B=>B, C=>C, D=>D, X=>X, Y=>Y);

    stim_proc: process
    begin
    -- Applying various combinations to the 4 inputs [4]
    A<='0'; B<='0'; C<='0'; D<='0'; wait for 10ns;
    A<='0'; B<='0'; C<='0'; D<='1'; wait for 10ns;
    A<='0'; B<='0'; C<='1'; D<='0'; wait for 10ns;
    A<='0'; B<='0'; C<='1'; D<='1'; wait for 10ns;
    A<='0'; B<='1'; C<='0'; D<='0'; wait for 10ns;
    A<='0'; B<='1'; C<='0'; D<='1'; wait for 10ns;
    A<='0'; B<='1'; C<='1'; D<='0'; wait for 10ns;
    end process;
end Behavioral;