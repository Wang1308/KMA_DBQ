----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.06.2024 09:59:02
-- Design Name: 
-- Module Name: Adder+register - Behavioral
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

entity Adder_register is
generic (N: natural := 8);
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           Cout : out std_logic_vector(N-1 downto 0));
end Adder_register;

architecture Behavioral of Adder_register is
component adder1 
port(
     B: in std_logic_vector (N-1 downto 0);
     Sum: out std_logic_vector (N-1 downto 0)
    );
    end component;
component register_adder
port ( rst : in std_logic;
       clk: in std_logic;
       enable: in std_logic;
       Re_in: in std_logic_vector (N-1 downto 0) ;
       Re_out: out std_logic_vector (N-1 downto 0)     
);   
end component;
component div10
port(clk100M : in std_logic;
     clk1s : out std_logic);
     end component;
 signal Sum : std_logic_vector (N-1 downto 0) ;
 signal Re_out : std_logic_vector (N-1 downto 0) ;
 signal clk1s: std_logic;
begin
Cout <= Re_out;
u1: adder1
port map(
B => Re_out,
Sum => Sum
);
u2: register_adder
port map(
rst => rst,
clk => clk,
enable => clk1s,
Re_in => Sum,
Re_out => Re_out
);
u3: div10
port map(clk100M => clk, clk1s => clk1s);
end Behavioral;

library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
entity adder1 is 
generic (N : natural := 8);
port (
     B: in std_logic_vector (N-1 downto 0);
     Sum: out std_logic_vector (N-1 downto 0)
);
end adder1;
architecture Behavioral of adder1 is
begin
process(B)
begin
if B = x"99" then
Sum <= x"00";
elsif  B(3 downto 0) = "1001" then 
Sum <= B + "00000111";
else Sum <= B + "00000001";
end if;
end process;
end Behavioral;

library ieee;
use IEEE.STD_LOGIC_1164.ALL;
entity register_adder is 
generic (N : natural := 8);
port (
     rst : in std_logic;
       clk: in std_logic;
       enable: in std_logic;
       Re_in: in std_logic_vector(N-1 downto 0); 
       Re_out: out std_logic_vector (N-1 downto 0) 
);
end register_adder;
architecture Behavioral of register_adder is
begin
process(clk, rst)
begin
if rst ='1' then Re_out <= (others=> '0');
elsif rising_edge(clk) and enable ='1' then 
Re_out <= Re_in;
end if;

end process;
end Behavioral;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY div10 IS
generic(N : natural := 10e7);
	PORT (clk100M: in STD_LOGIC;
		clk1s: out STD_LOGIC);
END div10;

ARCHITECTURE behav OF div10 IS

SIGNAL cnt: INTEGER range 0 to N:= 0;
signal clk1ss: std_logic:= '0';
BEGIN 
PROCESS(clk100M)
BEGIN
if rising_edge(clk100M) then
IF ( cnt = N/2) then  
clk1ss <= '1';
cnt <= 0;
else
clk1ss <= '0';
cnt <= cnt +1; 
END IF;
end if;
END PROCESS;
clk1s <= clk1ss;
END behav;