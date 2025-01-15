----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.07.2024 19:41:42
-- Design Name: 
-- Module Name: Adder_BCD_4b - Behavioral
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
use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Adder_BCD_4b is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
         B : in STD_LOGIC_VECTOR (3 downto 0);
         Sum : out STD_LOGIC_VECTOR (7 downto 0));
end Adder_BCD_4b;

architecture Behavioral of Adder_BCD_4b is
    signal Sum_i: STD_LOGIC_VECTOR (7 downto 0) :=(others => '0');
begin
    process(Sum_i,A,B)
    begin
        Sum_i <= (x"0"& A) + B;
        if Sum_i > 9 then Sum <= Sum_i + 6;
        else Sum <= Sum_i;
        end if;
    end process;

end Behavioral;
