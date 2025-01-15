----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.07.2024 21:22:43
-- Design Name: 
-- Module Name: Gray_sang_bin - Behavioral
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

entity Gray_sang_bin is
    generic(N: natural:= 4);
    Port (
        Gray : in std_logic_vector(N-1 downto 0);
        Bin: out std_logic_vector(N-1 downto 0)
    );
end Gray_sang_bin;

architecture Behavioral of Gray_sang_bin is
begin
    process(Gray)
        variable C: std_logic_vector(N-1 downto 0);
    begin
        C(N-1) := Gray(N-1);
        for i in N-2 downto 0 loop
            C(i) := C(i+1) xor Gray(i);
        end loop;
        Bin <= C;
    end process;
end Behavioral;
