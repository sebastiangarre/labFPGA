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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/07/2024 10:05:06"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Restador_Completo_4b IS
    PORT (
	a0 : IN std_logic;
	b0 : IN std_logic;
	a1 : IN std_logic;
	b1 : IN std_logic;
	a2 : IN std_logic;
	b2 : IN std_logic;
	a3 : IN std_logic;
	b3 : IN std_logic;
	bin : IN std_logic;
	CLOCK : IN std_logic;
	bout : OUT std_logic;
	z3 : OUT std_logic;
	z2 : OUT std_logic;
	z1 : OUT std_logic;
	z0 : OUT std_logic
	);
END Restador_Completo_4b;

-- Design Ports Information
-- bout	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z3	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z2	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z0	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Restador_Completo_4b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a0 : std_logic;
SIGNAL ww_b0 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_a3 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_bin : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_bout : std_logic;
SIGNAL ww_z3 : std_logic;
SIGNAL ww_z2 : std_logic;
SIGNAL ww_z1 : std_logic;
SIGNAL ww_z0 : std_logic;
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DFF_inst6~q\ : std_logic;
SIGNAL \DFF_inst9~q\ : std_logic;
SIGNAL \bin~input_o\ : std_logic;
SIGNAL \a1~input_o\ : std_logic;
SIGNAL \b3~input_o\ : std_logic;
SIGNAL \DFF_inst6~feeder_combout\ : std_logic;
SIGNAL \bout~output_o\ : std_logic;
SIGNAL \z3~output_o\ : std_logic;
SIGNAL \z2~output_o\ : std_logic;
SIGNAL \z1~output_o\ : std_logic;
SIGNAL \z0~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \a3~input_o\ : std_logic;
SIGNAL \DFF_inst8~q\ : std_logic;
SIGNAL \b2~input_o\ : std_logic;
SIGNAL \DFF_inst10~feeder_combout\ : std_logic;
SIGNAL \DFF_inst10~q\ : std_logic;
SIGNAL \a2~input_o\ : std_logic;
SIGNAL \DFF_inst7~feeder_combout\ : std_logic;
SIGNAL \DFF_inst7~q\ : std_logic;
SIGNAL \b2v_inst41|o_bout~0_combout\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \DFF_inst11~feeder_combout\ : std_logic;
SIGNAL \DFF_inst11~q\ : std_logic;
SIGNAL \b0~input_o\ : std_logic;
SIGNAL \DFF_inst12~feeder_combout\ : std_logic;
SIGNAL \DFF_inst12~q\ : std_logic;
SIGNAL \a0~input_o\ : std_logic;
SIGNAL \DFF_inst5~feeder_combout\ : std_logic;
SIGNAL \DFF_inst5~q\ : std_logic;
SIGNAL \b2v_inst40|o_bout~0_combout\ : std_logic;
SIGNAL \b2v_inst40|o_bout~1_combout\ : std_logic;
SIGNAL \b2v_inst39|o_bout~0_combout\ : std_logic;
SIGNAL \b2v_inst41|o_bout~1_combout\ : std_logic;
SIGNAL \b2v_inst|o_bout~0_combout\ : std_logic;
SIGNAL \bout~reg0_q\ : std_logic;
SIGNAL \b2v_inst|o_z~combout\ : std_logic;
SIGNAL \z3~reg0_q\ : std_logic;
SIGNAL \b2v_inst41|o_z~0_combout\ : std_logic;
SIGNAL \z2~reg0_q\ : std_logic;
SIGNAL \b2v_inst39|o_z~combout\ : std_logic;
SIGNAL \z1~reg0_q\ : std_logic;
SIGNAL \b2v_inst40|o_z~0_combout\ : std_logic;
SIGNAL \z0~reg0_q\ : std_logic;

BEGIN

ww_a0 <= a0;
ww_b0 <= b0;
ww_a1 <= a1;
ww_b1 <= b1;
ww_a2 <= a2;
ww_b2 <= b2;
ww_a3 <= a3;
ww_b3 <= b3;
ww_bin <= bin;
ww_CLOCK <= CLOCK;
bout <= ww_bout;
z3 <= ww_z3;
z2 <= ww_z2;
z1 <= ww_z1;
z0 <= ww_z0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);

-- Location: FF_X24_Y41_N27
DFF_inst6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DFF_inst6~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF_inst6~q\);

-- Location: FF_X24_Y41_N7
DFF_inst9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \b3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF_inst9~q\);

