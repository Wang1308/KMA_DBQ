----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.06.2024 10:20:08
-- Design Name: 
-- Module Name: test_bench_count++ - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_bench_count is
generic (N : natural := 8);
--  Port ( );
end test_bench_count;

architecture Behavioral of test_bench_count is
signal clk, rst, enable : std_logic;
signal Cout: std_logic_vector(N-1 downto 0);
begin
u1: entity work.Adder_register
port map(clk => clk, rst => rst, Cout => Cout);
u2: process
begin
clk <= '0';
wait for 10ns;
clk <= '1';
wait for 10ns;
end process;
u3: process
begin
rst <= '1'; wait for 10ns;
rst <= '0'; 
wait;
end process;
--u4: process
--begin
--enable <= '0'; wait for 5ns;
--enable <= '1'; wait;
--end process;
end Behavioral;
