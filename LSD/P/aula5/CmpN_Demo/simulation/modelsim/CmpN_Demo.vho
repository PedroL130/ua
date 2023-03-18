-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "03/16/2023 10:01:06"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CmpN_Demo IS
    PORT (
	LEDG : OUT std_logic_vector(3 DOWNTO 0);
	SW3 : IN std_logic;
	SW2 : IN std_logic;
	SW1 : IN std_logic;
	SW0 : IN std_logic;
	SW7 : IN std_logic;
	SW6 : IN std_logic;
	SW5 : IN std_logic;
	SW4 : IN std_logic;
	LEDR3 : OUT std_logic_vector(0 DOWNTO 0);
	SW12 : IN std_logic;
	SW11 : IN std_logic;
	SW10 : IN std_logic;
	SW9 : IN std_logic;
	SW8 : IN std_logic;
	SW217 : IN std_logic;
	SW216 : IN std_logic;
	SW215 : IN std_logic;
	SW214 : IN std_logic;
	SW213 : IN std_logic;
	LEDR4 : OUT std_logic_vector(1 DOWNTO 1);
	LEDR5 : OUT std_logic_vector(2 DOWNTO 2);
	LEDR6 : OUT std_logic_vector(3 DOWNTO 3)
	);
END CmpN_Demo;

-- Design Ports Information
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR3[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR4[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR5[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR6[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW6	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW5	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW4	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW3	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW7	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW11	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW12	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW217	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW216	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW8	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW9	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW214	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW213	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW10	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW215	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CmpN_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW3 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_SW7 : std_logic;
SIGNAL ww_SW6 : std_logic;
SIGNAL ww_SW5 : std_logic;
SIGNAL ww_SW4 : std_logic;
SIGNAL ww_LEDR3 : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW12 : std_logic;
SIGNAL ww_SW11 : std_logic;
SIGNAL ww_SW10 : std_logic;
SIGNAL ww_SW9 : std_logic;
SIGNAL ww_SW8 : std_logic;
SIGNAL ww_SW217 : std_logic;
SIGNAL ww_SW216 : std_logic;
SIGNAL ww_SW215 : std_logic;
SIGNAL ww_SW214 : std_logic;
SIGNAL ww_SW213 : std_logic;
SIGNAL ww_LEDR4 : std_logic_vector(1 DOWNTO 1);
SIGNAL ww_LEDR5 : std_logic_vector(2 DOWNTO 2);
SIGNAL ww_LEDR6 : std_logic_vector(3 DOWNTO 3);
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR3[0]~output_o\ : std_logic;
SIGNAL \LEDR4[1]~output_o\ : std_logic;
SIGNAL \LEDR5[2]~output_o\ : std_logic;
SIGNAL \LEDR6[3]~output_o\ : std_logic;
SIGNAL \SW7~input_o\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \SW4~input_o\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \SW6~input_o\ : std_logic;
SIGNAL \SW5~input_o\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \SW3~input_o\ : std_logic;
SIGNAL \inst|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~3_combout\ : std_logic;
SIGNAL \inst|LessThan1~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \SW215~input_o\ : std_logic;
SIGNAL \SW11~input_o\ : std_logic;
SIGNAL \SW217~input_o\ : std_logic;
SIGNAL \SW216~input_o\ : std_logic;
SIGNAL \SW12~input_o\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \SW9~input_o\ : std_logic;
SIGNAL \SW214~input_o\ : std_logic;
SIGNAL \SW213~input_o\ : std_logic;
SIGNAL \SW8~input_o\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \SW10~input_o\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDG <= ww_LEDG;
ww_SW3 <= SW3;
ww_SW2 <= SW2;
ww_SW1 <= SW1;
ww_SW0 <= SW0;
ww_SW7 <= SW7;
ww_SW6 <= SW6;
ww_SW5 <= SW5;
ww_SW4 <= SW4;
LEDR3 <= ww_LEDR3;
ww_SW12 <= SW12;
ww_SW11 <= SW11;
ww_SW10 <= SW10;
ww_SW9 <= SW9;
ww_SW8 <= SW8;
ww_SW217 <= SW217;
ww_SW216 <= SW216;
ww_SW215 <= SW215;
ww_SW214 <= SW214;
ww_SW213 <= SW213;
LEDR4 <= ww_LEDR4;
LEDR5 <= ww_LEDR5;
LEDR6 <= ww_LEDR6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst2|ALT_INV_Equal0~1_combout\ <= NOT \inst2|Equal0~1_combout\;
\inst|ALT_INV_Equal0~1_combout\ <= NOT \inst|Equal0~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LessThan1~4_combout\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~1_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal0~1_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\LEDR3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Equal0~1_combout\,
	devoe => ww_devoe,
	o => \LEDR3[0]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\LEDR4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Equal0~1_combout\,
	devoe => ww_devoe,
	o => \LEDR4[1]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LessThan0~4_combout\,
	devoe => ww_devoe,
	o => \LEDR5[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\LEDR6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LessThan1~0_combout\,
	devoe => ww_devoe,
	o => \LEDR6[3]~output_o\);

-- Location: IOIBUF_X85_Y73_N1
\SW7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW7,
	o => \SW7~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\SW0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: IOIBUF_X85_Y73_N8
\SW4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW4,
	o => \SW4~input_o\);

-- Location: LCCOMB_X85_Y72_N12
\inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (!\SW0~input_o\ & \SW4~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW0~input_o\,
	datad => \SW4~input_o\,
	combout => \inst|LessThan1~1_combout\);

-- Location: IOIBUF_X85_Y73_N15
\SW2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

-- Location: IOIBUF_X87_Y73_N1
\SW1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\SW6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW6,
	o => \SW6~input_o\);

-- Location: IOIBUF_X87_Y73_N8
\SW5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW5,
	o => \SW5~input_o\);

-- Location: LCCOMB_X85_Y72_N24
\inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (\SW2~input_o\ & (!\SW1~input_o\ & (\SW6~input_o\ & \SW5~input_o\))) # (!\SW2~input_o\ & ((\SW6~input_o\) # ((!\SW1~input_o\ & \SW5~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \SW1~input_o\,
	datac => \SW6~input_o\,
	datad => \SW5~input_o\,
	combout => \inst|LessThan1~0_combout\);