-- Location: IOIBUF_X0_Y64_N1
\bin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin,
	o => \bin~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\a1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1,
	o => \a1~input_o\);

-- Location: IOIBUF_X87_Y73_N15
\b3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b3,
	o => \b3~input_o\);

-- Location: LCCOMB_X24_Y41_N26
\DFF_inst6~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DFF_inst6~feeder_combout\ = \a1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a1~input_o\,
	combout => \DFF_inst6~feeder_combout\);

-- Location: IOOBUF_X113_Y0_N9
\bout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bout~reg0_q\,
	devoe => ww_devoe,
	o => \bout~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\z3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z3~reg0_q\,
	devoe => ww_devoe,
	o => \z3~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\z2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z2~reg0_q\,
	devoe => ww_devoe,
	o => \z2~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\z1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z1~reg0_q\,
	devoe => ww_devoe,
	o => \z1~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\z0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z0~reg0_q\,
	devoe => ww_devoe,
	o => \z0~output_o\);

-- Location: IOIBUF_X109_Y73_N8
\CLOCK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G7
\CLOCK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y28_N15
\a3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3,
	o => \a3~input_o\);

-- Location: FF_X24_Y41_N3
DFF_inst8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \a3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF_inst8~q\);

-- Location: IOIBUF_X111_Y0_N1
\b2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2,
	o => \b2~input_o\);

-- Location: LCCOMB_X24_Y41_N18
\DFF_inst10~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DFF_inst10~feeder_combout\ = \b2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2~input_o\,
	combout => \DFF_inst10~feeder_combout\);

-- Location: FF_X24_Y41_N19
DFF_inst10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DFF_inst10~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF_inst10~q\);

-- Location: IOIBUF_X0_Y68_N8
\a2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2,
	o => \a2~input_o\);

-- Location: LCCOMB_X24_Y41_N12
\DFF_inst7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DFF_inst7~feeder_combout\ = \a2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a2~input_o\,
	combout => \DFF_inst7~feeder_combout\);

-- Location: FF_X24_Y41_N13
DFF_inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DFF_inst7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF_inst7~q\);

-- Location: LCCOMB_X24_Y41_N22
\b2v_inst41|o_bout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst41|o_bout~0_combout\ = (\DFF_inst10~q\ & \DFF_inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DFF_inst10~q\,
	datad => \DFF_inst7~q\,
	combout => \b2v_inst41|o_bout~0_combout\);

-- Location: IOIBUF_X74_Y0_N15
\b1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

-- Location: LCCOMB_X24_Y41_N16
\DFF_inst11~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DFF_inst11~feeder_combout\ = \b1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b1~input_o\,
	combout => \DFF_inst11~feeder_combout\);

-- Location: FF_X24_Y41_N17
DFF_inst11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DFF_inst11~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF_inst11~q\);

-- Location: IOIBUF_X109_Y0_N1
\b0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0,
	o => \b0~input_o\);

-- Location: LCCOMB_X24_Y41_N4
\DFF_inst12~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DFF_inst12~feeder_combout\ = \b0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b0~input_o\,
	combout => \DFF_inst12~feeder_combout\);

-- Location: FF_X24_Y41_N5
DFF_inst12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DFF_inst12~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF_inst12~q\);

-- Location: IOIBUF_X0_Y35_N15
\a0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0,
	o => \a0~input_o\);

-- Location: LCCOMB_X24_Y41_N10
\DFF_inst5~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DFF_inst5~feeder_combout\ = \a0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a0~input_o\,
	combout => \DFF_inst5~feeder_combout\);

-- Location: FF_X24_Y41_N11
DFF_inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DFF_inst5~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF_inst5~q\);

-- Location: LCCOMB_X24_Y41_N8
\b2v_inst40|o_bout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst40|o_bout~0_combout\ = (\DFF_inst12~q\ & \DFF_inst5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DFF_inst12~q\,
	datad => \DFF_inst5~q\,
	combout => \b2v_inst40|o_bout~0_combout\);

