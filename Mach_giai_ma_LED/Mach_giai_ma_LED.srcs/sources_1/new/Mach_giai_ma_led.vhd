----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.06.2024 10:44:48
-- Design Name: 
-- Module Name: Mach_giai_ma_led - Behavioral
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

entity Mach_giai_ma_led is
generic (
 CLK_FREQ: integer := 100000000;
 MUX_FREQ: integer := 100
 );

  Port (clk : in std_logic; 
        led_7seg_chuc, Led_7seg_dvi: in std_logic_vector(3 downto 0);
        cat: out std_logic;
        Led_7seg_out: out std_logic_vector(6 downto 0)
   );
end Mach_giai_ma_led;

architecture Behavioral of Mach_giai_ma_led is
signal decode_led: std_logic_vector(3 downto 0);
signal led_out: std_logic_vector(6 downto 0);
signal cat1: std_logic := '0';
signal cnt : integer range 0 to CLK_FREQ/MUX_FREQ:= 0;
begin
PROCESS(clk)
BEGIN
if rising_edge(clk) then
IF ( cnt = CLK_FREQ/MUX_FREQ) then  
cat1 <= not cat1;
cnt <= 0;
else
cnt <= cnt +1; 
END IF;
end if;
END PROCESS;
cat <= cat1;
process(cat1, led_7seg_chuc, Led_7seg_dvi)
begin
if(cat1 = '0') then decode_led <= Led_7seg_dvi;
else decode_led <= led_7seg_chuc;
end if;
end process;
Led_7seg_out <= not led_out;
Led_out <= "0000001" when decode_led = x"0" else 
                "1001111" when decode_led = x"1" else
                "0010010" when decode_led = x"2" else
                "0000110" when decode_led = x"3" else
                "1001100" when decode_led = x"4" else
                "0100100" when decode_led = x"5" else
                "0100000" when decode_led = x"6" else
                "0001111" when decode_led = x"7" else
                "0000000" when decode_led = x"8" else
                "0000100" when decode_led = x"9" else
                "0001000" when decode_led = x"a" else
                "1100000" when decode_led = x"b" else
                "0110001" when decode_led = x"c" else
                "1000010" when decode_led = x"d" else
                "0110000" when decode_led = x"e" else
                "0111000" when decode_led = x"f";
end Behavioral;
