library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Testbench entity (no ports) [1]
entity AND_OR_tb is
end AND_OR_tb;

architecture Behavioral of AND_OR_tb is
    -- Component declaration for the UUT (Unit Under Test) [1]
    component AND_OR is
    Port ( A, B : in STD_LOGIC;
           X, Y : out STD_LOGIC);
    end component;

    -- Local signals for testing [2]
    signal A: std_logic:='0';
    signal B: std_logic:='0';
    signal X, Y: std_logic;

begin
    -- Instantiate the UUT [2]
    uut: AND_OR Port map(A=>A, B=>B, X=>X, Y=>Y);

    -- Stimulus process to apply input combinations [2]
    stim_proc:process
    begin
    A<='1'; B<='1'; wait for 10ns;
    A<='1'; B<='0'; wait for 10ns;
    A<='0'; B<='1'; wait for 10ns;
    A<='0'; B<='0'; wait for 10ns;
    end process;
end Behavioral;