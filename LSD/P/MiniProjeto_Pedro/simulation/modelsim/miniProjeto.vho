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

-- DATE "04/13/2023 11:31:50"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fase4 IS
    PORT (
	KEY : IN std_logic_vector(1 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDR : BUFFER std_logic_vector(3 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END fase4;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fase4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pulse|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \pulse|s_counter[0]~31_combout\ : std_logic;
SIGNAL \pulse|s_counter[20]~33_combout\ : std_logic;
SIGNAL \pulse|s_counter[0]~32\ : std_logic;
SIGNAL \pulse|s_counter[1]~34_combout\ : std_logic;
SIGNAL \pulse|s_counter[1]~35\ : std_logic;
SIGNAL \pulse|s_counter[2]~36_combout\ : std_logic;
SIGNAL \pulse|s_counter[2]~37\ : std_logic;
SIGNAL \pulse|s_counter[3]~38_combout\ : std_logic;
SIGNAL \pulse|s_counter[3]~39\ : std_logic;
SIGNAL \pulse|s_counter[4]~40_combout\ : std_logic;
SIGNAL \pulse|s_counter[4]~41\ : std_logic;
SIGNAL \pulse|s_counter[5]~42_combout\ : std_logic;
SIGNAL \pulse|s_counter[5]~43\ : std_logic;
SIGNAL \pulse|s_counter[6]~44_combout\ : std_logic;
SIGNAL \pulse|s_counter[6]~45\ : std_logic;
SIGNAL \pulse|s_counter[7]~46_combout\ : std_logic;
SIGNAL \pulse|s_counter[7]~47\ : std_logic;
SIGNAL \pulse|s_counter[8]~48_combout\ : std_logic;
SIGNAL \pulse|s_counter[8]~49\ : std_logic;
SIGNAL \pulse|s_counter[9]~50_combout\ : std_logic;
SIGNAL \pulse|s_counter[9]~51\ : std_logic;
SIGNAL \pulse|s_counter[10]~52_combout\ : std_logic;
SIGNAL \pulse|s_counter[10]~53\ : std_logic;
SIGNAL \pulse|s_counter[11]~54_combout\ : std_logic;
SIGNAL \pulse|s_counter[11]~55\ : std_logic;
SIGNAL \pulse|s_counter[12]~56_combout\ : std_logic;
SIGNAL \pulse|s_counter[12]~57\ : std_logic;
SIGNAL \pulse|s_counter[13]~58_combout\ : std_logic;
SIGNAL \pulse|s_counter[13]~59\ : std_logic;
SIGNAL \pulse|s_counter[14]~60_combout\ : std_logic;
SIGNAL \pulse|s_counter[14]~61\ : std_logic;
SIGNAL \pulse|s_counter[15]~62_combout\ : std_logic;
SIGNAL \pulse|s_counter[15]~63\ : std_logic;
SIGNAL \pulse|s_counter[16]~64_combout\ : std_logic;
SIGNAL \pulse|s_counter[16]~65\ : std_logic;
SIGNAL \pulse|s_counter[17]~66_combout\ : std_logic;
SIGNAL \pulse|s_counter[17]~67\ : std_logic;
SIGNAL \pulse|s_counter[18]~68_combout\ : std_logic;
SIGNAL \pulse|s_counter[18]~69\ : std_logic;
SIGNAL \pulse|s_counter[19]~70_combout\ : std_logic;
SIGNAL \pulse|Equal0~5_combout\ : std_logic;
SIGNAL \pulse|s_counter[19]~71\ : std_logic;
SIGNAL \pulse|s_counter[20]~72_combout\ : std_logic;
SIGNAL \pulse|s_counter[20]~73\ : std_logic;
SIGNAL \pulse|s_counter[21]~74_combout\ : std_logic;
SIGNAL \pulse|s_counter[21]~75\ : std_logic;
SIGNAL \pulse|s_counter[22]~76_combout\ : std_logic;
SIGNAL \pulse|s_counter[22]~77\ : std_logic;
SIGNAL \pulse|s_counter[23]~78_combout\ : std_logic;
SIGNAL \pulse|Equal0~6_combout\ : std_logic;
SIGNAL \pulse|Equal0~1_combout\ : std_logic;
SIGNAL \pulse|Equal0~2_combout\ : std_logic;
SIGNAL \pulse|Equal0~0_combout\ : std_logic;
SIGNAL \pulse|Equal0~3_combout\ : std_logic;
SIGNAL \pulse|Equal0~4_combout\ : std_logic;
SIGNAL \pulse|s_counter[23]~79\ : std_logic;
SIGNAL \pulse|s_counter[24]~80_combout\ : std_logic;
SIGNAL \pulse|s_counter[24]~81\ : std_logic;
SIGNAL \pulse|s_counter[25]~82_combout\ : std_logic;
SIGNAL \pulse|s_counter[25]~83\ : std_logic;
SIGNAL \pulse|s_counter[26]~84_combout\ : std_logic;
SIGNAL \pulse|s_counter[26]~85\ : std_logic;
SIGNAL \pulse|s_counter[27]~86_combout\ : std_logic;
SIGNAL \pulse|s_counter[27]~87\ : std_logic;
SIGNAL \pulse|s_counter[28]~88_combout\ : std_logic;
SIGNAL \pulse|s_counter[28]~89\ : std_logic;
SIGNAL \pulse|s_counter[29]~90_combout\ : std_logic;
SIGNAL \pulse|s_counter[29]~91\ : std_logic;
SIGNAL \pulse|s_counter[30]~92_combout\ : std_logic;
SIGNAL \pulse|Equal0~7_combout\ : std_logic;
SIGNAL \pulse|Equal0~8_combout\ : std_logic;
SIGNAL \pulse|Equal0~9_combout\ : std_logic;
SIGNAL \pulse|clk_out~0_combout\ : std_logic;
SIGNAL \pulse|clk_out~q\ : std_logic;
SIGNAL \pulse|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \count|s_cntValue~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \count|s_cntValue[3]~1_combout\ : std_logic;
SIGNAL \count|Add0~0_combout\ : std_logic;
SIGNAL \count|s_cntValue~4_combout\ : std_logic;
SIGNAL \count|s_cntValue~5_combout\ : std_logic;
SIGNAL \count|s_cntValue~6_combout\ : std_logic;
SIGNAL \count|s_cntValue[3]~2_combout\ : std_logic;
SIGNAL \count|s_cntValue~3_combout\ : std_logic;
SIGNAL \bin|binoutput[0]~0_combout\ : std_logic;
SIGNAL \bin|binoutput[1]~1_combout\ : std_logic;
SIGNAL \bin|Equal7~0_combout\ : std_logic;
SIGNAL \bin|binoutput[3]~2_combout\ : std_logic;
SIGNAL \bin|binoutput[4]~3_combout\ : std_logic;
SIGNAL \bin|binoutput[5]~4_combout\ : std_logic;
SIGNAL \bin|binoutput[6]~5_combout\ : std_logic;
SIGNAL \pulse|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \count|s_cntValue\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\pulse|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pulse|clk_out~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_cntValue\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_cntValue\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_cntValue\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_cntValue\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin|binoutput[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin|binoutput[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin|Equal7~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin|binoutput[3]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin|binoutput[4]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin|binoutput[5]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin|binoutput[6]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X111_Y37_N2
\pulse|s_counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[0]~31_combout\ = \pulse|s_counter\(0) $ (VCC)
-- \pulse|s_counter[0]~32\ = CARRY(\pulse|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_counter\(0),
	datad => VCC,
	combout => \pulse|s_counter[0]~31_combout\,
	cout => \pulse|s_counter[0]~32\);

-- Location: LCCOMB_X112_Y37_N2
\pulse|s_counter[20]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[20]~33_combout\ = (\KEY[0]~input_o\) # (!\pulse|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \pulse|Equal0~9_combout\,
	combout => \pulse|s_counter[20]~33_combout\);

-- Location: FF_X111_Y37_N3
\pulse|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[0]~31_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(0));

-- Location: LCCOMB_X111_Y37_N4
\pulse|s_counter[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[1]~34_combout\ = (\pulse|s_counter\(1) & (!\pulse|s_counter[0]~32\)) # (!\pulse|s_counter\(1) & ((\pulse|s_counter[0]~32\) # (GND)))
-- \pulse|s_counter[1]~35\ = CARRY((!\pulse|s_counter[0]~32\) # (!\pulse|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_counter\(1),
	datad => VCC,
	cin => \pulse|s_counter[0]~32\,
	combout => \pulse|s_counter[1]~34_combout\,
	cout => \pulse|s_counter[1]~35\);

-- Location: FF_X111_Y37_N5
\pulse|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[1]~34_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(1));

-- Location: LCCOMB_X111_Y37_N6
\pulse|s_counter[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[2]~36_combout\ = (\pulse|s_counter\(2) & (\pulse|s_counter[1]~35\ $ (GND))) # (!\pulse|s_counter\(2) & (!\pulse|s_counter[1]~35\ & VCC))
-- \pulse|s_counter[2]~37\ = CARRY((\pulse|s_counter\(2) & !\pulse|s_counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(2),
	datad => VCC,
	cin => \pulse|s_counter[1]~35\,
	combout => \pulse|s_counter[2]~36_combout\,
	cout => \pulse|s_counter[2]~37\);

-- Location: FF_X111_Y37_N7
\pulse|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[2]~36_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(2));

-- Location: LCCOMB_X111_Y37_N8
\pulse|s_counter[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[3]~38_combout\ = (\pulse|s_counter\(3) & (!\pulse|s_counter[2]~37\)) # (!\pulse|s_counter\(3) & ((\pulse|s_counter[2]~37\) # (GND)))
-- \pulse|s_counter[3]~39\ = CARRY((!\pulse|s_counter[2]~37\) # (!\pulse|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_counter\(3),
	datad => VCC,
	cin => \pulse|s_counter[2]~37\,
	combout => \pulse|s_counter[3]~38_combout\,
	cout => \pulse|s_counter[3]~39\);

-- Location: FF_X111_Y37_N9
\pulse|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[3]~38_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(3));

-- Location: LCCOMB_X111_Y37_N10
\pulse|s_counter[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[4]~40_combout\ = (\pulse|s_counter\(4) & (\pulse|s_counter[3]~39\ $ (GND))) # (!\pulse|s_counter\(4) & (!\pulse|s_counter[3]~39\ & VCC))
-- \pulse|s_counter[4]~41\ = CARRY((\pulse|s_counter\(4) & !\pulse|s_counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(4),
	datad => VCC,
	cin => \pulse|s_counter[3]~39\,
	combout => \pulse|s_counter[4]~40_combout\,
	cout => \pulse|s_counter[4]~41\);

-- Location: FF_X111_Y37_N11
\pulse|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[4]~40_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(4));

-- Location: LCCOMB_X111_Y37_N12
\pulse|s_counter[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[5]~42_combout\ = (\pulse|s_counter\(5) & (!\pulse|s_counter[4]~41\)) # (!\pulse|s_counter\(5) & ((\pulse|s_counter[4]~41\) # (GND)))
-- \pulse|s_counter[5]~43\ = CARRY((!\pulse|s_counter[4]~41\) # (!\pulse|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(5),
	datad => VCC,
	cin => \pulse|s_counter[4]~41\,
	combout => \pulse|s_counter[5]~42_combout\,
	cout => \pulse|s_counter[5]~43\);

-- Location: FF_X111_Y37_N13
\pulse|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[5]~42_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(5));

-- Location: LCCOMB_X111_Y37_N14
\pulse|s_counter[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[6]~44_combout\ = (\pulse|s_counter\(6) & (\pulse|s_counter[5]~43\ $ (GND))) # (!\pulse|s_counter\(6) & (!\pulse|s_counter[5]~43\ & VCC))
-- \pulse|s_counter[6]~45\ = CARRY((\pulse|s_counter\(6) & !\pulse|s_counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_counter\(6),
	datad => VCC,
	cin => \pulse|s_counter[5]~43\,
	combout => \pulse|s_counter[6]~44_combout\,
	cout => \pulse|s_counter[6]~45\);

-- Location: FF_X111_Y37_N15
\pulse|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[6]~44_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(6));

-- Location: LCCOMB_X111_Y37_N16
\pulse|s_counter[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[7]~46_combout\ = (\pulse|s_counter\(7) & (!\pulse|s_counter[6]~45\)) # (!\pulse|s_counter\(7) & ((\pulse|s_counter[6]~45\) # (GND)))
-- \pulse|s_counter[7]~47\ = CARRY((!\pulse|s_counter[6]~45\) # (!\pulse|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_counter\(7),
	datad => VCC,
	cin => \pulse|s_counter[6]~45\,
	combout => \pulse|s_counter[7]~46_combout\,
	cout => \pulse|s_counter[7]~47\);

-- Location: FF_X111_Y37_N17
\pulse|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[7]~46_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(7));

-- Location: LCCOMB_X111_Y37_N18
\pulse|s_counter[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[8]~48_combout\ = (\pulse|s_counter\(8) & (\pulse|s_counter[7]~47\ $ (GND))) # (!\pulse|s_counter\(8) & (!\pulse|s_counter[7]~47\ & VCC))
-- \pulse|s_counter[8]~49\ = CARRY((\pulse|s_counter\(8) & !\pulse|s_counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_counter\(8),
	datad => VCC,
	cin => \pulse|s_counter[7]~47\,
	combout => \pulse|s_counter[8]~48_combout\,
	cout => \pulse|s_counter[8]~49\);

-- Location: FF_X111_Y37_N19
\pulse|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[8]~48_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(8));

-- Location: LCCOMB_X111_Y37_N20
\pulse|s_counter[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[9]~50_combout\ = (\pulse|s_counter\(9) & (!\pulse|s_counter[8]~49\)) # (!\pulse|s_counter\(9) & ((\pulse|s_counter[8]~49\) # (GND)))
-- \pulse|s_counter[9]~51\ = CARRY((!\pulse|s_counter[8]~49\) # (!\pulse|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_counter\(9),
	datad => VCC,
	cin => \pulse|s_counter[8]~49\,
	combout => \pulse|s_counter[9]~50_combout\,
	cout => \pulse|s_counter[9]~51\);

-- Location: FF_X111_Y37_N21
\pulse|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[9]~50_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(9));

-- Location: LCCOMB_X111_Y37_N22
\pulse|s_counter[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[10]~52_combout\ = (\pulse|s_counter\(10) & (\pulse|s_counter[9]~51\ $ (GND))) # (!\pulse|s_counter\(10) & (!\pulse|s_counter[9]~51\ & VCC))
-- \pulse|s_counter[10]~53\ = CARRY((\pulse|s_counter\(10) & !\pulse|s_counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(10),
	datad => VCC,
	cin => \pulse|s_counter[9]~51\,
	combout => \pulse|s_counter[10]~52_combout\,
	cout => \pulse|s_counter[10]~53\);

-- Location: FF_X111_Y37_N23
\pulse|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[10]~52_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(10));

-- Location: LCCOMB_X111_Y37_N24
\pulse|s_counter[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[11]~54_combout\ = (\pulse|s_counter\(11) & (!\pulse|s_counter[10]~53\)) # (!\pulse|s_counter\(11) & ((\pulse|s_counter[10]~53\) # (GND)))
-- \pulse|s_counter[11]~55\ = CARRY((!\pulse|s_counter[10]~53\) # (!\pulse|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_counter\(11),
	datad => VCC,
	cin => \pulse|s_counter[10]~53\,
	combout => \pulse|s_counter[11]~54_combout\,
	cout => \pulse|s_counter[11]~55\);

-- Location: FF_X111_Y37_N25
\pulse|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[11]~54_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(11));

-- Location: LCCOMB_X111_Y37_N26
\pulse|s_counter[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[12]~56_combout\ = (\pulse|s_counter\(12) & (\pulse|s_counter[11]~55\ $ (GND))) # (!\pulse|s_counter\(12) & (!\pulse|s_counter[11]~55\ & VCC))
-- \pulse|s_counter[12]~57\ = CARRY((\pulse|s_counter\(12) & !\pulse|s_counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(12),
	datad => VCC,
	cin => \pulse|s_counter[11]~55\,
	combout => \pulse|s_counter[12]~56_combout\,
	cout => \pulse|s_counter[12]~57\);

-- Location: FF_X111_Y37_N27
\pulse|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[12]~56_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(12));

-- Location: LCCOMB_X111_Y37_N28
\pulse|s_counter[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[13]~58_combout\ = (\pulse|s_counter\(13) & (!\pulse|s_counter[12]~57\)) # (!\pulse|s_counter\(13) & ((\pulse|s_counter[12]~57\) # (GND)))
-- \pulse|s_counter[13]~59\ = CARRY((!\pulse|s_counter[12]~57\) # (!\pulse|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_counter\(13),
	datad => VCC,
	cin => \pulse|s_counter[12]~57\,
	combout => \pulse|s_counter[13]~58_combout\,
	cout => \pulse|s_counter[13]~59\);

-- Location: FF_X111_Y37_N29
\pulse|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[13]~58_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(13));

-- Location: LCCOMB_X111_Y37_N30
\pulse|s_counter[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[14]~60_combout\ = (\pulse|s_counter\(14) & (\pulse|s_counter[13]~59\ $ (GND))) # (!\pulse|s_counter\(14) & (!\pulse|s_counter[13]~59\ & VCC))
-- \pulse|s_counter[14]~61\ = CARRY((\pulse|s_counter\(14) & !\pulse|s_counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(14),
	datad => VCC,
	cin => \pulse|s_counter[13]~59\,
	combout => \pulse|s_counter[14]~60_combout\,
	cout => \pulse|s_counter[14]~61\);

-- Location: FF_X111_Y37_N31
\pulse|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[14]~60_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(14));

-- Location: LCCOMB_X111_Y36_N0
\pulse|s_counter[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[15]~62_combout\ = (\pulse|s_counter\(15) & (!\pulse|s_counter[14]~61\)) # (!\pulse|s_counter\(15) & ((\pulse|s_counter[14]~61\) # (GND)))
-- \pulse|s_counter[15]~63\ = CARRY((!\pulse|s_counter[14]~61\) # (!\pulse|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_counter\(15),
	datad => VCC,
	cin => \pulse|s_counter[14]~61\,
	combout => \pulse|s_counter[15]~62_combout\,
	cout => \pulse|s_counter[15]~63\);

-- Location: FF_X112_Y37_N9
\pulse|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse|s_counter[15]~62_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(15));

-- Location: LCCOMB_X111_Y36_N2
\pulse|s_counter[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[16]~64_combout\ = (\pulse|s_counter\(16) & (\pulse|s_counter[15]~63\ $ (GND))) # (!\pulse|s_counter\(16) & (!\pulse|s_counter[15]~63\ & VCC))
-- \pulse|s_counter[16]~65\ = CARRY((\pulse|s_counter\(16) & !\pulse|s_counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(16),
	datad => VCC,
	cin => \pulse|s_counter[15]~63\,
	combout => \pulse|s_counter[16]~64_combout\,
	cout => \pulse|s_counter[16]~65\);

-- Location: FF_X112_Y37_N31
\pulse|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse|s_counter[16]~64_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(16));

-- Location: LCCOMB_X111_Y36_N4
\pulse|s_counter[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[17]~66_combout\ = (\pulse|s_counter\(17) & (!\pulse|s_counter[16]~65\)) # (!\pulse|s_counter\(17) & ((\pulse|s_counter[16]~65\) # (GND)))
-- \pulse|s_counter[17]~67\ = CARRY((!\pulse|s_counter[16]~65\) # (!\pulse|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_counter\(17),
	datad => VCC,
	cin => \pulse|s_counter[16]~65\,
	combout => \pulse|s_counter[17]~66_combout\,
	cout => \pulse|s_counter[17]~67\);

-- Location: FF_X111_Y36_N5
\pulse|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[17]~66_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(17));

-- Location: LCCOMB_X111_Y36_N6
\pulse|s_counter[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[18]~68_combout\ = (\pulse|s_counter\(18) & (\pulse|s_counter[17]~67\ $ (GND))) # (!\pulse|s_counter\(18) & (!\pulse|s_counter[17]~67\ & VCC))
-- \pulse|s_counter[18]~69\ = CARRY((\pulse|s_counter\(18) & !\pulse|s_counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(18),
	datad => VCC,
	cin => \pulse|s_counter[17]~67\,
	combout => \pulse|s_counter[18]~68_combout\,
	cout => \pulse|s_counter[18]~69\);

-- Location: FF_X111_Y36_N7
\pulse|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[18]~68_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(18));

-- Location: LCCOMB_X111_Y36_N8
\pulse|s_counter[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[19]~70_combout\ = (\pulse|s_counter\(19) & (!\pulse|s_counter[18]~69\)) # (!\pulse|s_counter\(19) & ((\pulse|s_counter[18]~69\) # (GND)))
-- \pulse|s_counter[19]~71\ = CARRY((!\pulse|s_counter[18]~69\) # (!\pulse|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_counter\(19),
	datad => VCC,
	cin => \pulse|s_counter[18]~69\,
	combout => \pulse|s_counter[19]~70_combout\,
	cout => \pulse|s_counter[19]~71\);

-- Location: FF_X111_Y36_N9
\pulse|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[19]~70_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(19));

-- Location: LCCOMB_X112_Y37_N26
\pulse|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|Equal0~5_combout\ = (\pulse|s_counter\(16)) # ((\pulse|s_counter\(18)) # ((!\pulse|s_counter\(19)) # (!\pulse|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(16),
	datab => \pulse|s_counter\(18),
	datac => \pulse|s_counter\(17),
	datad => \pulse|s_counter\(19),
	combout => \pulse|Equal0~5_combout\);

-- Location: LCCOMB_X111_Y36_N10
\pulse|s_counter[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[20]~72_combout\ = (\pulse|s_counter\(20) & (\pulse|s_counter[19]~71\ $ (GND))) # (!\pulse|s_counter\(20) & (!\pulse|s_counter[19]~71\ & VCC))
-- \pulse|s_counter[20]~73\ = CARRY((\pulse|s_counter\(20) & !\pulse|s_counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(20),
	datad => VCC,
	cin => \pulse|s_counter[19]~71\,
	combout => \pulse|s_counter[20]~72_combout\,
	cout => \pulse|s_counter[20]~73\);

-- Location: FF_X111_Y36_N11
\pulse|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[20]~72_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(20));

-- Location: LCCOMB_X111_Y36_N12
\pulse|s_counter[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[21]~74_combout\ = (\pulse|s_counter\(21) & (!\pulse|s_counter[20]~73\)) # (!\pulse|s_counter\(21) & ((\pulse|s_counter[20]~73\) # (GND)))
-- \pulse|s_counter[21]~75\ = CARRY((!\pulse|s_counter[20]~73\) # (!\pulse|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(21),
	datad => VCC,
	cin => \pulse|s_counter[20]~73\,
	combout => \pulse|s_counter[21]~74_combout\,
	cout => \pulse|s_counter[21]~75\);

-- Location: FF_X111_Y36_N13
\pulse|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[21]~74_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(21));

-- Location: LCCOMB_X111_Y36_N14
\pulse|s_counter[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[22]~76_combout\ = (\pulse|s_counter\(22) & (\pulse|s_counter[21]~75\ $ (GND))) # (!\pulse|s_counter\(22) & (!\pulse|s_counter[21]~75\ & VCC))
-- \pulse|s_counter[22]~77\ = CARRY((\pulse|s_counter\(22) & !\pulse|s_counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_counter\(22),
	datad => VCC,
	cin => \pulse|s_counter[21]~75\,
	combout => \pulse|s_counter[22]~76_combout\,
	cout => \pulse|s_counter[22]~77\);

-- Location: FF_X111_Y36_N15
\pulse|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[22]~76_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(22));

-- Location: LCCOMB_X111_Y36_N16
\pulse|s_counter[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[23]~78_combout\ = (\pulse|s_counter\(23) & (!\pulse|s_counter[22]~77\)) # (!\pulse|s_counter\(23) & ((\pulse|s_counter[22]~77\) # (GND)))
-- \pulse|s_counter[23]~79\ = CARRY((!\pulse|s_counter[22]~77\) # (!\pulse|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_counter\(23),
	datad => VCC,
	cin => \pulse|s_counter[22]~77\,
	combout => \pulse|s_counter[23]~78_combout\,
	cout => \pulse|s_counter[23]~79\);

-- Location: FF_X111_Y36_N17
\pulse|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[23]~78_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(23));

-- Location: LCCOMB_X112_Y37_N28
\pulse|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|Equal0~6_combout\ = (((!\pulse|s_counter\(22)) # (!\pulse|s_counter\(23))) # (!\pulse|s_counter\(21))) # (!\pulse|s_counter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(20),
	datab => \pulse|s_counter\(21),
	datac => \pulse|s_counter\(23),
	datad => \pulse|s_counter\(22),
	combout => \pulse|Equal0~6_combout\);

-- Location: LCCOMB_X112_Y37_N22
\pulse|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|Equal0~1_combout\ = (((\pulse|s_counter\(7)) # (!\pulse|s_counter\(5))) # (!\pulse|s_counter\(4))) # (!\pulse|s_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(6),
	datab => \pulse|s_counter\(4),
	datac => \pulse|s_counter\(7),
	datad => \pulse|s_counter\(5),
	combout => \pulse|Equal0~1_combout\);

-- Location: LCCOMB_X112_Y37_N18
\pulse|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|Equal0~2_combout\ = (\pulse|s_counter\(11)) # ((\pulse|s_counter\(9)) # ((\pulse|s_counter\(8)) # (\pulse|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(11),
	datab => \pulse|s_counter\(9),
	datac => \pulse|s_counter\(8),
	datad => \pulse|s_counter\(10),
	combout => \pulse|Equal0~2_combout\);

-- Location: LCCOMB_X111_Y37_N0
\pulse|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|Equal0~0_combout\ = (((!\pulse|s_counter\(0)) # (!\pulse|s_counter\(3))) # (!\pulse|s_counter\(1))) # (!\pulse|s_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(2),
	datab => \pulse|s_counter\(1),
	datac => \pulse|s_counter\(3),
	datad => \pulse|s_counter\(0),
	combout => \pulse|Equal0~0_combout\);

-- Location: LCCOMB_X112_Y37_N24
\pulse|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|Equal0~3_combout\ = (((!\pulse|s_counter\(14)) # (!\pulse|s_counter\(13))) # (!\pulse|s_counter\(15))) # (!\pulse|s_counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(12),
	datab => \pulse|s_counter\(15),
	datac => \pulse|s_counter\(13),
	datad => \pulse|s_counter\(14),
	combout => \pulse|Equal0~3_combout\);

-- Location: LCCOMB_X112_Y37_N14
\pulse|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|Equal0~4_combout\ = (\pulse|Equal0~1_combout\) # ((\pulse|Equal0~2_combout\) # ((\pulse|Equal0~0_combout\) # (\pulse|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|Equal0~1_combout\,
	datab => \pulse|Equal0~2_combout\,
	datac => \pulse|Equal0~0_combout\,
	datad => \pulse|Equal0~3_combout\,
	combout => \pulse|Equal0~4_combout\);

-- Location: LCCOMB_X111_Y36_N18
\pulse|s_counter[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[24]~80_combout\ = (\pulse|s_counter\(24) & (\pulse|s_counter[23]~79\ $ (GND))) # (!\pulse|s_counter\(24) & (!\pulse|s_counter[23]~79\ & VCC))
-- \pulse|s_counter[24]~81\ = CARRY((\pulse|s_counter\(24) & !\pulse|s_counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_counter\(24),
	datad => VCC,
	cin => \pulse|s_counter[23]~79\,
	combout => \pulse|s_counter[24]~80_combout\,
	cout => \pulse|s_counter[24]~81\);

-- Location: FF_X111_Y36_N19
\pulse|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[24]~80_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(24));

-- Location: LCCOMB_X111_Y36_N20
\pulse|s_counter[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[25]~82_combout\ = (\pulse|s_counter\(25) & (!\pulse|s_counter[24]~81\)) # (!\pulse|s_counter\(25) & ((\pulse|s_counter[24]~81\) # (GND)))
-- \pulse|s_counter[25]~83\ = CARRY((!\pulse|s_counter[24]~81\) # (!\pulse|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_counter\(25),
	datad => VCC,
	cin => \pulse|s_counter[24]~81\,
	combout => \pulse|s_counter[25]~82_combout\,
	cout => \pulse|s_counter[25]~83\);

-- Location: FF_X111_Y36_N21
\pulse|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[25]~82_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(25));

-- Location: LCCOMB_X111_Y36_N22
\pulse|s_counter[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[26]~84_combout\ = (\pulse|s_counter\(26) & (\pulse|s_counter[25]~83\ $ (GND))) # (!\pulse|s_counter\(26) & (!\pulse|s_counter[25]~83\ & VCC))
-- \pulse|s_counter[26]~85\ = CARRY((\pulse|s_counter\(26) & !\pulse|s_counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(26),
	datad => VCC,
	cin => \pulse|s_counter[25]~83\,
	combout => \pulse|s_counter[26]~84_combout\,
	cout => \pulse|s_counter[26]~85\);

-- Location: FF_X111_Y36_N23
\pulse|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[26]~84_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(26));

-- Location: LCCOMB_X111_Y36_N24
\pulse|s_counter[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[27]~86_combout\ = (\pulse|s_counter\(27) & (!\pulse|s_counter[26]~85\)) # (!\pulse|s_counter\(27) & ((\pulse|s_counter[26]~85\) # (GND)))
-- \pulse|s_counter[27]~87\ = CARRY((!\pulse|s_counter[26]~85\) # (!\pulse|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_counter\(27),
	datad => VCC,
	cin => \pulse|s_counter[26]~85\,
	combout => \pulse|s_counter[27]~86_combout\,
	cout => \pulse|s_counter[27]~87\);

-- Location: FF_X111_Y36_N25
\pulse|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[27]~86_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(27));

-- Location: LCCOMB_X111_Y36_N26
\pulse|s_counter[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[28]~88_combout\ = (\pulse|s_counter\(28) & (\pulse|s_counter[27]~87\ $ (GND))) # (!\pulse|s_counter\(28) & (!\pulse|s_counter[27]~87\ & VCC))
-- \pulse|s_counter[28]~89\ = CARRY((\pulse|s_counter\(28) & !\pulse|s_counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(28),
	datad => VCC,
	cin => \pulse|s_counter[27]~87\,
	combout => \pulse|s_counter[28]~88_combout\,
	cout => \pulse|s_counter[28]~89\);

-- Location: FF_X111_Y36_N27
\pulse|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[28]~88_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(28));

-- Location: LCCOMB_X111_Y36_N28
\pulse|s_counter[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[29]~90_combout\ = (\pulse|s_counter\(29) & (!\pulse|s_counter[28]~89\)) # (!\pulse|s_counter\(29) & ((\pulse|s_counter[28]~89\) # (GND)))
-- \pulse|s_counter[29]~91\ = CARRY((!\pulse|s_counter[28]~89\) # (!\pulse|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_counter\(29),
	datad => VCC,
	cin => \pulse|s_counter[28]~89\,
	combout => \pulse|s_counter[29]~90_combout\,
	cout => \pulse|s_counter[29]~91\);

-- Location: FF_X111_Y36_N29
\pulse|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[29]~90_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(29));

-- Location: LCCOMB_X111_Y36_N30
\pulse|s_counter[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_counter[30]~92_combout\ = \pulse|s_counter\(30) $ (!\pulse|s_counter[29]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(30),
	cin => \pulse|s_counter[29]~91\,
	combout => \pulse|s_counter[30]~92_combout\);

-- Location: FF_X111_Y36_N31
\pulse|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_counter[30]~92_combout\,
	sclr => \pulse|s_counter[20]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_counter\(30));

-- Location: LCCOMB_X112_Y37_N16
\pulse|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|Equal0~7_combout\ = (\pulse|s_counter\(27)) # ((\pulse|s_counter\(24)) # ((\pulse|s_counter\(26)) # (!\pulse|s_counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(27),
	datab => \pulse|s_counter\(24),
	datac => \pulse|s_counter\(25),
	datad => \pulse|s_counter\(26),
	combout => \pulse|Equal0~7_combout\);

-- Location: LCCOMB_X112_Y37_N20
\pulse|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|Equal0~8_combout\ = (\pulse|s_counter\(30)) # ((\pulse|s_counter\(28)) # ((\pulse|s_counter\(29)) # (\pulse|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_counter\(30),
	datab => \pulse|s_counter\(28),
	datac => \pulse|s_counter\(29),
	datad => \pulse|Equal0~7_combout\,
	combout => \pulse|Equal0~8_combout\);

-- Location: LCCOMB_X112_Y37_N12
\pulse|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|Equal0~9_combout\ = (\pulse|Equal0~5_combout\) # ((\pulse|Equal0~6_combout\) # ((\pulse|Equal0~4_combout\) # (\pulse|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|Equal0~5_combout\,
	datab => \pulse|Equal0~6_combout\,
	datac => \pulse|Equal0~4_combout\,
	datad => \pulse|Equal0~8_combout\,
	combout => \pulse|Equal0~9_combout\);

-- Location: LCCOMB_X112_Y37_N10
\pulse|clk_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|clk_out~0_combout\ = (!\KEY[0]~input_o\ & !\pulse|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \pulse|Equal0~9_combout\,
	combout => \pulse|clk_out~0_combout\);

-- Location: FF_X112_Y37_N11
\pulse|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|clk_out~q\);

-- Location: CLKCTRL_G9
\pulse|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pulse|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pulse|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X107_Y69_N8
\count|s_cntValue~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_cntValue~0_combout\ = (!\count|s_cntValue\(0) & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count|s_cntValue\(0),
	datad => \KEY[0]~input_o\,
	combout => \count|s_cntValue~0_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X107_Y69_N30
\count|s_cntValue[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_cntValue[3]~1_combout\ = (\KEY[1]~input_o\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \count|s_cntValue[3]~1_combout\);

-- Location: FF_X107_Y69_N9
\count|s_cntValue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulse|clk_out~clkctrl_outclk\,
	d => \count|s_cntValue~0_combout\,
	ena => \count|s_cntValue[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|s_cntValue\(0));

-- Location: LCCOMB_X107_Y69_N18
\count|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add0~0_combout\ = \count|s_cntValue\(2) $ (((\count|s_cntValue\(1) & \count|s_cntValue\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_cntValue\(1),
	datac => \count|s_cntValue\(0),
	datad => \count|s_cntValue\(2),
	combout => \count|Add0~0_combout\);

-- Location: LCCOMB_X107_Y69_N28
\count|s_cntValue~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_cntValue~4_combout\ = (\KEY[0]~input_o\ & (\count|s_cntValue[3]~2_combout\ & \count|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \count|s_cntValue[3]~2_combout\,
	datad => \count|Add0~0_combout\,
	combout => \count|s_cntValue~4_combout\);

-- Location: FF_X107_Y69_N29
\count|s_cntValue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulse|clk_out~clkctrl_outclk\,
	d => \count|s_cntValue~4_combout\,
	ena => \count|s_cntValue[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|s_cntValue\(2));

-- Location: LCCOMB_X107_Y69_N12
\count|s_cntValue~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_cntValue~5_combout\ = (\count|s_cntValue\(1) $ (\count|s_cntValue\(2))) # (!\count|s_cntValue\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|s_cntValue\(0),
	datac => \count|s_cntValue\(1),
	datad => \count|s_cntValue\(2),
	combout => \count|s_cntValue~5_combout\);

-- Location: LCCOMB_X107_Y69_N2
\count|s_cntValue~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_cntValue~6_combout\ = (\KEY[0]~input_o\ & ((\count|s_cntValue\(3) & ((\count|s_cntValue~5_combout\))) # (!\count|s_cntValue\(3) & (\count|s_cntValue\(2) & !\count|s_cntValue~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_cntValue\(2),
	datab => \KEY[0]~input_o\,
	datac => \count|s_cntValue\(3),
	datad => \count|s_cntValue~5_combout\,
	combout => \count|s_cntValue~6_combout\);

-- Location: FF_X107_Y69_N3
\count|s_cntValue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulse|clk_out~clkctrl_outclk\,
	d => \count|s_cntValue~6_combout\,
	ena => \count|s_cntValue[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|s_cntValue\(3));

-- Location: LCCOMB_X107_Y69_N4
\count|s_cntValue[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_cntValue[3]~2_combout\ = (\count|s_cntValue\(1)) # ((\count|s_cntValue\(2)) # ((!\count|s_cntValue\(3)) # (!\count|s_cntValue\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_cntValue\(1),
	datab => \count|s_cntValue\(2),
	datac => \count|s_cntValue\(0),
	datad => \count|s_cntValue\(3),
	combout => \count|s_cntValue[3]~2_combout\);

-- Location: LCCOMB_X107_Y69_N22
\count|s_cntValue~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_cntValue~3_combout\ = (\KEY[0]~input_o\ & (\count|s_cntValue[3]~2_combout\ & (\count|s_cntValue\(0) $ (\count|s_cntValue\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_cntValue\(0),
	datac => \count|s_cntValue\(1),
	datad => \count|s_cntValue[3]~2_combout\,
	combout => \count|s_cntValue~3_combout\);

-- Location: FF_X107_Y69_N23
\count|s_cntValue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulse|clk_out~clkctrl_outclk\,
	d => \count|s_cntValue~3_combout\,
	ena => \count|s_cntValue[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|s_cntValue\(1));

-- Location: LCCOMB_X107_Y69_N16
\bin|binoutput[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin|binoutput[0]~0_combout\ = (!\count|s_cntValue\(1) & (!\count|s_cntValue\(3) & (\count|s_cntValue\(0) $ (\count|s_cntValue\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_cntValue\(1),
	datab => \count|s_cntValue\(0),
	datac => \count|s_cntValue\(3),
	datad => \count|s_cntValue\(2),
	combout => \bin|binoutput[0]~0_combout\);

-- Location: LCCOMB_X107_Y69_N14
\bin|binoutput[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin|binoutput[1]~1_combout\ = (!\count|s_cntValue\(3) & (\count|s_cntValue\(2) & (\count|s_cntValue\(1) $ (\count|s_cntValue\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_cntValue\(1),
	datab => \count|s_cntValue\(0),
	datac => \count|s_cntValue\(3),
	datad => \count|s_cntValue\(2),
	combout => \bin|binoutput[1]~1_combout\);

-- Location: LCCOMB_X107_Y69_N0
\bin|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin|Equal7~0_combout\ = (\count|s_cntValue\(1) & (!\count|s_cntValue\(0) & (!\count|s_cntValue\(3) & !\count|s_cntValue\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_cntValue\(1),
	datab => \count|s_cntValue\(0),
	datac => \count|s_cntValue\(3),
	datad => \count|s_cntValue\(2),
	combout => \bin|Equal7~0_combout\);

-- Location: LCCOMB_X107_Y69_N6
\bin|binoutput[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin|binoutput[3]~2_combout\ = (!\count|s_cntValue\(3) & ((\count|s_cntValue\(1) & (\count|s_cntValue\(0) & \count|s_cntValue\(2))) # (!\count|s_cntValue\(1) & (\count|s_cntValue\(0) $ (\count|s_cntValue\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_cntValue\(1),
	datab => \count|s_cntValue\(0),
	datac => \count|s_cntValue\(3),
	datad => \count|s_cntValue\(2),
	combout => \bin|binoutput[3]~2_combout\);

-- Location: LCCOMB_X107_Y69_N20
\bin|binoutput[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin|binoutput[4]~3_combout\ = (\count|s_cntValue\(1) & (\count|s_cntValue\(0) & (!\count|s_cntValue\(3)))) # (!\count|s_cntValue\(1) & ((\count|s_cntValue\(2) & ((!\count|s_cntValue\(3)))) # (!\count|s_cntValue\(2) & (\count|s_cntValue\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_cntValue\(1),
	datab => \count|s_cntValue\(0),
	datac => \count|s_cntValue\(3),
	datad => \count|s_cntValue\(2),
	combout => \bin|binoutput[4]~3_combout\);

-- Location: LCCOMB_X107_Y69_N26
\bin|binoutput[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin|binoutput[5]~4_combout\ = (!\count|s_cntValue\(3) & ((\count|s_cntValue\(1) & ((\count|s_cntValue\(0)) # (!\count|s_cntValue\(2)))) # (!\count|s_cntValue\(1) & (\count|s_cntValue\(0) & !\count|s_cntValue\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_cntValue\(1),
	datab => \count|s_cntValue\(0),
	datac => \count|s_cntValue\(3),
	datad => \count|s_cntValue\(2),
	combout => \bin|binoutput[5]~4_combout\);

-- Location: LCCOMB_X107_Y69_N24
\bin|binoutput[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin|binoutput[6]~5_combout\ = (\count|s_cntValue\(1) & ((\count|s_cntValue\(3)) # ((\count|s_cntValue\(0) & \count|s_cntValue\(2))))) # (!\count|s_cntValue\(1) & ((\count|s_cntValue\(3) $ (!\count|s_cntValue\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_cntValue\(1),
	datab => \count|s_cntValue\(0),
	datac => \count|s_cntValue\(3),
	datad => \count|s_cntValue\(2),
	combout => \bin|binoutput[6]~5_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;
END structure;


