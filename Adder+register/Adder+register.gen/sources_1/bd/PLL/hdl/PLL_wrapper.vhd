--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
--Date        : Thu Jun 13 10:45:06 2024
--Host        : DESKTOP-TQUTIVG running 64-bit major release  (build 9200)
--Command     : generate_target PLL_wrapper.bd
--Design      : PLL_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PLL_wrapper is
  port (
    Cout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end PLL_wrapper;

architecture STRUCTURE of PLL_wrapper is
  component PLL is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    enable : in STD_LOGIC;
    Cout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component PLL;
begin
PLL_i: component PLL
     port map (
      Cout(3 downto 0) => Cout(3 downto 0),
      clk => clk,
      enable => enable,
      rst => rst
    );
end STRUCTURE;
