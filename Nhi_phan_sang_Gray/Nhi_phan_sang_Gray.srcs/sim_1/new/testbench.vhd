----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.07.2024 21:03:40
-- Design Name: 
-- Module Name: testbench - Behavioral
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

entity testbench is
generic (N: natural := 4);
--  Port ( );
end testbench;

architecture Behavioral of testbench is
signal Bin, Gray : std_logic_vector(N-1 downto 0);
begin
u1: entity work.Bi_sang_Gray
port map(
Bin => Bin,
Gray => Gray
);
u2: process
begin
Bin <= "0001";
wait for 10 ns;
Bin <= "0110";
wait for 10 ns;
Bin <= "1111";
wait for 10 ns;
Bin <= "1001";
wait for 10 ns;
end process;
end Behavioral;
