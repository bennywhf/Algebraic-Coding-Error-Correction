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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/29/2015 00:52:30"

-- 
-- Device: Altera EP4CE115F29C8 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	testHamming IS
    PORT (
	O0 : OUT std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	Error0 : IN std_logic;
	Error1 : IN std_logic;
	Error2 : IN std_logic;
	Error3 : IN std_logic;
	Error4 : IN std_logic;
	Error5 : IN std_logic;
	Error6 : IN std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic
	);
END testHamming;

-- Design Ports Information
-- O0	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O1	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O2	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O3	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O4	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O5	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O6	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Error4	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Error6	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Error0	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Error2	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Error3	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Error5	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Error1	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I3	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF testHamming IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_O0 : std_logic;
SIGNAL ww_I0 : std_logic;
SIGNAL ww_I1 : std_logic;
SIGNAL ww_I2 : std_logic;
SIGNAL ww_I3 : std_logic;
SIGNAL ww_Error0 : std_logic;
SIGNAL ww_Error1 : std_logic;
SIGNAL ww_Error2 : std_logic;
SIGNAL ww_Error3 : std_logic;
SIGNAL ww_Error4 : std_logic;
SIGNAL ww_Error5 : std_logic;
SIGNAL ww_Error6 : std_logic;
SIGNAL ww_O1 : std_logic;
SIGNAL ww_O2 : std_logic;
SIGNAL ww_O3 : std_logic;
SIGNAL ww_O4 : std_logic;
SIGNAL ww_O5 : std_logic;
SIGNAL ww_O6 : std_logic;
SIGNAL \O0~output_o\ : std_logic;
SIGNAL \O1~output_o\ : std_logic;
SIGNAL \O2~output_o\ : std_logic;
SIGNAL \O3~output_o\ : std_logic;
SIGNAL \O4~output_o\ : std_logic;
SIGNAL \O5~output_o\ : std_logic;
SIGNAL \O6~output_o\ : std_logic;
SIGNAL \Error2~input_o\ : std_logic;
SIGNAL \Error5~input_o\ : std_logic;
SIGNAL \Error6~input_o\ : std_logic;
SIGNAL \Error1~input_o\ : std_logic;
SIGNAL \inst1|inst|inst1|3~0_combout\ : std_logic;
SIGNAL \Error0~input_o\ : std_logic;
SIGNAL \Error4~input_o\ : std_logic;
SIGNAL \inst1|inst|inst2|3~0_combout\ : std_logic;
SIGNAL \Error3~input_o\ : std_logic;
SIGNAL \inst1|inst|inst|3~0_combout\ : std_logic;
SIGNAL \inst1|inst2|Mux0~0_combout\ : std_logic;
SIGNAL \I0~input_o\ : std_logic;
SIGNAL \inst1|inst3~combout\ : std_logic;
SIGNAL \I1~input_o\ : std_logic;
SIGNAL \inst1|inst4~0_combout\ : std_logic;
SIGNAL \inst1|inst4~combout\ : std_logic;
SIGNAL \I2~input_o\ : std_logic;
SIGNAL \inst1|inst5~combout\ : std_logic;
SIGNAL \I3~input_o\ : std_logic;
SIGNAL \inst1|inst6~0_combout\ : std_logic;
SIGNAL \inst1|inst6~combout\ : std_logic;
SIGNAL \inst1|inst7~0_combout\ : std_logic;
SIGNAL \inst1|inst7~combout\ : std_logic;
SIGNAL \inst1|inst8~0_combout\ : std_logic;
SIGNAL \inst1|inst8~combout\ : std_logic;
SIGNAL \inst1|inst9~0_combout\ : std_logic;
SIGNAL \inst1|inst9~combout\ : std_logic;

BEGIN

O0 <= ww_O0;
ww_I0 <= I0;
ww_I1 <= I1;
ww_I2 <= I2;
ww_I3 <= I3;
ww_Error0 <= Error0;
ww_Error1 <= Error1;
ww_Error2 <= Error2;
ww_Error3 <= Error3;
ww_Error4 <= Error4;
ww_Error5 <= Error5;
ww_Error6 <= Error6;
O1 <= ww_O1;
O2 <= ww_O2;
O3 <= ww_O3;
O4 <= ww_O4;
O5 <= ww_O5;
O6 <= ww_O6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X72_Y73_N9
\O0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst3~combout\,
	devoe => ww_devoe,
	o => \O0~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\O1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4~combout\,
	devoe => ww_devoe,
	o => \O1~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\O2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5~combout\,
	devoe => ww_devoe,
	o => \O2~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\O3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6~combout\,
	devoe => ww_devoe,
	o => \O3~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\O4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst7~combout\,
	devoe => ww_devoe,
	o => \O4~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\O5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst8~combout\,
	devoe => ww_devoe,
	o => \O5~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\O6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst9~combout\,
	devoe => ww_devoe,
	o => \O6~output_o\);

