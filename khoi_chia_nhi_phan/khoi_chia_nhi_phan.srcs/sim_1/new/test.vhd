----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.07.2024 00:51:21
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
generic (N : natural := 4);
--  Port ( );
end test;

architecture Behavioral of test is
signal M,Q,Thuong,Phan_du: std_logic_vector(N-1 downto 0);
begin
u1: entity work.Chia_nhi_phan
port map(
M => M,
Q => Q,
Thuong => Thuong,
Phan_du => Phan_du
);
u2: process
begin
Q <= x"7";
M <= x"2";
wait for 10ns;
Q <= x"9";
M <= x"6";
wait for 10ns;
Q <= x"e";
M <= x"2";
wait for 10ns;
Q <= x"f";
M <= x"5";
wait for 10ns;
end process;
end Behavioral;
