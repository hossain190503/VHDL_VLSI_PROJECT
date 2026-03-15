library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_counter is
end tb_counter;

architecture Behavioral of tb_counter is
    component bit_counter
    Port ( clk, reset : in STD_LOGIC;
           counter : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    signal reset, clk: std_logic;
    signal counter: std_logic_vector(3 downto 0);

begin
    uut: bit_counter port map(clk=>clk, reset=>reset, counter=>counter); [20]

    -- Clock generation process [20]
    clock_proce: process
    begin
    clk<='0'; wait for 10ns;
    clk<='1'; wait for 10ns;
    end process;

    stim_proc: process
    begin
    reset<='1'; wait for 20ns; -- Initial reset
    reset<='0'; -- Release reset to start counting
    wait;
    end process;
end Behavioral;
