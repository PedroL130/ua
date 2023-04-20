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

-- DATE "03/31/2023 11:02:58"

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

ENTITY 	ShiftRegister_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	LEDR : BUFFER std_logic_vector(7 DOWNTO 0);
	SW : IN std_logic_vector(0 DOWNTO 0)
	);
END ShiftRegister_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftRegister_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rel|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \rel|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \rel|s_divCounter[12]~51\ : std_logic;
SIGNAL \rel|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \rel|s_divCounter[13]~53\ : std_logic;
SIGNAL \rel|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \rel|s_divCounter[14]~55\ : std_logic;
SIGNAL \rel|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \rel|s_divCounter[15]~57\ : std_logic;
SIGNAL \rel|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \rel|s_divCounter[16]~59\ : std_logic;
SIGNAL \rel|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \rel|s_divCounter[17]~61\ : std_logic;
SIGNAL \rel|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \rel|s_divCounter[18]~63\ : std_logic;
SIGNAL \rel|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \rel|s_divCounter[19]~65\ : std_logic;
SIGNAL \rel|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \rel|s_divCounter[20]~67\ : std_logic;
SIGNAL \rel|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \rel|s_divCounter[21]~69\ : std_logic;
SIGNAL \rel|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \rel|s_divCounter[22]~71\ : std_logic;
SIGNAL \rel|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \rel|s_divCounter[23]~73\ : std_logic;
SIGNAL \rel|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \rel|s_divCounter[24]~75\ : std_logic;
SIGNAL \rel|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \rel|LessThan0~4_combout\ : std_logic;
SIGNAL \rel|clkOut~4_combout\ : std_logic;
SIGNAL \rel|LessThan0~5_combout\ : std_logic;
SIGNAL \rel|LessThan0~2_combout\ : std_logic;
SIGNAL \rel|LessThan0~3_combout\ : std_logic;
SIGNAL \rel|clkOut~3_combout\ : std_logic;
SIGNAL \rel|LessThan0~0_combout\ : std_logic;
SIGNAL \rel|clkOut~0_combout\ : std_logic;
SIGNAL \rel|clkOut~1_combout\ : std_logic;
SIGNAL \rel|LessThan0~1_combout\ : std_logic;
SIGNAL \rel|LessThan0~6_combout\ : std_logic;
SIGNAL \rel|s_divCounter[0]~27\ : std_logic;
SIGNAL \rel|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \rel|s_divCounter[1]~29\ : std_logic;
SIGNAL \rel|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \rel|s_divCounter[2]~31\ : std_logic;
SIGNAL \rel|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \rel|s_divCounter[3]~33\ : std_logic;
SIGNAL \rel|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \rel|s_divCounter[4]~35\ : std_logic;
SIGNAL \rel|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \rel|s_divCounter[5]~37\ : std_logic;
SIGNAL \rel|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \rel|s_divCounter[6]~39\ : std_logic;
SIGNAL \rel|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \rel|s_divCounter[7]~41\ : std_logic;
SIGNAL \rel|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \rel|s_divCounter[8]~43\ : std_logic;
SIGNAL \rel|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \rel|s_divCounter[9]~45\ : std_logic;
SIGNAL \rel|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \rel|s_divCounter[10]~47\ : std_logic;
SIGNAL \rel|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \rel|s_divCounter[11]~49\ : std_logic;
SIGNAL \rel|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \rel|clkOut~2_combout\ : std_logic;
SIGNAL \rel|clkOut~5_combout\ : std_logic;
SIGNAL \rel|clkOut~6_combout\ : std_logic;
SIGNAL \rel|clkOut~7_combout\ : std_logic;
SIGNAL \rel|clkOut~8_combout\ : std_logic;
SIGNAL \rel|clkOut~9_combout\ : std_logic;
SIGNAL \rel|clkOut~q\ : std_logic;
SIGNAL \rel|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \c1|s_shift[1]~feeder_combout\ : std_logic;
SIGNAL \c1|s_shift[2]~feeder_combout\ : std_logic;
SIGNAL \c1|s_shift[3]~feeder_combout\ : std_logic;
SIGNAL \c1|s_shift[4]~feeder_combout\ : std_logic;
SIGNAL \c1|s_shift[5]~feeder_combout\ : std_logic;
SIGNAL \c1|s_shift[6]~feeder_combout\ : std_logic;
SIGNAL \c1|s_shift[7]~feeder_combout\ : std_logic;
SIGNAL \rel|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \c1|s_shift\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\rel|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rel|clkOut~q\);
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
	i => \c1|s_shift\(0),
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
	i => \c1|s_shift\(1),
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
	i => \c1|s_shift\(2),
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
	i => \c1|s_shift\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c1|s_shift\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c1|s_shift\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c1|s_shift\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c1|s_shift\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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

