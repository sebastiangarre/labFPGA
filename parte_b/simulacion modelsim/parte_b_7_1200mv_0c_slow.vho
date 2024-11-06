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

-- DATE "11/06/2024 10:30:35"

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

ENTITY 	Restador_Completo IS
    PORT (
	in_a : IN std_logic;
	in_b : IN std_logic;
	in_bin : IN std_logic;
	CLOCK : IN std_logic;
	o_z : OUT std_logic;
	o_bout : OUT std_logic
	);
END Restador_Completo;

-- Design Ports Information
-- o_z	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_bout	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_a	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_b	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_bin	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Restador_Completo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in_a : std_logic;
SIGNAL ww_in_b : std_logic;
SIGNAL ww_in_bin : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_o_z : std_logic;
SIGNAL ww_o_bout : std_logic;
SIGNAL D2_aQ_aq : std_logic;
SIGNAL in_b_ainput_o : std_logic;
SIGNAL D2_aQ_afeeder_combout : std_logic;
SIGNAL o_z_aoutput_o : std_logic;
SIGNAL o_bout_aoutput_o : std_logic;
SIGNAL CLOCK_ainput_o : std_logic;
SIGNAL in_a_ainput_o : std_logic;
SIGNAL D1_aQ_aq : std_logic;
SIGNAL in_bin_ainput_o : std_logic;
SIGNAL D3_aQ_aq : std_logic;
SIGNAL z_a0_combout : std_logic;
SIGNAL D5_aQ_aq : std_logic;
SIGNAL bout_a0_combout : std_logic;
SIGNAL D4_aQ_aq : std_logic;
SIGNAL D2_aQ_CLK_driver : std_logic;
SIGNAL D2_aQ_D_driver : std_logic;
SIGNAL in_b_ainput_I_driver : std_logic;
SIGNAL D2_aQ_afeeder_DATAD_driver : std_logic;
SIGNAL o_z_aoutput_I_driver : std_logic;
SIGNAL o_bout_aoutput_I_driver : std_logic;
SIGNAL CLOCK_ainput_I_driver : std_logic;
SIGNAL in_a_ainput_I_driver : std_logic;
SIGNAL D1_aQ_CLK_driver : std_logic;
SIGNAL D1_aQ_ASDATA_driver : std_logic;
SIGNAL in_bin_ainput_I_driver : std_logic;
SIGNAL D3_aQ_CLK_driver : std_logic;
SIGNAL D3_aQ_ASDATA_driver : std_logic;
SIGNAL z_a0_DATAA_driver : std_logic;
SIGNAL z_a0_DATAC_driver : std_logic;
SIGNAL z_a0_DATAD_driver : std_logic;
SIGNAL D5_aQ_CLK_driver : std_logic;
SIGNAL D5_aQ_D_driver : std_logic;
SIGNAL bout_a0_DATAA_driver : std_logic;
SIGNAL bout_a0_DATAC_driver : std_logic;
SIGNAL bout_a0_DATAD_driver : std_logic;
SIGNAL D4_aQ_CLK_driver : std_logic;
SIGNAL D4_aQ_D_driver : std_logic;

BEGIN

ww_in_a <= in_a;
ww_in_b <= in_b;
ww_in_bin <= in_bin;
ww_CLOCK <= CLOCK;
o_z <= ww_o_z;
o_bout <= ww_o_bout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

D2_aQ_CLK_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => CLOCK_ainput_o,
	dataout => D2_aQ_CLK_driver);

D2_aQ_D_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => D2_aQ_afeeder_combout,
	dataout => D2_aQ_D_driver);

-- Location: FF_X84_Y1_N23
D2_aQ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => D2_aQ_CLK_driver,
	d => D2_aQ_D_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D2_aQ_aq);

in_b_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_in_b,
	dataout => in_b_ainput_I_driver);

-- Location: IOIBUF_X94_Y0_N8
in_b_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => in_b_ainput_I_driver,
	o => in_b_ainput_o);

D2_aQ_afeeder_DATAD_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => in_b_ainput_o,
	dataout => D2_aQ_afeeder_DATAD_driver);

-- Location: LCCOMB_X84_Y1_N22
D2_aQ_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- D2_aQ_afeeder_combout = in_b_ainput_o

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => D2_aQ_afeeder_DATAD_driver,
	combout => D2_aQ_afeeder_combout);

