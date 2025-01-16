----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.07.2024 21:00:23
-- Design Name: 
-- Module Name: Bi_sang_Gray - Behavioral
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

entity Bi_sang_Gray is
generic (N: natural := 4);
 Port (
 Bin: in std_logic_vector(N-1 downto 0);
 Gray: out std_logic_vector(N-1 downto 0)
  );
end Bi_sang_Gray;

architecture Behavioral of Bi_sang_Gray is

begin
 Gray <= Bin xor ('0'& Bin(N-1 downto 1));

end Behavioral;
