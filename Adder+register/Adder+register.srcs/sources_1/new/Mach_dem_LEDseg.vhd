----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.06.2024 15:25:23
-- Design Name: 
-- Module Name: Mach_dem_LEDseg - Behavioral
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

entity Mach_dem_LEDseg is
  Port ( 
 clk : in std_logic;
 rst : in std_logic;
 cat : out std_logic;
 Led_out: out std_logic_vector(6 downto 0)
   );
end Mach_dem_LEDseg;

architecture Behavioral of Mach_dem_LEDseg is
signal Cout: std_logic_vector(7 downto 0);
signal clk1s: std_logic;
begin
u1: entity work.Adder_register
port map(
clk => clk,
rst => rst,
Cout => Cout
);
u3: entity work.div10
generic map(100000000)
port map(
clk100M => clk,
clk1s => clk1s
);
u2: entity work.Mach_giai_ma_led
port map(
Led_7seg_out => Led_out,
led_7seg_chuc => Cout(7 downto 4),
Led_7seg_dvi => Cout(3 downto 0),
clk => clk,
cat => cat
);
end Behavioral;