o_z_aoutput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => D5_aQ_aq,
	dataout => o_z_aoutput_I_driver);

-- Location: IOOBUF_X72_Y0_N9
o_z_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => o_z_aoutput_I_driver,
	devoe => ww_devoe,
	o => o_z_aoutput_o);

o_bout_aoutput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => D4_aQ_aq,
	dataout => o_bout_aoutput_I_driver);

-- Location: IOOBUF_X83_Y0_N16
o_bout_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => o_bout_aoutput_I_driver,
	devoe => ww_devoe,
	o => o_bout_aoutput_o);

CLOCK_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_CLOCK,
	dataout => CLOCK_ainput_I_driver);

-- Location: IOIBUF_X85_Y0_N8
CLOCK_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CLOCK_ainput_I_driver,
	o => CLOCK_ainput_o);

in_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_in_a,
	dataout => in_a_ainput_I_driver);

-- Location: IOIBUF_X81_Y0_N22
in_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => in_a_ainput_I_driver,
	o => in_a_ainput_o);

D1_aQ_CLK_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => CLOCK_ainput_o,
	dataout => D1_aQ_CLK_driver);

D1_aQ_ASDATA_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => in_a_ainput_o,
	dataout => D1_aQ_ASDATA_driver);

-- Location: FF_X84_Y1_N9
D1_aQ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => D1_aQ_CLK_driver,
	asdata => D1_aQ_ASDATA_driver,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D1_aQ_aq);

in_bin_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_in_bin,
	dataout => in_bin_ainput_I_driver);

-- Location: IOIBUF_X56_Y0_N15
in_bin_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => in_bin_ainput_I_driver,
	o => in_bin_ainput_o);

D3_aQ_CLK_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => CLOCK_ainput_o,
	dataout => D3_aQ_CLK_driver);

D3_aQ_ASDATA_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => in_bin_ainput_o,
	dataout => D3_aQ_ASDATA_driver);

-- Location: FF_X84_Y1_N1
D3_aQ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => D3_aQ_CLK_driver,
	asdata => D3_aQ_ASDATA_driver,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D3_aQ_aq);

z_a0_DATAA_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => D2_aQ_aq,
	dataout => z_a0_DATAA_driver);

z_a0_DATAC_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => D1_aQ_aq,
	dataout => z_a0_DATAC_driver);

z_a0_DATAD_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => D3_aQ_aq,
	dataout => z_a0_DATAD_driver);

-- Location: LCCOMB_X84_Y1_N24
z_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- z_a0_combout = D2_aQ_aq $ (D1_aQ_aq $ (D3_aQ_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_a0_DATAA_driver,
	datac => z_a0_DATAC_driver,
	datad => z_a0_DATAD_driver,
	combout => z_a0_combout);

D5_aQ_CLK_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => CLOCK_ainput_o,
	dataout => D5_aQ_CLK_driver);

D5_aQ_D_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => z_a0_combout,
	dataout => D5_aQ_D_driver);

-- Location: FF_X84_Y1_N25
D5_aQ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => D5_aQ_CLK_driver,
	d => D5_aQ_D_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D5_aQ_aq);

bout_a0_DATAA_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => D2_aQ_aq,
	dataout => bout_a0_DATAA_driver);

bout_a0_DATAC_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => D1_aQ_aq,
	dataout => bout_a0_DATAC_driver);

bout_a0_DATAD_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => D3_aQ_aq,
	dataout => bout_a0_DATAD_driver);

-- Location: LCCOMB_X84_Y1_N26
bout_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- bout_a0_combout = (D2_aQ_aq & ((D1_aQ_aq) # (D3_aQ_aq))) # (!D2_aQ_aq & (D1_aQ_aq & D3_aQ_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bout_a0_DATAA_driver,
	datac => bout_a0_DATAC_driver,
	datad => bout_a0_DATAD_driver,
	combout => bout_a0_combout);

D4_aQ_CLK_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => CLOCK_ainput_o,
	dataout => D4_aQ_CLK_driver);

D4_aQ_D_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => bout_a0_combout,
	dataout => D4_aQ_D_driver);

-- Location: FF_X84_Y1_N27
D4_aQ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => D4_aQ_CLK_driver,
	d => D4_aQ_D_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D4_aQ_aq);

ww_o_z <= o_z_aoutput_o;

ww_o_bout <= o_bout_aoutput_o;
END structure;


