-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "03/01/2020 17:28:38"

-- 
-- Device: Altera 5M160ZE64C5 Package EQFP64
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	lab1 IS
    PORT (
	o3 : OUT std_logic;
	e : IN std_logic;
	o2 : OUT std_logic;
	d : IN std_logic;
	c : IN std_logic;
	o1 : OUT std_logic;
	a : IN std_logic;
	b : IN std_logic
	);
END lab1;

-- Design Ports Information
-- o3	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- o2	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- o1	=>  Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- e	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- c	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_o3 : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_o2 : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_o1 : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL \e~combout\ : std_logic;
SIGNAL \d~combout\ : std_logic;
SIGNAL \c~combout\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \a~combout\ : std_logic;
SIGNAL \b~combout\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \ALT_INV_e~combout\ : std_logic;

BEGIN

o3 <= ww_o3;
ww_e <= e;
o2 <= ww_o2;
ww_d <= d;
ww_c <= c;
o1 <= ww_o1;
ww_a <= a;
ww_b <= b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_e~combout\ <= NOT \e~combout\;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_e,
	combout => \e~combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d,
	combout => \d~combout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\c~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_c,
	combout => \c~combout\);

-- Location: LC_X4_Y2_N2
inst1 : maxv_lcell
-- Equation(s):
-- \inst1~combout\ = (((\d~combout\) # (\c~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \d~combout\,
	datad => \c~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1~combout\);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a,
	combout => \a~combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b,
	combout => \b~combout\);

-- Location: LC_X4_Y3_N2
inst : maxv_lcell
-- Equation(s):
-- \inst~combout\ = ((\a~combout\ & (\b~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\,
	datac => \b~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst~combout\);

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\o3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_e~combout\,
	oe => VCC,
	padio => ww_o3);

-- Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\o2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1~combout\,
	oe => VCC,
	padio => ww_o2);

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\o1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst~combout\,
	oe => VCC,
	padio => ww_o1);
END structure;