-- Location: LCCOMB_X60_Y6_N6
\rel|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[0]~26_combout\ = \rel|s_divCounter\(0) $ (VCC)
-- \rel|s_divCounter[0]~27\ = CARRY(\rel|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(0),
	datad => VCC,
	combout => \rel|s_divCounter[0]~26_combout\,
	cout => \rel|s_divCounter[0]~27\);

-- Location: LCCOMB_X60_Y6_N30
\rel|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[12]~50_combout\ = (\rel|s_divCounter\(12) & (\rel|s_divCounter[11]~49\ $ (GND))) # (!\rel|s_divCounter\(12) & (!\rel|s_divCounter[11]~49\ & VCC))
-- \rel|s_divCounter[12]~51\ = CARRY((\rel|s_divCounter\(12) & !\rel|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(12),
	datad => VCC,
	cin => \rel|s_divCounter[11]~49\,
	combout => \rel|s_divCounter[12]~50_combout\,
	cout => \rel|s_divCounter[12]~51\);

-- Location: LCCOMB_X60_Y5_N0
\rel|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[13]~52_combout\ = (\rel|s_divCounter\(13) & (!\rel|s_divCounter[12]~51\)) # (!\rel|s_divCounter\(13) & ((\rel|s_divCounter[12]~51\) # (GND)))
-- \rel|s_divCounter[13]~53\ = CARRY((!\rel|s_divCounter[12]~51\) # (!\rel|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rel|s_divCounter\(13),
	datad => VCC,
	cin => \rel|s_divCounter[12]~51\,
	combout => \rel|s_divCounter[13]~52_combout\,
	cout => \rel|s_divCounter[13]~53\);

-- Location: FF_X59_Y6_N21
\rel|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \rel|s_divCounter[13]~52_combout\,
	sclr => \rel|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(13));

-- Location: LCCOMB_X60_Y5_N2
\rel|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[14]~54_combout\ = (\rel|s_divCounter\(14) & (\rel|s_divCounter[13]~53\ $ (GND))) # (!\rel|s_divCounter\(14) & (!\rel|s_divCounter[13]~53\ & VCC))
-- \rel|s_divCounter[14]~55\ = CARRY((\rel|s_divCounter\(14) & !\rel|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rel|s_divCounter\(14),
	datad => VCC,
	cin => \rel|s_divCounter[13]~53\,
	combout => \rel|s_divCounter[14]~54_combout\,
	cout => \rel|s_divCounter[14]~55\);

-- Location: FF_X60_Y5_N3
\rel|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[14]~54_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(14));

-- Location: LCCOMB_X60_Y5_N4
\rel|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[15]~56_combout\ = (\rel|s_divCounter\(15) & (!\rel|s_divCounter[14]~55\)) # (!\rel|s_divCounter\(15) & ((\rel|s_divCounter[14]~55\) # (GND)))
-- \rel|s_divCounter[15]~57\ = CARRY((!\rel|s_divCounter[14]~55\) # (!\rel|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rel|s_divCounter\(15),
	datad => VCC,
	cin => \rel|s_divCounter[14]~55\,
	combout => \rel|s_divCounter[15]~56_combout\,
	cout => \rel|s_divCounter[15]~57\);

-- Location: FF_X60_Y5_N5
\rel|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[15]~56_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(15));

-- Location: LCCOMB_X60_Y5_N6
\rel|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[16]~58_combout\ = (\rel|s_divCounter\(16) & (\rel|s_divCounter[15]~57\ $ (GND))) # (!\rel|s_divCounter\(16) & (!\rel|s_divCounter[15]~57\ & VCC))
-- \rel|s_divCounter[16]~59\ = CARRY((\rel|s_divCounter\(16) & !\rel|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(16),
	datad => VCC,
	cin => \rel|s_divCounter[15]~57\,
	combout => \rel|s_divCounter[16]~58_combout\,
	cout => \rel|s_divCounter[16]~59\);

-- Location: FF_X60_Y5_N7
\rel|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[16]~58_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(16));

