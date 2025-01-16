----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.07.2024 00:35:12
-- Design Name: 
-- Module Name: Chia_nhi_phan - Behavioral
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
use ieee.std_logic_signed.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Chia_nhi_phan is
    generic (N: natural := 4);
    Port (
        M: in std_logic_vector(N-1 downto 0);
        Q: in std_logic_vector(N-1 downto 0);
        Thuong: out std_logic_vector(N-1 downto 0);
        Phan_du: out std_logic_vector(N-1 downto 0)
    );
end Chia_nhi_phan;

architecture Behavioral of Chia_nhi_phan is

begin
    process(M,Q)
        variable A: std_logic_vector(N-1 downto 0):= (others => '0');
        variable Q_i: std_logic_vector(N-1 downto 0):= (others => '0');
        variable C: std_logic_vector(2*N-1 downto 0):= (others => '0');
    begin
        A := (others => '0');
        Q_i := Q;
        for i in 0 to N-1 loop
            C:= A(N-2 downto 0) & Q_i & '0';
            Q_i := C(N-1 downto 0);
            A := C(2*N-1 downto N) - M;
            if A < 0 then
                Q_i(0):= '0';
                A := A+M;
            else Q_i(0):= '1';
            end if;
        end loop;
        Thuong <= Q_i;
        Phan_du <= A;
    end process;
end Behavioral;
