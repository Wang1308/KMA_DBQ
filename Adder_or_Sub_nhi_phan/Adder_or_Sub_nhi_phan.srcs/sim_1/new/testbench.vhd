----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.07.2024 20:12:49
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
    generic(N: natural := 4);
    --  Port ( );
end testbench;

architecture Behavioral of testbench is
    signal A,B,Sum,Sub: std_logic_vector(N-1 downto 0);
    signal rst,load,Cin,Cout_sum, Cout_sub: std_logic;
begin
    Tong: entity work.Adder_or_Sub
        generic map(4, True)
        port map(
            A => A,
            B => B,
            rst => rst,
            load => load,
            Cin => Cin,
            Cout => Cout_sum,
            Dap_an => Sum
        );
    Hieu: entity work.Adder_or_Sub
        generic map(4, FALSE)
        port map(
            A => A,
            B => B,
            rst => rst,
            load => load,
            Cin => Cin,
            Cout => Cout_sub,
            Dap_an => Sub
        );
    Tin_hieu_rst: process
    begin
        rst <= '1';
        wait for 10ns;
        rst <= '0';
        wait;
    end process;
    Tin_hieu_load: process
    begin
        load <= '0'; wait for 20ns;
        load <= '1'; wait;
    end process;
    in_signal: process
    begin
        Cin <= '0';
        A <= x"9";
        B <= x"5";
        wait for 30ns;
        Cin <= '1';
        A <= x"9";
        B <= x"5";
        wait for 30ns;
        Cin <= '0';
        A <= x"0";
        B <= x"8";
        wait for 30ns;
        Cin <= '1';
        A <= x"0";
        B <= x"8";
        wait for 30ns;
        Cin <= '0';
        A <= x"4";
        B <= x"9";
        wait for 30ns;
        Cin <= '1';
        A <= x"4";
        B <= x"9";
        wait for 30ns;
    end process;
end Behavioral;