-- Location: IOIBUF_X87_Y73_N22
\SW3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW3,
	o => \SW3~input_o\);

-- Location: LCCOMB_X85_Y72_N22
\inst|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~2_combout\ = \SW7~input_o\ $ (\SW3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW7~input_o\,
	datad => \SW3~input_o\,
	combout => \inst|LessThan1~2_combout\);

-- Location: LCCOMB_X85_Y72_N10
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\SW2~input_o\ & (\SW6~input_o\ & (\SW1~input_o\ $ (!\SW5~input_o\)))) # (!\SW2~input_o\ & (!\SW6~input_o\ & (\SW1~input_o\ $ (!\SW5~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \SW1~input_o\,
	datac => \SW6~input_o\,
	datad => \SW5~input_o\,
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X85_Y72_N0
\inst|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_combout\ = (!\inst|LessThan1~2_combout\ & ((\inst|LessThan1~0_combout\) # ((\inst|LessThan1~1_combout\ & \inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~1_combout\,
	datab => \inst|LessThan1~0_combout\,
	datac => \inst|LessThan1~2_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|LessThan1~3_combout\);

-- Location: LCCOMB_X85_Y72_N2
\inst|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~4_combout\ = (\inst|LessThan1~3_combout\) # ((\SW7~input_o\ & !\SW3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW7~input_o\,
	datab => \inst|LessThan1~3_combout\,
	datad => \SW3~input_o\,
	combout => \inst|LessThan1~4_combout\);

-- Location: LCCOMB_X85_Y72_N4
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\inst|LessThan1~3_combout\) # ((!\SW7~input_o\ & \SW3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW7~input_o\,
	datab => \inst|LessThan1~3_combout\,
	datad => \SW3~input_o\,
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X85_Y72_N6
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|LessThan1~2_combout\ & (\inst|Equal0~0_combout\ & (\SW4~input_o\ $ (!\SW0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~2_combout\,
	datab => \SW4~input_o\,
	datac => \SW0~input_o\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~1_combout\);

-- Location: IOIBUF_X60_Y73_N1
\SW215~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW215,
	o => \SW215~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\SW11~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW11,
	o => \SW11~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\SW217~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW217,
	o => \SW217~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\SW216~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW216,
	o => \SW216~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\SW12~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW12,
	o => \SW12~input_o\);

-- Location: LCCOMB_X59_Y72_N24
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (\SW11~input_o\ & (\SW216~input_o\ & (\SW217~input_o\ $ (!\SW12~input_o\)))) # (!\SW11~input_o\ & (!\SW216~input_o\ & (\SW217~input_o\ $ (!\SW12~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW11~input_o\,
	datab => \SW217~input_o\,
	datac => \SW216~input_o\,
	datad => \SW12~input_o\,
	combout => \inst2|LessThan0~0_combout\);

