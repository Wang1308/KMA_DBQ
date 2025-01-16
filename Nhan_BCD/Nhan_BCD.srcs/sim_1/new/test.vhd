----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.07.2024 22:41:42
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
signal A,B : std_logic_vector(N-1 downto 0);
signal Tich : std_logic_vector(2*N-1 downto 0);
begin
u1 : entity work.Nhan_BCD
port map(
M => A,
Q => B,
Tich => Tich
);
u2: process
begin
A <= x"1";
B <= x"9";
wait for 10ns;
A <= x"5";
B <= x"9";
wait for 10ns;
A <= x"9";
B <= x"9";
wait for 10ns;
end process;
end Behavioral;