-- Location: LCCOMB_X24_Y41_N6
\b2v_inst40|o_bout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst40|o_bout~1_combout\ = (\bin~input_o\ & ((\DFF_inst12~q\) # (\DFF_inst5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin~input_o\,
	datab => \DFF_inst12~q\,
	datad => \DFF_inst5~q\,
	combout => \b2v_inst40|o_bout~1_combout\);

-- Location: LCCOMB_X24_Y41_N24
\b2v_inst39|o_bout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst39|o_bout~0_combout\ = (\DFF_inst6~q\ & ((\DFF_inst11~q\) # ((\b2v_inst40|o_bout~0_combout\) # (\b2v_inst40|o_bout~1_combout\)))) # (!\DFF_inst6~q\ & (\DFF_inst11~q\ & ((\b2v_inst40|o_bout~0_combout\) # (\b2v_inst40|o_bout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF_inst6~q\,
	datab => \DFF_inst11~q\,
	datac => \b2v_inst40|o_bout~0_combout\,
	datad => \b2v_inst40|o_bout~1_combout\,
	combout => \b2v_inst39|o_bout~0_combout\);

-- Location: LCCOMB_X24_Y41_N2
\b2v_inst41|o_bout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst41|o_bout~1_combout\ = (\b2v_inst39|o_bout~0_combout\ & ((\DFF_inst10~q\) # (\DFF_inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF_inst10~q\,
	datab => \DFF_inst7~q\,
	datad => \b2v_inst39|o_bout~0_combout\,
	combout => \b2v_inst41|o_bout~1_combout\);

-- Location: LCCOMB_X24_Y41_N0
\b2v_inst|o_bout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|o_bout~0_combout\ = (\DFF_inst9~q\ & ((\DFF_inst8~q\) # ((\b2v_inst41|o_bout~0_combout\) # (\b2v_inst41|o_bout~1_combout\)))) # (!\DFF_inst9~q\ & (\DFF_inst8~q\ & ((\b2v_inst41|o_bout~0_combout\) # (\b2v_inst41|o_bout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF_inst9~q\,
	datab => \DFF_inst8~q\,
	datac => \b2v_inst41|o_bout~0_combout\,
	datad => \b2v_inst41|o_bout~1_combout\,
	combout => \b2v_inst|o_bout~0_combout\);

-- Location: FF_X24_Y41_N1
\bout~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_inst|o_bout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bout~reg0_q\);

-- Location: LCCOMB_X24_Y41_N30
\b2v_inst|o_z\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|o_z~combout\ = \DFF_inst9~q\ $ (\DFF_inst8~q\ $ (((\b2v_inst41|o_bout~0_combout\) # (\b2v_inst41|o_bout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF_inst9~q\,
	datab => \DFF_inst8~q\,
	datac => \b2v_inst41|o_bout~0_combout\,
	datad => \b2v_inst41|o_bout~1_combout\,
	combout => \b2v_inst|o_z~combout\);

-- Location: FF_X24_Y41_N31
\z3~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_inst|o_z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \z3~reg0_q\);

-- Location: LCCOMB_X24_Y41_N20
\b2v_inst41|o_z~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst41|o_z~0_combout\ = \DFF_inst7~q\ $ (\DFF_inst10~q\ $ (\b2v_inst39|o_bout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF_inst7~q\,
	datac => \DFF_inst10~q\,
	datad => \b2v_inst39|o_bout~0_combout\,
	combout => \b2v_inst41|o_z~0_combout\);

-- Location: FF_X24_Y41_N21
\z2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_inst41|o_z~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \z2~reg0_q\);

-- Location: LCCOMB_X24_Y41_N14
\b2v_inst39|o_z\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst39|o_z~combout\ = \DFF_inst6~q\ $ (\DFF_inst11~q\ $ (((\b2v_inst40|o_bout~1_combout\) # (\b2v_inst40|o_bout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF_inst6~q\,
	datab => \b2v_inst40|o_bout~1_combout\,
	datac => \DFF_inst11~q\,
	datad => \b2v_inst40|o_bout~0_combout\,
	combout => \b2v_inst39|o_z~combout\);

-- Location: FF_X24_Y41_N15
\z1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_inst39|o_z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \z1~reg0_q\);

-- Location: LCCOMB_X24_Y41_N28
\b2v_inst40|o_z~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst40|o_z~0_combout\ = \bin~input_o\ $ (\DFF_inst5~q\ $ (\DFF_inst12~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin~input_o\,
	datac => \DFF_inst5~q\,
	datad => \DFF_inst12~q\,
	combout => \b2v_inst40|o_z~0_combout\);

-- Location: FF_X24_Y41_N29
\z0~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_inst40|o_z~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \z0~reg0_q\);

ww_bout <= \bout~output_o\;

ww_z3 <= \z3~output_o\;

ww_z2 <= \z2~output_o\;

ww_z1 <= \z1~output_o\;

ww_z0 <= \z0~output_o\;
END structure;