-- Location: IOIBUF_X52_Y73_N1
\SW9~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW9,
	o => \SW9~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\SW214~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW214,
	o => \SW214~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\SW213~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW213,
	o => \SW213~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\SW8~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW8,
	o => \SW8~input_o\);

-- Location: LCCOMB_X59_Y72_N26
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (\SW9~input_o\ & (\SW214~input_o\ & (\SW213~input_o\ $ (!\SW8~input_o\)))) # (!\SW9~input_o\ & (!\SW214~input_o\ & (\SW213~input_o\ $ (!\SW8~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW9~input_o\,
	datab => \SW214~input_o\,
	datac => \SW213~input_o\,
	datad => \SW8~input_o\,
	combout => \inst2|Equal0~0_combout\);

-- Location: IOIBUF_X60_Y73_N8
\SW10~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW10,
	o => \SW10~input_o\);

-- Location: LCCOMB_X59_Y72_N12
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst2|LessThan0~0_combout\ & (\inst2|Equal0~0_combout\ & (\SW215~input_o\ $ (!\SW10~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW215~input_o\,
	datab => \inst2|LessThan0~0_combout\,
	datac => \inst2|Equal0~0_combout\,
	datad => \SW10~input_o\,
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X59_Y72_N0
\inst2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = (\SW9~input_o\ & (\SW214~input_o\ & (\SW213~input_o\ & !\SW8~input_o\))) # (!\SW9~input_o\ & ((\SW214~input_o\) # ((\SW213~input_o\ & !\SW8~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW9~input_o\,
	datab => \SW214~input_o\,
	datac => \SW213~input_o\,
	datad => \SW8~input_o\,
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X59_Y72_N10
\inst2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_combout\ = (\inst2|LessThan0~0_combout\ & ((\inst2|LessThan0~2_combout\ & ((\SW215~input_o\) # (!\SW10~input_o\))) # (!\inst2|LessThan0~2_combout\ & (\SW215~input_o\ & !\SW10~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~2_combout\,
	datab => \inst2|LessThan0~0_combout\,
	datac => \SW215~input_o\,
	datad => \SW10~input_o\,
	combout => \inst2|LessThan0~3_combout\);

-- Location: LCCOMB_X59_Y72_N22
\inst2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (!\SW11~input_o\ & (\SW216~input_o\ & (\SW217~input_o\ $ (!\SW12~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW11~input_o\,
	datab => \SW217~input_o\,
	datac => \SW216~input_o\,
	datad => \SW12~input_o\,
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X59_Y72_N4
\inst2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~4_combout\ = (\inst2|LessThan0~3_combout\) # ((\inst2|LessThan0~1_combout\) # ((!\SW217~input_o\ & \SW12~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~3_combout\,
	datab => \SW217~input_o\,
	datac => \inst2|LessThan0~1_combout\,
	datad => \SW12~input_o\,
	combout => \inst2|LessThan0~4_combout\);

-- Location: LCCOMB_X59_Y72_N6
\inst2|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = (\inst2|LessThan0~3_combout\) # ((\inst2|LessThan0~1_combout\) # ((\SW217~input_o\ & !\SW12~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~3_combout\,
	datab => \SW217~input_o\,
	datac => \inst2|LessThan0~1_combout\,
	datad => \SW12~input_o\,
	combout => \inst2|LessThan1~0_combout\);

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR3(0) <= \LEDR3[0]~output_o\;

ww_LEDR4(1) <= \LEDR4[1]~output_o\;

ww_LEDR5(2) <= \LEDR5[2]~output_o\;

ww_LEDR6(3) <= \LEDR6[3]~output_o\;
END structure;