-- Location: LCCOMB_X60_Y5_N8
\rel|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[17]~60_combout\ = (\rel|s_divCounter\(17) & (!\rel|s_divCounter[16]~59\)) # (!\rel|s_divCounter\(17) & ((\rel|s_divCounter[16]~59\) # (GND)))
-- \rel|s_divCounter[17]~61\ = CARRY((!\rel|s_divCounter[16]~59\) # (!\rel|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rel|s_divCounter\(17),
	datad => VCC,
	cin => \rel|s_divCounter[16]~59\,
	combout => \rel|s_divCounter[17]~60_combout\,
	cout => \rel|s_divCounter[17]~61\);

-- Location: FF_X60_Y5_N9
\rel|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[17]~60_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(17));

-- Location: LCCOMB_X60_Y5_N10
\rel|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[18]~62_combout\ = (\rel|s_divCounter\(18) & (\rel|s_divCounter[17]~61\ $ (GND))) # (!\rel|s_divCounter\(18) & (!\rel|s_divCounter[17]~61\ & VCC))
-- \rel|s_divCounter[18]~63\ = CARRY((\rel|s_divCounter\(18) & !\rel|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(18),
	datad => VCC,
	cin => \rel|s_divCounter[17]~61\,
	combout => \rel|s_divCounter[18]~62_combout\,
	cout => \rel|s_divCounter[18]~63\);

-- Location: FF_X60_Y5_N11
\rel|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[18]~62_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(18));

-- Location: LCCOMB_X60_Y5_N12
\rel|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[19]~64_combout\ = (\rel|s_divCounter\(19) & (!\rel|s_divCounter[18]~63\)) # (!\rel|s_divCounter\(19) & ((\rel|s_divCounter[18]~63\) # (GND)))
-- \rel|s_divCounter[19]~65\ = CARRY((!\rel|s_divCounter[18]~63\) # (!\rel|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(19),
	datad => VCC,
	cin => \rel|s_divCounter[18]~63\,
	combout => \rel|s_divCounter[19]~64_combout\,
	cout => \rel|s_divCounter[19]~65\);

-- Location: FF_X60_Y5_N13
\rel|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[19]~64_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(19));

-- Location: LCCOMB_X60_Y5_N14
\rel|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[20]~66_combout\ = (\rel|s_divCounter\(20) & (\rel|s_divCounter[19]~65\ $ (GND))) # (!\rel|s_divCounter\(20) & (!\rel|s_divCounter[19]~65\ & VCC))
-- \rel|s_divCounter[20]~67\ = CARRY((\rel|s_divCounter\(20) & !\rel|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rel|s_divCounter\(20),
	datad => VCC,
	cin => \rel|s_divCounter[19]~65\,
	combout => \rel|s_divCounter[20]~66_combout\,
	cout => \rel|s_divCounter[20]~67\);

-- Location: FF_X60_Y5_N15
\rel|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[20]~66_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(20));

-- Location: LCCOMB_X60_Y5_N16
\rel|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[21]~68_combout\ = (\rel|s_divCounter\(21) & (!\rel|s_divCounter[20]~67\)) # (!\rel|s_divCounter\(21) & ((\rel|s_divCounter[20]~67\) # (GND)))
-- \rel|s_divCounter[21]~69\ = CARRY((!\rel|s_divCounter[20]~67\) # (!\rel|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rel|s_divCounter\(21),
	datad => VCC,
	cin => \rel|s_divCounter[20]~67\,
	combout => \rel|s_divCounter[21]~68_combout\,
	cout => \rel|s_divCounter[21]~69\);

-- Location: FF_X60_Y5_N17
\rel|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[21]~68_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(21));

-- Location: LCCOMB_X60_Y5_N18
\rel|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[22]~70_combout\ = (\rel|s_divCounter\(22) & (\rel|s_divCounter[21]~69\ $ (GND))) # (!\rel|s_divCounter\(22) & (!\rel|s_divCounter[21]~69\ & VCC))
-- \rel|s_divCounter[22]~71\ = CARRY((\rel|s_divCounter\(22) & !\rel|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rel|s_divCounter\(22),
	datad => VCC,
	cin => \rel|s_divCounter[21]~69\,
	combout => \rel|s_divCounter[22]~70_combout\,
	cout => \rel|s_divCounter[22]~71\);

-- Location: FF_X60_Y5_N19
\rel|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[22]~70_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(22));

