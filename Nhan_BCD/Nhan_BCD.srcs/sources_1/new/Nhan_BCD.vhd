----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.07.2024 22:02:41
-- Design Name: 
-- Module Name: Nhan_BCD - Behavioral
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
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Nhan_BCD is
    generic (N: natural := 4);
    Port (
        M : in std_logic_vector(N-1 downto 0);
        Q : in std_logic_vector(N-1 downto 0);
        Tich: out std_logic_vector(2*N-1 downto 0)
    );
end Nhan_BCD;

architecture Behavioral of Nhan_BCD is
begin
    process(M,Q)
        variable C : std_logic_vector(2*N downto 0):= (others => '0');
        variable A : std_logic_vector(N downto 0):= (others => '0');
        variable Q_i: std_logic_vector(N-1 downto 0);
        variable cnt : integer range 0 to 1000 := N;
        variable Mod_10 : integer range 0 to 1000 ;
    begin
        A := (others => '0');
        Q_i := Q;
        cnt := N;
        for i in 0 to N-1 loop
            if Q_i(0) ='1' then
                A := A + M;
                C := A & Q_i;
            else
                A := A;
                C := A & Q_i;
            end if;
            C := C(2*N) & C(2*N downto 1);
            A := C(2*N downto N);
            Q_i := C(N-1 downto 0);
        end loop;
        Mod_10 := 6*(to_integer(unsigned(C))/ 10);
        Tich <= C(2*N-1 downto 0) + Mod_10;
    end process;

end Behavioral;
