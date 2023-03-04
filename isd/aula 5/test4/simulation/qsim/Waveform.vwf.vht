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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/02/2022 20:05:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          test4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY test4_vhd_vec_tst IS
END test4_vhd_vec_tst;
ARCHITECTURE test4_arch OF test4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL c : STD_LOGIC;
SIGNAL x : STD_LOGIC;
SIGNAL y : STD_LOGIC;
COMPONENT test4
	PORT (
	c : OUT STD_LOGIC;
	x : IN STD_LOGIC;
	y : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : test4
	PORT MAP (
-- list connections between master ports and signals
	c => c,
	x => x,
	y => y
	);

-- x
t_prcs_x: PROCESS
BEGIN
LOOP
	x <= '0';
	WAIT FOR 5000 ps;
	x <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x;

-- y
t_prcs_y: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		y <= '0';
		WAIT FOR 30000 ps;
		y <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	y <= '0';
	WAIT FOR 30000 ps;
	y <= '1';
WAIT;
END PROCESS t_prcs_y;
END test4_arch;
