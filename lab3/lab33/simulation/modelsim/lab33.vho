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

-- DATE "03/08/2020 20:14:42"

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

ENTITY 	count IS
    PORT (
	En : IN std_logic;
	Clock : IN std_logic;
	Reset : IN std_logic;
	\Out\ : OUT std_logic_vector(3 DOWNTO 0)
	);
END count;

-- Design Ports Information
-- Out[0]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Out[1]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Out[2]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Out[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- En	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF count IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_En : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL \ww_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \En~combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Out[0]~reg0_regout\ : std_logic;
SIGNAL \Out[1]~reg0_regout\ : std_logic;
SIGNAL \Out[2]~reg0_regout\ : std_logic;
SIGNAL \Out[1]~3_combout\ : std_logic;
SIGNAL \Out[3]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_Reset~combout\ : std_logic;

BEGIN

ww_En <= En;
ww_Clock <= Clock;
ww_Reset <= Reset;
\Out\ <= \ww_Out\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Reset~combout\ <= NOT \Reset~combout\;

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\En~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_En,
	combout => \En~combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: LC_X2_Y2_N8
\Out[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \Out[0]~reg0_regout\ = DFFEAS(\En~combout\ $ ((((\Out[0]~reg0_regout\)))), GLOBAL(\Clock~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \En~combout\,
	datad => \Out[0]~reg0_regout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Out[0]~reg0_regout\);

-- Location: LC_X2_Y2_N7
\Out[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \Out[1]~reg0_regout\ = DFFEAS((\Out[1]~reg0_regout\ $ (((\En~combout\ & \Out[0]~reg0_regout\)))), GLOBAL(\Clock~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5af0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \En~combout\,
	datac => \Out[1]~reg0_regout\,
	datad => \Out[0]~reg0_regout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Out[1]~reg0_regout\);

-- Location: LC_X2_Y2_N9
\Out[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \Out[2]~reg0_regout\ = DFFEAS(\Out[2]~reg0_regout\ $ (((\En~combout\ & (\Out[1]~reg0_regout\ & \Out[0]~reg0_regout\)))), GLOBAL(\Clock~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \En~combout\,
	datab => \Out[1]~reg0_regout\,
	datac => \Out[0]~reg0_regout\,
	datad => \Out[2]~reg0_regout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Out[2]~reg0_regout\);

-- Location: LC_X2_Y2_N3
\Out[1]~3\ : maxv_lcell
-- Equation(s):
-- \Out[1]~3_combout\ = (((\En~combout\ & \Out[0]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \En~combout\,
	datad => \Out[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Out[1]~3_combout\);

-- Location: LC_X2_Y2_N4
\Out[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \Out[3]~reg0_regout\ = DFFEAS(\Out[3]~reg0_regout\ $ (((\Out[2]~reg0_regout\ & (\Out[1]~reg0_regout\ & \Out[1]~3_combout\)))), GLOBAL(\Clock~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \Out[3]~reg0_regout\,
	datab => \Out[2]~reg0_regout\,
	datac => \Out[1]~reg0_regout\,
	datad => \Out[1]~3_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Out[3]~reg0_regout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Out[0]~reg0_regout\,
	oe => VCC,
	padio => \ww_Out\(0));

-- Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Out[1]~reg0_regout\,
	oe => VCC,
	padio => \ww_Out\(1));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Out[2]~reg0_regout\,
	oe => VCC,
	padio => \ww_Out\(2));

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Out[3]~reg0_regout\,
	oe => VCC,
	padio => \ww_Out\(3));
END structure;


