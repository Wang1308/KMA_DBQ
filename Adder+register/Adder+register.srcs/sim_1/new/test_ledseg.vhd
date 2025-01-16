----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.06.2024 15:34:20
-- Design Name: 
-- Module Name: test_ledseg - Behavioral
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

entity test_ledseg is
--  Port ( );
end test_ledseg;

architecture Behavioral of test_ledseg is
signal clk,rst, cat: std_logic;
signal LED_out: std_logic_vector(6 downto 0);
begin
u1: entity work.Mach_dem_LEDseg
port map(
clk => clk,
rst => rst,
Led_out => Led_out,
cat => cat
);

u2: process
begin
clk <= '0'; wait for 10ns;
clk <= '1'; wait for 10ns;
end process;

u3: process
begin
rst <= '1';wait for 10ns;
rst <= '0'; wait;
end process;

end Behavioral;