-- Location: LCCOMB_X60_Y5_N20
\rel|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[23]~72_combout\ = (\rel|s_divCounter\(23) & (!\rel|s_divCounter[22]~71\)) # (!\rel|s_divCounter\(23) & ((\rel|s_divCounter[22]~71\) # (GND)))
-- \rel|s_divCounter[23]~73\ = CARRY((!\rel|s_divCounter[22]~71\) # (!\rel|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rel|s_divCounter\(23),
	datad => VCC,
	cin => \rel|s_divCounter[22]~71\,
	combout => \rel|s_divCounter[23]~72_combout\,
	cout => \rel|s_divCounter[23]~73\);

-- Location: FF_X60_Y5_N21
\rel|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[23]~72_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(23));

-- Location: LCCOMB_X60_Y5_N22
\rel|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[24]~74_combout\ = (\rel|s_divCounter\(24) & (\rel|s_divCounter[23]~73\ $ (GND))) # (!\rel|s_divCounter\(24) & (!\rel|s_divCounter[23]~73\ & VCC))
-- \rel|s_divCounter[24]~75\ = CARRY((\rel|s_divCounter\(24) & !\rel|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(24),
	datad => VCC,
	cin => \rel|s_divCounter[23]~73\,
	combout => \rel|s_divCounter[24]~74_combout\,
	cout => \rel|s_divCounter[24]~75\);

-- Location: FF_X60_Y5_N23
\rel|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[24]~74_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(24));

-- Location: LCCOMB_X60_Y5_N24
\rel|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[25]~76_combout\ = \rel|s_divCounter[24]~75\ $ (\rel|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rel|s_divCounter\(25),
	cin => \rel|s_divCounter[24]~75\,
	combout => \rel|s_divCounter[25]~76_combout\);

-- Location: FF_X60_Y5_N25
\rel|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[25]~76_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(25));

-- Location: LCCOMB_X60_Y5_N26
\rel|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|LessThan0~4_combout\ = ((!\rel|s_divCounter\(18) & !\rel|s_divCounter\(17))) # (!\rel|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(18),
	datac => \rel|s_divCounter\(17),
	datad => \rel|s_divCounter\(23),
	combout => \rel|LessThan0~4_combout\);

