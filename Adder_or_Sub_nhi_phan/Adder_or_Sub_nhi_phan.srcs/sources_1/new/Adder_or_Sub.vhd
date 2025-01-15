----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.07.2024 20:00:45
-- Design Name: 
-- Module Name: Adder_or_Sub - Behavioral
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

entity Adder_or_Sub is
    generic (N: natural := 4;
            Chon: Boolean := True);
    Port (
        A : in std_logic_vector(N-1 downto 0);
        B : in std_logic_vector(N-1 downto 0);
        load: in std_logic;
        rst: in std_logic;
        Cin: in std_logic;
        Cout : out std_logic;
        Dap_an: out std_logic_vector (N-1 downto 0)
    );
end Adder_or_Sub;

architecture Behavioral of Adder_or_Sub is
    signal chon_i: boolean:=Chon;
begin
    process(rst,load,A,B,Cin,chon_i)
        variable S: std_logic_vector(N downto 0);
    begin
        if rst = '1' then
            Dap_an <= (others => '0');
            Cout <= '0';
        elsif load = '1' then
            if chon_i = True then
                S := ('0'& A) + B + Cin;
            else
                S := ('0'& A) - B - Cin;
            end if;
        end if;
        Dap_an <= S(N-1 downto 0);
        Cout <= S(N);
    end process;

end Behavioral;
