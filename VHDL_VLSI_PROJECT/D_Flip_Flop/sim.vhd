library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb is
end tb;

architecture Behavioral of tb is
    component flip_flop is
    Port ( D, CLK, RST : in STD_LOGIC;
           Q, Qb : out STD_LOGIC);
    end component;

    signal D, CLK, RST, Q, Qb : STD_LOGIC;

begin
    uut: flip_flop port map(D => D, CLK => CLK, RST => RST, Q => Q, Qb => Qb); [22]

    Clock : process
    begin
    CLK <= '0'; wait for 10 ns;
    CLK <= '1'; wait for 10 ns;
    end process;

    stim : process
    begin
    RST <= '0'; D <= '0'; wait for 40 ns;
    D <= '1'; wait for 40 ns;
    end process;
end Behavioral;