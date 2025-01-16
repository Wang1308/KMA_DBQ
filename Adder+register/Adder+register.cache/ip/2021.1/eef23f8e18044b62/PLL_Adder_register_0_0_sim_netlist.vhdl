-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Thu Jun 13 10:46:35 2024
-- Host        : DESKTOP-TQUTIVG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PLL_Adder_register_0_0_sim_netlist.vhdl
-- Design      : PLL_Adder_register_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder1 is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder1 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Re_out[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Re_out[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Re_out[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Re_out[3]_i_1\ : label is "soft_lutpair0";
begin
\Re_out[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\(0),
      O => D(0)
    );
\Re_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      O => D(1)
    );
\Re_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      I2 => \out\(2),
      O => D(2)
    );
\Re_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(3),
      O => D(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_adder is
  port (
    Cout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    enable : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_adder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_adder is
begin
\Re_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable,
      CLR => rst,
      D => D(0),
      Q => Cout(0)
    );
\Re_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable,
      CLR => rst,
      D => D(1),
      Q => Cout(1)
    );
\Re_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable,
      CLR => rst,
      D => D(2),
      Q => Cout(2)
    );
\Re_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable,
      CLR => rst,
      D => D(3),
      Q => Cout(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Adder_register is
  port (
    Cout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    enable : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Adder_register;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Adder_register is
  signal \^cout\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Re_in : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Cout(3 downto 0) <= \^cout\(3 downto 0);
u1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder1
     port map (
      D(3 downto 0) => Re_in(3 downto 0),
      \out\(3 downto 0) => \^cout\(3 downto 0)
    );
u2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_adder
     port map (
      Cout(3 downto 0) => \^cout\(3 downto 0),
      D(3 downto 0) => Re_in(3 downto 0),
      clk => clk,
      enable => enable,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    Cout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "PLL_Adder_register_0_0,Adder_register,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Adder_register,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Adder_register
     port map (
      Cout(3 downto 0) => Cout(3 downto 0),
      clk => clk,
      enable => enable,
      rst => rst
    );
end STRUCTURE;
