----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.07.2024 21:53:46
-- Design Name: 
-- Module Name: test - Behavioral
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

entity test is
generic (N: natural := 4);
--  Port ( );
end test;

architecture Behavioral of test is
signal Gray, Bin : std_logic_vector(N-1 downto 0);
begin
u1: entity work.Gray_sang_bin
port map(
Gray => Gray,
Bin => Bin
);
u2: process
begin
Gray <= "0111";
wait for 10ns;
Gray <= "1101";
wait for 10ns;
Gray <= "0100";
wait for 10ns;
Gray <= "1011";
wait for 10ns;
end process;
end Behavioral;