-- Location: IOIBUF_X115_Y6_N15
\Error2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Error2,
	o => \Error2~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\Error5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Error5,
	o => \Error5~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\Error6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Error6,
	o => \Error6~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\Error1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Error1,
	o => \Error1~input_o\);

-- Location: LCCOMB_X114_Y14_N6
\inst1|inst|inst1|3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|inst1|3~0_combout\ = \Error2~input_o\ $ (\Error5~input_o\ $ (\Error6~input_o\ $ (\Error1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Error2~input_o\,
	datab => \Error5~input_o\,
	datac => \Error6~input_o\,
	datad => \Error1~input_o\,
	combout => \inst1|inst|inst1|3~0_combout\);

-- Location: IOIBUF_X115_Y14_N8
\Error0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Error0,
	o => \Error0~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\Error4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Error4,
	o => \Error4~input_o\);

-- Location: LCCOMB_X114_Y14_N16
\inst1|inst|inst2|3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|inst2|3~0_combout\ = \Error2~input_o\ $ (\Error6~input_o\ $ (\Error0~input_o\ $ (\Error4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Error2~input_o\,
	datab => \Error6~input_o\,
	datac => \Error0~input_o\,
	datad => \Error4~input_o\,
	combout => \inst1|inst|inst2|3~0_combout\);

-- Location: IOIBUF_X115_Y10_N8
\Error3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Error3,
	o => \Error3~input_o\);

-- Location: LCCOMB_X114_Y14_N2
\inst1|inst|inst|3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|inst|3~0_combout\ = \Error3~input_o\ $ (\Error6~input_o\ $ (\Error4~input_o\ $ (\Error5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Error3~input_o\,
	datab => \Error6~input_o\,
	datac => \Error4~input_o\,
	datad => \Error5~input_o\,
	combout => \inst1|inst|inst|3~0_combout\);

-- Location: LCCOMB_X114_Y14_N20
\inst1|inst2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux0~0_combout\ = (\inst1|inst|inst2|3~0_combout\ & !\inst1|inst|inst|3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|inst2|3~0_combout\,
	datad => \inst1|inst|inst|3~0_combout\,
	combout => \inst1|inst2|Mux0~0_combout\);

-- Location: IOIBUF_X115_Y13_N8
\I0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0,
	o => \I0~input_o\);

-- Location: LCCOMB_X114_Y14_N24
\inst1|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst3~combout\ = \Error0~input_o\ $ (\I0~input_o\ $ (((!\inst1|inst|inst1|3~0_combout\ & \inst1|inst2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst1|3~0_combout\,
	datab => \inst1|inst2|Mux0~0_combout\,
	datac => \Error0~input_o\,
	datad => \I0~input_o\,
	combout => \inst1|inst3~combout\);

-- Location: IOIBUF_X115_Y15_N8
\I1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1,
	o => \I1~input_o\);

-- Location: LCCOMB_X114_Y14_N10
\inst1|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst4~0_combout\ = \Error1~input_o\ $ (\I1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Error1~input_o\,
	datad => \I1~input_o\,
	combout => \inst1|inst4~0_combout\);

-- Location: LCCOMB_X114_Y14_N12
\inst1|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst4~combout\ = \inst1|inst4~0_combout\ $ (((!\inst1|inst|inst|3~0_combout\ & (!\inst1|inst|inst2|3~0_combout\ & \inst1|inst|inst1|3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4~0_combout\,
	datab => \inst1|inst|inst|3~0_combout\,
	datac => \inst1|inst|inst2|3~0_combout\,
	datad => \inst1|inst|inst1|3~0_combout\,
	combout => \inst1|inst4~combout\);

-- Location: IOIBUF_X115_Y14_N1
\I2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2,
	o => \I2~input_o\);

-- Location: LCCOMB_X114_Y14_N30
\inst1|inst5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst5~combout\ = \Error2~input_o\ $ (\I2~input_o\ $ (((\inst1|inst2|Mux0~0_combout\ & \inst1|inst|inst1|3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Error2~input_o\,
	datab => \inst1|inst2|Mux0~0_combout\,
	datac => \I2~input_o\,
	datad => \inst1|inst|inst1|3~0_combout\,
	combout => \inst1|inst5~combout\);

-- Location: IOIBUF_X115_Y17_N1
\I3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I3,
	o => \I3~input_o\);

-- Location: LCCOMB_X114_Y14_N8
\inst1|inst6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst6~0_combout\ = \Error3~input_o\ $ (\I3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Error3~input_o\,
	datad => \I3~input_o\,
	combout => \inst1|inst6~0_combout\);

-- Location: LCCOMB_X114_Y14_N18
\inst1|inst6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst6~combout\ = \inst1|inst6~0_combout\ $ (((!\inst1|inst|inst1|3~0_combout\ & (!\inst1|inst|inst2|3~0_combout\ & \inst1|inst|inst|3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst1|3~0_combout\,
	datab => \inst1|inst|inst2|3~0_combout\,
	datac => \inst1|inst6~0_combout\,
	datad => \inst1|inst|inst|3~0_combout\,
	combout => \inst1|inst6~combout\);

-- Location: LCCOMB_X114_Y14_N4
\inst1|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst7~0_combout\ = \Error4~input_o\ $ (\I1~input_o\ $ (\I2~input_o\ $ (\I3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Error4~input_o\,
	datab => \I1~input_o\,
	datac => \I2~input_o\,
	datad => \I3~input_o\,
	combout => \inst1|inst7~0_combout\);

-- Location: LCCOMB_X114_Y14_N14
\inst1|inst7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst7~combout\ = \inst1|inst7~0_combout\ $ (((!\inst1|inst|inst1|3~0_combout\ & (\inst1|inst|inst2|3~0_combout\ & \inst1|inst|inst|3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst1|3~0_combout\,
	datab => \inst1|inst|inst2|3~0_combout\,
	datac => \inst1|inst7~0_combout\,
	datad => \inst1|inst|inst|3~0_combout\,
	combout => \inst1|inst7~combout\);

-- Location: LCCOMB_X114_Y14_N0
\inst1|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst8~0_combout\ = \I0~input_o\ $ (\Error5~input_o\ $ (\I2~input_o\ $ (\I3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0~input_o\,
	datab => \Error5~input_o\,
	datac => \I2~input_o\,
	datad => \I3~input_o\,
	combout => \inst1|inst8~0_combout\);

-- Location: LCCOMB_X114_Y14_N26
\inst1|inst8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst8~combout\ = \inst1|inst8~0_combout\ $ (((\inst1|inst|inst1|3~0_combout\ & (!\inst1|inst|inst2|3~0_combout\ & \inst1|inst|inst|3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst1|3~0_combout\,
	datab => \inst1|inst8~0_combout\,
	datac => \inst1|inst|inst2|3~0_combout\,
	datad => \inst1|inst|inst|3~0_combout\,
	combout => \inst1|inst8~combout\);

-- Location: LCCOMB_X114_Y14_N28
\inst1|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst9~0_combout\ = \I0~input_o\ $ (\I1~input_o\ $ (\Error6~input_o\ $ (\I3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0~input_o\,
	datab => \I1~input_o\,
	datac => \Error6~input_o\,
	datad => \I3~input_o\,
	combout => \inst1|inst9~0_combout\);

-- Location: LCCOMB_X114_Y14_N22
\inst1|inst9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst9~combout\ = \inst1|inst9~0_combout\ $ (((\inst1|inst|inst1|3~0_combout\ & (\inst1|inst|inst|3~0_combout\ & \inst1|inst|inst2|3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst1|3~0_combout\,
	datab => \inst1|inst|inst|3~0_combout\,
	datac => \inst1|inst|inst2|3~0_combout\,
	datad => \inst1|inst9~0_combout\,
	combout => \inst1|inst9~combout\);

ww_O0 <= \O0~output_o\;

ww_O1 <= \O1~output_o\;

ww_O2 <= \O2~output_o\;

ww_O3 <= \O3~output_o\;

ww_O4 <= \O4~output_o\;

ww_O5 <= \O5~output_o\;

ww_O6 <= \O6~output_o\;
END structure;


