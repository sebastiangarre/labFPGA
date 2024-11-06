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

-- Generated by Quartus II Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition
-- Created on Wed Nov 06 19:59:55 2024

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ejercicio2 IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        X : IN STD_LOGIC := '0';
        output1 : OUT STD_LOGIC;
        output2 : OUT STD_LOGIC;
        output3 : OUT STD_LOGIC;
        output4 : OUT STD_LOGIC
    );
END ejercicio2;

ARCHITECTURE BEHAVIOR OF ejercicio2 IS
    TYPE type_fstate IS (B,A,D,E,F,G,C,a1);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,X)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= a1;
            output1 <= '0';
            output2 <= '0';
            output3 <= '0';
            output4 <= '0';
        ELSE
            output1 <= '0';
            output2 <= '0';
            output3 <= '0';
            output4 <= '0';
            CASE fstate IS
                WHEN B =>
                    reg_fstate <= D;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output1 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output1 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output2 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output2 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output3 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output3 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output4 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output4 <= '0';
                    END IF;
                WHEN A =>
                    IF ((X = '0')) THEN
                        reg_fstate <= B;
                    ELSIF ((X = '1')) THEN
                        reg_fstate <= C;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= A;
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output1 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output1 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output2 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output2 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output3 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output3 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output4 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output4 <= '0';
                    END IF;
                WHEN D =>
                    IF ((X = '0')) THEN
                        reg_fstate <= E;
                    ELSIF ((X = '1')) THEN
                        reg_fstate <= F;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= D;
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output1 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output1 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output2 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output2 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output3 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output3 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output4 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output4 <= '0';
                    END IF;
                WHEN E =>
                    reg_fstate <= A;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output1 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output1 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output2 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output2 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output3 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output3 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output4 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output4 <= '0';
                    END IF;
                WHEN F =>
                    reg_fstate <= A;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output1 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output1 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output2 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output2 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output3 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output3 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output4 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output4 <= '0';
                    END IF;
                WHEN G =>
                    reg_fstate <= D;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output1 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output1 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output2 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output2 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output3 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output3 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output4 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output4 <= '0';
                    END IF;
                WHEN C =>
                    reg_fstate <= G;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output1 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output1 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output2 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output2 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output3 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output3 <= '0';
                    END IF;

                    IF (((X = '0') OR (X = '1'))) THEN
                        output4 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        output4 <= '0';
                    END IF;
                WHEN a1 =>
                    reg_fstate <= A;

                    output1 <= '0';

                    output2 <= '0';

                    output3 <= '0';

                    output4 <= '0';
                WHEN OTHERS => 
                    output1 <= 'X';
                    output2 <= 'X';
                    output3 <= 'X';
                    output4 <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;