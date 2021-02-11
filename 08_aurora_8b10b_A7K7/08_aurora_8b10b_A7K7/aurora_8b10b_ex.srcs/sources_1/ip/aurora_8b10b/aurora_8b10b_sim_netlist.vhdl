-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
-- Date        : Tue Sep 19 13:36:18 2017
-- Host        : LB-201708231104 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/DS_SRC/MIA701/aurora_8b10b_ex/aurora_8b10b_ex.srcs/sources_1/ip/aurora_8b10b/aurora_8b10b_sim_netlist.vhdl
-- Design      : aurora_8b10b
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_AXI_TO_LL is
  port (
    storage_v_r_reg : out STD_LOGIC;
    new_pkt_r : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_AXI_TO_LL : entity is "aurora_8b10b_AXI_TO_LL";
end aurora_8b10b_aurora_8b10b_AXI_TO_LL;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_AXI_TO_LL is
begin
new_pkt_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => new_pkt_r,
      Q => storage_v_r_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_CHANNEL_ERR_DETECT is
  port (
    soft_err : out STD_LOGIC;
    lane_up_r : out STD_LOGIC;
    \^hard_err\ : out STD_LOGIC;
    reset_channel_i : out STD_LOGIC;
    RESET0 : out STD_LOGIC;
    wait_for_lane_up_r0 : out STD_LOGIC;
    \soft_err_r_reg[0]\ : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    lane_up : in STD_LOGIC;
    HARD_ERR : in STD_LOGIC;
    power_down : in STD_LOGIC;
    SYSTEM_RESET_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_CHANNEL_ERR_DETECT : entity is "aurora_8b10b_CHANNEL_ERR_DETECT";
end aurora_8b10b_aurora_8b10b_CHANNEL_ERR_DETECT;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_CHANNEL_ERR_DETECT is
  signal RESET_CHANNEL_i_1_n_0 : STD_LOGIC;
  signal hard_err_r : STD_LOGIC;
  signal \^lane_up_r\ : STD_LOGIC;
  signal \^reset_channel_i\ : STD_LOGIC;
  signal soft_err_r_reg_srl3_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of RESET_CHANNEL_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \cc_count_r[0]_i_1\ : label is "soft_lutpair28";
  attribute srl_name : string;
  attribute srl_name of soft_err_r_reg_srl3 : label is "\inst/aurora_8b10b_core_i/global_logic_i/channel_err_detect_i/soft_err_r_reg_srl3 ";
begin
  lane_up_r <= \^lane_up_r\;
  reset_channel_i <= \^reset_channel_i\;
CHANNEL_HARD_ERR_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => hard_err_r,
      Q => \^hard_err\,
      R => '0'
    );
CHANNEL_SOFT_ERR_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => soft_err_r_reg_srl3_n_0,
      Q => soft_err,
      R => '0'
    );
RESET_CHANNEL_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => power_down,
      I1 => \^lane_up_r\,
      O => RESET_CHANNEL_i_1_n_0
    );
RESET_CHANNEL_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => RESET_CHANNEL_i_1_n_0,
      Q => \^reset_channel_i\,
      R => '0'
    );
\cc_count_r[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^lane_up_r\,
      O => RESET0
    );
hard_err_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => HARD_ERR,
      Q => hard_err_r,
      R => '0'
    );
lane_up_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => lane_up,
      Q => \^lane_up_r\,
      R => '0'
    );
ready_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^reset_channel_i\,
      I1 => SYSTEM_RESET_reg,
      O => wait_for_lane_up_r0
    );
soft_err_r_reg_srl3: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => gtrxreset_o_reg,
      D => \soft_err_r_reg[0]\,
      Q => soft_err_r_reg_srl3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_CHANNEL_INIT_SM is
  port (
    gen_ver_i : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    channel_up : out STD_LOGIC;
    GTRXRESET_OUT : out STD_LOGIC;
    START_RX : out STD_LOGIC;
    reset_i : out STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    txver_count_r0 : in STD_LOGIC;
    wait_for_lane_up_r0 : in STD_LOGIC;
    GOT_V : in STD_LOGIC;
    SYSTEM_RESET_reg : in STD_LOGIC;
    reset_channel_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_CHANNEL_INIT_SM : entity is "aurora_8b10b_CHANNEL_INIT_SM";
end aurora_8b10b_aurora_8b10b_CHANNEL_INIT_SM;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_CHANNEL_INIT_SM is
  signal GTRXRESET_OUT_i_1_n_0 : STD_LOGIC;
  signal GTRXRESET_OUT_i_2_n_0 : STD_LOGIC;
  signal START_RX0 : STD_LOGIC;
  signal all_lanes_v_r : STD_LOGIC;
  signal bad_v_r : STD_LOGIC;
  signal bad_v_r0 : STD_LOGIC;
  signal \^channel_up\ : STD_LOGIC;
  signal \free_count_r[13]_i_2_n_0\ : STD_LOGIC;
  signal \free_count_r[13]_i_3_n_0\ : STD_LOGIC;
  signal \free_count_r[13]_i_4_n_0\ : STD_LOGIC;
  signal \free_count_r[13]_i_5_n_0\ : STD_LOGIC;
  signal \free_count_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \free_count_r[1]_i_3_n_0\ : STD_LOGIC;
  signal \free_count_r[5]_i_2_n_0\ : STD_LOGIC;
  signal \free_count_r[5]_i_3_n_0\ : STD_LOGIC;
  signal \free_count_r[5]_i_4_n_0\ : STD_LOGIC;
  signal \free_count_r[5]_i_5_n_0\ : STD_LOGIC;
  signal \free_count_r[9]_i_2_n_0\ : STD_LOGIC;
  signal \free_count_r[9]_i_3_n_0\ : STD_LOGIC;
  signal \free_count_r[9]_i_4_n_0\ : STD_LOGIC;
  signal \free_count_r[9]_i_5_n_0\ : STD_LOGIC;
  signal free_count_r_reg : STD_LOGIC_VECTOR ( 0 to 13 );
  signal \free_count_r_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_4\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_5\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \free_count_r_reg[1]_i_1_n_3\ : STD_LOGIC;
  signal \free_count_r_reg[1]_i_1_n_6\ : STD_LOGIC;
  signal \free_count_r_reg[1]_i_1_n_7\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_4\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_5\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_6\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_7\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_4\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_5\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_6\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal \^gen_ver_i\ : STD_LOGIC;
  signal got_first_v_r : STD_LOGIC;
  signal got_first_v_r_i_1_n_0 : STD_LOGIC;
  signal gtreset_c : STD_LOGIC;
  signal gtrxreset_extend_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gtrxreset_nxt : STD_LOGIC;
  signal next_ready_c : STD_LOGIC;
  signal next_verify_c : STD_LOGIC;
  signal p_2_out : STD_LOGIC_VECTOR ( 31 to 31 );
  signal ready_r : STD_LOGIC;
  signal ready_r2 : STD_LOGIC;
  signal reset_lanes_c : STD_LOGIC;
  signal \rxver_count_r_reg[1]_srl2_i_1_n_0\ : STD_LOGIC;
  signal \rxver_count_r_reg[1]_srl2_n_0\ : STD_LOGIC;
  signal \rxver_count_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \txver_count_r_reg[6]_srl7_n_0\ : STD_LOGIC;
  signal \txver_count_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \v_count_r_reg[30]_srl31_n_0\ : STD_LOGIC;
  signal \v_count_r_reg_n_0_[31]\ : STD_LOGIC;
  signal \verify_watchdog_r_reg[14]_srl15_i_1_n_0\ : STD_LOGIC;
  signal \verify_watchdog_r_reg[14]_srl15_i_2_n_0\ : STD_LOGIC;
  signal \verify_watchdog_r_reg[14]_srl15_i_3_n_0\ : STD_LOGIC;
  signal \verify_watchdog_r_reg[14]_srl15_i_4_n_0\ : STD_LOGIC;
  signal \verify_watchdog_r_reg[14]_srl15_n_0\ : STD_LOGIC;
  signal \verify_watchdog_r_reg_n_0_[15]\ : STD_LOGIC;
  signal wait_for_lane_up_r : STD_LOGIC;
  signal \NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v_count_r_reg[30]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of got_first_v_r_i_1 : label is "soft_lutpair29";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gtreset_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of gtreset_flop_0_i : label is "FD";
  attribute SOFT_HLUTNM of ready_r_i_2 : label is "soft_lutpair30";
  attribute BOX_TYPE of reset_lanes_flop_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of reset_lanes_flop_i : label is "FD";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \rxver_count_r_reg[1]_srl2\ : label is "\inst/aurora_8b10b_core_i/global_logic_i/channel_init_sm_i/rxver_count_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \rxver_count_r_reg[1]_srl2\ : label is "\inst/aurora_8b10b_core_i/global_logic_i/channel_init_sm_i/rxver_count_r_reg[1]_srl2 ";
  attribute srl_bus_name of \txver_count_r_reg[6]_srl7\ : label is "\inst/aurora_8b10b_core_i/global_logic_i/channel_init_sm_i/txver_count_r_reg ";
  attribute srl_name of \txver_count_r_reg[6]_srl7\ : label is "\inst/aurora_8b10b_core_i/global_logic_i/channel_init_sm_i/txver_count_r_reg[6]_srl7 ";
  attribute srl_bus_name of \v_count_r_reg[30]_srl31\ : label is "\inst/aurora_8b10b_core_i/global_logic_i/channel_init_sm_i/v_count_r_reg ";
  attribute srl_name of \v_count_r_reg[30]_srl31\ : label is "\inst/aurora_8b10b_core_i/global_logic_i/channel_init_sm_i/v_count_r_reg[30]_srl31 ";
  attribute SOFT_HLUTNM of \v_count_r_reg[30]_srl31_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of verify_r_i_1 : label is "soft_lutpair30";
  attribute srl_bus_name of \verify_watchdog_r_reg[14]_srl15\ : label is "\inst/aurora_8b10b_core_i/global_logic_i/channel_init_sm_i/verify_watchdog_r_reg ";
  attribute srl_name of \verify_watchdog_r_reg[14]_srl15\ : label is "\inst/aurora_8b10b_core_i/global_logic_i/channel_init_sm_i/verify_watchdog_r_reg[14]_srl15 ";
begin
  channel_up <= \^channel_up\;
  gen_ver_i <= \^gen_ver_i\;
CHANNEL_UP_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => ready_r2,
      Q => \^channel_up\,
      R => '0'
    );
GTRXRESET_OUT_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => gtrxreset_extend_r(0),
      I1 => gtrxreset_extend_r(1),
      I2 => gtrxreset_extend_r(2),
      I3 => gtrxreset_extend_r(3),
      I4 => GTRXRESET_OUT_i_2_n_0,
      O => GTRXRESET_OUT_i_1_n_0
    );
GTRXRESET_OUT_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => gtrxreset_extend_r(6),
      I1 => gtrxreset_extend_r(7),
      I2 => gtrxreset_extend_r(5),
      I3 => gtrxreset_extend_r(4),
      O => GTRXRESET_OUT_i_2_n_0
    );
GTRXRESET_OUT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => GTRXRESET_OUT_i_1_n_0,
      Q => GTRXRESET_OUT,
      R => '0'
    );
START_RX_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_for_lane_up_r,
      O => START_RX0
    );
START_RX_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => START_RX0,
      Q => START_RX,
      R => SYSTEM_RESET_reg
    );
all_lanes_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => GOT_V,
      Q => all_lanes_v_r,
      R => '0'
    );
bad_v_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => got_first_v_r,
      I1 => \v_count_r_reg_n_0_[31]\,
      I2 => all_lanes_v_r,
      O => bad_v_r0
    );
bad_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => bad_v_r0,
      Q => bad_v_r,
      R => '0'
    );
\free_count_r[13]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(10),
      O => \free_count_r[13]_i_2_n_0\
    );
\free_count_r[13]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(11),
      O => \free_count_r[13]_i_3_n_0\
    );
\free_count_r[13]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(12),
      O => \free_count_r[13]_i_4_n_0\
    );
\free_count_r[13]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(13),
      O => \free_count_r[13]_i_5_n_0\
    );
\free_count_r[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(0),
      O => \free_count_r[1]_i_2_n_0\
    );
\free_count_r[1]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(1),
      O => \free_count_r[1]_i_3_n_0\
    );
\free_count_r[5]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(2),
      O => \free_count_r[5]_i_2_n_0\
    );
\free_count_r[5]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(3),
      O => \free_count_r[5]_i_3_n_0\
    );
\free_count_r[5]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(4),
      O => \free_count_r[5]_i_4_n_0\
    );
\free_count_r[5]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(5),
      O => \free_count_r[5]_i_5_n_0\
    );
\free_count_r[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(6),
      O => \free_count_r[9]_i_2_n_0\
    );
\free_count_r[9]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(7),
      O => \free_count_r[9]_i_3_n_0\
    );
\free_count_r[9]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(8),
      O => \free_count_r[9]_i_4_n_0\
    );
\free_count_r[9]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(9),
      O => \free_count_r[9]_i_5_n_0\
    );
\free_count_r_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \free_count_r_reg[1]_i_1_n_6\,
      Q => free_count_r_reg(0),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \free_count_r_reg[13]_i_1_n_4\,
      Q => free_count_r_reg(10),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \free_count_r_reg[13]_i_1_n_5\,
      Q => free_count_r_reg(11),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \free_count_r_reg[13]_i_1_n_6\,
      Q => free_count_r_reg(12),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \free_count_r_reg[13]_i_1_n_7\,
      Q => free_count_r_reg(13),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \free_count_r_reg[13]_i_1_n_0\,
      CO(2) => \free_count_r_reg[13]_i_1_n_1\,
      CO(1) => \free_count_r_reg[13]_i_1_n_2\,
      CO(0) => \free_count_r_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \free_count_r_reg[13]_i_1_n_4\,
      O(2) => \free_count_r_reg[13]_i_1_n_5\,
      O(1) => \free_count_r_reg[13]_i_1_n_6\,
      O(0) => \free_count_r_reg[13]_i_1_n_7\,
      S(3) => \free_count_r[13]_i_2_n_0\,
      S(2) => \free_count_r[13]_i_3_n_0\,
      S(1) => \free_count_r[13]_i_4_n_0\,
      S(0) => \free_count_r[13]_i_5_n_0\
    );
\free_count_r_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \free_count_r_reg[1]_i_1_n_7\,
      Q => free_count_r_reg(1),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[1]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_count_r_reg[5]_i_1_n_0\,
      CO(3 downto 1) => \NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \free_count_r_reg[1]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 2) => \NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \free_count_r_reg[1]_i_1_n_6\,
      O(0) => \free_count_r_reg[1]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \free_count_r[1]_i_2_n_0\,
      S(0) => \free_count_r[1]_i_3_n_0\
    );
\free_count_r_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \free_count_r_reg[5]_i_1_n_4\,
      Q => free_count_r_reg(2),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \free_count_r_reg[5]_i_1_n_5\,
      Q => free_count_r_reg(3),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \free_count_r_reg[5]_i_1_n_6\,
      Q => free_count_r_reg(4),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \free_count_r_reg[5]_i_1_n_7\,
      Q => free_count_r_reg(5),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_count_r_reg[9]_i_1_n_0\,
      CO(3) => \free_count_r_reg[5]_i_1_n_0\,
      CO(2) => \free_count_r_reg[5]_i_1_n_1\,
      CO(1) => \free_count_r_reg[5]_i_1_n_2\,
      CO(0) => \free_count_r_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \free_count_r_reg[5]_i_1_n_4\,
      O(2) => \free_count_r_reg[5]_i_1_n_5\,
      O(1) => \free_count_r_reg[5]_i_1_n_6\,
      O(0) => \free_count_r_reg[5]_i_1_n_7\,
      S(3) => \free_count_r[5]_i_2_n_0\,
      S(2) => \free_count_r[5]_i_3_n_0\,
      S(1) => \free_count_r[5]_i_4_n_0\,
      S(0) => \free_count_r[5]_i_5_n_0\
    );
\free_count_r_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \free_count_r_reg[9]_i_1_n_4\,
      Q => free_count_r_reg(6),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \free_count_r_reg[9]_i_1_n_5\,
      Q => free_count_r_reg(7),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \free_count_r_reg[9]_i_1_n_6\,
      Q => free_count_r_reg(8),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \free_count_r_reg[9]_i_1_n_7\,
      Q => free_count_r_reg(9),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_count_r_reg[13]_i_1_n_0\,
      CO(3) => \free_count_r_reg[9]_i_1_n_0\,
      CO(2) => \free_count_r_reg[9]_i_1_n_1\,
      CO(1) => \free_count_r_reg[9]_i_1_n_2\,
      CO(0) => \free_count_r_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \free_count_r_reg[9]_i_1_n_4\,
      O(2) => \free_count_r_reg[9]_i_1_n_5\,
      O(1) => \free_count_r_reg[9]_i_1_n_6\,
      O(0) => \free_count_r_reg[9]_i_1_n_7\,
      S(3) => \free_count_r[9]_i_2_n_0\,
      S(2) => \free_count_r[9]_i_3_n_0\,
      S(1) => \free_count_r[9]_i_4_n_0\,
      S(0) => \free_count_r[9]_i_5_n_0\
    );
gen_cc_flop_0_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^channel_up\,
      O => reset_i
    );
got_first_v_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^gen_ver_i\,
      I1 => got_first_v_r,
      I2 => all_lanes_v_r,
      O => got_first_v_r_i_1_n_0
    );
got_first_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => got_first_v_r_i_1_n_0,
      Q => got_first_v_r,
      R => '0'
    );
gtreset_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gtreset_c,
      Q => gtrxreset_nxt,
      R => '0'
    );
gtreset_flop_0_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A88"
    )
        port map (
      I0 => \^gen_ver_i\,
      I1 => \verify_watchdog_r_reg_n_0_[15]\,
      I2 => \rxver_count_r_reg_n_0_[2]\,
      I3 => bad_v_r,
      O => gtreset_c
    );
\gtrxreset_extend_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gtrxreset_extend_r(1),
      Q => gtrxreset_extend_r(0),
      R => SYSTEM_RESET_reg
    );
\gtrxreset_extend_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gtrxreset_extend_r(2),
      Q => gtrxreset_extend_r(1),
      R => SYSTEM_RESET_reg
    );
\gtrxreset_extend_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gtrxreset_extend_r(3),
      Q => gtrxreset_extend_r(2),
      R => SYSTEM_RESET_reg
    );
\gtrxreset_extend_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gtrxreset_extend_r(4),
      Q => gtrxreset_extend_r(3),
      R => SYSTEM_RESET_reg
    );
\gtrxreset_extend_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gtrxreset_extend_r(5),
      Q => gtrxreset_extend_r(4),
      R => SYSTEM_RESET_reg
    );
\gtrxreset_extend_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gtrxreset_extend_r(6),
      Q => gtrxreset_extend_r(5),
      R => SYSTEM_RESET_reg
    );
\gtrxreset_extend_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gtrxreset_extend_r(7),
      Q => gtrxreset_extend_r(6),
      R => SYSTEM_RESET_reg
    );
\gtrxreset_extend_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gtrxreset_nxt,
      Q => gtrxreset_extend_r(7),
      R => SYSTEM_RESET_reg
    );
ready_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => ready_r,
      Q => ready_r2,
      R => '0'
    );
ready_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => ready_r,
      I1 => \rxver_count_r_reg_n_0_[2]\,
      I2 => \txver_count_r_reg_n_0_[7]\,
      I3 => \^gen_ver_i\,
      O => next_ready_c
    );
ready_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => next_ready_c,
      Q => ready_r,
      R => wait_for_lane_up_r0
    );
reset_lanes_flop_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => reset_lanes_c,
      Q => SR(0),
      R => '0'
    );
reset_lanes_flop_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => gtreset_c,
      I1 => reset_channel_i,
      I2 => wait_for_lane_up_r,
      I3 => SYSTEM_RESET_reg,
      O => reset_lanes_c
    );
\rxver_count_r_reg[1]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => \rxver_count_r_reg[1]_srl2_i_1_n_0\,
      CLK => gtrxreset_o_reg,
      D => \^gen_ver_i\,
      Q => \rxver_count_r_reg[1]_srl2_n_0\
    );
\rxver_count_r_reg[1]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \v_count_r_reg_n_0_[31]\,
      I1 => all_lanes_v_r,
      I2 => \^gen_ver_i\,
      O => \rxver_count_r_reg[1]_srl2_i_1_n_0\
    );
\rxver_count_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \rxver_count_r_reg[1]_srl2_i_1_n_0\,
      D => \rxver_count_r_reg[1]_srl2_n_0\,
      Q => \rxver_count_r_reg_n_0_[2]\,
      R => '0'
    );
\txver_count_r_reg[6]_srl7\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => txver_count_r0,
      CLK => gtrxreset_o_reg,
      D => \^gen_ver_i\,
      Q => \txver_count_r_reg[6]_srl7_n_0\
    );
\txver_count_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => txver_count_r0,
      D => \txver_count_r_reg[6]_srl7_n_0\,
      Q => \txver_count_r_reg_n_0_[7]\,
      R => '0'
    );
\v_count_r_reg[30]_srl31\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11110",
      CE => '1',
      CLK => gtrxreset_o_reg,
      D => p_2_out(31),
      Q => \v_count_r_reg[30]_srl31_n_0\,
      Q31 => \NLW_v_count_r_reg[30]_srl31_Q31_UNCONNECTED\
    );
\v_count_r_reg[30]_srl31_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \v_count_r_reg_n_0_[31]\,
      I1 => \^gen_ver_i\,
      I2 => got_first_v_r,
      I3 => all_lanes_v_r,
      O => p_2_out(31)
    );
\v_count_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \v_count_r_reg[30]_srl31_n_0\,
      Q => \v_count_r_reg_n_0_[31]\,
      R => '0'
    );
verify_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEEE"
    )
        port map (
      I0 => wait_for_lane_up_r,
      I1 => \^gen_ver_i\,
      I2 => \rxver_count_r_reg_n_0_[2]\,
      I3 => \txver_count_r_reg_n_0_[7]\,
      O => next_verify_c
    );
verify_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => next_verify_c,
      Q => \^gen_ver_i\,
      R => wait_for_lane_up_r0
    );
\verify_watchdog_r_reg[14]_srl15\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => \verify_watchdog_r_reg[14]_srl15_i_1_n_0\,
      CLK => gtrxreset_o_reg,
      D => \^gen_ver_i\,
      Q => \verify_watchdog_r_reg[14]_srl15_n_0\
    );
\verify_watchdog_r_reg[14]_srl15_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \verify_watchdog_r_reg[14]_srl15_i_2_n_0\,
      I1 => \verify_watchdog_r_reg[14]_srl15_i_3_n_0\,
      I2 => \verify_watchdog_r_reg[14]_srl15_i_4_n_0\,
      I3 => \^gen_ver_i\,
      O => \verify_watchdog_r_reg[14]_srl15_i_1_n_0\
    );
\verify_watchdog_r_reg[14]_srl15_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => free_count_r_reg(13),
      I1 => free_count_r_reg(10),
      I2 => free_count_r_reg(11),
      I3 => free_count_r_reg(12),
      O => \verify_watchdog_r_reg[14]_srl15_i_2_n_0\
    );
\verify_watchdog_r_reg[14]_srl15_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => free_count_r_reg(8),
      I1 => free_count_r_reg(9),
      I2 => free_count_r_reg(6),
      I3 => free_count_r_reg(7),
      O => \verify_watchdog_r_reg[14]_srl15_i_3_n_0\
    );
\verify_watchdog_r_reg[14]_srl15_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => free_count_r_reg(3),
      I1 => free_count_r_reg(4),
      I2 => free_count_r_reg(5),
      I3 => free_count_r_reg(2),
      I4 => free_count_r_reg(0),
      I5 => free_count_r_reg(1),
      O => \verify_watchdog_r_reg[14]_srl15_i_4_n_0\
    );
\verify_watchdog_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \verify_watchdog_r_reg[14]_srl15_i_1_n_0\,
      D => \verify_watchdog_r_reg[14]_srl15_n_0\,
      Q => \verify_watchdog_r_reg_n_0_[15]\,
      R => '0'
    );
wait_for_lane_up_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => wait_for_lane_up_r0,
      Q => wait_for_lane_up_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_CLOCK_MODULE is
  port (
    CLK : out STD_LOGIC;
    tx_out_clk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_CLOCK_MODULE : entity is "aurora_8b10b_CLOCK_MODULE";
end aurora_8b10b_aurora_8b10b_CLOCK_MODULE;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_CLOCK_MODULE is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of user_clk_buf_i : label is "PRIMITIVE";
begin
user_clk_buf_i: unisim.vcomponents.BUFG
     port map (
      I => tx_out_clk_i,
      O => CLK
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_ERR_DETECT is
  port (
    hard_err_flop_r_reg_0 : out STD_LOGIC;
    HARD_ERR : out STD_LOGIC;
    ready_r_reg0 : out STD_LOGIC;
    CHANNEL_SOFT_ERR_reg : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrxreset_o_reg : in STD_LOGIC;
    hard_err_flop_r0 : in STD_LOGIC;
    reset_lanes_flop_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrxreset_o_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_ERR_DETECT : entity is "aurora_8b10b_ERR_DETECT";
end aurora_8b10b_aurora_8b10b_ERR_DETECT;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_ERR_DETECT is
  signal bucket_full_r_n_0 : STD_LOGIC;
  signal \count_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \good_count_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \good_count_r[1]_i_1_n_0\ : STD_LOGIC;
  signal hard_err_reset_i : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \good_count_r[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of soft_err_r_reg_srl3_i_1 : label is "soft_lutpair0";
begin
HARD_ERR_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => hard_err_reset_i,
      Q => HARD_ERR,
      R => SR(0)
    );
align_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => hard_err_reset_i,
      I1 => reset_lanes_flop_i(0),
      O => ready_r_reg0
    );
bucket_full_r: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA888808880000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      I4 => p_0_in(4),
      I5 => p_0_in(5),
      O => bucket_full_r_n_0
    );
bucket_full_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => bucket_full_r_n_0,
      Q => hard_err_flop_r_reg_0,
      R => SR(0)
    );
\count_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFAFFF2FAA0A0"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      I2 => p_0_in(5),
      I3 => p_0_in(3),
      I4 => p_0_in(4),
      I5 => p_0_in(1),
      O => \count_r[0]_i_1_n_0\
    );
\count_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFCC0CFC5CFFCF0"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => p_0_in(5),
      I3 => p_0_in(3),
      I4 => p_0_in(4),
      I5 => p_0_in(0),
      O => \count_r[1]_i_1_n_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \count_r[0]_i_1_n_0\,
      Q => p_0_in(1),
      R => SR(0)
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \count_r[1]_i_1_n_0\,
      Q => p_0_in(0),
      R => SR(0)
    );
\good_count_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(3),
      I2 => p_0_in(5),
      O => \good_count_r[0]_i_1_n_0\
    );
\good_count_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(5),
      I2 => p_0_in(2),
      O => \good_count_r[1]_i_1_n_0\
    );
\good_count_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \good_count_r[0]_i_1_n_0\,
      Q => p_0_in(3),
      R => SR(0)
    );
\good_count_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \good_count_r[1]_i_1_n_0\,
      Q => p_0_in(2),
      R => SR(0)
    );
hard_err_flop_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => hard_err_flop_r0,
      Q => hard_err_reset_i,
      R => SR(0)
    );
\soft_err_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gtrxreset_o_reg_0(1),
      Q => p_0_in(5),
      R => SR(0)
    );
\soft_err_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gtrxreset_o_reg_0(0),
      Q => p_0_in(4),
      R => SR(0)
    );
soft_err_r_reg_srl3_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      O => CHANNEL_SOFT_ERR_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_IDLE_AND_VER_GEN is
  port (
    \gen_v_r_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_a_i : out STD_LOGIC;
    \gen_k_r_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_r_r_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txver_count_r0 : out STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    SYSTEM_RESET_reg : in STD_LOGIC;
    gen_ver_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_IDLE_AND_VER_GEN : entity is "aurora_8b10b_IDLE_AND_VER_GEN";
end aurora_8b10b_aurora_8b10b_IDLE_AND_VER_GEN;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_IDLE_AND_VER_GEN is
  signal did_ver_i : STD_LOGIC;
  signal \downcounter_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \downcounter_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \downcounter_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \downcounter_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \downcounter_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \downcounter_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \downcounter_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \downcounter_r_reg_n_0_[3]\ : STD_LOGIC;
  signal gen_a_flop_c : STD_LOGIC;
  signal gen_k_flop_c_0 : STD_LOGIC;
  signal gen_k_flop_c_1 : STD_LOGIC;
  signal gen_r_flop_c_0 : STD_LOGIC;
  signal gen_r_flop_c_1 : STD_LOGIC;
  signal gen_v_flop_c_0 : STD_LOGIC;
  signal gen_ver_word_1_r : STD_LOGIC;
  signal insert_ver_c : STD_LOGIC;
  signal lfsr_last_flop_r : STD_LOGIC;
  signal \lfsr_shift_register_r_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal lfsr_taps_i_i_1_n_0 : STD_LOGIC;
  signal lfsr_taps_r : STD_LOGIC;
  signal prev_cycle_gen_ver_r : STD_LOGIC;
  signal recycle_gen_ver_c : STD_LOGIC;
  signal ver_counter_r_1 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gen_a_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of gen_a_flop_0_i : label is "FD";
  attribute BOX_TYPE of gen_k_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_k_flop_0_i : label is "FD";
  attribute BOX_TYPE of gen_k_flop_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_k_flop_1_i : label is "FD";
  attribute BOX_TYPE of gen_r_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_r_flop_0_i : label is "FD";
  attribute BOX_TYPE of gen_r_flop_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_r_flop_1_i : label is "FD";
  attribute BOX_TYPE of gen_v_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_v_flop_0_i : label is "FD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of gen_v_flop_0_i_i_1 : label is "soft_lutpair32";
  attribute BOX_TYPE of gen_v_flop_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_v_flop_1_i : label is "FD";
  attribute SOFT_HLUTNM of gen_v_flop_1_i_i_1 : label is "soft_lutpair31";
  attribute BOX_TYPE of lfsr_last_flop_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of lfsr_last_flop_i : label is "FDR";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \lfsr_shift_register_r_reg[2]_srl3\ : label is "\inst/aurora_8b10b_core_i/global_logic_i/idle_and_ver_gen_i/lfsr_shift_register_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \lfsr_shift_register_r_reg[2]_srl3\ : label is "\inst/aurora_8b10b_core_i/global_logic_i/idle_and_ver_gen_i/lfsr_shift_register_r_reg[2]_srl3 ";
  attribute BOX_TYPE of lfsr_taps_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of lfsr_taps_i : label is "FDR";
  attribute SOFT_HLUTNM of \txver_count_r_reg[6]_srl7_i_1\ : label is "soft_lutpair32";
  attribute BOX_TYPE of ver_counter_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ver_counter_0_i : label is "SRL16";
  attribute srl_name of ver_counter_0_i : label is "\inst/aurora_8b10b_core_i/global_logic_i/idle_and_ver_gen_i/ver_counter_0_i ";
  attribute SOFT_HLUTNM of ver_counter_0_i_i_1 : label is "soft_lutpair31";
  attribute BOX_TYPE of ver_counter_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ver_counter_1_i : label is "SRL16";
  attribute srl_name of ver_counter_1_i : label is "\inst/aurora_8b10b_core_i/global_logic_i/idle_and_ver_gen_i/ver_counter_1_i ";
begin
\downcounter_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55540001"
    )
        port map (
      I0 => SYSTEM_RESET_reg,
      I1 => \downcounter_r_reg_n_0_[1]\,
      I2 => \downcounter_r_reg_n_0_[3]\,
      I3 => \downcounter_r_reg_n_0_[2]\,
      I4 => \downcounter_r_reg_n_0_[0]\,
      O => \downcounter_r[0]_i_1_n_0\
    );
\downcounter_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5401540154015400"
    )
        port map (
      I0 => SYSTEM_RESET_reg,
      I1 => \downcounter_r_reg_n_0_[2]\,
      I2 => \downcounter_r_reg_n_0_[3]\,
      I3 => \downcounter_r_reg_n_0_[1]\,
      I4 => \downcounter_r_reg_n_0_[0]\,
      I5 => lfsr_taps_r,
      O => \downcounter_r[1]_i_1_n_0\
    );
\downcounter_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF0000FE"
    )
        port map (
      I0 => \downcounter_r_reg_n_0_[0]\,
      I1 => \downcounter_r_reg_n_0_[1]\,
      I2 => gen_k_flop_c_0,
      I3 => \downcounter_r_reg_n_0_[2]\,
      I4 => \downcounter_r_reg_n_0_[3]\,
      I5 => SYSTEM_RESET_reg,
      O => \downcounter_r[2]_i_1_n_0\
    );
\downcounter_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFFE"
    )
        port map (
      I0 => \downcounter_r_reg_n_0_[0]\,
      I1 => \downcounter_r_reg_n_0_[2]\,
      I2 => \downcounter_r_reg_n_0_[1]\,
      I3 => lfsr_last_flop_r,
      I4 => \downcounter_r_reg_n_0_[3]\,
      I5 => SYSTEM_RESET_reg,
      O => \downcounter_r[3]_i_1_n_0\
    );
\downcounter_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \downcounter_r[0]_i_1_n_0\,
      Q => \downcounter_r_reg_n_0_[0]\,
      R => '0'
    );
\downcounter_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \downcounter_r[1]_i_1_n_0\,
      Q => \downcounter_r_reg_n_0_[1]\,
      R => '0'
    );
\downcounter_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \downcounter_r[2]_i_1_n_0\,
      Q => \downcounter_r_reg_n_0_[2]\,
      R => '0'
    );
\downcounter_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \downcounter_r[3]_i_1_n_0\,
      Q => \downcounter_r_reg_n_0_[3]\,
      R => '0'
    );
gen_a_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gen_a_flop_c,
      Q => gen_a_i,
      R => '0'
    );
gen_a_flop_0_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => gen_ver_word_1_r,
      I1 => \downcounter_r_reg_n_0_[1]\,
      I2 => \downcounter_r_reg_n_0_[3]\,
      I3 => \downcounter_r_reg_n_0_[2]\,
      I4 => \downcounter_r_reg_n_0_[0]\,
      O => gen_a_flop_c
    );
gen_k_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gen_k_flop_c_1,
      Q => \gen_k_r_reg[0]\(1),
      R => '0'
    );
gen_k_flop_0_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA8"
    )
        port map (
      I0 => lfsr_taps_r,
      I1 => \downcounter_r_reg_n_0_[0]\,
      I2 => \downcounter_r_reg_n_0_[2]\,
      I3 => \downcounter_r_reg_n_0_[3]\,
      I4 => \downcounter_r_reg_n_0_[1]\,
      I5 => gen_ver_word_1_r,
      O => gen_k_flop_c_1
    );
gen_k_flop_1_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gen_k_flop_c_0,
      Q => \gen_k_r_reg[0]\(0),
      R => '0'
    );
gen_r_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gen_r_flop_c_1,
      Q => \gen_r_r_reg[0]\(1),
      R => '0'
    );
gen_r_flop_0_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFFE"
    )
        port map (
      I0 => \downcounter_r_reg_n_0_[1]\,
      I1 => \downcounter_r_reg_n_0_[3]\,
      I2 => \downcounter_r_reg_n_0_[2]\,
      I3 => \downcounter_r_reg_n_0_[0]\,
      I4 => lfsr_taps_r,
      I5 => gen_ver_word_1_r,
      O => gen_r_flop_c_1
    );
gen_r_flop_1_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gen_r_flop_c_0,
      Q => \gen_r_r_reg[0]\(0),
      R => '0'
    );
gen_r_flop_1_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gen_k_flop_c_0,
      O => gen_r_flop_c_0
    );
gen_v_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => recycle_gen_ver_c,
      Q => \gen_v_r_reg[0]\(1),
      R => '0'
    );
gen_v_flop_0_i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => did_ver_i,
      I1 => gen_ver_i,
      O => recycle_gen_ver_c
    );
gen_v_flop_1_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gen_v_flop_c_0,
      Q => \gen_v_r_reg[0]\(0),
      R => '0'
    );
gen_v_flop_1_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => gen_ver_i,
      I1 => gen_ver_word_1_r,
      I2 => did_ver_i,
      O => gen_v_flop_c_0
    );
gen_ver_word_2_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gen_ver_word_1_r,
      Q => did_ver_i,
      R => '0'
    );
lfsr_last_flop_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gen_k_flop_c_0,
      Q => lfsr_last_flop_r,
      R => SYSTEM_RESET_reg
    );
\lfsr_shift_register_r_reg[2]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => gtrxreset_o_reg,
      D => lfsr_taps_r,
      Q => \lfsr_shift_register_r_reg[2]_srl3_n_0\
    );
\lfsr_shift_register_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \lfsr_shift_register_r_reg[2]_srl3_n_0\,
      Q => gen_k_flop_c_0,
      R => '0'
    );
lfsr_taps_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => lfsr_taps_i_i_1_n_0,
      Q => lfsr_taps_r,
      R => SYSTEM_RESET_reg
    );
lfsr_taps_i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => lfsr_last_flop_r,
      I1 => gen_k_flop_c_0,
      O => lfsr_taps_i_i_1_n_0
    );
prev_cycle_gen_ver_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gen_ver_i,
      Q => prev_cycle_gen_ver_r,
      R => '0'
    );
\txver_count_r_reg[6]_srl7_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => did_ver_i,
      I1 => gen_ver_i,
      O => txver_count_r0
    );
ver_counter_0_i: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => gtrxreset_o_reg,
      D => insert_ver_c,
      Q => ver_counter_r_1
    );
ver_counter_0_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => gen_ver_i,
      I1 => did_ver_i,
      I2 => prev_cycle_gen_ver_r,
      O => insert_ver_c
    );
ver_counter_1_i: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => gtrxreset_o_reg,
      D => ver_counter_r_1,
      Q => gen_ver_word_1_r
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_LANE_INIT_SM is
  port (
    lane_up_flop_i_0 : out STD_LOGIC;
    ack_r : out STD_LOGIC;
    lane_up : out STD_LOGIC;
    realign_r_reg_0 : out STD_LOGIC;
    polarity_r : out STD_LOGIC;
    comma_over_two_cycles_r : out STD_LOGIC;
    align_r_reg_0 : out STD_LOGIC;
    hard_err_flop_r_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_polarity_i : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_spa_data_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    gen_k_i : out STD_LOGIC;
    counter4_r0 : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    counter3_r0 : in STD_LOGIC;
    \gen_spa_data_r_reg[1]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ready_r_reg0 : in STD_LOGIC;
    RX_NEG : in STD_LOGIC;
    rst_r_reg_0 : in STD_LOGIC;
    rx_realign_i : in STD_LOGIC;
    RX_NEG_reg : in STD_LOGIC;
    gtrxreset_o_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_LANE_INIT_SM : entity is "aurora_8b10b_LANE_INIT_SM";
end aurora_8b10b_aurora_8b10b_LANE_INIT_SM;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_LANE_INIT_SM is
  signal ENABLE_ERR_DETECT0 : STD_LOGIC;
  signal RX_CHAR_IS_COMMA_R : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^ack_r\ : STD_LOGIC;
  signal \^align_r_reg_0\ : STD_LOGIC;
  signal begin_r : STD_LOGIC;
  signal begin_r_i_2_n_0 : STD_LOGIC;
  signal comma_over_two_cycles_r0 : STD_LOGIC;
  signal count_128d_done_r : STD_LOGIC;
  signal count_32d_done_r : STD_LOGIC;
  signal count_8d_done_r : STD_LOGIC;
  signal counter1_r0 : STD_LOGIC;
  signal \counter1_r[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter1_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter1_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter1_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter1_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter1_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter1_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter2_r_reg[14]_srl14_n_0\ : STD_LOGIC;
  signal \counter2_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter3_r_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal \counter3_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter4_r_reg[14]_srl15_n_0\ : STD_LOGIC;
  signal \counter4_r_reg_n_0_[15]\ : STD_LOGIC;
  signal counter5_r0 : STD_LOGIC;
  signal \counter5_r_reg[14]_srl15_n_0\ : STD_LOGIC;
  signal \counter5_r_reg_n_0_[15]\ : STD_LOGIC;
  signal do_watchdog_count_r : STD_LOGIC;
  signal do_watchdog_count_r0 : STD_LOGIC;
  signal inc_count_c : STD_LOGIC;
  signal inc_count_c1 : STD_LOGIC;
  signal \^lane_up_flop_i_0\ : STD_LOGIC;
  signal next_ack_c : STD_LOGIC;
  signal next_ack_c16_in : STD_LOGIC;
  signal next_align_c : STD_LOGIC;
  signal next_begin_c : STD_LOGIC;
  signal next_polarity_c : STD_LOGIC;
  signal next_ready_c : STD_LOGIC;
  signal next_realign_c : STD_LOGIC;
  signal next_rst_c : STD_LOGIC;
  signal odd_word_r : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^polarity_r\ : STD_LOGIC;
  signal prev_char_was_comma_r : STD_LOGIC;
  signal prev_count_128d_done_r : STD_LOGIC;
  signal realign_r : STD_LOGIC;
  signal \^realign_r_reg_0\ : STD_LOGIC;
  signal reset_count_r : STD_LOGIC;
  signal reset_count_r0 : STD_LOGIC;
  signal \^rx_polarity_i\ : STD_LOGIC;
  signal rx_polarity_r_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ENABLE_ERR_DETECT_inv_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of align_r_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of begin_r_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of comma_over_two_cycles_r_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter1_r[0]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter1_r[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter1_r[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter1_r[5]_i_1\ : label is "soft_lutpair6";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \counter2_r_reg[14]_srl14\ : label is "\inst/aurora_8b10b_core_i/aurora_lane_0_i/lane_init_sm_i/counter2_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \counter2_r_reg[14]_srl14\ : label is "\inst/aurora_8b10b_core_i/aurora_lane_0_i/lane_init_sm_i/counter2_r_reg[14]_srl14 ";
  attribute srl_bus_name of \counter3_r_reg[2]_srl3\ : label is "\inst/aurora_8b10b_core_i/aurora_lane_0_i/lane_init_sm_i/counter3_r_reg ";
  attribute srl_name of \counter3_r_reg[2]_srl3\ : label is "\inst/aurora_8b10b_core_i/aurora_lane_0_i/lane_init_sm_i/counter3_r_reg[2]_srl3 ";
  attribute srl_bus_name of \counter4_r_reg[14]_srl15\ : label is "\inst/aurora_8b10b_core_i/aurora_lane_0_i/lane_init_sm_i/counter4_r_reg ";
  attribute srl_name of \counter4_r_reg[14]_srl15\ : label is "\inst/aurora_8b10b_core_i/aurora_lane_0_i/lane_init_sm_i/counter4_r_reg[14]_srl15 ";
  attribute srl_bus_name of \counter5_r_reg[14]_srl15\ : label is "\inst/aurora_8b10b_core_i/aurora_lane_0_i/lane_init_sm_i/counter5_r_reg ";
  attribute srl_name of \counter5_r_reg[14]_srl15\ : label is "\inst/aurora_8b10b_core_i/aurora_lane_0_i/lane_init_sm_i/counter5_r_reg[14]_srl15 ";
  attribute SOFT_HLUTNM of gen_k_fsm_r_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_sp_data_r[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_sp_data_r[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_spa_data_r[0]_i_1\ : label is "soft_lutpair7";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of lane_up_flop_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of lane_up_flop_i : label is "FDR";
  attribute SOFT_HLUTNM of prev_char_was_comma_r_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of rst_r_i_1 : label is "soft_lutpair2";
begin
  ack_r <= \^ack_r\;
  align_r_reg_0 <= \^align_r_reg_0\;
  lane_up_flop_i_0 <= \^lane_up_flop_i_0\;
  polarity_r <= \^polarity_r\;
  realign_r_reg_0 <= \^realign_r_reg_0\;
  rx_polarity_i <= \^rx_polarity_i\;
ENABLE_ERR_DETECT_inv_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ack_r\,
      I1 => \^lane_up_flop_i_0\,
      O => ENABLE_ERR_DETECT0
    );
ENABLE_ERR_DETECT_reg_inv: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => ENABLE_ERR_DETECT0,
      Q => hard_err_flop_r_reg(0),
      R => '0'
    );
\RX_CHAR_IS_COMMA_R_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gtrxreset_o_reg_0(0),
      Q => RX_CHAR_IS_COMMA_R(0),
      R => '0'
    );
\RX_CHAR_IS_COMMA_R_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gtrxreset_o_reg_0(1),
      Q => RX_CHAR_IS_COMMA_R(1),
      R => '0'
    );
ack_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"044404440444FFFF"
    )
        port map (
      I0 => \counter5_r_reg_n_0_[15]\,
      I1 => \^ack_r\,
      I2 => \counter3_r_reg_n_0_[3]\,
      I3 => \counter2_r_reg_n_0_[15]\,
      I4 => RX_NEG_reg,
      I5 => odd_word_r,
      O => next_ack_c
    );
ack_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => next_ack_c,
      Q => \^ack_r\,
      R => ready_r_reg0
    );
align_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => count_128d_done_r,
      I1 => \^realign_r_reg_0\,
      I2 => \^align_r_reg_0\,
      I3 => count_8d_done_r,
      O => next_align_c
    );
align_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => next_align_c,
      Q => \^realign_r_reg_0\,
      R => ready_r_reg0
    );
begin_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^ack_r\,
      I1 => \counter5_r_reg_n_0_[15]\,
      I2 => \^polarity_r\,
      I3 => RX_NEG,
      I4 => begin_r_i_2_n_0,
      O => next_begin_c
    );
begin_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rx_realign_i,
      I1 => realign_r,
      I2 => \counter4_r_reg_n_0_[15]\,
      I3 => \^lane_up_flop_i_0\,
      O => begin_r_i_2_n_0
    );
begin_r_reg: unisim.vcomponents.FDSE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => next_begin_c,
      Q => begin_r,
      S => ready_r_reg0
    );
comma_over_two_cycles_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57FD"
    )
        port map (
      I0 => \^realign_r_reg_0\,
      I1 => RX_CHAR_IS_COMMA_R(1),
      I2 => RX_CHAR_IS_COMMA_R(0),
      I3 => prev_char_was_comma_r,
      O => comma_over_two_cycles_r0
    );
comma_over_two_cycles_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => comma_over_two_cycles_r0,
      Q => comma_over_two_cycles_r,
      R => '0'
    );
\counter1_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^lane_up_flop_i_0\,
      I1 => reset_count_r,
      O => counter1_r0
    );
\counter1_r[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^realign_r_reg_0\,
      I1 => RX_CHAR_IS_COMMA_R(0),
      I2 => RX_CHAR_IS_COMMA_R(1),
      O => inc_count_c
    );
\counter1_r[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => count_128d_done_r,
      I1 => count_32d_done_r,
      I2 => count_8d_done_r,
      I3 => \counter1_r[0]_i_4_n_0\,
      I4 => \counter1_r_reg_n_0_[3]\,
      I5 => \counter1_r_reg_n_0_[1]\,
      O => p_0_in(7)
    );
\counter1_r[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[5]\,
      I1 => \counter1_r_reg_n_0_[6]\,
      I2 => \counter1_r_reg_n_0_[7]\,
      O => \counter1_r[0]_i_4_n_0\
    );
\counter1_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[1]\,
      I1 => \counter1_r_reg_n_0_[3]\,
      I2 => \counter1_r[0]_i_4_n_0\,
      I3 => count_8d_done_r,
      I4 => count_32d_done_r,
      O => p_0_in(6)
    );
\counter1_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => count_32d_done_r,
      I1 => count_8d_done_r,
      I2 => \counter1_r_reg_n_0_[7]\,
      I3 => \counter1_r_reg_n_0_[6]\,
      I4 => \counter1_r_reg_n_0_[5]\,
      I5 => \counter1_r_reg_n_0_[3]\,
      O => \counter1_r[2]_i_1_n_0\
    );
\counter1_r[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[3]\,
      I1 => \counter1_r_reg_n_0_[5]\,
      I2 => \counter1_r_reg_n_0_[6]\,
      I3 => \counter1_r_reg_n_0_[7]\,
      I4 => count_8d_done_r,
      O => p_0_in(4)
    );
\counter1_r[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_8d_done_r,
      I1 => \counter1_r_reg_n_0_[7]\,
      I2 => \counter1_r_reg_n_0_[6]\,
      I3 => \counter1_r_reg_n_0_[5]\,
      O => p_0_in(3)
    );
\counter1_r[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[7]\,
      I1 => \counter1_r_reg_n_0_[6]\,
      I2 => \counter1_r_reg_n_0_[5]\,
      O => p_0_in(2)
    );
\counter1_r[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[7]\,
      I1 => \counter1_r_reg_n_0_[6]\,
      O => p_0_in(1)
    );
\counter1_r[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[7]\,
      O => p_0_in(0)
    );
\counter1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => inc_count_c,
      D => p_0_in(7),
      Q => count_128d_done_r,
      R => counter1_r0
    );
\counter1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => inc_count_c,
      D => p_0_in(6),
      Q => \counter1_r_reg_n_0_[1]\,
      R => counter1_r0
    );
\counter1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => inc_count_c,
      D => \counter1_r[2]_i_1_n_0\,
      Q => count_32d_done_r,
      R => counter1_r0
    );
\counter1_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => inc_count_c,
      D => p_0_in(4),
      Q => \counter1_r_reg_n_0_[3]\,
      R => counter1_r0
    );
\counter1_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => inc_count_c,
      D => p_0_in(3),
      Q => count_8d_done_r,
      R => counter1_r0
    );
\counter1_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => inc_count_c,
      D => p_0_in(2),
      Q => \counter1_r_reg_n_0_[5]\,
      R => counter1_r0
    );
\counter1_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => inc_count_c,
      D => p_0_in(1),
      Q => \counter1_r_reg_n_0_[6]\,
      R => counter1_r0
    );
\counter1_r_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => inc_count_c,
      D => p_0_in(0),
      Q => \counter1_r_reg_n_0_[7]\,
      S => counter1_r0
    );
\counter2_r_reg[14]_srl14\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => gtrxreset_o_reg,
      D => \gen_spa_data_r_reg[1]\,
      Q => \counter2_r_reg[14]_srl14_n_0\
    );
\counter2_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \counter2_r_reg[14]_srl14_n_0\,
      Q => \counter2_r_reg_n_0_[15]\,
      R => '0'
    );
\counter3_r_reg[2]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => counter3_r0,
      CLK => gtrxreset_o_reg,
      D => \^ack_r\,
      Q => \counter3_r_reg[2]_srl3_n_0\
    );
\counter3_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => counter3_r0,
      D => \counter3_r_reg[2]_srl3_n_0\,
      Q => \counter3_r_reg_n_0_[3]\,
      R => '0'
    );
\counter4_r_reg[14]_srl15\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => counter4_r0,
      CLK => gtrxreset_o_reg,
      D => \^lane_up_flop_i_0\,
      Q => \counter4_r_reg[14]_srl15_n_0\
    );
\counter4_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => counter4_r0,
      D => \counter4_r_reg[14]_srl15_n_0\,
      Q => \counter4_r_reg_n_0_[15]\,
      R => '0'
    );
\counter5_r_reg[14]_srl15\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => counter5_r0,
      CLK => gtrxreset_o_reg,
      D => \^ack_r\,
      Q => \counter5_r_reg[14]_srl15_n_0\
    );
\counter5_r_reg[14]_srl15_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => do_watchdog_count_r,
      I1 => \^ack_r\,
      O => counter5_r0
    );
\counter5_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => counter5_r0,
      D => \counter5_r_reg[14]_srl15_n_0\,
      Q => \counter5_r_reg_n_0_[15]\,
      R => '0'
    );
do_watchdog_count_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_128d_done_r,
      I1 => prev_count_128d_done_r,
      O => do_watchdog_count_r0
    );
do_watchdog_count_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => do_watchdog_count_r0,
      Q => do_watchdog_count_r,
      R => '0'
    );
gen_k_fsm_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => odd_word_r,
      I1 => \^ack_r\,
      I2 => \^lane_up_flop_i_0\,
      O => gen_k_i
    );
\gen_sp_data_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^ack_r\,
      I1 => \^lane_up_flop_i_0\,
      I2 => odd_word_r,
      O => D(1)
    );
\gen_sp_data_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^lane_up_flop_i_0\,
      I1 => \^ack_r\,
      O => D(0)
    );
\gen_spa_data_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ack_r\,
      I1 => odd_word_r,
      O => gen_spa_data_i(0)
    );
lane_up_flop_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \^lane_up_flop_i_0\,
      Q => lane_up,
      R => SR(0)
    );
odd_word_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => odd_word_r,
      O => next_ack_c16_in
    );
odd_word_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => next_ack_c16_in,
      Q => odd_word_r,
      R => '0'
    );
polarity_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FF404040404040"
    )
        port map (
      I0 => RX_NEG,
      I1 => \^polarity_r\,
      I2 => odd_word_r,
      I3 => rx_realign_i,
      I4 => realign_r,
      I5 => count_32d_done_r,
      O => next_polarity_c
    );
polarity_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => next_polarity_c,
      Q => \^polarity_r\,
      R => ready_r_reg0
    );
prev_char_was_comma_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => RX_CHAR_IS_COMMA_R(0),
      I1 => RX_CHAR_IS_COMMA_R(1),
      O => inc_count_c1
    );
prev_char_was_comma_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => inc_count_c1,
      Q => prev_char_was_comma_r,
      R => '0'
    );
prev_count_128d_done_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => count_128d_done_r,
      Q => prev_count_128d_done_r,
      R => '0'
    );
\ready_r_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40004000"
    )
        port map (
      I0 => \counter5_r_reg_n_0_[15]\,
      I1 => \^ack_r\,
      I2 => \counter3_r_reg_n_0_[3]\,
      I3 => \counter2_r_reg_n_0_[15]\,
      I4 => \counter4_r_reg_n_0_[15]\,
      I5 => \^lane_up_flop_i_0\,
      O => next_ready_c
    );
ready_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => next_ready_c,
      Q => \^lane_up_flop_i_0\,
      R => ready_r_reg0
    );
realign_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF040404"
    )
        port map (
      I0 => rx_realign_i,
      I1 => realign_r,
      I2 => count_32d_done_r,
      I3 => count_128d_done_r,
      I4 => \^realign_r_reg_0\,
      O => next_realign_c
    );
realign_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => next_realign_c,
      Q => realign_r,
      R => ready_r_reg0
    );
reset_count_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF04F5"
    )
        port map (
      I0 => rst_r_reg_0,
      I1 => count_8d_done_r,
      I2 => begin_r,
      I3 => \^align_r_reg_0\,
      I4 => SR(0),
      O => reset_count_r0
    );
reset_count_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => reset_count_r0,
      Q => reset_count_r,
      R => '0'
    );
rst_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \^align_r_reg_0\,
      I1 => count_8d_done_r,
      I2 => begin_r,
      O => next_rst_c
    );
rst_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => next_rst_c,
      Q => \^align_r_reg_0\,
      R => ready_r_reg0
    );
rx_polarity_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => RX_NEG,
      I1 => \^polarity_r\,
      I2 => \^rx_polarity_i\,
      O => rx_polarity_r_i_1_n_0
    );
rx_polarity_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_polarity_r_i_1_n_0,
      Q => \^rx_polarity_i\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_RX_LL_PDU_DATAPATH is
  port (
    frame_err : out STD_LOGIC;
    m_axi_rx_tvalid : out STD_LOGIC;
    FRAME_ERR_reg_0 : out STD_LOGIC;
    storage_v_r : out STD_LOGIC;
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 15 );
    m_axi_rx_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rx_tlast : out STD_LOGIC;
    RX_ECP_reg : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    RX_PAD : in STD_LOGIC;
    RX_PE_DATA_V_reg : in STD_LOGIC;
    in_frame_r_reg_0 : in STD_LOGIC;
    rx_scp_i : in STD_LOGIC;
    rx_ecp_i : in STD_LOGIC;
    rx_pe_data_v_i : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    START_RX : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_RX_LL_PDU_DATAPATH : entity is "aurora_8b10b_RX_LL_PDU_DATAPATH";
end aurora_8b10b_aurora_8b10b_RX_LL_PDU_DATAPATH;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_RX_LL_PDU_DATAPATH is
  signal \FRAME_ERR0__0\ : STD_LOGIC;
  signal \^frame_err_reg_0\ : STD_LOGIC;
  signal \RX_REM[0]_i_1_n_0\ : STD_LOGIC;
  signal pad_in_storage_r : STD_LOGIC;
  signal rx_eof : STD_LOGIC;
  signal rx_rem_int : STD_LOGIC;
  signal storage_ce_c : STD_LOGIC;
  signal \storage_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \storage_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \storage_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \storage_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \storage_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \storage_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \storage_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \storage_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \storage_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \storage_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \storage_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \storage_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \storage_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \storage_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \storage_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \storage_r_reg_n_0_[9]\ : STD_LOGIC;
  signal \^storage_v_r\ : STD_LOGIC;
  signal storage_v_r_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axi_rx_tkeep[1]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of m_axi_rx_tlast_INST_0 : label is "soft_lutpair62";
begin
  FRAME_ERR_reg_0 <= \^frame_err_reg_0\;
  storage_v_r <= \^storage_v_r\;
FRAME_ERR0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAF0"
    )
        port map (
      I0 => rx_scp_i,
      I1 => \^storage_v_r\,
      I2 => rx_ecp_i,
      I3 => \^frame_err_reg_0\,
      O => \FRAME_ERR0__0\
    );
FRAME_ERR_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \FRAME_ERR0__0\,
      Q => frame_err,
      R => '0'
    );
\RX_D_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \storage_r_reg_n_0_[0]\,
      Q => m_axi_rx_tdata(0),
      R => '0'
    );
\RX_D_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \storage_r_reg_n_0_[10]\,
      Q => m_axi_rx_tdata(10),
      R => '0'
    );
\RX_D_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \storage_r_reg_n_0_[11]\,
      Q => m_axi_rx_tdata(11),
      R => '0'
    );
\RX_D_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \storage_r_reg_n_0_[12]\,
      Q => m_axi_rx_tdata(12),
      R => '0'
    );
\RX_D_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \storage_r_reg_n_0_[13]\,
      Q => m_axi_rx_tdata(13),
      R => '0'
    );
\RX_D_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \storage_r_reg_n_0_[14]\,
      Q => m_axi_rx_tdata(14),
      R => '0'
    );
\RX_D_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \storage_r_reg_n_0_[15]\,
      Q => m_axi_rx_tdata(15),
      R => '0'
    );
\RX_D_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \storage_r_reg_n_0_[1]\,
      Q => m_axi_rx_tdata(1),
      R => '0'
    );
\RX_D_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \storage_r_reg_n_0_[2]\,
      Q => m_axi_rx_tdata(2),
      R => '0'
    );
\RX_D_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \storage_r_reg_n_0_[3]\,
      Q => m_axi_rx_tdata(3),
      R => '0'
    );
\RX_D_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \storage_r_reg_n_0_[4]\,
      Q => m_axi_rx_tdata(4),
      R => '0'
    );
\RX_D_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \storage_r_reg_n_0_[5]\,
      Q => m_axi_rx_tdata(5),
      R => '0'
    );
\RX_D_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \storage_r_reg_n_0_[6]\,
      Q => m_axi_rx_tdata(6),
      R => '0'
    );
\RX_D_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \storage_r_reg_n_0_[7]\,
      Q => m_axi_rx_tdata(7),
      R => '0'
    );
\RX_D_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \storage_r_reg_n_0_[8]\,
      Q => m_axi_rx_tdata(8),
      R => '0'
    );
\RX_D_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \storage_r_reg_n_0_[9]\,
      Q => m_axi_rx_tdata(9),
      R => '0'
    );
RX_EOF_N_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => RX_ECP_reg,
      Q => rx_eof,
      R => '0'
    );
\RX_REM[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pad_in_storage_r,
      O => \RX_REM[0]_i_1_n_0\
    );
\RX_REM_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \RX_REM[0]_i_1_n_0\,
      Q => rx_rem_int,
      R => '0'
    );
RX_SRC_RDY_N_reg_inv: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => RX_PE_DATA_V_reg,
      Q => m_axi_rx_tvalid,
      R => '0'
    );
in_frame_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => in_frame_r_reg_0,
      Q => \^frame_err_reg_0\,
      R => '0'
    );
\m_axi_rx_tkeep[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rx_rem_int,
      I1 => rx_eof,
      O => m_axi_rx_tkeep(0)
    );
m_axi_rx_tlast_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_eof,
      O => m_axi_rx_tlast
    );
pad_in_storage_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^frame_err_reg_0\,
      I1 => rx_pe_data_v_i,
      O => storage_ce_c
    );
pad_in_storage_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => storage_ce_c,
      D => RX_PAD,
      Q => pad_in_storage_r,
      R => '0'
    );
\storage_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => storage_ce_c,
      D => D(15),
      Q => \storage_r_reg_n_0_[0]\,
      R => '0'
    );
\storage_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => storage_ce_c,
      D => D(5),
      Q => \storage_r_reg_n_0_[10]\,
      R => '0'
    );
\storage_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => storage_ce_c,
      D => D(4),
      Q => \storage_r_reg_n_0_[11]\,
      R => '0'
    );
\storage_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => storage_ce_c,
      D => D(3),
      Q => \storage_r_reg_n_0_[12]\,
      R => '0'
    );
\storage_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => storage_ce_c,
      D => D(2),
      Q => \storage_r_reg_n_0_[13]\,
      R => '0'
    );
\storage_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => storage_ce_c,
      D => D(1),
      Q => \storage_r_reg_n_0_[14]\,
      R => '0'
    );
\storage_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => storage_ce_c,
      D => D(0),
      Q => \storage_r_reg_n_0_[15]\,
      R => '0'
    );
\storage_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => storage_ce_c,
      D => D(14),
      Q => \storage_r_reg_n_0_[1]\,
      R => '0'
    );
\storage_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => storage_ce_c,
      D => D(13),
      Q => \storage_r_reg_n_0_[2]\,
      R => '0'
    );
\storage_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => storage_ce_c,
      D => D(12),
      Q => \storage_r_reg_n_0_[3]\,
      R => '0'
    );
\storage_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => storage_ce_c,
      D => D(11),
      Q => \storage_r_reg_n_0_[4]\,
      R => '0'
    );
\storage_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => storage_ce_c,
      D => D(10),
      Q => \storage_r_reg_n_0_[5]\,
      R => '0'
    );
\storage_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => storage_ce_c,
      D => D(9),
      Q => \storage_r_reg_n_0_[6]\,
      R => '0'
    );
\storage_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => storage_ce_c,
      D => D(8),
      Q => \storage_r_reg_n_0_[7]\,
      R => '0'
    );
\storage_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => storage_ce_c,
      D => D(7),
      Q => \storage_r_reg_n_0_[8]\,
      R => '0'
    );
\storage_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => storage_ce_c,
      D => D(6),
      Q => \storage_r_reg_n_0_[9]\,
      R => '0'
    );
storage_v_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F80000"
    )
        port map (
      I0 => \^frame_err_reg_0\,
      I1 => rx_pe_data_v_i,
      I2 => \^storage_v_r\,
      I3 => rx_ecp_i,
      I4 => START_RX,
      O => storage_v_r_i_1_n_0
    );
storage_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => storage_v_r_i_1_n_0,
      Q => \^storage_v_r\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_STANDARD_CC_MODULE is
  port (
    Q : out STD_LOGIC;
    RESET0 : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    lane_up_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_STANDARD_CC_MODULE : entity is "aurora_8b10b_STANDARD_CC_MODULE";
end aurora_8b10b_aurora_8b10b_STANDARD_CC_MODULE;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_STANDARD_CC_MODULE is
  signal DO_CC0_n_0 : STD_LOGIC;
  signal DO_CC_i_1_n_0 : STD_LOGIC;
  signal \cc_count_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \cc_count_r_reg_n_0_[5]\ : STD_LOGIC;
  signal cc_idle_count_done_c : STD_LOGIC;
  signal count_13d_flop_r_reg_r_n_0 : STD_LOGIC;
  signal \count_13d_srl_r_reg[10]_inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0\ : STD_LOGIC;
  signal \count_13d_srl_r_reg[9]_srl11___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0\ : STD_LOGIC;
  signal \count_13d_srl_r_reg[9]_srl11___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0\ : STD_LOGIC;
  signal count_13d_srl_r_reg_gate_n_0 : STD_LOGIC;
  signal \count_13d_srl_r_reg_n_0_[11]\ : STD_LOGIC;
  signal count_13d_srl_r_reg_r_0_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_1_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_2_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_3_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_4_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_5_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_6_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_7_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_8_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_9_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_n_0 : STD_LOGIC;
  signal count_16d_flop_r : STD_LOGIC;
  signal count_16d_flop_r_i_1_n_0 : STD_LOGIC;
  signal \count_16d_srl_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[9]\ : STD_LOGIC;
  signal count_24d_flop_r : STD_LOGIC;
  signal count_24d_flop_r_i_1_n_0 : STD_LOGIC;
  signal \count_24d_srl_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[16]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[17]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[18]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[19]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[20]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[21]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[22]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[9]\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \prepare_count_r_reg[7]_srl8___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_5_n_0\ : STD_LOGIC;
  signal \prepare_count_r_reg[8]_inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_6_n_0\ : STD_LOGIC;
  signal prepare_count_r_reg_gate_n_0 : STD_LOGIC;
  signal \prepare_count_r_reg_n_0_[9]\ : STD_LOGIC;
  signal reset_r : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of DO_CC_i_1 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \cc_count_r[0]_i_2\ : label is "soft_lutpair64";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \count_13d_srl_r_reg[9]_srl11___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8\ : label is "\inst/aurora_8b10b_core_i/standard_cc_module_i/count_13d_srl_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \count_13d_srl_r_reg[9]_srl11___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8\ : label is "\inst/aurora_8b10b_core_i/standard_cc_module_i/count_13d_srl_r_reg[9]_srl11___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8 ";
  attribute SOFT_HLUTNM of \count_13d_srl_r_reg[9]_srl11___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of count_16d_flop_r_i_1 : label is "soft_lutpair63";
  attribute srl_bus_name of \prepare_count_r_reg[7]_srl8___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_5\ : label is "\inst/aurora_8b10b_core_i/standard_cc_module_i/prepare_count_r_reg ";
  attribute srl_name of \prepare_count_r_reg[7]_srl8___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_5\ : label is "\inst/aurora_8b10b_core_i/standard_cc_module_i/prepare_count_r_reg[7]_srl8___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_5 ";
begin
DO_CC0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_2_in(1),
      I1 => \cc_count_r_reg_n_0_[5]\,
      I2 => p_2_in(0),
      I3 => p_2_in(3),
      I4 => p_2_in(2),
      I5 => p_2_in(4),
      O => DO_CC0_n_0
    );
DO_CC_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => DO_CC0_n_0,
      I1 => lane_up_r,
      I2 => reset_r,
      I3 => \prepare_count_r_reg_n_0_[9]\,
      O => DO_CC_i_1_n_0
    );
DO_CC_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => DO_CC_i_1_n_0,
      Q => Q,
      R => RESET0
    );
\cc_count_r[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \prepare_count_r_reg_n_0_[9]\,
      I1 => lane_up_r,
      O => \cc_count_r[0]_i_2_n_0\
    );
\cc_count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \cc_count_r[0]_i_2_n_0\,
      Q => p_2_in(4),
      R => RESET0
    );
\cc_count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => p_2_in(4),
      Q => p_2_in(3),
      R => RESET0
    );
\cc_count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => p_2_in(3),
      Q => p_2_in(2),
      R => RESET0
    );
\cc_count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => p_2_in(2),
      Q => p_2_in(1),
      R => RESET0
    );
\cc_count_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => p_2_in(1),
      Q => p_2_in(0),
      R => RESET0
    );
\cc_count_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => p_2_in(0),
      Q => \cc_count_r_reg_n_0_[5]\,
      R => RESET0
    );
count_13d_flop_r_reg_r: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => '1',
      Q => count_13d_flop_r_reg_r_n_0,
      R => RESET0
    );
\count_13d_srl_r_reg[10]_inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \count_13d_srl_r_reg[9]_srl11___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0\,
      Q => \count_13d_srl_r_reg[10]_inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0\,
      R => '0'
    );
\count_13d_srl_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => count_13d_srl_r_reg_gate_n_0,
      Q => \count_13d_srl_r_reg_n_0_[11]\,
      R => RESET0
    );
\count_13d_srl_r_reg[9]_srl11___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => gtrxreset_o_reg,
      D => \count_13d_srl_r_reg[9]_srl11___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0\,
      Q => \count_13d_srl_r_reg[9]_srl11___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0\
    );
\count_13d_srl_r_reg[9]_srl11___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \count_13d_srl_r_reg_n_0_[11]\,
      I1 => reset_r,
      I2 => lane_up_r,
      O => \count_13d_srl_r_reg[9]_srl11___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0\
    );
count_13d_srl_r_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_13d_srl_r_reg[10]_inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0\,
      I1 => count_13d_srl_r_reg_r_9_n_0,
      O => count_13d_srl_r_reg_gate_n_0
    );
count_13d_srl_r_reg_r: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => count_13d_flop_r_reg_r_n_0,
      Q => count_13d_srl_r_reg_r_n_0,
      R => RESET0
    );
count_13d_srl_r_reg_r_0: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => count_13d_srl_r_reg_r_n_0,
      Q => count_13d_srl_r_reg_r_0_n_0,
      R => RESET0
    );
count_13d_srl_r_reg_r_1: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => count_13d_srl_r_reg_r_0_n_0,
      Q => count_13d_srl_r_reg_r_1_n_0,
      R => RESET0
    );
count_13d_srl_r_reg_r_2: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => count_13d_srl_r_reg_r_1_n_0,
      Q => count_13d_srl_r_reg_r_2_n_0,
      R => RESET0
    );
count_13d_srl_r_reg_r_3: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => count_13d_srl_r_reg_r_2_n_0,
      Q => count_13d_srl_r_reg_r_3_n_0,
      R => RESET0
    );
count_13d_srl_r_reg_r_4: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => count_13d_srl_r_reg_r_3_n_0,
      Q => count_13d_srl_r_reg_r_4_n_0,
      R => RESET0
    );
count_13d_srl_r_reg_r_5: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => count_13d_srl_r_reg_r_4_n_0,
      Q => count_13d_srl_r_reg_r_5_n_0,
      R => RESET0
    );
count_13d_srl_r_reg_r_6: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => count_13d_srl_r_reg_r_5_n_0,
      Q => count_13d_srl_r_reg_r_6_n_0,
      R => RESET0
    );
count_13d_srl_r_reg_r_7: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => count_13d_srl_r_reg_r_6_n_0,
      Q => count_13d_srl_r_reg_r_7_n_0,
      R => RESET0
    );
count_13d_srl_r_reg_r_8: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => count_13d_srl_r_reg_r_7_n_0,
      Q => count_13d_srl_r_reg_r_8_n_0,
      R => RESET0
    );
count_13d_srl_r_reg_r_9: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => count_13d_srl_r_reg_r_8_n_0,
      Q => count_13d_srl_r_reg_r_9_n_0,
      R => RESET0
    );
count_16d_flop_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBBF888"
    )
        port map (
      I0 => \count_16d_srl_r_reg_n_0_[14]\,
      I1 => \count_13d_srl_r_reg_n_0_[11]\,
      I2 => reset_r,
      I3 => lane_up_r,
      I4 => count_16d_flop_r,
      O => count_16d_flop_r_i_1_n_0
    );
count_16d_flop_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => count_16d_flop_r_i_1_n_0,
      Q => count_16d_flop_r,
      R => RESET0
    );
\count_16d_srl_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \count_13d_srl_r_reg_n_0_[11]\,
      I1 => lane_up_r,
      O => \count_16d_srl_r[0]_i_1_n_0\
    );
\count_16d_srl_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_16d_srl_r[0]_i_1_n_0\,
      D => count_16d_flop_r,
      Q => \count_16d_srl_r_reg_n_0_[0]\,
      R => RESET0
    );
\count_16d_srl_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_16d_srl_r[0]_i_1_n_0\,
      D => \count_16d_srl_r_reg_n_0_[9]\,
      Q => \count_16d_srl_r_reg_n_0_[10]\,
      R => RESET0
    );
\count_16d_srl_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_16d_srl_r[0]_i_1_n_0\,
      D => \count_16d_srl_r_reg_n_0_[10]\,
      Q => \count_16d_srl_r_reg_n_0_[11]\,
      R => RESET0
    );
\count_16d_srl_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_16d_srl_r[0]_i_1_n_0\,
      D => \count_16d_srl_r_reg_n_0_[11]\,
      Q => \count_16d_srl_r_reg_n_0_[12]\,
      R => RESET0
    );
\count_16d_srl_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_16d_srl_r[0]_i_1_n_0\,
      D => \count_16d_srl_r_reg_n_0_[12]\,
      Q => \count_16d_srl_r_reg_n_0_[13]\,
      R => RESET0
    );
\count_16d_srl_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_16d_srl_r[0]_i_1_n_0\,
      D => \count_16d_srl_r_reg_n_0_[13]\,
      Q => \count_16d_srl_r_reg_n_0_[14]\,
      R => RESET0
    );
\count_16d_srl_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_16d_srl_r[0]_i_1_n_0\,
      D => \count_16d_srl_r_reg_n_0_[0]\,
      Q => \count_16d_srl_r_reg_n_0_[1]\,
      R => RESET0
    );
\count_16d_srl_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_16d_srl_r[0]_i_1_n_0\,
      D => \count_16d_srl_r_reg_n_0_[1]\,
      Q => \count_16d_srl_r_reg_n_0_[2]\,
      R => RESET0
    );
\count_16d_srl_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_16d_srl_r[0]_i_1_n_0\,
      D => \count_16d_srl_r_reg_n_0_[2]\,
      Q => \count_16d_srl_r_reg_n_0_[3]\,
      R => RESET0
    );
\count_16d_srl_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_16d_srl_r[0]_i_1_n_0\,
      D => \count_16d_srl_r_reg_n_0_[3]\,
      Q => \count_16d_srl_r_reg_n_0_[4]\,
      R => RESET0
    );
\count_16d_srl_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_16d_srl_r[0]_i_1_n_0\,
      D => \count_16d_srl_r_reg_n_0_[4]\,
      Q => \count_16d_srl_r_reg_n_0_[5]\,
      R => RESET0
    );
\count_16d_srl_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_16d_srl_r[0]_i_1_n_0\,
      D => \count_16d_srl_r_reg_n_0_[5]\,
      Q => \count_16d_srl_r_reg_n_0_[6]\,
      R => RESET0
    );
\count_16d_srl_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_16d_srl_r[0]_i_1_n_0\,
      D => \count_16d_srl_r_reg_n_0_[6]\,
      Q => \count_16d_srl_r_reg_n_0_[7]\,
      R => RESET0
    );
\count_16d_srl_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_16d_srl_r[0]_i_1_n_0\,
      D => \count_16d_srl_r_reg_n_0_[7]\,
      Q => \count_16d_srl_r_reg_n_0_[8]\,
      R => RESET0
    );
\count_16d_srl_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_16d_srl_r[0]_i_1_n_0\,
      D => \count_16d_srl_r_reg_n_0_[8]\,
      Q => \count_16d_srl_r_reg_n_0_[9]\,
      R => RESET0
    );
count_24d_flop_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFBFBFFF808080"
    )
        port map (
      I0 => \count_24d_srl_r_reg_n_0_[22]\,
      I1 => \count_16d_srl_r_reg_n_0_[14]\,
      I2 => \count_13d_srl_r_reg_n_0_[11]\,
      I3 => reset_r,
      I4 => lane_up_r,
      I5 => count_24d_flop_r,
      O => count_24d_flop_r_i_1_n_0
    );
count_24d_flop_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => count_24d_flop_r_i_1_n_0,
      Q => count_24d_flop_r,
      R => RESET0
    );
\count_24d_srl_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \count_16d_srl_r_reg_n_0_[14]\,
      I1 => \count_13d_srl_r_reg_n_0_[11]\,
      I2 => lane_up_r,
      O => \count_24d_srl_r[0]_i_1_n_0\
    );
\count_24d_srl_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => count_24d_flop_r,
      Q => \count_24d_srl_r_reg_n_0_[0]\,
      R => RESET0
    );
\count_24d_srl_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[9]\,
      Q => \count_24d_srl_r_reg_n_0_[10]\,
      R => RESET0
    );
\count_24d_srl_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[10]\,
      Q => \count_24d_srl_r_reg_n_0_[11]\,
      R => RESET0
    );
\count_24d_srl_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[11]\,
      Q => \count_24d_srl_r_reg_n_0_[12]\,
      R => RESET0
    );
\count_24d_srl_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[12]\,
      Q => \count_24d_srl_r_reg_n_0_[13]\,
      R => RESET0
    );
\count_24d_srl_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[13]\,
      Q => \count_24d_srl_r_reg_n_0_[14]\,
      R => RESET0
    );
\count_24d_srl_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[14]\,
      Q => \count_24d_srl_r_reg_n_0_[15]\,
      R => RESET0
    );
\count_24d_srl_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[15]\,
      Q => \count_24d_srl_r_reg_n_0_[16]\,
      R => RESET0
    );
\count_24d_srl_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[16]\,
      Q => \count_24d_srl_r_reg_n_0_[17]\,
      R => RESET0
    );
\count_24d_srl_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[17]\,
      Q => \count_24d_srl_r_reg_n_0_[18]\,
      R => RESET0
    );
\count_24d_srl_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[18]\,
      Q => \count_24d_srl_r_reg_n_0_[19]\,
      R => RESET0
    );
\count_24d_srl_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[0]\,
      Q => \count_24d_srl_r_reg_n_0_[1]\,
      R => RESET0
    );
\count_24d_srl_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[19]\,
      Q => \count_24d_srl_r_reg_n_0_[20]\,
      R => RESET0
    );
\count_24d_srl_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[20]\,
      Q => \count_24d_srl_r_reg_n_0_[21]\,
      R => RESET0
    );
\count_24d_srl_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[21]\,
      Q => \count_24d_srl_r_reg_n_0_[22]\,
      R => RESET0
    );
\count_24d_srl_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[1]\,
      Q => \count_24d_srl_r_reg_n_0_[2]\,
      R => RESET0
    );
\count_24d_srl_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[2]\,
      Q => \count_24d_srl_r_reg_n_0_[3]\,
      R => RESET0
    );
\count_24d_srl_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[3]\,
      Q => \count_24d_srl_r_reg_n_0_[4]\,
      R => RESET0
    );
\count_24d_srl_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[4]\,
      Q => \count_24d_srl_r_reg_n_0_[5]\,
      R => RESET0
    );
\count_24d_srl_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[5]\,
      Q => \count_24d_srl_r_reg_n_0_[6]\,
      R => RESET0
    );
\count_24d_srl_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[6]\,
      Q => \count_24d_srl_r_reg_n_0_[7]\,
      R => RESET0
    );
\count_24d_srl_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[7]\,
      Q => \count_24d_srl_r_reg_n_0_[8]\,
      R => RESET0
    );
\count_24d_srl_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \count_24d_srl_r[0]_i_1_n_0\,
      D => \count_24d_srl_r_reg_n_0_[8]\,
      Q => \count_24d_srl_r_reg_n_0_[9]\,
      R => RESET0
    );
\prepare_count_r_reg[7]_srl8___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_5\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => gtrxreset_o_reg,
      D => cc_idle_count_done_c,
      Q => \prepare_count_r_reg[7]_srl8___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_5_n_0\
    );
\prepare_count_r_reg[7]_srl8___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \count_16d_srl_r_reg_n_0_[14]\,
      I1 => \count_13d_srl_r_reg_n_0_[11]\,
      I2 => \count_24d_srl_r_reg_n_0_[22]\,
      O => cc_idle_count_done_c
    );
\prepare_count_r_reg[8]_inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_6\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \prepare_count_r_reg[7]_srl8___inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_5_n_0\,
      Q => \prepare_count_r_reg[8]_inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_6_n_0\,
      R => '0'
    );
\prepare_count_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => prepare_count_r_reg_gate_n_0,
      Q => \prepare_count_r_reg_n_0_[9]\,
      R => RESET0
    );
prepare_count_r_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \prepare_count_r_reg[8]_inst_aurora_8b10b_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_6_n_0\,
      I1 => count_13d_srl_r_reg_r_6_n_0,
      O => prepare_count_r_reg_gate_n_0
    );
reset_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => RESET0,
      Q => reset_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_SYM_DEC is
  port (
    RX_NEG : out STD_LOGIC;
    rx_scp_i : out STD_LOGIC;
    RX_EOF_N_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    GOT_V : out STD_LOGIC;
    RX_PAD : out STD_LOGIC;
    left_aligned_r_reg_0 : out STD_LOGIC;
    first_v_received_r : out STD_LOGIC;
    rx_pe_data_v_i : out STD_LOGIC;
    in_frame_r_reg : out STD_LOGIC;
    RX_SRC_RDY_N_reg_inv : out STD_LOGIC;
    RX_EOF_N_reg_0 : out STD_LOGIC;
    counter3_r0 : out STD_LOGIC;
    counter4_r0 : out STD_LOGIC;
    ack_r_reg : out STD_LOGIC;
    \storage_r_reg[0]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtrxreset_o_reg : in STD_LOGIC;
    left_aligned_r_reg_1 : in STD_LOGIC;
    left_aligned_r_reg_2 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    first_v_received_r_reg_0 : in STD_LOGIC;
    in_frame_r : in STD_LOGIC;
    START_RX : in STD_LOGIC;
    storage_v_r : in STD_LOGIC;
    ack_r : in STD_LOGIC;
    ready_r : in STD_LOGIC;
    polarity_r : in STD_LOGIC;
    left_aligned_r_reg_3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    left_aligned_r_reg_4 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_SYM_DEC : entity is "aurora_8b10b_SYM_DEC";
end aurora_8b10b_aurora_8b10b_SYM_DEC;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_SYM_DEC is
  signal RX_CC0 : STD_LOGIC;
  signal RX_ECP_i_1_n_0 : STD_LOGIC;
  signal \^rx_eof_n_reg\ : STD_LOGIC;
  signal \^rx_neg\ : STD_LOGIC;
  signal RX_NEG0 : STD_LOGIC;
  signal RX_PAD0 : STD_LOGIC;
  signal RX_PE_DATA_V_i_1_n_0 : STD_LOGIC;
  signal RX_SCP_i_1_n_0 : STD_LOGIC;
  signal RX_SPA0 : STD_LOGIC;
  signal \^first_v_received_r\ : STD_LOGIC;
  signal first_v_received_r_i_1_n_0 : STD_LOGIC;
  signal got_v_c : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in5_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_5_out : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal prev_beat_sp_d_r05_out : STD_LOGIC;
  signal prev_beat_sp_d_r08_out : STD_LOGIC;
  signal \prev_beat_sp_d_r0__0\ : STD_LOGIC;
  signal prev_beat_sp_d_r16_in : STD_LOGIC;
  signal \prev_beat_sp_d_r1__0\ : STD_LOGIC;
  signal prev_beat_sp_r : STD_LOGIC;
  signal prev_beat_sp_r0 : STD_LOGIC;
  signal \prev_beat_spa_d_r0__0\ : STD_LOGIC;
  signal prev_beat_spa_r : STD_LOGIC;
  signal prev_beat_spa_r0 : STD_LOGIC;
  signal prev_beat_v_d_r : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \prev_beat_v_d_r0__0\ : STD_LOGIC;
  signal prev_beat_v_d_r0_n_0 : STD_LOGIC;
  signal prev_beat_v_r : STD_LOGIC;
  signal prev_beat_v_r0 : STD_LOGIC;
  signal rx_cc_r : STD_LOGIC_VECTOR ( 1 to 3 );
  signal \rx_cc_r0__0\ : STD_LOGIC;
  signal rx_cc_r0_n_0 : STD_LOGIC;
  signal rx_ecp_d_r : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \rx_ecp_d_r0__0\ : STD_LOGIC;
  signal \rx_ecp_d_r0_inferred__0/i__n_0\ : STD_LOGIC;
  signal rx_ecp_d_r0_n_0 : STD_LOGIC;
  signal rx_pad_d_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \rx_pad_d_r0__0\ : STD_LOGIC;
  signal rx_pad_d_r0_n_0 : STD_LOGIC;
  signal \rx_pe_control_r_reg_n_0_[1]\ : STD_LOGIC;
  signal rx_pe_data_r : STD_LOGIC_VECTOR ( 0 to 15 );
  signal \^rx_pe_data_v_i\ : STD_LOGIC;
  signal rx_scp_d_r : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \rx_scp_d_r0__0\ : STD_LOGIC;
  signal \rx_scp_d_r0_inferred__0/i__n_0\ : STD_LOGIC;
  signal \rx_scp_d_r0_inferred__1/i__n_0\ : STD_LOGIC;
  signal \rx_scp_d_r0_inferred__2/i__n_0\ : STD_LOGIC;
  signal \^rx_scp_i\ : STD_LOGIC;
  signal rx_sp_c : STD_LOGIC;
  signal rx_sp_d_r : STD_LOGIC_VECTOR ( 0 to 3 );
  signal rx_sp_i : STD_LOGIC;
  signal rx_sp_neg_d_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal rx_spa_d_r : STD_LOGIC_VECTOR ( 0 to 2 );
  signal \rx_spa_d_r0__0\ : STD_LOGIC;
  signal rx_spa_i : STD_LOGIC;
  signal rx_spa_neg_d_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \rx_spa_neg_d_r0__0\ : STD_LOGIC;
  signal rx_spa_neg_d_r0_n_0 : STD_LOGIC;
  signal rx_v_d_r : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \rx_v_d_r0__0\ : STD_LOGIC;
  signal rx_v_d_r0_n_0 : STD_LOGIC;
  signal word_aligned_control_bits_r : STD_LOGIC_VECTOR ( 0 to 0 );
  signal word_aligned_control_bits_r_reg : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of RX_EOF_N_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of RX_PAD_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of RX_SP_i_2 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of RX_SRC_RDY_N_inv_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of prev_beat_sp_d_r0 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \prev_beat_sp_d_r0_inferred__0/i_\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \prev_beat_sp_d_r0_inferred__1/i_\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of prev_beat_sp_d_r1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \prev_beat_sp_d_r1_inferred__0/i_\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of prev_beat_spa_d_r0 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of prev_beat_v_d_r0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \prev_beat_v_d_r0_inferred__0/i_\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of rx_cc_r0 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of rx_ecp_d_r0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rx_ecp_d_r0_inferred__0/i_\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rx_ecp_d_r0_inferred__1/i_\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of rx_pad_d_r0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rx_pad_d_r0_inferred__0/i_\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of rx_scp_d_r0 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rx_scp_d_r0_inferred__0/i_\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rx_scp_d_r0_inferred__1/i_\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rx_scp_d_r0_inferred__2/i_\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rx_sp_d_r[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rx_sp_d_r[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of rx_spa_d_r0 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of rx_spa_neg_d_r0 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of rx_v_d_r0 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rx_v_d_r0_inferred__0/i_\ : label is "soft_lutpair16";
begin
  RX_EOF_N_reg <= \^rx_eof_n_reg\;
  RX_NEG <= \^rx_neg\;
  first_v_received_r <= \^first_v_received_r\;
  rx_pe_data_v_i <= \^rx_pe_data_v_i\;
  rx_scp_i <= \^rx_scp_i\;
GOT_V_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rx_v_d_r(0),
      I1 => rx_v_d_r(1),
      I2 => p_0_in5_in,
      I3 => prev_beat_v_r,
      I4 => rx_v_d_r(2),
      I5 => rx_v_d_r(3),
      O => got_v_c
    );
GOT_V_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => got_v_c,
      Q => GOT_V,
      R => '0'
    );
RX_CC_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rx_cc_r(1),
      I1 => rx_cc_r(3),
      I2 => p_2_in,
      I3 => \rx_pe_control_r_reg_n_0_[1]\,
      I4 => rx_ecp_d_r(0),
      I5 => rx_ecp_d_r(2),
      O => RX_CC0
    );
RX_CC_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => RX_CC0,
      Q => D(0),
      R => '0'
    );
RX_ECP_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rx_ecp_d_r(0),
      I1 => p_2_in,
      I2 => \rx_pe_control_r_reg_n_0_[1]\,
      I3 => rx_ecp_d_r(1),
      I4 => rx_ecp_d_r(3),
      I5 => rx_ecp_d_r(2),
      O => RX_ECP_i_1_n_0
    );
RX_ECP_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => RX_ECP_i_1_n_0,
      Q => \^rx_eof_n_reg\,
      R => '0'
    );
RX_EOF_N_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rx_eof_n_reg\,
      O => RX_EOF_N_reg_0
    );
RX_NEG_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55404040"
    )
        port map (
      I0 => \rx_pe_control_r_reg_n_0_[1]\,
      I1 => rx_spa_neg_d_r(1),
      I2 => rx_spa_neg_d_r(0),
      I3 => rx_sp_neg_d_r(1),
      I4 => rx_sp_neg_d_r(0),
      O => RX_NEG0
    );
RX_NEG_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => RX_NEG0,
      Q => \^rx_neg\,
      R => '0'
    );
RX_PAD_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => rx_pad_d_r(0),
      I1 => rx_pad_d_r(1),
      I2 => \rx_pe_control_r_reg_n_0_[1]\,
      I3 => p_2_in,
      O => RX_PAD0
    );
RX_PAD_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => RX_PAD0,
      Q => RX_PAD,
      R => '0'
    );
RX_PE_DATA_V_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => got_v_c,
      I1 => rx_sp_c,
      I2 => p_2_in,
      O => RX_PE_DATA_V_i_1_n_0
    );
RX_PE_DATA_V_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => RX_PE_DATA_V_i_1_n_0,
      Q => \^rx_pe_data_v_i\,
      R => '0'
    );
\RX_PE_DATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_pe_data_r(0),
      Q => \storage_r_reg[0]\(15),
      R => '0'
    );
\RX_PE_DATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_pe_data_r(10),
      Q => \storage_r_reg[0]\(5),
      R => '0'
    );
\RX_PE_DATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_pe_data_r(11),
      Q => \storage_r_reg[0]\(4),
      R => '0'
    );
\RX_PE_DATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_pe_data_r(12),
      Q => \storage_r_reg[0]\(3),
      R => '0'
    );
\RX_PE_DATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_pe_data_r(13),
      Q => \storage_r_reg[0]\(2),
      R => '0'
    );
\RX_PE_DATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_pe_data_r(14),
      Q => \storage_r_reg[0]\(1),
      R => '0'
    );
\RX_PE_DATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_pe_data_r(15),
      Q => \storage_r_reg[0]\(0),
      R => '0'
    );
\RX_PE_DATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_pe_data_r(1),
      Q => \storage_r_reg[0]\(14),
      R => '0'
    );
\RX_PE_DATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_pe_data_r(2),
      Q => \storage_r_reg[0]\(13),
      R => '0'
    );
\RX_PE_DATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_pe_data_r(3),
      Q => \storage_r_reg[0]\(12),
      R => '0'
    );
\RX_PE_DATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_pe_data_r(4),
      Q => \storage_r_reg[0]\(11),
      R => '0'
    );
\RX_PE_DATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_pe_data_r(5),
      Q => \storage_r_reg[0]\(10),
      R => '0'
    );
\RX_PE_DATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_pe_data_r(6),
      Q => \storage_r_reg[0]\(9),
      R => '0'
    );
\RX_PE_DATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_pe_data_r(7),
      Q => \storage_r_reg[0]\(8),
      R => '0'
    );
\RX_PE_DATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_pe_data_r(8),
      Q => \storage_r_reg[0]\(7),
      R => '0'
    );
\RX_PE_DATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_pe_data_r(9),
      Q => \storage_r_reg[0]\(6),
      R => '0'
    );
RX_SCP_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rx_scp_d_r(0),
      I1 => p_2_in,
      I2 => \rx_pe_control_r_reg_n_0_[1]\,
      I3 => rx_scp_d_r(1),
      I4 => rx_scp_d_r(3),
      I5 => rx_ecp_d_r(2),
      O => RX_SCP_i_1_n_0
    );
RX_SCP_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => RX_SCP_i_1_n_0,
      Q => \^rx_scp_i\,
      R => '0'
    );
RX_SPA_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rx_spa_d_r(0),
      I1 => rx_scp_d_r(1),
      I2 => p_0_in5_in,
      I3 => prev_beat_spa_r,
      I4 => rx_spa_d_r(2),
      I5 => rx_pad_d_r(1),
      O => RX_SPA0
    );
RX_SPA_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => RX_SPA0,
      Q => rx_spa_i,
      R => '0'
    );
RX_SP_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rx_sp_d_r(0),
      I1 => rx_sp_d_r(1),
      I2 => p_0_in5_in,
      I3 => prev_beat_sp_r,
      I4 => rx_sp_d_r(2),
      I5 => rx_sp_d_r(3),
      O => rx_sp_c
    );
RX_SP_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_pe_control_r_reg_n_0_[1]\,
      I1 => p_2_in,
      O => p_0_in5_in
    );
RX_SP_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_sp_c,
      Q => rx_sp_i,
      R => '0'
    );
RX_SRC_RDY_N_inv_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8000000"
    )
        port map (
      I0 => \^rx_pe_data_v_i\,
      I1 => in_frame_r,
      I2 => \^rx_eof_n_reg\,
      I3 => storage_v_r,
      I4 => START_RX,
      O => RX_SRC_RDY_N_reg_inv
    );
ack_r_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^rx_neg\,
      I1 => polarity_r,
      O => ack_r_reg
    );
\counter3_r_reg[2]_srl3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rx_spa_i,
      I1 => ack_r,
      O => counter3_r0
    );
\counter4_r_reg[14]_srl15_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rx_sp_i,
      I1 => ready_r,
      O => counter4_r0
    );
first_v_received_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => got_v_c,
      I1 => \^first_v_received_r\,
      O => first_v_received_r_i_1_n_0
    );
first_v_received_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => first_v_received_r_i_1_n_0,
      Q => \^first_v_received_r\,
      R => SR(0)
    );
in_frame_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F200"
    )
        port map (
      I0 => in_frame_r,
      I1 => \^rx_eof_n_reg\,
      I2 => \^rx_scp_i\,
      I3 => START_RX,
      O => in_frame_r_reg
    );
left_aligned_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => first_v_received_r_reg_0,
      Q => left_aligned_r_reg_0,
      R => SR(0)
    );
prev_beat_sp_d_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[1]\,
      I1 => \word_aligned_data_r_reg_n_0_[0]\,
      I2 => \word_aligned_data_r_reg_n_0_[2]\,
      I3 => \word_aligned_data_r_reg_n_0_[3]\,
      O => \prev_beat_sp_d_r0__0\
    );
\prev_beat_sp_d_r0_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1008"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[12]\,
      I1 => \word_aligned_data_r_reg_n_0_[14]\,
      I2 => \word_aligned_data_r_reg_n_0_[13]\,
      I3 => \word_aligned_data_r_reg_n_0_[15]\,
      O => prev_beat_sp_d_r05_out
    );
\prev_beat_sp_d_r0_inferred__1/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2004"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => p_0_in(3),
      O => prev_beat_sp_d_r08_out
    );
prev_beat_sp_d_r1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[12]\,
      I1 => \word_aligned_data_r_reg_n_0_[14]\,
      I2 => \word_aligned_data_r_reg_n_0_[13]\,
      I3 => \word_aligned_data_r_reg_n_0_[15]\,
      O => \prev_beat_sp_d_r1__0\
    );
\prev_beat_sp_d_r1_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      O => prev_beat_sp_d_r16_in
    );
prev_beat_sp_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => rx_scp_d_r(1),
      I1 => rx_sp_d_r(3),
      I2 => \rx_pe_control_r_reg_n_0_[1]\,
      I3 => p_2_in,
      I4 => prev_beat_v_d_r(0),
      I5 => rx_sp_d_r(2),
      O => prev_beat_sp_r0
    );
prev_beat_sp_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => prev_beat_sp_r0,
      Q => prev_beat_sp_r,
      R => '0'
    );
prev_beat_spa_d_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      O => \prev_beat_spa_d_r0__0\
    );
prev_beat_spa_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => rx_scp_d_r(1),
      I1 => rx_pad_d_r(1),
      I2 => \rx_pe_control_r_reg_n_0_[1]\,
      I3 => p_2_in,
      I4 => prev_beat_v_d_r(0),
      I5 => rx_spa_d_r(2),
      O => prev_beat_spa_r0
    );
prev_beat_spa_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => prev_beat_spa_r0,
      Q => prev_beat_spa_r,
      R => '0'
    );
prev_beat_v_d_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[13]\,
      I1 => \word_aligned_data_r_reg_n_0_[14]\,
      I2 => \word_aligned_data_r_reg_n_0_[12]\,
      I3 => \word_aligned_data_r_reg_n_0_[15]\,
      O => prev_beat_v_d_r0_n_0
    );
\prev_beat_v_d_r0_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      O => \prev_beat_v_d_r0__0\
    );
\prev_beat_v_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \prev_beat_sp_d_r0__0\,
      Q => prev_beat_v_d_r(0),
      R => '0'
    );
prev_beat_v_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => rx_scp_d_r(1),
      I1 => rx_v_d_r(3),
      I2 => \rx_pe_control_r_reg_n_0_[1]\,
      I3 => p_2_in,
      I4 => prev_beat_v_d_r(0),
      I5 => rx_v_d_r(2),
      O => prev_beat_v_r0
    );
prev_beat_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => prev_beat_v_r0,
      Q => prev_beat_v_r,
      R => '0'
    );
rx_cc_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[12]\,
      I1 => \word_aligned_data_r_reg_n_0_[13]\,
      I2 => \word_aligned_data_r_reg_n_0_[14]\,
      I3 => \word_aligned_data_r_reg_n_0_[15]\,
      O => rx_cc_r0_n_0
    );
\rx_cc_r0_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[4]\,
      I1 => \word_aligned_data_r_reg_n_0_[5]\,
      I2 => \word_aligned_data_r_reg_n_0_[6]\,
      I3 => \word_aligned_data_r_reg_n_0_[7]\,
      O => \rx_cc_r0__0\
    );
\rx_cc_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \rx_cc_r0__0\,
      Q => rx_cc_r(1),
      R => '0'
    );
\rx_cc_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_cc_r0_n_0,
      Q => rx_cc_r(3),
      R => '0'
    );
rx_ecp_d_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[15]\,
      I1 => \word_aligned_data_r_reg_n_0_[13]\,
      I2 => \word_aligned_data_r_reg_n_0_[12]\,
      I3 => \word_aligned_data_r_reg_n_0_[14]\,
      O => rx_ecp_d_r0_n_0
    );
\rx_ecp_d_r0_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[6]\,
      I1 => \word_aligned_data_r_reg_n_0_[5]\,
      I2 => \word_aligned_data_r_reg_n_0_[4]\,
      I3 => \word_aligned_data_r_reg_n_0_[7]\,
      O => \rx_ecp_d_r0_inferred__0/i__n_0\
    );
\rx_ecp_d_r0_inferred__1/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[2]\,
      I1 => \word_aligned_data_r_reg_n_0_[3]\,
      I2 => \word_aligned_data_r_reg_n_0_[1]\,
      I3 => \word_aligned_data_r_reg_n_0_[0]\,
      O => \rx_ecp_d_r0__0\
    );
\rx_ecp_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \rx_ecp_d_r0__0\,
      Q => rx_ecp_d_r(0),
      R => '0'
    );
\rx_ecp_d_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \rx_ecp_d_r0_inferred__0/i__n_0\,
      Q => rx_ecp_d_r(1),
      R => '0'
    );
\rx_ecp_d_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \rx_scp_d_r0_inferred__1/i__n_0\,
      Q => rx_ecp_d_r(2),
      R => '0'
    );
\rx_ecp_d_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_ecp_d_r0_n_0,
      Q => rx_ecp_d_r(3),
      R => '0'
    );
rx_pad_d_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[14]\,
      I1 => \word_aligned_data_r_reg_n_0_[15]\,
      I2 => \word_aligned_data_r_reg_n_0_[13]\,
      I3 => \word_aligned_data_r_reg_n_0_[12]\,
      O => rx_pad_d_r0_n_0
    );
\rx_pad_d_r0_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      O => \rx_pad_d_r0__0\
    );
\rx_pad_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \rx_pad_d_r0__0\,
      Q => rx_pad_d_r(0),
      R => '0'
    );
\rx_pad_d_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_pad_d_r0_n_0,
      Q => rx_pad_d_r(1),
      R => '0'
    );
\rx_pe_control_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => word_aligned_control_bits_r(0),
      Q => p_2_in,
      R => '0'
    );
\rx_pe_control_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => word_aligned_control_bits_r_reg,
      Q => \rx_pe_control_r_reg_n_0_[1]\,
      R => '0'
    );
\rx_pe_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[0]\,
      Q => rx_pe_data_r(0),
      R => '0'
    );
\rx_pe_data_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => p_0_in(1),
      Q => rx_pe_data_r(10),
      R => '0'
    );
\rx_pe_data_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => p_0_in(0),
      Q => rx_pe_data_r(11),
      R => '0'
    );
\rx_pe_data_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[12]\,
      Q => rx_pe_data_r(12),
      R => '0'
    );
\rx_pe_data_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[13]\,
      Q => rx_pe_data_r(13),
      R => '0'
    );
\rx_pe_data_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[14]\,
      Q => rx_pe_data_r(14),
      R => '0'
    );
\rx_pe_data_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[15]\,
      Q => rx_pe_data_r(15),
      R => '0'
    );
\rx_pe_data_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[1]\,
      Q => rx_pe_data_r(1),
      R => '0'
    );
\rx_pe_data_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[2]\,
      Q => rx_pe_data_r(2),
      R => '0'
    );
\rx_pe_data_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[3]\,
      Q => rx_pe_data_r(3),
      R => '0'
    );
\rx_pe_data_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[4]\,
      Q => rx_pe_data_r(4),
      R => '0'
    );
\rx_pe_data_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[5]\,
      Q => rx_pe_data_r(5),
      R => '0'
    );
\rx_pe_data_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[6]\,
      Q => rx_pe_data_r(6),
      R => '0'
    );
\rx_pe_data_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[7]\,
      Q => rx_pe_data_r(7),
      R => '0'
    );
\rx_pe_data_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => p_0_in(3),
      Q => rx_pe_data_r(8),
      R => '0'
    );
\rx_pe_data_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => p_0_in(2),
      Q => rx_pe_data_r(9),
      R => '0'
    );
rx_scp_d_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[6]\,
      I1 => \word_aligned_data_r_reg_n_0_[7]\,
      I2 => \word_aligned_data_r_reg_n_0_[5]\,
      I3 => \word_aligned_data_r_reg_n_0_[4]\,
      O => \rx_scp_d_r0__0\
    );
\rx_scp_d_r0_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[13]\,
      I1 => \word_aligned_data_r_reg_n_0_[12]\,
      I2 => \word_aligned_data_r_reg_n_0_[14]\,
      I3 => \word_aligned_data_r_reg_n_0_[15]\,
      O => \rx_scp_d_r0_inferred__0/i__n_0\
    );
\rx_scp_d_r0_inferred__1/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      O => \rx_scp_d_r0_inferred__1/i__n_0\
    );
\rx_scp_d_r0_inferred__2/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[0]\,
      I1 => \word_aligned_data_r_reg_n_0_[2]\,
      I2 => \word_aligned_data_r_reg_n_0_[1]\,
      I3 => \word_aligned_data_r_reg_n_0_[3]\,
      O => \rx_scp_d_r0_inferred__2/i__n_0\
    );
\rx_scp_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \rx_scp_d_r0_inferred__2/i__n_0\,
      Q => rx_scp_d_r(0),
      R => '0'
    );
\rx_scp_d_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \rx_scp_d_r0__0\,
      Q => rx_scp_d_r(1),
      R => '0'
    );
\rx_scp_d_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \rx_scp_d_r0_inferred__0/i__n_0\,
      Q => rx_scp_d_r(3),
      R => '0'
    );
\rx_sp_d_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2004"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[2]\,
      I1 => \word_aligned_data_r_reg_n_0_[1]\,
      I2 => \word_aligned_data_r_reg_n_0_[3]\,
      I3 => \word_aligned_data_r_reg_n_0_[0]\,
      O => p_5_out(3)
    );
\rx_sp_d_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0420"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[4]\,
      I1 => \word_aligned_data_r_reg_n_0_[5]\,
      I2 => \word_aligned_data_r_reg_n_0_[6]\,
      I3 => \word_aligned_data_r_reg_n_0_[7]\,
      O => p_5_out(2)
    );
\rx_sp_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => p_5_out(3),
      Q => rx_sp_d_r(0),
      R => '0'
    );
\rx_sp_d_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => p_5_out(2),
      Q => rx_sp_d_r(1),
      R => '0'
    );
\rx_sp_d_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => prev_beat_sp_d_r08_out,
      Q => rx_sp_d_r(2),
      R => '0'
    );
\rx_sp_d_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => prev_beat_sp_d_r05_out,
      Q => rx_sp_d_r(3),
      R => '0'
    );
\rx_sp_neg_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => prev_beat_sp_d_r16_in,
      Q => rx_sp_neg_d_r(0),
      R => '0'
    );
\rx_sp_neg_d_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \prev_beat_sp_d_r1__0\,
      Q => rx_sp_neg_d_r(1),
      R => '0'
    );
rx_spa_d_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[1]\,
      I1 => \word_aligned_data_r_reg_n_0_[0]\,
      I2 => \word_aligned_data_r_reg_n_0_[2]\,
      I3 => \word_aligned_data_r_reg_n_0_[3]\,
      O => \rx_spa_d_r0__0\
    );
\rx_spa_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \rx_spa_d_r0__0\,
      Q => rx_spa_d_r(0),
      R => '0'
    );
\rx_spa_d_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \prev_beat_spa_d_r0__0\,
      Q => rx_spa_d_r(2),
      R => '0'
    );
rx_spa_neg_d_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[13]\,
      I1 => \word_aligned_data_r_reg_n_0_[12]\,
      I2 => \word_aligned_data_r_reg_n_0_[14]\,
      I3 => \word_aligned_data_r_reg_n_0_[15]\,
      O => rx_spa_neg_d_r0_n_0
    );
\rx_spa_neg_d_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      O => \rx_spa_neg_d_r0__0\
    );
\rx_spa_neg_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \rx_spa_neg_d_r0__0\,
      Q => rx_spa_neg_d_r(0),
      R => '0'
    );
\rx_spa_neg_d_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_spa_neg_d_r0_n_0,
      Q => rx_spa_neg_d_r(1),
      R => '0'
    );
rx_v_d_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[5]\,
      I1 => \word_aligned_data_r_reg_n_0_[6]\,
      I2 => \word_aligned_data_r_reg_n_0_[4]\,
      I3 => \word_aligned_data_r_reg_n_0_[7]\,
      O => rx_v_d_r0_n_0
    );
\rx_v_d_r0_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[3]\,
      I1 => \word_aligned_data_r_reg_n_0_[1]\,
      I2 => \word_aligned_data_r_reg_n_0_[0]\,
      I3 => \word_aligned_data_r_reg_n_0_[2]\,
      O => \rx_v_d_r0__0\
    );
\rx_v_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \rx_v_d_r0__0\,
      Q => rx_v_d_r(0),
      R => '0'
    );
\rx_v_d_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_v_d_r0_n_0,
      Q => rx_v_d_r(1),
      R => '0'
    );
\rx_v_d_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \prev_beat_v_d_r0__0\,
      Q => rx_v_d_r(2),
      R => '0'
    );
\rx_v_d_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => prev_beat_v_d_r0_n_0,
      Q => rx_v_d_r(3),
      R => '0'
    );
\word_aligned_control_bits_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => left_aligned_r_reg_2,
      Q => word_aligned_control_bits_r(0),
      R => '0'
    );
\word_aligned_control_bits_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => left_aligned_r_reg_1,
      Q => word_aligned_control_bits_r_reg,
      R => '0'
    );
\word_aligned_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => left_aligned_r_reg_4(7),
      Q => \word_aligned_data_r_reg_n_0_[0]\,
      R => '0'
    );
\word_aligned_data_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => left_aligned_r_reg_3(5),
      Q => p_0_in(1),
      R => '0'
    );
\word_aligned_data_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => left_aligned_r_reg_3(4),
      Q => p_0_in(0),
      R => '0'
    );
\word_aligned_data_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => left_aligned_r_reg_3(3),
      Q => \word_aligned_data_r_reg_n_0_[12]\,
      R => '0'
    );
\word_aligned_data_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => left_aligned_r_reg_3(2),
      Q => \word_aligned_data_r_reg_n_0_[13]\,
      R => '0'
    );
\word_aligned_data_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => left_aligned_r_reg_3(1),
      Q => \word_aligned_data_r_reg_n_0_[14]\,
      R => '0'
    );
\word_aligned_data_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => left_aligned_r_reg_3(0),
      Q => \word_aligned_data_r_reg_n_0_[15]\,
      R => '0'
    );
\word_aligned_data_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => left_aligned_r_reg_4(6),
      Q => \word_aligned_data_r_reg_n_0_[1]\,
      R => '0'
    );
\word_aligned_data_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => left_aligned_r_reg_4(5),
      Q => \word_aligned_data_r_reg_n_0_[2]\,
      R => '0'
    );
\word_aligned_data_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => left_aligned_r_reg_4(4),
      Q => \word_aligned_data_r_reg_n_0_[3]\,
      R => '0'
    );
\word_aligned_data_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => left_aligned_r_reg_4(3),
      Q => \word_aligned_data_r_reg_n_0_[4]\,
      R => '0'
    );
\word_aligned_data_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => left_aligned_r_reg_4(2),
      Q => \word_aligned_data_r_reg_n_0_[5]\,
      R => '0'
    );
\word_aligned_data_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => left_aligned_r_reg_4(1),
      Q => \word_aligned_data_r_reg_n_0_[6]\,
      R => '0'
    );
\word_aligned_data_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => left_aligned_r_reg_4(0),
      Q => \word_aligned_data_r_reg_n_0_[7]\,
      R => '0'
    );
\word_aligned_data_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => left_aligned_r_reg_3(7),
      Q => p_0_in(3),
      R => '0'
    );
\word_aligned_data_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => left_aligned_r_reg_3(6),
      Q => p_0_in(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_SYM_GEN is
  port (
    TXCHARISK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \TX_CHAR_IS_K_reg[0]_0\ : out STD_LOGIC;
    TXDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    GEN_PAD : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    gen_spa_data_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    TX_PE_DATA_V : in STD_LOGIC;
    gen_k_i : in STD_LOGIC;
    gen_cc_i : in STD_LOGIC;
    GEN_ECP : in STD_LOGIC;
    GEN_SCP : in STD_LOGIC;
    gen_a_i : in STD_LOGIC;
    ack_r : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_v_flop_0_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_r_flop_0_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_k_flop_0_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_SYM_GEN : entity is "aurora_8b10b_SYM_GEN";
end aurora_8b10b_aurora_8b10b_SYM_GEN;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_SYM_GEN is
  signal \TX_CHAR_IS_K[0]_i_1_n_0\ : STD_LOGIC;
  signal \TX_CHAR_IS_K[1]_i_1_n_0\ : STD_LOGIC;
  signal \^tx_char_is_k_reg[0]_0\ : STD_LOGIC;
  signal \TX_DATA[0]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[10]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[10]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[11]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[12]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[12]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[13]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[13]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[13]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA[13]_i_4_n_0\ : STD_LOGIC;
  signal \TX_DATA[14]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[14]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[14]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA[15]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[15]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[15]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA[15]_i_4_n_0\ : STD_LOGIC;
  signal \TX_DATA[15]_i_5_n_0\ : STD_LOGIC;
  signal \TX_DATA[15]_i_6_n_0\ : STD_LOGIC;
  signal \TX_DATA[1]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[2]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[2]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[3]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[4]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[4]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[5]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[5]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[6]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[6]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[6]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA[7]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[7]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA[7]_i_4_n_0\ : STD_LOGIC;
  signal \TX_DATA[8]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[9]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[9]_i_2_n_0\ : STD_LOGIC;
  signal TX_DATA_reg0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gen_a_r : STD_LOGIC;
  signal gen_cc_r : STD_LOGIC;
  signal gen_ecp_r : STD_LOGIC;
  signal gen_k_fsm_r : STD_LOGIC;
  signal \gen_k_r_reg_n_0_[1]\ : STD_LOGIC;
  signal gen_pad_r : STD_LOGIC;
  signal \gen_r_r_reg_n_0_[1]\ : STD_LOGIC;
  signal gen_scp_r : STD_LOGIC;
  signal \gen_sp_data_r_reg_n_0_[1]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[9]\ : STD_LOGIC;
  signal tx_pe_data_v_r : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \TX_CHAR_IS_K[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \TX_CHAR_IS_K[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \TX_DATA[12]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \TX_DATA[14]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \TX_DATA[15]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \TX_DATA[15]_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \TX_DATA[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \TX_DATA[4]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \TX_DATA[6]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \TX_DATA[6]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \TX_DATA[7]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \TX_DATA[9]_i_2\ : label is "soft_lutpair22";
begin
  \TX_CHAR_IS_K_reg[0]_0\ <= \^tx_char_is_k_reg[0]_0\;
\TX_CHAR_IS_K[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000023"
    )
        port map (
      I0 => gen_pad_r,
      I1 => \gen_sp_data_r_reg_n_0_[1]\,
      I2 => tx_pe_data_v_r,
      I3 => \^tx_char_is_k_reg[0]_0\,
      I4 => p_3_in,
      O => \TX_CHAR_IS_K[0]_i_1_n_0\
    );
\TX_CHAR_IS_K[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => tx_pe_data_v_r,
      I2 => p_1_in,
      I3 => p_2_in,
      O => \TX_CHAR_IS_K[1]_i_1_n_0\
    );
\TX_CHAR_IS_K_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \TX_CHAR_IS_K[0]_i_1_n_0\,
      Q => TXCHARISK(1),
      R => '0'
    );
\TX_CHAR_IS_K_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \TX_CHAR_IS_K[1]_i_1_n_0\,
      Q => TXCHARISK(0),
      R => '0'
    );
\TX_DATA[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAEFEAEAE"
    )
        port map (
      I0 => gen_scp_r,
      I1 => gen_cc_r,
      I2 => tx_pe_data_v_r,
      I3 => gen_pad_r,
      I4 => \tx_pe_data_r_reg_n_0_[15]\,
      I5 => gen_ecp_r,
      O => \TX_DATA[0]_i_1_n_0\
    );
\TX_DATA[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8B88"
    )
        port map (
      I0 => data0(2),
      I1 => tx_pe_data_v_r,
      I2 => p_0_in1_in,
      I3 => p_1_in,
      I4 => \TX_DATA[10]_i_2_n_0\,
      I5 => \TX_DATA[15]_i_3_n_0\,
      O => \TX_DATA[10]_i_1_n_0\
    );
\TX_DATA[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010101010100"
    )
        port map (
      I0 => p_2_in,
      I1 => p_0_in1_in,
      I2 => tx_pe_data_v_r,
      I3 => p_0_in,
      I4 => gen_a_r,
      I5 => p_0_in4_in,
      O => \TX_DATA[10]_i_2_n_0\
    );
\TX_DATA[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEEFEEEFFEEFF"
    )
        port map (
      I0 => gen_ecp_r,
      I1 => gen_scp_r,
      I2 => data0(3),
      I3 => gen_cc_r,
      I4 => gen_k_fsm_r,
      I5 => tx_pe_data_v_r,
      O => \TX_DATA[11]_i_1_n_0\
    );
\TX_DATA[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEAEA"
    )
        port map (
      I0 => \TX_DATA[15]_i_3_n_0\,
      I1 => data0(4),
      I2 => tx_pe_data_v_r,
      I3 => \TX_DATA[15]_i_4_n_0\,
      I4 => \TX_DATA[12]_i_2_n_0\,
      O => \TX_DATA[12]_i_1_n_0\
    );
\TX_DATA[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => gen_a_r,
      I2 => p_0_in,
      O => \TX_DATA[12]_i_2_n_0\
    );
\TX_DATA[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAAFEFFAAAA"
    )
        port map (
      I0 => \TX_DATA[13]_i_2_n_0\,
      I1 => p_1_in,
      I2 => p_2_in,
      I3 => p_0_in,
      I4 => \TX_DATA[13]_i_3_n_0\,
      I5 => \TX_DATA[13]_i_4_n_0\,
      O => \TX_DATA[13]_i_1_n_0\
    );
\TX_DATA[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FE00FE00FE"
    )
        port map (
      I0 => gen_cc_r,
      I1 => gen_k_fsm_r,
      I2 => gen_ecp_r,
      I3 => gen_scp_r,
      I4 => data0(5),
      I5 => tx_pe_data_v_r,
      O => \TX_DATA[13]_i_2_n_0\
    );
\TX_DATA[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => tx_pe_data_v_r,
      I1 => p_0_in1_in,
      I2 => gen_scp_r,
      O => \TX_DATA[13]_i_3_n_0\
    );
\TX_DATA[13]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gen_a_r,
      I1 => p_0_in4_in,
      O => \TX_DATA[13]_i_4_n_0\
    );
\TX_DATA[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFBAAFAAAABAAAA"
    )
        port map (
      I0 => \TX_DATA[14]_i_2_n_0\,
      I1 => p_1_in,
      I2 => tx_pe_data_v_r,
      I3 => gen_k_fsm_r,
      I4 => \TX_DATA[14]_i_3_n_0\,
      I5 => data0(6),
      O => \TX_DATA[14]_i_1_n_0\
    );
\TX_DATA[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFABAA"
    )
        port map (
      I0 => gen_cc_r,
      I1 => gen_k_fsm_r,
      I2 => tx_pe_data_v_r,
      I3 => p_0_in1_in,
      I4 => gen_scp_r,
      I5 => gen_ecp_r,
      O => \TX_DATA[14]_i_2_n_0\
    );
\TX_DATA[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF1"
    )
        port map (
      I0 => p_0_in,
      I1 => p_0_in4_in,
      I2 => p_2_in,
      I3 => gen_a_r,
      O => \TX_DATA[14]_i_3_n_0\
    );
\TX_DATA[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \TX_DATA[15]_i_3_n_0\,
      I1 => \TX_DATA[15]_i_4_n_0\,
      I2 => p_0_in,
      I3 => gen_a_r,
      I4 => p_0_in4_in,
      O => \TX_DATA[15]_i_1_n_0\
    );
\TX_DATA[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEEEEEE"
    )
        port map (
      I0 => \TX_DATA[15]_i_5_n_0\,
      I1 => \TX_DATA[15]_i_6_n_0\,
      I2 => gen_scp_r,
      I3 => tx_pe_data_v_r,
      I4 => data0(7),
      O => \TX_DATA[15]_i_2_n_0\
    );
\TX_DATA[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => gen_cc_r,
      I1 => gen_k_fsm_r,
      I2 => gen_scp_r,
      I3 => gen_ecp_r,
      O => \TX_DATA[15]_i_3_n_0\
    );
\TX_DATA[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_2_in,
      I1 => p_1_in,
      I2 => tx_pe_data_v_r,
      I3 => p_0_in1_in,
      O => \TX_DATA[15]_i_4_n_0\
    );
\TX_DATA[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => gen_ecp_r,
      I1 => gen_k_fsm_r,
      I2 => gen_cc_r,
      I3 => gen_scp_r,
      O => \TX_DATA[15]_i_5_n_0\
    );
\TX_DATA[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404044444044"
    )
        port map (
      I0 => p_1_in,
      I1 => \TX_DATA[13]_i_3_n_0\,
      I2 => p_2_in,
      I3 => p_0_in,
      I4 => p_0_in4_in,
      I5 => gen_a_r,
      O => \TX_DATA[15]_i_6_n_0\
    );
\TX_DATA[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2F2FFFFF2F20"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[14]\,
      I1 => gen_pad_r,
      I2 => tx_pe_data_v_r,
      I3 => gen_cc_r,
      I4 => \TX_DATA[9]_i_2_n_0\,
      I5 => \gen_sp_data_r_reg_n_0_[1]\,
      O => \TX_DATA[1]_i_1_n_0\
    );
\TX_DATA[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFAEAEAE"
    )
        port map (
      I0 => \TX_DATA[2]_i_2_n_0\,
      I1 => gen_ecp_r,
      I2 => gen_scp_r,
      I3 => gen_pad_r,
      I4 => tx_pe_data_v_r,
      O => \TX_DATA[2]_i_1_n_0\
    );
\TX_DATA[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCAACCFA"
    )
        port map (
      I0 => gen_cc_r,
      I1 => \tx_pe_data_r_reg_n_0_[13]\,
      I2 => \TX_DATA[6]_i_3_n_0\,
      I3 => tx_pe_data_v_r,
      I4 => \gen_sp_data_r_reg_n_0_[1]\,
      I5 => gen_scp_r,
      O => \TX_DATA[2]_i_2_n_0\
    );
\TX_DATA[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFCFFF5FFF5"
    )
        port map (
      I0 => gen_cc_r,
      I1 => \tx_pe_data_r_reg_n_0_[12]\,
      I2 => gen_ecp_r,
      I3 => gen_scp_r,
      I4 => gen_pad_r,
      I5 => tx_pe_data_v_r,
      O => \TX_DATA[3]_i_1_n_0\
    );
\TX_DATA[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF2FF22FF22"
    )
        port map (
      I0 => \TX_DATA[4]_i_2_n_0\,
      I1 => \TX_DATA[7]_i_3_n_0\,
      I2 => \tx_pe_data_r_reg_n_0_[11]\,
      I3 => \TX_DATA[6]_i_2_n_0\,
      I4 => gen_pad_r,
      I5 => tx_pe_data_v_r,
      O => \TX_DATA[4]_i_1_n_0\
    );
\TX_DATA[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_k_r_reg_n_0_[1]\,
      I1 => \gen_r_r_reg_n_0_[1]\,
      O => \TX_DATA[4]_i_2_n_0\
    );
\TX_DATA[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEFFEF"
    )
        port map (
      I0 => \TX_DATA[5]_i_2_n_0\,
      I1 => \TX_DATA[6]_i_2_n_0\,
      I2 => \gen_r_r_reg_n_0_[1]\,
      I3 => \gen_k_r_reg_n_0_[1]\,
      I4 => tx_pe_data_v_r,
      I5 => \gen_sp_data_r_reg_n_0_[1]\,
      O => \TX_DATA[5]_i_1_n_0\
    );
\TX_DATA[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"220F220F220F2200"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[10]\,
      I1 => gen_pad_r,
      I2 => \gen_sp_data_r_reg_n_0_[1]\,
      I3 => tx_pe_data_v_r,
      I4 => \^tx_char_is_k_reg[0]_0\,
      I5 => p_3_in,
      O => \TX_DATA[5]_i_2_n_0\
    );
\TX_DATA[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCCEEEECFCCFFFF"
    )
        port map (
      I0 => \gen_sp_data_r_reg_n_0_[1]\,
      I1 => \TX_DATA[6]_i_2_n_0\,
      I2 => gen_pad_r,
      I3 => \tx_pe_data_r_reg_n_0_[9]\,
      I4 => tx_pe_data_v_r,
      I5 => \TX_DATA[6]_i_3_n_0\,
      O => \TX_DATA[6]_i_1_n_0\
    );
\TX_DATA[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => tx_pe_data_v_r,
      I1 => gen_cc_r,
      I2 => gen_scp_r,
      I3 => gen_ecp_r,
      O => \TX_DATA[6]_i_2_n_0\
    );
\TX_DATA[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAFE"
    )
        port map (
      I0 => \^tx_char_is_k_reg[0]_0\,
      I1 => \gen_k_r_reg_n_0_[1]\,
      I2 => \gen_r_r_reg_n_0_[1]\,
      I3 => p_3_in,
      O => \TX_DATA[6]_i_3_n_0\
    );
\TX_DATA[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \TX_DATA[7]_i_3_n_0\,
      I1 => \gen_k_r_reg_n_0_[1]\,
      I2 => \gen_r_r_reg_n_0_[1]\,
      I3 => gen_ecp_r,
      I4 => gen_scp_r,
      I5 => gen_cc_r,
      O => TX_DATA_reg0
    );
\TX_DATA[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFAFEFEFFFA"
    )
        port map (
      I0 => \TX_DATA[7]_i_4_n_0\,
      I1 => \tx_pe_data_r_reg_n_0_[8]\,
      I2 => \TX_DATA[9]_i_2_n_0\,
      I3 => gen_cc_r,
      I4 => tx_pe_data_v_r,
      I5 => gen_pad_r,
      O => \TX_DATA[7]_i_2_n_0\
    );
\TX_DATA[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_3_in,
      I1 => \^tx_char_is_k_reg[0]_0\,
      I2 => tx_pe_data_v_r,
      I3 => \gen_sp_data_r_reg_n_0_[1]\,
      O => \TX_DATA[7]_i_3_n_0\
    );
\TX_DATA[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010001010101"
    )
        port map (
      I0 => \^tx_char_is_k_reg[0]_0\,
      I1 => \gen_sp_data_r_reg_n_0_[1]\,
      I2 => tx_pe_data_v_r,
      I3 => p_3_in,
      I4 => \gen_k_r_reg_n_0_[1]\,
      I5 => \gen_r_r_reg_n_0_[1]\,
      O => \TX_DATA[7]_i_4_n_0\
    );
\TX_DATA[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEEEEEE"
    )
        port map (
      I0 => gen_ecp_r,
      I1 => gen_cc_r,
      I2 => gen_k_fsm_r,
      I3 => tx_pe_data_v_r,
      I4 => data0(0),
      I5 => gen_scp_r,
      O => \TX_DATA[8]_i_1_n_0\
    );
\TX_DATA[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333333300002230"
    )
        port map (
      I0 => data0(1),
      I1 => \TX_DATA[9]_i_2_n_0\,
      I2 => p_0_in1_in,
      I3 => tx_pe_data_v_r,
      I4 => gen_k_fsm_r,
      I5 => gen_cc_r,
      O => \TX_DATA[9]_i_1_n_0\
    );
\TX_DATA[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gen_ecp_r,
      I1 => gen_scp_r,
      O => \TX_DATA[9]_i_2_n_0\
    );
\TX_DATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => TX_DATA_reg0,
      D => \TX_DATA[0]_i_1_n_0\,
      Q => TXDATA(8),
      R => '0'
    );
\TX_DATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \TX_DATA[15]_i_1_n_0\,
      D => \TX_DATA[10]_i_1_n_0\,
      Q => TXDATA(2),
      R => '0'
    );
\TX_DATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \TX_DATA[15]_i_1_n_0\,
      D => \TX_DATA[11]_i_1_n_0\,
      Q => TXDATA(3),
      R => '0'
    );
\TX_DATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \TX_DATA[15]_i_1_n_0\,
      D => \TX_DATA[12]_i_1_n_0\,
      Q => TXDATA(4),
      R => '0'
    );
\TX_DATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \TX_DATA[15]_i_1_n_0\,
      D => \TX_DATA[13]_i_1_n_0\,
      Q => TXDATA(5),
      R => '0'
    );
\TX_DATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \TX_DATA[15]_i_1_n_0\,
      D => \TX_DATA[14]_i_1_n_0\,
      Q => TXDATA(6),
      R => '0'
    );
\TX_DATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \TX_DATA[15]_i_1_n_0\,
      D => \TX_DATA[15]_i_2_n_0\,
      Q => TXDATA(7),
      R => '0'
    );
\TX_DATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => TX_DATA_reg0,
      D => \TX_DATA[1]_i_1_n_0\,
      Q => TXDATA(9),
      R => '0'
    );
\TX_DATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => TX_DATA_reg0,
      D => \TX_DATA[2]_i_1_n_0\,
      Q => TXDATA(10),
      R => '0'
    );
\TX_DATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => TX_DATA_reg0,
      D => \TX_DATA[3]_i_1_n_0\,
      Q => TXDATA(11),
      R => '0'
    );
\TX_DATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => TX_DATA_reg0,
      D => \TX_DATA[4]_i_1_n_0\,
      Q => TXDATA(12),
      R => '0'
    );
\TX_DATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => TX_DATA_reg0,
      D => \TX_DATA[5]_i_1_n_0\,
      Q => TXDATA(13),
      R => '0'
    );
\TX_DATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => TX_DATA_reg0,
      D => \TX_DATA[6]_i_1_n_0\,
      Q => TXDATA(14),
      R => '0'
    );
\TX_DATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => TX_DATA_reg0,
      D => \TX_DATA[7]_i_2_n_0\,
      Q => TXDATA(15),
      R => '0'
    );
\TX_DATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \TX_DATA[15]_i_1_n_0\,
      D => \TX_DATA[8]_i_1_n_0\,
      Q => TXDATA(0),
      R => '0'
    );
\TX_DATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \TX_DATA[15]_i_1_n_0\,
      D => \TX_DATA[9]_i_1_n_0\,
      Q => TXDATA(1),
      R => '0'
    );
gen_a_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gen_a_i,
      Q => gen_a_r,
      R => '0'
    );
gen_cc_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gen_cc_i,
      Q => gen_cc_r,
      R => '0'
    );
gen_ecp_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => GEN_ECP,
      Q => gen_ecp_r,
      R => '0'
    );
gen_k_fsm_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gen_k_i,
      Q => gen_k_fsm_r,
      R => '0'
    );
\gen_k_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gen_k_flop_0_i(1),
      Q => p_0_in4_in,
      R => '0'
    );
\gen_k_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gen_k_flop_0_i(0),
      Q => \gen_k_r_reg_n_0_[1]\,
      R => '0'
    );
gen_pad_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => GEN_PAD,
      Q => gen_pad_r,
      R => '0'
    );
\gen_r_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gen_r_flop_0_i(1),
      Q => p_0_in,
      R => '0'
    );
\gen_r_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gen_r_flop_0_i(0),
      Q => \gen_r_r_reg_n_0_[1]\,
      R => '0'
    );
gen_scp_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => GEN_SCP,
      Q => gen_scp_r,
      R => '0'
    );
\gen_sp_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => D(1),
      Q => p_0_in1_in,
      R => '0'
    );
\gen_sp_data_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => D(0),
      Q => \gen_sp_data_r_reg_n_0_[1]\,
      R => '0'
    );
\gen_spa_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gen_spa_data_i(0),
      Q => p_1_in,
      R => '0'
    );
\gen_spa_data_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => ack_r,
      Q => \^tx_char_is_k_reg[0]_0\,
      R => '0'
    );
\gen_v_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gen_v_flop_0_i(1),
      Q => p_2_in,
      R => '0'
    );
\gen_v_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gen_v_flop_0_i(0),
      Q => p_3_in,
      R => '0'
    );
\tx_pe_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => Q(15),
      Q => data0(7),
      R => '0'
    );
\tx_pe_data_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => Q(5),
      Q => \tx_pe_data_r_reg_n_0_[10]\,
      R => '0'
    );
\tx_pe_data_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => Q(4),
      Q => \tx_pe_data_r_reg_n_0_[11]\,
      R => '0'
    );
\tx_pe_data_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => Q(3),
      Q => \tx_pe_data_r_reg_n_0_[12]\,
      R => '0'
    );
\tx_pe_data_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => Q(2),
      Q => \tx_pe_data_r_reg_n_0_[13]\,
      R => '0'
    );
\tx_pe_data_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => Q(1),
      Q => \tx_pe_data_r_reg_n_0_[14]\,
      R => '0'
    );
\tx_pe_data_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => Q(0),
      Q => \tx_pe_data_r_reg_n_0_[15]\,
      R => '0'
    );
\tx_pe_data_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => Q(14),
      Q => data0(6),
      R => '0'
    );
\tx_pe_data_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => Q(13),
      Q => data0(5),
      R => '0'
    );
\tx_pe_data_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => Q(12),
      Q => data0(4),
      R => '0'
    );
\tx_pe_data_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => Q(11),
      Q => data0(3),
      R => '0'
    );
\tx_pe_data_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => Q(10),
      Q => data0(2),
      R => '0'
    );
\tx_pe_data_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => Q(9),
      Q => data0(1),
      R => '0'
    );
\tx_pe_data_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => Q(8),
      Q => data0(0),
      R => '0'
    );
\tx_pe_data_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => Q(7),
      Q => \tx_pe_data_r_reg_n_0_[8]\,
      R => '0'
    );
\tx_pe_data_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => Q(6),
      Q => \tx_pe_data_r_reg_n_0_[9]\,
      R => '0'
    );
tx_pe_data_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => TX_PE_DATA_V,
      Q => tx_pe_data_v_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_TX_LL_CONTROL is
  port (
    gen_cc_i : out STD_LOGIC;
    do_cc_r : out STD_LOGIC;
    GEN_ECP : out STD_LOGIC;
    GEN_SCP : out STD_LOGIC;
    idle_r_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    in_frame_r_reg : out STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    storage_pad_r0 : out STD_LOGIC;
    reset_i : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC;
    new_pkt_r_reg : in STD_LOGIC;
    s_axi_tx_tvalid : in STD_LOGIC;
    in_frame_r_reg_0 : in STD_LOGIC;
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 1 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_TX_LL_CONTROL : entity is "aurora_8b10b_TX_LL_CONTROL";
end aurora_8b10b_aurora_8b10b_TX_LL_CONTROL;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_TX_LL_CONTROL is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GEN_ECP0 : STD_LOGIC;
  signal GEN_SCP_i_1_n_0 : STD_LOGIC;
  signal TX_DST_RDY_N_i_2_n_0 : STD_LOGIC;
  signal TX_DST_RDY_N_i_3_n_0 : STD_LOGIC;
  signal data_eof_1_r : STD_LOGIC;
  signal data_eof_2_r : STD_LOGIC;
  signal data_eof_3_r : STD_LOGIC;
  signal data_r : STD_LOGIC;
  signal \^do_cc_r\ : STD_LOGIC;
  signal idle_r : STD_LOGIC;
  signal \^idle_r_reg_0\ : STD_LOGIC;
  signal next_data_c : STD_LOGIC;
  signal next_data_eof_1_c : STD_LOGIC;
  signal next_idle_c : STD_LOGIC;
  signal next_sof_data_eof_1_c : STD_LOGIC;
  signal sof_data_eof_1_r : STD_LOGIC;
  signal sof_data_eof_2_r : STD_LOGIC;
  signal sof_data_eof_3_r : STD_LOGIC;
  signal sof_r : STD_LOGIC;
  signal sof_r_i_1_n_0 : STD_LOGIC;
  signal storage_pad_r_i_2_n_0 : STD_LOGIC;
  signal tx_dst_rdy_n_c : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of GEN_ECP_i_1 : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of GEN_SCP_i_1 : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of TX_DST_RDY_N_i_2 : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of data_eof_1_r_i_1 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of data_r_i_1 : label is "soft_lutpair65";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gen_cc_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of gen_cc_flop_0_i : label is "FDR";
  attribute SOFT_HLUTNM of \in_frame_r_i_1__0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of s_axi_tx_tready_INST_0 : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of storage_pad_r_i_2 : label is "soft_lutpair68";
begin
  E(0) <= \^e\(0);
  do_cc_r <= \^do_cc_r\;
  idle_r_reg_0 <= \^idle_r_reg_0\;
GEN_ECP_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => sof_data_eof_3_r,
      I1 => data_eof_3_r,
      I2 => \^do_cc_r\,
      O => GEN_ECP0
    );
GEN_ECP_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => GEN_ECP0,
      Q => GEN_ECP,
      R => reset_i
    );
GEN_SCP_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \^do_cc_r\,
      I1 => sof_data_eof_1_r,
      I2 => sof_r,
      O => GEN_SCP_i_1_n_0
    );
GEN_SCP_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => GEN_SCP_i_1_n_0,
      Q => GEN_SCP,
      R => reset_i
    );
TX_DST_RDY_N_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000FEAA"
    )
        port map (
      I0 => next_sof_data_eof_1_c,
      I1 => data_r,
      I2 => sof_r,
      I3 => TX_DST_RDY_N_i_2_n_0,
      I4 => \^do_cc_r\,
      I5 => TX_DST_RDY_N_i_3_n_0,
      O => tx_dst_rdy_n_c
    );
TX_DST_RDY_N_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_tx_tlast,
      I1 => s_axi_tx_tvalid,
      I2 => \^idle_r_reg_0\,
      O => TX_DST_RDY_N_i_2_n_0
    );
TX_DST_RDY_N_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFEFEFEFE"
    )
        port map (
      I0 => Q,
      I1 => sof_data_eof_1_r,
      I2 => data_eof_1_r,
      I3 => data_eof_2_r,
      I4 => sof_data_eof_2_r,
      I5 => \^do_cc_r\,
      O => TX_DST_RDY_N_i_3_n_0
    );
TX_DST_RDY_N_reg: unisim.vcomponents.FDSE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => tx_dst_rdy_n_c,
      Q => \^idle_r_reg_0\,
      S => reset_i
    );
data_eof_1_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \^idle_r_reg_0\,
      I1 => s_axi_tx_tvalid,
      I2 => s_axi_tx_tlast,
      I3 => sof_r,
      I4 => data_r,
      O => next_data_eof_1_c
    );
data_eof_1_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \^e\(0),
      D => next_data_eof_1_c,
      Q => data_eof_1_r,
      R => reset_i
    );
data_eof_2_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \^e\(0),
      D => data_eof_1_r,
      Q => data_eof_2_r,
      R => reset_i
    );
data_eof_3_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \^e\(0),
      D => data_eof_2_r,
      Q => data_eof_3_r,
      R => reset_i
    );
data_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF00"
    )
        port map (
      I0 => \^idle_r_reg_0\,
      I1 => s_axi_tx_tvalid,
      I2 => s_axi_tx_tlast,
      I3 => sof_r,
      I4 => data_r,
      O => next_data_c
    );
data_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \^e\(0),
      D => next_data_c,
      Q => data_r,
      R => reset_i
    );
do_cc_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => Q,
      Q => \^do_cc_r\,
      R => '0'
    );
gen_cc_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \^do_cc_r\,
      Q => gen_cc_i,
      R => reset_i
    );
idle_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFBFBFBFB00"
    )
        port map (
      I0 => \^idle_r_reg_0\,
      I1 => s_axi_tx_tvalid,
      I2 => new_pkt_r_reg,
      I3 => data_eof_3_r,
      I4 => sof_data_eof_3_r,
      I5 => idle_r,
      O => next_idle_c
    );
idle_r_reg: unisim.vcomponents.FDSE
     port map (
      C => gtrxreset_o_reg,
      CE => \^e\(0),
      D => next_idle_c,
      Q => idle_r,
      S => reset_i
    );
\in_frame_r_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFDF0010"
    )
        port map (
      I0 => s_axi_tx_tlast,
      I1 => \^idle_r_reg_0\,
      I2 => s_axi_tx_tvalid,
      I3 => new_pkt_r_reg,
      I4 => in_frame_r_reg_0,
      O => in_frame_r_reg
    );
s_axi_tx_tready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^idle_r_reg_0\,
      O => s_axi_tx_tready
    );
sof_data_eof_1_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AAA8"
    )
        port map (
      I0 => s_axi_tx_tlast,
      I1 => idle_r,
      I2 => sof_data_eof_3_r,
      I3 => data_eof_3_r,
      I4 => new_pkt_r_reg,
      I5 => storage_pad_r_i_2_n_0,
      O => next_sof_data_eof_1_c
    );
sof_data_eof_1_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \^e\(0),
      D => next_sof_data_eof_1_c,
      Q => sof_data_eof_1_r,
      R => reset_i
    );
sof_data_eof_2_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \^e\(0),
      D => sof_data_eof_1_r,
      Q => sof_data_eof_2_r,
      R => reset_i
    );
sof_data_eof_3_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \^e\(0),
      D => sof_data_eof_2_r,
      Q => sof_data_eof_3_r,
      R => reset_i
    );
sof_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005554"
    )
        port map (
      I0 => s_axi_tx_tlast,
      I1 => idle_r,
      I2 => sof_data_eof_3_r,
      I3 => data_eof_3_r,
      I4 => new_pkt_r_reg,
      I5 => storage_pad_r_i_2_n_0,
      O => sof_r_i_1_n_0
    );
sof_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => \^e\(0),
      D => sof_r_i_1_n_0,
      Q => sof_r,
      R => reset_i
    );
storage_pad_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000450000000000"
    )
        port map (
      I0 => storage_pad_r_i_2_n_0,
      I1 => in_frame_r_reg_0,
      I2 => new_pkt_r_reg,
      I3 => s_axi_tx_tlast,
      I4 => s_axi_tx_tkeep(1),
      I5 => s_axi_tx_tkeep(0),
      O => storage_pad_r0
    );
storage_pad_r_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^idle_r_reg_0\,
      I1 => s_axi_tx_tvalid,
      O => storage_pad_r_i_2_n_0
    );
\storage_r[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^do_cc_r\,
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_TX_LL_DATAPATH is
  port (
    GEN_PAD : out STD_LOGIC;
    TX_PE_DATA_V : out STD_LOGIC;
    storage_v_r_reg_0 : out STD_LOGIC;
    \tx_pe_data_r_reg[0]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtrxreset_o_reg : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    storage_pad_r0 : in STD_LOGIC;
    reset_i : in STD_LOGIC;
    TX_DST_RDY_N_reg : in STD_LOGIC;
    new_pkt_r_reg : in STD_LOGIC;
    s_axi_tx_tvalid : in STD_LOGIC;
    tx_dst_rdy : in STD_LOGIC;
    do_cc_r : in STD_LOGIC;
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 15 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_TX_LL_DATAPATH : entity is "aurora_8b10b_TX_LL_DATAPATH";
end aurora_8b10b_aurora_8b10b_TX_LL_DATAPATH;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_TX_LL_DATAPATH is
  signal GEN_PAD0 : STD_LOGIC;
  signal TX_PE_DATA_V0 : STD_LOGIC;
  signal gen_pad_r : STD_LOGIC;
  signal in_frame_c : STD_LOGIC;
  signal storage_pad_r : STD_LOGIC;
  signal storage_r : STD_LOGIC_VECTOR ( 0 to 15 );
  signal storage_v_r : STD_LOGIC;
  signal \^storage_v_r_reg_0\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[9]\ : STD_LOGIC;
  signal tx_pe_data_v_r : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of GEN_PAD_i_1 : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of TX_PE_DATA_V_i_1 : label is "soft_lutpair69";
begin
  storage_v_r_reg_0 <= \^storage_v_r_reg_0\;
GEN_PAD_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => gen_pad_r,
      I1 => do_cc_r,
      O => GEN_PAD0
    );
GEN_PAD_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => GEN_PAD0,
      Q => GEN_PAD,
      R => '0'
    );
TX_PE_DATA_V_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tx_pe_data_v_r,
      I1 => do_cc_r,
      O => TX_PE_DATA_V0
    );
TX_PE_DATA_V_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => TX_PE_DATA_V0,
      Q => TX_PE_DATA_V,
      R => '0'
    );
\TX_PE_DATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[0]\,
      Q => \tx_pe_data_r_reg[0]_0\(15),
      R => '0'
    );
\TX_PE_DATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[10]\,
      Q => \tx_pe_data_r_reg[0]_0\(5),
      R => '0'
    );
\TX_PE_DATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[11]\,
      Q => \tx_pe_data_r_reg[0]_0\(4),
      R => '0'
    );
\TX_PE_DATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[12]\,
      Q => \tx_pe_data_r_reg[0]_0\(3),
      R => '0'
    );
\TX_PE_DATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[13]\,
      Q => \tx_pe_data_r_reg[0]_0\(2),
      R => '0'
    );
\TX_PE_DATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[14]\,
      Q => \tx_pe_data_r_reg[0]_0\(1),
      R => '0'
    );
\TX_PE_DATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[15]\,
      Q => \tx_pe_data_r_reg[0]_0\(0),
      R => '0'
    );
\TX_PE_DATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[1]\,
      Q => \tx_pe_data_r_reg[0]_0\(14),
      R => '0'
    );
\TX_PE_DATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[2]\,
      Q => \tx_pe_data_r_reg[0]_0\(13),
      R => '0'
    );
\TX_PE_DATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[3]\,
      Q => \tx_pe_data_r_reg[0]_0\(12),
      R => '0'
    );
\TX_PE_DATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[4]\,
      Q => \tx_pe_data_r_reg[0]_0\(11),
      R => '0'
    );
\TX_PE_DATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[5]\,
      Q => \tx_pe_data_r_reg[0]_0\(10),
      R => '0'
    );
\TX_PE_DATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[6]\,
      Q => \tx_pe_data_r_reg[0]_0\(9),
      R => '0'
    );
\TX_PE_DATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[7]\,
      Q => \tx_pe_data_r_reg[0]_0\(8),
      R => '0'
    );
\TX_PE_DATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[8]\,
      Q => \tx_pe_data_r_reg[0]_0\(7),
      R => '0'
    );
\TX_PE_DATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[9]\,
      Q => \tx_pe_data_r_reg[0]_0\(6),
      R => '0'
    );
gen_pad_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => storage_pad_r,
      Q => gen_pad_r,
      R => '0'
    );
in_frame_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => TX_DST_RDY_N_reg,
      Q => \^storage_v_r_reg_0\,
      R => reset_i
    );
storage_pad_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => storage_pad_r0,
      Q => storage_pad_r,
      R => '0'
    );
\storage_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => s_axi_tx_tdata(0),
      Q => storage_r(0),
      R => '0'
    );
\storage_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => s_axi_tx_tdata(10),
      Q => storage_r(10),
      R => '0'
    );
\storage_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => s_axi_tx_tdata(11),
      Q => storage_r(11),
      R => '0'
    );
\storage_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => s_axi_tx_tdata(12),
      Q => storage_r(12),
      R => '0'
    );
\storage_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => s_axi_tx_tdata(13),
      Q => storage_r(13),
      R => '0'
    );
\storage_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => s_axi_tx_tdata(14),
      Q => storage_r(14),
      R => '0'
    );
\storage_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => s_axi_tx_tdata(15),
      Q => storage_r(15),
      R => '0'
    );
\storage_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => s_axi_tx_tdata(1),
      Q => storage_r(1),
      R => '0'
    );
\storage_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => s_axi_tx_tdata(2),
      Q => storage_r(2),
      R => '0'
    );
\storage_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => s_axi_tx_tdata(3),
      Q => storage_r(3),
      R => '0'
    );
\storage_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => s_axi_tx_tdata(4),
      Q => storage_r(4),
      R => '0'
    );
\storage_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => s_axi_tx_tdata(5),
      Q => storage_r(5),
      R => '0'
    );
\storage_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => s_axi_tx_tdata(6),
      Q => storage_r(6),
      R => '0'
    );
\storage_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => s_axi_tx_tdata(7),
      Q => storage_r(7),
      R => '0'
    );
\storage_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => s_axi_tx_tdata(8),
      Q => storage_r(8),
      R => '0'
    );
\storage_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => s_axi_tx_tdata(9),
      Q => storage_r(9),
      R => '0'
    );
storage_v_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D0"
    )
        port map (
      I0 => new_pkt_r_reg,
      I1 => \^storage_v_r_reg_0\,
      I2 => s_axi_tx_tvalid,
      I3 => tx_dst_rdy,
      O => in_frame_c
    );
storage_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => in_frame_c,
      Q => storage_v_r,
      R => '0'
    );
\tx_pe_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => storage_r(0),
      Q => \tx_pe_data_r_reg_n_0_[0]\,
      R => '0'
    );
\tx_pe_data_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => storage_r(10),
      Q => \tx_pe_data_r_reg_n_0_[10]\,
      R => '0'
    );
\tx_pe_data_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => storage_r(11),
      Q => \tx_pe_data_r_reg_n_0_[11]\,
      R => '0'
    );
\tx_pe_data_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => storage_r(12),
      Q => \tx_pe_data_r_reg_n_0_[12]\,
      R => '0'
    );
\tx_pe_data_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => storage_r(13),
      Q => \tx_pe_data_r_reg_n_0_[13]\,
      R => '0'
    );
\tx_pe_data_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => storage_r(14),
      Q => \tx_pe_data_r_reg_n_0_[14]\,
      R => '0'
    );
\tx_pe_data_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => storage_r(15),
      Q => \tx_pe_data_r_reg_n_0_[15]\,
      R => '0'
    );
\tx_pe_data_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => storage_r(1),
      Q => \tx_pe_data_r_reg_n_0_[1]\,
      R => '0'
    );
\tx_pe_data_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => storage_r(2),
      Q => \tx_pe_data_r_reg_n_0_[2]\,
      R => '0'
    );
\tx_pe_data_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => storage_r(3),
      Q => \tx_pe_data_r_reg_n_0_[3]\,
      R => '0'
    );
\tx_pe_data_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => storage_r(4),
      Q => \tx_pe_data_r_reg_n_0_[4]\,
      R => '0'
    );
\tx_pe_data_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => storage_r(5),
      Q => \tx_pe_data_r_reg_n_0_[5]\,
      R => '0'
    );
\tx_pe_data_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => storage_r(6),
      Q => \tx_pe_data_r_reg_n_0_[6]\,
      R => '0'
    );
\tx_pe_data_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => storage_r(7),
      Q => \tx_pe_data_r_reg_n_0_[7]\,
      R => '0'
    );
\tx_pe_data_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => storage_r(8),
      Q => \tx_pe_data_r_reg_n_0_[8]\,
      R => '0'
    );
\tx_pe_data_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => storage_r(9),
      Q => \tx_pe_data_r_reg_n_0_[9]\,
      R => '0'
    );
tx_pe_data_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => E(0),
      D => storage_v_r,
      Q => tx_pe_data_v_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_cdc_sync is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt_reset : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_cdc_sync : entity is "aurora_8b10b_cdc_sync";
end aurora_8b10b_aurora_8b10b_cdc_sync;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_cdc_sync is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  D(0) <= s_level_out_d3;
  p_level_in_int <= gt_reset;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_cdc_sync_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_cdc_sync_0 : entity is "aurora_8b10b_cdc_sync";
end aurora_8b10b_aurora_8b10b_cdc_sync_0;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_cdc_sync_0 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  D(0) <= s_level_out_d3;
  p_level_in_int <= reset;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_cdc_sync_1 is
  port (
    in0 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_cdc_sync_1 : entity is "aurora_8b10b_cdc_sync";
end aurora_8b10b_aurora_8b10b_cdc_sync_1;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_cdc_sync_1 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  p_level_in_int <= in0;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_cdc_sync_2 is
  port (
    mmcm_lock_reclocked_reg : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cpllpd_quad0_wait_reg[95]\ : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mmcm_lock_count_reg[7]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_cdc_sync_2 : entity is "aurora_8b10b_cdc_sync";
end aurora_8b10b_aurora_8b10b_cdc_sync_2;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_cdc_sync_2 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  p_level_in_int <= \cpllpd_quad0_wait_reg[95]\;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
\mmcm_lock_count[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_level_out_d3,
      O => SR(0)
    );
mmcm_lock_reclocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => Q(1),
      I2 => \mmcm_lock_count_reg[7]\,
      I3 => Q(0),
      I4 => s_level_out_d3,
      O => mmcm_lock_reclocked_reg
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_cdc_sync_3 is
  port (
    reset_time_out_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cpllpd_quad0_wait_reg[95]\ : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reset_time_out : in STD_LOGIC;
    wait_time_done : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[1]\ : in STD_LOGIC;
    init_wait_done_reg : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    time_tlock_max_reg : in STD_LOGIC;
    pll_reset_asserted_reg : in STD_LOGIC;
    txresetdone_s3 : in STD_LOGIC;
    time_out_500us_reg : in STD_LOGIC;
    time_out_2ms_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_cdc_sync_3 : entity is "aurora_8b10b_cdc_sync";
end aurora_8b10b_aurora_8b10b_cdc_sync_3;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_cdc_sync_3 is
  signal \FSM_sequential_tx_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal reset_time_out_i_2_n_0 : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  p_level_in_int <= \cpllpd_quad0_wait_reg[95]\;
\FSM_sequential_tx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8BB0033B888"
    )
        port map (
      I0 => \FSM_sequential_tx_state_reg[3]_i_3_n_0\,
      I1 => \out\(0),
      I2 => wait_time_done,
      I3 => \FSM_sequential_tx_state_reg[1]\,
      I4 => \out\(3),
      I5 => init_wait_done_reg,
      O => E(0)
    );
\FSM_sequential_tx_state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA00BA00BAFFBA00"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => reset_time_out,
      I2 => time_tlock_max_reg,
      I3 => \out\(2),
      I4 => pll_reset_asserted_reg,
      I5 => s_level_out_d3,
      O => \FSM_sequential_tx_state[3]_i_7_n_0\
    );
\FSM_sequential_tx_state[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFFBAFFBAFFBA00"
    )
        port map (
      I0 => txresetdone_s3,
      I1 => reset_time_out,
      I2 => time_out_500us_reg,
      I3 => \out\(2),
      I4 => time_out_2ms_reg,
      I5 => s_level_out_d3,
      O => \FSM_sequential_tx_state[3]_i_8_n_0\
    );
\FSM_sequential_tx_state_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_tx_state[3]_i_7_n_0\,
      I1 => \FSM_sequential_tx_state[3]_i_8_n_0\,
      O => \FSM_sequential_tx_state_reg[3]_i_3_n_0\,
      S => \out\(1)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
reset_time_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFA3202020A3"
    )
        port map (
      I0 => reset_time_out_i_2_n_0,
      I1 => \out\(3),
      I2 => \out\(0),
      I3 => \out\(2),
      I4 => \out\(1),
      I5 => reset_time_out,
      O => reset_time_out_reg
    );
reset_time_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4FF0F0404FF0F"
    )
        port map (
      I0 => \out\(3),
      I1 => s_level_out_d3,
      I2 => \out\(2),
      I3 => mmcm_lock_reclocked,
      I4 => \out\(1),
      I5 => txresetdone_s3,
      O => reset_time_out_i_2_n_0
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_cdc_sync_4 is
  port (
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_cdc_sync_4 : entity is "aurora_8b10b_cdc_sync";
end aurora_8b10b_aurora_8b10b_cdc_sync_4;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_cdc_sync_4 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_cdc_sync_5 is
  port (
    \out\ : out STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_cdc_sync_5 : entity is "aurora_8b10b_cdc_sync";
end aurora_8b10b_aurora_8b10b_cdc_sync_5;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_cdc_sync_5 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_cdc_sync_6 is
  port (
    mmcm_lock_reclocked_reg : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    init_clk_in : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mmcm_lock_count_reg[7]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_cdc_sync_6 : entity is "aurora_8b10b_cdc_sync";
end aurora_8b10b_aurora_8b10b_cdc_sync_6;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_cdc_sync_6 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
\mmcm_lock_count[9]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_level_out_d3,
      O => SR(0)
    );
\mmcm_lock_reclocked_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => Q(1),
      I2 => \mmcm_lock_count_reg[7]\,
      I3 => Q(0),
      I4 => s_level_out_d3,
      O => mmcm_lock_reclocked_reg
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_cdc_sync_7 is
  port (
    reset_time_out_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cpllpd_quad0_wait_reg[95]\ : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    RXUSERRDY_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_rx_state_reg[3]\ : in STD_LOGIC;
    reset_time_out_reg_0 : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[1]\ : in STD_LOGIC;
    RXUSERRDY_reg_0 : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[2]\ : in STD_LOGIC;
    rxresetdone_s3_reg : in STD_LOGIC;
    time_out_2ms_reg : in STD_LOGIC;
    rxresetdone_s3 : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    rx_cdrlocked_reg : in STD_LOGIC;
    RXUSERRDY_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_cdc_sync_7 : entity is "aurora_8b10b_cdc_sync";
end aurora_8b10b_aurora_8b10b_cdc_sync_7;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_cdc_sync_7 is
  signal \FSM_sequential_rx_state[3]_i_5_n_0\ : STD_LOGIC;
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal reset_time_out_i_5_n_0 : STD_LOGIC;
  signal reset_time_out_i_6_n_0 : STD_LOGIC;
  signal reset_time_out_reg_i_3_n_0 : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  p_level_in_int <= \cpllpd_quad0_wait_reg[95]\;
\FSM_sequential_rx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FSM_sequential_rx_state_reg[1]\,
      I1 => RXUSERRDY_reg_0,
      I2 => \out\(3),
      I3 => \FSM_sequential_rx_state[3]_i_5_n_0\,
      I4 => \out\(0),
      I5 => \FSM_sequential_rx_state_reg[2]\,
      O => E(0)
    );
\FSM_sequential_rx_state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8BBBB"
    )
        port map (
      I0 => rxresetdone_s3_reg,
      I1 => \out\(2),
      I2 => time_out_2ms_reg,
      I3 => s_level_out_d3,
      I4 => \out\(1),
      O => \FSM_sequential_rx_state[3]_i_5_n_0\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
\reset_time_out_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => RXUSERRDY_reg,
      I1 => \out\(3),
      I2 => reset_time_out_reg_i_3_n_0,
      I3 => \FSM_sequential_rx_state_reg[3]\,
      I4 => reset_time_out_reg_0,
      O => reset_time_out_reg
    );
reset_time_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCFCFA0AFCFCF"
    )
        port map (
      I0 => rxresetdone_s3,
      I1 => rx_cdrlocked_reg,
      I2 => \out\(2),
      I3 => RXUSERRDY_reg_1,
      I4 => \out\(1),
      I5 => s_level_out_d3,
      O => reset_time_out_i_5_n_0
    );
reset_time_out_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => rxresetdone_s3,
      I1 => mmcm_lock_reclocked,
      I2 => \out\(2),
      I3 => s_level_out_d3,
      I4 => \out\(1),
      O => reset_time_out_i_6_n_0
    );
reset_time_out_reg_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => reset_time_out_i_5_n_0,
      I1 => reset_time_out_i_6_n_0,
      O => reset_time_out_reg_i_3_n_0,
      S => \out\(0)
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_cdc_sync_8 is
  port (
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_cdc_sync_8 : entity is "aurora_8b10b_cdc_sync";
end aurora_8b10b_aurora_8b10b_cdc_sync_8;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_cdc_sync_8 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_cdc_sync_9 is
  port (
    \out\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    in0 : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    rxpmaresetdone_sss : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_cdc_sync_9 : entity is "aurora_8b10b_cdc_sync";
end aurora_8b10b_aurora_8b10b_cdc_sync_9;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_cdc_sync_9 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
  p_level_in_int <= in0;
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rxpmaresetdone_sss,
      I1 => s_level_out_d3,
      O => \FSM_sequential_state_reg[0]\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized0\ is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt_reset_out : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized0\ : entity is "aurora_8b10b_cdc_sync";
end \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized0\;

architecture STRUCTURE of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized0\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  AS(0) <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => gt_reset_out,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized1\ is
  port (
    \out\ : out STD_LOGIC;
    link_reset_r : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized1\ : entity is "aurora_8b10b_cdc_sync";
end \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized1\;

architecture STRUCTURE of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized1\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => link_reset_r,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized10\ is
  port (
    rxpmaresetdone_i : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized10\ : entity is "aurora_8b10b_cdc_sync";
end \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized10\;

architecture STRUCTURE of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized10\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rxpmaresetdone_i,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized11\ is
  port (
    txpmaresetdone_i : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized11\ : entity is "aurora_8b10b_cdc_sync";
end \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized11\;

architecture STRUCTURE of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized11\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => txpmaresetdone_i,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized12\ is
  port (
    \out\ : out STD_LOGIC;
    run_phase_alignment_int_reg : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized12\ : entity is "aurora_8b10b_cdc_sync";
end \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized12\;

architecture STRUCTURE of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized12\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => run_phase_alignment_int_reg,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized13\ is
  port (
    \out\ : out STD_LOGIC;
    rx_fsm_reset_done_int : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized13\ : entity is "aurora_8b10b_cdc_sync";
end \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized13\;

architecture STRUCTURE of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized13\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_fsm_reset_done_int,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized14\ is
  port (
    \out\ : out STD_LOGIC;
    time_out_wait_bypass_reg : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized14\ : entity is "aurora_8b10b_cdc_sync";
end \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized14\;

architecture STRUCTURE of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized14\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => time_out_wait_bypass_reg,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized15\ is
  port (
    \out\ : out STD_LOGIC;
    rxfsm_rxresetdone_r : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized15\ : entity is "aurora_8b10b_cdc_sync";
end \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized15\;

architecture STRUCTURE of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized15\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rxfsm_rxresetdone_r,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized16\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    common_reset_i : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    drpclk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized16\ : entity is "aurora_8b10b_cdc_sync";
end \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized16\;

architecture STRUCTURE of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized16\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  SR(0) <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => common_reset_i,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized17\ is
  port (
    \out\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    init_clk_in : in STD_LOGIC;
    drpclk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized17\ : entity is "aurora_8b10b_cdc_sync";
end \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized17\;

architecture STRUCTURE of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized17\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => SR(0),
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized2\ is
  port (
    \out\ : out STD_LOGIC;
    tx_lock_comb_r : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized2\ : entity is "aurora_8b10b_cdc_sync";
end \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized2\;

architecture STRUCTURE of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized2\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => tx_lock_comb_r,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized3\ is
  port (
    \out\ : out STD_LOGIC;
    rx_cc_extend_r2 : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized3\ : entity is "aurora_8b10b_cdc_sync";
end \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized3\;

architecture STRUCTURE of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized3\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_cc_extend_r2,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized4\ is
  port (
    \out\ : out STD_LOGIC;
    GTRXRESET_OUT : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized4\ : entity is "aurora_8b10b_cdc_sync";
end \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized4\;

architecture STRUCTURE of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized4\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => GTRXRESET_OUT,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized5\ is
  port (
    \out\ : out STD_LOGIC;
    run_phase_alignment_int : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized5\ : entity is "aurora_8b10b_cdc_sync";
end \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized5\;

architecture STRUCTURE of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized5\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => run_phase_alignment_int,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized6\ is
  port (
    \out\ : out STD_LOGIC;
    gt_txresetdone_r2_reg : out STD_LOGIC;
    tx_fsm_reset_done_int : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized6\ : entity is "aurora_8b10b_cdc_sync";
end \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized6\;

architecture STRUCTURE of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized6\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
gt_txresetdone_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_level_out_d3,
      O => gt_txresetdone_r2_reg
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => tx_fsm_reset_done_int,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized7\ is
  port (
    \out\ : out STD_LOGIC;
    time_out_wait_bypass : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized7\ : entity is "aurora_8b10b_cdc_sync";
end \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized7\;

architecture STRUCTURE of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized7\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => time_out_wait_bypass,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized8\ is
  port (
    \out\ : out STD_LOGIC;
    txfsm_txresetdone_r : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized8\ : entity is "aurora_8b10b_cdc_sync";
end \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized8\;

architecture STRUCTURE of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized8\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => txfsm_txresetdone_r,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized9\ is
  port (
    \out\ : out STD_LOGIC;
    gtrxreset_i : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized9\ : entity is "aurora_8b10b_cdc_sync";
end \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized9\;

architecture STRUCTURE of \aurora_8b10b_aurora_8b10b_cdc_sync__parameterized9\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_i,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_gt_common_wrapper is
  port (
    quad1_common_lock_out : out STD_LOGIC;
    gt0_pll0outclk_out : out STD_LOGIC;
    gt0_pll0outrefclk_out : out STD_LOGIC;
    gt0_pll0refclklost_out : out STD_LOGIC;
    gt0_pll1outclk_out : out STD_LOGIC;
    gt0_pll1outrefclk_out : out STD_LOGIC;
    pll_not_locked_out : out STD_LOGIC;
    gt_refclk1_n : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    common_reset_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_gt_common_wrapper : entity is "aurora_8b10b_gt_common_wrapper";
end aurora_8b10b_aurora_8b10b_gt_common_wrapper;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_gt_common_wrapper is
  signal PLL0RESET0 : STD_LOGIC;
  signal cpllpd_ovrd_quad0_i : STD_LOGIC;
  signal \cpllpd_quad0_wait_reg[31]_srl32_n_1\ : STD_LOGIC;
  signal \cpllpd_quad0_wait_reg[63]_srl32_n_1\ : STD_LOGIC;
  signal \cpllpd_quad0_wait_reg[94]_srl31_n_0\ : STD_LOGIC;
  signal cpllreset_ovrd_quad0_i : STD_LOGIC;
  signal \cpllreset_quad0_wait_reg[126]_srl31_n_0\ : STD_LOGIC;
  signal \cpllreset_quad0_wait_reg[31]_srl32_n_1\ : STD_LOGIC;
  signal \cpllreset_quad0_wait_reg[63]_srl32_n_1\ : STD_LOGIC;
  signal \cpllreset_quad0_wait_reg[95]_srl32_n_1\ : STD_LOGIC;
  signal gtpe2_common_0_i_n_7 : STD_LOGIC;
  signal \^quad1_common_lock_out\ : STD_LOGIC;
  signal \NLW_cpllpd_quad0_wait_reg[31]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllpd_quad0_wait_reg[63]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllpd_quad0_wait_reg[94]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_quad0_wait_reg[126]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_quad0_wait_reg[31]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_quad0_wait_reg[63]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_quad0_wait_reg[95]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal NLW_gtpe2_common_0_i_DRPRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_0_i_PLL0FBCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_0_i_PLL1FBCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_0_i_PLL1REFCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_0_i_REFCLKOUTMONITOR0_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_0_i_REFCLKOUTMONITOR1_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_0_i_DMONITOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_gtpe2_common_0_i_DRPDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtpe2_common_0_i_PMARSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \cpllpd_quad0_wait_reg[31]_srl32\ : label is "\inst/gt_common_support/cpllpd_quad0_wait_reg ";
  attribute srl_name : string;
  attribute srl_name of \cpllpd_quad0_wait_reg[31]_srl32\ : label is "\inst/gt_common_support/cpllpd_quad0_wait_reg[31]_srl32 ";
  attribute srl_bus_name of \cpllpd_quad0_wait_reg[63]_srl32\ : label is "\inst/gt_common_support/cpllpd_quad0_wait_reg ";
  attribute srl_name of \cpllpd_quad0_wait_reg[63]_srl32\ : label is "\inst/gt_common_support/cpllpd_quad0_wait_reg[63]_srl32 ";
  attribute srl_bus_name of \cpllpd_quad0_wait_reg[94]_srl31\ : label is "\inst/gt_common_support/cpllpd_quad0_wait_reg ";
  attribute srl_name of \cpllpd_quad0_wait_reg[94]_srl31\ : label is "\inst/gt_common_support/cpllpd_quad0_wait_reg[94]_srl31 ";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \cpllpd_quad0_wait_reg[95]\ : label is "no";
  attribute srl_bus_name of \cpllreset_quad0_wait_reg[126]_srl31\ : label is "\inst/gt_common_support/cpllreset_quad0_wait_reg ";
  attribute srl_name of \cpllreset_quad0_wait_reg[126]_srl31\ : label is "\inst/gt_common_support/cpllreset_quad0_wait_reg[126]_srl31 ";
  attribute equivalent_register_removal of \cpllreset_quad0_wait_reg[127]\ : label is "no";
  attribute srl_bus_name of \cpllreset_quad0_wait_reg[31]_srl32\ : label is "\inst/gt_common_support/cpllreset_quad0_wait_reg ";
  attribute srl_name of \cpllreset_quad0_wait_reg[31]_srl32\ : label is "\inst/gt_common_support/cpllreset_quad0_wait_reg[31]_srl32 ";
  attribute srl_bus_name of \cpllreset_quad0_wait_reg[63]_srl32\ : label is "\inst/gt_common_support/cpllreset_quad0_wait_reg ";
  attribute srl_name of \cpllreset_quad0_wait_reg[63]_srl32\ : label is "\inst/gt_common_support/cpllreset_quad0_wait_reg[63]_srl32 ";
  attribute srl_bus_name of \cpllreset_quad0_wait_reg[95]_srl32\ : label is "\inst/gt_common_support/cpllreset_quad0_wait_reg ";
  attribute srl_name of \cpllreset_quad0_wait_reg[95]_srl32\ : label is "\inst/gt_common_support/cpllreset_quad0_wait_reg[95]_srl32 ";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gtpe2_common_0_i : label is "PRIMITIVE";
begin
  quad1_common_lock_out <= \^quad1_common_lock_out\;
\cpllpd_quad0_wait_reg[31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"FFFFFFFF"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gt_refclk1_n,
      D => '0',
      Q => \NLW_cpllpd_quad0_wait_reg[31]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllpd_quad0_wait_reg[31]_srl32_n_1\
    );
\cpllpd_quad0_wait_reg[63]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"FFFFFFFF"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gt_refclk1_n,
      D => \cpllpd_quad0_wait_reg[31]_srl32_n_1\,
      Q => \NLW_cpllpd_quad0_wait_reg[63]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllpd_quad0_wait_reg[63]_srl32_n_1\
    );
\cpllpd_quad0_wait_reg[94]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => '1',
      CLK => gt_refclk1_n,
      D => \cpllpd_quad0_wait_reg[63]_srl32_n_1\,
      Q => \cpllpd_quad0_wait_reg[94]_srl31_n_0\,
      Q31 => \NLW_cpllpd_quad0_wait_reg[94]_srl31_Q31_UNCONNECTED\
    );
\cpllpd_quad0_wait_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gt_refclk1_n,
      CE => '1',
      D => \cpllpd_quad0_wait_reg[94]_srl31_n_0\,
      Q => cpllpd_ovrd_quad0_i,
      R => '0'
    );
\cpllreset_quad0_wait_reg[126]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => '1',
      CLK => gt_refclk1_n,
      D => \cpllreset_quad0_wait_reg[95]_srl32_n_1\,
      Q => \cpllreset_quad0_wait_reg[126]_srl31_n_0\,
      Q31 => \NLW_cpllreset_quad0_wait_reg[126]_srl31_Q31_UNCONNECTED\
    );
\cpllreset_quad0_wait_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt_refclk1_n,
      CE => '1',
      D => \cpllreset_quad0_wait_reg[126]_srl31_n_0\,
      Q => cpllreset_ovrd_quad0_i,
      R => '0'
    );
\cpllreset_quad0_wait_reg[31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"000000FF"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gt_refclk1_n,
      D => '0',
      Q => \NLW_cpllreset_quad0_wait_reg[31]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllreset_quad0_wait_reg[31]_srl32_n_1\
    );
\cpllreset_quad0_wait_reg[63]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gt_refclk1_n,
      D => \cpllreset_quad0_wait_reg[31]_srl32_n_1\,
      Q => \NLW_cpllreset_quad0_wait_reg[63]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllreset_quad0_wait_reg[63]_srl32_n_1\
    );
\cpllreset_quad0_wait_reg[95]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gt_refclk1_n,
      D => \cpllreset_quad0_wait_reg[63]_srl32_n_1\,
      Q => \NLW_cpllreset_quad0_wait_reg[95]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllreset_quad0_wait_reg[95]_srl32_n_1\
    );
gtpe2_common_0_i: unisim.vcomponents.GTPE2_COMMON
    generic map(
      BIAS_CFG => X"0000000000050001",
      COMMON_CFG => X"00000000",
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK0_INVERTED => '0',
      IS_GTGREFCLK1_INVERTED => '0',
      IS_PLL0LOCKDETCLK_INVERTED => '0',
      IS_PLL1LOCKDETCLK_INVERTED => '0',
      PLL0_CFG => X"01F03DC",
      PLL0_DMON_CFG => '0',
      PLL0_FBDIV => 4,
      PLL0_FBDIV_45 => 5,
      PLL0_INIT_CFG => X"00001E",
      PLL0_LOCK_CFG => X"1E8",
      PLL0_REFCLK_DIV => 1,
      PLL1_CFG => X"01F03DC",
      PLL1_DMON_CFG => '0',
      PLL1_FBDIV => 4,
      PLL1_FBDIV_45 => 5,
      PLL1_INIT_CFG => X"00001E",
      PLL1_LOCK_CFG => X"1E8",
      PLL1_REFCLK_DIV => 1,
      PLL_CLKOUT_CFG => B"00000000",
      RSVD_ATTR0 => X"0000",
      RSVD_ATTR1 => X"0000",
      SIM_PLL0REFCLK_SEL => B"001",
      SIM_PLL1REFCLK_SEL => B"001",
      SIM_RESET_SPEEDUP => "FALSE",
      SIM_VERSION => "2.0"
    )
        port map (
      BGBYPASSB => '1',
      BGMONITORENB => '1',
      BGPDB => '1',
      BGRCALOVRD(4 downto 0) => B"11111",
      BGRCALOVRDENB => '1',
      DMONITOROUT(7 downto 0) => NLW_gtpe2_common_0_i_DMONITOROUT_UNCONNECTED(7 downto 0),
      DRPADDR(7 downto 0) => B"00000000",
      DRPCLK => '0',
      DRPDI(15 downto 0) => B"0000000000000000",
      DRPDO(15 downto 0) => NLW_gtpe2_common_0_i_DRPDO_UNCONNECTED(15 downto 0),
      DRPEN => '0',
      DRPRDY => NLW_gtpe2_common_0_i_DRPRDY_UNCONNECTED,
      DRPWE => '0',
      GTEASTREFCLK0 => '0',
      GTEASTREFCLK1 => '0',
      GTGREFCLK0 => '0',
      GTGREFCLK1 => '0',
      GTREFCLK0 => gt_refclk1_n,
      GTREFCLK1 => '0',
      GTWESTREFCLK0 => '0',
      GTWESTREFCLK1 => '0',
      PLL0FBCLKLOST => NLW_gtpe2_common_0_i_PLL0FBCLKLOST_UNCONNECTED,
      PLL0LOCK => \^quad1_common_lock_out\,
      PLL0LOCKDETCLK => init_clk_in,
      PLL0LOCKEN => '1',
      PLL0OUTCLK => gt0_pll0outclk_out,
      PLL0OUTREFCLK => gt0_pll0outrefclk_out,
      PLL0PD => cpllpd_ovrd_quad0_i,
      PLL0REFCLKLOST => gt0_pll0refclklost_out,
      PLL0REFCLKSEL(2 downto 0) => B"001",
      PLL0RESET => PLL0RESET0,
      PLL1FBCLKLOST => NLW_gtpe2_common_0_i_PLL1FBCLKLOST_UNCONNECTED,
      PLL1LOCK => gtpe2_common_0_i_n_7,
      PLL1LOCKDETCLK => '0',
      PLL1LOCKEN => '1',
      PLL1OUTCLK => gt0_pll1outclk_out,
      PLL1OUTREFCLK => gt0_pll1outrefclk_out,
      PLL1PD => '1',
      PLL1REFCLKLOST => NLW_gtpe2_common_0_i_PLL1REFCLKLOST_UNCONNECTED,
      PLL1REFCLKSEL(2 downto 0) => B"001",
      PLL1RESET => cpllreset_ovrd_quad0_i,
      PLLRSVD1(15 downto 0) => B"0000000000000000",
      PLLRSVD2(4 downto 0) => B"00000",
      PMARSVD(7 downto 0) => B"00000000",
      PMARSVDOUT(15 downto 0) => NLW_gtpe2_common_0_i_PMARSVDOUT_UNCONNECTED(15 downto 0),
      RCALENB => '1',
      REFCLKOUTMONITOR0 => NLW_gtpe2_common_0_i_REFCLKOUTMONITOR0_UNCONNECTED,
      REFCLKOUTMONITOR1 => NLW_gtpe2_common_0_i_REFCLKOUTMONITOR1_UNCONNECTED
    );
gtpe2_common_0_i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpllreset_ovrd_quad0_i,
      I1 => common_reset_i,
      O => PLL0RESET0
    );
pll_not_locked_out_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^quad1_common_lock_out\,
      O => pll_not_locked_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_GLOBAL_LOGIC is
  port (
    soft_err : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_v_r_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_a_i : out STD_LOGIC;
    \gen_k_r_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_r_r_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    channel_up : out STD_LOGIC;
    lane_up_r : out STD_LOGIC;
    GTRXRESET_OUT : out STD_LOGIC;
    \^hard_err\ : out STD_LOGIC;
    START_RX : out STD_LOGIC;
    RESET0 : out STD_LOGIC;
    reset_i : out STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    \soft_err_r_reg[0]\ : in STD_LOGIC;
    SYSTEM_RESET_reg : in STD_LOGIC;
    lane_up : in STD_LOGIC;
    GOT_V : in STD_LOGIC;
    HARD_ERR : in STD_LOGIC;
    power_down : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_GLOBAL_LOGIC : entity is "aurora_8b10b_GLOBAL_LOGIC";
end aurora_8b10b_aurora_8b10b_GLOBAL_LOGIC;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_GLOBAL_LOGIC is
  signal gen_ver_i : STD_LOGIC;
  signal reset_channel_i : STD_LOGIC;
  signal txver_count_r0 : STD_LOGIC;
  signal wait_for_lane_up_r0 : STD_LOGIC;
begin
channel_err_detect_i: entity work.aurora_8b10b_aurora_8b10b_CHANNEL_ERR_DETECT
     port map (
      HARD_ERR => HARD_ERR,
      RESET0 => RESET0,
      SYSTEM_RESET_reg => SYSTEM_RESET_reg,
      gtrxreset_o_reg => gtrxreset_o_reg,
      \^hard_err\ => \^hard_err\,
      lane_up => lane_up,
      lane_up_r => lane_up_r,
      power_down => power_down,
      reset_channel_i => reset_channel_i,
      soft_err => soft_err,
      \soft_err_r_reg[0]\ => \soft_err_r_reg[0]\,
      wait_for_lane_up_r0 => wait_for_lane_up_r0
    );
channel_init_sm_i: entity work.aurora_8b10b_aurora_8b10b_CHANNEL_INIT_SM
     port map (
      GOT_V => GOT_V,
      GTRXRESET_OUT => GTRXRESET_OUT,
      SR(0) => SR(0),
      START_RX => START_RX,
      SYSTEM_RESET_reg => SYSTEM_RESET_reg,
      channel_up => channel_up,
      gen_ver_i => gen_ver_i,
      gtrxreset_o_reg => gtrxreset_o_reg,
      reset_channel_i => reset_channel_i,
      reset_i => reset_i,
      txver_count_r0 => txver_count_r0,
      wait_for_lane_up_r0 => wait_for_lane_up_r0
    );
idle_and_ver_gen_i: entity work.aurora_8b10b_aurora_8b10b_IDLE_AND_VER_GEN
     port map (
      SYSTEM_RESET_reg => SYSTEM_RESET_reg,
      gen_a_i => gen_a_i,
      \gen_k_r_reg[0]\(1 downto 0) => \gen_k_r_reg[0]\(1 downto 0),
      \gen_r_r_reg[0]\(1 downto 0) => \gen_r_r_reg[0]\(1 downto 0),
      \gen_v_r_reg[0]\(1 downto 0) => \gen_v_r_reg[0]\(1 downto 0),
      gen_ver_i => gen_ver_i,
      gtrxreset_o_reg => gtrxreset_o_reg,
      txver_count_r0 => txver_count_r0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_RESET_LOGIC is
  port (
    link_reset_r : out STD_LOGIC;
    sys_reset_out : out STD_LOGIC;
    new_pkt_r : out STD_LOGIC;
    in0 : in STD_LOGIC;
    link_reset_out : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    \cpllpd_quad0_wait_reg[95]\ : in STD_LOGIC;
    s_level_out_d3_reg : in STD_LOGIC;
    rxfsm_rxresetdone_r3_reg : in STD_LOGIC;
    channel_up : in STD_LOGIC;
    new_pkt_r_reg : in STD_LOGIC;
    tx_dst_rdy : in STD_LOGIC;
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_RESET_LOGIC : entity is "aurora_8b10b_RESET_LOGIC";
end aurora_8b10b_aurora_8b10b_RESET_LOGIC;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_RESET_LOGIC is
  signal SYSTEM_RESET0_n_0 : STD_LOGIC;
  signal gt_rxresetdone_r : STD_LOGIC;
  signal gt_rxresetdone_r2 : STD_LOGIC;
  signal gt_rxresetdone_r3 : STD_LOGIC;
  signal gt_txresetdone_r : STD_LOGIC;
  signal gt_txresetdone_r2 : STD_LOGIC;
  signal gt_txresetdone_r3 : STD_LOGIC;
  signal \^link_reset_r\ : STD_LOGIC;
  signal link_reset_sync : STD_LOGIC;
  signal \^sys_reset_out\ : STD_LOGIC;
  signal tx_lock_comb_r : STD_LOGIC;
  signal tx_lock_sync : STD_LOGIC;
begin
  link_reset_r <= \^link_reset_r\;
  sys_reset_out <= \^sys_reset_out\;
SYSTEM_RESET0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => in0,
      I1 => link_reset_sync,
      I2 => tx_lock_sync,
      I3 => gt_rxresetdone_r3,
      I4 => gt_txresetdone_r3,
      O => SYSTEM_RESET0_n_0
    );
SYSTEM_RESET_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => SYSTEM_RESET0_n_0,
      Q => \^sys_reset_out\,
      R => '0'
    );
gt_rxresetdone_r2_reg: unisim.vcomponents.FDCE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      CLR => rxfsm_rxresetdone_r3_reg,
      D => gt_rxresetdone_r,
      Q => gt_rxresetdone_r2
    );
gt_rxresetdone_r3_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gt_rxresetdone_r2,
      Q => gt_rxresetdone_r3,
      R => '0'
    );
gt_rxresetdone_r_reg: unisim.vcomponents.FDCE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      CLR => rxfsm_rxresetdone_r3_reg,
      D => '1',
      Q => gt_rxresetdone_r
    );
gt_txresetdone_r2_reg: unisim.vcomponents.FDCE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      CLR => s_level_out_d3_reg,
      D => gt_txresetdone_r,
      Q => gt_txresetdone_r2
    );
gt_txresetdone_r3_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gt_txresetdone_r2,
      Q => gt_txresetdone_r3,
      R => '0'
    );
gt_txresetdone_r_reg: unisim.vcomponents.FDCE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      CLR => s_level_out_d3_reg,
      D => '1',
      Q => gt_txresetdone_r
    );
link_reset_cdc_sync: entity work.\aurora_8b10b_aurora_8b10b_cdc_sync__parameterized1\
     port map (
      gtrxreset_o_reg => gtrxreset_o_reg,
      init_clk_in => init_clk_in,
      link_reset_r => \^link_reset_r\,
      \out\ => link_reset_sync
    );
link_reset_comb_r_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => link_reset_out,
      Q => \^link_reset_r\,
      R => '0'
    );
new_pkt_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000404040444040"
    )
        port map (
      I0 => \^sys_reset_out\,
      I1 => channel_up,
      I2 => new_pkt_r_reg,
      I3 => tx_dst_rdy,
      I4 => s_axi_tx_tvalid,
      I5 => s_axi_tx_tlast,
      O => new_pkt_r
    );
tx_lock_cdc_sync: entity work.\aurora_8b10b_aurora_8b10b_cdc_sync__parameterized2\
     port map (
      gtrxreset_o_reg => gtrxreset_o_reg,
      init_clk_in => init_clk_in,
      \out\ => tx_lock_sync,
      tx_lock_comb_r => tx_lock_comb_r
    );
tx_lock_comb_r_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => \cpllpd_quad0_wait_reg[95]\,
      Q => tx_lock_comb_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_RX_LL is
  port (
    frame_err : out STD_LOGIC;
    m_axi_rx_tvalid : out STD_LOGIC;
    in_frame_r : out STD_LOGIC;
    storage_v_r : out STD_LOGIC;
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 15 );
    m_axi_rx_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rx_tlast : out STD_LOGIC;
    RX_ECP_reg : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    RX_PAD : in STD_LOGIC;
    RX_PE_DATA_V_reg : in STD_LOGIC;
    in_frame_r_reg : in STD_LOGIC;
    rx_scp_i : in STD_LOGIC;
    rx_ecp_i : in STD_LOGIC;
    rx_pe_data_v_i : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    START_RX : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_RX_LL : entity is "aurora_8b10b_RX_LL";
end aurora_8b10b_aurora_8b10b_RX_LL;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_RX_LL is
begin
rx_ll_pdu_datapath_i: entity work.aurora_8b10b_aurora_8b10b_RX_LL_PDU_DATAPATH
     port map (
      D(15 downto 0) => D(15 downto 0),
      FRAME_ERR_reg_0 => in_frame_r,
      RX_ECP_reg => RX_ECP_reg,
      RX_PAD => RX_PAD,
      RX_PE_DATA_V_reg => RX_PE_DATA_V_reg,
      START_RX => START_RX,
      frame_err => frame_err,
      gtrxreset_o_reg => gtrxreset_o_reg,
      in_frame_r_reg_0 => in_frame_r_reg,
      m_axi_rx_tdata(0 to 15) => m_axi_rx_tdata(0 to 15),
      m_axi_rx_tkeep(0) => m_axi_rx_tkeep(0),
      m_axi_rx_tlast => m_axi_rx_tlast,
      m_axi_rx_tvalid => m_axi_rx_tvalid,
      rx_ecp_i => rx_ecp_i,
      rx_pe_data_v_i => rx_pe_data_v_i,
      rx_scp_i => rx_scp_i,
      storage_v_r => storage_v_r
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_SUPPORT_RESET_LOGIC is
  port (
    gt_reset_out : out STD_LOGIC;
    in0 : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    CLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_level_out_d3_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_SUPPORT_RESET_LOGIC : entity is "aurora_8b10b_SUPPORT_RESET_LOGIC";
end aurora_8b10b_aurora_8b10b_SUPPORT_RESET_LOGIC;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_SUPPORT_RESET_LOGIC is
  signal debounce_gt_rst_r : STD_LOGIC_VECTOR ( 0 to 3 );
  attribute async_reg : string;
  attribute async_reg of debounce_gt_rst_r : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of debounce_gt_rst_r : signal is "{no}";
  signal \^gt_reset_out\ : STD_LOGIC;
  signal gt_rst_r0_n_0 : STD_LOGIC;
  signal gt_rst_sync : STD_LOGIC;
  signal reset_debounce_r : STD_LOGIC_VECTOR ( 0 to 3 );
  signal reset_debounce_r20_n_0 : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \debounce_gt_rst_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \debounce_gt_rst_r_reg[0]\ : label is "yes";
  attribute shift_extract of \debounce_gt_rst_r_reg[0]\ : label is "{no}";
  attribute ASYNC_REG_boolean of \debounce_gt_rst_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \debounce_gt_rst_r_reg[1]\ : label is "yes";
  attribute shift_extract of \debounce_gt_rst_r_reg[1]\ : label is "{no}";
  attribute ASYNC_REG_boolean of \debounce_gt_rst_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \debounce_gt_rst_r_reg[2]\ : label is "yes";
  attribute shift_extract of \debounce_gt_rst_r_reg[2]\ : label is "{no}";
  attribute ASYNC_REG_boolean of \debounce_gt_rst_r_reg[3]\ : label is std.standard.true;
  attribute KEEP of \debounce_gt_rst_r_reg[3]\ : label is "yes";
  attribute shift_extract of \debounce_gt_rst_r_reg[3]\ : label is "{no}";
begin
  gt_reset_out <= \^gt_reset_out\;
\debounce_gt_rst_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3_reg(0),
      Q => debounce_gt_rst_r(0),
      R => '0'
    );
\debounce_gt_rst_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => debounce_gt_rst_r(0),
      Q => debounce_gt_rst_r(1),
      R => '0'
    );
\debounce_gt_rst_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => debounce_gt_rst_r(1),
      Q => debounce_gt_rst_r(2),
      R => '0'
    );
\debounce_gt_rst_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => debounce_gt_rst_r(2),
      Q => debounce_gt_rst_r(3),
      R => '0'
    );
gt_rst_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => debounce_gt_rst_r(2),
      I1 => debounce_gt_rst_r(3),
      I2 => debounce_gt_rst_r(1),
      I3 => debounce_gt_rst_r(0),
      O => gt_rst_r0_n_0
    );
gt_rst_r_cdc_sync: entity work.\aurora_8b10b_aurora_8b10b_cdc_sync__parameterized0\
     port map (
      AS(0) => gt_rst_sync,
      CLK => CLK,
      gt_reset_out => \^gt_reset_out\,
      init_clk_in => init_clk_in
    );
gt_rst_r_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => gt_rst_r0_n_0,
      Q => \^gt_reset_out\,
      R => '0'
    );
reset_debounce_r20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => reset_debounce_r(2),
      I1 => reset_debounce_r(3),
      I2 => reset_debounce_r(1),
      I3 => reset_debounce_r(0),
      O => reset_debounce_r20_n_0
    );
reset_debounce_r2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_debounce_r20_n_0,
      Q => in0,
      R => '0'
    );
\reset_debounce_r_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      PRE => gt_rst_sync,
      Q => reset_debounce_r(0)
    );
\reset_debounce_r_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_debounce_r(0),
      PRE => gt_rst_sync,
      Q => reset_debounce_r(1)
    );
\reset_debounce_r_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_debounce_r(1),
      PRE => gt_rst_sync,
      Q => reset_debounce_r(2)
    );
\reset_debounce_r_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_debounce_r(2),
      PRE => gt_rst_sync,
      Q => reset_debounce_r(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_TX_LL is
  port (
    gen_cc_i : out STD_LOGIC;
    GEN_PAD : out STD_LOGIC;
    TX_PE_DATA_V : out STD_LOGIC;
    GEN_ECP : out STD_LOGIC;
    GEN_SCP : out STD_LOGIC;
    tx_dst_rdy : out STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    \tx_pe_data_r_reg[0]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_i : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC;
    new_pkt_r_reg : in STD_LOGIC;
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 1 );
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 15 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_TX_LL : entity is "aurora_8b10b_TX_LL";
end aurora_8b10b_aurora_8b10b_TX_LL;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_TX_LL is
  signal do_cc_r : STD_LOGIC;
  signal pdu_ok_c : STD_LOGIC;
  signal storage_pad_r0 : STD_LOGIC;
  signal \^tx_dst_rdy\ : STD_LOGIC;
  signal tx_ll_control_i_n_6 : STD_LOGIC;
  signal tx_ll_datapath_i_n_2 : STD_LOGIC;
begin
  tx_dst_rdy <= \^tx_dst_rdy\;
tx_ll_control_i: entity work.aurora_8b10b_aurora_8b10b_TX_LL_CONTROL
     port map (
      E(0) => pdu_ok_c,
      GEN_ECP => GEN_ECP,
      GEN_SCP => GEN_SCP,
      Q => Q,
      do_cc_r => do_cc_r,
      gen_cc_i => gen_cc_i,
      gtrxreset_o_reg => gtrxreset_o_reg,
      idle_r_reg_0 => \^tx_dst_rdy\,
      in_frame_r_reg => tx_ll_control_i_n_6,
      in_frame_r_reg_0 => tx_ll_datapath_i_n_2,
      new_pkt_r_reg => new_pkt_r_reg,
      reset_i => reset_i,
      s_axi_tx_tkeep(0 to 1) => s_axi_tx_tkeep(0 to 1),
      s_axi_tx_tlast => s_axi_tx_tlast,
      s_axi_tx_tready => s_axi_tx_tready,
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      storage_pad_r0 => storage_pad_r0
    );
tx_ll_datapath_i: entity work.aurora_8b10b_aurora_8b10b_TX_LL_DATAPATH
     port map (
      E(0) => pdu_ok_c,
      GEN_PAD => GEN_PAD,
      TX_DST_RDY_N_reg => tx_ll_control_i_n_6,
      TX_PE_DATA_V => TX_PE_DATA_V,
      do_cc_r => do_cc_r,
      gtrxreset_o_reg => gtrxreset_o_reg,
      new_pkt_r_reg => new_pkt_r_reg,
      reset_i => reset_i,
      s_axi_tx_tdata(0 to 15) => s_axi_tx_tdata(0 to 15),
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      storage_pad_r0 => storage_pad_r0,
      storage_v_r_reg_0 => tx_ll_datapath_i_n_2,
      tx_dst_rdy => \^tx_dst_rdy\,
      \tx_pe_data_r_reg[0]_0\(15 downto 0) => \tx_pe_data_r_reg[0]\(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_gtrxreset_seq is
  port (
    gtrxreset_out : out STD_LOGIC;
    drp_op_done : out STD_LOGIC;
    DRPADDR : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \out\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    drpen_i : out STD_LOGIC;
    drpwe_i : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    in0 : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    common_reset_i : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    gtrxreset_o_reg_0 : in STD_LOGIC;
    drpen_in : in STD_LOGIC;
    drpwe_in : in STD_LOGIC;
    drpdo_out : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_gtrxreset_seq : entity is "aurora_8b10b_gtrxreset_seq";
end aurora_8b10b_aurora_8b10b_gtrxreset_seq;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_gtrxreset_seq is
  signal DRP_OP_DONE_i_1_n_0 : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^drp_op_done\ : STD_LOGIC;
  signal flag_i_1_n_0 : STD_LOGIC;
  signal flag_reg_n_0 : STD_LOGIC;
  signal gtrxreset_f : STD_LOGIC;
  signal \gtrxreset_i__0\ : STD_LOGIC;
  signal gtrxreset_s : STD_LOGIC;
  signal gtrxreset_ss : STD_LOGIC;
  signal \next_rd_data__0\ : STD_LOGIC;
  signal original_rd_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \original_rd_data0__0\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \out\ : signal is "yes";
  signal \rd_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[9]_i_1_n_0\ : STD_LOGIC;
  signal rst_ss : STD_LOGIC;
  signal rxpmaresetdone_cdc_sync_n_1 : STD_LOGIC;
  signal rxpmaresetdone_ss : STD_LOGIC;
  signal rxpmaresetdone_sss : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of gtpe2_i_i_20 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of gtpe2_i_i_21 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of gtpe2_i_i_22 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of gtpe2_i_i_24 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of gtpe2_i_i_25 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of gtpe2_i_i_26 : label is "soft_lutpair33";
begin
  drp_op_done <= \^drp_op_done\;
  \out\(2 downto 0) <= \^out\(2 downto 0);
DRP_OP_DONE_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => gtrxreset_o_reg_0,
      I1 => \^out\(0),
      I2 => \^out\(2),
      I3 => \^out\(1),
      I4 => \^drp_op_done\,
      O => DRP_OP_DONE_i_1_n_0
    );
DRP_OP_DONE_reg: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => '1',
      CLR => gtrxreset_f,
      D => DRP_OP_DONE_i_1_n_0,
      Q => \^drp_op_done\
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040EBE87070EBE8"
    )
        port map (
      I0 => gtrxreset_o_reg_0,
      I1 => \^out\(1),
      I2 => \^out\(2),
      I3 => gtrxreset_ss,
      I4 => \^out\(0),
      I5 => rxpmaresetdone_cdc_sync_n_1,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FFF0F40F040F0"
    )
        port map (
      I0 => rxpmaresetdone_ss,
      I1 => rxpmaresetdone_sss,
      I2 => \^out\(0),
      I3 => \^out\(2),
      I4 => gtrxreset_o_reg_0,
      I5 => \^out\(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FC0"
    )
        port map (
      I0 => gtrxreset_o_reg_0,
      I1 => \^out\(1),
      I2 => \^out\(0),
      I3 => \^out\(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \^out\(0),
      R => rst_ss
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \^out\(1),
      R => rst_ss
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \^out\(2),
      R => rst_ss
    );
flag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3EFA"
    )
        port map (
      I0 => flag_reg_n_0,
      I1 => \^out\(1),
      I2 => \^out\(2),
      I3 => \^out\(0),
      O => flag_i_1_n_0
    );
flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => flag_i_1_n_0,
      Q => flag_reg_n_0,
      R => '0'
    );
gtpe2_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B88B8B8"
    )
        port map (
      I0 => drpen_in,
      I1 => \^drp_op_done\,
      I2 => \^out\(0),
      I3 => \^out\(1),
      I4 => \^out\(2),
      O => drpen_i
    );
gtpe2_i_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^drp_op_done\,
      I1 => drpaddr_in(6),
      O => DRPADDR(6)
    );
gtpe2_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B8B888"
    )
        port map (
      I0 => drpwe_in,
      I1 => \^drp_op_done\,
      I2 => \^out\(1),
      I3 => \^out\(2),
      I4 => \^out\(0),
      O => drpwe_i
    );
gtpe2_i_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^drp_op_done\,
      I1 => drpaddr_in(5),
      O => DRPADDR(5)
    );
gtpe2_i_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^drp_op_done\,
      I1 => drpaddr_in(4),
      O => DRPADDR(4)
    );
gtpe2_i_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^drp_op_done\,
      I1 => drpaddr_in(3),
      O => DRPADDR(3)
    );
gtpe2_i_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^drp_op_done\,
      I1 => drpaddr_in(2),
      O => DRPADDR(2)
    );
gtpe2_i_i_25: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^drp_op_done\,
      I1 => drpaddr_in(1),
      O => DRPADDR(1)
    );
gtpe2_i_i_26: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^drp_op_done\,
      I1 => drpaddr_in(0),
      O => DRPADDR(0)
    );
gtrxreset_i: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7366"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(2),
      I2 => gtrxreset_ss,
      I3 => \^out\(0),
      O => \gtrxreset_i__0\
    );
gtrxreset_in_cdc_sync: entity work.\aurora_8b10b_aurora_8b10b_cdc_sync__parameterized17\
     port map (
      SR(0) => SR(0),
      drpclk_in => drpclk_in,
      init_clk_in => init_clk_in,
      \out\ => gtrxreset_f
    );
gtrxreset_o_reg: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => '1',
      D => \gtrxreset_i__0\,
      Q => gtrxreset_out,
      R => rst_ss
    );
gtrxreset_s_reg: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => '1',
      D => gtrxreset_f,
      Q => gtrxreset_s,
      R => rst_ss
    );
gtrxreset_ss_reg: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => '1',
      D => gtrxreset_s,
      Q => gtrxreset_ss,
      R => rst_ss
    );
next_rd_data: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(2),
      I2 => \^out\(1),
      I3 => gtrxreset_o_reg_0,
      O => \next_rd_data__0\
    );
original_rd_data0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => flag_reg_n_0,
      I1 => \^out\(2),
      I2 => \^out\(1),
      I3 => \^out\(0),
      I4 => gtrxreset_o_reg_0,
      O => \original_rd_data0__0\
    );
\original_rd_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \original_rd_data0__0\,
      D => drpdo_out(0),
      Q => original_rd_data(0),
      R => '0'
    );
\original_rd_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \original_rd_data0__0\,
      D => drpdo_out(10),
      Q => original_rd_data(10),
      R => '0'
    );
\original_rd_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \original_rd_data0__0\,
      D => drpdo_out(11),
      Q => original_rd_data(11),
      R => '0'
    );
\original_rd_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \original_rd_data0__0\,
      D => drpdo_out(12),
      Q => original_rd_data(12),
      R => '0'
    );
\original_rd_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \original_rd_data0__0\,
      D => drpdo_out(13),
      Q => original_rd_data(13),
      R => '0'
    );
\original_rd_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \original_rd_data0__0\,
      D => drpdo_out(14),
      Q => original_rd_data(14),
      R => '0'
    );
\original_rd_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \original_rd_data0__0\,
      D => drpdo_out(15),
      Q => original_rd_data(15),
      R => '0'
    );
\original_rd_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \original_rd_data0__0\,
      D => drpdo_out(1),
      Q => original_rd_data(1),
      R => '0'
    );
\original_rd_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \original_rd_data0__0\,
      D => drpdo_out(2),
      Q => original_rd_data(2),
      R => '0'
    );
\original_rd_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \original_rd_data0__0\,
      D => drpdo_out(3),
      Q => original_rd_data(3),
      R => '0'
    );
\original_rd_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \original_rd_data0__0\,
      D => drpdo_out(4),
      Q => original_rd_data(4),
      R => '0'
    );
\original_rd_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \original_rd_data0__0\,
      D => drpdo_out(5),
      Q => original_rd_data(5),
      R => '0'
    );
\original_rd_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \original_rd_data0__0\,
      D => drpdo_out(6),
      Q => original_rd_data(6),
      R => '0'
    );
\original_rd_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \original_rd_data0__0\,
      D => drpdo_out(7),
      Q => original_rd_data(7),
      R => '0'
    );
\original_rd_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \original_rd_data0__0\,
      D => drpdo_out(8),
      Q => original_rd_data(8),
      R => '0'
    );
\original_rd_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \original_rd_data0__0\,
      D => drpdo_out(9),
      Q => original_rd_data(9),
      R => '0'
    );
\rd_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => drpdo_out(0),
      I1 => original_rd_data(0),
      I2 => gtrxreset_o_reg_0,
      I3 => flag_reg_n_0,
      O => \rd_data[0]_i_1_n_0\
    );
\rd_data[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => drpdo_out(10),
      I1 => original_rd_data(10),
      I2 => gtrxreset_o_reg_0,
      I3 => flag_reg_n_0,
      O => \rd_data[10]_i_1_n_0\
    );
\rd_data[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => drpdo_out(11),
      I1 => original_rd_data(11),
      I2 => gtrxreset_o_reg_0,
      I3 => flag_reg_n_0,
      O => \rd_data[11]_i_1_n_0\
    );
\rd_data[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => drpdo_out(12),
      I1 => original_rd_data(12),
      I2 => gtrxreset_o_reg_0,
      I3 => flag_reg_n_0,
      O => \rd_data[12]_i_1_n_0\
    );
\rd_data[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => drpdo_out(13),
      I1 => original_rd_data(13),
      I2 => gtrxreset_o_reg_0,
      I3 => flag_reg_n_0,
      O => \rd_data[13]_i_1_n_0\
    );
\rd_data[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => drpdo_out(14),
      I1 => original_rd_data(14),
      I2 => gtrxreset_o_reg_0,
      I3 => flag_reg_n_0,
      O => \rd_data[14]_i_1_n_0\
    );
\rd_data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => drpdo_out(15),
      I1 => original_rd_data(15),
      I2 => gtrxreset_o_reg_0,
      I3 => flag_reg_n_0,
      O => \rd_data[15]_i_1_n_0\
    );
\rd_data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => drpdo_out(1),
      I1 => original_rd_data(1),
      I2 => gtrxreset_o_reg_0,
      I3 => flag_reg_n_0,
      O => \rd_data[1]_i_1_n_0\
    );
\rd_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => drpdo_out(2),
      I1 => original_rd_data(2),
      I2 => gtrxreset_o_reg_0,
      I3 => flag_reg_n_0,
      O => \rd_data[2]_i_1_n_0\
    );
\rd_data[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => drpdo_out(3),
      I1 => original_rd_data(3),
      I2 => gtrxreset_o_reg_0,
      I3 => flag_reg_n_0,
      O => \rd_data[3]_i_1_n_0\
    );
\rd_data[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => drpdo_out(4),
      I1 => original_rd_data(4),
      I2 => gtrxreset_o_reg_0,
      I3 => flag_reg_n_0,
      O => \rd_data[4]_i_1_n_0\
    );
\rd_data[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => drpdo_out(5),
      I1 => original_rd_data(5),
      I2 => gtrxreset_o_reg_0,
      I3 => flag_reg_n_0,
      O => \rd_data[5]_i_1_n_0\
    );
\rd_data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => drpdo_out(6),
      I1 => original_rd_data(6),
      I2 => gtrxreset_o_reg_0,
      I3 => flag_reg_n_0,
      O => \rd_data[6]_i_1_n_0\
    );
\rd_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => drpdo_out(7),
      I1 => original_rd_data(7),
      I2 => gtrxreset_o_reg_0,
      I3 => flag_reg_n_0,
      O => \rd_data[7]_i_1_n_0\
    );
\rd_data[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => drpdo_out(8),
      I1 => original_rd_data(8),
      I2 => gtrxreset_o_reg_0,
      I3 => flag_reg_n_0,
      O => \rd_data[8]_i_1_n_0\
    );
\rd_data[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => drpdo_out(9),
      I1 => original_rd_data(9),
      I2 => gtrxreset_o_reg_0,
      I3 => flag_reg_n_0,
      O => \rd_data[9]_i_1_n_0\
    );
\rd_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \next_rd_data__0\,
      D => \rd_data[0]_i_1_n_0\,
      Q => Q(0),
      R => rst_ss
    );
\rd_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \next_rd_data__0\,
      D => \rd_data[10]_i_1_n_0\,
      Q => Q(10),
      R => rst_ss
    );
\rd_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \next_rd_data__0\,
      D => \rd_data[11]_i_1_n_0\,
      Q => Q(11),
      R => rst_ss
    );
\rd_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \next_rd_data__0\,
      D => \rd_data[12]_i_1_n_0\,
      Q => Q(12),
      R => rst_ss
    );
\rd_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \next_rd_data__0\,
      D => \rd_data[13]_i_1_n_0\,
      Q => Q(13),
      R => rst_ss
    );
\rd_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \next_rd_data__0\,
      D => \rd_data[14]_i_1_n_0\,
      Q => Q(14),
      R => rst_ss
    );
\rd_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \next_rd_data__0\,
      D => \rd_data[15]_i_1_n_0\,
      Q => Q(15),
      R => rst_ss
    );
\rd_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \next_rd_data__0\,
      D => \rd_data[1]_i_1_n_0\,
      Q => Q(1),
      R => rst_ss
    );
\rd_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \next_rd_data__0\,
      D => \rd_data[2]_i_1_n_0\,
      Q => Q(2),
      R => rst_ss
    );
\rd_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \next_rd_data__0\,
      D => \rd_data[3]_i_1_n_0\,
      Q => Q(3),
      R => rst_ss
    );
\rd_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \next_rd_data__0\,
      D => \rd_data[4]_i_1_n_0\,
      Q => Q(4),
      R => rst_ss
    );
\rd_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \next_rd_data__0\,
      D => \rd_data[5]_i_1_n_0\,
      Q => Q(5),
      R => rst_ss
    );
\rd_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \next_rd_data__0\,
      D => \rd_data[6]_i_1_n_0\,
      Q => Q(6),
      R => rst_ss
    );
\rd_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \next_rd_data__0\,
      D => \rd_data[7]_i_1_n_0\,
      Q => Q(7),
      R => rst_ss
    );
\rd_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \next_rd_data__0\,
      D => \rd_data[8]_i_1_n_0\,
      Q => Q(8),
      R => rst_ss
    );
\rd_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => \next_rd_data__0\,
      D => \rd_data[9]_i_1_n_0\,
      Q => Q(9),
      R => rst_ss
    );
rst_cdc_sync: entity work.\aurora_8b10b_aurora_8b10b_cdc_sync__parameterized16\
     port map (
      SR(0) => rst_ss,
      common_reset_i => common_reset_i,
      drpclk_in => drpclk_in,
      init_clk_in => init_clk_in
    );
rxpmaresetdone_cdc_sync: entity work.aurora_8b10b_aurora_8b10b_cdc_sync_9
     port map (
      \FSM_sequential_state_reg[0]\ => rxpmaresetdone_cdc_sync_n_1,
      drpclk_in => drpclk_in,
      in0 => in0,
      \out\ => rxpmaresetdone_ss,
      rxpmaresetdone_sss => rxpmaresetdone_sss
    );
rxpmaresetdone_sss_reg: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => '1',
      D => rxpmaresetdone_ss,
      Q => rxpmaresetdone_sss,
      R => rst_ss
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_hotplug is
  port (
    link_reset_out : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_hotplug : entity is "aurora_8b10b_hotplug";
end aurora_8b10b_aurora_8b10b_hotplug;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_hotplug is
  signal cc_sync : STD_LOGIC;
  signal \count_for_reset_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[0]_i_5_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[12]_i_2_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[12]_i_3_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[12]_i_4_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[12]_i_5_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[16]_i_2_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[16]_i_3_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[16]_i_4_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[16]_i_5_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[20]_i_2_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[20]_i_3_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[4]_i_3_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[4]_i_4_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[4]_i_5_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[8]_i_3_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[8]_i_4_n_0\ : STD_LOGIC;
  signal \count_for_reset_r[8]_i_5_n_0\ : STD_LOGIC;
  signal count_for_reset_r_reg : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \count_for_reset_r_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_for_reset_r_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_for_reset_r_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_for_reset_r_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_for_reset_r_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_for_reset_r_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_for_reset_r_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_for_reset_r_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_for_reset_r_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_for_reset_r_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_for_reset_r_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_for_reset_r_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_for_reset_r_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_for_reset_r_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_for_reset_r_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_for_reset_r_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_for_reset_r_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_for_reset_r_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_for_reset_r_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_for_reset_r_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_for_reset_r_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_for_reset_r_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_for_reset_r_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_for_reset_r_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_for_reset_r_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_for_reset_r_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_for_reset_r_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_for_reset_r_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_for_reset_r_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_for_reset_r_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_for_reset_r_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_for_reset_r_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_for_reset_r_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_for_reset_r_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_for_reset_r_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_for_reset_r_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_for_reset_r_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_for_reset_r_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_for_reset_r_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_for_reset_r_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_for_reset_r_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_for_reset_r_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_for_reset_r_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal link_reset_0 : STD_LOGIC;
  signal link_reset_0_i_1_n_0 : STD_LOGIC;
  signal link_reset_0_i_2_n_0 : STD_LOGIC;
  signal link_reset_0_i_3_n_0 : STD_LOGIC;
  signal link_reset_0_i_4_n_0 : STD_LOGIC;
  signal link_reset_0_i_5_n_0 : STD_LOGIC;
  signal link_reset_0_i_6_n_0 : STD_LOGIC;
  signal rx_cc_extend_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_cc_extend_r2 : STD_LOGIC;
  signal rx_cc_extend_r2_i_1_n_0 : STD_LOGIC;
  signal rx_cc_extend_r2_i_2_n_0 : STD_LOGIC;
  signal \NLW_count_for_reset_r_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_for_reset_r_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
\count_for_reset_r[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(3),
      O => \count_for_reset_r[0]_i_2_n_0\
    );
\count_for_reset_r[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(2),
      O => \count_for_reset_r[0]_i_3_n_0\
    );
\count_for_reset_r[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(1),
      O => \count_for_reset_r[0]_i_4_n_0\
    );
\count_for_reset_r[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_for_reset_r_reg(0),
      O => \count_for_reset_r[0]_i_5_n_0\
    );
\count_for_reset_r[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(15),
      O => \count_for_reset_r[12]_i_2_n_0\
    );
\count_for_reset_r[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(14),
      O => \count_for_reset_r[12]_i_3_n_0\
    );
\count_for_reset_r[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(13),
      O => \count_for_reset_r[12]_i_4_n_0\
    );
\count_for_reset_r[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(12),
      O => \count_for_reset_r[12]_i_5_n_0\
    );
\count_for_reset_r[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(19),
      O => \count_for_reset_r[16]_i_2_n_0\
    );
\count_for_reset_r[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(18),
      O => \count_for_reset_r[16]_i_3_n_0\
    );
\count_for_reset_r[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(17),
      O => \count_for_reset_r[16]_i_4_n_0\
    );
\count_for_reset_r[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(16),
      O => \count_for_reset_r[16]_i_5_n_0\
    );
\count_for_reset_r[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(21),
      O => \count_for_reset_r[20]_i_2_n_0\
    );
\count_for_reset_r[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(20),
      O => \count_for_reset_r[20]_i_3_n_0\
    );
\count_for_reset_r[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(7),
      O => \count_for_reset_r[4]_i_2_n_0\
    );
\count_for_reset_r[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(6),
      O => \count_for_reset_r[4]_i_3_n_0\
    );
\count_for_reset_r[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(5),
      O => \count_for_reset_r[4]_i_4_n_0\
    );
\count_for_reset_r[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(4),
      O => \count_for_reset_r[4]_i_5_n_0\
    );
\count_for_reset_r[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(11),
      O => \count_for_reset_r[8]_i_2_n_0\
    );
\count_for_reset_r[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(10),
      O => \count_for_reset_r[8]_i_3_n_0\
    );
\count_for_reset_r[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(9),
      O => \count_for_reset_r[8]_i_4_n_0\
    );
\count_for_reset_r[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_for_reset_r_reg(8),
      O => \count_for_reset_r[8]_i_5_n_0\
    );
\count_for_reset_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[0]_i_1_n_7\,
      Q => count_for_reset_r_reg(0),
      R => cc_sync
    );
\count_for_reset_r_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_for_reset_r_reg[0]_i_1_n_0\,
      CO(2) => \count_for_reset_r_reg[0]_i_1_n_1\,
      CO(1) => \count_for_reset_r_reg[0]_i_1_n_2\,
      CO(0) => \count_for_reset_r_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_for_reset_r_reg[0]_i_1_n_4\,
      O(2) => \count_for_reset_r_reg[0]_i_1_n_5\,
      O(1) => \count_for_reset_r_reg[0]_i_1_n_6\,
      O(0) => \count_for_reset_r_reg[0]_i_1_n_7\,
      S(3) => \count_for_reset_r[0]_i_2_n_0\,
      S(2) => \count_for_reset_r[0]_i_3_n_0\,
      S(1) => \count_for_reset_r[0]_i_4_n_0\,
      S(0) => \count_for_reset_r[0]_i_5_n_0\
    );
\count_for_reset_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[8]_i_1_n_5\,
      Q => count_for_reset_r_reg(10),
      R => cc_sync
    );
\count_for_reset_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[8]_i_1_n_4\,
      Q => count_for_reset_r_reg(11),
      R => cc_sync
    );
\count_for_reset_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[12]_i_1_n_7\,
      Q => count_for_reset_r_reg(12),
      R => cc_sync
    );
\count_for_reset_r_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_for_reset_r_reg[8]_i_1_n_0\,
      CO(3) => \count_for_reset_r_reg[12]_i_1_n_0\,
      CO(2) => \count_for_reset_r_reg[12]_i_1_n_1\,
      CO(1) => \count_for_reset_r_reg[12]_i_1_n_2\,
      CO(0) => \count_for_reset_r_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_for_reset_r_reg[12]_i_1_n_4\,
      O(2) => \count_for_reset_r_reg[12]_i_1_n_5\,
      O(1) => \count_for_reset_r_reg[12]_i_1_n_6\,
      O(0) => \count_for_reset_r_reg[12]_i_1_n_7\,
      S(3) => \count_for_reset_r[12]_i_2_n_0\,
      S(2) => \count_for_reset_r[12]_i_3_n_0\,
      S(1) => \count_for_reset_r[12]_i_4_n_0\,
      S(0) => \count_for_reset_r[12]_i_5_n_0\
    );
\count_for_reset_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[12]_i_1_n_6\,
      Q => count_for_reset_r_reg(13),
      R => cc_sync
    );
\count_for_reset_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[12]_i_1_n_5\,
      Q => count_for_reset_r_reg(14),
      R => cc_sync
    );
\count_for_reset_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[12]_i_1_n_4\,
      Q => count_for_reset_r_reg(15),
      R => cc_sync
    );
\count_for_reset_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[16]_i_1_n_7\,
      Q => count_for_reset_r_reg(16),
      R => cc_sync
    );
\count_for_reset_r_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_for_reset_r_reg[12]_i_1_n_0\,
      CO(3) => \count_for_reset_r_reg[16]_i_1_n_0\,
      CO(2) => \count_for_reset_r_reg[16]_i_1_n_1\,
      CO(1) => \count_for_reset_r_reg[16]_i_1_n_2\,
      CO(0) => \count_for_reset_r_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_for_reset_r_reg[16]_i_1_n_4\,
      O(2) => \count_for_reset_r_reg[16]_i_1_n_5\,
      O(1) => \count_for_reset_r_reg[16]_i_1_n_6\,
      O(0) => \count_for_reset_r_reg[16]_i_1_n_7\,
      S(3) => \count_for_reset_r[16]_i_2_n_0\,
      S(2) => \count_for_reset_r[16]_i_3_n_0\,
      S(1) => \count_for_reset_r[16]_i_4_n_0\,
      S(0) => \count_for_reset_r[16]_i_5_n_0\
    );
\count_for_reset_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[16]_i_1_n_6\,
      Q => count_for_reset_r_reg(17),
      R => cc_sync
    );
\count_for_reset_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[16]_i_1_n_5\,
      Q => count_for_reset_r_reg(18),
      R => cc_sync
    );
\count_for_reset_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[16]_i_1_n_4\,
      Q => count_for_reset_r_reg(19),
      R => cc_sync
    );
\count_for_reset_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[0]_i_1_n_6\,
      Q => count_for_reset_r_reg(1),
      R => cc_sync
    );
\count_for_reset_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[20]_i_1_n_7\,
      Q => count_for_reset_r_reg(20),
      R => cc_sync
    );
\count_for_reset_r_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_for_reset_r_reg[16]_i_1_n_0\,
      CO(3 downto 1) => \NLW_count_for_reset_r_reg[20]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count_for_reset_r_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count_for_reset_r_reg[20]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \count_for_reset_r_reg[20]_i_1_n_6\,
      O(0) => \count_for_reset_r_reg[20]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \count_for_reset_r[20]_i_2_n_0\,
      S(0) => \count_for_reset_r[20]_i_3_n_0\
    );
\count_for_reset_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[20]_i_1_n_6\,
      Q => count_for_reset_r_reg(21),
      R => cc_sync
    );
\count_for_reset_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[0]_i_1_n_5\,
      Q => count_for_reset_r_reg(2),
      R => cc_sync
    );
\count_for_reset_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[0]_i_1_n_4\,
      Q => count_for_reset_r_reg(3),
      R => cc_sync
    );
\count_for_reset_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[4]_i_1_n_7\,
      Q => count_for_reset_r_reg(4),
      R => cc_sync
    );
\count_for_reset_r_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_for_reset_r_reg[0]_i_1_n_0\,
      CO(3) => \count_for_reset_r_reg[4]_i_1_n_0\,
      CO(2) => \count_for_reset_r_reg[4]_i_1_n_1\,
      CO(1) => \count_for_reset_r_reg[4]_i_1_n_2\,
      CO(0) => \count_for_reset_r_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_for_reset_r_reg[4]_i_1_n_4\,
      O(2) => \count_for_reset_r_reg[4]_i_1_n_5\,
      O(1) => \count_for_reset_r_reg[4]_i_1_n_6\,
      O(0) => \count_for_reset_r_reg[4]_i_1_n_7\,
      S(3) => \count_for_reset_r[4]_i_2_n_0\,
      S(2) => \count_for_reset_r[4]_i_3_n_0\,
      S(1) => \count_for_reset_r[4]_i_4_n_0\,
      S(0) => \count_for_reset_r[4]_i_5_n_0\
    );
\count_for_reset_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[4]_i_1_n_6\,
      Q => count_for_reset_r_reg(5),
      R => cc_sync
    );
\count_for_reset_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[4]_i_1_n_5\,
      Q => count_for_reset_r_reg(6),
      R => cc_sync
    );
\count_for_reset_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[4]_i_1_n_4\,
      Q => count_for_reset_r_reg(7),
      R => cc_sync
    );
\count_for_reset_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[8]_i_1_n_7\,
      Q => count_for_reset_r_reg(8),
      R => cc_sync
    );
\count_for_reset_r_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_for_reset_r_reg[4]_i_1_n_0\,
      CO(3) => \count_for_reset_r_reg[8]_i_1_n_0\,
      CO(2) => \count_for_reset_r_reg[8]_i_1_n_1\,
      CO(1) => \count_for_reset_r_reg[8]_i_1_n_2\,
      CO(0) => \count_for_reset_r_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_for_reset_r_reg[8]_i_1_n_4\,
      O(2) => \count_for_reset_r_reg[8]_i_1_n_5\,
      O(1) => \count_for_reset_r_reg[8]_i_1_n_6\,
      O(0) => \count_for_reset_r_reg[8]_i_1_n_7\,
      S(3) => \count_for_reset_r[8]_i_2_n_0\,
      S(2) => \count_for_reset_r[8]_i_3_n_0\,
      S(1) => \count_for_reset_r[8]_i_4_n_0\,
      S(0) => \count_for_reset_r[8]_i_5_n_0\
    );
\count_for_reset_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[8]_i_1_n_6\,
      Q => count_for_reset_r_reg(9),
      R => cc_sync
    );
link_reset_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222222222222222"
    )
        port map (
      I0 => link_reset_0_i_2_n_0,
      I1 => link_reset_0_i_3_n_0,
      I2 => link_reset_0_i_4_n_0,
      I3 => count_for_reset_r_reg(0),
      I4 => count_for_reset_r_reg(4),
      I5 => count_for_reset_r_reg(1),
      O => link_reset_0_i_1_n_0
    );
link_reset_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => link_reset_0_i_5_n_0,
      I1 => count_for_reset_r_reg(16),
      I2 => count_for_reset_r_reg(12),
      I3 => count_for_reset_r_reg(9),
      I4 => count_for_reset_r_reg(5),
      I5 => link_reset_0_i_6_n_0,
      O => link_reset_0_i_2_n_0
    );
link_reset_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => count_for_reset_r_reg(10),
      I1 => count_for_reset_r_reg(15),
      I2 => count_for_reset_r_reg(14),
      I3 => count_for_reset_r_reg(6),
      I4 => count_for_reset_r_reg(17),
      I5 => count_for_reset_r_reg(18),
      O => link_reset_0_i_3_n_0
    );
link_reset_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_for_reset_r_reg(2),
      I1 => count_for_reset_r_reg(3),
      O => link_reset_0_i_4_n_0
    );
link_reset_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => count_for_reset_r_reg(21),
      I1 => count_for_reset_r_reg(20),
      I2 => count_for_reset_r_reg(19),
      I3 => count_for_reset_r_reg(7),
      O => link_reset_0_i_5_n_0
    );
link_reset_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FFFFFFFFFFFFFF"
    )
        port map (
      I0 => count_for_reset_r_reg(2),
      I1 => count_for_reset_r_reg(3),
      I2 => count_for_reset_r_reg(4),
      I3 => count_for_reset_r_reg(13),
      I4 => count_for_reset_r_reg(8),
      I5 => count_for_reset_r_reg(11),
      O => link_reset_0_i_6_n_0
    );
link_reset_0_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => link_reset_0_i_1_n_0,
      Q => link_reset_0,
      R => '0'
    );
\link_reset_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => link_reset_0,
      Q => link_reset_out,
      R => '0'
    );
rx_cc_cdc_sync: entity work.\aurora_8b10b_aurora_8b10b_cdc_sync__parameterized3\
     port map (
      gtrxreset_o_reg => gtrxreset_o_reg,
      init_clk_in => init_clk_in,
      \out\ => cc_sync,
      rx_cc_extend_r2 => rx_cc_extend_r2
    );
rx_cc_extend_r2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => rx_cc_extend_r(0),
      I1 => rx_cc_extend_r(1),
      I2 => rx_cc_extend_r(2),
      I3 => rx_cc_extend_r(3),
      I4 => rx_cc_extend_r2_i_2_n_0,
      O => rx_cc_extend_r2_i_1_n_0
    );
rx_cc_extend_r2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => rx_cc_extend_r(6),
      I1 => rx_cc_extend_r(7),
      I2 => rx_cc_extend_r(5),
      I3 => rx_cc_extend_r(4),
      O => rx_cc_extend_r2_i_2_n_0
    );
rx_cc_extend_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_cc_extend_r2_i_1_n_0,
      Q => rx_cc_extend_r2,
      R => '0'
    );
\rx_cc_extend_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_cc_extend_r(1),
      Q => rx_cc_extend_r(0),
      R => SR(0)
    );
\rx_cc_extend_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_cc_extend_r(2),
      Q => rx_cc_extend_r(1),
      R => SR(0)
    );
\rx_cc_extend_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_cc_extend_r(3),
      Q => rx_cc_extend_r(2),
      R => SR(0)
    );
\rx_cc_extend_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_cc_extend_r(4),
      Q => rx_cc_extend_r(3),
      R => SR(0)
    );
\rx_cc_extend_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_cc_extend_r(5),
      Q => rx_cc_extend_r(4),
      R => SR(0)
    );
\rx_cc_extend_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_cc_extend_r(6),
      Q => rx_cc_extend_r(5),
      R => SR(0)
    );
\rx_cc_extend_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rx_cc_extend_r(7),
      Q => rx_cc_extend_r(6),
      R => SR(0)
    );
\rx_cc_extend_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => D(0),
      Q => rx_cc_extend_r(7),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_rx_startup_fsm is
  port (
    gtrxreset_i : out STD_LOGIC;
    gt_rxuserrdy_i : out STD_LOGIC;
    \cpllpd_quad0_wait_reg[95]\ : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    rxfsm_rxresetdone_r : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt_txuserrdy_i : in STD_LOGIC;
    rx_cdrlocked_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_rx_startup_fsm : entity is "aurora_8b10b_rx_startup_fsm";
end aurora_8b10b_aurora_8b10b_rx_startup_fsm;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_rx_startup_fsm is
  signal \FSM_sequential_rx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal RXUSERRDY_i_1_n_0 : STD_LOGIC;
  signal check_tlock_max_i_1_n_0 : STD_LOGIC;
  signal check_tlock_max_reg_n_0 : STD_LOGIC;
  signal \^gt_rxuserrdy_i\ : STD_LOGIC;
  signal \^gtrxreset_i\ : STD_LOGIC;
  signal gtrxreset_i_i_1_n_0 : STD_LOGIC;
  signal gtrxreset_s : STD_LOGIC;
  signal init_wait_count : STD_LOGIC;
  signal \init_wait_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \init_wait_count[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \init_wait_count[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \init_wait_count_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \init_wait_done_i_1__0_n_0\ : STD_LOGIC;
  signal init_wait_done_reg_n_0 : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[9]_i_4__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal \mmcm_lock_reclocked_i_2__0_n_0\ : STD_LOGIC;
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \reset_time_out_i_2__0_n_0\ : STD_LOGIC;
  signal reset_time_out_i_4_n_0 : STD_LOGIC;
  signal reset_time_out_reg_n_0 : STD_LOGIC;
  signal \run_phase_alignment_int_i_1__0_n_0\ : STD_LOGIC;
  signal run_phase_alignment_int_reg_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_s2 : STD_LOGIC;
  signal run_phase_alignment_int_s3_reg_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int : STD_LOGIC;
  signal rx_fsm_reset_done_int_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_i_1_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_i_3_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal rx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of rx_state : signal is "yes";
  signal rx_state16_out : STD_LOGIC;
  signal rxpmaresetdone_i : STD_LOGIC;
  signal rxpmaresetdone_rx_s : STD_LOGIC;
  signal rxresetdone_s2 : STD_LOGIC;
  signal rxresetdone_s3 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_cdc_sync_n_0 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_cdc_sync_n_1 : STD_LOGIC;
  signal sync_pll0lock_cdc_sync_n_0 : STD_LOGIC;
  signal sync_pll0lock_cdc_sync_n_1 : STD_LOGIC;
  signal sync_rx_fsm_reset_done_int_cdc_sync_n_0 : STD_LOGIC;
  signal time_out_100us_i_1_n_0 : STD_LOGIC;
  signal time_out_100us_i_2_n_0 : STD_LOGIC;
  signal time_out_100us_i_3_n_0 : STD_LOGIC;
  signal time_out_100us_i_4_n_0 : STD_LOGIC;
  signal time_out_100us_reg_n_0 : STD_LOGIC;
  signal time_out_1us_i_1_n_0 : STD_LOGIC;
  signal time_out_1us_i_2_n_0 : STD_LOGIC;
  signal time_out_1us_i_3_n_0 : STD_LOGIC;
  signal time_out_1us_reg_n_0 : STD_LOGIC;
  signal time_out_2ms_i_1_n_0 : STD_LOGIC;
  signal time_out_2ms_i_2_n_0 : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_counter : STD_LOGIC;
  signal \time_out_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_8_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_9_n_0\ : STD_LOGIC;
  signal \time_out_counter[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[12]_i_3__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[12]_i_4__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[12]_i_5__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[16]_i_2__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \time_out_counter[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[8]_i_4__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[8]_i_5__0_n_0\ : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \time_out_counter_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_wait_bypass_i_1__0_n_0\ : STD_LOGIC;
  signal time_out_wait_bypass_reg_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal time_tlock_max : STD_LOGIC;
  signal time_tlock_max_i_1_n_0 : STD_LOGIC;
  signal time_tlock_max_i_2_n_0 : STD_LOGIC;
  signal time_tlock_max_i_3_n_0 : STD_LOGIC;
  signal time_tlock_max_i_4_n_0 : STD_LOGIC;
  signal time_tlock_max_i_5_n_0 : STD_LOGIC;
  signal txpmaresetdone_i : STD_LOGIC;
  signal \wait_bypass_count[0]_i_10__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_8__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_9__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[8]_i_4__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[8]_i_5__0_n_0\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \wait_bypass_count_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_10_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_11_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_9_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_4__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_5__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_4__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_5__0_n_0\ : STD_LOGIC;
  signal wait_time_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \wait_time_cnt_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_7\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_rx_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rx_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rx_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rx_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_3__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_4__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_2__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \mmcm_lock_count[9]_i_4__0\ : label is "soft_lutpair46";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of run_phase_alignment_int_s3_reg : label is "no";
  attribute equivalent_register_removal of rx_fsm_reset_done_int_s3_reg : label is "no";
  attribute equivalent_register_removal of rxresetdone_s3_reg : label is "no";
  attribute SOFT_HLUTNM of time_out_1us_i_2 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of time_out_2ms_i_2 : label is "soft_lutpair47";
  attribute equivalent_register_removal of time_out_wait_bypass_s3_reg : label is "no";
begin
  gt_rxuserrdy_i <= \^gt_rxuserrdy_i\;
  gtrxreset_i <= \^gtrxreset_i\;
\FSM_sequential_rx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08B80888FFFFFFFF"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => rx_state(1),
      I2 => rx_state(2),
      I3 => reset_time_out_reg_n_0,
      I4 => time_tlock_max,
      I5 => rx_state(0),
      O => \FSM_sequential_rx_state[0]_i_2_n_0\
    );
\FSM_sequential_rx_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000010FFFF"
    )
        port map (
      I0 => rx_state(1),
      I1 => \^gt_rxuserrdy_i\,
      I2 => time_out_100us_reg_n_0,
      I3 => reset_time_out_reg_n_0,
      I4 => rx_state(0),
      I5 => rx_state(2),
      O => \FSM_sequential_rx_state[0]_i_3_n_0\
    );
\FSM_sequential_rx_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888833338BBB0000"
    )
        port map (
      I0 => \FSM_sequential_rx_state[1]_i_2_n_0\,
      I1 => rx_state(3),
      I2 => rx_state16_out,
      I3 => rx_state(2),
      I4 => rx_state(0),
      I5 => rx_state(1),
      O => \FSM_sequential_rx_state[1]_i_1_n_0\
    );
\FSM_sequential_rx_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11111011"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => \^gt_rxuserrdy_i\,
      I3 => time_out_100us_reg_n_0,
      I4 => reset_time_out_reg_n_0,
      O => \FSM_sequential_rx_state[1]_i_2_n_0\
    );
\FSM_sequential_rx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000262226AA"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(0),
      I2 => time_out_2ms_reg_n_0,
      I3 => rx_state(1),
      I4 => rx_state16_out,
      I5 => rx_state(3),
      O => \FSM_sequential_rx_state[2]_i_1_n_0\
    );
\FSM_sequential_rx_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_tlock_max,
      I1 => reset_time_out_reg_n_0,
      O => rx_state16_out
    );
\FSM_sequential_rx_state[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => \wait_time_cnt[0]_i_4__0_n_0\,
      I1 => \wait_time_cnt[0]_i_5__0_n_0\,
      I2 => \wait_time_cnt[0]_i_6__0_n_0\,
      I3 => \wait_time_cnt[0]_i_7__0_n_0\,
      I4 => rx_state(1),
      I5 => init_wait_done_reg_n_0,
      O => \FSM_sequential_rx_state[3]_i_10_n_0\
    );
\FSM_sequential_rx_state[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => \wait_time_cnt[0]_i_4__0_n_0\,
      I1 => \wait_time_cnt[0]_i_5__0_n_0\,
      I2 => \wait_time_cnt[0]_i_6__0_n_0\,
      I3 => \wait_time_cnt[0]_i_7__0_n_0\,
      I4 => rx_state(1),
      I5 => rx_cdrlocked_reg,
      O => \FSM_sequential_rx_state[3]_i_11_n_0\
    );
\FSM_sequential_rx_state[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004544"
    )
        port map (
      I0 => rx_state(1),
      I1 => \^gt_rxuserrdy_i\,
      I2 => reset_time_out_reg_n_0,
      I3 => time_out_100us_reg_n_0,
      I4 => rx_state(2),
      O => \FSM_sequential_rx_state[3]_i_3_n_0\
    );
\FSM_sequential_rx_state[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \^gt_rxuserrdy_i\,
      I1 => rx_state(1),
      I2 => rx_state(2),
      O => \FSM_sequential_rx_state[3]_i_4_n_0\
    );
\FSM_sequential_rx_state[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80880000"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => reset_time_out_reg_n_0,
      I3 => time_out_2ms_reg_n_0,
      I4 => rx_state(0),
      O => \FSM_sequential_rx_state[3]_i_7_n_0\
    );
\FSM_sequential_rx_state[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888BB8B"
    )
        port map (
      I0 => \FSM_sequential_rx_state[1]_i_2_n_0\,
      I1 => rx_state(0),
      I2 => time_out_wait_bypass_s3,
      I3 => rx_state(1),
      I4 => rx_state(2),
      O => \FSM_sequential_rx_state[3]_i_8_n_0\
    );
\FSM_sequential_rx_state[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0EFEFAFA0EFE0"
    )
        port map (
      I0 => rxresetdone_s3,
      I1 => time_out_2ms_reg_n_0,
      I2 => rx_state(1),
      I3 => mmcm_lock_reclocked,
      I4 => reset_time_out_reg_n_0,
      I5 => time_tlock_max,
      O => \FSM_sequential_rx_state[3]_i_9_n_0\
    );
\FSM_sequential_rx_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sync_pll0lock_cdc_sync_n_1,
      D => \FSM_sequential_rx_state_reg[0]_i_1_n_0\,
      Q => rx_state(0),
      R => AR(0)
    );
\FSM_sequential_rx_state_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_rx_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_rx_state[0]_i_3_n_0\,
      O => \FSM_sequential_rx_state_reg[0]_i_1_n_0\,
      S => rx_state(3)
    );
\FSM_sequential_rx_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sync_pll0lock_cdc_sync_n_1,
      D => \FSM_sequential_rx_state[1]_i_1_n_0\,
      Q => rx_state(1),
      R => AR(0)
    );
\FSM_sequential_rx_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sync_pll0lock_cdc_sync_n_1,
      D => \FSM_sequential_rx_state[2]_i_1_n_0\,
      Q => rx_state(2),
      R => AR(0)
    );
\FSM_sequential_rx_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sync_pll0lock_cdc_sync_n_1,
      D => \FSM_sequential_rx_state_reg[3]_i_2_n_0\,
      Q => rx_state(3),
      R => AR(0)
    );
\FSM_sequential_rx_state_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_rx_state[3]_i_7_n_0\,
      I1 => \FSM_sequential_rx_state[3]_i_8_n_0\,
      O => \FSM_sequential_rx_state_reg[3]_i_2_n_0\,
      S => rx_state(3)
    );
\FSM_sequential_rx_state_reg[3]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_rx_state[3]_i_10_n_0\,
      I1 => \FSM_sequential_rx_state[3]_i_11_n_0\,
      O => \FSM_sequential_rx_state_reg[3]_i_6_n_0\,
      S => rx_state(2)
    );
RXUSERRDY_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF500008000"
    )
        port map (
      I0 => rx_state(0),
      I1 => gt_txuserrdy_i,
      I2 => rx_state(1),
      I3 => rx_state(2),
      I4 => rx_state(3),
      I5 => \^gt_rxuserrdy_i\,
      O => RXUSERRDY_i_1_n_0
    );
RXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => RXUSERRDY_i_1_n_0,
      Q => \^gt_rxuserrdy_i\,
      R => AR(0)
    );
check_tlock_max_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => rx_state(0),
      I3 => rx_state(3),
      I4 => check_tlock_max_reg_n_0,
      O => check_tlock_max_i_1_n_0
    );
check_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => check_tlock_max_i_1_n_0,
      Q => check_tlock_max_reg_n_0,
      R => AR(0)
    );
gtrxreset_cdc_sync: entity work.\aurora_8b10b_aurora_8b10b_cdc_sync__parameterized9\
     port map (
      gtrxreset_i => \^gtrxreset_i\,
      gtrxreset_o_reg => gtrxreset_o_reg,
      init_clk_in => init_clk_in,
      \out\ => gtrxreset_s
    );
gtrxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0010"
    )
        port map (
      I0 => rx_state(1),
      I1 => rx_state(2),
      I2 => rx_state(0),
      I3 => rx_state(3),
      I4 => \^gtrxreset_i\,
      O => gtrxreset_i_i_1_n_0
    );
gtrxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_i_i_1_n_0,
      Q => \^gtrxreset_i\,
      R => AR(0)
    );
\init_wait_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \init_wait_count_reg__0\(0),
      O => \init_wait_count[0]_i_1__0_n_0\
    );
\init_wait_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \init_wait_count_reg__0\(1),
      I1 => \init_wait_count_reg__0\(0),
      O => \p_0_in__2\(1)
    );
\init_wait_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \init_wait_count_reg__0\(1),
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(2),
      O => \p_0_in__2\(2)
    );
\init_wait_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(3),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(2),
      O => \p_0_in__2\(3)
    );
\init_wait_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(1),
      I4 => \init_wait_count_reg__0\(3),
      O => \p_0_in__2\(4)
    );
\init_wait_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(5),
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(0),
      I4 => \init_wait_count_reg__0\(2),
      I5 => \init_wait_count_reg__0\(4),
      O => \p_0_in__2\(5)
    );
\init_wait_count[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(6),
      I1 => \init_wait_count_reg__0\(4),
      I2 => \init_wait_count[7]_i_4__0_n_0\,
      I3 => \init_wait_count_reg__0\(3),
      I4 => \init_wait_count_reg__0\(5),
      O => \p_0_in__2\(6)
    );
\init_wait_count[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \init_wait_count[7]_i_3__0_n_0\,
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(5),
      I3 => \init_wait_count_reg__0\(7),
      I4 => \init_wait_count_reg__0\(6),
      O => init_wait_count
    );
\init_wait_count[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(7),
      I1 => \init_wait_count_reg__0\(5),
      I2 => \init_wait_count_reg__0\(3),
      I3 => \init_wait_count[7]_i_4__0_n_0\,
      I4 => \init_wait_count_reg__0\(4),
      I5 => \init_wait_count_reg__0\(6),
      O => \p_0_in__2\(7)
    );
\init_wait_count[7]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \init_wait_count_reg__0\(0),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(4),
      I3 => \init_wait_count_reg__0\(2),
      O => \init_wait_count[7]_i_3__0_n_0\
    );
\init_wait_count[7]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \init_wait_count_reg__0\(2),
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(1),
      O => \init_wait_count[7]_i_4__0_n_0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \init_wait_count[0]_i_1__0_n_0\,
      Q => \init_wait_count_reg__0\(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__2\(1),
      Q => \init_wait_count_reg__0\(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__2\(2),
      Q => \init_wait_count_reg__0\(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__2\(3),
      Q => \init_wait_count_reg__0\(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__2\(4),
      Q => \init_wait_count_reg__0\(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__2\(5),
      Q => \init_wait_count_reg__0\(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__2\(6),
      Q => \init_wait_count_reg__0\(6)
    );
\init_wait_count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__2\(7),
      Q => \init_wait_count_reg__0\(7)
    );
\init_wait_done_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000010"
    )
        port map (
      I0 => \init_wait_count[7]_i_3__0_n_0\,
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(5),
      I3 => \init_wait_count_reg__0\(7),
      I4 => \init_wait_count_reg__0\(6),
      I5 => init_wait_done_reg_n_0,
      O => \init_wait_done_i_1__0_n_0\
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => AR(0),
      D => \init_wait_done_i_1__0_n_0\,
      Q => init_wait_done_reg_n_0
    );
\mmcm_lock_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      O => \p_0_in__3\(0)
    );
\mmcm_lock_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      I1 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__3\(1)
    );
\mmcm_lock_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(2),
      O => \p_0_in__3\(2)
    );
\mmcm_lock_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(0),
      I2 => \mmcm_lock_count_reg__0\(1),
      I3 => \mmcm_lock_count_reg__0\(2),
      O => \p_0_in__3\(3)
    );
\mmcm_lock_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(4),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(1),
      I3 => \mmcm_lock_count_reg__0\(0),
      I4 => \mmcm_lock_count_reg__0\(3),
      O => \p_0_in__3\(4)
    );
\mmcm_lock_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(5),
      I1 => \mmcm_lock_count_reg__0\(3),
      I2 => \mmcm_lock_count_reg__0\(4),
      I3 => \mmcm_lock_count_reg__0\(2),
      I4 => \mmcm_lock_count_reg__0\(1),
      I5 => \mmcm_lock_count_reg__0\(0),
      O => \p_0_in__3\(5)
    );
\mmcm_lock_count[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(6),
      I1 => \mmcm_lock_count[7]_i_2__0_n_0\,
      I2 => \mmcm_lock_count_reg__0\(4),
      I3 => \mmcm_lock_count_reg__0\(3),
      I4 => \mmcm_lock_count_reg__0\(5),
      O => \p_0_in__3\(6)
    );
\mmcm_lock_count[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(7),
      I1 => \mmcm_lock_count_reg__0\(5),
      I2 => \mmcm_lock_count_reg__0\(6),
      I3 => \mmcm_lock_count[7]_i_2__0_n_0\,
      I4 => \mmcm_lock_count_reg__0\(4),
      I5 => \mmcm_lock_count_reg__0\(3),
      O => \p_0_in__3\(7)
    );
\mmcm_lock_count[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(2),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(0),
      O => \mmcm_lock_count[7]_i_2__0_n_0\
    );
\mmcm_lock_count[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => \mmcm_lock_count[9]_i_4__0_n_0\,
      I2 => \mmcm_lock_count_reg__0\(6),
      I3 => \mmcm_lock_count_reg__0\(5),
      I4 => \mmcm_lock_count_reg__0\(7),
      O => \p_0_in__3\(8)
    );
\mmcm_lock_count[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => \mmcm_lock_count[9]_i_4__0_n_0\,
      I2 => \mmcm_lock_count_reg__0\(6),
      I3 => \mmcm_lock_count_reg__0\(5),
      I4 => \mmcm_lock_count_reg__0\(7),
      I5 => \mmcm_lock_count_reg__0\(9),
      O => \mmcm_lock_count[9]_i_2__0_n_0\
    );
\mmcm_lock_count[9]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(9),
      I1 => \mmcm_lock_count_reg__0\(7),
      I2 => \mmcm_lock_count_reg__0\(5),
      I3 => \mmcm_lock_count_reg__0\(6),
      I4 => \mmcm_lock_count[9]_i_4__0_n_0\,
      I5 => \mmcm_lock_count_reg__0\(8),
      O => \p_0_in__3\(9)
    );
\mmcm_lock_count[9]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(2),
      I3 => \mmcm_lock_count_reg__0\(4),
      I4 => \mmcm_lock_count_reg__0\(3),
      O => \mmcm_lock_count[9]_i_4__0_n_0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__3\(0),
      Q => \mmcm_lock_count_reg__0\(0),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__3\(1),
      Q => \mmcm_lock_count_reg__0\(1),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__3\(2),
      Q => \mmcm_lock_count_reg__0\(2),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__3\(3),
      Q => \mmcm_lock_count_reg__0\(3),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__3\(4),
      Q => \mmcm_lock_count_reg__0\(4),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__3\(5),
      Q => \mmcm_lock_count_reg__0\(5),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__3\(6),
      Q => \mmcm_lock_count_reg__0\(6),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__3\(7),
      Q => \mmcm_lock_count_reg__0\(7),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__3\(8),
      Q => \mmcm_lock_count_reg__0\(8),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__3\(9),
      Q => \mmcm_lock_count_reg__0\(9),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_reclocked_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(7),
      I1 => \mmcm_lock_count_reg__0\(5),
      I2 => \mmcm_lock_count_reg__0\(6),
      I3 => \mmcm_lock_count[7]_i_2__0_n_0\,
      I4 => \mmcm_lock_count_reg__0\(4),
      I5 => \mmcm_lock_count_reg__0\(3),
      O => \mmcm_lock_reclocked_i_2__0_n_0\
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => sync_mmcm_lock_reclocked_cdc_sync_n_0,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
\reset_time_out_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0213"
    )
        port map (
      I0 => \^gt_rxuserrdy_i\,
      I1 => rx_state(2),
      I2 => rx_state(1),
      I3 => rx_state(0),
      O => \reset_time_out_i_2__0_n_0\
    );
reset_time_out_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55772262"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(2),
      I2 => rx_cdrlocked_reg,
      I3 => rx_state(1),
      I4 => rx_state(0),
      O => reset_time_out_i_4_n_0
    );
reset_time_out_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => sync_pll0lock_cdc_sync_n_0,
      Q => reset_time_out_reg_n_0,
      S => AR(0)
    );
\run_phase_alignment_int_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0002"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(2),
      I2 => rx_state(1),
      I3 => rx_state(0),
      I4 => run_phase_alignment_int_reg_n_0,
      O => \run_phase_alignment_int_i_1__0_n_0\
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \run_phase_alignment_int_i_1__0_n_0\,
      Q => run_phase_alignment_int_reg_n_0,
      R => AR(0)
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => run_phase_alignment_int_s2,
      Q => run_phase_alignment_int_s3_reg_n_0,
      R => '0'
    );
rx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFA8080000"
    )
        port map (
      I0 => rx_fsm_reset_done_int_0,
      I1 => rx_fsm_reset_done_int_i_3_n_0,
      I2 => rx_state(0),
      I3 => \FSM_sequential_rx_state[3]_i_3_n_0\,
      I4 => rx_state(3),
      I5 => rx_fsm_reset_done_int,
      O => rx_fsm_reset_done_int_i_1_n_0
    );
rx_fsm_reset_done_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => rx_state(0),
      I1 => rx_state(2),
      I2 => \^gt_rxuserrdy_i\,
      I3 => time_out_1us_reg_n_0,
      I4 => reset_time_out_reg_n_0,
      O => rx_fsm_reset_done_int_0
    );
rx_fsm_reset_done_int_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000020AA"
    )
        port map (
      I0 => rx_state(1),
      I1 => reset_time_out_reg_n_0,
      I2 => time_out_1us_reg_n_0,
      I3 => \^gt_rxuserrdy_i\,
      I4 => rx_state(2),
      O => rx_fsm_reset_done_int_i_3_n_0
    );
rx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_fsm_reset_done_int_i_1_n_0,
      Q => rx_fsm_reset_done_int,
      R => AR(0)
    );
rx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => sync_rx_fsm_reset_done_int_cdc_sync_n_0,
      Q => rx_fsm_reset_done_int_s3,
      R => '0'
    );
rxpmaresetdone_i_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      CLR => gtrxreset_s,
      D => rxpmaresetdone_rx_s,
      Q => rxpmaresetdone_i
    );
rxpmaresetdone_rx_cdc_sync: entity work.aurora_8b10b_aurora_8b10b_cdc_sync_5
     port map (
      gtrxreset_o_reg => gtrxreset_o_reg,
      \out\ => rxpmaresetdone_rx_s
    );
rxresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rxresetdone_s2,
      Q => rxresetdone_s3,
      R => '0'
    );
sync2_pmaresetdone_cdc_sync: entity work.\aurora_8b10b_aurora_8b10b_cdc_sync__parameterized10\
     port map (
      gtrxreset_o_reg => gtrxreset_o_reg,
      init_clk_in => init_clk_in,
      rxpmaresetdone_i => rxpmaresetdone_i
    );
sync2_txpmaresetdone_cdc_sync: entity work.\aurora_8b10b_aurora_8b10b_cdc_sync__parameterized11\
     port map (
      gtrxreset_o_reg => gtrxreset_o_reg,
      init_clk_in => init_clk_in,
      txpmaresetdone_i => txpmaresetdone_i
    );
sync_RXRESETDONE_cdc_sync: entity work.\aurora_8b10b_aurora_8b10b_cdc_sync__parameterized15\
     port map (
      gtrxreset_o_reg => gtrxreset_o_reg,
      init_clk_in => init_clk_in,
      \out\ => rxresetdone_s2,
      rxfsm_rxresetdone_r => rxfsm_rxresetdone_r
    );
sync_mmcm_lock_reclocked_cdc_sync: entity work.aurora_8b10b_aurora_8b10b_cdc_sync_6
     port map (
      Q(1 downto 0) => \mmcm_lock_count_reg__0\(9 downto 8),
      SR(0) => sync_mmcm_lock_reclocked_cdc_sync_n_1,
      init_clk_in => init_clk_in,
      \mmcm_lock_count_reg[7]\ => \mmcm_lock_reclocked_i_2__0_n_0\,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      mmcm_lock_reclocked_reg => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
sync_pll0lock_cdc_sync: entity work.aurora_8b10b_aurora_8b10b_cdc_sync_7
     port map (
      E(0) => sync_pll0lock_cdc_sync_n_1,
      \FSM_sequential_rx_state_reg[1]\ => \FSM_sequential_rx_state[3]_i_3_n_0\,
      \FSM_sequential_rx_state_reg[2]\ => \FSM_sequential_rx_state_reg[3]_i_6_n_0\,
      \FSM_sequential_rx_state_reg[3]\ => reset_time_out_i_4_n_0,
      RXUSERRDY_reg => \reset_time_out_i_2__0_n_0\,
      RXUSERRDY_reg_0 => \FSM_sequential_rx_state[3]_i_4_n_0\,
      RXUSERRDY_reg_1 => \^gt_rxuserrdy_i\,
      \cpllpd_quad0_wait_reg[95]\ => \cpllpd_quad0_wait_reg[95]\,
      init_clk_in => init_clk_in,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      \out\(3 downto 0) => rx_state(3 downto 0),
      reset_time_out_reg => sync_pll0lock_cdc_sync_n_0,
      reset_time_out_reg_0 => reset_time_out_reg_n_0,
      rx_cdrlocked_reg => rx_cdrlocked_reg,
      rxresetdone_s3 => rxresetdone_s3,
      rxresetdone_s3_reg => \FSM_sequential_rx_state[3]_i_9_n_0\,
      time_out_2ms_reg => time_out_2ms_reg_n_0
    );
sync_pll1lock_cdc_sync: entity work.aurora_8b10b_aurora_8b10b_cdc_sync_8
     port map (
      init_clk_in => init_clk_in
    );
sync_run_phase_alignment_int_cdc_sync: entity work.\aurora_8b10b_aurora_8b10b_cdc_sync__parameterized12\
     port map (
      gtrxreset_o_reg => gtrxreset_o_reg,
      init_clk_in => init_clk_in,
      \out\ => run_phase_alignment_int_s2,
      run_phase_alignment_int_reg => run_phase_alignment_int_reg_n_0
    );
sync_rx_fsm_reset_done_int_cdc_sync: entity work.\aurora_8b10b_aurora_8b10b_cdc_sync__parameterized13\
     port map (
      gtrxreset_o_reg => gtrxreset_o_reg,
      init_clk_in => init_clk_in,
      \out\ => sync_rx_fsm_reset_done_int_cdc_sync_n_0,
      rx_fsm_reset_done_int => rx_fsm_reset_done_int
    );
sync_time_out_wait_bypass_cdc_sync: entity work.\aurora_8b10b_aurora_8b10b_cdc_sync__parameterized14\
     port map (
      gtrxreset_o_reg => gtrxreset_o_reg,
      init_clk_in => init_clk_in,
      \out\ => time_out_wait_bypass_s2,
      time_out_wait_bypass_reg => time_out_wait_bypass_reg_n_0
    );
time_out_100us_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => time_out_100us_i_2_n_0,
      I1 => time_out_100us_i_3_n_0,
      I2 => time_out_100us_i_4_n_0,
      I3 => time_tlock_max_i_2_n_0,
      I4 => time_out_100us_reg_n_0,
      O => time_out_100us_i_1_n_0
    );
time_out_100us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(10),
      I3 => time_out_counter_reg(11),
      I4 => time_out_counter_reg(3),
      I5 => time_out_counter_reg(4),
      O => time_out_100us_i_2_n_0
    );
time_out_100us_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(1),
      I2 => time_out_counter_reg(0),
      O => time_out_100us_i_3_n_0
    );
time_out_100us_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(12),
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(8),
      O => time_out_100us_i_4_n_0
    );
time_out_100us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_100us_i_1_n_0,
      Q => time_out_100us_reg_n_0,
      R => reset_time_out_reg_n_0
    );
time_out_1us_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => time_out_1us_i_2_n_0,
      I1 => \time_out_counter[0]_i_4_n_0\,
      I2 => time_out_1us_reg_n_0,
      O => time_out_1us_i_1_n_0
    );
time_out_1us_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(1),
      I2 => time_out_counter_reg(7),
      I3 => time_out_counter_reg(5),
      I4 => time_out_1us_i_3_n_0,
      O => time_out_1us_i_2_n_0
    );
time_out_1us_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => time_out_counter_reg(14),
      I1 => time_out_counter_reg(15),
      I2 => time_out_counter_reg(0),
      I3 => time_out_counter_reg(6),
      I4 => time_out_counter_reg(17),
      I5 => time_out_counter_reg(16),
      O => time_out_1us_i_3_n_0
    );
time_out_1us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_1us_i_1_n_0,
      Q => time_out_1us_reg_n_0,
      R => reset_time_out_reg_n_0
    );
time_out_2ms_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00080000"
    )
        port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(14),
      I2 => time_out_2ms_i_2_n_0,
      I3 => \time_out_counter[0]_i_3_n_0\,
      I4 => \time_out_counter[0]_i_4_n_0\,
      I5 => time_out_2ms_reg_n_0,
      O => time_out_2ms_i_1_n_0
    );
time_out_2ms_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(7),
      O => time_out_2ms_i_2_n_0
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_2ms_i_1_n_0,
      Q => time_out_2ms_reg_n_0,
      R => reset_time_out_reg_n_0
    );
\time_out_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(12),
      I3 => time_out_counter_reg(7),
      I4 => \time_out_counter[0]_i_3_n_0\,
      I5 => \time_out_counter[0]_i_4_n_0\,
      O => time_out_counter
    );
\time_out_counter[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(6),
      I2 => time_out_counter_reg(17),
      I3 => time_out_counter_reg(16),
      I4 => time_out_counter_reg(0),
      I5 => time_out_counter_reg(1),
      O => \time_out_counter[0]_i_3_n_0\
    );
\time_out_counter[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(4),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(9),
      I4 => \time_out_counter[0]_i_9_n_0\,
      O => \time_out_counter[0]_i_4_n_0\
    );
\time_out_counter[0]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(3),
      O => \time_out_counter[0]_i_5__0_n_0\
    );
\time_out_counter[0]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(2),
      O => \time_out_counter[0]_i_6__0_n_0\
    );
\time_out_counter[0]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(1),
      O => \time_out_counter[0]_i_7__0_n_0\
    );
\time_out_counter[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_8_n_0\
    );
\time_out_counter[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(10),
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(13),
      O => \time_out_counter[0]_i_9_n_0\
    );
\time_out_counter[12]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(15),
      O => \time_out_counter[12]_i_2__0_n_0\
    );
\time_out_counter[12]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(14),
      O => \time_out_counter[12]_i_3__0_n_0\
    );
\time_out_counter[12]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(13),
      O => \time_out_counter[12]_i_4__0_n_0\
    );
\time_out_counter[12]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(12),
      O => \time_out_counter[12]_i_5__0_n_0\
    );
\time_out_counter[16]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(17),
      O => \time_out_counter[16]_i_2__0_n_0\
    );
\time_out_counter[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(16),
      O => \time_out_counter[16]_i_3_n_0\
    );
\time_out_counter[4]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(7),
      O => \time_out_counter[4]_i_2__0_n_0\
    );
\time_out_counter[4]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(6),
      O => \time_out_counter[4]_i_3__0_n_0\
    );
\time_out_counter[4]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(5),
      O => \time_out_counter[4]_i_4__0_n_0\
    );
\time_out_counter[4]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(4),
      O => \time_out_counter[4]_i_5__0_n_0\
    );
\time_out_counter[8]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(11),
      O => \time_out_counter[8]_i_2__0_n_0\
    );
\time_out_counter[8]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(10),
      O => \time_out_counter[8]_i_3__0_n_0\
    );
\time_out_counter[8]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(9),
      O => \time_out_counter[8]_i_4__0_n_0\
    );
\time_out_counter[8]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(8),
      O => \time_out_counter[8]_i_5__0_n_0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_7\,
      Q => time_out_counter_reg(0),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_out_counter_reg[0]_i_2__0_n_0\,
      CO(2) => \time_out_counter_reg[0]_i_2__0_n_1\,
      CO(1) => \time_out_counter_reg[0]_i_2__0_n_2\,
      CO(0) => \time_out_counter_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_out_counter_reg[0]_i_2__0_n_4\,
      O(2) => \time_out_counter_reg[0]_i_2__0_n_5\,
      O(1) => \time_out_counter_reg[0]_i_2__0_n_6\,
      O(0) => \time_out_counter_reg[0]_i_2__0_n_7\,
      S(3) => \time_out_counter[0]_i_5__0_n_0\,
      S(2) => \time_out_counter[0]_i_6__0_n_0\,
      S(1) => \time_out_counter[0]_i_7__0_n_0\,
      S(0) => \time_out_counter[0]_i_8_n_0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_5\,
      Q => time_out_counter_reg(10),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_4\,
      Q => time_out_counter_reg(11),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_7\,
      Q => time_out_counter_reg(12),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[8]_i_1__0_n_0\,
      CO(3) => \time_out_counter_reg[12]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[12]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[12]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[12]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[12]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[12]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[12]_i_1__0_n_7\,
      S(3) => \time_out_counter[12]_i_2__0_n_0\,
      S(2) => \time_out_counter[12]_i_3__0_n_0\,
      S(1) => \time_out_counter[12]_i_4__0_n_0\,
      S(0) => \time_out_counter[12]_i_5__0_n_0\
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_6\,
      Q => time_out_counter_reg(13),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_5\,
      Q => time_out_counter_reg(14),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_4\,
      Q => time_out_counter_reg(15),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_7\,
      Q => time_out_counter_reg(16),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[12]_i_1__0_n_0\,
      CO(3 downto 1) => \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \time_out_counter_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \time_out_counter_reg[16]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[16]_i_1__0_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \time_out_counter[16]_i_2__0_n_0\,
      S(0) => \time_out_counter[16]_i_3_n_0\
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_6\,
      Q => time_out_counter_reg(17),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_6\,
      Q => time_out_counter_reg(1),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_5\,
      Q => time_out_counter_reg(2),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_4\,
      Q => time_out_counter_reg(3),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_7\,
      Q => time_out_counter_reg(4),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[0]_i_2__0_n_0\,
      CO(3) => \time_out_counter_reg[4]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[4]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[4]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[4]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[4]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[4]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[4]_i_1__0_n_7\,
      S(3) => \time_out_counter[4]_i_2__0_n_0\,
      S(2) => \time_out_counter[4]_i_3__0_n_0\,
      S(1) => \time_out_counter[4]_i_4__0_n_0\,
      S(0) => \time_out_counter[4]_i_5__0_n_0\
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_6\,
      Q => time_out_counter_reg(5),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_5\,
      Q => time_out_counter_reg(6),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_4\,
      Q => time_out_counter_reg(7),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_7\,
      Q => time_out_counter_reg(8),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[4]_i_1__0_n_0\,
      CO(3) => \time_out_counter_reg[8]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[8]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[8]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[8]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[8]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[8]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[8]_i_1__0_n_7\,
      S(3) => \time_out_counter[8]_i_2__0_n_0\,
      S(2) => \time_out_counter[8]_i_3__0_n_0\,
      S(1) => \time_out_counter[8]_i_4__0_n_0\,
      S(0) => \time_out_counter[8]_i_5__0_n_0\
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_6\,
      Q => time_out_counter_reg(9),
      R => reset_time_out_reg_n_0
    );
\time_out_wait_bypass_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => time_out_wait_bypass_reg_n_0,
      I1 => rx_fsm_reset_done_int_s3,
      I2 => \wait_bypass_count[0]_i_4__0_n_0\,
      I3 => run_phase_alignment_int_s3_reg_n_0,
      O => \time_out_wait_bypass_i_1__0_n_0\
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \time_out_wait_bypass_i_1__0_n_0\,
      Q => time_out_wait_bypass_reg_n_0,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
time_tlock_max_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7500"
    )
        port map (
      I0 => time_tlock_max_i_2_n_0,
      I1 => time_tlock_max_i_3_n_0,
      I2 => time_tlock_max_i_4_n_0,
      I3 => check_tlock_max_reg_n_0,
      I4 => time_tlock_max,
      O => time_tlock_max_i_1_n_0
    );
time_tlock_max_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(16),
      I2 => time_out_counter_reg(13),
      I3 => time_out_counter_reg(14),
      I4 => time_out_counter_reg(15),
      O => time_tlock_max_i_2_n_0
    );
time_tlock_max_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000111111111"
    )
        port map (
      I0 => time_tlock_max_i_5_n_0,
      I1 => time_out_counter_reg(4),
      I2 => time_out_counter_reg(2),
      I3 => time_out_counter_reg(1),
      I4 => time_out_counter_reg(0),
      I5 => time_out_counter_reg(3),
      O => time_tlock_max_i_3_n_0
    );
time_tlock_max_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEE0000EEEE0000"
    )
        port map (
      I0 => time_out_counter_reg(10),
      I1 => time_out_counter_reg(11),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(9),
      I4 => time_out_counter_reg(12),
      I5 => time_out_counter_reg(7),
      O => time_tlock_max_i_4_n_0
    );
time_tlock_max_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(10),
      I2 => time_out_counter_reg(5),
      I3 => time_out_counter_reg(6),
      O => time_tlock_max_i_5_n_0
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_tlock_max_i_1_n_0,
      Q => time_tlock_max,
      R => reset_time_out_reg_n_0
    );
txpmaresetdone_i_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      CLR => gtrxreset_s,
      D => '1',
      Q => txpmaresetdone_i
    );
\wait_bypass_count[0]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => wait_bypass_count_reg(2),
      I1 => wait_bypass_count_reg(12),
      I2 => wait_bypass_count_reg(4),
      I3 => wait_bypass_count_reg(10),
      I4 => wait_bypass_count_reg(6),
      I5 => wait_bypass_count_reg(11),
      O => \wait_bypass_count[0]_i_10__0_n_0\
    );
\wait_bypass_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => run_phase_alignment_int_s3_reg_n_0,
      O => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wait_bypass_count[0]_i_4__0_n_0\,
      I1 => rx_fsm_reset_done_int_s3,
      O => \wait_bypass_count[0]_i_2__0_n_0\
    );
\wait_bypass_count[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \wait_bypass_count[0]_i_9__0_n_0\,
      I1 => wait_bypass_count_reg(1),
      I2 => wait_bypass_count_reg(8),
      I3 => wait_bypass_count_reg(0),
      I4 => \wait_bypass_count[0]_i_10__0_n_0\,
      O => \wait_bypass_count[0]_i_4__0_n_0\
    );
\wait_bypass_count[0]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(3),
      O => \wait_bypass_count[0]_i_5__0_n_0\
    );
\wait_bypass_count[0]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(2),
      O => \wait_bypass_count[0]_i_6__0_n_0\
    );
\wait_bypass_count[0]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(1),
      O => \wait_bypass_count[0]_i_7__0_n_0\
    );
\wait_bypass_count[0]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_8__0_n_0\
    );
\wait_bypass_count[0]_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(3),
      I1 => wait_bypass_count_reg(5),
      I2 => wait_bypass_count_reg(9),
      I3 => wait_bypass_count_reg(7),
      O => \wait_bypass_count[0]_i_9__0_n_0\
    );
\wait_bypass_count[12]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(12),
      O => \wait_bypass_count[12]_i_2__0_n_0\
    );
\wait_bypass_count[4]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(7),
      O => \wait_bypass_count[4]_i_2__0_n_0\
    );
\wait_bypass_count[4]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(6),
      O => \wait_bypass_count[4]_i_3__0_n_0\
    );
\wait_bypass_count[4]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(5),
      O => \wait_bypass_count[4]_i_4__0_n_0\
    );
\wait_bypass_count[4]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(4),
      O => \wait_bypass_count[4]_i_5__0_n_0\
    );
\wait_bypass_count[8]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(11),
      O => \wait_bypass_count[8]_i_2__0_n_0\
    );
\wait_bypass_count[8]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(10),
      O => \wait_bypass_count[8]_i_3__0_n_0\
    );
\wait_bypass_count[8]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(9),
      O => \wait_bypass_count[8]_i_4__0_n_0\
    );
\wait_bypass_count[8]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(8),
      O => \wait_bypass_count[8]_i_5__0_n_0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_7\,
      Q => wait_bypass_count_reg(0),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[0]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_bypass_count_reg[0]_i_3__0_n_0\,
      CO(2) => \wait_bypass_count_reg[0]_i_3__0_n_1\,
      CO(1) => \wait_bypass_count_reg[0]_i_3__0_n_2\,
      CO(0) => \wait_bypass_count_reg[0]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_bypass_count_reg[0]_i_3__0_n_4\,
      O(2) => \wait_bypass_count_reg[0]_i_3__0_n_5\,
      O(1) => \wait_bypass_count_reg[0]_i_3__0_n_6\,
      O(0) => \wait_bypass_count_reg[0]_i_3__0_n_7\,
      S(3) => \wait_bypass_count[0]_i_5__0_n_0\,
      S(2) => \wait_bypass_count[0]_i_6__0_n_0\,
      S(1) => \wait_bypass_count[0]_i_7__0_n_0\,
      S(0) => \wait_bypass_count[0]_i_8__0_n_0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(10),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(11),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[12]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(12),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[8]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \wait_bypass_count_reg[12]_i_1__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \wait_bypass_count[12]_i_2__0_n_0\
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_6\,
      Q => wait_bypass_count_reg(1),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_5\,
      Q => wait_bypass_count_reg(2),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_4\,
      Q => wait_bypass_count_reg(3),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(4),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[0]_i_3__0_n_0\,
      CO(3) => \wait_bypass_count_reg[4]_i_1__0_n_0\,
      CO(2) => \wait_bypass_count_reg[4]_i_1__0_n_1\,
      CO(1) => \wait_bypass_count_reg[4]_i_1__0_n_2\,
      CO(0) => \wait_bypass_count_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[4]_i_1__0_n_4\,
      O(2) => \wait_bypass_count_reg[4]_i_1__0_n_5\,
      O(1) => \wait_bypass_count_reg[4]_i_1__0_n_6\,
      O(0) => \wait_bypass_count_reg[4]_i_1__0_n_7\,
      S(3) => \wait_bypass_count[4]_i_2__0_n_0\,
      S(2) => \wait_bypass_count[4]_i_3__0_n_0\,
      S(1) => \wait_bypass_count[4]_i_4__0_n_0\,
      S(0) => \wait_bypass_count[4]_i_5__0_n_0\
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_6\,
      Q => wait_bypass_count_reg(5),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(6),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(7),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(8),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[4]_i_1__0_n_0\,
      CO(3) => \wait_bypass_count_reg[8]_i_1__0_n_0\,
      CO(2) => \wait_bypass_count_reg[8]_i_1__0_n_1\,
      CO(1) => \wait_bypass_count_reg[8]_i_1__0_n_2\,
      CO(0) => \wait_bypass_count_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[8]_i_1__0_n_4\,
      O(2) => \wait_bypass_count_reg[8]_i_1__0_n_5\,
      O(1) => \wait_bypass_count_reg[8]_i_1__0_n_6\,
      O(0) => \wait_bypass_count_reg[8]_i_1__0_n_7\,
      S(3) => \wait_bypass_count[8]_i_2__0_n_0\,
      S(2) => \wait_bypass_count[8]_i_3__0_n_0\,
      S(1) => \wait_bypass_count[8]_i_4__0_n_0\,
      S(0) => \wait_bypass_count[8]_i_5__0_n_0\
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_6\,
      Q => wait_bypass_count_reg(9),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_time_cnt[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      O => \wait_time_cnt[0]_i_10_n_0\
    );
\wait_time_cnt[0]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      O => \wait_time_cnt[0]_i_11_n_0\
    );
\wait_time_cnt[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(1),
      I2 => rx_state(0),
      O => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \wait_time_cnt[0]_i_4__0_n_0\,
      I1 => \wait_time_cnt[0]_i_5__0_n_0\,
      I2 => \wait_time_cnt[0]_i_6__0_n_0\,
      I3 => \wait_time_cnt[0]_i_7__0_n_0\,
      O => \wait_time_cnt[0]_i_2__0_n_0\
    );
\wait_time_cnt[0]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(8),
      I1 => wait_time_cnt_reg(5),
      I2 => wait_time_cnt_reg(13),
      I3 => wait_time_cnt_reg(2),
      O => \wait_time_cnt[0]_i_4__0_n_0\
    );
\wait_time_cnt[0]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      I1 => wait_time_cnt_reg(14),
      I2 => wait_time_cnt_reg(15),
      I3 => wait_time_cnt_reg(12),
      O => \wait_time_cnt[0]_i_5__0_n_0\
    );
\wait_time_cnt[0]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(11),
      I1 => wait_time_cnt_reg(1),
      I2 => wait_time_cnt_reg(10),
      I3 => wait_time_cnt_reg(4),
      O => \wait_time_cnt[0]_i_6__0_n_0\
    );
\wait_time_cnt[0]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(9),
      I1 => wait_time_cnt_reg(7),
      I2 => wait_time_cnt_reg(6),
      I3 => wait_time_cnt_reg(3),
      O => \wait_time_cnt[0]_i_7__0_n_0\
    );
\wait_time_cnt[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(3),
      O => \wait_time_cnt[0]_i_8_n_0\
    );
\wait_time_cnt[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(2),
      O => \wait_time_cnt[0]_i_9_n_0\
    );
\wait_time_cnt[12]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(15),
      O => \wait_time_cnt[12]_i_2__0_n_0\
    );
\wait_time_cnt[12]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(14),
      O => \wait_time_cnt[12]_i_3__0_n_0\
    );
\wait_time_cnt[12]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(13),
      O => \wait_time_cnt[12]_i_4__0_n_0\
    );
\wait_time_cnt[12]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(12),
      O => \wait_time_cnt[12]_i_5__0_n_0\
    );
\wait_time_cnt[4]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(7),
      O => \wait_time_cnt[4]_i_2__0_n_0\
    );
\wait_time_cnt[4]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      O => \wait_time_cnt[4]_i_3__0_n_0\
    );
\wait_time_cnt[4]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(5),
      O => \wait_time_cnt[4]_i_4__0_n_0\
    );
\wait_time_cnt[4]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      O => \wait_time_cnt[4]_i_5__0_n_0\
    );
\wait_time_cnt[8]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(11),
      O => \wait_time_cnt[8]_i_2__0_n_0\
    );
\wait_time_cnt[8]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(10),
      O => \wait_time_cnt[8]_i_3__0_n_0\
    );
\wait_time_cnt[8]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(9),
      O => \wait_time_cnt[8]_i_4__0_n_0\
    );
\wait_time_cnt[8]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(8),
      O => \wait_time_cnt[8]_i_5__0_n_0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[0]_i_3__0_n_7\,
      Q => wait_time_cnt_reg(0),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[0]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_time_cnt_reg[0]_i_3__0_n_0\,
      CO(2) => \wait_time_cnt_reg[0]_i_3__0_n_1\,
      CO(1) => \wait_time_cnt_reg[0]_i_3__0_n_2\,
      CO(0) => \wait_time_cnt_reg[0]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \wait_time_cnt_reg[0]_i_3__0_n_4\,
      O(2) => \wait_time_cnt_reg[0]_i_3__0_n_5\,
      O(1) => \wait_time_cnt_reg[0]_i_3__0_n_6\,
      O(0) => \wait_time_cnt_reg[0]_i_3__0_n_7\,
      S(3) => \wait_time_cnt[0]_i_8_n_0\,
      S(2) => \wait_time_cnt[0]_i_9_n_0\,
      S(1) => \wait_time_cnt[0]_i_10_n_0\,
      S(0) => \wait_time_cnt[0]_i_11_n_0\
    );
\wait_time_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[8]_i_1__0_n_5\,
      Q => wait_time_cnt_reg(10),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[8]_i_1__0_n_4\,
      Q => wait_time_cnt_reg(11),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[12]_i_1__0_n_7\,
      Q => wait_time_cnt_reg(12),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_time_cnt_reg[8]_i_1__0_n_0\,
      CO(3) => \NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \wait_time_cnt_reg[12]_i_1__0_n_1\,
      CO(1) => \wait_time_cnt_reg[12]_i_1__0_n_2\,
      CO(0) => \wait_time_cnt_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3) => \wait_time_cnt_reg[12]_i_1__0_n_4\,
      O(2) => \wait_time_cnt_reg[12]_i_1__0_n_5\,
      O(1) => \wait_time_cnt_reg[12]_i_1__0_n_6\,
      O(0) => \wait_time_cnt_reg[12]_i_1__0_n_7\,
      S(3) => \wait_time_cnt[12]_i_2__0_n_0\,
      S(2) => \wait_time_cnt[12]_i_3__0_n_0\,
      S(1) => \wait_time_cnt[12]_i_4__0_n_0\,
      S(0) => \wait_time_cnt[12]_i_5__0_n_0\
    );
\wait_time_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[12]_i_1__0_n_6\,
      Q => wait_time_cnt_reg(13),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[12]_i_1__0_n_5\,
      Q => wait_time_cnt_reg(14),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[12]_i_1__0_n_4\,
      Q => wait_time_cnt_reg(15),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[0]_i_3__0_n_6\,
      Q => wait_time_cnt_reg(1),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[0]_i_3__0_n_5\,
      Q => wait_time_cnt_reg(2),
      S => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[0]_i_3__0_n_4\,
      Q => wait_time_cnt_reg(3),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[4]_i_1__0_n_7\,
      Q => wait_time_cnt_reg(4),
      S => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_time_cnt_reg[0]_i_3__0_n_0\,
      CO(3) => \wait_time_cnt_reg[4]_i_1__0_n_0\,
      CO(2) => \wait_time_cnt_reg[4]_i_1__0_n_1\,
      CO(1) => \wait_time_cnt_reg[4]_i_1__0_n_2\,
      CO(0) => \wait_time_cnt_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \wait_time_cnt_reg[4]_i_1__0_n_4\,
      O(2) => \wait_time_cnt_reg[4]_i_1__0_n_5\,
      O(1) => \wait_time_cnt_reg[4]_i_1__0_n_6\,
      O(0) => \wait_time_cnt_reg[4]_i_1__0_n_7\,
      S(3) => \wait_time_cnt[4]_i_2__0_n_0\,
      S(2) => \wait_time_cnt[4]_i_3__0_n_0\,
      S(1) => \wait_time_cnt[4]_i_4__0_n_0\,
      S(0) => \wait_time_cnt[4]_i_5__0_n_0\
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[4]_i_1__0_n_6\,
      Q => wait_time_cnt_reg(5),
      S => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[4]_i_1__0_n_5\,
      Q => wait_time_cnt_reg(6),
      S => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[4]_i_1__0_n_4\,
      Q => wait_time_cnt_reg(7),
      S => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[8]_i_1__0_n_7\,
      Q => wait_time_cnt_reg(8),
      S => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_time_cnt_reg[4]_i_1__0_n_0\,
      CO(3) => \wait_time_cnt_reg[8]_i_1__0_n_0\,
      CO(2) => \wait_time_cnt_reg[8]_i_1__0_n_1\,
      CO(1) => \wait_time_cnt_reg[8]_i_1__0_n_2\,
      CO(0) => \wait_time_cnt_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \wait_time_cnt_reg[8]_i_1__0_n_4\,
      O(2) => \wait_time_cnt_reg[8]_i_1__0_n_5\,
      O(1) => \wait_time_cnt_reg[8]_i_1__0_n_6\,
      O(0) => \wait_time_cnt_reg[8]_i_1__0_n_7\,
      S(3) => \wait_time_cnt[8]_i_2__0_n_0\,
      S(2) => \wait_time_cnt[8]_i_3__0_n_0\,
      S(1) => \wait_time_cnt[8]_i_4__0_n_0\,
      S(0) => \wait_time_cnt[8]_i_5__0_n_0\
    );
\wait_time_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[8]_i_1__0_n_6\,
      Q => wait_time_cnt_reg(9),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_tx_startup_fsm is
  port (
    \out\ : out STD_LOGIC;
    gt_tx_reset_i : out STD_LOGIC;
    common_reset_i : out STD_LOGIC;
    gt_txuserrdy_i : out STD_LOGIC;
    gt_txresetdone_r2_reg : out STD_LOGIC;
    \cpllpd_quad0_wait_reg[95]\ : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    txfsm_txresetdone_r : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_tx_startup_fsm : entity is "aurora_8b10b_tx_startup_fsm";
end aurora_8b10b_aurora_8b10b_tx_startup_fsm;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_tx_startup_fsm is
  signal \FSM_sequential_tx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_9_n_0\ : STD_LOGIC;
  signal PLL0_RESET_i_1_n_0 : STD_LOGIC;
  signal TXUSERRDY_i_1_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^common_reset_i\ : STD_LOGIC;
  signal \^gt_tx_reset_i\ : STD_LOGIC;
  signal \^gt_txuserrdy_i\ : STD_LOGIC;
  signal gttxreset_i_i_1_n_0 : STD_LOGIC;
  signal init_wait_count : STD_LOGIC;
  signal \init_wait_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \init_wait_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \init_wait_count[7]_i_4_n_0\ : STD_LOGIC;
  signal \init_wait_count_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal init_wait_done_i_1_n_0 : STD_LOGIC;
  signal init_wait_done_reg_n_0 : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[9]_i_4_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal mmcm_lock_reclocked_i_2_n_0 : STD_LOGIC;
  signal \^out\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pll_reset_asserted_i_1_n_0 : STD_LOGIC;
  signal pll_reset_asserted_reg_n_0 : STD_LOGIC;
  signal reset_time_out : STD_LOGIC;
  signal run_phase_alignment_int : STD_LOGIC;
  signal run_phase_alignment_int_i_1_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_s2 : STD_LOGIC;
  signal run_phase_alignment_int_s3 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_cdc_sync_n_0 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_cdc_sync_n_1 : STD_LOGIC;
  signal sync_pll0lock_cdc_sync_n_0 : STD_LOGIC;
  signal sync_pll0lock_cdc_sync_n_1 : STD_LOGIC;
  signal time_out_2ms : STD_LOGIC;
  signal \time_out_2ms_i_1__0_n_0\ : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_500us_i_1_n_0 : STD_LOGIC;
  signal time_out_500us_i_2_n_0 : STD_LOGIC;
  signal time_out_500us_i_3_n_0 : STD_LOGIC;
  signal time_out_500us_i_4_n_0 : STD_LOGIC;
  signal time_out_500us_reg_n_0 : STD_LOGIC;
  signal time_out_counter : STD_LOGIC;
  signal \time_out_counter[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_8__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_9__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \time_out_counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \time_out_counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \time_out_counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \time_out_counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \time_out_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \time_out_counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \time_out_counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \time_out_counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \time_out_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \time_out_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \time_out_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \time_out_counter[8]_i_5_n_0\ : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \time_out_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal time_out_wait_bypass : STD_LOGIC;
  signal time_out_wait_bypass_i_1_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal \time_tlock_max_i_1__0_n_0\ : STD_LOGIC;
  signal \time_tlock_max_i_2__0_n_0\ : STD_LOGIC;
  signal \time_tlock_max_i_3__0_n_0\ : STD_LOGIC;
  signal \time_tlock_max_i_4__0_n_0\ : STD_LOGIC;
  signal \time_tlock_max_i_5__0_n_0\ : STD_LOGIC;
  signal time_tlock_max_reg_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int : STD_LOGIC;
  signal tx_fsm_reset_done_int_i_1_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal tx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of tx_state : signal is "yes";
  signal tx_state12_out : STD_LOGIC;
  signal txresetdone_s2 : STD_LOGIC;
  signal txresetdone_s3 : STD_LOGIC;
  signal \wait_bypass_count[0]_i_10_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_11_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_7_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_8_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_9_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[12]_i_2_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[12]_i_3_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[12]_i_4_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[12]_i_5_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[16]_i_2_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[4]_i_4_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[4]_i_5_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[8]_i_4_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[8]_i_5_n_0\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \wait_bypass_count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal wait_time_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \wait_time_cnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal wait_time_done : STD_LOGIC;
  signal \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[1]_i_2\ : label is "soft_lutpair59";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_tx_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_tx_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_tx_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_tx_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_4\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \mmcm_lock_count[9]_i_4\ : label is "soft_lutpair53";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of run_phase_alignment_int_s3_reg : label is "no";
  attribute SOFT_HLUTNM of \time_out_2ms_i_1__0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of time_out_500us_i_3 : label is "soft_lutpair57";
  attribute equivalent_register_removal of time_out_wait_bypass_s3_reg : label is "no";
  attribute SOFT_HLUTNM of \time_tlock_max_i_4__0\ : label is "soft_lutpair57";
  attribute equivalent_register_removal of tx_fsm_reset_done_int_s3_reg : label is "no";
  attribute equivalent_register_removal of txresetdone_s3_reg : label is "no";
begin
  common_reset_i <= \^common_reset_i\;
  gt_tx_reset_i <= \^gt_tx_reset_i\;
  gt_txuserrdy_i <= \^gt_txuserrdy_i\;
  \out\ <= \^out\;
\FSM_sequential_tx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222220222220A0A"
    )
        port map (
      I0 => \FSM_sequential_tx_state[0]_i_2_n_0\,
      I1 => tx_state(3),
      I2 => tx_state(0),
      I3 => time_out_2ms_reg_n_0,
      I4 => tx_state(2),
      I5 => tx_state(1),
      O => \FSM_sequential_tx_state[0]_i_1_n_0\
    );
\FSM_sequential_tx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B33BBBBBBBBBBBB"
    )
        port map (
      I0 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      I1 => tx_state(0),
      I2 => reset_time_out,
      I3 => time_out_500us_reg_n_0,
      I4 => tx_state(1),
      I5 => tx_state(2),
      O => \FSM_sequential_tx_state[0]_i_2_n_0\
    );
\FSM_sequential_tx_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11110444"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state12_out,
      I3 => tx_state(2),
      I4 => tx_state(1),
      O => \FSM_sequential_tx_state[1]_i_1_n_0\
    );
\FSM_sequential_tx_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => reset_time_out,
      I1 => time_tlock_max_reg_n_0,
      I2 => mmcm_lock_reclocked,
      O => tx_state12_out
    );
\FSM_sequential_tx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111004055550040"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => time_out_2ms_reg_n_0,
      I4 => tx_state(2),
      I5 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      O => \FSM_sequential_tx_state[2]_i_1_n_0\
    );
\FSM_sequential_tx_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => time_tlock_max_reg_n_0,
      I2 => reset_time_out,
      I3 => tx_state(1),
      O => \FSM_sequential_tx_state[2]_i_2_n_0\
    );
\FSM_sequential_tx_state[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => wait_time_cnt_reg(9),
      I1 => wait_time_cnt_reg(2),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(14),
      O => \FSM_sequential_tx_state[3]_i_10_n_0\
    );
\FSM_sequential_tx_state[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      I1 => wait_time_cnt_reg(4),
      I2 => wait_time_cnt_reg(13),
      I3 => wait_time_cnt_reg(6),
      O => \FSM_sequential_tx_state[3]_i_11_n_0\
    );
\FSM_sequential_tx_state[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(15),
      I1 => wait_time_cnt_reg(11),
      I2 => wait_time_cnt_reg(8),
      I3 => wait_time_cnt_reg(10),
      O => \FSM_sequential_tx_state[3]_i_12_n_0\
    );
\FSM_sequential_tx_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A00B00"
    )
        port map (
      I0 => \FSM_sequential_tx_state[3]_i_6_n_0\,
      I1 => time_out_wait_bypass_s3,
      I2 => tx_state(2),
      I3 => tx_state(3),
      I4 => tx_state(1),
      O => \FSM_sequential_tx_state[3]_i_2_n_0\
    );
\FSM_sequential_tx_state[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \FSM_sequential_tx_state[3]_i_9_n_0\,
      I1 => \FSM_sequential_tx_state[3]_i_10_n_0\,
      I2 => \FSM_sequential_tx_state[3]_i_11_n_0\,
      I3 => \FSM_sequential_tx_state[3]_i_12_n_0\,
      O => wait_time_done
    );
\FSM_sequential_tx_state[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      O => \FSM_sequential_tx_state[3]_i_5_n_0\
    );
\FSM_sequential_tx_state[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => tx_state(0),
      I1 => reset_time_out,
      I2 => time_out_500us_reg_n_0,
      O => \FSM_sequential_tx_state[3]_i_6_n_0\
    );
\FSM_sequential_tx_state[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(7),
      I1 => wait_time_cnt_reg(5),
      I2 => wait_time_cnt_reg(12),
      I3 => wait_time_cnt_reg(3),
      O => \FSM_sequential_tx_state[3]_i_9_n_0\
    );
\FSM_sequential_tx_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sync_pll0lock_cdc_sync_n_1,
      D => \FSM_sequential_tx_state[0]_i_1_n_0\,
      Q => tx_state(0),
      R => AR(0)
    );
\FSM_sequential_tx_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sync_pll0lock_cdc_sync_n_1,
      D => \FSM_sequential_tx_state[1]_i_1_n_0\,
      Q => tx_state(1),
      R => AR(0)
    );
\FSM_sequential_tx_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sync_pll0lock_cdc_sync_n_1,
      D => \FSM_sequential_tx_state[2]_i_1_n_0\,
      Q => tx_state(2),
      R => AR(0)
    );
\FSM_sequential_tx_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sync_pll0lock_cdc_sync_n_1,
      D => \FSM_sequential_tx_state[3]_i_2_n_0\,
      Q => tx_state(3),
      R => AR(0)
    );
PLL0_RESET_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000100"
    )
        port map (
      I0 => pll_reset_asserted_reg_n_0,
      I1 => tx_state(3),
      I2 => tx_state(2),
      I3 => tx_state(0),
      I4 => tx_state(1),
      I5 => \^common_reset_i\,
      O => PLL0_RESET_i_1_n_0
    );
PLL0_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => PLL0_RESET_i_1_n_0,
      Q => \^common_reset_i\,
      R => AR(0)
    );
TXUSERRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB4000"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => tx_state(2),
      I4 => \^gt_txuserrdy_i\,
      O => TXUSERRDY_i_1_n_0
    );
TXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => TXUSERRDY_i_1_n_0,
      Q => \^gt_txuserrdy_i\,
      R => AR(0)
    );
gttxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0004"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(0),
      I2 => tx_state(3),
      I3 => tx_state(1),
      I4 => \^gt_tx_reset_i\,
      O => gttxreset_i_i_1_n_0
    );
gttxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => gttxreset_i_i_1_n_0,
      Q => \^gt_tx_reset_i\,
      R => AR(0)
    );
\init_wait_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \init_wait_count_reg__0\(0),
      O => \init_wait_count[0]_i_1_n_0\
    );
\init_wait_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \init_wait_count_reg__0\(1),
      I1 => \init_wait_count_reg__0\(0),
      O => \p_0_in__0\(1)
    );
\init_wait_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \init_wait_count_reg__0\(1),
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\init_wait_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(3),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\init_wait_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(1),
      I4 => \init_wait_count_reg__0\(3),
      O => \p_0_in__0\(4)
    );
\init_wait_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(5),
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(0),
      I4 => \init_wait_count_reg__0\(2),
      I5 => \init_wait_count_reg__0\(4),
      O => \p_0_in__0\(5)
    );
\init_wait_count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(6),
      I1 => \init_wait_count_reg__0\(4),
      I2 => \init_wait_count[7]_i_4_n_0\,
      I3 => \init_wait_count_reg__0\(3),
      I4 => \init_wait_count_reg__0\(5),
      O => \p_0_in__0\(6)
    );
\init_wait_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \init_wait_count[7]_i_3_n_0\,
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(5),
      I3 => \init_wait_count_reg__0\(7),
      I4 => \init_wait_count_reg__0\(6),
      O => init_wait_count
    );
\init_wait_count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(7),
      I1 => \init_wait_count_reg__0\(5),
      I2 => \init_wait_count_reg__0\(3),
      I3 => \init_wait_count[7]_i_4_n_0\,
      I4 => \init_wait_count_reg__0\(4),
      I5 => \init_wait_count_reg__0\(6),
      O => \p_0_in__0\(7)
    );
\init_wait_count[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \init_wait_count_reg__0\(0),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(4),
      I3 => \init_wait_count_reg__0\(2),
      O => \init_wait_count[7]_i_3_n_0\
    );
\init_wait_count[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \init_wait_count_reg__0\(2),
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(1),
      O => \init_wait_count[7]_i_4_n_0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \init_wait_count[0]_i_1_n_0\,
      Q => \init_wait_count_reg__0\(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__0\(1),
      Q => \init_wait_count_reg__0\(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__0\(2),
      Q => \init_wait_count_reg__0\(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__0\(3),
      Q => \init_wait_count_reg__0\(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__0\(4),
      Q => \init_wait_count_reg__0\(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__0\(5),
      Q => \init_wait_count_reg__0\(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__0\(6),
      Q => \init_wait_count_reg__0\(6)
    );
\init_wait_count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__0\(7),
      Q => \init_wait_count_reg__0\(7)
    );
init_wait_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000010"
    )
        port map (
      I0 => \init_wait_count[7]_i_3_n_0\,
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(5),
      I3 => \init_wait_count_reg__0\(7),
      I4 => \init_wait_count_reg__0\(6),
      I5 => init_wait_done_reg_n_0,
      O => init_wait_done_i_1_n_0
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => AR(0),
      D => init_wait_done_i_1_n_0,
      Q => init_wait_done_reg_n_0
    );
\mmcm_lock_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      O => \p_0_in__1\(0)
    );
\mmcm_lock_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      I1 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\mmcm_lock_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(2),
      O => \p_0_in__1\(2)
    );
\mmcm_lock_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(0),
      I2 => \mmcm_lock_count_reg__0\(1),
      I3 => \mmcm_lock_count_reg__0\(2),
      O => \p_0_in__1\(3)
    );
\mmcm_lock_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(4),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(1),
      I3 => \mmcm_lock_count_reg__0\(0),
      I4 => \mmcm_lock_count_reg__0\(3),
      O => \p_0_in__1\(4)
    );
\mmcm_lock_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(5),
      I1 => \mmcm_lock_count_reg__0\(3),
      I2 => \mmcm_lock_count_reg__0\(4),
      I3 => \mmcm_lock_count_reg__0\(2),
      I4 => \mmcm_lock_count_reg__0\(1),
      I5 => \mmcm_lock_count_reg__0\(0),
      O => \p_0_in__1\(5)
    );
\mmcm_lock_count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(6),
      I1 => \mmcm_lock_count[7]_i_2_n_0\,
      I2 => \mmcm_lock_count_reg__0\(4),
      I3 => \mmcm_lock_count_reg__0\(3),
      I4 => \mmcm_lock_count_reg__0\(5),
      O => \p_0_in__1\(6)
    );
\mmcm_lock_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(4),
      I2 => \mmcm_lock_count[7]_i_2_n_0\,
      I3 => \mmcm_lock_count_reg__0\(6),
      I4 => \mmcm_lock_count_reg__0\(5),
      I5 => \mmcm_lock_count_reg__0\(7),
      O => \p_0_in__1\(7)
    );
\mmcm_lock_count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(2),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(0),
      O => \mmcm_lock_count[7]_i_2_n_0\
    );
\mmcm_lock_count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => \mmcm_lock_count[9]_i_4_n_0\,
      I2 => \mmcm_lock_count_reg__0\(6),
      I3 => \mmcm_lock_count_reg__0\(5),
      I4 => \mmcm_lock_count_reg__0\(7),
      O => \p_0_in__1\(8)
    );
\mmcm_lock_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => \mmcm_lock_count[9]_i_4_n_0\,
      I2 => \mmcm_lock_count_reg__0\(6),
      I3 => \mmcm_lock_count_reg__0\(5),
      I4 => \mmcm_lock_count_reg__0\(7),
      I5 => \mmcm_lock_count_reg__0\(9),
      O => \mmcm_lock_count[9]_i_2_n_0\
    );
\mmcm_lock_count[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(9),
      I1 => \mmcm_lock_count_reg__0\(7),
      I2 => \mmcm_lock_count_reg__0\(5),
      I3 => \mmcm_lock_count_reg__0\(6),
      I4 => \mmcm_lock_count[9]_i_4_n_0\,
      I5 => \mmcm_lock_count_reg__0\(8),
      O => \p_0_in__1\(9)
    );
\mmcm_lock_count[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(2),
      I3 => \mmcm_lock_count_reg__0\(4),
      I4 => \mmcm_lock_count_reg__0\(3),
      O => \mmcm_lock_count[9]_i_4_n_0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__1\(0),
      Q => \mmcm_lock_count_reg__0\(0),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__1\(1),
      Q => \mmcm_lock_count_reg__0\(1),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__1\(2),
      Q => \mmcm_lock_count_reg__0\(2),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__1\(3),
      Q => \mmcm_lock_count_reg__0\(3),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__1\(4),
      Q => \mmcm_lock_count_reg__0\(4),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__1\(5),
      Q => \mmcm_lock_count_reg__0\(5),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__1\(6),
      Q => \mmcm_lock_count_reg__0\(6),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__1\(7),
      Q => \mmcm_lock_count_reg__0\(7),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__1\(8),
      Q => \mmcm_lock_count_reg__0\(8),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__1\(9),
      Q => \mmcm_lock_count_reg__0\(9),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
mmcm_lock_reclocked_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(7),
      I1 => \mmcm_lock_count_reg__0\(5),
      I2 => \mmcm_lock_count_reg__0\(6),
      I3 => \mmcm_lock_count[7]_i_2_n_0\,
      I4 => \mmcm_lock_count_reg__0\(4),
      I5 => \mmcm_lock_count_reg__0\(3),
      O => mmcm_lock_reclocked_i_2_n_0
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => sync_mmcm_lock_reclocked_cdc_sync_n_0,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
pll_reset_asserted_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF00FF10"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => pll_reset_asserted_reg_n_0,
      I4 => tx_state(1),
      O => pll_reset_asserted_i_1_n_0
    );
pll_reset_asserted_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => pll_reset_asserted_i_1_n_0,
      Q => pll_reset_asserted_reg_n_0,
      R => AR(0)
    );
reset_time_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => sync_pll0lock_cdc_sync_n_0,
      Q => reset_time_out,
      R => AR(0)
    );
run_phase_alignment_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0002"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(2),
      I3 => tx_state(1),
      I4 => run_phase_alignment_int,
      O => run_phase_alignment_int_i_1_n_0
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => run_phase_alignment_int_i_1_n_0,
      Q => run_phase_alignment_int,
      R => AR(0)
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => run_phase_alignment_int_s2,
      Q => run_phase_alignment_int_s3,
      R => '0'
    );
sync_TXRESETDONE_cdc_sync: entity work.\aurora_8b10b_aurora_8b10b_cdc_sync__parameterized8\
     port map (
      gtrxreset_o_reg => gtrxreset_o_reg,
      init_clk_in => init_clk_in,
      \out\ => txresetdone_s2,
      txfsm_txresetdone_r => txfsm_txresetdone_r
    );
sync_mmcm_lock_reclocked_cdc_sync: entity work.aurora_8b10b_aurora_8b10b_cdc_sync_2
     port map (
      Q(1 downto 0) => \mmcm_lock_count_reg__0\(9 downto 8),
      SR(0) => sync_mmcm_lock_reclocked_cdc_sync_n_1,
      \cpllpd_quad0_wait_reg[95]\ => \cpllpd_quad0_wait_reg[95]\,
      init_clk_in => init_clk_in,
      \mmcm_lock_count_reg[7]\ => mmcm_lock_reclocked_i_2_n_0,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      mmcm_lock_reclocked_reg => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
sync_pll0lock_cdc_sync: entity work.aurora_8b10b_aurora_8b10b_cdc_sync_3
     port map (
      E(0) => sync_pll0lock_cdc_sync_n_1,
      \FSM_sequential_tx_state_reg[1]\ => \FSM_sequential_tx_state[3]_i_5_n_0\,
      \cpllpd_quad0_wait_reg[95]\ => \cpllpd_quad0_wait_reg[95]\,
      init_clk_in => init_clk_in,
      init_wait_done_reg => init_wait_done_reg_n_0,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      \out\(3 downto 0) => tx_state(3 downto 0),
      pll_reset_asserted_reg => pll_reset_asserted_reg_n_0,
      reset_time_out => reset_time_out,
      reset_time_out_reg => sync_pll0lock_cdc_sync_n_0,
      time_out_2ms_reg => time_out_2ms_reg_n_0,
      time_out_500us_reg => time_out_500us_reg_n_0,
      time_tlock_max_reg => time_tlock_max_reg_n_0,
      txresetdone_s3 => txresetdone_s3,
      wait_time_done => wait_time_done
    );
sync_pll1lock_cdc_sync: entity work.aurora_8b10b_aurora_8b10b_cdc_sync_4
     port map (
      init_clk_in => init_clk_in
    );
sync_run_phase_alignment_int_cdc_sync: entity work.\aurora_8b10b_aurora_8b10b_cdc_sync__parameterized5\
     port map (
      gtrxreset_o_reg => gtrxreset_o_reg,
      init_clk_in => init_clk_in,
      \out\ => run_phase_alignment_int_s2,
      run_phase_alignment_int => run_phase_alignment_int
    );
sync_time_out_wait_bypass_cdc_sync: entity work.\aurora_8b10b_aurora_8b10b_cdc_sync__parameterized7\
     port map (
      gtrxreset_o_reg => gtrxreset_o_reg,
      init_clk_in => init_clk_in,
      \out\ => time_out_wait_bypass_s2,
      time_out_wait_bypass => time_out_wait_bypass
    );
sync_tx_fsm_reset_done_int_cdc_sync: entity work.\aurora_8b10b_aurora_8b10b_cdc_sync__parameterized6\
     port map (
      gt_txresetdone_r2_reg => gt_txresetdone_r2_reg,
      gtrxreset_o_reg => gtrxreset_o_reg,
      init_clk_in => init_clk_in,
      \out\ => \^out\,
      tx_fsm_reset_done_int => tx_fsm_reset_done_int
    );
\time_out_2ms_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => time_out_2ms,
      I2 => reset_time_out,
      O => \time_out_2ms_i_1__0_n_0\
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \time_out_2ms_i_1__0_n_0\,
      Q => time_out_2ms_reg_n_0,
      R => '0'
    );
time_out_500us_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAAE"
    )
        port map (
      I0 => time_out_500us_reg_n_0,
      I1 => time_out_500us_i_2_n_0,
      I2 => time_out_500us_i_3_n_0,
      I3 => time_out_500us_i_4_n_0,
      I4 => \time_tlock_max_i_5__0_n_0\,
      I5 => reset_time_out,
      O => time_out_500us_i_1_n_0
    );
time_out_500us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(8),
      I2 => time_out_counter_reg(0),
      I3 => time_out_counter_reg(4),
      I4 => time_out_counter_reg(11),
      I5 => time_out_counter_reg(12),
      O => time_out_500us_i_2_n_0
    );
time_out_500us_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => time_out_counter_reg(10),
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(14),
      O => time_out_500us_i_3_n_0
    );
time_out_500us_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(3),
      I2 => time_out_counter_reg(6),
      I3 => time_out_counter_reg(9),
      O => time_out_500us_i_4_n_0
    );
time_out_500us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_500us_i_1_n_0,
      Q => time_out_500us_reg_n_0,
      R => '0'
    );
\time_out_counter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_2ms,
      O => time_out_counter
    );
\time_out_counter[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \time_out_counter[0]_i_8__0_n_0\,
      I1 => time_out_counter_reg(7),
      I2 => time_out_counter_reg(10),
      I3 => time_out_counter_reg(16),
      I4 => \time_out_counter[0]_i_9__0_n_0\,
      I5 => \time_tlock_max_i_3__0_n_0\,
      O => time_out_2ms
    );
\time_out_counter[0]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(3),
      O => \time_out_counter[0]_i_4__0_n_0\
    );
\time_out_counter[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(2),
      O => \time_out_counter[0]_i_5_n_0\
    );
\time_out_counter[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(1),
      O => \time_out_counter[0]_i_6_n_0\
    );
\time_out_counter[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_7_n_0\
    );
\time_out_counter[0]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(11),
      I3 => time_out_counter_reg(12),
      I4 => time_out_counter_reg(6),
      I5 => time_out_counter_reg(9),
      O => \time_out_counter[0]_i_8__0_n_0\
    );
\time_out_counter[0]_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(8),
      I2 => time_out_counter_reg(5),
      I3 => time_out_counter_reg(15),
      O => \time_out_counter[0]_i_9__0_n_0\
    );
\time_out_counter[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(15),
      O => \time_out_counter[12]_i_2_n_0\
    );
\time_out_counter[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(14),
      O => \time_out_counter[12]_i_3_n_0\
    );
\time_out_counter[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(13),
      O => \time_out_counter[12]_i_4_n_0\
    );
\time_out_counter[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(12),
      O => \time_out_counter[12]_i_5_n_0\
    );
\time_out_counter[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(16),
      O => \time_out_counter[16]_i_2_n_0\
    );
\time_out_counter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(7),
      O => \time_out_counter[4]_i_2_n_0\
    );
\time_out_counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(6),
      O => \time_out_counter[4]_i_3_n_0\
    );
\time_out_counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(5),
      O => \time_out_counter[4]_i_4_n_0\
    );
\time_out_counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(4),
      O => \time_out_counter[4]_i_5_n_0\
    );
\time_out_counter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(11),
      O => \time_out_counter[8]_i_2_n_0\
    );
\time_out_counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(10),
      O => \time_out_counter[8]_i_3_n_0\
    );
\time_out_counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(9),
      O => \time_out_counter[8]_i_4_n_0\
    );
\time_out_counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(8),
      O => \time_out_counter[8]_i_5_n_0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_7\,
      Q => time_out_counter_reg(0),
      R => reset_time_out
    );
\time_out_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_out_counter_reg[0]_i_2_n_0\,
      CO(2) => \time_out_counter_reg[0]_i_2_n_1\,
      CO(1) => \time_out_counter_reg[0]_i_2_n_2\,
      CO(0) => \time_out_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_out_counter_reg[0]_i_2_n_4\,
      O(2) => \time_out_counter_reg[0]_i_2_n_5\,
      O(1) => \time_out_counter_reg[0]_i_2_n_6\,
      O(0) => \time_out_counter_reg[0]_i_2_n_7\,
      S(3) => \time_out_counter[0]_i_4__0_n_0\,
      S(2) => \time_out_counter[0]_i_5_n_0\,
      S(1) => \time_out_counter[0]_i_6_n_0\,
      S(0) => \time_out_counter[0]_i_7_n_0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_5\,
      Q => time_out_counter_reg(10),
      R => reset_time_out
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_4\,
      Q => time_out_counter_reg(11),
      R => reset_time_out
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_7\,
      Q => time_out_counter_reg(12),
      R => reset_time_out
    );
\time_out_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[8]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[12]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[12]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[12]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[12]_i_1_n_4\,
      O(2) => \time_out_counter_reg[12]_i_1_n_5\,
      O(1) => \time_out_counter_reg[12]_i_1_n_6\,
      O(0) => \time_out_counter_reg[12]_i_1_n_7\,
      S(3) => \time_out_counter[12]_i_2_n_0\,
      S(2) => \time_out_counter[12]_i_3_n_0\,
      S(1) => \time_out_counter[12]_i_4_n_0\,
      S(0) => \time_out_counter[12]_i_5_n_0\
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_6\,
      Q => time_out_counter_reg(13),
      R => reset_time_out
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_5\,
      Q => time_out_counter_reg(14),
      R => reset_time_out
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_4\,
      Q => time_out_counter_reg(15),
      R => reset_time_out
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_7\,
      Q => time_out_counter_reg(16),
      R => reset_time_out
    );
\time_out_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \time_out_counter_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \time_out_counter[16]_i_2_n_0\
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_6\,
      Q => time_out_counter_reg(1),
      R => reset_time_out
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_5\,
      Q => time_out_counter_reg(2),
      R => reset_time_out
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_4\,
      Q => time_out_counter_reg(3),
      R => reset_time_out
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_7\,
      Q => time_out_counter_reg(4),
      R => reset_time_out
    );
\time_out_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[0]_i_2_n_0\,
      CO(3) => \time_out_counter_reg[4]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[4]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[4]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[4]_i_1_n_4\,
      O(2) => \time_out_counter_reg[4]_i_1_n_5\,
      O(1) => \time_out_counter_reg[4]_i_1_n_6\,
      O(0) => \time_out_counter_reg[4]_i_1_n_7\,
      S(3) => \time_out_counter[4]_i_2_n_0\,
      S(2) => \time_out_counter[4]_i_3_n_0\,
      S(1) => \time_out_counter[4]_i_4_n_0\,
      S(0) => \time_out_counter[4]_i_5_n_0\
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_6\,
      Q => time_out_counter_reg(5),
      R => reset_time_out
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_5\,
      Q => time_out_counter_reg(6),
      R => reset_time_out
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_4\,
      Q => time_out_counter_reg(7),
      R => reset_time_out
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_7\,
      Q => time_out_counter_reg(8),
      R => reset_time_out
    );
\time_out_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[4]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[8]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[8]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[8]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[8]_i_1_n_4\,
      O(2) => \time_out_counter_reg[8]_i_1_n_5\,
      O(1) => \time_out_counter_reg[8]_i_1_n_6\,
      O(0) => \time_out_counter_reg[8]_i_1_n_7\,
      S(3) => \time_out_counter[8]_i_2_n_0\,
      S(2) => \time_out_counter[8]_i_3_n_0\,
      S(1) => \time_out_counter[8]_i_4_n_0\,
      S(0) => \time_out_counter[8]_i_5_n_0\
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_6\,
      Q => time_out_counter_reg(9),
      R => reset_time_out
    );
time_out_wait_bypass_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => time_out_wait_bypass,
      I1 => tx_fsm_reset_done_int_s3,
      I2 => \wait_bypass_count[0]_i_4_n_0\,
      I3 => run_phase_alignment_int_s3,
      O => time_out_wait_bypass_i_1_n_0
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => time_out_wait_bypass_i_1_n_0,
      Q => time_out_wait_bypass,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
\time_tlock_max_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAAE"
    )
        port map (
      I0 => time_tlock_max_reg_n_0,
      I1 => \time_tlock_max_i_2__0_n_0\,
      I2 => \time_tlock_max_i_3__0_n_0\,
      I3 => \time_tlock_max_i_4__0_n_0\,
      I4 => \time_tlock_max_i_5__0_n_0\,
      I5 => reset_time_out,
      O => \time_tlock_max_i_1__0_n_0\
    );
\time_tlock_max_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(8),
      I2 => time_out_counter_reg(11),
      I3 => time_out_counter_reg(3),
      I4 => time_out_counter_reg(6),
      I5 => time_out_counter_reg(9),
      O => \time_tlock_max_i_2__0_n_0\
    );
\time_tlock_max_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(0),
      I2 => time_out_counter_reg(14),
      I3 => time_out_counter_reg(13),
      O => \time_tlock_max_i_3__0_n_0\
    );
\time_tlock_max_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(10),
      O => \time_tlock_max_i_4__0_n_0\
    );
\time_tlock_max_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(15),
      I3 => time_out_counter_reg(16),
      O => \time_tlock_max_i_5__0_n_0\
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \time_tlock_max_i_1__0_n_0\,
      Q => time_tlock_max_reg_n_0,
      R => '0'
    );
tx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(2),
      I3 => tx_state(1),
      I4 => tx_fsm_reset_done_int,
      O => tx_fsm_reset_done_int_i_1_n_0
    );
tx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => tx_fsm_reset_done_int_i_1_n_0,
      Q => tx_fsm_reset_done_int,
      R => AR(0)
    );
tx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => \^out\,
      Q => tx_fsm_reset_done_int_s3,
      R => '0'
    );
txresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => txresetdone_s2,
      Q => txresetdone_s3,
      R => '0'
    );
\wait_bypass_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => run_phase_alignment_int_s3,
      O => clear
    );
\wait_bypass_count[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => wait_bypass_count_reg(16),
      I1 => wait_bypass_count_reg(12),
      I2 => wait_bypass_count_reg(5),
      I3 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_10_n_0\
    );
\wait_bypass_count[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => wait_bypass_count_reg(11),
      I1 => wait_bypass_count_reg(6),
      I2 => wait_bypass_count_reg(10),
      I3 => wait_bypass_count_reg(14),
      I4 => wait_bypass_count_reg(15),
      I5 => wait_bypass_count_reg(4),
      O => \wait_bypass_count[0]_i_11_n_0\
    );
\wait_bypass_count[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wait_bypass_count[0]_i_4_n_0\,
      I1 => tx_fsm_reset_done_int_s3,
      O => \wait_bypass_count[0]_i_2_n_0\
    );
\wait_bypass_count[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \wait_bypass_count[0]_i_9_n_0\,
      I1 => \wait_bypass_count[0]_i_10_n_0\,
      I2 => wait_bypass_count_reg(13),
      I3 => wait_bypass_count_reg(2),
      I4 => wait_bypass_count_reg(9),
      I5 => \wait_bypass_count[0]_i_11_n_0\,
      O => \wait_bypass_count[0]_i_4_n_0\
    );
\wait_bypass_count[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(3),
      O => \wait_bypass_count[0]_i_5_n_0\
    );
\wait_bypass_count[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(2),
      O => \wait_bypass_count[0]_i_6_n_0\
    );
\wait_bypass_count[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(1),
      O => \wait_bypass_count[0]_i_7_n_0\
    );
\wait_bypass_count[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_8_n_0\
    );
\wait_bypass_count[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(7),
      I1 => wait_bypass_count_reg(8),
      I2 => wait_bypass_count_reg(1),
      I3 => wait_bypass_count_reg(3),
      O => \wait_bypass_count[0]_i_9_n_0\
    );
\wait_bypass_count[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(15),
      O => \wait_bypass_count[12]_i_2_n_0\
    );
\wait_bypass_count[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(14),
      O => \wait_bypass_count[12]_i_3_n_0\
    );
\wait_bypass_count[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(13),
      O => \wait_bypass_count[12]_i_4_n_0\
    );
\wait_bypass_count[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(12),
      O => \wait_bypass_count[12]_i_5_n_0\
    );
\wait_bypass_count[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(16),
      O => \wait_bypass_count[16]_i_2_n_0\
    );
\wait_bypass_count[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(7),
      O => \wait_bypass_count[4]_i_2_n_0\
    );
\wait_bypass_count[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(6),
      O => \wait_bypass_count[4]_i_3_n_0\
    );
\wait_bypass_count[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(5),
      O => \wait_bypass_count[4]_i_4_n_0\
    );
\wait_bypass_count[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(4),
      O => \wait_bypass_count[4]_i_5_n_0\
    );
\wait_bypass_count[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(11),
      O => \wait_bypass_count[8]_i_2_n_0\
    );
\wait_bypass_count[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(10),
      O => \wait_bypass_count[8]_i_3_n_0\
    );
\wait_bypass_count[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(9),
      O => \wait_bypass_count[8]_i_4_n_0\
    );
\wait_bypass_count[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wait_bypass_count_reg(8),
      O => \wait_bypass_count[8]_i_5_n_0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_7\,
      Q => wait_bypass_count_reg(0),
      R => clear
    );
\wait_bypass_count_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(2) => \wait_bypass_count_reg[0]_i_3_n_1\,
      CO(1) => \wait_bypass_count_reg[0]_i_3_n_2\,
      CO(0) => \wait_bypass_count_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_bypass_count_reg[0]_i_3_n_4\,
      O(2) => \wait_bypass_count_reg[0]_i_3_n_5\,
      O(1) => \wait_bypass_count_reg[0]_i_3_n_6\,
      O(0) => \wait_bypass_count_reg[0]_i_3_n_7\,
      S(3) => \wait_bypass_count[0]_i_5_n_0\,
      S(2) => \wait_bypass_count[0]_i_6_n_0\,
      S(1) => \wait_bypass_count[0]_i_7_n_0\,
      S(0) => \wait_bypass_count[0]_i_8_n_0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_5\,
      Q => wait_bypass_count_reg(10),
      R => clear
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_4\,
      Q => wait_bypass_count_reg(11),
      R => clear
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_7\,
      Q => wait_bypass_count_reg(12),
      R => clear
    );
\wait_bypass_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(3) => \wait_bypass_count_reg[12]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[12]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[12]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[12]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[12]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[12]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[12]_i_1_n_7\,
      S(3) => \wait_bypass_count[12]_i_2_n_0\,
      S(2) => \wait_bypass_count[12]_i_3_n_0\,
      S(1) => \wait_bypass_count[12]_i_4_n_0\,
      S(0) => \wait_bypass_count[12]_i_5_n_0\
    );
\wait_bypass_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_6\,
      Q => wait_bypass_count_reg(13),
      R => clear
    );
\wait_bypass_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_5\,
      Q => wait_bypass_count_reg(14),
      R => clear
    );
\wait_bypass_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_4\,
      Q => wait_bypass_count_reg(15),
      R => clear
    );
\wait_bypass_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[16]_i_1_n_7\,
      Q => wait_bypass_count_reg(16),
      R => clear
    );
\wait_bypass_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \wait_bypass_count_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \wait_bypass_count[16]_i_2_n_0\
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_6\,
      Q => wait_bypass_count_reg(1),
      R => clear
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_5\,
      Q => wait_bypass_count_reg(2),
      R => clear
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_4\,
      Q => wait_bypass_count_reg(3),
      R => clear
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_7\,
      Q => wait_bypass_count_reg(4),
      R => clear
    );
\wait_bypass_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(3) => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[4]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[4]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[4]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[4]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[4]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[4]_i_1_n_7\,
      S(3) => \wait_bypass_count[4]_i_2_n_0\,
      S(2) => \wait_bypass_count[4]_i_3_n_0\,
      S(1) => \wait_bypass_count[4]_i_4_n_0\,
      S(0) => \wait_bypass_count[4]_i_5_n_0\
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_6\,
      Q => wait_bypass_count_reg(5),
      R => clear
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_5\,
      Q => wait_bypass_count_reg(6),
      R => clear
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_4\,
      Q => wait_bypass_count_reg(7),
      R => clear
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_7\,
      Q => wait_bypass_count_reg(8),
      R => clear
    );
\wait_bypass_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(3) => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[8]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[8]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[8]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[8]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[8]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[8]_i_1_n_7\,
      S(3) => \wait_bypass_count[8]_i_2_n_0\,
      S(2) => \wait_bypass_count[8]_i_3_n_0\,
      S(1) => \wait_bypass_count[8]_i_4_n_0\,
      S(0) => \wait_bypass_count[8]_i_5_n_0\
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_6\,
      Q => wait_bypass_count_reg(9),
      R => clear
    );
\wait_time_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1030"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(3),
      I2 => tx_state(0),
      I3 => tx_state(1),
      O => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_done,
      O => sel
    );
\wait_time_cnt[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(3),
      O => \wait_time_cnt[0]_i_4_n_0\
    );
\wait_time_cnt[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(2),
      O => \wait_time_cnt[0]_i_5_n_0\
    );
\wait_time_cnt[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      O => \wait_time_cnt[0]_i_6_n_0\
    );
\wait_time_cnt[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      O => \wait_time_cnt[0]_i_7_n_0\
    );
\wait_time_cnt[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(15),
      O => \wait_time_cnt[12]_i_2_n_0\
    );
\wait_time_cnt[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(14),
      O => \wait_time_cnt[12]_i_3_n_0\
    );
\wait_time_cnt[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(13),
      O => \wait_time_cnt[12]_i_4_n_0\
    );
\wait_time_cnt[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(12),
      O => \wait_time_cnt[12]_i_5_n_0\
    );
\wait_time_cnt[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(7),
      O => \wait_time_cnt[4]_i_2_n_0\
    );
\wait_time_cnt[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      O => \wait_time_cnt[4]_i_3_n_0\
    );
\wait_time_cnt[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(5),
      O => \wait_time_cnt[4]_i_4_n_0\
    );
\wait_time_cnt[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      O => \wait_time_cnt[4]_i_5_n_0\
    );
\wait_time_cnt[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(11),
      O => \wait_time_cnt[8]_i_2_n_0\
    );
\wait_time_cnt[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(10),
      O => \wait_time_cnt[8]_i_3_n_0\
    );
\wait_time_cnt[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(9),
      O => \wait_time_cnt[8]_i_4_n_0\
    );
\wait_time_cnt[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(8),
      O => \wait_time_cnt[8]_i_5_n_0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[0]_i_3_n_7\,
      Q => wait_time_cnt_reg(0),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_time_cnt_reg[0]_i_3_n_0\,
      CO(2) => \wait_time_cnt_reg[0]_i_3_n_1\,
      CO(1) => \wait_time_cnt_reg[0]_i_3_n_2\,
      CO(0) => \wait_time_cnt_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \wait_time_cnt_reg[0]_i_3_n_4\,
      O(2) => \wait_time_cnt_reg[0]_i_3_n_5\,
      O(1) => \wait_time_cnt_reg[0]_i_3_n_6\,
      O(0) => \wait_time_cnt_reg[0]_i_3_n_7\,
      S(3) => \wait_time_cnt[0]_i_4_n_0\,
      S(2) => \wait_time_cnt[0]_i_5_n_0\,
      S(1) => \wait_time_cnt[0]_i_6_n_0\,
      S(0) => \wait_time_cnt[0]_i_7_n_0\
    );
\wait_time_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[8]_i_1_n_5\,
      Q => wait_time_cnt_reg(10),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[8]_i_1_n_4\,
      Q => wait_time_cnt_reg(11),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[12]_i_1_n_7\,
      Q => wait_time_cnt_reg(12),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_time_cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \wait_time_cnt_reg[12]_i_1_n_1\,
      CO(1) => \wait_time_cnt_reg[12]_i_1_n_2\,
      CO(0) => \wait_time_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3) => \wait_time_cnt_reg[12]_i_1_n_4\,
      O(2) => \wait_time_cnt_reg[12]_i_1_n_5\,
      O(1) => \wait_time_cnt_reg[12]_i_1_n_6\,
      O(0) => \wait_time_cnt_reg[12]_i_1_n_7\,
      S(3) => \wait_time_cnt[12]_i_2_n_0\,
      S(2) => \wait_time_cnt[12]_i_3_n_0\,
      S(1) => \wait_time_cnt[12]_i_4_n_0\,
      S(0) => \wait_time_cnt[12]_i_5_n_0\
    );
\wait_time_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[12]_i_1_n_6\,
      Q => wait_time_cnt_reg(13),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[12]_i_1_n_5\,
      Q => wait_time_cnt_reg(14),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[12]_i_1_n_4\,
      Q => wait_time_cnt_reg(15),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[0]_i_3_n_6\,
      Q => wait_time_cnt_reg(1),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[0]_i_3_n_5\,
      Q => wait_time_cnt_reg(2),
      S => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[0]_i_3_n_4\,
      Q => wait_time_cnt_reg(3),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[4]_i_1_n_7\,
      Q => wait_time_cnt_reg(4),
      S => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_time_cnt_reg[0]_i_3_n_0\,
      CO(3) => \wait_time_cnt_reg[4]_i_1_n_0\,
      CO(2) => \wait_time_cnt_reg[4]_i_1_n_1\,
      CO(1) => \wait_time_cnt_reg[4]_i_1_n_2\,
      CO(0) => \wait_time_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \wait_time_cnt_reg[4]_i_1_n_4\,
      O(2) => \wait_time_cnt_reg[4]_i_1_n_5\,
      O(1) => \wait_time_cnt_reg[4]_i_1_n_6\,
      O(0) => \wait_time_cnt_reg[4]_i_1_n_7\,
      S(3) => \wait_time_cnt[4]_i_2_n_0\,
      S(2) => \wait_time_cnt[4]_i_3_n_0\,
      S(1) => \wait_time_cnt[4]_i_4_n_0\,
      S(0) => \wait_time_cnt[4]_i_5_n_0\
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[4]_i_1_n_6\,
      Q => wait_time_cnt_reg(5),
      S => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[4]_i_1_n_5\,
      Q => wait_time_cnt_reg(6),
      S => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[4]_i_1_n_4\,
      Q => wait_time_cnt_reg(7),
      S => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[8]_i_1_n_7\,
      Q => wait_time_cnt_reg(8),
      S => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_time_cnt_reg[4]_i_1_n_0\,
      CO(3) => \wait_time_cnt_reg[8]_i_1_n_0\,
      CO(2) => \wait_time_cnt_reg[8]_i_1_n_1\,
      CO(1) => \wait_time_cnt_reg[8]_i_1_n_2\,
      CO(0) => \wait_time_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \wait_time_cnt_reg[8]_i_1_n_4\,
      O(2) => \wait_time_cnt_reg[8]_i_1_n_5\,
      O(1) => \wait_time_cnt_reg[8]_i_1_n_6\,
      O(0) => \wait_time_cnt_reg[8]_i_1_n_7\,
      S(3) => \wait_time_cnt[8]_i_2_n_0\,
      S(2) => \wait_time_cnt[8]_i_3_n_0\,
      S(1) => \wait_time_cnt[8]_i_4_n_0\,
      S(0) => \wait_time_cnt[8]_i_5_n_0\
    );
\wait_time_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[8]_i_1_n_6\,
      Q => wait_time_cnt_reg(9),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_AURORA_LANE is
  port (
    ready_r : out STD_LOGIC;
    lane_up : out STD_LOGIC;
    link_reset_out : out STD_LOGIC;
    ena_comma_align_i : out STD_LOGIC;
    comma_over_two_cycles_r : out STD_LOGIC;
    tx_reset_i : out STD_LOGIC;
    TXCHARISK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rx_scp_i : out STD_LOGIC;
    rx_ecp_i : out STD_LOGIC;
    hard_err_flop_r_reg : out STD_LOGIC;
    GOT_V : out STD_LOGIC;
    HARD_ERR : out STD_LOGIC;
    RX_PAD : out STD_LOGIC;
    rx_polarity_i : out STD_LOGIC;
    left_aligned_r_reg : out STD_LOGIC;
    first_v_received_r : out STD_LOGIC;
    rx_pe_data_v_i : out STD_LOGIC;
    in_frame_r_reg : out STD_LOGIC;
    RX_SRC_RDY_N_reg_inv : out STD_LOGIC;
    RX_EOF_N_reg : out STD_LOGIC;
    TXDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \storage_r_reg[0]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CHANNEL_SOFT_ERR_reg : out STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    init_clk_in : in STD_LOGIC;
    GEN_PAD : in STD_LOGIC;
    TX_PE_DATA_V : in STD_LOGIC;
    gen_cc_i : in STD_LOGIC;
    GEN_ECP : in STD_LOGIC;
    GEN_SCP : in STD_LOGIC;
    gen_a_i : in STD_LOGIC;
    left_aligned_r_reg_0 : in STD_LOGIC;
    left_aligned_r_reg_1 : in STD_LOGIC;
    hard_err_flop_r0 : in STD_LOGIC;
    first_v_received_r_reg : in STD_LOGIC;
    in_frame_r : in STD_LOGIC;
    START_RX : in STD_LOGIC;
    storage_v_r : in STD_LOGIC;
    rst_r_reg : in STD_LOGIC;
    rx_realign_i : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_v_flop_0_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_r_flop_0_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_k_flop_0_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    left_aligned_r_reg_2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    left_aligned_r_reg_3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gtrxreset_o_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_AURORA_LANE : entity is "aurora_8b10b_AURORA_LANE";
end aurora_8b10b_aurora_8b10b_AURORA_LANE;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_AURORA_LANE is
  signal RX_CC : STD_LOGIC;
  signal RX_NEG : STD_LOGIC;
  signal ack_r : STD_LOGIC;
  signal counter3_r0 : STD_LOGIC;
  signal counter4_r0 : STD_LOGIC;
  signal gen_k_i : STD_LOGIC;
  signal gen_sp_data_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gen_spa_data_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal lane_init_sm_i_n_7 : STD_LOGIC;
  signal polarity_r : STD_LOGIC;
  signal \^ready_r\ : STD_LOGIC;
  signal ready_r_reg0 : STD_LOGIC;
  signal send_sp_c : STD_LOGIC;
  signal sym_dec_i_n_14 : STD_LOGIC;
  signal sym_gen_i_n_2 : STD_LOGIC;
begin
  ready_r <= \^ready_r\;
aurora_8b10b_hotplug_i: entity work.aurora_8b10b_aurora_8b10b_hotplug
     port map (
      D(0) => RX_CC,
      SR(0) => SR(0),
      gtrxreset_o_reg => gtrxreset_o_reg,
      init_clk_in => init_clk_in,
      link_reset_out => link_reset_out
    );
err_detect_i: entity work.aurora_8b10b_aurora_8b10b_ERR_DETECT
     port map (
      CHANNEL_SOFT_ERR_reg => CHANNEL_SOFT_ERR_reg,
      HARD_ERR => HARD_ERR,
      SR(0) => lane_init_sm_i_n_7,
      gtrxreset_o_reg => gtrxreset_o_reg,
      gtrxreset_o_reg_0(1 downto 0) => gtrxreset_o_reg_0(1 downto 0),
      hard_err_flop_r0 => hard_err_flop_r0,
      hard_err_flop_r_reg_0 => hard_err_flop_r_reg,
      ready_r_reg0 => ready_r_reg0,
      reset_lanes_flop_i(0) => SR(0)
    );
lane_init_sm_i: entity work.aurora_8b10b_aurora_8b10b_LANE_INIT_SM
     port map (
      D(1) => gen_sp_data_i(0),
      D(0) => send_sp_c,
      RX_NEG => RX_NEG,
      RX_NEG_reg => sym_dec_i_n_14,
      SR(0) => SR(0),
      ack_r => ack_r,
      align_r_reg_0 => tx_reset_i,
      comma_over_two_cycles_r => comma_over_two_cycles_r,
      counter3_r0 => counter3_r0,
      counter4_r0 => counter4_r0,
      gen_k_i => gen_k_i,
      gen_spa_data_i(0) => gen_spa_data_i(0),
      \gen_spa_data_r_reg[1]\ => sym_gen_i_n_2,
      gtrxreset_o_reg => gtrxreset_o_reg,
      gtrxreset_o_reg_0(1 downto 0) => D(1 downto 0),
      hard_err_flop_r_reg(0) => lane_init_sm_i_n_7,
      lane_up => lane_up,
      lane_up_flop_i_0 => \^ready_r\,
      polarity_r => polarity_r,
      ready_r_reg0 => ready_r_reg0,
      realign_r_reg_0 => ena_comma_align_i,
      rst_r_reg_0 => rst_r_reg,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i
    );
sym_dec_i: entity work.aurora_8b10b_aurora_8b10b_SYM_DEC
     port map (
      D(0) => RX_CC,
      GOT_V => GOT_V,
      RX_EOF_N_reg => rx_ecp_i,
      RX_EOF_N_reg_0 => RX_EOF_N_reg,
      RX_NEG => RX_NEG,
      RX_PAD => RX_PAD,
      RX_SRC_RDY_N_reg_inv => RX_SRC_RDY_N_reg_inv,
      SR(0) => SR(0),
      START_RX => START_RX,
      ack_r => ack_r,
      ack_r_reg => sym_dec_i_n_14,
      counter3_r0 => counter3_r0,
      counter4_r0 => counter4_r0,
      first_v_received_r => first_v_received_r,
      first_v_received_r_reg_0 => first_v_received_r_reg,
      gtrxreset_o_reg => gtrxreset_o_reg,
      in_frame_r => in_frame_r,
      in_frame_r_reg => in_frame_r_reg,
      left_aligned_r_reg_0 => left_aligned_r_reg,
      left_aligned_r_reg_1 => left_aligned_r_reg_0,
      left_aligned_r_reg_2 => left_aligned_r_reg_1,
      left_aligned_r_reg_3(7 downto 0) => left_aligned_r_reg_2(7 downto 0),
      left_aligned_r_reg_4(7 downto 0) => left_aligned_r_reg_3(7 downto 0),
      polarity_r => polarity_r,
      ready_r => \^ready_r\,
      rx_pe_data_v_i => rx_pe_data_v_i,
      rx_scp_i => rx_scp_i,
      \storage_r_reg[0]\(15 downto 0) => \storage_r_reg[0]\(15 downto 0),
      storage_v_r => storage_v_r
    );
sym_gen_i: entity work.aurora_8b10b_aurora_8b10b_SYM_GEN
     port map (
      D(1) => gen_sp_data_i(0),
      D(0) => send_sp_c,
      GEN_ECP => GEN_ECP,
      GEN_PAD => GEN_PAD,
      GEN_SCP => GEN_SCP,
      Q(15 downto 0) => Q(15 downto 0),
      TXCHARISK(1 downto 0) => TXCHARISK(1 downto 0),
      TXDATA(15 downto 0) => TXDATA(15 downto 0),
      \TX_CHAR_IS_K_reg[0]_0\ => sym_gen_i_n_2,
      TX_PE_DATA_V => TX_PE_DATA_V,
      ack_r => ack_r,
      gen_a_i => gen_a_i,
      gen_cc_i => gen_cc_i,
      gen_k_flop_0_i(1 downto 0) => gen_k_flop_0_i(1 downto 0),
      gen_k_i => gen_k_i,
      gen_r_flop_0_i(1 downto 0) => gen_r_flop_0_i(1 downto 0),
      gen_spa_data_i(0) => gen_spa_data_i(0),
      gen_v_flop_0_i(1 downto 0) => gen_v_flop_0_i(1 downto 0),
      gtrxreset_o_reg => gtrxreset_o_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_gt is
  port (
    drprdy_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rx_realign_i : out STD_LOGIC;
    rxfsm_rxresetdone_r_reg : out STD_LOGIC;
    tx_out_clk_i : out STD_LOGIC;
    txfsm_txresetdone_r_reg : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    left_aligned_r_reg : out STD_LOGIC;
    \word_aligned_control_bits_r_reg[1]\ : out STD_LOGIC;
    \word_aligned_control_bits_r_reg[0]\ : out STD_LOGIC;
    reset_count_r_reg : out STD_LOGIC;
    \soft_err_r_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    hard_err_flop_r0 : out STD_LOGIC;
    \word_aligned_data_r_reg[8]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \word_aligned_data_r_reg[0]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    drpclk_in : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt_tx_reset_i : in STD_LOGIC;
    gt0_pll0outclk_out : in STD_LOGIC;
    gt0_pll0outrefclk_out : in STD_LOGIC;
    gt0_pll1outclk_out : in STD_LOGIC;
    gt0_pll1outrefclk_out : in STD_LOGIC;
    ena_comma_align_i : in STD_LOGIC;
    rx_polarity_i : in STD_LOGIC;
    gt_rxuserrdy_i : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    power_down : in STD_LOGIC;
    gt_txuserrdy_i : in STD_LOGIC;
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TXCHARISK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    common_reset_i : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    first_v_received_r : in STD_LOGIC;
    left_aligned_r_reg_0 : in STD_LOGIC;
    tx_reset_i : in STD_LOGIC;
    comma_over_two_cycles_r : in STD_LOGIC;
    ready_r : in STD_LOGIC;
    bucket_full_r_reg : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpen_in : in STD_LOGIC;
    drpwe_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_gt : entity is "aurora_8b10b_gt";
end aurora_8b10b_aurora_8b10b_gt;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_gt is
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal drp_op_done : STD_LOGIC;
  signal drpaddr_i : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal drpdi_i : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^drpdo_out\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal drpen_i : STD_LOGIC;
  signal \^drprdy_out\ : STD_LOGIC;
  signal drpwe_i : STD_LOGIC;
  signal gtpe2_i_n_1 : STD_LOGIC;
  signal gtpe2_i_n_102 : STD_LOGIC;
  signal gtpe2_i_n_104 : STD_LOGIC;
  signal gtpe2_i_n_105 : STD_LOGIC;
  signal gtpe2_i_n_14 : STD_LOGIC;
  signal gtpe2_i_n_24 : STD_LOGIC;
  signal gtpe2_i_n_28 : STD_LOGIC;
  signal gtpe2_i_n_29 : STD_LOGIC;
  signal gtpe2_i_n_39 : STD_LOGIC;
  signal gtpe2_i_n_40 : STD_LOGIC;
  signal gtpe2_i_n_48 : STD_LOGIC;
  signal gtpe2_i_n_49 : STD_LOGIC;
  signal gtpe2_i_n_50 : STD_LOGIC;
  signal gtpe2_i_n_51 : STD_LOGIC;
  signal gtpe2_i_n_52 : STD_LOGIC;
  signal gtpe2_i_n_53 : STD_LOGIC;
  signal gtpe2_i_n_54 : STD_LOGIC;
  signal gtpe2_i_n_55 : STD_LOGIC;
  signal gtpe2_i_n_56 : STD_LOGIC;
  signal gtpe2_i_n_57 : STD_LOGIC;
  signal gtpe2_i_n_58 : STD_LOGIC;
  signal gtpe2_i_n_59 : STD_LOGIC;
  signal gtpe2_i_n_60 : STD_LOGIC;
  signal gtpe2_i_n_61 : STD_LOGIC;
  signal gtpe2_i_n_62 : STD_LOGIC;
  signal gtpe2_i_n_7 : STD_LOGIC;
  signal gtpe2_i_n_9 : STD_LOGIC;
  signal gtpe2_i_n_95 : STD_LOGIC;
  signal gtpe2_i_n_96 : STD_LOGIC;
  signal gtrxreset_out : STD_LOGIC;
  signal gtrxreset_seq_i_n_10 : STD_LOGIC;
  signal gtrxreset_seq_i_n_11 : STD_LOGIC;
  signal gtrxreset_seq_i_n_2 : STD_LOGIC;
  signal gtrxreset_seq_i_n_3 : STD_LOGIC;
  signal gtrxreset_seq_i_n_4 : STD_LOGIC;
  signal gtrxreset_seq_i_n_5 : STD_LOGIC;
  signal gtrxreset_seq_i_n_6 : STD_LOGIC;
  signal gtrxreset_seq_i_n_7 : STD_LOGIC;
  signal gtrxreset_seq_i_n_8 : STD_LOGIC;
  signal gtrxreset_seq_i_n_9 : STD_LOGIC;
  signal left_aligned_r_i_2_n_0 : STD_LOGIC;
  signal rd_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rx_buf_err_i : STD_LOGIC;
  signal rx_char_is_k_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rx_data_i : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rx_disp_err_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rx_not_in_table_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^rx_realign_i\ : STD_LOGIC;
  signal tx_buf_err_i : STD_LOGIC;
  signal NLW_gtpe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXPMARESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXCHBONDO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_gtpe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_gtpe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gtpe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gtpe2_i_RXSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gtpe2_i : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of gtpe2_i_i_23 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of gtpe2_i_i_27 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \word_aligned_control_bits_r[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \word_aligned_control_bits_r[1]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \word_aligned_data_r[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \word_aligned_data_r[10]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \word_aligned_data_r[11]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \word_aligned_data_r[12]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \word_aligned_data_r[13]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \word_aligned_data_r[14]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \word_aligned_data_r[15]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \word_aligned_data_r[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \word_aligned_data_r[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \word_aligned_data_r[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \word_aligned_data_r[4]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \word_aligned_data_r[5]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \word_aligned_data_r[6]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \word_aligned_data_r[7]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \word_aligned_data_r[8]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \word_aligned_data_r[9]_i_1\ : label is "soft_lutpair42";
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  drpdo_out(15 downto 0) <= \^drpdo_out\(15 downto 0);
  drprdy_out <= \^drprdy_out\;
  rx_realign_i <= \^rx_realign_i\;
gtpe2_i: unisim.vcomponents.GTPE2_CHANNEL
    generic map(
      ACJTAG_DEBUG_MODE => '0',
      ACJTAG_MODE => '0',
      ACJTAG_RESET => '0',
      ADAPT_CFG0 => B"00000000000000000000",
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"1111111111",
      ALIGN_COMMA_WORD => 2,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CFOK_CFG => B"1001001000000000000000001000000111010000000",
      CFOK_CFG2 => B"0100000",
      CFOK_CFG3 => B"0100000",
      CFOK_CFG4 => '0',
      CFOK_CFG5 => B"00",
      CFOK_CFG6 => B"0000",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 7,
      CHAN_BOND_SEQ_1_1 => B"0101111100",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"0001",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"0000",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_COMMON_SWING => '0',
      CLK_CORRECT_USE => "TRUE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 17,
      CLK_COR_MIN_LAT => 12,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0111110111",
      CLK_COR_SEQ_1_2 => B"0111110111",
      CLK_COR_SEQ_1_3 => B"0100000000",
      CLK_COR_SEQ_1_4 => B"0100000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0100000000",
      CLK_COR_SEQ_2_2 => B"0100000000",
      CLK_COR_SEQ_2_3 => B"0100000000",
      CLK_COR_SEQ_2_4 => B"0100000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "FALSE",
      CLK_COR_SEQ_LEN => 2,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DMONITOR_CFG => X"000A00",
      ES_CLK_PHASE_SEL => '0',
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "FALSE",
      ES_HORZ_OFFSET => X"010",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CLKRSVD0_INVERTED => '0',
      IS_CLKRSVD1_INVERTED => '0',
      IS_DMONITORCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_SIGVALIDCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      LOOPBACK_CFG => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"3C",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_LOOPBACK_CFG => '0',
      PMA_RSV => X"00000333",
      PMA_RSV2 => X"00002040",
      PMA_RSV3 => B"00",
      PMA_RSV4 => B"0000",
      PMA_RSV5 => '0',
      PMA_RSV6 => '0',
      PMA_RSV7 => '0',
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FULL",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 61,
      RXBUF_THRESH_OVRD => "FALSE",
      RXBUF_THRESH_UNDFLW => 4,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"0000107FE106001041010",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"001001",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPMRESET_TIME => B"0001111",
      RXLPM_BIAS_STARTUP_DISABLE => '0',
      RXLPM_CFG => B"0110",
      RXLPM_CFG1 => '0',
      RXLPM_CM_CFG => '0',
      RXLPM_GC_CFG => B"111100010",
      RXLPM_GC_CFG2 => B"001",
      RXLPM_HF_CFG => B"00001111110000",
      RXLPM_HF_CFG2 => B"01010",
      RXLPM_HF_CFG3 => B"0000",
      RXLPM_HOLD_DURING_EIDLE => '0',
      RXLPM_INCM_CFG => '1',
      RXLPM_IPCM_CFG => '0',
      RXLPM_LF_CFG => B"000000001111110000",
      RXLPM_LF_CFG2 => B"01010",
      RXLPM_OSINT_CFG => B"100",
      RXOOB_CFG => B"0000110",
      RXOOB_CLK_CFG => "PMA",
      RXOSCALRESET_TIME => B"00011",
      RXOSCALRESET_TIMEOUT => B"00000",
      RXOUT_DIV => 4,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"C00002",
      RXPH_MONITOR_SEL => B"00000",
      RXPI_CFG0 => B"000",
      RXPI_CFG1 => '1',
      RXPI_CFG2 => '1',
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RXSYNC_MULTILANE => '0',
      RXSYNC_OVRD => '0',
      RXSYNC_SKIP_DA => '0',
      RX_BIAS_CFG => B"0000111100110011",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 5,
      RX_CLKMUX_EN => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"1010",
      RX_DATA_WIDTH => 20,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"00000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"0101",
      SATA_BURST_VAL => B"100",
      SATA_EIDLE_VAL => B"100",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SATA_PLL_CFG => "VCO_3000MHZ",
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "FALSE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "2.0",
      TERM_RCAL_CFG => B"100001000010000",
      TERM_RCAL_OVRD => B"000",
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOOB_CFG => '0',
      TXOUT_DIV => 4,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPI_CFG0 => B"00",
      TXPI_CFG1 => B"00",
      TXPI_CFG2 => B"00",
      TXPI_CFG3 => '0',
      TXPI_CFG4 => '0',
      TXPI_CFG5 => B"000",
      TXPI_GREY_SEL => '0',
      TXPI_INVSTROBE_SEL => '0',
      TXPI_PPMCLK_SEL => "TXUSRCLK2",
      TXPI_PPM_CFG => B"00000000",
      TXPI_SYNFREQ_PPM => B"000",
      TXPMARESET_TIME => B"00001",
      TXSYNC_MULTILANE => '0',
      TXSYNC_OVRD => '0',
      TXSYNC_SKIP_DA => '0',
      TX_CLK25_DIV => 5,
      TX_CLKMUX_EN => '1',
      TX_DATA_WIDTH => 20,
      TX_DEEMPH0 => B"000000",
      TX_DEEMPH1 => B"000000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXOUT",
      UCODEER_CLR => '0',
      USE_PCS_CLK_PHASE_SEL => '0'
    )
        port map (
      CFGRESET => '0',
      CLKRSVD0 => '0',
      CLKRSVD1 => '0',
      DMONFIFORESET => '0',
      DMONITORCLK => '0',
      DMONITOROUT(14) => gtpe2_i_n_48,
      DMONITOROUT(13) => gtpe2_i_n_49,
      DMONITOROUT(12) => gtpe2_i_n_50,
      DMONITOROUT(11) => gtpe2_i_n_51,
      DMONITOROUT(10) => gtpe2_i_n_52,
      DMONITOROUT(9) => gtpe2_i_n_53,
      DMONITOROUT(8) => gtpe2_i_n_54,
      DMONITOROUT(7) => gtpe2_i_n_55,
      DMONITOROUT(6) => gtpe2_i_n_56,
      DMONITOROUT(5) => gtpe2_i_n_57,
      DMONITOROUT(4) => gtpe2_i_n_58,
      DMONITOROUT(3) => gtpe2_i_n_59,
      DMONITOROUT(2) => gtpe2_i_n_60,
      DMONITOROUT(1) => gtpe2_i_n_61,
      DMONITOROUT(0) => gtpe2_i_n_62,
      DRPADDR(8) => gtrxreset_seq_i_n_2,
      DRPADDR(7) => gtrxreset_seq_i_n_3,
      DRPADDR(6) => gtrxreset_seq_i_n_4,
      DRPADDR(5) => gtrxreset_seq_i_n_5,
      DRPADDR(4) => drpaddr_i(4),
      DRPADDR(3) => gtrxreset_seq_i_n_6,
      DRPADDR(2) => gtrxreset_seq_i_n_7,
      DRPADDR(1) => gtrxreset_seq_i_n_8,
      DRPADDR(0) => drpaddr_i(0),
      DRPCLK => drpclk_in,
      DRPDI(15 downto 0) => drpdi_i(15 downto 0),
      DRPDO(15 downto 0) => \^drpdo_out\(15 downto 0),
      DRPEN => drpen_i,
      DRPRDY => \^drprdy_out\,
      DRPWE => drpwe_i,
      EYESCANDATAERROR => gtpe2_i_n_1,
      EYESCANMODE => '0',
      EYESCANRESET => '0',
      EYESCANTRIGGER => '0',
      GTPRXN => rxn,
      GTPRXP => rxp,
      GTPTXN => txn,
      GTPTXP => txp,
      GTRESETSEL => '0',
      GTRSVD(15 downto 0) => B"0000000000000000",
      GTRXRESET => gtrxreset_out,
      GTTXRESET => gt_tx_reset_i,
      LOOPBACK(2 downto 0) => loopback(2 downto 0),
      PCSRSVDIN(15 downto 0) => B"0000000000000000",
      PCSRSVDOUT(15 downto 0) => NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtpe2_i_PHYSTATUS_UNCONNECTED,
      PLL0CLK => gt0_pll0outclk_out,
      PLL0REFCLK => gt0_pll0outrefclk_out,
      PLL1CLK => gt0_pll1outclk_out,
      PLL1REFCLK => gt0_pll1outrefclk_out,
      PMARSVDIN0 => '0',
      PMARSVDIN1 => '0',
      PMARSVDIN2 => '0',
      PMARSVDIN3 => '0',
      PMARSVDIN4 => '0',
      PMARSVDOUT0 => NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED,
      PMARSVDOUT1 => NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED,
      RESETOVRD => '0',
      RX8B10BEN => '1',
      RXADAPTSELTEST(13 downto 0) => B"00000000000000",
      RXBUFRESET => '0',
      RXBUFSTATUS(2) => rx_buf_err_i,
      RXBUFSTATUS(1) => gtpe2_i_n_104,
      RXBUFSTATUS(0) => gtpe2_i_n_105,
      RXBYTEISALIGNED => gtpe2_i_n_7,
      RXBYTEREALIGN => \^rx_realign_i\,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => '0',
      RXCDRLOCK => gtpe2_i_n_9,
      RXCDROVRDEN => '0',
      RXCDRRESET => '0',
      RXCDRRESETRSV => '0',
      RXCHANBONDSEQ => NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED,
      RXCHANISALIGNED => NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED,
      RXCHANREALIGN => NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED,
      RXCHARISCOMMA(3 downto 2) => NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED(3 downto 2),
      RXCHARISCOMMA(1 downto 0) => \^d\(1 downto 0),
      RXCHARISK(3 downto 2) => NLW_gtpe2_i_RXCHARISK_UNCONNECTED(3 downto 2),
      RXCHARISK(1 downto 0) => rx_char_is_k_i(1 downto 0),
      RXCHBONDEN => '0',
      RXCHBONDI(3 downto 0) => B"0000",
      RXCHBONDLEVEL(2 downto 0) => B"000",
      RXCHBONDMASTER => '0',
      RXCHBONDO(3 downto 0) => NLW_gtpe2_i_RXCHBONDO_UNCONNECTED(3 downto 0),
      RXCHBONDSLAVE => '0',
      RXCLKCORCNT(1) => gtpe2_i_n_95,
      RXCLKCORCNT(0) => gtpe2_i_n_96,
      RXCOMINITDET => NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => gtpe2_i_n_14,
      RXCOMMADETEN => '1',
      RXCOMSASDET => NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(31 downto 16) => NLW_gtpe2_i_RXDATA_UNCONNECTED(31 downto 16),
      RXDATA(15 downto 0) => rx_data_i(15 downto 0),
      RXDATAVALID(1 downto 0) => NLW_gtpe2_i_RXDATAVALID_UNCONNECTED(1 downto 0),
      RXDDIEN => '0',
      RXDFEXYDEN => '0',
      RXDISPERR(3 downto 2) => NLW_gtpe2_i_RXDISPERR_UNCONNECTED(3 downto 2),
      RXDISPERR(1 downto 0) => rx_disp_err_i(1 downto 0),
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtpe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1 downto 0) => B"11",
      RXGEARBOXSLIP => '0',
      RXHEADER(2 downto 0) => NLW_gtpe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFOVRDEN => '0',
      RXLPMOSINTNTRLEN => '0',
      RXLPMRESET => '0',
      RXMCOMMAALIGNEN => ena_comma_align_i,
      RXNOTINTABLE(3 downto 2) => NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED(3 downto 2),
      RXNOTINTABLE(1 downto 0) => rx_not_in_table_i(1 downto 0),
      RXOOBRESET => '0',
      RXOSCALRESET => '0',
      RXOSHOLD => '0',
      RXOSINTCFG(3 downto 0) => B"0010",
      RXOSINTDONE => NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED,
      RXOSINTEN => '1',
      RXOSINTHOLD => '0',
      RXOSINTID0(3 downto 0) => B"0000",
      RXOSINTNTRLEN => '0',
      RXOSINTOVRDEN => '0',
      RXOSINTPD => '0',
      RXOSINTSTARTED => NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED,
      RXOSINTSTROBE => '0',
      RXOSINTSTROBEDONE => NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED,
      RXOSINTSTROBESTARTED => NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED,
      RXOSINTTESTOVRDEN => '0',
      RXOSOVRDEN => '0',
      RXOUTCLK => gtpe2_i_n_24,
      RXOUTCLKFABRIC => NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED,
      RXOUTCLKPCS => NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2 downto 0) => B"010",
      RXPCOMMAALIGNEN => ena_comma_align_i,
      RXPCSRESET => '0',
      RXPD(1) => power_down,
      RXPD(0) => power_down,
      RXPHALIGN => '0',
      RXPHALIGNDONE => NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => '0',
      RXPHDLYPD => '0',
      RXPHDLYRESET => '0',
      RXPHMONITOR(4 downto 0) => NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => '0',
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => '0',
      RXPMARESETDONE => gtpe2_i_n_28,
      RXPOLARITY => rx_polarity_i,
      RXPRBSCNTRESET => '0',
      RXPRBSERR => gtpe2_i_n_29,
      RXPRBSSEL(2 downto 0) => B"000",
      RXRATE(2 downto 0) => B"000",
      RXRATEDONE => NLW_gtpe2_i_RXRATEDONE_UNCONNECTED,
      RXRATEMODE => '0',
      RXRESETDONE => rxfsm_rxresetdone_r_reg,
      RXSLIDE => '0',
      RXSTARTOFSEQ(1 downto 0) => NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED(1 downto 0),
      RXSTATUS(2 downto 0) => NLW_gtpe2_i_RXSTATUS_UNCONNECTED(2 downto 0),
      RXSYNCALLIN => '0',
      RXSYNCDONE => NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED,
      RXSYNCIN => '0',
      RXSYNCMODE => '0',
      RXSYNCOUT => NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED,
      RXSYSCLKSEL(1 downto 0) => B"00",
      RXUSERRDY => gt_rxuserrdy_i,
      RXUSRCLK => gtrxreset_o_reg,
      RXUSRCLK2 => gtrxreset_o_reg,
      RXVALID => NLW_gtpe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => '0',
      SIGVALIDCLK => '0',
      TSTIN(19 downto 0) => B"11111111111111111111",
      TX8B10BBYPASS(3 downto 0) => B"0000",
      TX8B10BEN => '1',
      TXBUFDIFFCTRL(2 downto 0) => B"100",
      TXBUFSTATUS(1) => tx_buf_err_i,
      TXBUFSTATUS(0) => gtpe2_i_n_102,
      TXCHARDISPMODE(3 downto 0) => B"0000",
      TXCHARDISPVAL(3 downto 0) => B"0000",
      TXCHARISK(3 downto 2) => B"00",
      TXCHARISK(1 downto 0) => TXCHARISK(1 downto 0),
      TXCOMFINISH => NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXDATA(31 downto 16) => B"0000000000000000",
      TXDATA(15 downto 0) => TXDATA(15 downto 0),
      TXDEEMPH => '0',
      TXDETECTRX => '0',
      TXDIFFCTRL(3 downto 0) => B"1000",
      TXDIFFPD => '0',
      TXDLYBYPASS => '1',
      TXDLYEN => '0',
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => '0',
      TXDLYSRESETDONE => NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED,
      TXDLYUPDOWN => '0',
      TXELECIDLE => power_down,
      TXGEARBOXREADY => NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2 downto 0) => B"000",
      TXINHIBIT => '0',
      TXMAINCURSOR(6 downto 0) => B"0000000",
      TXMARGIN(2 downto 0) => B"000",
      TXOUTCLK => tx_out_clk_i,
      TXOUTCLKFABRIC => gtpe2_i_n_39,
      TXOUTCLKPCS => gtpe2_i_n_40,
      TXOUTCLKSEL(2 downto 0) => B"010",
      TXPCSRESET => '0',
      TXPD(1) => power_down,
      TXPD(0) => power_down,
      TXPDELECIDLEMODE => '0',
      TXPHALIGN => '0',
      TXPHALIGNDONE => NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED,
      TXPHALIGNEN => '0',
      TXPHDLYPD => '0',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => '0',
      TXPHINITDONE => NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED,
      TXPHOVRDEN => '0',
      TXPIPPMEN => '0',
      TXPIPPMOVRDEN => '0',
      TXPIPPMPD => '0',
      TXPIPPMSEL => '1',
      TXPIPPMSTEPSIZE(4 downto 0) => B"00000",
      TXPISOPD => '0',
      TXPMARESET => '0',
      TXPMARESETDONE => NLW_gtpe2_i_TXPMARESETDONE_UNCONNECTED,
      TXPOLARITY => '0',
      TXPOSTCURSOR(4 downto 0) => B"00000",
      TXPOSTCURSORINV => '0',
      TXPRBSFORCEERR => '0',
      TXPRBSSEL(2 downto 0) => B"000",
      TXPRECURSOR(4 downto 0) => B"00000",
      TXPRECURSORINV => '0',
      TXRATE(2 downto 0) => B"000",
      TXRATEDONE => NLW_gtpe2_i_TXRATEDONE_UNCONNECTED,
      TXRATEMODE => '0',
      TXRESETDONE => txfsm_txresetdone_r_reg,
      TXSEQUENCE(6 downto 0) => B"0000000",
      TXSTARTSEQ => '0',
      TXSWING => '0',
      TXSYNCALLIN => '0',
      TXSYNCDONE => NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED,
      TXSYNCIN => '0',
      TXSYNCMODE => '0',
      TXSYNCOUT => NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED,
      TXSYSCLKSEL(1 downto 0) => B"00",
      TXUSERRDY => gt_txuserrdy_i,
      TXUSRCLK => gtrxreset_o_reg,
      TXUSRCLK2 => gtrxreset_o_reg
    );
gtpe2_i_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA3C000000"
    )
        port map (
      I0 => drpdi_in(8),
      I1 => gtrxreset_seq_i_n_9,
      I2 => gtrxreset_seq_i_n_11,
      I3 => gtrxreset_seq_i_n_10,
      I4 => rd_data(8),
      I5 => drp_op_done,
      O => drpdi_i(8)
    );
gtpe2_i_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA3C000000"
    )
        port map (
      I0 => drpdi_in(7),
      I1 => gtrxreset_seq_i_n_9,
      I2 => gtrxreset_seq_i_n_11,
      I3 => gtrxreset_seq_i_n_10,
      I4 => rd_data(7),
      I5 => drp_op_done,
      O => drpdi_i(7)
    );
gtpe2_i_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA3C000000"
    )
        port map (
      I0 => drpdi_in(6),
      I1 => gtrxreset_seq_i_n_9,
      I2 => gtrxreset_seq_i_n_11,
      I3 => gtrxreset_seq_i_n_10,
      I4 => rd_data(6),
      I5 => drp_op_done,
      O => drpdi_i(6)
    );
gtpe2_i_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA3C000000"
    )
        port map (
      I0 => drpdi_in(5),
      I1 => gtrxreset_seq_i_n_9,
      I2 => gtrxreset_seq_i_n_11,
      I3 => gtrxreset_seq_i_n_10,
      I4 => rd_data(5),
      I5 => drp_op_done,
      O => drpdi_i(5)
    );
gtpe2_i_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA3C000000"
    )
        port map (
      I0 => drpdi_in(4),
      I1 => gtrxreset_seq_i_n_9,
      I2 => gtrxreset_seq_i_n_11,
      I3 => gtrxreset_seq_i_n_10,
      I4 => rd_data(4),
      I5 => drp_op_done,
      O => drpdi_i(4)
    );
gtpe2_i_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA3C000000"
    )
        port map (
      I0 => drpdi_in(3),
      I1 => gtrxreset_seq_i_n_9,
      I2 => gtrxreset_seq_i_n_11,
      I3 => gtrxreset_seq_i_n_10,
      I4 => rd_data(3),
      I5 => drp_op_done,
      O => drpdi_i(3)
    );
gtpe2_i_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA3C000000"
    )
        port map (
      I0 => drpdi_in(2),
      I1 => gtrxreset_seq_i_n_9,
      I2 => gtrxreset_seq_i_n_11,
      I3 => gtrxreset_seq_i_n_10,
      I4 => rd_data(2),
      I5 => drp_op_done,
      O => drpdi_i(2)
    );
gtpe2_i_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA3C000000"
    )
        port map (
      I0 => drpdi_in(1),
      I1 => gtrxreset_seq_i_n_9,
      I2 => gtrxreset_seq_i_n_11,
      I3 => gtrxreset_seq_i_n_10,
      I4 => rd_data(1),
      I5 => drp_op_done,
      O => drpdi_i(1)
    );
gtpe2_i_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA3C000000"
    )
        port map (
      I0 => drpdi_in(0),
      I1 => gtrxreset_seq_i_n_9,
      I2 => gtrxreset_seq_i_n_11,
      I3 => gtrxreset_seq_i_n_10,
      I4 => rd_data(0),
      I5 => drp_op_done,
      O => drpdi_i(0)
    );
gtpe2_i_i_23: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => drpaddr_in(4),
      I1 => drp_op_done,
      O => drpaddr_i(4)
    );
gtpe2_i_i_27: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => drpaddr_in(0),
      I1 => drp_op_done,
      O => drpaddr_i(0)
    );
gtpe2_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA3C000000"
    )
        port map (
      I0 => drpdi_in(15),
      I1 => gtrxreset_seq_i_n_9,
      I2 => gtrxreset_seq_i_n_11,
      I3 => gtrxreset_seq_i_n_10,
      I4 => rd_data(15),
      I5 => drp_op_done,
      O => drpdi_i(15)
    );
gtpe2_i_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA3C000000"
    )
        port map (
      I0 => drpdi_in(14),
      I1 => gtrxreset_seq_i_n_9,
      I2 => gtrxreset_seq_i_n_11,
      I3 => gtrxreset_seq_i_n_10,
      I4 => rd_data(14),
      I5 => drp_op_done,
      O => drpdi_i(14)
    );
gtpe2_i_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA3C000000"
    )
        port map (
      I0 => drpdi_in(13),
      I1 => gtrxreset_seq_i_n_9,
      I2 => gtrxreset_seq_i_n_11,
      I3 => gtrxreset_seq_i_n_10,
      I4 => rd_data(13),
      I5 => drp_op_done,
      O => drpdi_i(13)
    );
gtpe2_i_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA3C000000"
    )
        port map (
      I0 => drpdi_in(12),
      I1 => gtrxreset_seq_i_n_9,
      I2 => gtrxreset_seq_i_n_11,
      I3 => gtrxreset_seq_i_n_10,
      I4 => rd_data(12),
      I5 => drp_op_done,
      O => drpdi_i(12)
    );
gtpe2_i_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA30000000"
    )
        port map (
      I0 => drpdi_in(11),
      I1 => gtrxreset_seq_i_n_11,
      I2 => gtrxreset_seq_i_n_9,
      I3 => rd_data(11),
      I4 => gtrxreset_seq_i_n_10,
      I5 => drp_op_done,
      O => drpdi_i(11)
    );
gtpe2_i_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA3C000000"
    )
        port map (
      I0 => drpdi_in(10),
      I1 => gtrxreset_seq_i_n_9,
      I2 => gtrxreset_seq_i_n_11,
      I3 => gtrxreset_seq_i_n_10,
      I4 => rd_data(10),
      I5 => drp_op_done,
      O => drpdi_i(10)
    );
gtpe2_i_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA3C000000"
    )
        port map (
      I0 => drpdi_in(9),
      I1 => gtrxreset_seq_i_n_9,
      I2 => gtrxreset_seq_i_n_11,
      I3 => gtrxreset_seq_i_n_10,
      I4 => rd_data(9),
      I5 => drp_op_done,
      O => drpdi_i(9)
    );
gtrxreset_seq_i: entity work.aurora_8b10b_aurora_8b10b_gtrxreset_seq
     port map (
      DRPADDR(6) => gtrxreset_seq_i_n_2,
      DRPADDR(5) => gtrxreset_seq_i_n_3,
      DRPADDR(4) => gtrxreset_seq_i_n_4,
      DRPADDR(3) => gtrxreset_seq_i_n_5,
      DRPADDR(2) => gtrxreset_seq_i_n_6,
      DRPADDR(1) => gtrxreset_seq_i_n_7,
      DRPADDR(0) => gtrxreset_seq_i_n_8,
      Q(15 downto 0) => rd_data(15 downto 0),
      SR(0) => SR(0),
      common_reset_i => common_reset_i,
      drp_op_done => drp_op_done,
      drpaddr_in(6 downto 3) => drpaddr_in(8 downto 5),
      drpaddr_in(2 downto 0) => drpaddr_in(3 downto 1),
      drpclk_in => drpclk_in,
      drpdo_out(15 downto 0) => \^drpdo_out\(15 downto 0),
      drpen_i => drpen_i,
      drpen_in => drpen_in,
      drpwe_i => drpwe_i,
      drpwe_in => drpwe_in,
      gtrxreset_o_reg_0 => \^drprdy_out\,
      gtrxreset_out => gtrxreset_out,
      in0 => gtpe2_i_n_28,
      init_clk_in => init_clk_in,
      \out\(2) => gtrxreset_seq_i_n_9,
      \out\(1) => gtrxreset_seq_i_n_10,
      \out\(0) => gtrxreset_seq_i_n_11
    );
hard_err_flop_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rx_buf_err_i,
      I1 => \^rx_realign_i\,
      I2 => tx_buf_err_i,
      I3 => bucket_full_r_reg,
      O => hard_err_flop_r0
    );
left_aligned_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^d\(0),
      I1 => left_aligned_r_i_2_n_0,
      I2 => first_v_received_r,
      I3 => left_aligned_r_reg_0,
      O => left_aligned_r_reg
    );
left_aligned_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1008100810080000"
    )
        port map (
      I0 => rx_char_is_k_i(1),
      I1 => \^d\(1),
      I2 => rx_char_is_k_i(0),
      I3 => \^d\(0),
      I4 => ena_comma_align_i,
      I5 => ready_r,
      O => left_aligned_r_i_2_n_0
    );
reset_count_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => rx_disp_err_i(1),
      I1 => rx_not_in_table_i(1),
      I2 => tx_reset_i,
      I3 => comma_over_two_cycles_r,
      I4 => rx_disp_err_i(0),
      I5 => rx_not_in_table_i(0),
      O => reset_count_r_reg
    );
\soft_err_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rx_disp_err_i(0),
      I1 => rx_not_in_table_i(0),
      O => \soft_err_r_reg[0]\(1)
    );
\soft_err_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rx_disp_err_i(1),
      I1 => rx_not_in_table_i(1),
      O => \soft_err_r_reg[0]\(0)
    );
\word_aligned_control_bits_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_char_is_k_i(0),
      I1 => left_aligned_r_reg_0,
      I2 => rx_char_is_k_i(1),
      O => \word_aligned_control_bits_r_reg[0]\
    );
\word_aligned_control_bits_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_char_is_k_i(1),
      I1 => left_aligned_r_reg_0,
      I2 => rx_char_is_k_i(0),
      O => \word_aligned_control_bits_r_reg[1]\
    );
\word_aligned_data_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(7),
      I1 => left_aligned_r_reg_0,
      I2 => rx_data_i(15),
      O => \word_aligned_data_r_reg[0]\(7)
    );
\word_aligned_data_r[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(13),
      I1 => left_aligned_r_reg_0,
      I2 => rx_data_i(5),
      O => \word_aligned_data_r_reg[8]\(5)
    );
\word_aligned_data_r[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(12),
      I1 => left_aligned_r_reg_0,
      I2 => rx_data_i(4),
      O => \word_aligned_data_r_reg[8]\(4)
    );
\word_aligned_data_r[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(11),
      I1 => left_aligned_r_reg_0,
      I2 => rx_data_i(3),
      O => \word_aligned_data_r_reg[8]\(3)
    );
\word_aligned_data_r[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(10),
      I1 => left_aligned_r_reg_0,
      I2 => rx_data_i(2),
      O => \word_aligned_data_r_reg[8]\(2)
    );
\word_aligned_data_r[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(9),
      I1 => left_aligned_r_reg_0,
      I2 => rx_data_i(1),
      O => \word_aligned_data_r_reg[8]\(1)
    );
\word_aligned_data_r[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(8),
      I1 => left_aligned_r_reg_0,
      I2 => rx_data_i(0),
      O => \word_aligned_data_r_reg[8]\(0)
    );
\word_aligned_data_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(6),
      I1 => left_aligned_r_reg_0,
      I2 => rx_data_i(14),
      O => \word_aligned_data_r_reg[0]\(6)
    );
\word_aligned_data_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(5),
      I1 => left_aligned_r_reg_0,
      I2 => rx_data_i(13),
      O => \word_aligned_data_r_reg[0]\(5)
    );
\word_aligned_data_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(4),
      I1 => left_aligned_r_reg_0,
      I2 => rx_data_i(12),
      O => \word_aligned_data_r_reg[0]\(4)
    );
\word_aligned_data_r[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(3),
      I1 => left_aligned_r_reg_0,
      I2 => rx_data_i(11),
      O => \word_aligned_data_r_reg[0]\(3)
    );
\word_aligned_data_r[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(2),
      I1 => left_aligned_r_reg_0,
      I2 => rx_data_i(10),
      O => \word_aligned_data_r_reg[0]\(2)
    );
\word_aligned_data_r[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(1),
      I1 => left_aligned_r_reg_0,
      I2 => rx_data_i(9),
      O => \word_aligned_data_r_reg[0]\(1)
    );
\word_aligned_data_r[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(0),
      I1 => left_aligned_r_reg_0,
      I2 => rx_data_i(8),
      O => \word_aligned_data_r_reg[0]\(0)
    );
\word_aligned_data_r[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(15),
      I1 => left_aligned_r_reg_0,
      I2 => rx_data_i(7),
      O => \word_aligned_data_r_reg[8]\(7)
    );
\word_aligned_data_r[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(14),
      I1 => left_aligned_r_reg_0,
      I2 => rx_data_i(6),
      O => \word_aligned_data_r_reg[8]\(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_multi_gt is
  port (
    drprdy_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rx_realign_i : out STD_LOGIC;
    rxfsm_rxresetdone_r_reg : out STD_LOGIC;
    tx_out_clk_i : out STD_LOGIC;
    txfsm_txresetdone_r_reg : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    left_aligned_r_reg : out STD_LOGIC;
    \word_aligned_control_bits_r_reg[1]\ : out STD_LOGIC;
    \word_aligned_control_bits_r_reg[0]\ : out STD_LOGIC;
    reset_count_r_reg : out STD_LOGIC;
    \soft_err_r_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    hard_err_flop_r0 : out STD_LOGIC;
    \word_aligned_data_r_reg[8]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \word_aligned_data_r_reg[0]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    drpclk_in : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt_tx_reset_i : in STD_LOGIC;
    gt0_pll0outclk_out : in STD_LOGIC;
    gt0_pll0outrefclk_out : in STD_LOGIC;
    gt0_pll1outclk_out : in STD_LOGIC;
    gt0_pll1outrefclk_out : in STD_LOGIC;
    ena_comma_align_i : in STD_LOGIC;
    rx_polarity_i : in STD_LOGIC;
    gt_rxuserrdy_i : in STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    power_down : in STD_LOGIC;
    gt_txuserrdy_i : in STD_LOGIC;
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TXCHARISK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    common_reset_i : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    first_v_received_r : in STD_LOGIC;
    left_aligned_r_reg_0 : in STD_LOGIC;
    tx_reset_i : in STD_LOGIC;
    comma_over_two_cycles_r : in STD_LOGIC;
    ready_r : in STD_LOGIC;
    bucket_full_r_reg : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpen_in : in STD_LOGIC;
    drpwe_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_multi_gt : entity is "aurora_8b10b_multi_gt";
end aurora_8b10b_aurora_8b10b_multi_gt;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_multi_gt is
begin
gt0_aurora_8b10b_i: entity work.aurora_8b10b_aurora_8b10b_gt
     port map (
      D(1 downto 0) => D(1 downto 0),
      SR(0) => SR(0),
      TXCHARISK(1 downto 0) => TXCHARISK(1 downto 0),
      TXDATA(15 downto 0) => TXDATA(15 downto 0),
      bucket_full_r_reg => bucket_full_r_reg,
      comma_over_two_cycles_r => comma_over_two_cycles_r,
      common_reset_i => common_reset_i,
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in => drpclk_in,
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in => drpen_in,
      drprdy_out => drprdy_out,
      drpwe_in => drpwe_in,
      ena_comma_align_i => ena_comma_align_i,
      first_v_received_r => first_v_received_r,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      gt_rxuserrdy_i => gt_rxuserrdy_i,
      gt_tx_reset_i => gt_tx_reset_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      gtrxreset_o_reg => gtrxreset_o_reg,
      hard_err_flop_r0 => hard_err_flop_r0,
      init_clk_in => init_clk_in,
      left_aligned_r_reg => left_aligned_r_reg,
      left_aligned_r_reg_0 => left_aligned_r_reg_0,
      loopback(2 downto 0) => loopback(2 downto 0),
      power_down => power_down,
      ready_r => ready_r,
      reset_count_r_reg => reset_count_r_reg,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      rxfsm_rxresetdone_r_reg => rxfsm_rxresetdone_r_reg,
      rxn => rxn,
      rxp => rxp,
      \soft_err_r_reg[0]\(1 downto 0) => \soft_err_r_reg[0]\(1 downto 0),
      tx_out_clk_i => tx_out_clk_i,
      tx_reset_i => tx_reset_i,
      txfsm_txresetdone_r_reg => txfsm_txresetdone_r_reg,
      txn => txn,
      txp => txp,
      \word_aligned_control_bits_r_reg[0]\ => \word_aligned_control_bits_r_reg[0]\,
      \word_aligned_control_bits_r_reg[1]\ => \word_aligned_control_bits_r_reg[1]\,
      \word_aligned_data_r_reg[0]\(7 downto 0) => \word_aligned_data_r_reg[0]\(7 downto 0),
      \word_aligned_data_r_reg[8]\(7 downto 0) => \word_aligned_data_r_reg[8]\(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_GT_WRAPPER is
  port (
    \out\ : out STD_LOGIC;
    drprdy_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rx_realign_i : out STD_LOGIC;
    tx_out_clk_i : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rx_resetdone_out : out STD_LOGIC;
    common_reset_i : out STD_LOGIC;
    gt_txresetdone_r2_reg : out STD_LOGIC;
    gt_rxresetdone_r2_reg : out STD_LOGIC;
    left_aligned_r_reg : out STD_LOGIC;
    \word_aligned_control_bits_r_reg[1]\ : out STD_LOGIC;
    \word_aligned_control_bits_r_reg[0]\ : out STD_LOGIC;
    reset_count_r_reg : out STD_LOGIC;
    \soft_err_r_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    hard_err_flop_r0 : out STD_LOGIC;
    \word_aligned_data_r_reg[8]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \word_aligned_data_r_reg[0]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gtrxreset_o_reg : in STD_LOGIC;
    \cpllpd_quad0_wait_reg[95]\ : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_pll0outclk_out : in STD_LOGIC;
    gt0_pll0outrefclk_out : in STD_LOGIC;
    gt0_pll1outclk_out : in STD_LOGIC;
    gt0_pll1outrefclk_out : in STD_LOGIC;
    ena_comma_align_i : in STD_LOGIC;
    rx_polarity_i : in STD_LOGIC;
    power_down : in STD_LOGIC;
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TXCHARISK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GTRXRESET_OUT : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    link_reset_r : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    first_v_received_r : in STD_LOGIC;
    left_aligned_r_reg_0 : in STD_LOGIC;
    tx_reset_i : in STD_LOGIC;
    comma_over_two_cycles_r : in STD_LOGIC;
    ready_r : in STD_LOGIC;
    bucket_full_r_reg : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpen_in : in STD_LOGIC;
    drpwe_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_GT_WRAPPER : entity is "aurora_8b10b_GT_WRAPPER";
end aurora_8b10b_aurora_8b10b_GT_WRAPPER;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_GT_WRAPPER is
  signal aurora_8b10b_multi_gt_i_n_4 : STD_LOGIC;
  signal aurora_8b10b_multi_gt_i_n_6 : STD_LOGIC;
  signal \^common_reset_i\ : STD_LOGIC;
  signal gt0_rxresetdone_r3_reg_srl3_n_0 : STD_LOGIC;
  signal gt0_txresetdone_r3_reg_srl3_n_0 : STD_LOGIC;
  signal gt_rx_reset_i : STD_LOGIC;
  signal gt_rxuserrdy_i : STD_LOGIC;
  signal gt_tx_reset_i : STD_LOGIC;
  signal gt_txuserrdy_i : STD_LOGIC;
  signal gtrxreset_i : STD_LOGIC;
  signal gtrxreset_pulse : STD_LOGIC;
  signal gtrxreset_pulse_i_1_n_0 : STD_LOGIC;
  signal gtrxreset_r1 : STD_LOGIC;
  signal gtrxreset_r2 : STD_LOGIC;
  signal gtrxreset_r3 : STD_LOGIC;
  signal gtrxreset_sync : STD_LOGIC;
  signal link_reset_r2 : STD_LOGIC;
  signal rx_cdrlock_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \rx_cdrlock_counter0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__0_n_4\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__0_n_5\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__0_n_6\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__0_n_7\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__1_n_4\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__1_n_5\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__1_n_6\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__1_n_7\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__2_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__2_n_1\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__2_n_3\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__2_n_4\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__2_n_5\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__2_n_6\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__2_n_7\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__3_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__3_n_1\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__3_n_2\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__3_n_3\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__3_n_4\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__3_n_5\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__3_n_6\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__3_n_7\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__4_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__4_n_1\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__4_n_2\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__4_n_3\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__4_n_4\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__4_n_5\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__4_n_6\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__4_n_7\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__5_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__5_n_1\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__5_n_2\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__5_n_3\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__5_n_4\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__5_n_5\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__5_n_6\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__5_n_7\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__6_n_2\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__6_n_3\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__6_n_5\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__6_n_6\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__6_n_7\ : STD_LOGIC;
  signal rx_cdrlock_counter0_carry_i_1_n_0 : STD_LOGIC;
  signal rx_cdrlock_counter0_carry_i_2_n_0 : STD_LOGIC;
  signal rx_cdrlock_counter0_carry_i_3_n_0 : STD_LOGIC;
  signal rx_cdrlock_counter0_carry_i_4_n_0 : STD_LOGIC;
  signal rx_cdrlock_counter0_carry_n_0 : STD_LOGIC;
  signal rx_cdrlock_counter0_carry_n_1 : STD_LOGIC;
  signal rx_cdrlock_counter0_carry_n_2 : STD_LOGIC;
  signal rx_cdrlock_counter0_carry_n_3 : STD_LOGIC;
  signal rx_cdrlock_counter0_carry_n_4 : STD_LOGIC;
  signal rx_cdrlock_counter0_carry_n_5 : STD_LOGIC;
  signal rx_cdrlock_counter0_carry_n_6 : STD_LOGIC;
  signal rx_cdrlock_counter0_carry_n_7 : STD_LOGIC;
  signal \rx_cdrlock_counter[31]_i_2_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter[31]_i_3_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter[31]_i_4_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter[31]_i_5_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter[31]_i_6_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter[31]_i_7_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter[31]_i_8_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter[31]_i_9_n_0\ : STD_LOGIC;
  signal rx_cdrlock_counter_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rx_cdrlocked_i_1_n_0 : STD_LOGIC;
  signal rx_cdrlocked_reg_n_0 : STD_LOGIC;
  signal \^rx_resetdone_out\ : STD_LOGIC;
  signal rxfsm_rxresetdone_r : STD_LOGIC;
  signal rxfsm_rxresetdone_r2 : STD_LOGIC;
  signal rxfsm_soft_reset_r : STD_LOGIC;
  signal rxfsm_soft_reset_r_i_1_n_0 : STD_LOGIC;
  signal txfsm_txresetdone_r : STD_LOGIC;
  signal \NLW_rx_cdrlock_counter0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rx_cdrlock_counter0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute srl_name : string;
  attribute srl_name of gt0_rxresetdone_r3_reg_srl3 : label is "\inst/aurora_8b10b_core_i/gt_wrapper_i/gt0_rxresetdone_r3_reg_srl3 ";
  attribute srl_name of gt0_txresetdone_r3_reg_srl3 : label is "\inst/aurora_8b10b_core_i/gt_wrapper_i/gt0_txresetdone_r3_reg_srl3 ";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of gt_rx_reset_i_reg : label is "no";
  attribute equivalent_register_removal of gtrxreset_r1_reg : label is "no";
  attribute equivalent_register_removal of link_reset_r2_reg : label is "no";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[30]_i_1\ : label is "soft_lutpair61";
  attribute equivalent_register_removal of rxfsm_rxresetdone_r2_reg : label is "no";
begin
  common_reset_i <= \^common_reset_i\;
  rx_resetdone_out <= \^rx_resetdone_out\;
aurora_8b10b_multi_gt_i: entity work.aurora_8b10b_aurora_8b10b_multi_gt
     port map (
      D(1 downto 0) => D(1 downto 0),
      SR(0) => gt_rx_reset_i,
      TXCHARISK(1 downto 0) => TXCHARISK(1 downto 0),
      TXDATA(15 downto 0) => TXDATA(15 downto 0),
      bucket_full_r_reg => bucket_full_r_reg,
      comma_over_two_cycles_r => comma_over_two_cycles_r,
      common_reset_i => \^common_reset_i\,
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in => drpclk_in,
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in => drpen_in,
      drprdy_out => drprdy_out,
      drpwe_in => drpwe_in,
      ena_comma_align_i => ena_comma_align_i,
      first_v_received_r => first_v_received_r,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      gt_rxuserrdy_i => gt_rxuserrdy_i,
      gt_tx_reset_i => gt_tx_reset_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      gtrxreset_o_reg => gtrxreset_o_reg,
      hard_err_flop_r0 => hard_err_flop_r0,
      init_clk_in => init_clk_in,
      left_aligned_r_reg => left_aligned_r_reg,
      left_aligned_r_reg_0 => left_aligned_r_reg_0,
      loopback(2 downto 0) => loopback(2 downto 0),
      power_down => power_down,
      ready_r => ready_r,
      reset_count_r_reg => reset_count_r_reg,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      rxfsm_rxresetdone_r_reg => aurora_8b10b_multi_gt_i_n_4,
      rxn => rxn,
      rxp => rxp,
      \soft_err_r_reg[0]\(1 downto 0) => \soft_err_r_reg[0]\(1 downto 0),
      tx_out_clk_i => tx_out_clk_i,
      tx_reset_i => tx_reset_i,
      txfsm_txresetdone_r_reg => aurora_8b10b_multi_gt_i_n_6,
      txn => txn,
      txp => txp,
      \word_aligned_control_bits_r_reg[0]\ => \word_aligned_control_bits_r_reg[0]\,
      \word_aligned_control_bits_r_reg[1]\ => \word_aligned_control_bits_r_reg[1]\,
      \word_aligned_data_r_reg[0]\(7 downto 0) => \word_aligned_data_r_reg[0]\(7 downto 0),
      \word_aligned_data_r_reg[8]\(7 downto 0) => \word_aligned_data_r_reg[8]\(7 downto 0)
    );
gt0_rxresetdone_r3_reg_srl3: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => gtrxreset_o_reg,
      D => aurora_8b10b_multi_gt_i_n_4,
      Q => gt0_rxresetdone_r3_reg_srl3_n_0
    );
gt0_txresetdone_r3_reg_srl3: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => gtrxreset_o_reg,
      D => aurora_8b10b_multi_gt_i_n_6,
      Q => gt0_txresetdone_r3_reg_srl3_n_0
    );
gt_rx_reset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_i,
      Q => gt_rx_reset_i,
      R => '0'
    );
gt_rxresetdone_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rx_resetdone_out\,
      O => gt_rxresetdone_r2_reg
    );
gt_rxresetfsm_i: entity work.aurora_8b10b_aurora_8b10b_rx_startup_fsm
     port map (
      AR(0) => rxfsm_soft_reset_r,
      \cpllpd_quad0_wait_reg[95]\ => \cpllpd_quad0_wait_reg[95]\,
      gt_rxuserrdy_i => gt_rxuserrdy_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      gtrxreset_i => gtrxreset_i,
      gtrxreset_o_reg => gtrxreset_o_reg,
      init_clk_in => init_clk_in,
      rx_cdrlocked_reg => rx_cdrlocked_reg_n_0,
      rxfsm_rxresetdone_r => rxfsm_rxresetdone_r
    );
gt_txresetfsm_i: entity work.aurora_8b10b_aurora_8b10b_tx_startup_fsm
     port map (
      AR(0) => AR(0),
      common_reset_i => \^common_reset_i\,
      \cpllpd_quad0_wait_reg[95]\ => \cpllpd_quad0_wait_reg[95]\,
      gt_tx_reset_i => gt_tx_reset_i,
      gt_txresetdone_r2_reg => gt_txresetdone_r2_reg,
      gt_txuserrdy_i => gt_txuserrdy_i,
      gtrxreset_o_reg => gtrxreset_o_reg,
      init_clk_in => init_clk_in,
      \out\ => \out\,
      txfsm_txresetdone_r => txfsm_txresetdone_r
    );
gtrxreset_cdc_sync: entity work.\aurora_8b10b_aurora_8b10b_cdc_sync__parameterized4\
     port map (
      GTRXRESET_OUT => GTRXRESET_OUT,
      gtrxreset_o_reg => gtrxreset_o_reg,
      init_clk_in => init_clk_in,
      \out\ => gtrxreset_sync
    );
gtrxreset_pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => gtrxreset_r2,
      I1 => gtrxreset_r3,
      O => gtrxreset_pulse_i_1_n_0
    );
gtrxreset_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_pulse_i_1_n_0,
      Q => gtrxreset_pulse,
      R => '0'
    );
gtrxreset_r1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_sync,
      Q => gtrxreset_r1,
      R => '0'
    );
gtrxreset_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_r1,
      Q => gtrxreset_r2,
      R => '0'
    );
gtrxreset_r3_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_r2,
      Q => gtrxreset_r3,
      R => '0'
    );
link_reset_r2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => link_reset_r,
      Q => link_reset_r2,
      R => '0'
    );
rx_cdrlock_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rx_cdrlock_counter0_carry_n_0,
      CO(2) => rx_cdrlock_counter0_carry_n_1,
      CO(1) => rx_cdrlock_counter0_carry_n_2,
      CO(0) => rx_cdrlock_counter0_carry_n_3,
      CYINIT => rx_cdrlock_counter(0),
      DI(3 downto 0) => B"0000",
      O(3) => rx_cdrlock_counter0_carry_n_4,
      O(2) => rx_cdrlock_counter0_carry_n_5,
      O(1) => rx_cdrlock_counter0_carry_n_6,
      O(0) => rx_cdrlock_counter0_carry_n_7,
      S(3) => rx_cdrlock_counter0_carry_i_1_n_0,
      S(2) => rx_cdrlock_counter0_carry_i_2_n_0,
      S(1) => rx_cdrlock_counter0_carry_i_3_n_0,
      S(0) => rx_cdrlock_counter0_carry_i_4_n_0
    );
\rx_cdrlock_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rx_cdrlock_counter0_carry_n_0,
      CO(3) => \rx_cdrlock_counter0_carry__0_n_0\,
      CO(2) => \rx_cdrlock_counter0_carry__0_n_1\,
      CO(1) => \rx_cdrlock_counter0_carry__0_n_2\,
      CO(0) => \rx_cdrlock_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rx_cdrlock_counter0_carry__0_n_4\,
      O(2) => \rx_cdrlock_counter0_carry__0_n_5\,
      O(1) => \rx_cdrlock_counter0_carry__0_n_6\,
      O(0) => \rx_cdrlock_counter0_carry__0_n_7\,
      S(3) => \rx_cdrlock_counter0_carry__0_i_1_n_0\,
      S(2) => \rx_cdrlock_counter0_carry__0_i_2_n_0\,
      S(1) => \rx_cdrlock_counter0_carry__0_i_3_n_0\,
      S(0) => \rx_cdrlock_counter0_carry__0_i_4_n_0\
    );
\rx_cdrlock_counter0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(8),
      O => \rx_cdrlock_counter0_carry__0_i_1_n_0\
    );
\rx_cdrlock_counter0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(7),
      O => \rx_cdrlock_counter0_carry__0_i_2_n_0\
    );
\rx_cdrlock_counter0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(6),
      O => \rx_cdrlock_counter0_carry__0_i_3_n_0\
    );
\rx_cdrlock_counter0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(5),
      O => \rx_cdrlock_counter0_carry__0_i_4_n_0\
    );
\rx_cdrlock_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_cdrlock_counter0_carry__0_n_0\,
      CO(3) => \rx_cdrlock_counter0_carry__1_n_0\,
      CO(2) => \rx_cdrlock_counter0_carry__1_n_1\,
      CO(1) => \rx_cdrlock_counter0_carry__1_n_2\,
      CO(0) => \rx_cdrlock_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rx_cdrlock_counter0_carry__1_n_4\,
      O(2) => \rx_cdrlock_counter0_carry__1_n_5\,
      O(1) => \rx_cdrlock_counter0_carry__1_n_6\,
      O(0) => \rx_cdrlock_counter0_carry__1_n_7\,
      S(3) => \rx_cdrlock_counter0_carry__1_i_1_n_0\,
      S(2) => \rx_cdrlock_counter0_carry__1_i_2_n_0\,
      S(1) => \rx_cdrlock_counter0_carry__1_i_3_n_0\,
      S(0) => \rx_cdrlock_counter0_carry__1_i_4_n_0\
    );
\rx_cdrlock_counter0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(12),
      O => \rx_cdrlock_counter0_carry__1_i_1_n_0\
    );
\rx_cdrlock_counter0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(11),
      O => \rx_cdrlock_counter0_carry__1_i_2_n_0\
    );
\rx_cdrlock_counter0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(10),
      O => \rx_cdrlock_counter0_carry__1_i_3_n_0\
    );
\rx_cdrlock_counter0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(9),
      O => \rx_cdrlock_counter0_carry__1_i_4_n_0\
    );
\rx_cdrlock_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_cdrlock_counter0_carry__1_n_0\,
      CO(3) => \rx_cdrlock_counter0_carry__2_n_0\,
      CO(2) => \rx_cdrlock_counter0_carry__2_n_1\,
      CO(1) => \rx_cdrlock_counter0_carry__2_n_2\,
      CO(0) => \rx_cdrlock_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rx_cdrlock_counter0_carry__2_n_4\,
      O(2) => \rx_cdrlock_counter0_carry__2_n_5\,
      O(1) => \rx_cdrlock_counter0_carry__2_n_6\,
      O(0) => \rx_cdrlock_counter0_carry__2_n_7\,
      S(3) => \rx_cdrlock_counter0_carry__2_i_1_n_0\,
      S(2) => \rx_cdrlock_counter0_carry__2_i_2_n_0\,
      S(1) => \rx_cdrlock_counter0_carry__2_i_3_n_0\,
      S(0) => \rx_cdrlock_counter0_carry__2_i_4_n_0\
    );
\rx_cdrlock_counter0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(16),
      O => \rx_cdrlock_counter0_carry__2_i_1_n_0\
    );
\rx_cdrlock_counter0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(15),
      O => \rx_cdrlock_counter0_carry__2_i_2_n_0\
    );
\rx_cdrlock_counter0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(14),
      O => \rx_cdrlock_counter0_carry__2_i_3_n_0\
    );
\rx_cdrlock_counter0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(13),
      O => \rx_cdrlock_counter0_carry__2_i_4_n_0\
    );
\rx_cdrlock_counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_cdrlock_counter0_carry__2_n_0\,
      CO(3) => \rx_cdrlock_counter0_carry__3_n_0\,
      CO(2) => \rx_cdrlock_counter0_carry__3_n_1\,
      CO(1) => \rx_cdrlock_counter0_carry__3_n_2\,
      CO(0) => \rx_cdrlock_counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rx_cdrlock_counter0_carry__3_n_4\,
      O(2) => \rx_cdrlock_counter0_carry__3_n_5\,
      O(1) => \rx_cdrlock_counter0_carry__3_n_6\,
      O(0) => \rx_cdrlock_counter0_carry__3_n_7\,
      S(3) => \rx_cdrlock_counter0_carry__3_i_1_n_0\,
      S(2) => \rx_cdrlock_counter0_carry__3_i_2_n_0\,
      S(1) => \rx_cdrlock_counter0_carry__3_i_3_n_0\,
      S(0) => \rx_cdrlock_counter0_carry__3_i_4_n_0\
    );
\rx_cdrlock_counter0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(20),
      O => \rx_cdrlock_counter0_carry__3_i_1_n_0\
    );
\rx_cdrlock_counter0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(19),
      O => \rx_cdrlock_counter0_carry__3_i_2_n_0\
    );
\rx_cdrlock_counter0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(18),
      O => \rx_cdrlock_counter0_carry__3_i_3_n_0\
    );
\rx_cdrlock_counter0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(17),
      O => \rx_cdrlock_counter0_carry__3_i_4_n_0\
    );
\rx_cdrlock_counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_cdrlock_counter0_carry__3_n_0\,
      CO(3) => \rx_cdrlock_counter0_carry__4_n_0\,
      CO(2) => \rx_cdrlock_counter0_carry__4_n_1\,
      CO(1) => \rx_cdrlock_counter0_carry__4_n_2\,
      CO(0) => \rx_cdrlock_counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rx_cdrlock_counter0_carry__4_n_4\,
      O(2) => \rx_cdrlock_counter0_carry__4_n_5\,
      O(1) => \rx_cdrlock_counter0_carry__4_n_6\,
      O(0) => \rx_cdrlock_counter0_carry__4_n_7\,
      S(3) => \rx_cdrlock_counter0_carry__4_i_1_n_0\,
      S(2) => \rx_cdrlock_counter0_carry__4_i_2_n_0\,
      S(1) => \rx_cdrlock_counter0_carry__4_i_3_n_0\,
      S(0) => \rx_cdrlock_counter0_carry__4_i_4_n_0\
    );
\rx_cdrlock_counter0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(24),
      O => \rx_cdrlock_counter0_carry__4_i_1_n_0\
    );
\rx_cdrlock_counter0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(23),
      O => \rx_cdrlock_counter0_carry__4_i_2_n_0\
    );
\rx_cdrlock_counter0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(22),
      O => \rx_cdrlock_counter0_carry__4_i_3_n_0\
    );
\rx_cdrlock_counter0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(21),
      O => \rx_cdrlock_counter0_carry__4_i_4_n_0\
    );
\rx_cdrlock_counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_cdrlock_counter0_carry__4_n_0\,
      CO(3) => \rx_cdrlock_counter0_carry__5_n_0\,
      CO(2) => \rx_cdrlock_counter0_carry__5_n_1\,
      CO(1) => \rx_cdrlock_counter0_carry__5_n_2\,
      CO(0) => \rx_cdrlock_counter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rx_cdrlock_counter0_carry__5_n_4\,
      O(2) => \rx_cdrlock_counter0_carry__5_n_5\,
      O(1) => \rx_cdrlock_counter0_carry__5_n_6\,
      O(0) => \rx_cdrlock_counter0_carry__5_n_7\,
      S(3) => \rx_cdrlock_counter0_carry__5_i_1_n_0\,
      S(2) => \rx_cdrlock_counter0_carry__5_i_2_n_0\,
      S(1) => \rx_cdrlock_counter0_carry__5_i_3_n_0\,
      S(0) => \rx_cdrlock_counter0_carry__5_i_4_n_0\
    );
\rx_cdrlock_counter0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(28),
      O => \rx_cdrlock_counter0_carry__5_i_1_n_0\
    );
\rx_cdrlock_counter0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(27),
      O => \rx_cdrlock_counter0_carry__5_i_2_n_0\
    );
\rx_cdrlock_counter0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(26),
      O => \rx_cdrlock_counter0_carry__5_i_3_n_0\
    );
\rx_cdrlock_counter0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(25),
      O => \rx_cdrlock_counter0_carry__5_i_4_n_0\
    );
\rx_cdrlock_counter0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_cdrlock_counter0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_rx_cdrlock_counter0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rx_cdrlock_counter0_carry__6_n_2\,
      CO(0) => \rx_cdrlock_counter0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_rx_cdrlock_counter0_carry__6_O_UNCONNECTED\(3),
      O(2) => \rx_cdrlock_counter0_carry__6_n_5\,
      O(1) => \rx_cdrlock_counter0_carry__6_n_6\,
      O(0) => \rx_cdrlock_counter0_carry__6_n_7\,
      S(3) => '0',
      S(2) => \rx_cdrlock_counter0_carry__6_i_1_n_0\,
      S(1) => \rx_cdrlock_counter0_carry__6_i_2_n_0\,
      S(0) => \rx_cdrlock_counter0_carry__6_i_3_n_0\
    );
\rx_cdrlock_counter0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(31),
      O => \rx_cdrlock_counter0_carry__6_i_1_n_0\
    );
\rx_cdrlock_counter0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(30),
      O => \rx_cdrlock_counter0_carry__6_i_2_n_0\
    );
\rx_cdrlock_counter0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(29),
      O => \rx_cdrlock_counter0_carry__6_i_3_n_0\
    );
rx_cdrlock_counter0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(4),
      O => rx_cdrlock_counter0_carry_i_1_n_0
    );
rx_cdrlock_counter0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(3),
      O => rx_cdrlock_counter0_carry_i_2_n_0
    );
rx_cdrlock_counter0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(2),
      O => rx_cdrlock_counter0_carry_i_3_n_0
    );
rx_cdrlock_counter0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_cdrlock_counter(1),
      O => rx_cdrlock_counter0_carry_i_4_n_0
    );
\rx_cdrlock_counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I3 => rx_cdrlock_counter(0),
      O => rx_cdrlock_counter_0(0)
    );
\rx_cdrlock_counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \rx_cdrlock_counter0_carry__1_n_6\,
      I1 => rx_cdrlock_counter(0),
      I2 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I4 => \rx_cdrlock_counter[31]_i_4_n_0\,
      O => rx_cdrlock_counter_0(10)
    );
\rx_cdrlock_counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__1_n_5\,
      O => rx_cdrlock_counter_0(11)
    );
\rx_cdrlock_counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__1_n_4\,
      O => rx_cdrlock_counter_0(12)
    );
\rx_cdrlock_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__2_n_7\,
      O => rx_cdrlock_counter_0(13)
    );
\rx_cdrlock_counter[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__2_n_6\,
      O => rx_cdrlock_counter_0(14)
    );
\rx_cdrlock_counter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__2_n_5\,
      O => rx_cdrlock_counter_0(15)
    );
\rx_cdrlock_counter[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__2_n_4\,
      O => rx_cdrlock_counter_0(16)
    );
\rx_cdrlock_counter[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__3_n_7\,
      O => rx_cdrlock_counter_0(17)
    );
\rx_cdrlock_counter[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__3_n_6\,
      O => rx_cdrlock_counter_0(18)
    );
\rx_cdrlock_counter[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__3_n_5\,
      O => rx_cdrlock_counter_0(19)
    );
\rx_cdrlock_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => rx_cdrlock_counter0_carry_n_7,
      O => rx_cdrlock_counter_0(1)
    );
\rx_cdrlock_counter[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__3_n_4\,
      O => rx_cdrlock_counter_0(20)
    );
\rx_cdrlock_counter[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__4_n_7\,
      O => rx_cdrlock_counter_0(21)
    );
\rx_cdrlock_counter[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__4_n_6\,
      O => rx_cdrlock_counter_0(22)
    );
\rx_cdrlock_counter[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__4_n_5\,
      O => rx_cdrlock_counter_0(23)
    );
\rx_cdrlock_counter[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__4_n_4\,
      O => rx_cdrlock_counter_0(24)
    );
\rx_cdrlock_counter[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__5_n_7\,
      O => rx_cdrlock_counter_0(25)
    );
\rx_cdrlock_counter[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__5_n_6\,
      O => rx_cdrlock_counter_0(26)
    );
\rx_cdrlock_counter[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__5_n_5\,
      O => rx_cdrlock_counter_0(27)
    );
\rx_cdrlock_counter[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__5_n_4\,
      O => rx_cdrlock_counter_0(28)
    );
\rx_cdrlock_counter[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__6_n_7\,
      O => rx_cdrlock_counter_0(29)
    );
\rx_cdrlock_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => rx_cdrlock_counter0_carry_n_6,
      O => rx_cdrlock_counter_0(2)
    );
\rx_cdrlock_counter[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__6_n_6\,
      O => rx_cdrlock_counter_0(30)
    );
\rx_cdrlock_counter[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__6_n_5\,
      O => rx_cdrlock_counter_0(31)
    );
\rx_cdrlock_counter[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => rx_cdrlock_counter(12),
      I1 => rx_cdrlock_counter(13),
      I2 => rx_cdrlock_counter(11),
      I3 => rx_cdrlock_counter(10),
      I4 => \rx_cdrlock_counter[31]_i_5_n_0\,
      O => \rx_cdrlock_counter[31]_i_2_n_0\
    );
\rx_cdrlock_counter[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => rx_cdrlock_counter(5),
      I1 => rx_cdrlock_counter(4),
      I2 => rx_cdrlock_counter(2),
      I3 => rx_cdrlock_counter(3),
      I4 => \rx_cdrlock_counter[31]_i_6_n_0\,
      O => \rx_cdrlock_counter[31]_i_3_n_0\
    );
\rx_cdrlock_counter[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_7_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_8_n_0\,
      I2 => rx_cdrlock_counter(31),
      I3 => rx_cdrlock_counter(30),
      I4 => rx_cdrlock_counter(1),
      I5 => \rx_cdrlock_counter[31]_i_9_n_0\,
      O => \rx_cdrlock_counter[31]_i_4_n_0\
    );
\rx_cdrlock_counter[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rx_cdrlock_counter(15),
      I1 => rx_cdrlock_counter(14),
      I2 => rx_cdrlock_counter(17),
      I3 => rx_cdrlock_counter(16),
      O => \rx_cdrlock_counter[31]_i_5_n_0\
    );
\rx_cdrlock_counter[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => rx_cdrlock_counter(7),
      I1 => rx_cdrlock_counter(6),
      I2 => rx_cdrlock_counter(9),
      I3 => rx_cdrlock_counter(8),
      O => \rx_cdrlock_counter[31]_i_6_n_0\
    );
\rx_cdrlock_counter[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rx_cdrlock_counter(23),
      I1 => rx_cdrlock_counter(22),
      I2 => rx_cdrlock_counter(25),
      I3 => rx_cdrlock_counter(24),
      O => \rx_cdrlock_counter[31]_i_7_n_0\
    );
\rx_cdrlock_counter[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rx_cdrlock_counter(19),
      I1 => rx_cdrlock_counter(18),
      I2 => rx_cdrlock_counter(21),
      I3 => rx_cdrlock_counter(20),
      O => \rx_cdrlock_counter[31]_i_8_n_0\
    );
\rx_cdrlock_counter[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rx_cdrlock_counter(27),
      I1 => rx_cdrlock_counter(26),
      I2 => rx_cdrlock_counter(29),
      I3 => rx_cdrlock_counter(28),
      O => \rx_cdrlock_counter[31]_i_9_n_0\
    );
\rx_cdrlock_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => rx_cdrlock_counter0_carry_n_5,
      O => rx_cdrlock_counter_0(3)
    );
\rx_cdrlock_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => rx_cdrlock_counter0_carry_n_4,
      I1 => rx_cdrlock_counter(0),
      I2 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I4 => \rx_cdrlock_counter[31]_i_4_n_0\,
      O => rx_cdrlock_counter_0(4)
    );
\rx_cdrlock_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter0_carry__0_n_7\,
      O => rx_cdrlock_counter_0(5)
    );
\rx_cdrlock_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \rx_cdrlock_counter0_carry__0_n_6\,
      I1 => rx_cdrlock_counter(0),
      I2 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I4 => \rx_cdrlock_counter[31]_i_4_n_0\,
      O => rx_cdrlock_counter_0(6)
    );
\rx_cdrlock_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \rx_cdrlock_counter0_carry__0_n_5\,
      I1 => rx_cdrlock_counter(0),
      I2 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I4 => \rx_cdrlock_counter[31]_i_4_n_0\,
      O => rx_cdrlock_counter_0(7)
    );
\rx_cdrlock_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \rx_cdrlock_counter0_carry__0_n_4\,
      I1 => rx_cdrlock_counter(0),
      I2 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I4 => \rx_cdrlock_counter[31]_i_4_n_0\,
      O => rx_cdrlock_counter_0(8)
    );
\rx_cdrlock_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \rx_cdrlock_counter0_carry__1_n_7\,
      I1 => rx_cdrlock_counter(0),
      I2 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I4 => \rx_cdrlock_counter[31]_i_4_n_0\,
      O => rx_cdrlock_counter_0(9)
    );
\rx_cdrlock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(0),
      Q => rx_cdrlock_counter(0),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(10),
      Q => rx_cdrlock_counter(10),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(11),
      Q => rx_cdrlock_counter(11),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(12),
      Q => rx_cdrlock_counter(12),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(13),
      Q => rx_cdrlock_counter(13),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(14),
      Q => rx_cdrlock_counter(14),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(15),
      Q => rx_cdrlock_counter(15),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(16),
      Q => rx_cdrlock_counter(16),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(17),
      Q => rx_cdrlock_counter(17),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(18),
      Q => rx_cdrlock_counter(18),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(19),
      Q => rx_cdrlock_counter(19),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(1),
      Q => rx_cdrlock_counter(1),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(20),
      Q => rx_cdrlock_counter(20),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(21),
      Q => rx_cdrlock_counter(21),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(22),
      Q => rx_cdrlock_counter(22),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(23),
      Q => rx_cdrlock_counter(23),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(24),
      Q => rx_cdrlock_counter(24),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(25),
      Q => rx_cdrlock_counter(25),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(26),
      Q => rx_cdrlock_counter(26),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(27),
      Q => rx_cdrlock_counter(27),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(28),
      Q => rx_cdrlock_counter(28),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(29),
      Q => rx_cdrlock_counter(29),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(2),
      Q => rx_cdrlock_counter(2),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(30),
      Q => rx_cdrlock_counter(30),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(31),
      Q => rx_cdrlock_counter(31),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(3),
      Q => rx_cdrlock_counter(3),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(4),
      Q => rx_cdrlock_counter(4),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(5),
      Q => rx_cdrlock_counter(5),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(6),
      Q => rx_cdrlock_counter(6),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(7),
      Q => rx_cdrlock_counter(7),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(8),
      Q => rx_cdrlock_counter(8),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(9),
      Q => rx_cdrlock_counter(9),
      R => gt_rx_reset_i
    );
rx_cdrlocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => rx_cdrlocked_reg_n_0,
      I1 => rx_cdrlock_counter(0),
      I2 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I4 => \rx_cdrlock_counter[31]_i_4_n_0\,
      O => rx_cdrlocked_i_1_n_0
    );
rx_cdrlocked_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlocked_i_1_n_0,
      Q => rx_cdrlocked_reg_n_0,
      R => gt_rx_reset_i
    );
rxfsm_rxresetdone_r2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rxfsm_rxresetdone_r,
      Q => rxfsm_rxresetdone_r2,
      R => '0'
    );
rxfsm_rxresetdone_r3_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => rxfsm_rxresetdone_r2,
      Q => \^rx_resetdone_out\,
      R => '0'
    );
rxfsm_rxresetdone_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gt0_rxresetdone_r3_reg_srl3_n_0,
      Q => rxfsm_rxresetdone_r,
      R => '0'
    );
rxfsm_soft_reset_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => gtrxreset_pulse,
      I1 => AR(0),
      I2 => link_reset_r2,
      O => rxfsm_soft_reset_r_i_1_n_0
    );
rxfsm_soft_reset_r_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => rxfsm_soft_reset_r_i_1_n_0,
      Q => rxfsm_soft_reset_r,
      R => '0'
    );
txfsm_txresetdone_r_reg: unisim.vcomponents.FDRE
     port map (
      C => gtrxreset_o_reg,
      CE => '1',
      D => gt0_txresetdone_r3_reg_srl3_n_0,
      Q => txfsm_txresetdone_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_core is
  port (
    soft_err : out STD_LOGIC;
    lane_up : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    drprdy_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    tx_out_clk_i : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    link_reset_out : out STD_LOGIC;
    rx_resetdone_out : out STD_LOGIC;
    channel_up : out STD_LOGIC;
    common_reset_i : out STD_LOGIC;
    hard_err : out STD_LOGIC;
    frame_err : out STD_LOGIC;
    m_axi_rx_tvalid : out STD_LOGIC;
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 15 );
    m_axi_rx_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rx_tlast : out STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    gtrxreset_o_reg : in STD_LOGIC;
    in0 : in STD_LOGIC;
    \cpllpd_quad0_wait_reg[95]\ : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_pll0outclk_out : in STD_LOGIC;
    gt0_pll0outrefclk_out : in STD_LOGIC;
    gt0_pll1outclk_out : in STD_LOGIC;
    gt0_pll1outrefclk_out : in STD_LOGIC;
    power_down : in STD_LOGIC;
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    init_clk_in : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_tx_tlast : in STD_LOGIC;
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 15 );
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpen_in : in STD_LOGIC;
    drpwe_in : in STD_LOGIC;
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 1 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_core : entity is "aurora_8b10b_core";
end aurora_8b10b_aurora_8b10b_core;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_core is
  signal GEN_ECP : STD_LOGIC;
  signal GEN_PAD : STD_LOGIC;
  signal GEN_SCP : STD_LOGIC;
  signal GOT_V : STD_LOGIC;
  signal GTRXRESET_OUT : STD_LOGIC;
  signal \^hard_err\ : STD_LOGIC;
  signal RESET0 : STD_LOGIC;
  signal RX_PAD : STD_LOGIC;
  signal RX_PE_DATA : STD_LOGIC_VECTOR ( 0 to 15 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal START_RX : STD_LOGIC;
  signal TX_PE_DATA : STD_LOGIC_VECTOR ( 0 to 15 );
  signal TX_PE_DATA_V : STD_LOGIC;
  signal aurora_lane_0_i_n_15 : STD_LOGIC;
  signal aurora_lane_0_i_n_18 : STD_LOGIC;
  signal aurora_lane_0_i_n_19 : STD_LOGIC;
  signal aurora_lane_0_i_n_20 : STD_LOGIC;
  signal aurora_lane_0_i_n_53 : STD_LOGIC;
  signal axi_to_ll_pdu_i_n_0 : STD_LOGIC;
  signal \channel_err_detect_i/lane_up_r\ : STD_LOGIC;
  signal \^channel_up\ : STD_LOGIC;
  signal do_cc_i : STD_LOGIC;
  signal ena_comma_align_i : STD_LOGIC;
  signal \err_detect_i/bucket_full_r\ : STD_LOGIC;
  signal \err_detect_i/hard_err_flop_r0\ : STD_LOGIC;
  signal \err_detect_i/p_2_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gen_a_i : STD_LOGIC;
  signal gen_cc_i : STD_LOGIC;
  signal gen_k_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal gen_r_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal gen_v_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal gt_wrapper_i_n_26 : STD_LOGIC;
  signal gt_wrapper_i_n_27 : STD_LOGIC;
  signal gt_wrapper_i_n_28 : STD_LOGIC;
  signal gt_wrapper_i_n_29 : STD_LOGIC;
  signal gt_wrapper_i_n_30 : STD_LOGIC;
  signal gt_wrapper_i_n_31 : STD_LOGIC;
  signal gt_wrapper_i_n_35 : STD_LOGIC;
  signal gt_wrapper_i_n_36 : STD_LOGIC;
  signal gt_wrapper_i_n_37 : STD_LOGIC;
  signal gt_wrapper_i_n_38 : STD_LOGIC;
  signal gt_wrapper_i_n_39 : STD_LOGIC;
  signal gt_wrapper_i_n_40 : STD_LOGIC;
  signal gt_wrapper_i_n_41 : STD_LOGIC;
  signal gt_wrapper_i_n_42 : STD_LOGIC;
  signal gt_wrapper_i_n_43 : STD_LOGIC;
  signal gt_wrapper_i_n_44 : STD_LOGIC;
  signal gt_wrapper_i_n_45 : STD_LOGIC;
  signal gt_wrapper_i_n_46 : STD_LOGIC;
  signal gt_wrapper_i_n_47 : STD_LOGIC;
  signal gt_wrapper_i_n_48 : STD_LOGIC;
  signal gt_wrapper_i_n_49 : STD_LOGIC;
  signal gt_wrapper_i_n_50 : STD_LOGIC;
  signal \lane_init_sm_i/comma_over_two_cycles_r\ : STD_LOGIC;
  signal \lane_init_sm_i/ready_r\ : STD_LOGIC;
  signal \^lane_up\ : STD_LOGIC;
  signal \^link_reset_out\ : STD_LOGIC;
  signal link_reset_r : STD_LOGIC;
  signal new_pkt_r : STD_LOGIC;
  signal reset_lanes_i : STD_LOGIC;
  signal rx_char_is_comma_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rx_ecp_i : STD_LOGIC;
  signal \rx_ll_pdu_datapath_i/in_frame_r\ : STD_LOGIC;
  signal \rx_ll_pdu_datapath_i/storage_v_r\ : STD_LOGIC;
  signal rx_pe_data_v_i : STD_LOGIC;
  signal rx_polarity_i : STD_LOGIC;
  signal rx_realign_i : STD_LOGIC;
  signal rx_scp_i : STD_LOGIC;
  signal \sym_dec_i/first_v_received_r\ : STD_LOGIC;
  signal tx_char_is_k_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tx_data_i : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tx_dst_rdy : STD_LOGIC;
  signal \tx_ll_control_i/reset_i\ : STD_LOGIC;
  signal tx_reset_i : STD_LOGIC;
begin
  SR(0) <= \^sr\(0);
  channel_up <= \^channel_up\;
  lane_up <= \^lane_up\;
  link_reset_out <= \^link_reset_out\;
aurora_lane_0_i: entity work.aurora_8b10b_aurora_8b10b_AURORA_LANE
     port map (
      CHANNEL_SOFT_ERR_reg => aurora_lane_0_i_n_53,
      D(1 downto 0) => rx_char_is_comma_i(1 downto 0),
      GEN_ECP => GEN_ECP,
      GEN_PAD => GEN_PAD,
      GEN_SCP => GEN_SCP,
      GOT_V => GOT_V,
      HARD_ERR => \^hard_err\,
      Q(15) => TX_PE_DATA(0),
      Q(14) => TX_PE_DATA(1),
      Q(13) => TX_PE_DATA(2),
      Q(12) => TX_PE_DATA(3),
      Q(11) => TX_PE_DATA(4),
      Q(10) => TX_PE_DATA(5),
      Q(9) => TX_PE_DATA(6),
      Q(8) => TX_PE_DATA(7),
      Q(7) => TX_PE_DATA(8),
      Q(6) => TX_PE_DATA(9),
      Q(5) => TX_PE_DATA(10),
      Q(4) => TX_PE_DATA(11),
      Q(3) => TX_PE_DATA(12),
      Q(2) => TX_PE_DATA(13),
      Q(1) => TX_PE_DATA(14),
      Q(0) => TX_PE_DATA(15),
      RX_EOF_N_reg => aurora_lane_0_i_n_20,
      RX_PAD => RX_PAD,
      RX_SRC_RDY_N_reg_inv => aurora_lane_0_i_n_19,
      SR(0) => reset_lanes_i,
      START_RX => START_RX,
      TXCHARISK(1 downto 0) => tx_char_is_k_i(1 downto 0),
      TXDATA(15 downto 0) => tx_data_i(15 downto 0),
      TX_PE_DATA_V => TX_PE_DATA_V,
      comma_over_two_cycles_r => \lane_init_sm_i/comma_over_two_cycles_r\,
      ena_comma_align_i => ena_comma_align_i,
      first_v_received_r => \sym_dec_i/first_v_received_r\,
      first_v_received_r_reg => gt_wrapper_i_n_28,
      gen_a_i => gen_a_i,
      gen_cc_i => gen_cc_i,
      gen_k_flop_0_i(1) => gen_k_i(0),
      gen_k_flop_0_i(0) => gen_k_i(1),
      gen_r_flop_0_i(1) => gen_r_i(0),
      gen_r_flop_0_i(0) => gen_r_i(1),
      gen_v_flop_0_i(1) => gen_v_i(0),
      gen_v_flop_0_i(0) => gen_v_i(1),
      gtrxreset_o_reg => gtrxreset_o_reg,
      gtrxreset_o_reg_0(1 downto 0) => \err_detect_i/p_2_out\(1 downto 0),
      hard_err_flop_r0 => \err_detect_i/hard_err_flop_r0\,
      hard_err_flop_r_reg => \err_detect_i/bucket_full_r\,
      in_frame_r => \rx_ll_pdu_datapath_i/in_frame_r\,
      in_frame_r_reg => aurora_lane_0_i_n_18,
      init_clk_in => init_clk_in,
      lane_up => \^lane_up\,
      left_aligned_r_reg => aurora_lane_0_i_n_15,
      left_aligned_r_reg_0 => gt_wrapper_i_n_29,
      left_aligned_r_reg_1 => gt_wrapper_i_n_30,
      left_aligned_r_reg_2(7) => gt_wrapper_i_n_35,
      left_aligned_r_reg_2(6) => gt_wrapper_i_n_36,
      left_aligned_r_reg_2(5) => gt_wrapper_i_n_37,
      left_aligned_r_reg_2(4) => gt_wrapper_i_n_38,
      left_aligned_r_reg_2(3) => gt_wrapper_i_n_39,
      left_aligned_r_reg_2(2) => gt_wrapper_i_n_40,
      left_aligned_r_reg_2(1) => gt_wrapper_i_n_41,
      left_aligned_r_reg_2(0) => gt_wrapper_i_n_42,
      left_aligned_r_reg_3(7) => gt_wrapper_i_n_43,
      left_aligned_r_reg_3(6) => gt_wrapper_i_n_44,
      left_aligned_r_reg_3(5) => gt_wrapper_i_n_45,
      left_aligned_r_reg_3(4) => gt_wrapper_i_n_46,
      left_aligned_r_reg_3(3) => gt_wrapper_i_n_47,
      left_aligned_r_reg_3(2) => gt_wrapper_i_n_48,
      left_aligned_r_reg_3(1) => gt_wrapper_i_n_49,
      left_aligned_r_reg_3(0) => gt_wrapper_i_n_50,
      link_reset_out => \^link_reset_out\,
      ready_r => \lane_init_sm_i/ready_r\,
      rst_r_reg => gt_wrapper_i_n_31,
      rx_ecp_i => rx_ecp_i,
      rx_pe_data_v_i => rx_pe_data_v_i,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      rx_scp_i => rx_scp_i,
      \storage_r_reg[0]\(15) => RX_PE_DATA(0),
      \storage_r_reg[0]\(14) => RX_PE_DATA(1),
      \storage_r_reg[0]\(13) => RX_PE_DATA(2),
      \storage_r_reg[0]\(12) => RX_PE_DATA(3),
      \storage_r_reg[0]\(11) => RX_PE_DATA(4),
      \storage_r_reg[0]\(10) => RX_PE_DATA(5),
      \storage_r_reg[0]\(9) => RX_PE_DATA(6),
      \storage_r_reg[0]\(8) => RX_PE_DATA(7),
      \storage_r_reg[0]\(7) => RX_PE_DATA(8),
      \storage_r_reg[0]\(6) => RX_PE_DATA(9),
      \storage_r_reg[0]\(5) => RX_PE_DATA(10),
      \storage_r_reg[0]\(4) => RX_PE_DATA(11),
      \storage_r_reg[0]\(3) => RX_PE_DATA(12),
      \storage_r_reg[0]\(2) => RX_PE_DATA(13),
      \storage_r_reg[0]\(1) => RX_PE_DATA(14),
      \storage_r_reg[0]\(0) => RX_PE_DATA(15),
      storage_v_r => \rx_ll_pdu_datapath_i/storage_v_r\,
      tx_reset_i => tx_reset_i
    );
axi_to_ll_pdu_i: entity work.aurora_8b10b_aurora_8b10b_AXI_TO_LL
     port map (
      gtrxreset_o_reg => gtrxreset_o_reg,
      new_pkt_r => new_pkt_r,
      storage_v_r_reg => axi_to_ll_pdu_i_n_0
    );
core_reset_logic_i: entity work.aurora_8b10b_aurora_8b10b_RESET_LOGIC
     port map (
      channel_up => \^channel_up\,
      \cpllpd_quad0_wait_reg[95]\ => \cpllpd_quad0_wait_reg[95]\,
      gtrxreset_o_reg => gtrxreset_o_reg,
      in0 => in0,
      init_clk_in => init_clk_in,
      link_reset_out => \^link_reset_out\,
      link_reset_r => link_reset_r,
      new_pkt_r => new_pkt_r,
      new_pkt_r_reg => axi_to_ll_pdu_i_n_0,
      rxfsm_rxresetdone_r3_reg => gt_wrapper_i_n_27,
      s_axi_tx_tlast => s_axi_tx_tlast,
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      s_level_out_d3_reg => gt_wrapper_i_n_26,
      sys_reset_out => \^sr\(0),
      tx_dst_rdy => tx_dst_rdy
    );
global_logic_i: entity work.aurora_8b10b_aurora_8b10b_GLOBAL_LOGIC
     port map (
      GOT_V => GOT_V,
      GTRXRESET_OUT => GTRXRESET_OUT,
      HARD_ERR => \^hard_err\,
      RESET0 => RESET0,
      SR(0) => reset_lanes_i,
      START_RX => START_RX,
      SYSTEM_RESET_reg => \^sr\(0),
      channel_up => \^channel_up\,
      gen_a_i => gen_a_i,
      \gen_k_r_reg[0]\(1) => gen_k_i(0),
      \gen_k_r_reg[0]\(0) => gen_k_i(1),
      \gen_r_r_reg[0]\(1) => gen_r_i(0),
      \gen_r_r_reg[0]\(0) => gen_r_i(1),
      \gen_v_r_reg[0]\(1) => gen_v_i(0),
      \gen_v_r_reg[0]\(0) => gen_v_i(1),
      gtrxreset_o_reg => gtrxreset_o_reg,
      \^hard_err\ => hard_err,
      lane_up => \^lane_up\,
      lane_up_r => \channel_err_detect_i/lane_up_r\,
      power_down => power_down,
      reset_i => \tx_ll_control_i/reset_i\,
      soft_err => soft_err,
      \soft_err_r_reg[0]\ => aurora_lane_0_i_n_53
    );
gt_wrapper_i: entity work.aurora_8b10b_aurora_8b10b_GT_WRAPPER
     port map (
      AR(0) => AR(0),
      D(1 downto 0) => rx_char_is_comma_i(1 downto 0),
      GTRXRESET_OUT => GTRXRESET_OUT,
      TXCHARISK(1 downto 0) => tx_char_is_k_i(1 downto 0),
      TXDATA(15 downto 0) => tx_data_i(15 downto 0),
      bucket_full_r_reg => \err_detect_i/bucket_full_r\,
      comma_over_two_cycles_r => \lane_init_sm_i/comma_over_two_cycles_r\,
      common_reset_i => common_reset_i,
      \cpllpd_quad0_wait_reg[95]\ => \cpllpd_quad0_wait_reg[95]\,
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in => drpclk_in,
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in => drpen_in,
      drprdy_out => drprdy_out,
      drpwe_in => drpwe_in,
      ena_comma_align_i => ena_comma_align_i,
      first_v_received_r => \sym_dec_i/first_v_received_r\,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      gt_rxresetdone_r2_reg => gt_wrapper_i_n_27,
      gt_txresetdone_r2_reg => gt_wrapper_i_n_26,
      gtrxreset_o_reg => gtrxreset_o_reg,
      hard_err_flop_r0 => \err_detect_i/hard_err_flop_r0\,
      init_clk_in => init_clk_in,
      left_aligned_r_reg => gt_wrapper_i_n_28,
      left_aligned_r_reg_0 => aurora_lane_0_i_n_15,
      link_reset_r => link_reset_r,
      loopback(2 downto 0) => loopback(2 downto 0),
      \out\ => \out\,
      power_down => power_down,
      ready_r => \lane_init_sm_i/ready_r\,
      reset_count_r_reg => gt_wrapper_i_n_31,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      rx_resetdone_out => rx_resetdone_out,
      rxn => rxn,
      rxp => rxp,
      \soft_err_r_reg[0]\(1 downto 0) => \err_detect_i/p_2_out\(1 downto 0),
      tx_out_clk_i => tx_out_clk_i,
      tx_reset_i => tx_reset_i,
      txn => txn,
      txp => txp,
      \word_aligned_control_bits_r_reg[0]\ => gt_wrapper_i_n_30,
      \word_aligned_control_bits_r_reg[1]\ => gt_wrapper_i_n_29,
      \word_aligned_data_r_reg[0]\(7) => gt_wrapper_i_n_43,
      \word_aligned_data_r_reg[0]\(6) => gt_wrapper_i_n_44,
      \word_aligned_data_r_reg[0]\(5) => gt_wrapper_i_n_45,
      \word_aligned_data_r_reg[0]\(4) => gt_wrapper_i_n_46,
      \word_aligned_data_r_reg[0]\(3) => gt_wrapper_i_n_47,
      \word_aligned_data_r_reg[0]\(2) => gt_wrapper_i_n_48,
      \word_aligned_data_r_reg[0]\(1) => gt_wrapper_i_n_49,
      \word_aligned_data_r_reg[0]\(0) => gt_wrapper_i_n_50,
      \word_aligned_data_r_reg[8]\(7) => gt_wrapper_i_n_35,
      \word_aligned_data_r_reg[8]\(6) => gt_wrapper_i_n_36,
      \word_aligned_data_r_reg[8]\(5) => gt_wrapper_i_n_37,
      \word_aligned_data_r_reg[8]\(4) => gt_wrapper_i_n_38,
      \word_aligned_data_r_reg[8]\(3) => gt_wrapper_i_n_39,
      \word_aligned_data_r_reg[8]\(2) => gt_wrapper_i_n_40,
      \word_aligned_data_r_reg[8]\(1) => gt_wrapper_i_n_41,
      \word_aligned_data_r_reg[8]\(0) => gt_wrapper_i_n_42
    );
hpcnt_reset_cdc_sync: entity work.aurora_8b10b_aurora_8b10b_cdc_sync_1
     port map (
      in0 => in0,
      init_clk_in => init_clk_in
    );
rx_ll_i: entity work.aurora_8b10b_aurora_8b10b_RX_LL
     port map (
      D(15) => RX_PE_DATA(0),
      D(14) => RX_PE_DATA(1),
      D(13) => RX_PE_DATA(2),
      D(12) => RX_PE_DATA(3),
      D(11) => RX_PE_DATA(4),
      D(10) => RX_PE_DATA(5),
      D(9) => RX_PE_DATA(6),
      D(8) => RX_PE_DATA(7),
      D(7) => RX_PE_DATA(8),
      D(6) => RX_PE_DATA(9),
      D(5) => RX_PE_DATA(10),
      D(4) => RX_PE_DATA(11),
      D(3) => RX_PE_DATA(12),
      D(2) => RX_PE_DATA(13),
      D(1) => RX_PE_DATA(14),
      D(0) => RX_PE_DATA(15),
      RX_ECP_reg => aurora_lane_0_i_n_20,
      RX_PAD => RX_PAD,
      RX_PE_DATA_V_reg => aurora_lane_0_i_n_19,
      START_RX => START_RX,
      frame_err => frame_err,
      gtrxreset_o_reg => gtrxreset_o_reg,
      in_frame_r => \rx_ll_pdu_datapath_i/in_frame_r\,
      in_frame_r_reg => aurora_lane_0_i_n_18,
      m_axi_rx_tdata(0 to 15) => m_axi_rx_tdata(0 to 15),
      m_axi_rx_tkeep(0) => m_axi_rx_tkeep(0),
      m_axi_rx_tlast => m_axi_rx_tlast,
      m_axi_rx_tvalid => m_axi_rx_tvalid,
      rx_ecp_i => rx_ecp_i,
      rx_pe_data_v_i => rx_pe_data_v_i,
      rx_scp_i => rx_scp_i,
      storage_v_r => \rx_ll_pdu_datapath_i/storage_v_r\
    );
standard_cc_module_i: entity work.aurora_8b10b_aurora_8b10b_STANDARD_CC_MODULE
     port map (
      Q => do_cc_i,
      RESET0 => RESET0,
      gtrxreset_o_reg => gtrxreset_o_reg,
      lane_up_r => \channel_err_detect_i/lane_up_r\
    );
tx_ll_i: entity work.aurora_8b10b_aurora_8b10b_TX_LL
     port map (
      GEN_ECP => GEN_ECP,
      GEN_PAD => GEN_PAD,
      GEN_SCP => GEN_SCP,
      Q => do_cc_i,
      TX_PE_DATA_V => TX_PE_DATA_V,
      gen_cc_i => gen_cc_i,
      gtrxreset_o_reg => gtrxreset_o_reg,
      new_pkt_r_reg => axi_to_ll_pdu_i_n_0,
      reset_i => \tx_ll_control_i/reset_i\,
      s_axi_tx_tdata(0 to 15) => s_axi_tx_tdata(0 to 15),
      s_axi_tx_tkeep(0 to 1) => s_axi_tx_tkeep(0 to 1),
      s_axi_tx_tlast => s_axi_tx_tlast,
      s_axi_tx_tready => s_axi_tx_tready,
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      tx_dst_rdy => tx_dst_rdy,
      \tx_pe_data_r_reg[0]\(15) => TX_PE_DATA(0),
      \tx_pe_data_r_reg[0]\(14) => TX_PE_DATA(1),
      \tx_pe_data_r_reg[0]\(13) => TX_PE_DATA(2),
      \tx_pe_data_r_reg[0]\(12) => TX_PE_DATA(3),
      \tx_pe_data_r_reg[0]\(11) => TX_PE_DATA(4),
      \tx_pe_data_r_reg[0]\(10) => TX_PE_DATA(5),
      \tx_pe_data_r_reg[0]\(9) => TX_PE_DATA(6),
      \tx_pe_data_r_reg[0]\(8) => TX_PE_DATA(7),
      \tx_pe_data_r_reg[0]\(7) => TX_PE_DATA(8),
      \tx_pe_data_r_reg[0]\(6) => TX_PE_DATA(9),
      \tx_pe_data_r_reg[0]\(5) => TX_PE_DATA(10),
      \tx_pe_data_r_reg[0]\(4) => TX_PE_DATA(11),
      \tx_pe_data_r_reg[0]\(3) => TX_PE_DATA(12),
      \tx_pe_data_r_reg[0]\(2) => TX_PE_DATA(13),
      \tx_pe_data_r_reg[0]\(1) => TX_PE_DATA(14),
      \tx_pe_data_r_reg[0]\(0) => TX_PE_DATA(15)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_aurora_8b10b_support is
  port (
    gt_refclk1_out : out STD_LOGIC;
    sync_clk_out : out STD_LOGIC;
    soft_err : out STD_LOGIC;
    sys_reset_out : out STD_LOGIC;
    quad1_common_lock_out : out STD_LOGIC;
    gt0_pll0outclk_out : out STD_LOGIC;
    gt0_pll0outrefclk_out : out STD_LOGIC;
    gt0_pll0refclklost_out : out STD_LOGIC;
    gt0_pll1outclk_out : out STD_LOGIC;
    gt0_pll1outrefclk_out : out STD_LOGIC;
    lane_up : out STD_LOGIC;
    tx_resetdone_out : out STD_LOGIC;
    gt_reset_out : out STD_LOGIC;
    drprdy_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    link_reset_out : out STD_LOGIC;
    rx_resetdone_out : out STD_LOGIC;
    channel_up : out STD_LOGIC;
    hard_err : out STD_LOGIC;
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 15 );
    frame_err : out STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    m_axi_rx_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rx_tlast : out STD_LOGIC;
    pll_not_locked_out : out STD_LOGIC;
    m_axi_rx_tvalid : out STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC;
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    power_down : in STD_LOGIC;
    gt_refclk1_p : in STD_LOGIC;
    gt_refclk1_n : in STD_LOGIC;
    reset : in STD_LOGIC;
    gt_reset : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 15 );
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 1 );
    s_axi_tx_tvalid : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpen_in : in STD_LOGIC;
    drpwe_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_aurora_8b10b_support : entity is "aurora_8b10b_support";
end aurora_8b10b_aurora_8b10b_support;

architecture STRUCTURE of aurora_8b10b_aurora_8b10b_support is
  signal common_reset_i : STD_LOGIC;
  signal \^gt0_pll0outclk_out\ : STD_LOGIC;
  signal \^gt0_pll0outrefclk_out\ : STD_LOGIC;
  signal \^gt0_pll1outclk_out\ : STD_LOGIC;
  signal \^gt0_pll1outrefclk_out\ : STD_LOGIC;
  signal \^gt_refclk1_out\ : STD_LOGIC;
  signal \^gt_reset_out\ : STD_LOGIC;
  signal gt_reset_sync_init_clk : STD_LOGIC;
  signal \^quad1_common_lock_out\ : STD_LOGIC;
  signal reset_sync_user_clk : STD_LOGIC;
  signal \^sync_clk_out\ : STD_LOGIC;
  signal system_reset_i : STD_LOGIC;
  signal tx_out_clk_i : STD_LOGIC;
  signal NLW_IBUFDS_GTE2_CLK1_ODIV2_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IBUFDS_GTE2_CLK1 : label is "PRIMITIVE";
begin
  gt0_pll0outclk_out <= \^gt0_pll0outclk_out\;
  gt0_pll0outrefclk_out <= \^gt0_pll0outrefclk_out\;
  gt0_pll1outclk_out <= \^gt0_pll1outclk_out\;
  gt0_pll1outrefclk_out <= \^gt0_pll1outrefclk_out\;
  gt_refclk1_out <= \^gt_refclk1_out\;
  gt_reset_out <= \^gt_reset_out\;
  quad1_common_lock_out <= \^quad1_common_lock_out\;
  sync_clk_out <= \^sync_clk_out\;
IBUFDS_GTE2_CLK1: unisim.vcomponents.IBUFDS_GTE2
    generic map(
      CLKCM_CFG => true,
      CLKRCV_TRST => true,
      CLKSWING_CFG => B"11"
    )
        port map (
      CEB => '0',
      I => gt_refclk1_p,
      IB => gt_refclk1_n,
      O => \^gt_refclk1_out\,
      ODIV2 => NLW_IBUFDS_GTE2_CLK1_ODIV2_UNCONNECTED
    );
aurora_8b10b_core_i: entity work.aurora_8b10b_aurora_8b10b_core
     port map (
      AR(0) => \^gt_reset_out\,
      SR(0) => sys_reset_out,
      channel_up => channel_up,
      common_reset_i => common_reset_i,
      \cpllpd_quad0_wait_reg[95]\ => \^quad1_common_lock_out\,
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in => drpclk_in,
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in => drpen_in,
      drprdy_out => drprdy_out,
      drpwe_in => drpwe_in,
      frame_err => frame_err,
      gt0_pll0outclk_out => \^gt0_pll0outclk_out\,
      gt0_pll0outrefclk_out => \^gt0_pll0outrefclk_out\,
      gt0_pll1outclk_out => \^gt0_pll1outclk_out\,
      gt0_pll1outrefclk_out => \^gt0_pll1outrefclk_out\,
      gtrxreset_o_reg => \^sync_clk_out\,
      hard_err => hard_err,
      in0 => system_reset_i,
      init_clk_in => init_clk_in,
      lane_up => lane_up,
      link_reset_out => link_reset_out,
      loopback(2 downto 0) => loopback(2 downto 0),
      m_axi_rx_tdata(0 to 15) => m_axi_rx_tdata(0 to 15),
      m_axi_rx_tkeep(0) => m_axi_rx_tkeep(0),
      m_axi_rx_tlast => m_axi_rx_tlast,
      m_axi_rx_tvalid => m_axi_rx_tvalid,
      \out\ => tx_resetdone_out,
      power_down => power_down,
      rx_resetdone_out => rx_resetdone_out,
      rxn => rxn,
      rxp => rxp,
      s_axi_tx_tdata(0 to 15) => s_axi_tx_tdata(0 to 15),
      s_axi_tx_tkeep(0 to 1) => s_axi_tx_tkeep(0 to 1),
      s_axi_tx_tlast => s_axi_tx_tlast,
      s_axi_tx_tready => s_axi_tx_tready,
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      soft_err => soft_err,
      tx_out_clk_i => tx_out_clk_i,
      txn => txn,
      txp => txp
    );
clock_module_i: entity work.aurora_8b10b_aurora_8b10b_CLOCK_MODULE
     port map (
      CLK => \^sync_clk_out\,
      tx_out_clk_i => tx_out_clk_i
    );
gt_common_support: entity work.aurora_8b10b_aurora_8b10b_gt_common_wrapper
     port map (
      common_reset_i => common_reset_i,
      gt0_pll0outclk_out => \^gt0_pll0outclk_out\,
      gt0_pll0outrefclk_out => \^gt0_pll0outrefclk_out\,
      gt0_pll0refclklost_out => gt0_pll0refclklost_out,
      gt0_pll1outclk_out => \^gt0_pll1outclk_out\,
      gt0_pll1outrefclk_out => \^gt0_pll1outrefclk_out\,
      gt_refclk1_n => \^gt_refclk1_out\,
      init_clk_in => init_clk_in,
      pll_not_locked_out => pll_not_locked_out,
      quad1_common_lock_out => \^quad1_common_lock_out\
    );
gt_reset_cdc_sync: entity work.aurora_8b10b_aurora_8b10b_cdc_sync
     port map (
      D(0) => gt_reset_sync_init_clk,
      gt_reset => gt_reset,
      init_clk_in => init_clk_in
    );
reset_sync_user_clk_cdc_sync: entity work.aurora_8b10b_aurora_8b10b_cdc_sync_0
     port map (
      CLK => \^sync_clk_out\,
      D(0) => reset_sync_user_clk,
      reset => reset
    );
support_reset_logic_i: entity work.aurora_8b10b_aurora_8b10b_SUPPORT_RESET_LOGIC
     port map (
      CLK => \^sync_clk_out\,
      D(0) => reset_sync_user_clk,
      gt_reset_out => \^gt_reset_out\,
      in0 => system_reset_i,
      init_clk_in => init_clk_in,
      s_level_out_d3_reg(0) => gt_reset_sync_init_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b is
  port (
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 15 );
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 1 );
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 15 );
    m_axi_rx_tkeep : out STD_LOGIC_VECTOR ( 0 to 1 );
    m_axi_rx_tvalid : out STD_LOGIC;
    m_axi_rx_tlast : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    gt_refclk1_p : in STD_LOGIC;
    gt_refclk1_n : in STD_LOGIC;
    gt_refclk1_out : out STD_LOGIC;
    frame_err : out STD_LOGIC;
    hard_err : out STD_LOGIC;
    soft_err : out STD_LOGIC;
    lane_up : out STD_LOGIC;
    channel_up : out STD_LOGIC;
    user_clk_out : out STD_LOGIC;
    sync_clk_out : out STD_LOGIC;
    gt_reset : in STD_LOGIC;
    reset : in STD_LOGIC;
    sys_reset_out : out STD_LOGIC;
    gt_reset_out : out STD_LOGIC;
    power_down : in STD_LOGIC;
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_lock : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    tx_resetdone_out : out STD_LOGIC;
    rx_resetdone_out : out STD_LOGIC;
    link_reset_out : out STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    drpen_in : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drprdy_out : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drpwe_in : in STD_LOGIC;
    gt0_pll0refclklost_out : out STD_LOGIC;
    quad1_common_lock_out : out STD_LOGIC;
    gt0_pll0outclk_out : out STD_LOGIC;
    gt0_pll1outclk_out : out STD_LOGIC;
    gt0_pll0outrefclk_out : out STD_LOGIC;
    gt0_pll1outrefclk_out : out STD_LOGIC;
    pll_not_locked_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of aurora_8b10b : entity is true;
end aurora_8b10b;

architecture STRUCTURE of aurora_8b10b is
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_rx_tkeep\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^sync_clk_out\ : STD_LOGIC;
  signal \^tx_lock\ : STD_LOGIC;
begin
  m_axi_rx_tkeep(0) <= \<const1>\;
  m_axi_rx_tkeep(1) <= \^m_axi_rx_tkeep\(1);
  quad1_common_lock_out <= \^tx_lock\;
  sync_clk_out <= \^sync_clk_out\;
  tx_lock <= \^tx_lock\;
  user_clk_out <= \^sync_clk_out\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.aurora_8b10b_aurora_8b10b_support
     port map (
      channel_up => channel_up,
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in => drpclk_in,
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in => drpen_in,
      drprdy_out => drprdy_out,
      drpwe_in => drpwe_in,
      frame_err => frame_err,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll0refclklost_out => gt0_pll0refclklost_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      gt_refclk1_n => gt_refclk1_n,
      gt_refclk1_out => gt_refclk1_out,
      gt_refclk1_p => gt_refclk1_p,
      gt_reset => gt_reset,
      gt_reset_out => gt_reset_out,
      hard_err => hard_err,
      init_clk_in => init_clk_in,
      lane_up => lane_up,
      link_reset_out => link_reset_out,
      loopback(2 downto 0) => loopback(2 downto 0),
      m_axi_rx_tdata(0 to 15) => m_axi_rx_tdata(0 to 15),
      m_axi_rx_tkeep(0) => \^m_axi_rx_tkeep\(1),
      m_axi_rx_tlast => m_axi_rx_tlast,
      m_axi_rx_tvalid => m_axi_rx_tvalid,
      pll_not_locked_out => pll_not_locked_out,
      power_down => power_down,
      quad1_common_lock_out => \^tx_lock\,
      reset => reset,
      rx_resetdone_out => rx_resetdone_out,
      rxn => rxn,
      rxp => rxp,
      s_axi_tx_tdata(0 to 15) => s_axi_tx_tdata(0 to 15),
      s_axi_tx_tkeep(0 to 1) => s_axi_tx_tkeep(0 to 1),
      s_axi_tx_tlast => s_axi_tx_tlast,
      s_axi_tx_tready => s_axi_tx_tready,
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      soft_err => soft_err,
      sync_clk_out => \^sync_clk_out\,
      sys_reset_out => sys_reset_out,
      tx_resetdone_out => tx_resetdone_out,
      txn => txn,
      txp => txp
    );
end STRUCTURE;