-- Location: LCCOMB_X60_Y5_N30
\rel|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|clkOut~4_combout\ = (\rel|s_divCounter\(19) & (\rel|s_divCounter\(21) & (\rel|s_divCounter\(20) & \rel|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(19),
	datab => \rel|s_divCounter\(21),
	datac => \rel|s_divCounter\(20),
	datad => \rel|s_divCounter\(22),
	combout => \rel|clkOut~4_combout\);

-- Location: LCCOMB_X59_Y6_N2
\rel|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|LessThan0~5_combout\ = ((!\rel|s_divCounter\(24) & ((\rel|LessThan0~4_combout\) # (!\rel|clkOut~4_combout\)))) # (!\rel|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(25),
	datab => \rel|s_divCounter\(24),
	datac => \rel|LessThan0~4_combout\,
	datad => \rel|clkOut~4_combout\,
	combout => \rel|LessThan0~5_combout\);

-- Location: LCCOMB_X59_Y6_N10
\rel|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|LessThan0~2_combout\ = (((!\rel|s_divCounter\(14)) # (!\rel|s_divCounter\(15))) # (!\rel|s_divCounter\(13))) # (!\rel|s_divCounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(12),
	datab => \rel|s_divCounter\(13),
	datac => \rel|s_divCounter\(15),
	datad => \rel|s_divCounter\(14),
	combout => \rel|LessThan0~2_combout\);

-- Location: LCCOMB_X59_Y6_N14
\rel|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|LessThan0~3_combout\ = (!\rel|s_divCounter\(24) & (!\rel|s_divCounter\(18) & (!\rel|s_divCounter\(16) & \rel|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(24),
	datab => \rel|s_divCounter\(18),
	datac => \rel|s_divCounter\(16),
	datad => \rel|LessThan0~2_combout\,
	combout => \rel|LessThan0~3_combout\);

-- Location: LCCOMB_X60_Y6_N4
\rel|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|clkOut~3_combout\ = (!\rel|s_divCounter\(8) & (!\rel|s_divCounter\(7) & (!\rel|s_divCounter\(10) & !\rel|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(8),
	datab => \rel|s_divCounter\(7),
	datac => \rel|s_divCounter\(10),
	datad => \rel|s_divCounter\(9),
	combout => \rel|clkOut~3_combout\);

-- Location: LCCOMB_X59_Y6_N26
\rel|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|LessThan0~0_combout\ = (!\rel|s_divCounter\(11) & (!\rel|s_divCounter\(18) & (!\rel|s_divCounter\(16) & !\rel|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(11),
	datab => \rel|s_divCounter\(18),
	datac => \rel|s_divCounter\(16),
	datad => \rel|s_divCounter\(24),
	combout => \rel|LessThan0~0_combout\);

-- Location: LCCOMB_X60_Y6_N0
\rel|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|clkOut~0_combout\ = (\rel|s_divCounter\(3) & (\rel|s_divCounter\(1) & (\rel|s_divCounter\(0) & \rel|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(3),
	datab => \rel|s_divCounter\(1),
	datac => \rel|s_divCounter\(0),
	datad => \rel|s_divCounter\(2),
	combout => \rel|clkOut~0_combout\);

-- Location: LCCOMB_X60_Y6_N2
\rel|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|clkOut~1_combout\ = (\rel|s_divCounter\(5) & (\rel|s_divCounter\(4) & \rel|clkOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rel|s_divCounter\(5),
	datac => \rel|s_divCounter\(4),
	datad => \rel|clkOut~0_combout\,
	combout => \rel|clkOut~1_combout\);

-- Location: LCCOMB_X59_Y6_N28
\rel|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|LessThan0~1_combout\ = (\rel|clkOut~3_combout\ & (\rel|LessThan0~0_combout\ & ((!\rel|clkOut~1_combout\) # (!\rel|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rel|clkOut~3_combout\,
	datab => \rel|s_divCounter\(6),
	datac => \rel|LessThan0~0_combout\,
	datad => \rel|clkOut~1_combout\,
	combout => \rel|LessThan0~1_combout\);

-- Location: LCCOMB_X59_Y6_N30
\rel|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|LessThan0~6_combout\ = (!\rel|LessThan0~5_combout\ & (!\rel|LessThan0~3_combout\ & !\rel|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rel|LessThan0~5_combout\,
	datac => \rel|LessThan0~3_combout\,
	datad => \rel|LessThan0~1_combout\,
	combout => \rel|LessThan0~6_combout\);

-- Location: FF_X60_Y6_N7
\rel|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[0]~26_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(0));

-- Location: LCCOMB_X60_Y6_N8
\rel|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[1]~28_combout\ = (\rel|s_divCounter\(1) & (!\rel|s_divCounter[0]~27\)) # (!\rel|s_divCounter\(1) & ((\rel|s_divCounter[0]~27\) # (GND)))
-- \rel|s_divCounter[1]~29\ = CARRY((!\rel|s_divCounter[0]~27\) # (!\rel|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rel|s_divCounter\(1),
	datad => VCC,
	cin => \rel|s_divCounter[0]~27\,
	combout => \rel|s_divCounter[1]~28_combout\,
	cout => \rel|s_divCounter[1]~29\);

-- Location: FF_X60_Y6_N9
\rel|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[1]~28_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(1));

-- Location: LCCOMB_X60_Y6_N10
\rel|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[2]~30_combout\ = (\rel|s_divCounter\(2) & (\rel|s_divCounter[1]~29\ $ (GND))) # (!\rel|s_divCounter\(2) & (!\rel|s_divCounter[1]~29\ & VCC))
-- \rel|s_divCounter[2]~31\ = CARRY((\rel|s_divCounter\(2) & !\rel|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(2),
	datad => VCC,
	cin => \rel|s_divCounter[1]~29\,
	combout => \rel|s_divCounter[2]~30_combout\,
	cout => \rel|s_divCounter[2]~31\);

-- Location: FF_X60_Y6_N11
\rel|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[2]~30_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(2));

-- Location: LCCOMB_X60_Y6_N12
\rel|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[3]~32_combout\ = (\rel|s_divCounter\(3) & (!\rel|s_divCounter[2]~31\)) # (!\rel|s_divCounter\(3) & ((\rel|s_divCounter[2]~31\) # (GND)))
-- \rel|s_divCounter[3]~33\ = CARRY((!\rel|s_divCounter[2]~31\) # (!\rel|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(3),
	datad => VCC,
	cin => \rel|s_divCounter[2]~31\,
	combout => \rel|s_divCounter[3]~32_combout\,
	cout => \rel|s_divCounter[3]~33\);

-- Location: FF_X60_Y6_N13
\rel|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[3]~32_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(3));

-- Location: LCCOMB_X60_Y6_N14
\rel|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[4]~34_combout\ = (\rel|s_divCounter\(4) & (\rel|s_divCounter[3]~33\ $ (GND))) # (!\rel|s_divCounter\(4) & (!\rel|s_divCounter[3]~33\ & VCC))
-- \rel|s_divCounter[4]~35\ = CARRY((\rel|s_divCounter\(4) & !\rel|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rel|s_divCounter\(4),
	datad => VCC,
	cin => \rel|s_divCounter[3]~33\,
	combout => \rel|s_divCounter[4]~34_combout\,
	cout => \rel|s_divCounter[4]~35\);

-- Location: FF_X60_Y6_N15
\rel|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[4]~34_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(4));

-- Location: LCCOMB_X60_Y6_N16
\rel|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[5]~36_combout\ = (\rel|s_divCounter\(5) & (!\rel|s_divCounter[4]~35\)) # (!\rel|s_divCounter\(5) & ((\rel|s_divCounter[4]~35\) # (GND)))
-- \rel|s_divCounter[5]~37\ = CARRY((!\rel|s_divCounter[4]~35\) # (!\rel|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rel|s_divCounter\(5),
	datad => VCC,
	cin => \rel|s_divCounter[4]~35\,
	combout => \rel|s_divCounter[5]~36_combout\,
	cout => \rel|s_divCounter[5]~37\);

-- Location: FF_X60_Y6_N17
\rel|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[5]~36_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(5));

-- Location: LCCOMB_X60_Y6_N18
\rel|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[6]~38_combout\ = (\rel|s_divCounter\(6) & (\rel|s_divCounter[5]~37\ $ (GND))) # (!\rel|s_divCounter\(6) & (!\rel|s_divCounter[5]~37\ & VCC))
-- \rel|s_divCounter[6]~39\ = CARRY((\rel|s_divCounter\(6) & !\rel|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rel|s_divCounter\(6),
	datad => VCC,
	cin => \rel|s_divCounter[5]~37\,
	combout => \rel|s_divCounter[6]~38_combout\,
	cout => \rel|s_divCounter[6]~39\);

-- Location: FF_X60_Y6_N19
\rel|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[6]~38_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(6));

-- Location: LCCOMB_X60_Y6_N20
\rel|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[7]~40_combout\ = (\rel|s_divCounter\(7) & (!\rel|s_divCounter[6]~39\)) # (!\rel|s_divCounter\(7) & ((\rel|s_divCounter[6]~39\) # (GND)))
-- \rel|s_divCounter[7]~41\ = CARRY((!\rel|s_divCounter[6]~39\) # (!\rel|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rel|s_divCounter\(7),
	datad => VCC,
	cin => \rel|s_divCounter[6]~39\,
	combout => \rel|s_divCounter[7]~40_combout\,
	cout => \rel|s_divCounter[7]~41\);

-- Location: FF_X60_Y6_N21
\rel|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[7]~40_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(7));

-- Location: LCCOMB_X60_Y6_N22
\rel|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[8]~42_combout\ = (\rel|s_divCounter\(8) & (\rel|s_divCounter[7]~41\ $ (GND))) # (!\rel|s_divCounter\(8) & (!\rel|s_divCounter[7]~41\ & VCC))
-- \rel|s_divCounter[8]~43\ = CARRY((\rel|s_divCounter\(8) & !\rel|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(8),
	datad => VCC,
	cin => \rel|s_divCounter[7]~41\,
	combout => \rel|s_divCounter[8]~42_combout\,
	cout => \rel|s_divCounter[8]~43\);

-- Location: FF_X60_Y6_N23
\rel|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[8]~42_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(8));

-- Location: LCCOMB_X60_Y6_N24
\rel|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[9]~44_combout\ = (\rel|s_divCounter\(9) & (!\rel|s_divCounter[8]~43\)) # (!\rel|s_divCounter\(9) & ((\rel|s_divCounter[8]~43\) # (GND)))
-- \rel|s_divCounter[9]~45\ = CARRY((!\rel|s_divCounter[8]~43\) # (!\rel|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rel|s_divCounter\(9),
	datad => VCC,
	cin => \rel|s_divCounter[8]~43\,
	combout => \rel|s_divCounter[9]~44_combout\,
	cout => \rel|s_divCounter[9]~45\);

-- Location: FF_X60_Y6_N25
\rel|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[9]~44_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(9));

-- Location: LCCOMB_X60_Y6_N26
\rel|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[10]~46_combout\ = (\rel|s_divCounter\(10) & (\rel|s_divCounter[9]~45\ $ (GND))) # (!\rel|s_divCounter\(10) & (!\rel|s_divCounter[9]~45\ & VCC))
-- \rel|s_divCounter[10]~47\ = CARRY((\rel|s_divCounter\(10) & !\rel|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(10),
	datad => VCC,
	cin => \rel|s_divCounter[9]~45\,
	combout => \rel|s_divCounter[10]~46_combout\,
	cout => \rel|s_divCounter[10]~47\);

-- Location: FF_X60_Y6_N27
\rel|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[10]~46_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(10));

-- Location: LCCOMB_X60_Y6_N28
\rel|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|s_divCounter[11]~48_combout\ = (\rel|s_divCounter\(11) & (!\rel|s_divCounter[10]~47\)) # (!\rel|s_divCounter\(11) & ((\rel|s_divCounter[10]~47\) # (GND)))
-- \rel|s_divCounter[11]~49\ = CARRY((!\rel|s_divCounter[10]~47\) # (!\rel|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rel|s_divCounter\(11),
	datad => VCC,
	cin => \rel|s_divCounter[10]~47\,
	combout => \rel|s_divCounter[11]~48_combout\,
	cout => \rel|s_divCounter[11]~49\);

-- Location: FF_X60_Y6_N29
\rel|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[11]~48_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(11));

-- Location: FF_X60_Y6_N31
\rel|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|s_divCounter[12]~50_combout\,
	sclr => \rel|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|s_divCounter\(12));

-- Location: LCCOMB_X59_Y6_N22
\rel|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|clkOut~2_combout\ = (\rel|s_divCounter\(12) & (\rel|s_divCounter\(14) & (\rel|s_divCounter\(13) & !\rel|s_divCounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(12),
	datab => \rel|s_divCounter\(14),
	datac => \rel|s_divCounter\(13),
	datad => \rel|s_divCounter\(6),
	combout => \rel|clkOut~2_combout\);

-- Location: LCCOMB_X60_Y5_N28
\rel|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|clkOut~5_combout\ = (\rel|s_divCounter\(18) & (!\rel|s_divCounter\(23) & (\rel|s_divCounter\(24) & !\rel|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(18),
	datab => \rel|s_divCounter\(23),
	datac => \rel|s_divCounter\(24),
	datad => \rel|s_divCounter\(25),
	combout => \rel|clkOut~5_combout\);

-- Location: LCCOMB_X59_Y6_N16
\rel|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|clkOut~6_combout\ = (\rel|s_divCounter\(16) & (!\rel|s_divCounter\(15) & (\rel|clkOut~5_combout\ & !\rel|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rel|s_divCounter\(16),
	datab => \rel|s_divCounter\(15),
	datac => \rel|clkOut~5_combout\,
	datad => \rel|s_divCounter\(17),
	combout => \rel|clkOut~6_combout\);

-- Location: LCCOMB_X59_Y6_N6
\rel|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|clkOut~7_combout\ = (\rel|clkOut~4_combout\ & (\rel|s_divCounter\(11) & (\rel|clkOut~3_combout\ & \rel|clkOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rel|clkOut~4_combout\,
	datab => \rel|s_divCounter\(11),
	datac => \rel|clkOut~3_combout\,
	datad => \rel|clkOut~6_combout\,
	combout => \rel|clkOut~7_combout\);

-- Location: LCCOMB_X59_Y6_N24
\rel|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|clkOut~8_combout\ = (\rel|clkOut~q\) # ((\rel|clkOut~2_combout\ & (\rel|clkOut~1_combout\ & \rel|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rel|clkOut~2_combout\,
	datab => \rel|clkOut~q\,
	datac => \rel|clkOut~1_combout\,
	datad => \rel|clkOut~7_combout\,
	combout => \rel|clkOut~8_combout\);

-- Location: LCCOMB_X59_Y6_N18
\rel|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rel|clkOut~9_combout\ = (\rel|clkOut~8_combout\ & ((\rel|LessThan0~1_combout\) # ((\rel|LessThan0~5_combout\) # (\rel|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rel|clkOut~8_combout\,
	datab => \rel|LessThan0~1_combout\,
	datac => \rel|LessThan0~5_combout\,
	datad => \rel|LessThan0~3_combout\,
	combout => \rel|clkOut~9_combout\);

-- Location: FF_X59_Y6_N19
\rel|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rel|clkOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rel|clkOut~q\);

-- Location: CLKCTRL_G15
\rel|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rel|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rel|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X88_Y72_N29
\c1|s_shift[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rel|clkOut~clkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|s_shift\(0));

-- Location: LCCOMB_X88_Y72_N18
\c1|s_shift[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|s_shift[1]~feeder_combout\ = \c1|s_shift\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|s_shift\(0),
	combout => \c1|s_shift[1]~feeder_combout\);

-- Location: FF_X88_Y72_N19
\c1|s_shift[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rel|clkOut~clkctrl_outclk\,
	d => \c1|s_shift[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|s_shift\(1));

-- Location: LCCOMB_X88_Y72_N16
\c1|s_shift[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|s_shift[2]~feeder_combout\ = \c1|s_shift\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|s_shift\(1),
	combout => \c1|s_shift[2]~feeder_combout\);

-- Location: FF_X88_Y72_N17
\c1|s_shift[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rel|clkOut~clkctrl_outclk\,
	d => \c1|s_shift[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|s_shift\(2));

-- Location: LCCOMB_X88_Y72_N6
\c1|s_shift[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|s_shift[3]~feeder_combout\ = \c1|s_shift\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|s_shift\(2),
	combout => \c1|s_shift[3]~feeder_combout\);

-- Location: FF_X88_Y72_N7
\c1|s_shift[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rel|clkOut~clkctrl_outclk\,
	d => \c1|s_shift[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|s_shift\(3));

-- Location: LCCOMB_X88_Y72_N0
\c1|s_shift[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|s_shift[4]~feeder_combout\ = \c1|s_shift\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|s_shift\(3),
	combout => \c1|s_shift[4]~feeder_combout\);

-- Location: FF_X88_Y72_N1
\c1|s_shift[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rel|clkOut~clkctrl_outclk\,
	d => \c1|s_shift[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|s_shift\(4));

-- Location: LCCOMB_X88_Y72_N2
\c1|s_shift[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|s_shift[5]~feeder_combout\ = \c1|s_shift\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|s_shift\(4),
	combout => \c1|s_shift[5]~feeder_combout\);

-- Location: FF_X88_Y72_N3
\c1|s_shift[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rel|clkOut~clkctrl_outclk\,
	d => \c1|s_shift[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|s_shift\(5));

-- Location: LCCOMB_X88_Y72_N20
\c1|s_shift[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|s_shift[6]~feeder_combout\ = \c1|s_shift\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|s_shift\(5),
	combout => \c1|s_shift[6]~feeder_combout\);

-- Location: FF_X88_Y72_N21
\c1|s_shift[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rel|clkOut~clkctrl_outclk\,
	d => \c1|s_shift[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|s_shift\(6));

-- Location: LCCOMB_X88_Y72_N22
\c1|s_shift[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|s_shift[7]~feeder_combout\ = \c1|s_shift\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|s_shift\(6),
	combout => \c1|s_shift[7]~feeder_combout\);

-- Location: FF_X88_Y72_N23
\c1|s_shift[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rel|clkOut~clkctrl_outclk\,
	d => \c1|s_shift[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|s_shift\(7));

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


