----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.07.2024 19:45:05
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
--  Port ( );
end testbench;

architecture Behavioral of testbench is
signal A, B : std_logic_vector(3 downto 0);
signal Sum : std_logic_vector(7 downto 0);
begin
u1: entity work.Adder_BCD_4b
port map(
A => A,
B => B,
Sum => Sum
);
u2: process
begin
A <= x"1";
B <= x"5";
wait for 10ns;
A <= x"3";
B <= x"7";
wait for 10ns;
A <= x"9";
B <= x"8";
wait for 10ns;
end process;

end Behavioral;
