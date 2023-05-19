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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "05/19/2023 20:46:58"

-- 
-- Device: Altera 5CEBA9U19C8 Package UFBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mips IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	func : BUFFER std_logic_vector(5 DOWNTO 0);
	PC_OUT : BUFFER std_logic_vector(31 DOWNTO 0);
	opc : BUFFER std_logic_vector(5 DOWNTO 0);
	imedia : BUFFER std_logic_vector(15 DOWNTO 0);
	ula_saida : BUFFER std_logic_vector(31 DOWNTO 0);
	RS_OUT : BUFFER std_logic_vector(31 DOWNTO 0);
	RT_OUT : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END mips;

ARCHITECTURE structure OF mips IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_func : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_opc : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_imedia : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ula_saida : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RS_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RT_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \func[0]~output_o\ : std_logic;
SIGNAL \func[1]~output_o\ : std_logic;
SIGNAL \func[2]~output_o\ : std_logic;
SIGNAL \func[3]~output_o\ : std_logic;
SIGNAL \func[4]~output_o\ : std_logic;
SIGNAL \func[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \PC_OUT[9]~output_o\ : std_logic;
SIGNAL \PC_OUT[10]~output_o\ : std_logic;
SIGNAL \PC_OUT[11]~output_o\ : std_logic;
SIGNAL \PC_OUT[12]~output_o\ : std_logic;
SIGNAL \PC_OUT[13]~output_o\ : std_logic;
SIGNAL \PC_OUT[14]~output_o\ : std_logic;
SIGNAL \PC_OUT[15]~output_o\ : std_logic;
SIGNAL \PC_OUT[16]~output_o\ : std_logic;
SIGNAL \PC_OUT[17]~output_o\ : std_logic;
SIGNAL \PC_OUT[18]~output_o\ : std_logic;
SIGNAL \PC_OUT[19]~output_o\ : std_logic;
SIGNAL \PC_OUT[20]~output_o\ : std_logic;
SIGNAL \PC_OUT[21]~output_o\ : std_logic;
SIGNAL \PC_OUT[22]~output_o\ : std_logic;
SIGNAL \PC_OUT[23]~output_o\ : std_logic;
SIGNAL \PC_OUT[24]~output_o\ : std_logic;
SIGNAL \PC_OUT[25]~output_o\ : std_logic;
SIGNAL \PC_OUT[26]~output_o\ : std_logic;
SIGNAL \PC_OUT[27]~output_o\ : std_logic;
SIGNAL \PC_OUT[28]~output_o\ : std_logic;
SIGNAL \PC_OUT[29]~output_o\ : std_logic;
SIGNAL \PC_OUT[30]~output_o\ : std_logic;
SIGNAL \PC_OUT[31]~output_o\ : std_logic;
SIGNAL \opc[0]~output_o\ : std_logic;
SIGNAL \opc[1]~output_o\ : std_logic;
SIGNAL \opc[2]~output_o\ : std_logic;
SIGNAL \opc[3]~output_o\ : std_logic;
SIGNAL \opc[4]~output_o\ : std_logic;
SIGNAL \opc[5]~output_o\ : std_logic;
SIGNAL \imedia[0]~output_o\ : std_logic;
SIGNAL \imedia[1]~output_o\ : std_logic;
SIGNAL \imedia[2]~output_o\ : std_logic;
SIGNAL \imedia[3]~output_o\ : std_logic;
SIGNAL \imedia[4]~output_o\ : std_logic;
SIGNAL \imedia[5]~output_o\ : std_logic;
SIGNAL \imedia[6]~output_o\ : std_logic;
SIGNAL \imedia[7]~output_o\ : std_logic;
SIGNAL \imedia[8]~output_o\ : std_logic;
SIGNAL \imedia[9]~output_o\ : std_logic;
SIGNAL \imedia[10]~output_o\ : std_logic;
SIGNAL \imedia[11]~output_o\ : std_logic;
SIGNAL \imedia[12]~output_o\ : std_logic;
SIGNAL \imedia[13]~output_o\ : std_logic;
SIGNAL \imedia[14]~output_o\ : std_logic;
SIGNAL \imedia[15]~output_o\ : std_logic;
SIGNAL \ula_saida[0]~output_o\ : std_logic;
SIGNAL \ula_saida[1]~output_o\ : std_logic;
SIGNAL \ula_saida[2]~output_o\ : std_logic;
SIGNAL \ula_saida[3]~output_o\ : std_logic;
SIGNAL \ula_saida[4]~output_o\ : std_logic;
SIGNAL \ula_saida[5]~output_o\ : std_logic;
SIGNAL \ula_saida[6]~output_o\ : std_logic;
SIGNAL \ula_saida[7]~output_o\ : std_logic;
SIGNAL \ula_saida[8]~output_o\ : std_logic;
SIGNAL \ula_saida[9]~output_o\ : std_logic;
SIGNAL \ula_saida[10]~output_o\ : std_logic;
SIGNAL \ula_saida[11]~output_o\ : std_logic;
SIGNAL \ula_saida[12]~output_o\ : std_logic;
SIGNAL \ula_saida[13]~output_o\ : std_logic;
SIGNAL \ula_saida[14]~output_o\ : std_logic;
SIGNAL \ula_saida[15]~output_o\ : std_logic;
SIGNAL \ula_saida[16]~output_o\ : std_logic;
SIGNAL \ula_saida[17]~output_o\ : std_logic;
SIGNAL \ula_saida[18]~output_o\ : std_logic;
SIGNAL \ula_saida[19]~output_o\ : std_logic;
SIGNAL \ula_saida[20]~output_o\ : std_logic;
SIGNAL \ula_saida[21]~output_o\ : std_logic;
SIGNAL \ula_saida[22]~output_o\ : std_logic;
SIGNAL \ula_saida[23]~output_o\ : std_logic;
SIGNAL \ula_saida[24]~output_o\ : std_logic;
SIGNAL \ula_saida[25]~output_o\ : std_logic;
SIGNAL \ula_saida[26]~output_o\ : std_logic;
SIGNAL \ula_saida[27]~output_o\ : std_logic;
SIGNAL \ula_saida[28]~output_o\ : std_logic;
SIGNAL \ula_saida[29]~output_o\ : std_logic;
SIGNAL \ula_saida[30]~output_o\ : std_logic;
SIGNAL \ula_saida[31]~output_o\ : std_logic;
SIGNAL \RS_OUT[0]~output_o\ : std_logic;
SIGNAL \RS_OUT[1]~output_o\ : std_logic;
SIGNAL \RS_OUT[2]~output_o\ : std_logic;
SIGNAL \RS_OUT[3]~output_o\ : std_logic;
SIGNAL \RS_OUT[4]~output_o\ : std_logic;
SIGNAL \RS_OUT[5]~output_o\ : std_logic;
SIGNAL \RS_OUT[6]~output_o\ : std_logic;
SIGNAL \RS_OUT[7]~output_o\ : std_logic;
SIGNAL \RS_OUT[8]~output_o\ : std_logic;
SIGNAL \RS_OUT[9]~output_o\ : std_logic;
SIGNAL \RS_OUT[10]~output_o\ : std_logic;
SIGNAL \RS_OUT[11]~output_o\ : std_logic;
SIGNAL \RS_OUT[12]~output_o\ : std_logic;
SIGNAL \RS_OUT[13]~output_o\ : std_logic;
SIGNAL \RS_OUT[14]~output_o\ : std_logic;
SIGNAL \RS_OUT[15]~output_o\ : std_logic;
SIGNAL \RS_OUT[16]~output_o\ : std_logic;
SIGNAL \RS_OUT[17]~output_o\ : std_logic;
SIGNAL \RS_OUT[18]~output_o\ : std_logic;
SIGNAL \RS_OUT[19]~output_o\ : std_logic;
SIGNAL \RS_OUT[20]~output_o\ : std_logic;
SIGNAL \RS_OUT[21]~output_o\ : std_logic;
SIGNAL \RS_OUT[22]~output_o\ : std_logic;
SIGNAL \RS_OUT[23]~output_o\ : std_logic;
SIGNAL \RS_OUT[24]~output_o\ : std_logic;
SIGNAL \RS_OUT[25]~output_o\ : std_logic;
SIGNAL \RS_OUT[26]~output_o\ : std_logic;
SIGNAL \RS_OUT[27]~output_o\ : std_logic;
SIGNAL \RS_OUT[28]~output_o\ : std_logic;
SIGNAL \RS_OUT[29]~output_o\ : std_logic;
SIGNAL \RS_OUT[30]~output_o\ : std_logic;
SIGNAL \RS_OUT[31]~output_o\ : std_logic;
SIGNAL \RT_OUT[0]~output_o\ : std_logic;
SIGNAL \RT_OUT[1]~output_o\ : std_logic;
SIGNAL \RT_OUT[2]~output_o\ : std_logic;
SIGNAL \RT_OUT[3]~output_o\ : std_logic;
SIGNAL \RT_OUT[4]~output_o\ : std_logic;
SIGNAL \RT_OUT[5]~output_o\ : std_logic;
SIGNAL \RT_OUT[6]~output_o\ : std_logic;
SIGNAL \RT_OUT[7]~output_o\ : std_logic;
SIGNAL \RT_OUT[8]~output_o\ : std_logic;
SIGNAL \RT_OUT[9]~output_o\ : std_logic;
SIGNAL \RT_OUT[10]~output_o\ : std_logic;
SIGNAL \RT_OUT[11]~output_o\ : std_logic;
SIGNAL \RT_OUT[12]~output_o\ : std_logic;
SIGNAL \RT_OUT[13]~output_o\ : std_logic;
SIGNAL \RT_OUT[14]~output_o\ : std_logic;
SIGNAL \RT_OUT[15]~output_o\ : std_logic;
SIGNAL \RT_OUT[16]~output_o\ : std_logic;
SIGNAL \RT_OUT[17]~output_o\ : std_logic;
SIGNAL \RT_OUT[18]~output_o\ : std_logic;
SIGNAL \RT_OUT[19]~output_o\ : std_logic;
SIGNAL \RT_OUT[20]~output_o\ : std_logic;
SIGNAL \RT_OUT[21]~output_o\ : std_logic;
SIGNAL \RT_OUT[22]~output_o\ : std_logic;
SIGNAL \RT_OUT[23]~output_o\ : std_logic;
SIGNAL \RT_OUT[24]~output_o\ : std_logic;
SIGNAL \RT_OUT[25]~output_o\ : std_logic;
SIGNAL \RT_OUT[26]~output_o\ : std_logic;
SIGNAL \RT_OUT[27]~output_o\ : std_logic;
SIGNAL \RT_OUT[28]~output_o\ : std_logic;
SIGNAL \RT_OUT[29]~output_o\ : std_logic;
SIGNAL \RT_OUT[30]~output_o\ : std_logic;
SIGNAL \RT_OUT[31]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \Registradores|Equal0~0_combout\ : std_logic;
SIGNAL \UC_ULA|decFUNCT|Equal3~0_combout\ : std_logic;
SIGNAL \UC_ULA|decFUNCT|Equal4~0_combout\ : std_logic;
SIGNAL \sel_beq~0_combout\ : std_logic;
SIGNAL \UC_ULA|MUX|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \UC_ULA|MUX|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \UC_ULA|MUX|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \UC|mux_rt_ime~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \UC|mux_rt_rd~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~1222_combout\ : std_logic;
SIGNAL \Registradores|registrador~1224_combout\ : std_logic;
SIGNAL \Registradores|registrador~325_q\ : std_logic;
SIGNAL \Registradores|registrador~1256_combout\ : std_logic;
SIGNAL \Registradores|registrador~1218_combout\ : std_logic;
SIGNAL \Registradores|saidaB[31]~18_combout\ : std_logic;
SIGNAL \ULA1|BIT31|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT31|somador|soma~0_combout\ : std_logic;
SIGNAL \UC_ULA|MUX|saida_MUX[0]~4_combout\ : std_logic;
SIGNAL \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT31|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT31|muxResultado|saida_MUX~1_combout\ : std_logic;
SIGNAL \Registradores|registrador~1272_combout\ : std_logic;
SIGNAL \Registradores|registrador~1223_combout\ : std_logic;
SIGNAL \Registradores|registrador~69_q\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \Registradores|registrador~1217_combout\ : std_logic;
SIGNAL \Registradores|saidaA[31]~31_combout\ : std_logic;
SIGNAL \ULA1|BIT0|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~294_q\ : std_logic;
SIGNAL \Registradores|registrador~1225_combout\ : std_logic;
SIGNAL \Registradores|registrador~1063_combout\ : std_logic;
SIGNAL \Registradores|saidaB[0]~19_combout\ : std_logic;
SIGNAL \ULA1|BIT0|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT0|muxResultado|saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA1|BIT0|muxResultado|saida_MUX~1_combout\ : std_logic;
SIGNAL \Registradores|registrador~38_q\ : std_logic;
SIGNAL \Registradores|registrador~1062_combout\ : std_logic;
SIGNAL \Registradores|saidaA[0]~0_combout\ : std_logic;
SIGNAL \ULA1|BIT0|somador|carry_out~combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \Registradores|registrador~295_q\ : std_logic;
SIGNAL \Registradores|registrador~1226_combout\ : std_logic;
SIGNAL \Registradores|registrador~1068_combout\ : std_logic;
SIGNAL \ULA1|BIT1|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT1|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~1257_combout\ : std_logic;
SIGNAL \Registradores|registrador~39_q\ : std_logic;
SIGNAL \Registradores|registrador~1067_combout\ : std_logic;
SIGNAL \Registradores|saidaA[1]~1_combout\ : std_logic;
SIGNAL \ULA1|BIT1|somador|carry_out~combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \Registradores|registrador~296_q\ : std_logic;
SIGNAL \Registradores|registrador~1227_combout\ : std_logic;
SIGNAL \Registradores|registrador~1073_combout\ : std_logic;
SIGNAL \ULA1|BIT2|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT2|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~40_q\ : std_logic;
SIGNAL \Registradores|registrador~1072_combout\ : std_logic;
SIGNAL \Registradores|saidaA[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ULA1|BIT2|somador|carry_out~combout\ : std_logic;
SIGNAL \Registradores|registrador~297_q\ : std_logic;
SIGNAL \Registradores|registrador~1228_combout\ : std_logic;
SIGNAL \Registradores|registrador~1078_combout\ : std_logic;
SIGNAL \Registradores|saidaB[3]~20_combout\ : std_logic;
SIGNAL \ULA1|BIT3|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT3|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~1258_combout\ : std_logic;
SIGNAL \Registradores|registrador~41_q\ : std_logic;
SIGNAL \Registradores|registrador~1077_combout\ : std_logic;
SIGNAL \Registradores|saidaA[3]~3_combout\ : std_logic;
SIGNAL \ULA1|BIT3|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA1|BIT3|somador|carry_out~0_combout\ : std_logic;
SIGNAL \ULA1|BIT3|somador|carry_out~1_combout\ : std_logic;
SIGNAL \ULA1|BIT3|somador|carry_out~combout\ : std_logic;
SIGNAL \Registradores|registrador~298_q\ : std_logic;
SIGNAL \Registradores|registrador~1229_combout\ : std_logic;
SIGNAL \Registradores|registrador~1083_combout\ : std_logic;
SIGNAL \ULA1|BIT4|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT4|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~42_q\ : std_logic;
SIGNAL \Registradores|registrador~1082_combout\ : std_logic;
SIGNAL \Registradores|saidaA[4]~4_combout\ : std_logic;
SIGNAL \ULA1|BIT4|somador|carry_out~combout\ : std_logic;
SIGNAL \Registradores|registrador~299_q\ : std_logic;
SIGNAL \Registradores|registrador~1230_combout\ : std_logic;
SIGNAL \Registradores|registrador~1088_combout\ : std_logic;
SIGNAL \ULA1|BIT5|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT5|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~1259_combout\ : std_logic;
SIGNAL \Registradores|registrador~43_q\ : std_logic;
SIGNAL \Registradores|registrador~1087_combout\ : std_logic;
SIGNAL \Registradores|saidaA[5]~5_combout\ : std_logic;
SIGNAL \ULA1|BIT5|somador|carry_out~combout\ : std_logic;
SIGNAL \Registradores|registrador~300_q\ : std_logic;
SIGNAL \Registradores|registrador~1231_combout\ : std_logic;
SIGNAL \Registradores|registrador~1093_combout\ : std_logic;
SIGNAL \ULA1|BIT6|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT6|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~44_q\ : std_logic;
SIGNAL \Registradores|registrador~1092_combout\ : std_logic;
SIGNAL \Registradores|saidaA[6]~6_combout\ : std_logic;
SIGNAL \ULA1|BIT6|somador|carry_out~combout\ : std_logic;
SIGNAL \Registradores|registrador~301_q\ : std_logic;
SIGNAL \Registradores|registrador~1232_combout\ : std_logic;
SIGNAL \Registradores|registrador~1098_combout\ : std_logic;
SIGNAL \ULA1|BIT7|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT7|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~1260_combout\ : std_logic;
SIGNAL \Registradores|registrador~45_q\ : std_logic;
SIGNAL \Registradores|registrador~1097_combout\ : std_logic;
SIGNAL \Registradores|saidaA[7]~7_combout\ : std_logic;
SIGNAL \ULA1|BIT7|somador|carry_out~combout\ : std_logic;
SIGNAL \Registradores|registrador~302_q\ : std_logic;
SIGNAL \Registradores|registrador~1233_combout\ : std_logic;
SIGNAL \Registradores|registrador~1103_combout\ : std_logic;
SIGNAL \Registradores|saidaB[8]~21_combout\ : std_logic;
SIGNAL \ULA1|BIT8|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT8|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~46_q\ : std_logic;
SIGNAL \Registradores|registrador~1102_combout\ : std_logic;
SIGNAL \Registradores|saidaA[8]~8_combout\ : std_logic;
SIGNAL \ULA1|BIT8|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA1|BIT8|somador|carry_out~0_combout\ : std_logic;
SIGNAL \ULA1|BIT8|somador|carry_out~1_combout\ : std_logic;
SIGNAL \Registradores|registrador~303_q\ : std_logic;
SIGNAL \Registradores|registrador~1234_combout\ : std_logic;
SIGNAL \Registradores|registrador~1108_combout\ : std_logic;
SIGNAL \ULA1|BIT9|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT9|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~1261_combout\ : std_logic;
SIGNAL \Registradores|registrador~47_q\ : std_logic;
SIGNAL \Registradores|registrador~1107_combout\ : std_logic;
SIGNAL \Registradores|saidaA[9]~9_combout\ : std_logic;
SIGNAL \ULA1|BIT9|somador|carry_out~combout\ : std_logic;
SIGNAL \Registradores|registrador~304_q\ : std_logic;
SIGNAL \Registradores|registrador~1235_combout\ : std_logic;
SIGNAL \Registradores|registrador~1113_combout\ : std_logic;
SIGNAL \ULA1|BIT10|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT10|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~48_q\ : std_logic;
SIGNAL \Registradores|registrador~1112_combout\ : std_logic;
SIGNAL \Registradores|saidaA[10]~10_combout\ : std_logic;
SIGNAL \ULA1|BIT10|somador|carry_out~combout\ : std_logic;
SIGNAL \Registradores|registrador~305_q\ : std_logic;
SIGNAL \Registradores|registrador~1236_combout\ : std_logic;
SIGNAL \Registradores|registrador~1118_combout\ : std_logic;
SIGNAL \ULA1|BIT11|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT11|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~1262_combout\ : std_logic;
SIGNAL \Registradores|registrador~49_q\ : std_logic;
SIGNAL \Registradores|registrador~1117_combout\ : std_logic;
SIGNAL \Registradores|saidaA[11]~11_combout\ : std_logic;
SIGNAL \ULA1|BIT11|somador|carry_out~combout\ : std_logic;
SIGNAL \Registradores|registrador~306_q\ : std_logic;
SIGNAL \Registradores|registrador~1237_combout\ : std_logic;
SIGNAL \Registradores|registrador~1123_combout\ : std_logic;
SIGNAL \ULA1|BIT12|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT12|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~50_q\ : std_logic;
SIGNAL \Registradores|registrador~1122_combout\ : std_logic;
SIGNAL \Registradores|saidaA[12]~12_combout\ : std_logic;
SIGNAL \ULA1|BIT12|somador|carry_out~combout\ : std_logic;
SIGNAL \Registradores|registrador~307_q\ : std_logic;
SIGNAL \Registradores|registrador~1238_combout\ : std_logic;
SIGNAL \Registradores|registrador~1128_combout\ : std_logic;
SIGNAL \Registradores|saidaB[13]~0_combout\ : std_logic;
SIGNAL \ULA1|BIT13|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT13|muxResultado|saida_MUX~1_combout\ : std_logic;
SIGNAL \Registradores|registrador~1263_combout\ : std_logic;
SIGNAL \Registradores|registrador~51_q\ : std_logic;
SIGNAL \Registradores|registrador~1127_combout\ : std_logic;
SIGNAL \Registradores|saidaA[13]~13_combout\ : std_logic;
SIGNAL \ULA1|BIT13|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA1|BIT13|somador|carry_out~0_combout\ : std_logic;
SIGNAL \ULA1|BIT13|somador|carry_out~1_combout\ : std_logic;
SIGNAL \Registradores|registrador~308_q\ : std_logic;
SIGNAL \Registradores|registrador~1239_combout\ : std_logic;
SIGNAL \Registradores|registrador~1133_combout\ : std_logic;
SIGNAL \Registradores|saidaB[14]~1_combout\ : std_logic;
SIGNAL \ULA1|BIT14|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT14|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~52_q\ : std_logic;
SIGNAL \Registradores|registrador~1132_combout\ : std_logic;
SIGNAL \Registradores|saidaA[14]~14_combout\ : std_logic;
SIGNAL \ULA1|BIT14|somador|carry_out~combout\ : std_logic;
SIGNAL \Registradores|registrador~309_q\ : std_logic;
SIGNAL \Registradores|registrador~1240_combout\ : std_logic;
SIGNAL \Registradores|registrador~1138_combout\ : std_logic;
SIGNAL \Registradores|saidaB[15]~2_combout\ : std_logic;
SIGNAL \ULA1|BIT15|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT15|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~1264_combout\ : std_logic;
SIGNAL \Registradores|registrador~53_q\ : std_logic;
SIGNAL \Registradores|registrador~1137_combout\ : std_logic;
SIGNAL \Registradores|saidaA[15]~15_combout\ : std_logic;
SIGNAL \ULA1|BIT15|somador|carry_out~combout\ : std_logic;
SIGNAL \Registradores|registrador~310_q\ : std_logic;
SIGNAL \Registradores|registrador~1241_combout\ : std_logic;
SIGNAL \Registradores|registrador~1143_combout\ : std_logic;
SIGNAL \Registradores|saidaB[16]~3_combout\ : std_logic;
SIGNAL \ULA1|BIT16|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT16|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~54_q\ : std_logic;
SIGNAL \Registradores|registrador~1142_combout\ : std_logic;
SIGNAL \Registradores|saidaA[16]~16_combout\ : std_logic;
SIGNAL \Registradores|registrador~311_q\ : std_logic;
SIGNAL \Registradores|registrador~1242_combout\ : std_logic;
SIGNAL \Registradores|registrador~1148_combout\ : std_logic;
SIGNAL \Registradores|saidaB[17]~4_combout\ : std_logic;
SIGNAL \ULA1|BIT17|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT17|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA1|BIT17|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT17|muxResultado|saida_MUX~1_combout\ : std_logic;
SIGNAL \Registradores|registrador~1265_combout\ : std_logic;
SIGNAL \Registradores|registrador~55_q\ : std_logic;
SIGNAL \Registradores|registrador~1147_combout\ : std_logic;
SIGNAL \Registradores|saidaA[17]~17_combout\ : std_logic;
SIGNAL \ULA1|BIT17|somador|carry_out~combout\ : std_logic;
SIGNAL \Registradores|registrador~312_q\ : std_logic;
SIGNAL \Registradores|registrador~1243_combout\ : std_logic;
SIGNAL \Registradores|registrador~1153_combout\ : std_logic;
SIGNAL \Registradores|saidaB[18]~5_combout\ : std_logic;
SIGNAL \ULA1|BIT18|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT18|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~56_q\ : std_logic;
SIGNAL \Registradores|registrador~1152_combout\ : std_logic;
SIGNAL \Registradores|saidaA[18]~18_combout\ : std_logic;
SIGNAL \ULA1|BIT18|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA1|BIT18|somador|carry_out~0_combout\ : std_logic;
SIGNAL \ULA1|BIT18|somador|carry_out~1_combout\ : std_logic;
SIGNAL \Registradores|registrador~313_q\ : std_logic;
SIGNAL \Registradores|registrador~1244_combout\ : std_logic;
SIGNAL \Registradores|registrador~1158_combout\ : std_logic;
SIGNAL \Registradores|saidaB[19]~6_combout\ : std_logic;
SIGNAL \ULA1|BIT19|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT19|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~1266_combout\ : std_logic;
SIGNAL \Registradores|registrador~57_q\ : std_logic;
SIGNAL \Registradores|registrador~1157_combout\ : std_logic;
SIGNAL \Registradores|saidaA[19]~19_combout\ : std_logic;
SIGNAL \Registradores|registrador~314_q\ : std_logic;
SIGNAL \Registradores|registrador~1245_combout\ : std_logic;
SIGNAL \Registradores|registrador~1163_combout\ : std_logic;
SIGNAL \Registradores|saidaB[20]~7_combout\ : std_logic;
SIGNAL \ULA1|BIT20|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT20|muxResultado|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA1|BIT20|muxResultado|saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA1|BIT20|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~58_q\ : std_logic;
SIGNAL \Registradores|registrador~1162_combout\ : std_logic;
SIGNAL \Registradores|saidaA[20]~20_combout\ : std_logic;
SIGNAL \ULA1|BIT20|somador|carry_out~combout\ : std_logic;
SIGNAL \Registradores|registrador~315_q\ : std_logic;
SIGNAL \Registradores|registrador~1246_combout\ : std_logic;
SIGNAL \Registradores|registrador~1168_combout\ : std_logic;
SIGNAL \Registradores|saidaB[21]~8_combout\ : std_logic;
SIGNAL \ULA1|BIT21|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT21|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~1267_combout\ : std_logic;
SIGNAL \Registradores|registrador~59_q\ : std_logic;
SIGNAL \Registradores|registrador~1167_combout\ : std_logic;
SIGNAL \Registradores|saidaA[21]~21_combout\ : std_logic;
SIGNAL \Registradores|registrador~316_q\ : std_logic;
SIGNAL \Registradores|registrador~1247_combout\ : std_logic;
SIGNAL \Registradores|registrador~1173_combout\ : std_logic;
SIGNAL \Registradores|saidaB[22]~9_combout\ : std_logic;
SIGNAL \ULA1|BIT22|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT22|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA1|BIT22|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT22|muxResultado|saida_MUX~1_combout\ : std_logic;
SIGNAL \Registradores|registrador~60_q\ : std_logic;
SIGNAL \Registradores|registrador~1172_combout\ : std_logic;
SIGNAL \Registradores|saidaA[22]~22_combout\ : std_logic;
SIGNAL \Registradores|registrador~317_q\ : std_logic;
SIGNAL \Registradores|registrador~1248_combout\ : std_logic;
SIGNAL \Registradores|registrador~1178_combout\ : std_logic;
SIGNAL \Registradores|saidaB[23]~10_combout\ : std_logic;
SIGNAL \ULA1|BIT23|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT23|muxResultado|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA1|BIT23|muxResultado|saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA1|BIT23|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~1268_combout\ : std_logic;
SIGNAL \Registradores|registrador~61_q\ : std_logic;
SIGNAL \Registradores|registrador~1177_combout\ : std_logic;
SIGNAL \Registradores|saidaA[23]~23_combout\ : std_logic;
SIGNAL \ULA1|BIT23|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA1|BIT23|somador|carry_out~0_combout\ : std_logic;
SIGNAL \ULA1|BIT23|somador|carry_out~1_combout\ : std_logic;
SIGNAL \Registradores|registrador~318_q\ : std_logic;
SIGNAL \Registradores|registrador~1249_combout\ : std_logic;
SIGNAL \Registradores|registrador~1183_combout\ : std_logic;
SIGNAL \Registradores|saidaB[24]~11_combout\ : std_logic;
SIGNAL \ULA1|BIT24|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT24|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~62_q\ : std_logic;
SIGNAL \Registradores|registrador~1182_combout\ : std_logic;
SIGNAL \Registradores|saidaA[24]~24_combout\ : std_logic;
SIGNAL \Registradores|registrador~319_q\ : std_logic;
SIGNAL \Registradores|registrador~1250_combout\ : std_logic;
SIGNAL \Registradores|registrador~1188_combout\ : std_logic;
SIGNAL \Registradores|saidaB[25]~12_combout\ : std_logic;
SIGNAL \ULA1|BIT25|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT25|muxResultado|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA1|BIT25|muxResultado|saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA1|BIT25|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~1269_combout\ : std_logic;
SIGNAL \Registradores|registrador~63_q\ : std_logic;
SIGNAL \Registradores|registrador~1187_combout\ : std_logic;
SIGNAL \Registradores|saidaA[25]~25_combout\ : std_logic;
SIGNAL \ULA1|BIT25|somador|carry_out~combout\ : std_logic;
SIGNAL \Registradores|registrador~320_q\ : std_logic;
SIGNAL \Registradores|registrador~1251_combout\ : std_logic;
SIGNAL \Registradores|registrador~1193_combout\ : std_logic;
SIGNAL \Registradores|saidaB[26]~13_combout\ : std_logic;
SIGNAL \ULA1|BIT26|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT26|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~64_q\ : std_logic;
SIGNAL \Registradores|registrador~1192_combout\ : std_logic;
SIGNAL \Registradores|saidaA[26]~26_combout\ : std_logic;
SIGNAL \Registradores|registrador~321_q\ : std_logic;
SIGNAL \Registradores|registrador~1252_combout\ : std_logic;
SIGNAL \Registradores|registrador~1198_combout\ : std_logic;
SIGNAL \Registradores|saidaB[27]~14_combout\ : std_logic;
SIGNAL \ULA1|BIT27|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT27|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA1|BIT27|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT27|muxResultado|saida_MUX~1_combout\ : std_logic;
SIGNAL \Registradores|registrador~1270_combout\ : std_logic;
SIGNAL \Registradores|registrador~65_q\ : std_logic;
SIGNAL \Registradores|registrador~1197_combout\ : std_logic;
SIGNAL \Registradores|saidaA[27]~27_combout\ : std_logic;
SIGNAL \Registradores|registrador~322_q\ : std_logic;
SIGNAL \Registradores|registrador~1253_combout\ : std_logic;
SIGNAL \Registradores|registrador~1203_combout\ : std_logic;
SIGNAL \Registradores|saidaB[28]~15_combout\ : std_logic;
SIGNAL \ULA1|BIT28|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT28|muxResultado|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA1|BIT28|muxResultado|saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA1|BIT28|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~66_q\ : std_logic;
SIGNAL \Registradores|registrador~1202_combout\ : std_logic;
SIGNAL \Registradores|saidaA[28]~28_combout\ : std_logic;
SIGNAL \ULA1|BIT28|somador|soma~0_combout\ : std_logic;
SIGNAL \ULA1|BIT28|somador|carry_out~0_combout\ : std_logic;
SIGNAL \ULA1|BIT28|somador|carry_out~1_combout\ : std_logic;
SIGNAL \Registradores|registrador~323_q\ : std_logic;
SIGNAL \Registradores|registrador~1254_combout\ : std_logic;
SIGNAL \Registradores|registrador~1208_combout\ : std_logic;
SIGNAL \Registradores|saidaB[29]~16_combout\ : std_logic;
SIGNAL \ULA1|BIT29|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT29|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|registrador~1271_combout\ : std_logic;
SIGNAL \Registradores|registrador~67_q\ : std_logic;
SIGNAL \Registradores|registrador~1207_combout\ : std_logic;
SIGNAL \Registradores|saidaA[29]~29_combout\ : std_logic;
SIGNAL \Registradores|registrador~324_q\ : std_logic;
SIGNAL \Registradores|registrador~1255_combout\ : std_logic;
SIGNAL \Registradores|registrador~1213_combout\ : std_logic;
SIGNAL \Registradores|saidaB[30]~17_combout\ : std_logic;
SIGNAL \ULA1|BIT30|muxB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT30|somador|soma~combout\ : std_logic;
SIGNAL \ULA1|BIT30|muxResultado|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT30|muxResultado|saida_MUX~1_combout\ : std_logic;
SIGNAL \Registradores|registrador~68_q\ : std_logic;
SIGNAL \Registradores|registrador~1212_combout\ : std_logic;
SIGNAL \Registradores|saidaA[30]~30_combout\ : std_logic;
SIGNAL \ULA1|BIT30|somador|carry_out~combout\ : std_logic;
SIGNAL \sel_beq~10_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~118_cout\ : std_logic;
SIGNAL \incrementaImediato|Add0~2\ : std_logic;
SIGNAL \incrementaImediato|Add0~6\ : std_logic;
SIGNAL \incrementaImediato|Add0~9_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[5]~3_combout\ : std_logic;
SIGNAL \UC|Equal0~0_combout\ : std_logic;
SIGNAL \UC_ULA|MUX|saida_MUX[1]~3_combout\ : std_logic;
SIGNAL \ULA1|BIT1|muxResultado|saida_MUX~1_combout\ : std_logic;
SIGNAL \sel_beq~1_combout\ : std_logic;
SIGNAL \sel_beq~2_combout\ : std_logic;
SIGNAL \sel_beq~3_combout\ : std_logic;
SIGNAL \sel_beq~4_combout\ : std_logic;
SIGNAL \sel_beq~5_combout\ : std_logic;
SIGNAL \sel_beq~6_combout\ : std_logic;
SIGNAL \sel_beq~7_combout\ : std_logic;
SIGNAL \sel_beq~8_combout\ : std_logic;
SIGNAL \sel_beq~9_combout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \UC|Equal5~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~10\ : std_logic;
SIGNAL \incrementaImediato|Add0~17_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \incrementaImediato|Add0~5_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~18\ : std_logic;
SIGNAL \incrementaImediato|Add0~13_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[7]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \incrementaImediato|Add0~1_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~14\ : std_logic;
SIGNAL \incrementaImediato|Add0~21_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[8]~6_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~22\ : std_logic;
SIGNAL \incrementaImediato|Add0~25_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[9]~7_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~26\ : std_logic;
SIGNAL \incrementaImediato|Add0~29_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[10]~8_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~34\ : std_logic;
SIGNAL \incrementaPC|Add0~37_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~30\ : std_logic;
SIGNAL \incrementaImediato|Add0~33_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[11]~9_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~38\ : std_logic;
SIGNAL \incrementaPC|Add0~41_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~34\ : std_logic;
SIGNAL \incrementaImediato|Add0~37_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[12]~10_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~42\ : std_logic;
SIGNAL \incrementaPC|Add0~45_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~38\ : std_logic;
SIGNAL \incrementaImediato|Add0~41_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[13]~11_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~46\ : std_logic;
SIGNAL \incrementaPC|Add0~49_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~42\ : std_logic;
SIGNAL \incrementaImediato|Add0~45_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[14]~12_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~50\ : std_logic;
SIGNAL \incrementaPC|Add0~53_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~46\ : std_logic;
SIGNAL \incrementaImediato|Add0~49_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[15]~13_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~54\ : std_logic;
SIGNAL \incrementaPC|Add0~57_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~50\ : std_logic;
SIGNAL \incrementaImediato|Add0~53_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[16]~14_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~58\ : std_logic;
SIGNAL \incrementaPC|Add0~61_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~54\ : std_logic;
SIGNAL \incrementaImediato|Add0~57_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[17]~15_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~62\ : std_logic;
SIGNAL \incrementaPC|Add0~65_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~58\ : std_logic;
SIGNAL \incrementaImediato|Add0~61_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[18]~16_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~66\ : std_logic;
SIGNAL \incrementaPC|Add0~69_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~62\ : std_logic;
SIGNAL \incrementaImediato|Add0~65_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[19]~17_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~70\ : std_logic;
SIGNAL \incrementaPC|Add0~73_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~66\ : std_logic;
SIGNAL \incrementaImediato|Add0~69_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[20]~18_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~74\ : std_logic;
SIGNAL \incrementaPC|Add0~77_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~70\ : std_logic;
SIGNAL \incrementaImediato|Add0~73_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[21]~19_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~78\ : std_logic;
SIGNAL \incrementaPC|Add0~81_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~74\ : std_logic;
SIGNAL \incrementaImediato|Add0~77_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[22]~20_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~82\ : std_logic;
SIGNAL \incrementaPC|Add0~85_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~78\ : std_logic;
SIGNAL \incrementaImediato|Add0~81_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[23]~21_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~86\ : std_logic;
SIGNAL \incrementaPC|Add0~89_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~82\ : std_logic;
SIGNAL \incrementaImediato|Add0~85_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[24]~22_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~90\ : std_logic;
SIGNAL \incrementaPC|Add0~93_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~86\ : std_logic;
SIGNAL \incrementaImediato|Add0~89_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[25]~23_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~94\ : std_logic;
SIGNAL \incrementaPC|Add0~97_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~90\ : std_logic;
SIGNAL \incrementaImediato|Add0~93_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[26]~24_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~98\ : std_logic;
SIGNAL \incrementaPC|Add0~101_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~94\ : std_logic;
SIGNAL \incrementaImediato|Add0~97_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[27]~25_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~102\ : std_logic;
SIGNAL \incrementaPC|Add0~105_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~98\ : std_logic;
SIGNAL \incrementaImediato|Add0~101_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[28]~26_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~106\ : std_logic;
SIGNAL \incrementaPC|Add0~109_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~102\ : std_logic;
SIGNAL \incrementaImediato|Add0~105_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[29]~27_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~110\ : std_logic;
SIGNAL \incrementaPC|Add0~113_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~106\ : std_logic;
SIGNAL \incrementaImediato|Add0~109_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[30]~28_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~114\ : std_logic;
SIGNAL \incrementaPC|Add0~117_sumout\ : std_logic;
SIGNAL \incrementaImediato|Add0~110\ : std_logic;
SIGNAL \incrementaImediato|Add0~113_sumout\ : std_logic;
SIGNAL \muxPC_BEQ_JMP|saida_MUX[31]~29_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \Registradores|saidaB[1]~22_combout\ : std_logic;
SIGNAL \Registradores|saidaB[2]~23_combout\ : std_logic;
SIGNAL \Registradores|saidaB[4]~24_combout\ : std_logic;
SIGNAL \Registradores|saidaB[5]~25_combout\ : std_logic;
SIGNAL \Registradores|saidaB[6]~26_combout\ : std_logic;
SIGNAL \Registradores|saidaB[7]~27_combout\ : std_logic;
SIGNAL \Registradores|saidaB[9]~28_combout\ : std_logic;
SIGNAL \Registradores|saidaB[10]~29_combout\ : std_logic;
SIGNAL \Registradores|saidaB[11]~30_combout\ : std_logic;
SIGNAL \Registradores|saidaB[12]~31_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \incrementaPC|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1218_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1213_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1208_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1203_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1198_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1193_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1188_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1183_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1178_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1173_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1168_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1163_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1158_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1153_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1148_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1143_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1138_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1133_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1128_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1123_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1118_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1113_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1108_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1103_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1098_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1093_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1088_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \ULA1|BIT5|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA1|BIT5|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[5]~5_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~299_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \ULA1|BIT4|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[4]~4_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~298_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \ULA1|BIT3|somador|ALT_INV_carry_out~1_combout\ : std_logic;
SIGNAL \ULA1|BIT3|somador|ALT_INV_carry_out~0_combout\ : std_logic;
SIGNAL \ULA1|BIT3|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[3]~3_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~297_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \ULA1|BIT2|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[2]~2_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~296_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \ULA1|BIT1|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[1]~1_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~295_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \ULA1|BIT0|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[0]~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~294_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \UC|ALT_INV_mux_rt_ime~0_combout\ : std_logic;
SIGNAL \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \UC_ULA|MUX|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \UC_ULA|MUX|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_sel_beq~0_combout\ : std_logic;
SIGNAL \UC_ULA|decFUNCT|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \UC_ULA|decFUNCT|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ULA1|BIT0|muxResultado|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \incrementaImediato|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \ULA1|BIT25|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA1|BIT25|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[25]~12_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[25]~25_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1187_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \ULA1|BIT24|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[24]~11_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[24]~24_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1182_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \ULA1|BIT23|somador|ALT_INV_carry_out~1_combout\ : std_logic;
SIGNAL \ULA1|BIT23|somador|ALT_INV_carry_out~0_combout\ : std_logic;
SIGNAL \ULA1|BIT23|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA1|BIT23|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[23]~10_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[23]~23_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1177_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \ULA1|BIT22|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[22]~9_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[22]~22_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1172_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \ULA1|BIT21|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[21]~8_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[21]~21_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1167_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \ULA1|BIT20|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA1|BIT20|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[20]~7_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[20]~20_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1162_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \ULA1|BIT19|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[19]~6_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[19]~19_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1157_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \ULA1|BIT18|somador|ALT_INV_carry_out~1_combout\ : std_logic;
SIGNAL \ULA1|BIT18|somador|ALT_INV_carry_out~0_combout\ : std_logic;
SIGNAL \ULA1|BIT18|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA1|BIT18|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[18]~5_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[18]~18_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1152_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \ULA1|BIT17|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[17]~4_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[17]~17_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1147_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \ULA1|BIT16|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[16]~3_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[16]~16_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1142_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \ULA1|BIT15|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA1|BIT15|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[15]~2_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[15]~15_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1137_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~309_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \ULA1|BIT14|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[14]~1_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[14]~14_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1132_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~308_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \ULA1|BIT13|somador|ALT_INV_carry_out~1_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[13]~0_combout\ : std_logic;
SIGNAL \ULA1|BIT13|somador|ALT_INV_carry_out~0_combout\ : std_logic;
SIGNAL \ULA1|BIT13|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[13]~13_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1127_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~307_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \ULA1|BIT12|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[12]~12_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1122_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~306_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \ULA1|BIT11|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[11]~11_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1117_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~305_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \ULA1|BIT10|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA1|BIT10|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[10]~10_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1112_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~304_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \ULA1|BIT9|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[9]~9_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1107_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~303_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \ULA1|BIT8|somador|ALT_INV_carry_out~1_combout\ : std_logic;
SIGNAL \ULA1|BIT8|somador|ALT_INV_carry_out~0_combout\ : std_logic;
SIGNAL \ULA1|BIT8|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[8]~8_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1102_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~302_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \ULA1|BIT7|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[7]~7_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1097_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~301_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \ULA1|BIT6|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[6]~6_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1092_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~300_q\ : std_logic;
SIGNAL \ALT_INV_sel_beq~10_combout\ : std_logic;
SIGNAL \ALT_INV_sel_beq~9_combout\ : std_logic;
SIGNAL \ALT_INV_sel_beq~8_combout\ : std_logic;
SIGNAL \ALT_INV_sel_beq~7_combout\ : std_logic;
SIGNAL \ALT_INV_sel_beq~6_combout\ : std_logic;
SIGNAL \ALT_INV_sel_beq~5_combout\ : std_logic;
SIGNAL \ALT_INV_sel_beq~4_combout\ : std_logic;
SIGNAL \ALT_INV_sel_beq~3_combout\ : std_logic;
SIGNAL \ALT_INV_sel_beq~2_combout\ : std_logic;
SIGNAL \ALT_INV_sel_beq~1_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ULA1|BIT31|muxResultado|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA1|BIT31|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT31|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA1|BIT30|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT30|somador|ALT_INV_soma~combout\ : std_logic;
SIGNAL \ULA1|BIT29|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT28|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT27|muxResultado|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA1|BIT27|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT27|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA1|BIT26|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT25|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT24|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT23|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT22|muxResultado|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA1|BIT22|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT22|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA1|BIT21|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT20|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT19|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT18|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT17|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA1|BIT17|muxResultado|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA1|BIT17|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT1|muxResultado|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA1|BIT17|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA1|BIT16|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT15|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT14|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA1|BIT14|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA1|BIT13|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT12|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA1|BIT12|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT11|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA1|BIT11|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT10|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT9|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA1|BIT9|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT8|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT8|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[8]~21_combout\ : std_logic;
SIGNAL \ULA1|BIT7|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA1|BIT7|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT6|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA1|BIT6|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT5|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT4|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA1|BIT4|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT3|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA1|BIT3|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT3|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[3]~20_combout\ : std_logic;
SIGNAL \ULA1|BIT2|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA1|BIT2|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT1|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA1|BIT1|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|BIT0|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[0]~19_combout\ : std_logic;
SIGNAL \ULA1|BIT0|muxResultado|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\ : std_logic;
SIGNAL \ULA1|BIT31|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[31]~18_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[31]~31_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1217_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \ULA1|BIT30|somador|ALT_INV_carry_out~combout\ : std_logic;
SIGNAL \ULA1|BIT30|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[30]~17_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[30]~30_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1212_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \ULA1|BIT29|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[29]~16_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[29]~29_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1207_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \ULA1|BIT28|somador|ALT_INV_carry_out~1_combout\ : std_logic;
SIGNAL \ULA1|BIT28|somador|ALT_INV_carry_out~0_combout\ : std_logic;
SIGNAL \ULA1|BIT28|somador|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA1|BIT28|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[28]~15_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[28]~28_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1202_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \ULA1|BIT27|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[27]~14_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[27]~27_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1197_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \ULA1|BIT26|muxB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaB[26]~13_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_saidaA[26]~26_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1192_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \UC_ULA|MUX|ALT_INV_saida_MUX[0]~4_combout\ : std_logic;
SIGNAL \ULA1|BIT28|muxResultado|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA1|BIT28|muxResultado|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA1|BIT25|muxResultado|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA1|BIT25|muxResultado|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA1|BIT23|muxResultado|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA1|BIT23|muxResultado|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA1|BIT20|muxResultado|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA1|BIT20|muxResultado|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1256_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1255_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1254_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1253_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1252_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1251_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1250_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1249_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1248_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1247_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1246_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1245_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1244_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1243_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1242_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1241_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1240_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1239_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1238_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1237_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1236_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1235_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1234_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1233_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1232_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1231_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1230_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1229_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1228_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1227_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1226_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1225_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registrador~1222_combout\ : std_logic;
SIGNAL \UC|ALT_INV_mux_rt_rd~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
func <= ww_func;
PC_OUT <= ww_PC_OUT;
opc <= ww_opc;
imedia <= ww_imedia;
ula_saida <= ww_ula_saida;
RS_OUT <= ww_RS_OUT;
RT_OUT <= ww_RT_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\incrementaPC|ALT_INV_Add0~81_sumout\ <= NOT \incrementaPC|Add0~81_sumout\;
\incrementaImediato|ALT_INV_Add0~73_sumout\ <= NOT \incrementaImediato|Add0~73_sumout\;
\incrementaPC|ALT_INV_Add0~77_sumout\ <= NOT \incrementaPC|Add0~77_sumout\;
\incrementaImediato|ALT_INV_Add0~69_sumout\ <= NOT \incrementaImediato|Add0~69_sumout\;
\incrementaPC|ALT_INV_Add0~73_sumout\ <= NOT \incrementaPC|Add0~73_sumout\;
\incrementaImediato|ALT_INV_Add0~65_sumout\ <= NOT \incrementaImediato|Add0~65_sumout\;
\incrementaPC|ALT_INV_Add0~69_sumout\ <= NOT \incrementaPC|Add0~69_sumout\;
\incrementaImediato|ALT_INV_Add0~61_sumout\ <= NOT \incrementaImediato|Add0~61_sumout\;
\incrementaPC|ALT_INV_Add0~65_sumout\ <= NOT \incrementaPC|Add0~65_sumout\;
\incrementaImediato|ALT_INV_Add0~57_sumout\ <= NOT \incrementaImediato|Add0~57_sumout\;
\incrementaPC|ALT_INV_Add0~61_sumout\ <= NOT \incrementaPC|Add0~61_sumout\;
\incrementaImediato|ALT_INV_Add0~53_sumout\ <= NOT \incrementaImediato|Add0~53_sumout\;
\incrementaPC|ALT_INV_Add0~57_sumout\ <= NOT \incrementaPC|Add0~57_sumout\;
\incrementaImediato|ALT_INV_Add0~49_sumout\ <= NOT \incrementaImediato|Add0~49_sumout\;
\incrementaPC|ALT_INV_Add0~53_sumout\ <= NOT \incrementaPC|Add0~53_sumout\;
\incrementaImediato|ALT_INV_Add0~45_sumout\ <= NOT \incrementaImediato|Add0~45_sumout\;
\incrementaPC|ALT_INV_Add0~49_sumout\ <= NOT \incrementaPC|Add0~49_sumout\;
\incrementaImediato|ALT_INV_Add0~41_sumout\ <= NOT \incrementaImediato|Add0~41_sumout\;
\incrementaPC|ALT_INV_Add0~45_sumout\ <= NOT \incrementaPC|Add0~45_sumout\;
\incrementaImediato|ALT_INV_Add0~37_sumout\ <= NOT \incrementaImediato|Add0~37_sumout\;
\incrementaPC|ALT_INV_Add0~41_sumout\ <= NOT \incrementaPC|Add0~41_sumout\;
\incrementaImediato|ALT_INV_Add0~33_sumout\ <= NOT \incrementaImediato|Add0~33_sumout\;
\incrementaPC|ALT_INV_Add0~37_sumout\ <= NOT \incrementaPC|Add0~37_sumout\;
\incrementaImediato|ALT_INV_Add0~29_sumout\ <= NOT \incrementaImediato|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \incrementaPC|Add0~33_sumout\;
\incrementaImediato|ALT_INV_Add0~25_sumout\ <= NOT \incrementaImediato|Add0~25_sumout\;
\incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC|Add0~29_sumout\;
\incrementaImediato|ALT_INV_Add0~21_sumout\ <= NOT \incrementaImediato|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\incrementaImediato|ALT_INV_Add0~17_sumout\ <= NOT \incrementaImediato|Add0~17_sumout\;
\incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC|Add0~21_sumout\;
\incrementaImediato|ALT_INV_Add0~13_sumout\ <= NOT \incrementaImediato|Add0~13_sumout\;
\incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC|Add0~17_sumout\;
\incrementaImediato|ALT_INV_Add0~9_sumout\ <= NOT \incrementaImediato|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC|Add0~13_sumout\;
\incrementaImediato|ALT_INV_Add0~5_sumout\ <= NOT \incrementaImediato|Add0~5_sumout\;
\incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC|Add0~5_sumout\;
\incrementaImediato|ALT_INV_Add0~1_sumout\ <= NOT \incrementaImediato|Add0~1_sumout\;
\incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC|Add0~1_sumout\;
\Registradores|ALT_INV_registrador~1218_combout\ <= NOT \Registradores|registrador~1218_combout\;
\Registradores|ALT_INV_registrador~1213_combout\ <= NOT \Registradores|registrador~1213_combout\;
\Registradores|ALT_INV_registrador~1208_combout\ <= NOT \Registradores|registrador~1208_combout\;
\Registradores|ALT_INV_registrador~1203_combout\ <= NOT \Registradores|registrador~1203_combout\;
\Registradores|ALT_INV_registrador~1198_combout\ <= NOT \Registradores|registrador~1198_combout\;
\Registradores|ALT_INV_registrador~1193_combout\ <= NOT \Registradores|registrador~1193_combout\;
\Registradores|ALT_INV_registrador~1188_combout\ <= NOT \Registradores|registrador~1188_combout\;
\Registradores|ALT_INV_registrador~1183_combout\ <= NOT \Registradores|registrador~1183_combout\;
\Registradores|ALT_INV_registrador~1178_combout\ <= NOT \Registradores|registrador~1178_combout\;
\Registradores|ALT_INV_registrador~1173_combout\ <= NOT \Registradores|registrador~1173_combout\;
\Registradores|ALT_INV_registrador~1168_combout\ <= NOT \Registradores|registrador~1168_combout\;
\Registradores|ALT_INV_registrador~1163_combout\ <= NOT \Registradores|registrador~1163_combout\;
\Registradores|ALT_INV_registrador~1158_combout\ <= NOT \Registradores|registrador~1158_combout\;
\Registradores|ALT_INV_registrador~1153_combout\ <= NOT \Registradores|registrador~1153_combout\;
\Registradores|ALT_INV_registrador~1148_combout\ <= NOT \Registradores|registrador~1148_combout\;
\Registradores|ALT_INV_registrador~1143_combout\ <= NOT \Registradores|registrador~1143_combout\;
\Registradores|ALT_INV_registrador~1138_combout\ <= NOT \Registradores|registrador~1138_combout\;
\Registradores|ALT_INV_registrador~1133_combout\ <= NOT \Registradores|registrador~1133_combout\;
\Registradores|ALT_INV_registrador~1128_combout\ <= NOT \Registradores|registrador~1128_combout\;
\Registradores|ALT_INV_registrador~1123_combout\ <= NOT \Registradores|registrador~1123_combout\;
\Registradores|ALT_INV_registrador~1118_combout\ <= NOT \Registradores|registrador~1118_combout\;
\Registradores|ALT_INV_registrador~1113_combout\ <= NOT \Registradores|registrador~1113_combout\;
\Registradores|ALT_INV_registrador~1108_combout\ <= NOT \Registradores|registrador~1108_combout\;
\Registradores|ALT_INV_registrador~1103_combout\ <= NOT \Registradores|registrador~1103_combout\;
\Registradores|ALT_INV_registrador~1098_combout\ <= NOT \Registradores|registrador~1098_combout\;
\Registradores|ALT_INV_registrador~1093_combout\ <= NOT \Registradores|registrador~1093_combout\;
\Registradores|ALT_INV_registrador~1088_combout\ <= NOT \Registradores|registrador~1088_combout\;
\Registradores|ALT_INV_registrador~1083_combout\ <= NOT \Registradores|registrador~1083_combout\;
\Registradores|ALT_INV_registrador~1078_combout\ <= NOT \Registradores|registrador~1078_combout\;
\Registradores|ALT_INV_registrador~1073_combout\ <= NOT \Registradores|registrador~1073_combout\;
\Registradores|ALT_INV_registrador~1068_combout\ <= NOT \Registradores|registrador~1068_combout\;
\Registradores|ALT_INV_registrador~1063_combout\ <= NOT \Registradores|registrador~1063_combout\;
\Registradores|ALT_INV_registrador~44_q\ <= NOT \Registradores|registrador~44_q\;
\ULA1|BIT5|somador|ALT_INV_carry_out~combout\ <= NOT \ULA1|BIT5|somador|carry_out~combout\;
\ULA1|BIT5|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT5|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaA[5]~5_combout\ <= NOT \Registradores|saidaA[5]~5_combout\;
\Registradores|ALT_INV_registrador~1087_combout\ <= NOT \Registradores|registrador~1087_combout\;
\Registradores|ALT_INV_registrador~299_q\ <= NOT \Registradores|registrador~299_q\;
\Registradores|ALT_INV_registrador~43_q\ <= NOT \Registradores|registrador~43_q\;
\ULA1|BIT4|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT4|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaA[4]~4_combout\ <= NOT \Registradores|saidaA[4]~4_combout\;
\Registradores|ALT_INV_registrador~1082_combout\ <= NOT \Registradores|registrador~1082_combout\;
\Registradores|ALT_INV_registrador~298_q\ <= NOT \Registradores|registrador~298_q\;
\Registradores|ALT_INV_registrador~42_q\ <= NOT \Registradores|registrador~42_q\;
\ULA1|BIT3|somador|ALT_INV_carry_out~1_combout\ <= NOT \ULA1|BIT3|somador|carry_out~1_combout\;
\ULA1|BIT3|somador|ALT_INV_carry_out~0_combout\ <= NOT \ULA1|BIT3|somador|carry_out~0_combout\;
\ULA1|BIT3|somador|ALT_INV_soma~0_combout\ <= NOT \ULA1|BIT3|somador|soma~0_combout\;
\Registradores|ALT_INV_saidaA[3]~3_combout\ <= NOT \Registradores|saidaA[3]~3_combout\;
\Registradores|ALT_INV_registrador~1077_combout\ <= NOT \Registradores|registrador~1077_combout\;
\Registradores|ALT_INV_registrador~297_q\ <= NOT \Registradores|registrador~297_q\;
\Registradores|ALT_INV_registrador~41_q\ <= NOT \Registradores|registrador~41_q\;
\ULA1|BIT2|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT2|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaA[2]~2_combout\ <= NOT \Registradores|saidaA[2]~2_combout\;
\Registradores|ALT_INV_registrador~1072_combout\ <= NOT \Registradores|registrador~1072_combout\;
\Registradores|ALT_INV_registrador~296_q\ <= NOT \Registradores|registrador~296_q\;
\Registradores|ALT_INV_registrador~40_q\ <= NOT \Registradores|registrador~40_q\;
\ULA1|BIT1|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT1|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaA[1]~1_combout\ <= NOT \Registradores|saidaA[1]~1_combout\;
\Registradores|ALT_INV_registrador~1067_combout\ <= NOT \Registradores|registrador~1067_combout\;
\Registradores|ALT_INV_registrador~295_q\ <= NOT \Registradores|registrador~295_q\;
\Registradores|ALT_INV_registrador~39_q\ <= NOT \Registradores|registrador~39_q\;
\ULA1|BIT0|somador|ALT_INV_carry_out~combout\ <= NOT \ULA1|BIT0|somador|carry_out~combout\;
\Registradores|ALT_INV_saidaA[0]~0_combout\ <= NOT \Registradores|saidaA[0]~0_combout\;
\Registradores|ALT_INV_registrador~1062_combout\ <= NOT \Registradores|registrador~1062_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\Registradores|ALT_INV_registrador~294_q\ <= NOT \Registradores|registrador~294_q\;
\Registradores|ALT_INV_registrador~38_q\ <= NOT \Registradores|registrador~38_q\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\UC|ALT_INV_mux_rt_ime~0_combout\ <= NOT \UC|mux_rt_ime~0_combout\;
\UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \UC_ULA|MUX|saida_MUX[2]~2_combout\;
\UC_ULA|MUX|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \UC_ULA|MUX|saida_MUX[1]~1_combout\;
\UC_ULA|MUX|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \UC_ULA|MUX|saida_MUX[1]~0_combout\;
\ALT_INV_sel_beq~0_combout\ <= NOT \sel_beq~0_combout\;
\UC_ULA|decFUNCT|ALT_INV_Equal4~0_combout\ <= NOT \UC_ULA|decFUNCT|Equal4~0_combout\;
\UC_ULA|decFUNCT|ALT_INV_Equal3~0_combout\ <= NOT \UC_ULA|decFUNCT|Equal3~0_combout\;
\UC|ALT_INV_Equal0~0_combout\ <= NOT \UC|Equal0~0_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\PC|ALT_INV_DOUT\(31) <= NOT \PC|DOUT\(31);
\PC|ALT_INV_DOUT\(30) <= NOT \PC|DOUT\(30);
\PC|ALT_INV_DOUT\(29) <= NOT \PC|DOUT\(29);
\PC|ALT_INV_DOUT\(28) <= NOT \PC|DOUT\(28);
\PC|ALT_INV_DOUT\(27) <= NOT \PC|DOUT\(27);
\PC|ALT_INV_DOUT\(26) <= NOT \PC|DOUT\(26);
\PC|ALT_INV_DOUT\(25) <= NOT \PC|DOUT\(25);
\PC|ALT_INV_DOUT\(24) <= NOT \PC|DOUT\(24);
\PC|ALT_INV_DOUT\(23) <= NOT \PC|DOUT\(23);
\PC|ALT_INV_DOUT\(22) <= NOT \PC|DOUT\(22);
\PC|ALT_INV_DOUT\(21) <= NOT \PC|DOUT\(21);
\PC|ALT_INV_DOUT\(20) <= NOT \PC|DOUT\(20);
\PC|ALT_INV_DOUT\(19) <= NOT \PC|DOUT\(19);
\PC|ALT_INV_DOUT\(18) <= NOT \PC|DOUT\(18);
\PC|ALT_INV_DOUT\(17) <= NOT \PC|DOUT\(17);
\PC|ALT_INV_DOUT\(16) <= NOT \PC|DOUT\(16);
\PC|ALT_INV_DOUT\(15) <= NOT \PC|DOUT\(15);
\PC|ALT_INV_DOUT\(14) <= NOT \PC|DOUT\(14);
\PC|ALT_INV_DOUT\(13) <= NOT \PC|DOUT\(13);
\PC|ALT_INV_DOUT\(12) <= NOT \PC|DOUT\(12);
\PC|ALT_INV_DOUT\(11) <= NOT \PC|DOUT\(11);
\PC|ALT_INV_DOUT\(10) <= NOT \PC|DOUT\(10);
\PC|ALT_INV_DOUT\(9) <= NOT \PC|DOUT\(9);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\ULA1|BIT0|muxResultado|ALT_INV_saida_MUX~2_combout\ <= NOT \ULA1|BIT0|muxResultado|saida_MUX~2_combout\;
\incrementaImediato|ALT_INV_Add0~113_sumout\ <= NOT \incrementaImediato|Add0~113_sumout\;
\incrementaPC|ALT_INV_Add0~117_sumout\ <= NOT \incrementaPC|Add0~117_sumout\;
\incrementaImediato|ALT_INV_Add0~109_sumout\ <= NOT \incrementaImediato|Add0~109_sumout\;
\incrementaPC|ALT_INV_Add0~113_sumout\ <= NOT \incrementaPC|Add0~113_sumout\;
\incrementaImediato|ALT_INV_Add0~105_sumout\ <= NOT \incrementaImediato|Add0~105_sumout\;
\incrementaPC|ALT_INV_Add0~109_sumout\ <= NOT \incrementaPC|Add0~109_sumout\;
\incrementaImediato|ALT_INV_Add0~101_sumout\ <= NOT \incrementaImediato|Add0~101_sumout\;
\incrementaPC|ALT_INV_Add0~105_sumout\ <= NOT \incrementaPC|Add0~105_sumout\;
\incrementaImediato|ALT_INV_Add0~97_sumout\ <= NOT \incrementaImediato|Add0~97_sumout\;
\incrementaPC|ALT_INV_Add0~101_sumout\ <= NOT \incrementaPC|Add0~101_sumout\;
\incrementaImediato|ALT_INV_Add0~93_sumout\ <= NOT \incrementaImediato|Add0~93_sumout\;
\incrementaPC|ALT_INV_Add0~97_sumout\ <= NOT \incrementaPC|Add0~97_sumout\;
\incrementaImediato|ALT_INV_Add0~89_sumout\ <= NOT \incrementaImediato|Add0~89_sumout\;
\incrementaPC|ALT_INV_Add0~93_sumout\ <= NOT \incrementaPC|Add0~93_sumout\;
\incrementaImediato|ALT_INV_Add0~85_sumout\ <= NOT \incrementaImediato|Add0~85_sumout\;
\incrementaPC|ALT_INV_Add0~89_sumout\ <= NOT \incrementaPC|Add0~89_sumout\;
\incrementaImediato|ALT_INV_Add0~81_sumout\ <= NOT \incrementaImediato|Add0~81_sumout\;
\incrementaPC|ALT_INV_Add0~85_sumout\ <= NOT \incrementaPC|Add0~85_sumout\;
\incrementaImediato|ALT_INV_Add0~77_sumout\ <= NOT \incrementaImediato|Add0~77_sumout\;
\Registradores|ALT_INV_registrador~64_q\ <= NOT \Registradores|registrador~64_q\;
\ULA1|BIT25|somador|ALT_INV_carry_out~combout\ <= NOT \ULA1|BIT25|somador|carry_out~combout\;
\ULA1|BIT25|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT25|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[25]~12_combout\ <= NOT \Registradores|saidaB[25]~12_combout\;
\Registradores|ALT_INV_saidaA[25]~25_combout\ <= NOT \Registradores|saidaA[25]~25_combout\;
\Registradores|ALT_INV_registrador~1187_combout\ <= NOT \Registradores|registrador~1187_combout\;
\Registradores|ALT_INV_registrador~319_q\ <= NOT \Registradores|registrador~319_q\;
\Registradores|ALT_INV_registrador~63_q\ <= NOT \Registradores|registrador~63_q\;
\ULA1|BIT24|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT24|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[24]~11_combout\ <= NOT \Registradores|saidaB[24]~11_combout\;
\Registradores|ALT_INV_saidaA[24]~24_combout\ <= NOT \Registradores|saidaA[24]~24_combout\;
\Registradores|ALT_INV_registrador~1182_combout\ <= NOT \Registradores|registrador~1182_combout\;
\Registradores|ALT_INV_registrador~318_q\ <= NOT \Registradores|registrador~318_q\;
\Registradores|ALT_INV_registrador~62_q\ <= NOT \Registradores|registrador~62_q\;
\ULA1|BIT23|somador|ALT_INV_carry_out~1_combout\ <= NOT \ULA1|BIT23|somador|carry_out~1_combout\;
\ULA1|BIT23|somador|ALT_INV_carry_out~0_combout\ <= NOT \ULA1|BIT23|somador|carry_out~0_combout\;
\ULA1|BIT23|somador|ALT_INV_soma~0_combout\ <= NOT \ULA1|BIT23|somador|soma~0_combout\;
\ULA1|BIT23|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT23|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[23]~10_combout\ <= NOT \Registradores|saidaB[23]~10_combout\;
\Registradores|ALT_INV_saidaA[23]~23_combout\ <= NOT \Registradores|saidaA[23]~23_combout\;
\Registradores|ALT_INV_registrador~1177_combout\ <= NOT \Registradores|registrador~1177_combout\;
\Registradores|ALT_INV_registrador~317_q\ <= NOT \Registradores|registrador~317_q\;
\Registradores|ALT_INV_registrador~61_q\ <= NOT \Registradores|registrador~61_q\;
\ULA1|BIT22|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT22|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[22]~9_combout\ <= NOT \Registradores|saidaB[22]~9_combout\;
\Registradores|ALT_INV_saidaA[22]~22_combout\ <= NOT \Registradores|saidaA[22]~22_combout\;
\Registradores|ALT_INV_registrador~1172_combout\ <= NOT \Registradores|registrador~1172_combout\;
\Registradores|ALT_INV_registrador~316_q\ <= NOT \Registradores|registrador~316_q\;
\Registradores|ALT_INV_registrador~60_q\ <= NOT \Registradores|registrador~60_q\;
\ULA1|BIT21|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT21|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[21]~8_combout\ <= NOT \Registradores|saidaB[21]~8_combout\;
\Registradores|ALT_INV_saidaA[21]~21_combout\ <= NOT \Registradores|saidaA[21]~21_combout\;
\Registradores|ALT_INV_registrador~1167_combout\ <= NOT \Registradores|registrador~1167_combout\;
\Registradores|ALT_INV_registrador~315_q\ <= NOT \Registradores|registrador~315_q\;
\Registradores|ALT_INV_registrador~59_q\ <= NOT \Registradores|registrador~59_q\;
\ULA1|BIT20|somador|ALT_INV_carry_out~combout\ <= NOT \ULA1|BIT20|somador|carry_out~combout\;
\ULA1|BIT20|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT20|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[20]~7_combout\ <= NOT \Registradores|saidaB[20]~7_combout\;
\Registradores|ALT_INV_saidaA[20]~20_combout\ <= NOT \Registradores|saidaA[20]~20_combout\;
\Registradores|ALT_INV_registrador~1162_combout\ <= NOT \Registradores|registrador~1162_combout\;
\Registradores|ALT_INV_registrador~314_q\ <= NOT \Registradores|registrador~314_q\;
\Registradores|ALT_INV_registrador~58_q\ <= NOT \Registradores|registrador~58_q\;
\ULA1|BIT19|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT19|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[19]~6_combout\ <= NOT \Registradores|saidaB[19]~6_combout\;
\Registradores|ALT_INV_saidaA[19]~19_combout\ <= NOT \Registradores|saidaA[19]~19_combout\;
\Registradores|ALT_INV_registrador~1157_combout\ <= NOT \Registradores|registrador~1157_combout\;
\Registradores|ALT_INV_registrador~313_q\ <= NOT \Registradores|registrador~313_q\;
\Registradores|ALT_INV_registrador~57_q\ <= NOT \Registradores|registrador~57_q\;
\ULA1|BIT18|somador|ALT_INV_carry_out~1_combout\ <= NOT \ULA1|BIT18|somador|carry_out~1_combout\;
\ULA1|BIT18|somador|ALT_INV_carry_out~0_combout\ <= NOT \ULA1|BIT18|somador|carry_out~0_combout\;
\ULA1|BIT18|somador|ALT_INV_soma~0_combout\ <= NOT \ULA1|BIT18|somador|soma~0_combout\;
\ULA1|BIT18|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT18|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[18]~5_combout\ <= NOT \Registradores|saidaB[18]~5_combout\;
\Registradores|ALT_INV_saidaA[18]~18_combout\ <= NOT \Registradores|saidaA[18]~18_combout\;
\Registradores|ALT_INV_registrador~1152_combout\ <= NOT \Registradores|registrador~1152_combout\;
\Registradores|ALT_INV_registrador~312_q\ <= NOT \Registradores|registrador~312_q\;
\Registradores|ALT_INV_registrador~56_q\ <= NOT \Registradores|registrador~56_q\;
\ULA1|BIT17|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT17|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[17]~4_combout\ <= NOT \Registradores|saidaB[17]~4_combout\;
\Registradores|ALT_INV_saidaA[17]~17_combout\ <= NOT \Registradores|saidaA[17]~17_combout\;
\Registradores|ALT_INV_registrador~1147_combout\ <= NOT \Registradores|registrador~1147_combout\;
\Registradores|ALT_INV_registrador~311_q\ <= NOT \Registradores|registrador~311_q\;
\Registradores|ALT_INV_registrador~55_q\ <= NOT \Registradores|registrador~55_q\;
\ULA1|BIT16|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT16|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[16]~3_combout\ <= NOT \Registradores|saidaB[16]~3_combout\;
\Registradores|ALT_INV_saidaA[16]~16_combout\ <= NOT \Registradores|saidaA[16]~16_combout\;
\Registradores|ALT_INV_registrador~1142_combout\ <= NOT \Registradores|registrador~1142_combout\;
\Registradores|ALT_INV_registrador~310_q\ <= NOT \Registradores|registrador~310_q\;
\Registradores|ALT_INV_registrador~54_q\ <= NOT \Registradores|registrador~54_q\;
\ULA1|BIT15|somador|ALT_INV_carry_out~combout\ <= NOT \ULA1|BIT15|somador|carry_out~combout\;
\ULA1|BIT15|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT15|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[15]~2_combout\ <= NOT \Registradores|saidaB[15]~2_combout\;
\Registradores|ALT_INV_saidaA[15]~15_combout\ <= NOT \Registradores|saidaA[15]~15_combout\;
\Registradores|ALT_INV_registrador~1137_combout\ <= NOT \Registradores|registrador~1137_combout\;
\Registradores|ALT_INV_registrador~309_q\ <= NOT \Registradores|registrador~309_q\;
\Registradores|ALT_INV_registrador~53_q\ <= NOT \Registradores|registrador~53_q\;
\ULA1|BIT14|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT14|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[14]~1_combout\ <= NOT \Registradores|saidaB[14]~1_combout\;
\Registradores|ALT_INV_saidaA[14]~14_combout\ <= NOT \Registradores|saidaA[14]~14_combout\;
\Registradores|ALT_INV_registrador~1132_combout\ <= NOT \Registradores|registrador~1132_combout\;
\Registradores|ALT_INV_registrador~308_q\ <= NOT \Registradores|registrador~308_q\;
\Registradores|ALT_INV_registrador~52_q\ <= NOT \Registradores|registrador~52_q\;
\ULA1|BIT13|somador|ALT_INV_carry_out~1_combout\ <= NOT \ULA1|BIT13|somador|carry_out~1_combout\;
\Registradores|ALT_INV_saidaB[13]~0_combout\ <= NOT \Registradores|saidaB[13]~0_combout\;
\ULA1|BIT13|somador|ALT_INV_carry_out~0_combout\ <= NOT \ULA1|BIT13|somador|carry_out~0_combout\;
\ULA1|BIT13|somador|ALT_INV_soma~0_combout\ <= NOT \ULA1|BIT13|somador|soma~0_combout\;
\Registradores|ALT_INV_saidaA[13]~13_combout\ <= NOT \Registradores|saidaA[13]~13_combout\;
\Registradores|ALT_INV_registrador~1127_combout\ <= NOT \Registradores|registrador~1127_combout\;
\Registradores|ALT_INV_registrador~307_q\ <= NOT \Registradores|registrador~307_q\;
\Registradores|ALT_INV_registrador~51_q\ <= NOT \Registradores|registrador~51_q\;
\ULA1|BIT12|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT12|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaA[12]~12_combout\ <= NOT \Registradores|saidaA[12]~12_combout\;
\Registradores|ALT_INV_registrador~1122_combout\ <= NOT \Registradores|registrador~1122_combout\;
\Registradores|ALT_INV_registrador~306_q\ <= NOT \Registradores|registrador~306_q\;
\Registradores|ALT_INV_registrador~50_q\ <= NOT \Registradores|registrador~50_q\;
\ULA1|BIT11|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT11|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaA[11]~11_combout\ <= NOT \Registradores|saidaA[11]~11_combout\;
\Registradores|ALT_INV_registrador~1117_combout\ <= NOT \Registradores|registrador~1117_combout\;
\Registradores|ALT_INV_registrador~305_q\ <= NOT \Registradores|registrador~305_q\;
\Registradores|ALT_INV_registrador~49_q\ <= NOT \Registradores|registrador~49_q\;
\ULA1|BIT10|somador|ALT_INV_carry_out~combout\ <= NOT \ULA1|BIT10|somador|carry_out~combout\;
\ULA1|BIT10|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT10|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaA[10]~10_combout\ <= NOT \Registradores|saidaA[10]~10_combout\;
\Registradores|ALT_INV_registrador~1112_combout\ <= NOT \Registradores|registrador~1112_combout\;
\Registradores|ALT_INV_registrador~304_q\ <= NOT \Registradores|registrador~304_q\;
\Registradores|ALT_INV_registrador~48_q\ <= NOT \Registradores|registrador~48_q\;
\ULA1|BIT9|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT9|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaA[9]~9_combout\ <= NOT \Registradores|saidaA[9]~9_combout\;
\Registradores|ALT_INV_registrador~1107_combout\ <= NOT \Registradores|registrador~1107_combout\;
\Registradores|ALT_INV_registrador~303_q\ <= NOT \Registradores|registrador~303_q\;
\Registradores|ALT_INV_registrador~47_q\ <= NOT \Registradores|registrador~47_q\;
\ULA1|BIT8|somador|ALT_INV_carry_out~1_combout\ <= NOT \ULA1|BIT8|somador|carry_out~1_combout\;
\ULA1|BIT8|somador|ALT_INV_carry_out~0_combout\ <= NOT \ULA1|BIT8|somador|carry_out~0_combout\;
\ULA1|BIT8|somador|ALT_INV_soma~0_combout\ <= NOT \ULA1|BIT8|somador|soma~0_combout\;
\Registradores|ALT_INV_saidaA[8]~8_combout\ <= NOT \Registradores|saidaA[8]~8_combout\;
\Registradores|ALT_INV_registrador~1102_combout\ <= NOT \Registradores|registrador~1102_combout\;
\Registradores|ALT_INV_registrador~302_q\ <= NOT \Registradores|registrador~302_q\;
\Registradores|ALT_INV_registrador~46_q\ <= NOT \Registradores|registrador~46_q\;
\ULA1|BIT7|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT7|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaA[7]~7_combout\ <= NOT \Registradores|saidaA[7]~7_combout\;
\Registradores|ALT_INV_registrador~1097_combout\ <= NOT \Registradores|registrador~1097_combout\;
\Registradores|ALT_INV_registrador~301_q\ <= NOT \Registradores|registrador~301_q\;
\Registradores|ALT_INV_registrador~45_q\ <= NOT \Registradores|registrador~45_q\;
\ULA1|BIT6|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT6|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaA[6]~6_combout\ <= NOT \Registradores|saidaA[6]~6_combout\;
\Registradores|ALT_INV_registrador~1092_combout\ <= NOT \Registradores|registrador~1092_combout\;
\Registradores|ALT_INV_registrador~300_q\ <= NOT \Registradores|registrador~300_q\;
\ALT_INV_sel_beq~10_combout\ <= NOT \sel_beq~10_combout\;
\ALT_INV_sel_beq~9_combout\ <= NOT \sel_beq~9_combout\;
\ALT_INV_sel_beq~8_combout\ <= NOT \sel_beq~8_combout\;
\ALT_INV_sel_beq~7_combout\ <= NOT \sel_beq~7_combout\;
\ALT_INV_sel_beq~6_combout\ <= NOT \sel_beq~6_combout\;
\ALT_INV_sel_beq~5_combout\ <= NOT \sel_beq~5_combout\;
\ALT_INV_sel_beq~4_combout\ <= NOT \sel_beq~4_combout\;
\ALT_INV_sel_beq~3_combout\ <= NOT \sel_beq~3_combout\;
\ALT_INV_sel_beq~2_combout\ <= NOT \sel_beq~2_combout\;
\ALT_INV_sel_beq~1_combout\ <= NOT \sel_beq~1_combout\;
\UC|ALT_INV_Equal5~0_combout\ <= NOT \UC|Equal5~0_combout\;
\ULA1|BIT31|muxResultado|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA1|BIT31|muxResultado|saida_MUX~1_combout\;
\ULA1|BIT31|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT31|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT31|somador|ALT_INV_soma~0_combout\ <= NOT \ULA1|BIT31|somador|soma~0_combout\;
\ULA1|BIT30|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT30|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT30|somador|ALT_INV_soma~combout\ <= NOT \ULA1|BIT30|somador|soma~combout\;
\ULA1|BIT29|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT29|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT28|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT28|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT27|muxResultado|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA1|BIT27|muxResultado|saida_MUX~1_combout\;
\ULA1|BIT27|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT27|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT27|somador|ALT_INV_soma~0_combout\ <= NOT \ULA1|BIT27|somador|soma~0_combout\;
\ULA1|BIT26|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT26|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT25|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT25|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT24|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT24|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT23|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT23|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT22|muxResultado|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA1|BIT22|muxResultado|saida_MUX~1_combout\;
\ULA1|BIT22|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT22|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT22|somador|ALT_INV_soma~0_combout\ <= NOT \ULA1|BIT22|somador|soma~0_combout\;
\ULA1|BIT21|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT21|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT20|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT20|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT19|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT19|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT18|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT18|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT17|somador|ALT_INV_carry_out~combout\ <= NOT \ULA1|BIT17|somador|carry_out~combout\;
\ULA1|BIT17|muxResultado|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA1|BIT17|muxResultado|saida_MUX~1_combout\;
\ULA1|BIT17|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT17|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT1|muxResultado|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA1|BIT1|muxResultado|saida_MUX~1_combout\;
\ULA1|BIT17|somador|ALT_INV_soma~0_combout\ <= NOT \ULA1|BIT17|somador|soma~0_combout\;
\ULA1|BIT16|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT16|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT15|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT15|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT14|somador|ALT_INV_carry_out~combout\ <= NOT \ULA1|BIT14|somador|carry_out~combout\;
\ULA1|BIT14|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT14|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA1|BIT13|muxResultado|saida_MUX~1_combout\;
\ULA1|BIT13|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT13|muxB|saida_MUX~0_combout\;
\ULA1|BIT12|somador|ALT_INV_carry_out~combout\ <= NOT \ULA1|BIT12|somador|carry_out~combout\;
\ULA1|BIT12|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT12|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT11|somador|ALT_INV_carry_out~combout\ <= NOT \ULA1|BIT11|somador|carry_out~combout\;
\ULA1|BIT11|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT11|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT10|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT10|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT9|somador|ALT_INV_carry_out~combout\ <= NOT \ULA1|BIT9|somador|carry_out~combout\;
\ULA1|BIT9|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT9|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT8|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT8|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT8|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT8|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[8]~21_combout\ <= NOT \Registradores|saidaB[8]~21_combout\;
\ULA1|BIT7|somador|ALT_INV_carry_out~combout\ <= NOT \ULA1|BIT7|somador|carry_out~combout\;
\ULA1|BIT7|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT7|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT6|somador|ALT_INV_carry_out~combout\ <= NOT \ULA1|BIT6|somador|carry_out~combout\;
\ULA1|BIT6|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT6|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT5|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT5|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT4|somador|ALT_INV_carry_out~combout\ <= NOT \ULA1|BIT4|somador|carry_out~combout\;
\ULA1|BIT4|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT4|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT3|somador|ALT_INV_carry_out~combout\ <= NOT \ULA1|BIT3|somador|carry_out~combout\;
\ULA1|BIT3|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT3|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT3|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT3|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[3]~20_combout\ <= NOT \Registradores|saidaB[3]~20_combout\;
\ULA1|BIT2|somador|ALT_INV_carry_out~combout\ <= NOT \ULA1|BIT2|somador|carry_out~combout\;
\ULA1|BIT2|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT2|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT1|somador|ALT_INV_carry_out~combout\ <= NOT \ULA1|BIT1|somador|carry_out~combout\;
\ULA1|BIT1|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT1|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT13|muxResultado|saida_MUX~0_combout\;
\ULA1|BIT0|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT0|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[0]~19_combout\ <= NOT \Registradores|saidaB[0]~19_combout\;
\ULA1|BIT0|muxResultado|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT0|muxResultado|saida_MUX~0_combout\;
\UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\ <= NOT \UC_ULA|MUX|saida_MUX[1]~3_combout\;
\ULA1|BIT31|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT31|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[31]~18_combout\ <= NOT \Registradores|saidaB[31]~18_combout\;
\Registradores|ALT_INV_saidaA[31]~31_combout\ <= NOT \Registradores|saidaA[31]~31_combout\;
\Registradores|ALT_INV_registrador~1217_combout\ <= NOT \Registradores|registrador~1217_combout\;
\Registradores|ALT_INV_registrador~325_q\ <= NOT \Registradores|registrador~325_q\;
\Registradores|ALT_INV_registrador~69_q\ <= NOT \Registradores|registrador~69_q\;
\ULA1|BIT30|somador|ALT_INV_carry_out~combout\ <= NOT \ULA1|BIT30|somador|carry_out~combout\;
\ULA1|BIT30|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT30|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[30]~17_combout\ <= NOT \Registradores|saidaB[30]~17_combout\;
\Registradores|ALT_INV_saidaA[30]~30_combout\ <= NOT \Registradores|saidaA[30]~30_combout\;
\Registradores|ALT_INV_registrador~1212_combout\ <= NOT \Registradores|registrador~1212_combout\;
\Registradores|ALT_INV_registrador~324_q\ <= NOT \Registradores|registrador~324_q\;
\Registradores|ALT_INV_registrador~68_q\ <= NOT \Registradores|registrador~68_q\;
\ULA1|BIT29|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT29|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[29]~16_combout\ <= NOT \Registradores|saidaB[29]~16_combout\;
\Registradores|ALT_INV_saidaA[29]~29_combout\ <= NOT \Registradores|saidaA[29]~29_combout\;
\Registradores|ALT_INV_registrador~1207_combout\ <= NOT \Registradores|registrador~1207_combout\;
\Registradores|ALT_INV_registrador~323_q\ <= NOT \Registradores|registrador~323_q\;
\Registradores|ALT_INV_registrador~67_q\ <= NOT \Registradores|registrador~67_q\;
\ULA1|BIT28|somador|ALT_INV_carry_out~1_combout\ <= NOT \ULA1|BIT28|somador|carry_out~1_combout\;
\ULA1|BIT28|somador|ALT_INV_carry_out~0_combout\ <= NOT \ULA1|BIT28|somador|carry_out~0_combout\;
\ULA1|BIT28|somador|ALT_INV_soma~0_combout\ <= NOT \ULA1|BIT28|somador|soma~0_combout\;
\ULA1|BIT28|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT28|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[28]~15_combout\ <= NOT \Registradores|saidaB[28]~15_combout\;
\Registradores|ALT_INV_saidaA[28]~28_combout\ <= NOT \Registradores|saidaA[28]~28_combout\;
\Registradores|ALT_INV_registrador~1202_combout\ <= NOT \Registradores|registrador~1202_combout\;
\Registradores|ALT_INV_registrador~322_q\ <= NOT \Registradores|registrador~322_q\;
\Registradores|ALT_INV_registrador~66_q\ <= NOT \Registradores|registrador~66_q\;
\ULA1|BIT27|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT27|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[27]~14_combout\ <= NOT \Registradores|saidaB[27]~14_combout\;
\Registradores|ALT_INV_saidaA[27]~27_combout\ <= NOT \Registradores|saidaA[27]~27_combout\;
\Registradores|ALT_INV_registrador~1197_combout\ <= NOT \Registradores|registrador~1197_combout\;
\Registradores|ALT_INV_registrador~321_q\ <= NOT \Registradores|registrador~321_q\;
\Registradores|ALT_INV_registrador~65_q\ <= NOT \Registradores|registrador~65_q\;
\ULA1|BIT26|muxB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|BIT26|muxB|saida_MUX~0_combout\;
\Registradores|ALT_INV_saidaB[26]~13_combout\ <= NOT \Registradores|saidaB[26]~13_combout\;
\Registradores|ALT_INV_saidaA[26]~26_combout\ <= NOT \Registradores|saidaA[26]~26_combout\;
\Registradores|ALT_INV_registrador~1192_combout\ <= NOT \Registradores|registrador~1192_combout\;
\Registradores|ALT_INV_registrador~320_q\ <= NOT \Registradores|registrador~320_q\;
\Registradores|ALT_INV_Equal0~0_combout\ <= NOT \Registradores|Equal0~0_combout\;
\UC_ULA|MUX|ALT_INV_saida_MUX[0]~4_combout\ <= NOT \UC_ULA|MUX|saida_MUX[0]~4_combout\;
\ULA1|BIT28|muxResultado|ALT_INV_saida_MUX~2_combout\ <= NOT \ULA1|BIT28|muxResultado|saida_MUX~2_combout\;
\ULA1|BIT28|muxResultado|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA1|BIT28|muxResultado|saida_MUX~1_combout\;
\ULA1|BIT25|muxResultado|ALT_INV_saida_MUX~2_combout\ <= NOT \ULA1|BIT25|muxResultado|saida_MUX~2_combout\;
\ULA1|BIT25|muxResultado|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA1|BIT25|muxResultado|saida_MUX~1_combout\;
\ULA1|BIT23|muxResultado|ALT_INV_saida_MUX~2_combout\ <= NOT \ULA1|BIT23|muxResultado|saida_MUX~2_combout\;
\ULA1|BIT23|muxResultado|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA1|BIT23|muxResultado|saida_MUX~1_combout\;
\ULA1|BIT20|muxResultado|ALT_INV_saida_MUX~2_combout\ <= NOT \ULA1|BIT20|muxResultado|saida_MUX~2_combout\;
\ULA1|BIT20|muxResultado|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA1|BIT20|muxResultado|saida_MUX~1_combout\;
\Registradores|ALT_INV_registrador~1256_combout\ <= NOT \Registradores|registrador~1256_combout\;
\Registradores|ALT_INV_registrador~1255_combout\ <= NOT \Registradores|registrador~1255_combout\;
\Registradores|ALT_INV_registrador~1254_combout\ <= NOT \Registradores|registrador~1254_combout\;
\Registradores|ALT_INV_registrador~1253_combout\ <= NOT \Registradores|registrador~1253_combout\;
\Registradores|ALT_INV_registrador~1252_combout\ <= NOT \Registradores|registrador~1252_combout\;
\Registradores|ALT_INV_registrador~1251_combout\ <= NOT \Registradores|registrador~1251_combout\;
\Registradores|ALT_INV_registrador~1250_combout\ <= NOT \Registradores|registrador~1250_combout\;
\Registradores|ALT_INV_registrador~1249_combout\ <= NOT \Registradores|registrador~1249_combout\;
\Registradores|ALT_INV_registrador~1248_combout\ <= NOT \Registradores|registrador~1248_combout\;
\Registradores|ALT_INV_registrador~1247_combout\ <= NOT \Registradores|registrador~1247_combout\;
\Registradores|ALT_INV_registrador~1246_combout\ <= NOT \Registradores|registrador~1246_combout\;
\Registradores|ALT_INV_registrador~1245_combout\ <= NOT \Registradores|registrador~1245_combout\;
\Registradores|ALT_INV_registrador~1244_combout\ <= NOT \Registradores|registrador~1244_combout\;
\Registradores|ALT_INV_registrador~1243_combout\ <= NOT \Registradores|registrador~1243_combout\;
\Registradores|ALT_INV_registrador~1242_combout\ <= NOT \Registradores|registrador~1242_combout\;
\Registradores|ALT_INV_registrador~1241_combout\ <= NOT \Registradores|registrador~1241_combout\;
\Registradores|ALT_INV_registrador~1240_combout\ <= NOT \Registradores|registrador~1240_combout\;
\Registradores|ALT_INV_registrador~1239_combout\ <= NOT \Registradores|registrador~1239_combout\;
\Registradores|ALT_INV_registrador~1238_combout\ <= NOT \Registradores|registrador~1238_combout\;
\Registradores|ALT_INV_registrador~1237_combout\ <= NOT \Registradores|registrador~1237_combout\;
\Registradores|ALT_INV_registrador~1236_combout\ <= NOT \Registradores|registrador~1236_combout\;
\Registradores|ALT_INV_registrador~1235_combout\ <= NOT \Registradores|registrador~1235_combout\;
\Registradores|ALT_INV_registrador~1234_combout\ <= NOT \Registradores|registrador~1234_combout\;
\Registradores|ALT_INV_registrador~1233_combout\ <= NOT \Registradores|registrador~1233_combout\;
\Registradores|ALT_INV_registrador~1232_combout\ <= NOT \Registradores|registrador~1232_combout\;
\Registradores|ALT_INV_registrador~1231_combout\ <= NOT \Registradores|registrador~1231_combout\;
\Registradores|ALT_INV_registrador~1230_combout\ <= NOT \Registradores|registrador~1230_combout\;
\Registradores|ALT_INV_registrador~1229_combout\ <= NOT \Registradores|registrador~1229_combout\;
\Registradores|ALT_INV_registrador~1228_combout\ <= NOT \Registradores|registrador~1228_combout\;
\Registradores|ALT_INV_registrador~1227_combout\ <= NOT \Registradores|registrador~1227_combout\;
\Registradores|ALT_INV_registrador~1226_combout\ <= NOT \Registradores|registrador~1226_combout\;
\Registradores|ALT_INV_registrador~1225_combout\ <= NOT \Registradores|registrador~1225_combout\;
\Registradores|ALT_INV_registrador~1222_combout\ <= NOT \Registradores|registrador~1222_combout\;
\UC|ALT_INV_mux_rt_rd~0_combout\ <= NOT \UC|mux_rt_rd~0_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;

\func[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => \func[0]~output_o\);

\func[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~2_combout\,
	devoe => ww_devoe,
	o => \func[1]~output_o\);

\func[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~4_combout\,
	devoe => ww_devoe,
	o => \func[2]~output_o\);

\func[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~6_combout\,
	devoe => ww_devoe,
	o => \func[3]~output_o\);

\func[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~7_combout\,
	devoe => ww_devoe,
	o => \func[4]~output_o\);

\func[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~9_combout\,
	devoe => ww_devoe,
	o => \func[5]~output_o\);

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_OUT[0]~output_o\);

\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_OUT[1]~output_o\);

\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PC_OUT[2]~output_o\);

\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => \PC_OUT[3]~output_o\);

\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => \PC_OUT[4]~output_o\);

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT[5]~output_o\);

\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PC_OUT[6]~output_o\);

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT[7]~output_o\);

\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

\PC_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(9),
	devoe => ww_devoe,
	o => \PC_OUT[9]~output_o\);

\PC_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(10),
	devoe => ww_devoe,
	o => \PC_OUT[10]~output_o\);

\PC_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(11),
	devoe => ww_devoe,
	o => \PC_OUT[11]~output_o\);

\PC_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(12),
	devoe => ww_devoe,
	o => \PC_OUT[12]~output_o\);

\PC_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(13),
	devoe => ww_devoe,
	o => \PC_OUT[13]~output_o\);

\PC_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(14),
	devoe => ww_devoe,
	o => \PC_OUT[14]~output_o\);

\PC_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(15),
	devoe => ww_devoe,
	o => \PC_OUT[15]~output_o\);

\PC_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(16),
	devoe => ww_devoe,
	o => \PC_OUT[16]~output_o\);

\PC_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(17),
	devoe => ww_devoe,
	o => \PC_OUT[17]~output_o\);

\PC_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(18),
	devoe => ww_devoe,
	o => \PC_OUT[18]~output_o\);

\PC_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(19),
	devoe => ww_devoe,
	o => \PC_OUT[19]~output_o\);

\PC_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(20),
	devoe => ww_devoe,
	o => \PC_OUT[20]~output_o\);

\PC_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(21),
	devoe => ww_devoe,
	o => \PC_OUT[21]~output_o\);

\PC_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(22),
	devoe => ww_devoe,
	o => \PC_OUT[22]~output_o\);

\PC_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(23),
	devoe => ww_devoe,
	o => \PC_OUT[23]~output_o\);

\PC_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(24),
	devoe => ww_devoe,
	o => \PC_OUT[24]~output_o\);

\PC_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(25),
	devoe => ww_devoe,
	o => \PC_OUT[25]~output_o\);

\PC_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(26),
	devoe => ww_devoe,
	o => \PC_OUT[26]~output_o\);

\PC_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(27),
	devoe => ww_devoe,
	o => \PC_OUT[27]~output_o\);

\PC_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(28),
	devoe => ww_devoe,
	o => \PC_OUT[28]~output_o\);

\PC_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(29),
	devoe => ww_devoe,
	o => \PC_OUT[29]~output_o\);

\PC_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(30),
	devoe => ww_devoe,
	o => \PC_OUT[30]~output_o\);

\PC_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(31),
	devoe => ww_devoe,
	o => \PC_OUT[31]~output_o\);

\opc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~10_combout\,
	devoe => ww_devoe,
	o => \opc[0]~output_o\);

\opc[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|ALT_INV_memROM~12_combout\,
	devoe => ww_devoe,
	o => \opc[1]~output_o\);

\opc[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~7_combout\,
	devoe => ww_devoe,
	o => \opc[2]~output_o\);

\opc[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~13_combout\,
	devoe => ww_devoe,
	o => \opc[3]~output_o\);

\opc[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \opc[4]~output_o\);

\opc[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~10_combout\,
	devoe => ww_devoe,
	o => \opc[5]~output_o\);

\imedia[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => \imedia[0]~output_o\);

\imedia[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~2_combout\,
	devoe => ww_devoe,
	o => \imedia[1]~output_o\);

\imedia[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~4_combout\,
	devoe => ww_devoe,
	o => \imedia[2]~output_o\);

\imedia[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~6_combout\,
	devoe => ww_devoe,
	o => \imedia[3]~output_o\);

\imedia[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~7_combout\,
	devoe => ww_devoe,
	o => \imedia[4]~output_o\);

\imedia[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~9_combout\,
	devoe => ww_devoe,
	o => \imedia[5]~output_o\);

\imedia[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~7_combout\,
	devoe => ww_devoe,
	o => \imedia[6]~output_o\);

\imedia[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~7_combout\,
	devoe => ww_devoe,
	o => \imedia[7]~output_o\);

\imedia[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~7_combout\,
	devoe => ww_devoe,
	o => \imedia[8]~output_o\);

\imedia[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~7_combout\,
	devoe => ww_devoe,
	o => \imedia[9]~output_o\);

\imedia[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~7_combout\,
	devoe => ww_devoe,
	o => \imedia[10]~output_o\);

\imedia[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~7_combout\,
	devoe => ww_devoe,
	o => \imedia[11]~output_o\);

\imedia[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~7_combout\,
	devoe => ww_devoe,
	o => \imedia[12]~output_o\);

\imedia[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~7_combout\,
	devoe => ww_devoe,
	o => \imedia[13]~output_o\);

\imedia[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~9_combout\,
	devoe => ww_devoe,
	o => \imedia[14]~output_o\);

\imedia[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~7_combout\,
	devoe => ww_devoe,
	o => \imedia[15]~output_o\);

\ula_saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT0|muxResultado|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \ula_saida[0]~output_o\);

\ula_saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT1|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[1]~output_o\);

\ula_saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT2|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[2]~output_o\);

\ula_saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT3|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[3]~output_o\);

\ula_saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT4|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[4]~output_o\);

\ula_saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT5|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[5]~output_o\);

\ula_saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT6|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[6]~output_o\);

\ula_saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT7|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[7]~output_o\);

\ula_saida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT8|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[8]~output_o\);

\ula_saida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT9|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[9]~output_o\);

\ula_saida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT10|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[10]~output_o\);

\ula_saida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT11|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[11]~output_o\);

\ula_saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT12|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[12]~output_o\);

\ula_saida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT13|muxResultado|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \ula_saida[13]~output_o\);

\ula_saida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT14|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[14]~output_o\);

\ula_saida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT15|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[15]~output_o\);

\ula_saida[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT16|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[16]~output_o\);

\ula_saida[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT17|muxResultado|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \ula_saida[17]~output_o\);

\ula_saida[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT18|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[18]~output_o\);

\ula_saida[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT19|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[19]~output_o\);

\ula_saida[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT20|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[20]~output_o\);

\ula_saida[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT21|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[21]~output_o\);

\ula_saida[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT22|muxResultado|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \ula_saida[22]~output_o\);

\ula_saida[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT23|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[23]~output_o\);

\ula_saida[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT24|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[24]~output_o\);

\ula_saida[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT25|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[25]~output_o\);

\ula_saida[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT26|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[26]~output_o\);

\ula_saida[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT27|muxResultado|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \ula_saida[27]~output_o\);

\ula_saida[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT28|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[28]~output_o\);

\ula_saida[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT29|muxResultado|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \ula_saida[29]~output_o\);

\ula_saida[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT30|muxResultado|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \ula_saida[30]~output_o\);

\ula_saida[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|BIT31|muxResultado|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \ula_saida[31]~output_o\);

\RS_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[0]~output_o\);

\RS_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[1]~1_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[1]~output_o\);

\RS_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[2]~2_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[2]~output_o\);

\RS_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[3]~3_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[3]~output_o\);

\RS_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[4]~4_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[4]~output_o\);

\RS_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[5]~5_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[5]~output_o\);

\RS_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[6]~6_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[6]~output_o\);

\RS_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[7]~7_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[7]~output_o\);

\RS_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[8]~8_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[8]~output_o\);

\RS_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[9]~9_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[9]~output_o\);

\RS_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[10]~10_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[10]~output_o\);

\RS_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[11]~11_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[11]~output_o\);

\RS_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[12]~12_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[12]~output_o\);

\RS_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[13]~13_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[13]~output_o\);

\RS_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[14]~14_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[14]~output_o\);

\RS_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[15]~15_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[15]~output_o\);

\RS_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[16]~16_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[16]~output_o\);

\RS_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[17]~17_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[17]~output_o\);

\RS_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[18]~18_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[18]~output_o\);

\RS_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[19]~19_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[19]~output_o\);

\RS_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[20]~20_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[20]~output_o\);

\RS_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[21]~21_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[21]~output_o\);

\RS_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[22]~22_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[22]~output_o\);

\RS_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[23]~23_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[23]~output_o\);

\RS_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[24]~24_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[24]~output_o\);

\RS_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[25]~25_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[25]~output_o\);

\RS_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[26]~26_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[26]~output_o\);

\RS_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[27]~27_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[27]~output_o\);

\RS_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[28]~28_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[28]~output_o\);

\RS_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[29]~29_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[29]~output_o\);

\RS_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[30]~30_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[30]~output_o\);

\RS_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaA[31]~31_combout\,
	devoe => ww_devoe,
	o => \RS_OUT[31]~output_o\);

\RT_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[0]~19_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[0]~output_o\);

\RT_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[1]~22_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[1]~output_o\);

\RT_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[2]~23_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[2]~output_o\);

\RT_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[3]~20_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[3]~output_o\);

\RT_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[4]~24_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[4]~output_o\);

\RT_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[5]~25_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[5]~output_o\);

\RT_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[6]~26_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[6]~output_o\);

\RT_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[7]~27_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[7]~output_o\);

\RT_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[8]~21_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[8]~output_o\);

\RT_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[9]~28_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[9]~output_o\);

\RT_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[10]~29_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[10]~output_o\);

\RT_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[11]~30_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[11]~output_o\);

\RT_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[12]~31_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[12]~output_o\);

\RT_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[13]~0_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[13]~output_o\);

\RT_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[14]~1_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[14]~output_o\);

\RT_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[15]~2_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[15]~output_o\);

\RT_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[16]~3_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[16]~output_o\);

\RT_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[17]~4_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[17]~output_o\);

\RT_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[18]~5_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[18]~output_o\);

\RT_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[19]~6_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[19]~output_o\);

\RT_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[20]~7_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[20]~output_o\);

\RT_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[21]~8_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[21]~output_o\);

\RT_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[22]~9_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[22]~output_o\);

\RT_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[23]~10_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[23]~output_o\);

\RT_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[24]~11_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[24]~output_o\);

\RT_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[25]~12_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[25]~output_o\);

\RT_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[26]~13_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[26]~output_o\);

\RT_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[27]~14_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[27]~output_o\);

\RT_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[28]~15_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[28]~output_o\);

\RT_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[29]~16_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[29]~output_o\);

\RT_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[30]~17_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[30]~output_o\);

\RT_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|saidaB[31]~18_combout\,
	devoe => ww_devoe,
	o => \RT_OUT[31]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => GND,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \PC|DOUT\(2))) ) ) ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~6_combout\);

\Registradores|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|Equal0~0_combout\ = (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & !\PC|DOUT\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(5),
	combout => \Registradores|Equal0~0_combout\);

\UC_ULA|decFUNCT|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC_ULA|decFUNCT|Equal3~0_combout\ = ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \UC_ULA|decFUNCT|Equal3~0_combout\);

\UC_ULA|decFUNCT|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC_ULA|decFUNCT|Equal4~0_combout\ = ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (\PC|DOUT\(2) & \PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \UC_ULA|decFUNCT|Equal4~0_combout\);

\sel_beq~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sel_beq~0_combout\ = ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (\PC|DOUT\(2) & \PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \sel_beq~0_combout\);

\UC_ULA|MUX|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC_ULA|MUX|saida_MUX[1]~0_combout\ = ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) ) ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(2) & \PC|DOUT\(3)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \UC_ULA|MUX|saida_MUX[1]~0_combout\);

\UC_ULA|MUX|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC_ULA|MUX|saida_MUX[1]~1_combout\ = ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(2) & \PC|DOUT\(3)))) ) ) ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \UC_ULA|MUX|saida_MUX[1]~1_combout\);

\UC_ULA|MUX|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC_ULA|MUX|saida_MUX[2]~2_combout\ = ( \UC_ULA|MUX|saida_MUX[1]~0_combout\ & ( !\UC_ULA|MUX|saida_MUX[1]~1_combout\ & ( ((!\UC_ULA|decFUNCT|Equal3~0_combout\ & !\UC_ULA|decFUNCT|Equal4~0_combout\)) # (\UC|Equal0~0_combout\) ) ) ) # ( 
-- !\UC_ULA|MUX|saida_MUX[1]~0_combout\ & ( !\UC_ULA|MUX|saida_MUX[1]~1_combout\ & ( (\sel_beq~0_combout\ & (((!\UC_ULA|decFUNCT|Equal3~0_combout\ & !\UC_ULA|decFUNCT|Equal4~0_combout\)) # (\UC|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011010101110101011101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal0~0_combout\,
	datab => \UC_ULA|decFUNCT|ALT_INV_Equal3~0_combout\,
	datac => \UC_ULA|decFUNCT|ALT_INV_Equal4~0_combout\,
	datad => \ALT_INV_sel_beq~0_combout\,
	datae => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~0_combout\,
	dataf => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \UC_ULA|MUX|saida_MUX[2]~2_combout\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & !\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~10_combout\);

\UC|mux_rt_ime~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|mux_rt_ime~0_combout\ = (\ROM1|memROM~11_combout\ & \ROM1|memROM~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \UC|mux_rt_ime~0_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & ((\PC|DOUT\(4)) # (\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000011100000000000001110000000000000111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~8_combout\);

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & (!\PC|DOUT\(3) $ (!\PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000011000000000000001100000000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~14_combout\);

\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = (!\PC|DOUT\(5) & (!\PC|DOUT\(7) & !\PC|DOUT\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~17_combout\);

\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (\PC|DOUT\(2) & \PC|DOUT\(3)))) ) ) ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~16_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( !\PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( (\PC|DOUT\(3) & (\PC|DOUT\(2) & (\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~7_combout\);

\UC|mux_rt_rd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|mux_rt_rd~0_combout\ = ( \ROM1|memROM~7_combout\ & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (\ROM1|memROM~11_combout\ & !\ROM1|memROM~10_combout\))) ) ) # ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~11_combout\) # (!\ROM1|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000000010000000000011111111111100000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \UC|mux_rt_rd~0_combout\);

\Registradores|registrador~1222\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1222_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~7_combout\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM1|memROM~11_combout\))) ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~7_combout\ & ( 
-- (\PC|DOUT\(2) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM1|memROM~11_combout\))) ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~7_combout\ & ( ((!\ROM1|memROM~11_combout\) # (\PC|DOUT\(6))) # (\PC|DOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \Registradores|registrador~1222_combout\);

\Registradores|registrador~1224\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1224_combout\ = ( \UC|mux_rt_rd~0_combout\ & ( \Registradores|registrador~1222_combout\ & ( (\ROM1|memROM~9_combout\ & !\ROM1|memROM~7_combout\) ) ) ) # ( !\UC|mux_rt_rd~0_combout\ & ( \Registradores|registrador~1222_combout\ & 
-- ( (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~9_combout\ & !\ROM1|memROM~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \UC|ALT_INV_mux_rt_rd~0_combout\,
	dataf => \Registradores|ALT_INV_registrador~1222_combout\,
	combout => \Registradores|registrador~1224_combout\);

\Registradores|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT31|muxResultado|saida_MUX~1_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~325_q\);

\Registradores|registrador~1256\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1256_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (!\Registradores|registrador~69_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~69_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1256_combout\);

\Registradores|registrador~1218\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1218_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1256_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1256_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1256_combout\ & ( (\Registradores|registrador~325_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~325_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1256_combout\,
	combout => \Registradores|registrador~1218_combout\);

\Registradores|saidaB[31]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[31]~18_combout\ = (\Registradores|registrador~1218_combout\ & \Registradores|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~1218_combout\,
	datab => \Registradores|ALT_INV_Equal0~0_combout\,
	combout => \Registradores|saidaB[31]~18_combout\);

\ULA1|BIT31|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT31|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\Registradores|saidaB[31]~18_combout\ $ (!\UC_ULA|MUX|saida_MUX[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_saidaB[31]~18_combout\,
	datab => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \UC|ALT_INV_mux_rt_ime~0_combout\,
	combout => \ULA1|BIT31|muxB|saida_MUX~0_combout\);

\ULA1|BIT31|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT31|somador|soma~0_combout\ = !\Registradores|saidaA[31]~31_combout\ $ (!\ULA1|BIT31|muxB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_saidaA[31]~31_combout\,
	datab => \ULA1|BIT31|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT31|somador|soma~0_combout\);

\UC_ULA|MUX|saida_MUX[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC_ULA|MUX|saida_MUX[0]~4_combout\ = ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(5) & (\PC|DOUT\(4) & (!\PC|DOUT\(3) & !\PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(6),
	datae => \PC|ALT_INV_DOUT\(7),
	combout => \UC_ULA|MUX|saida_MUX[0]~4_combout\);

\ULA1|BIT13|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ = (!\UC_ULA|decFUNCT|Equal4~0_combout\ & \UC_ULA|MUX|saida_MUX[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|decFUNCT|ALT_INV_Equal4~0_combout\,
	datab => \UC_ULA|MUX|ALT_INV_saida_MUX[0]~4_combout\,
	combout => \ULA1|BIT13|muxResultado|saida_MUX~0_combout\);

\ULA1|BIT31|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT31|muxResultado|saida_MUX~0_combout\ = (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((!\Registradores|saidaA[31]~31_combout\ & (\ULA1|BIT31|muxB|saida_MUX~0_combout\ & \ULA1|BIT13|muxResultado|saida_MUX~0_combout\)) # 
-- (\Registradores|saidaA[31]~31_combout\ & ((\ULA1|BIT13|muxResultado|saida_MUX~0_combout\) # (\ULA1|BIT31|muxB|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001110000000100000111000000010000011100000001000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_saidaA[31]~31_combout\,
	datab => \ULA1|BIT31|muxB|ALT_INV_saida_MUX~0_combout\,
	datac => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datad => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT31|muxResultado|saida_MUX~0_combout\);

\ULA1|BIT31|muxResultado|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT31|muxResultado|saida_MUX~1_combout\ = ((\ULA1|BIT1|muxResultado|saida_MUX~1_combout\ & (!\ULA1|BIT30|somador|carry_out~combout\ $ (\ULA1|BIT31|somador|soma~0_combout\)))) # (\ULA1|BIT31|muxResultado|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000111111111001000011111111100100001111111110010000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT30|somador|ALT_INV_carry_out~combout\,
	datab => \ULA1|BIT1|muxResultado|ALT_INV_saida_MUX~1_combout\,
	datac => \ULA1|BIT31|somador|ALT_INV_soma~0_combout\,
	datad => \ULA1|BIT31|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT31|muxResultado|saida_MUX~1_combout\);

\Registradores|registrador~1272\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1272_combout\ = !\ULA1|BIT31|muxResultado|saida_MUX~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT31|muxResultado|ALT_INV_saida_MUX~1_combout\,
	combout => \Registradores|registrador~1272_combout\);

\Registradores|registrador~1223\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1223_combout\ = ( \UC|mux_rt_rd~0_combout\ & ( \Registradores|registrador~1222_combout\ & ( (!\ROM1|memROM~9_combout\ & !\ROM1|memROM~7_combout\) ) ) ) # ( !\UC|mux_rt_rd~0_combout\ & ( \Registradores|registrador~1222_combout\ & 
-- ( (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~9_combout\ & !\ROM1|memROM~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \UC|ALT_INV_mux_rt_rd~0_combout\,
	dataf => \Registradores|ALT_INV_registrador~1222_combout\,
	combout => \Registradores|registrador~1223_combout\);

\Registradores|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Registradores|registrador~1272_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~69_q\);

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(5) & (!\PC|DOUT\(3) $ (!\PC|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000000000000000000000000000101000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~15_combout\);

\Registradores|registrador~1217\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1217_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~325_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~69_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~69_q\,
	datac => \Registradores|ALT_INV_registrador~325_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1217_combout\);

\Registradores|saidaA[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[31]~31_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1217_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1217_combout\,
	combout => \Registradores|saidaA[31]~31_combout\);

\ULA1|BIT0|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT0|muxResultado|saida_MUX~0_combout\ = (\UC_ULA|MUX|saida_MUX[0]~4_combout\ & (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT31|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[31]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000000011100000000000001110000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_saidaA[31]~31_combout\,
	datab => \ULA1|BIT31|muxB|ALT_INV_saida_MUX~0_combout\,
	datac => \UC_ULA|MUX|ALT_INV_saida_MUX[0]~4_combout\,
	datad => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	combout => \ULA1|BIT0|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT0|muxResultado|saida_MUX~1_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~294_q\);

\Registradores|registrador~1225\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1225_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (\Registradores|registrador~38_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~38_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1225_combout\);

\Registradores|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1063_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1225_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1225_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( \ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1225_combout\ & ( \ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1225_combout\ & ( (\Registradores|registrador~294_q\ & \ROM1|memROM~17_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~294_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1225_combout\,
	combout => \Registradores|registrador~1063_combout\);

\Registradores|saidaB[0]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[0]~19_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1063_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1063_combout\,
	combout => \Registradores|saidaB[0]~19_combout\);

\ULA1|BIT0|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT0|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[0]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaB[0]~19_combout\,
	combout => \ULA1|BIT0|muxB|saida_MUX~0_combout\);

\ULA1|BIT0|muxResultado|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT0|muxResultado|saida_MUX~2_combout\ = ( !\UC_ULA|MUX|saida_MUX[0]~4_combout\ & ( ((!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (\ULA1|BIT0|muxB|saida_MUX~0_combout\ & ((\Registradores|saidaA[0]~0_combout\)))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & 
-- (!\ULA1|BIT0|muxB|saida_MUX~0_combout\ $ (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (\Registradores|saidaA[0]~0_combout\))))) ) ) # ( \UC_ULA|MUX|saida_MUX[0]~4_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((((\Registradores|saidaA[0]~0_combout\)) # 
-- (\ULA1|BIT0|muxB|saida_MUX~0_combout\)))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (\Registradores|saidaA[31]~31_combout\ & (((\ULA1|BIT31|muxB|saida_MUX~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000110011001100111111111100111100110000110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_saidaA[31]~31_combout\,
	datab => \ULA1|BIT0|muxB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1|BIT31|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \Registradores|ALT_INV_saidaA[0]~0_combout\,
	datae => \UC_ULA|MUX|ALT_INV_saida_MUX[0]~4_combout\,
	dataf => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datag => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	combout => \ULA1|BIT0|muxResultado|saida_MUX~2_combout\);

\ULA1|BIT0|muxResultado|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT0|muxResultado|saida_MUX~1_combout\ = ((\ULA1|BIT30|somador|carry_out~combout\ & \ULA1|BIT0|muxResultado|saida_MUX~0_combout\)) # (\ULA1|BIT0|muxResultado|saida_MUX~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT30|somador|ALT_INV_carry_out~combout\,
	datab => \ULA1|BIT0|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1|BIT0|muxResultado|ALT_INV_saida_MUX~2_combout\,
	combout => \ULA1|BIT0|muxResultado|saida_MUX~1_combout\);

\Registradores|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT0|muxResultado|saida_MUX~1_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~38_q\);

\Registradores|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1062_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~294_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~38_q\,
	datac => \Registradores|ALT_INV_registrador~294_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1062_combout\);

\Registradores|saidaA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[0]~0_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1062_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1062_combout\,
	combout => \Registradores|saidaA[0]~0_combout\);

\ULA1|BIT0|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT0|somador|carry_out~combout\ = ( \Registradores|registrador~1063_combout\ & ( (!\UC|mux_rt_ime~0_combout\ & ((!\Registradores|Equal0~0_combout\ & (\UC_ULA|MUX|saida_MUX[2]~2_combout\)) # (\Registradores|Equal0~0_combout\ & 
-- ((\Registradores|saidaA[0]~0_combout\))))) # (\UC|mux_rt_ime~0_combout\ & (((\UC_ULA|MUX|saida_MUX[2]~2_combout\ & \Registradores|saidaA[0]~0_combout\)))) ) ) # ( !\Registradores|registrador~1063_combout\ & ( (\UC_ULA|MUX|saida_MUX[2]~2_combout\ & 
-- ((!\UC|mux_rt_ime~0_combout\) # (\Registradores|saidaA[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011001000000111001100110000001100110010000001110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datad => \Registradores|ALT_INV_saidaA[0]~0_combout\,
	datae => \Registradores|ALT_INV_registrador~1063_combout\,
	combout => \ULA1|BIT0|somador|carry_out~combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (!\PC|DOUT\(5) & ((!\PC|DOUT\(2) & (\PC|DOUT\(3) & !\PC|DOUT\(4))) # (\PC|DOUT\(2) & ((\PC|DOUT\(4))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100000000001001010000000000100101000000000010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~1_combout\);

\Registradores|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT1|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~295_q\);

\Registradores|registrador~1226\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1226_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (!\Registradores|registrador~39_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~39_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1226_combout\);

\Registradores|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1068_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1226_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1226_combout\ ) ) # ( \ROM1|memROM~9_combout\ 
-- & ( !\Registradores|registrador~1226_combout\ & ( \ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1226_combout\ & ( (\Registradores|registrador~295_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111111111111111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~295_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1226_combout\,
	combout => \Registradores|registrador~1068_combout\);

\ULA1|BIT1|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT1|muxB|saida_MUX~0_combout\ = ( \Registradores|registrador~1068_combout\ & ( (!\UC|mux_rt_ime~0_combout\ & ((!\Registradores|Equal0~0_combout\ $ (!\UC_ULA|MUX|saida_MUX[2]~2_combout\)))) # (\UC|mux_rt_ime~0_combout\ & (\ROM1|memROM~1_combout\)) ) 
-- ) # ( !\Registradores|registrador~1068_combout\ & ( (!\UC|mux_rt_ime~0_combout\ & ((\UC_ULA|MUX|saida_MUX[2]~2_combout\))) # (\UC|mux_rt_ime~0_combout\ & (\ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001111000101010100001111010101010011110001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \Registradores|ALT_INV_Equal0~0_combout\,
	datac => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datae => \Registradores|ALT_INV_registrador~1068_combout\,
	combout => \ULA1|BIT1|muxB|saida_MUX~0_combout\);

\ULA1|BIT1|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT1|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT1|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[1]~1_combout\))) ) ) # ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (((\Registradores|saidaA[1]~1_combout\ & \ULA1|BIT1|muxB|saida_MUX~0_combout\)))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\ULA1|BIT0|somador|carry_out~combout\ $ 
-- (!\Registradores|saidaA[1]~1_combout\ $ (\ULA1|BIT1|muxB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001001011000010101010101000010100010010110000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT0|somador|ALT_INV_carry_out~combout\,
	datac => \Registradores|ALT_INV_saidaA[1]~1_combout\,
	datad => \ULA1|BIT1|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT1|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~1257\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1257_combout\ = !\ULA1|BIT1|muxResultado|saida_MUX~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT1|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \Registradores|registrador~1257_combout\);

\Registradores|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Registradores|registrador~1257_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~39_q\);

\Registradores|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1067_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~295_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~39_q\,
	datac => \Registradores|ALT_INV_registrador~295_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1067_combout\);

\Registradores|saidaA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[1]~1_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1067_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1067_combout\,
	combout => \Registradores|saidaA[1]~1_combout\);

\ULA1|BIT1|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT1|somador|carry_out~combout\ = (!\ULA1|BIT0|somador|carry_out~combout\ & (\Registradores|saidaA[1]~1_combout\ & \ULA1|BIT1|muxB|saida_MUX~0_combout\)) # (\ULA1|BIT0|somador|carry_out~combout\ & ((\ULA1|BIT1|muxB|saida_MUX~0_combout\) # 
-- (\Registradores|saidaA[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT0|somador|ALT_INV_carry_out~combout\,
	datab => \Registradores|ALT_INV_saidaA[1]~1_combout\,
	datac => \ULA1|BIT1|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT1|somador|carry_out~combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\PC|DOUT\(5) & ((!\PC|DOUT\(2) & (!\PC|DOUT\(3) & \PC|DOUT\(4))) # (\PC|DOUT\(2) & (\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000000000110010000000000011001000000000001100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~3_combout\);

\Registradores|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT2|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~296_q\);

\Registradores|registrador~1227\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1227_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (\Registradores|registrador~40_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~40_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1227_combout\);

\Registradores|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1073_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1227_combout\ ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1227_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( 
-- !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1227_combout\ & ( (\Registradores|registrador~296_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~296_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1227_combout\,
	combout => \Registradores|registrador~1073_combout\);

\ULA1|BIT2|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT2|muxB|saida_MUX~0_combout\ = ( \Registradores|registrador~1073_combout\ & ( (!\UC|mux_rt_ime~0_combout\ & ((!\Registradores|Equal0~0_combout\ $ (!\UC_ULA|MUX|saida_MUX[2]~2_combout\)))) # (\UC|mux_rt_ime~0_combout\ & (\ROM1|memROM~3_combout\)) ) 
-- ) # ( !\Registradores|registrador~1073_combout\ & ( (!\UC|mux_rt_ime~0_combout\ & ((\UC_ULA|MUX|saida_MUX[2]~2_combout\))) # (\UC|mux_rt_ime~0_combout\ & (\ROM1|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001111000101010100001111010101010011110001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \Registradores|ALT_INV_Equal0~0_combout\,
	datac => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datae => \Registradores|ALT_INV_registrador~1073_combout\,
	combout => \ULA1|BIT2|muxB|saida_MUX~0_combout\);

\ULA1|BIT2|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT2|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT2|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[2]~2_combout\))) ) ) # ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (((\Registradores|saidaA[2]~2_combout\ & \ULA1|BIT2|muxB|saida_MUX~0_combout\)))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\ULA1|BIT1|somador|carry_out~combout\ $ 
-- (!\Registradores|saidaA[2]~2_combout\ $ (\ULA1|BIT2|muxB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001001011000010101010101000010100010010110000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT1|somador|ALT_INV_carry_out~combout\,
	datac => \Registradores|ALT_INV_saidaA[2]~2_combout\,
	datad => \ULA1|BIT2|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT2|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT2|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~40_q\);

\Registradores|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1072_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~296_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~40_q\,
	datac => \Registradores|ALT_INV_registrador~296_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1072_combout\);

\Registradores|saidaA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[2]~2_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1072_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1072_combout\,
	combout => \Registradores|saidaA[2]~2_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ((!\PC|DOUT\(4) & ((\PC|DOUT\(3)))) # (\PC|DOUT\(4) & (!\PC|DOUT\(2)))) # (\PC|DOUT\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101011111111001110101111111100111010111111110011101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~5_combout\);

\ULA1|BIT2|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT2|somador|carry_out~combout\ = (!\ULA1|BIT1|somador|carry_out~combout\ & (\Registradores|saidaA[2]~2_combout\ & \ULA1|BIT2|muxB|saida_MUX~0_combout\)) # (\ULA1|BIT1|somador|carry_out~combout\ & ((\ULA1|BIT2|muxB|saida_MUX~0_combout\) # 
-- (\Registradores|saidaA[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT1|somador|ALT_INV_carry_out~combout\,
	datab => \Registradores|ALT_INV_saidaA[2]~2_combout\,
	datac => \ULA1|BIT2|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT2|somador|carry_out~combout\);

\Registradores|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT3|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~297_q\);

\Registradores|registrador~1228\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1228_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (!\Registradores|registrador~41_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~41_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1228_combout\);

\Registradores|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1078_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1228_combout\ ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1228_combout\ ) ) # ( \ROM1|memROM~9_combout\ & ( 
-- !\Registradores|registrador~1228_combout\ & ( \ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1228_combout\ & ( (\Registradores|registrador~297_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~297_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1228_combout\,
	combout => \Registradores|registrador~1078_combout\);

\Registradores|saidaB[3]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[3]~20_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1078_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1078_combout\,
	combout => \Registradores|saidaB[3]~20_combout\);

\ULA1|BIT3|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT3|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & ((!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[3]~20_combout\)))) # (\UC|mux_rt_ime~0_combout\ & (!\ROM1|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101011001010001110101100101000111010110010100011101011001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datad => \Registradores|ALT_INV_saidaB[3]~20_combout\,
	combout => \ULA1|BIT3|muxB|saida_MUX~0_combout\);

\ULA1|BIT3|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT3|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT3|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[3]~3_combout\))) ) ) # ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (((\Registradores|saidaA[3]~3_combout\ & \ULA1|BIT3|muxB|saida_MUX~0_combout\)))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\ULA1|BIT2|somador|carry_out~combout\ $ 
-- (!\Registradores|saidaA[3]~3_combout\ $ (\ULA1|BIT3|muxB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001001011000010101010101000010100010010110000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT2|somador|ALT_INV_carry_out~combout\,
	datac => \Registradores|ALT_INV_saidaA[3]~3_combout\,
	datad => \ULA1|BIT3|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT3|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~1258\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1258_combout\ = !\ULA1|BIT3|muxResultado|saida_MUX~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT3|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \Registradores|registrador~1258_combout\);

\Registradores|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Registradores|registrador~1258_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~41_q\);

\Registradores|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1077_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~297_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~41_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~41_q\,
	datac => \Registradores|ALT_INV_registrador~297_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1077_combout\);

\Registradores|saidaA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[3]~3_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1077_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1077_combout\,
	combout => \Registradores|saidaA[3]~3_combout\);

\ULA1|BIT3|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT3|somador|soma~0_combout\ = ( \Registradores|saidaA[3]~3_combout\ & ( \Registradores|registrador~1078_combout\ & ( (!\UC|mux_rt_ime~0_combout\ & ((!\Registradores|Equal0~0_combout\ $ (\UC_ULA|MUX|saida_MUX[2]~2_combout\)))) # 
-- (\UC|mux_rt_ime~0_combout\ & (\ROM1|memROM~5_combout\)) ) ) ) # ( !\Registradores|saidaA[3]~3_combout\ & ( \Registradores|registrador~1078_combout\ & ( (!\UC|mux_rt_ime~0_combout\ & ((!\Registradores|Equal0~0_combout\ $ 
-- (!\UC_ULA|MUX|saida_MUX[2]~2_combout\)))) # (\UC|mux_rt_ime~0_combout\ & (!\ROM1|memROM~5_combout\)) ) ) ) # ( \Registradores|saidaA[3]~3_combout\ & ( !\Registradores|registrador~1078_combout\ & ( (!\UC|mux_rt_ime~0_combout\ & 
-- ((!\UC_ULA|MUX|saida_MUX[2]~2_combout\))) # (\UC|mux_rt_ime~0_combout\ & (\ROM1|memROM~5_combout\)) ) ) ) # ( !\Registradores|saidaA[3]~3_combout\ & ( !\Registradores|registrador~1078_combout\ & ( (!\UC|mux_rt_ime~0_combout\ & 
-- ((\UC_ULA|MUX|saida_MUX[2]~2_combout\))) # (\UC|mux_rt_ime~0_combout\ & (!\ROM1|memROM~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101010111100000101010100111100101010101100001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \Registradores|ALT_INV_Equal0~0_combout\,
	datac => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datae => \Registradores|ALT_INV_saidaA[3]~3_combout\,
	dataf => \Registradores|ALT_INV_registrador~1078_combout\,
	combout => \ULA1|BIT3|somador|soma~0_combout\);

\ULA1|BIT3|somador|carry_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT3|somador|carry_out~0_combout\ = ( \ULA1|BIT2|muxB|saida_MUX~0_combout\ & ( \ULA1|BIT3|somador|soma~0_combout\ & ( ((!\ULA1|BIT0|somador|carry_out~combout\ & (\Registradores|saidaA[1]~1_combout\ & \ULA1|BIT1|muxB|saida_MUX~0_combout\)) # 
-- (\ULA1|BIT0|somador|carry_out~combout\ & ((\ULA1|BIT1|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[1]~1_combout\)))) # (\Registradores|saidaA[2]~2_combout\) ) ) ) # ( !\ULA1|BIT2|muxB|saida_MUX~0_combout\ & ( \ULA1|BIT3|somador|soma~0_combout\ & ( 
-- (\Registradores|saidaA[2]~2_combout\ & ((!\ULA1|BIT0|somador|carry_out~combout\ & (\Registradores|saidaA[1]~1_combout\ & \ULA1|BIT1|muxB|saida_MUX~0_combout\)) # (\ULA1|BIT0|somador|carry_out~combout\ & ((\ULA1|BIT1|muxB|saida_MUX~0_combout\) # 
-- (\Registradores|saidaA[1]~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT0|somador|ALT_INV_carry_out~combout\,
	datab => \Registradores|ALT_INV_saidaA[1]~1_combout\,
	datac => \ULA1|BIT1|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \Registradores|ALT_INV_saidaA[2]~2_combout\,
	datae => \ULA1|BIT2|muxB|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA1|BIT3|somador|ALT_INV_soma~0_combout\,
	combout => \ULA1|BIT3|somador|carry_out~0_combout\);

\ULA1|BIT3|somador|carry_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT3|somador|carry_out~1_combout\ = ( \Registradores|saidaA[3]~3_combout\ & ( \Registradores|registrador~1078_combout\ & ( (!\UC|mux_rt_ime~0_combout\ & ((!\Registradores|Equal0~0_combout\ $ (!\UC_ULA|MUX|saida_MUX[2]~2_combout\)))) # 
-- (\UC|mux_rt_ime~0_combout\ & (!\ROM1|memROM~5_combout\)) ) ) ) # ( \Registradores|saidaA[3]~3_combout\ & ( !\Registradores|registrador~1078_combout\ & ( (!\UC|mux_rt_ime~0_combout\ & ((\UC_ULA|MUX|saida_MUX[2]~2_combout\))) # (\UC|mux_rt_ime~0_combout\ & 
-- (!\ROM1|memROM~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111010101000000000000000000011110010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \Registradores|ALT_INV_Equal0~0_combout\,
	datac => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datae => \Registradores|ALT_INV_saidaA[3]~3_combout\,
	dataf => \Registradores|ALT_INV_registrador~1078_combout\,
	combout => \ULA1|BIT3|somador|carry_out~1_combout\);

\ULA1|BIT3|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT3|somador|carry_out~combout\ = (!\ULA1|BIT3|somador|carry_out~0_combout\ & !\ULA1|BIT3|somador|carry_out~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT3|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA1|BIT3|somador|ALT_INV_carry_out~1_combout\,
	combout => \ULA1|BIT3|somador|carry_out~combout\);

\Registradores|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT4|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~298_q\);

\Registradores|registrador~1229\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1229_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (\Registradores|registrador~42_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~42_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1229_combout\);

\Registradores|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1083_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1229_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1229_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1229_combout\ & ( (\Registradores|registrador~298_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~298_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1229_combout\,
	combout => \Registradores|registrador~1083_combout\);

\ULA1|BIT4|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT4|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (((!\Registradores|Equal0~0_combout\) # (!\Registradores|registrador~1083_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001100000001100000110000000110000011000000011000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datad => \Registradores|ALT_INV_registrador~1083_combout\,
	combout => \ULA1|BIT4|muxB|saida_MUX~0_combout\);

\ULA1|BIT4|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT4|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT4|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[4]~4_combout\))) ) ) # ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (((\Registradores|saidaA[4]~4_combout\ & \ULA1|BIT4|muxB|saida_MUX~0_combout\)))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\ULA1|BIT3|somador|carry_out~combout\ $ 
-- (!\Registradores|saidaA[4]~4_combout\ $ (!\ULA1|BIT4|muxB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100011110000010101010101001000001000111100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT3|somador|ALT_INV_carry_out~combout\,
	datac => \Registradores|ALT_INV_saidaA[4]~4_combout\,
	datad => \ULA1|BIT4|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT4|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT4|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~42_q\);

\Registradores|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1082_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~298_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~42_q\,
	datac => \Registradores|ALT_INV_registrador~298_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1082_combout\);

\Registradores|saidaA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[4]~4_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1082_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1082_combout\,
	combout => \Registradores|saidaA[4]~4_combout\);

\ULA1|BIT4|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT4|somador|carry_out~combout\ = (!\ULA1|BIT3|somador|carry_out~combout\ & ((\ULA1|BIT4|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[4]~4_combout\))) # (\ULA1|BIT3|somador|carry_out~combout\ & (\Registradores|saidaA[4]~4_combout\ & 
-- \ULA1|BIT4|muxB|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT3|somador|ALT_INV_carry_out~combout\,
	datab => \Registradores|ALT_INV_saidaA[4]~4_combout\,
	datac => \ULA1|BIT4|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT4|somador|carry_out~combout\);

\Registradores|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT5|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~299_q\);

\Registradores|registrador~1230\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1230_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (!\Registradores|registrador~43_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~43_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1230_combout\);

\Registradores|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1088_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1230_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1230_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1230_combout\ & ( (\Registradores|registrador~299_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~299_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1230_combout\,
	combout => \Registradores|registrador~1088_combout\);

\ULA1|BIT5|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT5|muxB|saida_MUX~0_combout\ = ( \Registradores|registrador~1088_combout\ & ( (!\UC|mux_rt_ime~0_combout\ & ((!\Registradores|Equal0~0_combout\ $ (!\UC_ULA|MUX|saida_MUX[2]~2_combout\)))) # (\UC|mux_rt_ime~0_combout\ & (\ROM1|memROM~8_combout\)) ) 
-- ) # ( !\Registradores|registrador~1088_combout\ & ( (!\UC|mux_rt_ime~0_combout\ & ((\UC_ULA|MUX|saida_MUX[2]~2_combout\))) # (\UC|mux_rt_ime~0_combout\ & (\ROM1|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001111000101010100001111010101010011110001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \Registradores|ALT_INV_Equal0~0_combout\,
	datac => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datae => \Registradores|ALT_INV_registrador~1088_combout\,
	combout => \ULA1|BIT5|muxB|saida_MUX~0_combout\);

\ULA1|BIT5|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT5|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT5|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[5]~5_combout\))) ) ) # ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (((\Registradores|saidaA[5]~5_combout\ & \ULA1|BIT5|muxB|saida_MUX~0_combout\)))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\ULA1|BIT4|somador|carry_out~combout\ $ 
-- (!\Registradores|saidaA[5]~5_combout\ $ (\ULA1|BIT5|muxB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001001011000010101010101000010100010010110000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT4|somador|ALT_INV_carry_out~combout\,
	datac => \Registradores|ALT_INV_saidaA[5]~5_combout\,
	datad => \ULA1|BIT5|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT5|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~1259\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1259_combout\ = !\ULA1|BIT5|muxResultado|saida_MUX~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT5|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \Registradores|registrador~1259_combout\);

\Registradores|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Registradores|registrador~1259_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~43_q\);

\Registradores|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1087_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~299_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~43_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~43_q\,
	datac => \Registradores|ALT_INV_registrador~299_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1087_combout\);

\Registradores|saidaA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[5]~5_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1087_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1087_combout\,
	combout => \Registradores|saidaA[5]~5_combout\);

\ULA1|BIT5|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT5|somador|carry_out~combout\ = ( !\Registradores|saidaA[5]~5_combout\ & ( \ULA1|BIT5|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[4]~4_combout\ & ((!\ULA1|BIT4|muxB|saida_MUX~0_combout\) # ((!\ULA1|BIT3|somador|carry_out~0_combout\ & 
-- !\ULA1|BIT3|somador|carry_out~1_combout\)))) # (\Registradores|saidaA[4]~4_combout\ & (!\ULA1|BIT3|somador|carry_out~0_combout\ & (!\ULA1|BIT3|somador|carry_out~1_combout\ & !\ULA1|BIT4|muxB|saida_MUX~0_combout\))) ) ) ) # ( 
-- \Registradores|saidaA[5]~5_combout\ & ( !\ULA1|BIT5|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[4]~4_combout\ & ((!\ULA1|BIT4|muxB|saida_MUX~0_combout\) # ((!\ULA1|BIT3|somador|carry_out~0_combout\ & !\ULA1|BIT3|somador|carry_out~1_combout\)))) 
-- # (\Registradores|saidaA[4]~4_combout\ & (!\ULA1|BIT3|somador|carry_out~0_combout\ & (!\ULA1|BIT3|somador|carry_out~1_combout\ & !\ULA1|BIT4|muxB|saida_MUX~0_combout\))) ) ) ) # ( !\Registradores|saidaA[5]~5_combout\ & ( 
-- !\ULA1|BIT5|muxB|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT3|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA1|BIT3|somador|ALT_INV_carry_out~1_combout\,
	datac => \Registradores|ALT_INV_saidaA[4]~4_combout\,
	datad => \ULA1|BIT4|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \Registradores|ALT_INV_saidaA[5]~5_combout\,
	dataf => \ULA1|BIT5|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT5|somador|carry_out~combout\);

\Registradores|registrador~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT6|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~300_q\);

\Registradores|registrador~1231\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1231_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (\Registradores|registrador~44_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~44_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1231_combout\);

\Registradores|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1093_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1231_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1231_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1231_combout\ & ( (\Registradores|registrador~300_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~300_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1231_combout\,
	combout => \Registradores|registrador~1093_combout\);

\ULA1|BIT6|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT6|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (((!\Registradores|Equal0~0_combout\) # (!\Registradores|registrador~1093_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001100000001100000110000000110000011000000011000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datad => \Registradores|ALT_INV_registrador~1093_combout\,
	combout => \ULA1|BIT6|muxB|saida_MUX~0_combout\);

\ULA1|BIT6|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT6|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT6|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[6]~6_combout\))) ) ) # ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (((\Registradores|saidaA[6]~6_combout\ & \ULA1|BIT6|muxB|saida_MUX~0_combout\)))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\ULA1|BIT5|somador|carry_out~combout\ $ 
-- (!\Registradores|saidaA[6]~6_combout\ $ (!\ULA1|BIT6|muxB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100011110000010101010101001000001000111100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT5|somador|ALT_INV_carry_out~combout\,
	datac => \Registradores|ALT_INV_saidaA[6]~6_combout\,
	datad => \ULA1|BIT6|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT6|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT6|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~44_q\);

\Registradores|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1092_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~300_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~44_q\,
	datac => \Registradores|ALT_INV_registrador~300_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1092_combout\);

\Registradores|saidaA[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[6]~6_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1092_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1092_combout\,
	combout => \Registradores|saidaA[6]~6_combout\);

\ULA1|BIT6|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT6|somador|carry_out~combout\ = (!\ULA1|BIT5|somador|carry_out~combout\ & ((\ULA1|BIT6|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[6]~6_combout\))) # (\ULA1|BIT5|somador|carry_out~combout\ & (\Registradores|saidaA[6]~6_combout\ & 
-- \ULA1|BIT6|muxB|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT5|somador|ALT_INV_carry_out~combout\,
	datab => \Registradores|ALT_INV_saidaA[6]~6_combout\,
	datac => \ULA1|BIT6|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT6|somador|carry_out~combout\);

\Registradores|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT7|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~301_q\);

\Registradores|registrador~1232\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1232_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (!\Registradores|registrador~45_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~45_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1232_combout\);

\Registradores|registrador~1098\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1098_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1232_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1232_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1232_combout\ & ( (\Registradores|registrador~301_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~301_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1232_combout\,
	combout => \Registradores|registrador~1098_combout\);

\ULA1|BIT7|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT7|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (((!\Registradores|Equal0~0_combout\) # (!\Registradores|registrador~1098_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001100000001100000110000000110000011000000011000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datad => \Registradores|ALT_INV_registrador~1098_combout\,
	combout => \ULA1|BIT7|muxB|saida_MUX~0_combout\);

\ULA1|BIT7|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT7|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT7|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[7]~7_combout\))) ) ) # ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (((\Registradores|saidaA[7]~7_combout\ & \ULA1|BIT7|muxB|saida_MUX~0_combout\)))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\ULA1|BIT6|somador|carry_out~combout\ $ 
-- (!\Registradores|saidaA[7]~7_combout\ $ (\ULA1|BIT7|muxB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001001011000010101010101000010100010010110000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT6|somador|ALT_INV_carry_out~combout\,
	datac => \Registradores|ALT_INV_saidaA[7]~7_combout\,
	datad => \ULA1|BIT7|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT7|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~1260\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1260_combout\ = !\ULA1|BIT7|muxResultado|saida_MUX~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT7|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \Registradores|registrador~1260_combout\);

\Registradores|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Registradores|registrador~1260_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~45_q\);

\Registradores|registrador~1097\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1097_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~301_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~45_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~45_q\,
	datac => \Registradores|ALT_INV_registrador~301_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1097_combout\);

\Registradores|saidaA[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[7]~7_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1097_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1097_combout\,
	combout => \Registradores|saidaA[7]~7_combout\);

\ULA1|BIT7|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT7|somador|carry_out~combout\ = (!\ULA1|BIT6|somador|carry_out~combout\ & (\Registradores|saidaA[7]~7_combout\ & \ULA1|BIT7|muxB|saida_MUX~0_combout\)) # (\ULA1|BIT6|somador|carry_out~combout\ & ((\ULA1|BIT7|muxB|saida_MUX~0_combout\) # 
-- (\Registradores|saidaA[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT6|somador|ALT_INV_carry_out~combout\,
	datab => \Registradores|ALT_INV_saidaA[7]~7_combout\,
	datac => \ULA1|BIT7|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT7|somador|carry_out~combout\);

\Registradores|registrador~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT8|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~302_q\);

\Registradores|registrador~1233\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1233_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (\Registradores|registrador~46_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~46_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1233_combout\);

\Registradores|registrador~1103\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1103_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1233_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1233_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1233_combout\ & ( (\Registradores|registrador~302_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~302_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1233_combout\,
	combout => \Registradores|registrador~1103_combout\);

\Registradores|saidaB[8]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[8]~21_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1103_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1103_combout\,
	combout => \Registradores|saidaB[8]~21_combout\);

\ULA1|BIT8|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT8|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[8]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaB[8]~21_combout\,
	combout => \ULA1|BIT8|muxB|saida_MUX~0_combout\);

\ULA1|BIT8|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT8|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT8|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[8]~8_combout\))) ) ) # ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (((\Registradores|saidaA[8]~8_combout\ & \ULA1|BIT8|muxB|saida_MUX~0_combout\)))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\ULA1|BIT7|somador|carry_out~combout\ $ 
-- (!\Registradores|saidaA[8]~8_combout\ $ (\ULA1|BIT8|muxB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001001011000010101010101000010100010010110000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT7|somador|ALT_INV_carry_out~combout\,
	datac => \Registradores|ALT_INV_saidaA[8]~8_combout\,
	datad => \ULA1|BIT8|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT8|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT8|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~46_q\);

\Registradores|registrador~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1102_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~302_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~46_q\,
	datac => \Registradores|ALT_INV_registrador~302_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1102_combout\);

\Registradores|saidaA[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[8]~8_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1102_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1102_combout\,
	combout => \Registradores|saidaA[8]~8_combout\);

\ULA1|BIT8|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT8|somador|soma~0_combout\ = ( \Registradores|registrador~1103_combout\ & ( !\Registradores|saidaA[8]~8_combout\ $ (((!\Registradores|Equal0~0_combout\ $ (\UC_ULA|MUX|saida_MUX[2]~2_combout\)) # (\UC|mux_rt_ime~0_combout\))) ) ) # ( 
-- !\Registradores|registrador~1103_combout\ & ( !\Registradores|saidaA[8]~8_combout\ $ (((!\UC_ULA|MUX|saida_MUX[2]~2_combout\) # (\UC|mux_rt_ime~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011001111011000001001111100110000110011110110000010011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datad => \Registradores|ALT_INV_saidaA[8]~8_combout\,
	datae => \Registradores|ALT_INV_registrador~1103_combout\,
	combout => \ULA1|BIT8|somador|soma~0_combout\);

\ULA1|BIT8|somador|carry_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT8|somador|carry_out~0_combout\ = ( \ULA1|BIT7|muxB|saida_MUX~0_combout\ & ( \ULA1|BIT8|somador|soma~0_combout\ & ( ((!\ULA1|BIT5|somador|carry_out~combout\ & ((\ULA1|BIT6|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[6]~6_combout\))) # 
-- (\ULA1|BIT5|somador|carry_out~combout\ & (\Registradores|saidaA[6]~6_combout\ & \ULA1|BIT6|muxB|saida_MUX~0_combout\))) # (\Registradores|saidaA[7]~7_combout\) ) ) ) # ( !\ULA1|BIT7|muxB|saida_MUX~0_combout\ & ( \ULA1|BIT8|somador|soma~0_combout\ & ( 
-- (\Registradores|saidaA[7]~7_combout\ & ((!\ULA1|BIT5|somador|carry_out~combout\ & ((\ULA1|BIT6|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[6]~6_combout\))) # (\ULA1|BIT5|somador|carry_out~combout\ & (\Registradores|saidaA[6]~6_combout\ & 
-- \ULA1|BIT6|muxB|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT5|somador|ALT_INV_carry_out~combout\,
	datab => \Registradores|ALT_INV_saidaA[6]~6_combout\,
	datac => \ULA1|BIT6|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \Registradores|ALT_INV_saidaA[7]~7_combout\,
	datae => \ULA1|BIT7|muxB|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA1|BIT8|somador|ALT_INV_soma~0_combout\,
	combout => \ULA1|BIT8|somador|carry_out~0_combout\);

\ULA1|BIT8|somador|carry_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT8|somador|carry_out~1_combout\ = ( \Registradores|registrador~1103_combout\ & ( (!\UC|mux_rt_ime~0_combout\ & (\Registradores|saidaA[8]~8_combout\ & (!\Registradores|Equal0~0_combout\ $ (!\UC_ULA|MUX|saida_MUX[2]~2_combout\)))) ) ) # ( 
-- !\Registradores|registrador~1103_combout\ & ( (\UC_ULA|MUX|saida_MUX[2]~2_combout\ & (!\UC|mux_rt_ime~0_combout\ & \Registradores|saidaA[8]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000110000000000000001100000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datad => \Registradores|ALT_INV_saidaA[8]~8_combout\,
	datae => \Registradores|ALT_INV_registrador~1103_combout\,
	combout => \ULA1|BIT8|somador|carry_out~1_combout\);

\Registradores|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT9|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~303_q\);

\Registradores|registrador~1234\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1234_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (!\Registradores|registrador~47_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~47_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1234_combout\);

\Registradores|registrador~1108\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1108_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1234_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1234_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1234_combout\ & ( (\Registradores|registrador~303_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~303_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1234_combout\,
	combout => \Registradores|registrador~1108_combout\);

\ULA1|BIT9|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT9|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (((!\Registradores|Equal0~0_combout\) # (!\Registradores|registrador~1108_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001100000001100000110000000110000011000000011000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datad => \Registradores|ALT_INV_registrador~1108_combout\,
	combout => \ULA1|BIT9|muxB|saida_MUX~0_combout\);

\ULA1|BIT9|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT9|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT9|muxB|saida_MUX~0_combout\ & ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( !\UC_ULA|MUX|saida_MUX[1]~3_combout\ ) ) ) # ( !\ULA1|BIT9|muxB|saida_MUX~0_combout\ & ( 
-- \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & \Registradores|saidaA[9]~9_combout\) ) ) ) # ( \ULA1|BIT9|muxB|saida_MUX~0_combout\ & ( !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( 
-- !\Registradores|saidaA[9]~9_combout\ $ (((!\UC_ULA|MUX|saida_MUX[1]~3_combout\) # ((\ULA1|BIT8|somador|carry_out~1_combout\) # (\ULA1|BIT8|somador|carry_out~0_combout\)))) ) ) ) # ( !\ULA1|BIT9|muxB|saida_MUX~0_combout\ & ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\Registradores|saidaA[9]~9_combout\ $ (((!\ULA1|BIT8|somador|carry_out~0_combout\ & !\ULA1|BIT8|somador|carry_out~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000000010000001011111100000000101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT8|somador|ALT_INV_carry_out~0_combout\,
	datac => \ULA1|BIT8|somador|ALT_INV_carry_out~1_combout\,
	datad => \Registradores|ALT_INV_saidaA[9]~9_combout\,
	datae => \ULA1|BIT9|muxB|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT9|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~1261\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1261_combout\ = !\ULA1|BIT9|muxResultado|saida_MUX~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT9|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \Registradores|registrador~1261_combout\);

\Registradores|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Registradores|registrador~1261_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~47_q\);

\Registradores|registrador~1107\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1107_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~303_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~47_q\,
	datac => \Registradores|ALT_INV_registrador~303_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1107_combout\);

\Registradores|saidaA[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[9]~9_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1107_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1107_combout\,
	combout => \Registradores|saidaA[9]~9_combout\);

\ULA1|BIT9|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT9|somador|carry_out~combout\ = (!\Registradores|saidaA[9]~9_combout\ & ((!\ULA1|BIT9|muxB|saida_MUX~0_combout\) # ((!\ULA1|BIT8|somador|carry_out~0_combout\ & !\ULA1|BIT8|somador|carry_out~1_combout\)))) # (\Registradores|saidaA[9]~9_combout\ & 
-- (!\ULA1|BIT8|somador|carry_out~0_combout\ & (!\ULA1|BIT8|somador|carry_out~1_combout\ & !\ULA1|BIT9|muxB|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT8|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA1|BIT8|somador|ALT_INV_carry_out~1_combout\,
	datac => \Registradores|ALT_INV_saidaA[9]~9_combout\,
	datad => \ULA1|BIT9|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT9|somador|carry_out~combout\);

\Registradores|registrador~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT10|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~304_q\);

\Registradores|registrador~1235\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1235_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (\Registradores|registrador~48_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~48_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1235_combout\);

\Registradores|registrador~1113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1113_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1235_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1235_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1235_combout\ & ( (\Registradores|registrador~304_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~304_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1235_combout\,
	combout => \Registradores|registrador~1113_combout\);

\ULA1|BIT10|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT10|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (((!\Registradores|Equal0~0_combout\) # (!\Registradores|registrador~1113_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001100000001100000110000000110000011000000011000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datad => \Registradores|ALT_INV_registrador~1113_combout\,
	combout => \ULA1|BIT10|muxB|saida_MUX~0_combout\);

\ULA1|BIT10|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT10|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT10|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[10]~10_combout\))) ) ) # ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (((\Registradores|saidaA[10]~10_combout\ & \ULA1|BIT10|muxB|saida_MUX~0_combout\)))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & 
-- (!\ULA1|BIT9|somador|carry_out~combout\ $ (!\Registradores|saidaA[10]~10_combout\ $ (!\ULA1|BIT10|muxB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100011110000010101010101001000001000111100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT9|somador|ALT_INV_carry_out~combout\,
	datac => \Registradores|ALT_INV_saidaA[10]~10_combout\,
	datad => \ULA1|BIT10|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT10|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT10|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~48_q\);

\Registradores|registrador~1112\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1112_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~304_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~48_q\,
	datac => \Registradores|ALT_INV_registrador~304_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1112_combout\);

\Registradores|saidaA[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[10]~10_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1112_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1112_combout\,
	combout => \Registradores|saidaA[10]~10_combout\);

\ULA1|BIT10|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT10|somador|carry_out~combout\ = ( !\Registradores|saidaA[10]~10_combout\ & ( \ULA1|BIT10|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[9]~9_combout\ & ((!\ULA1|BIT9|muxB|saida_MUX~0_combout\) # ((!\ULA1|BIT8|somador|carry_out~0_combout\ & 
-- !\ULA1|BIT8|somador|carry_out~1_combout\)))) # (\Registradores|saidaA[9]~9_combout\ & (!\ULA1|BIT8|somador|carry_out~0_combout\ & (!\ULA1|BIT8|somador|carry_out~1_combout\ & !\ULA1|BIT9|muxB|saida_MUX~0_combout\))) ) ) ) # ( 
-- \Registradores|saidaA[10]~10_combout\ & ( !\ULA1|BIT10|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[9]~9_combout\ & ((!\ULA1|BIT9|muxB|saida_MUX~0_combout\) # ((!\ULA1|BIT8|somador|carry_out~0_combout\ & 
-- !\ULA1|BIT8|somador|carry_out~1_combout\)))) # (\Registradores|saidaA[9]~9_combout\ & (!\ULA1|BIT8|somador|carry_out~0_combout\ & (!\ULA1|BIT8|somador|carry_out~1_combout\ & !\ULA1|BIT9|muxB|saida_MUX~0_combout\))) ) ) ) # ( 
-- !\Registradores|saidaA[10]~10_combout\ & ( !\ULA1|BIT10|muxB|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT8|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA1|BIT8|somador|ALT_INV_carry_out~1_combout\,
	datac => \Registradores|ALT_INV_saidaA[9]~9_combout\,
	datad => \ULA1|BIT9|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \Registradores|ALT_INV_saidaA[10]~10_combout\,
	dataf => \ULA1|BIT10|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT10|somador|carry_out~combout\);

\Registradores|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT11|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~305_q\);

\Registradores|registrador~1236\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1236_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (!\Registradores|registrador~49_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~49_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1236_combout\);

\Registradores|registrador~1118\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1118_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1236_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1236_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1236_combout\ & ( (\Registradores|registrador~305_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~305_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1236_combout\,
	combout => \Registradores|registrador~1118_combout\);

\ULA1|BIT11|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT11|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (((!\Registradores|Equal0~0_combout\) # (!\Registradores|registrador~1118_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001100000001100000110000000110000011000000011000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datad => \Registradores|ALT_INV_registrador~1118_combout\,
	combout => \ULA1|BIT11|muxB|saida_MUX~0_combout\);

\ULA1|BIT11|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT11|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT11|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[11]~11_combout\))) ) ) # ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (((\Registradores|saidaA[11]~11_combout\ & \ULA1|BIT11|muxB|saida_MUX~0_combout\)))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & 
-- (!\ULA1|BIT10|somador|carry_out~combout\ $ (!\Registradores|saidaA[11]~11_combout\ $ (!\ULA1|BIT11|muxB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100011110000010101010101001000001000111100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT10|somador|ALT_INV_carry_out~combout\,
	datac => \Registradores|ALT_INV_saidaA[11]~11_combout\,
	datad => \ULA1|BIT11|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT11|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~1262\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1262_combout\ = !\ULA1|BIT11|muxResultado|saida_MUX~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT11|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \Registradores|registrador~1262_combout\);

\Registradores|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Registradores|registrador~1262_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~49_q\);

\Registradores|registrador~1117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1117_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~305_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~49_q\,
	datac => \Registradores|ALT_INV_registrador~305_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1117_combout\);

\Registradores|saidaA[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[11]~11_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1117_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1117_combout\,
	combout => \Registradores|saidaA[11]~11_combout\);

\ULA1|BIT11|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT11|somador|carry_out~combout\ = (!\ULA1|BIT10|somador|carry_out~combout\ & ((\ULA1|BIT11|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[11]~11_combout\))) # (\ULA1|BIT10|somador|carry_out~combout\ & (\Registradores|saidaA[11]~11_combout\ & 
-- \ULA1|BIT11|muxB|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT10|somador|ALT_INV_carry_out~combout\,
	datab => \Registradores|ALT_INV_saidaA[11]~11_combout\,
	datac => \ULA1|BIT11|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT11|somador|carry_out~combout\);

\Registradores|registrador~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT12|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~306_q\);

\Registradores|registrador~1237\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1237_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (\Registradores|registrador~50_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~50_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1237_combout\);

\Registradores|registrador~1123\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1123_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1237_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1237_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1237_combout\ & ( (\Registradores|registrador~306_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~306_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1237_combout\,
	combout => \Registradores|registrador~1123_combout\);

\ULA1|BIT12|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT12|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (((!\Registradores|Equal0~0_combout\) # (!\Registradores|registrador~1123_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001100000001100000110000000110000011000000011000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datad => \Registradores|ALT_INV_registrador~1123_combout\,
	combout => \ULA1|BIT12|muxB|saida_MUX~0_combout\);

\ULA1|BIT12|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT12|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT12|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[12]~12_combout\))) ) ) # ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (((\Registradores|saidaA[12]~12_combout\ & \ULA1|BIT12|muxB|saida_MUX~0_combout\)))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & 
-- (!\ULA1|BIT11|somador|carry_out~combout\ $ (!\Registradores|saidaA[12]~12_combout\ $ (\ULA1|BIT12|muxB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001001011000010101010101000010100010010110000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT11|somador|ALT_INV_carry_out~combout\,
	datac => \Registradores|ALT_INV_saidaA[12]~12_combout\,
	datad => \ULA1|BIT12|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT12|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT12|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~50_q\);

\Registradores|registrador~1122\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1122_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~306_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~50_q\,
	datac => \Registradores|ALT_INV_registrador~306_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1122_combout\);

\Registradores|saidaA[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[12]~12_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1122_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1122_combout\,
	combout => \Registradores|saidaA[12]~12_combout\);

\ULA1|BIT12|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT12|somador|carry_out~combout\ = ( \ULA1|BIT12|muxB|saida_MUX~0_combout\ & ( ((!\ULA1|BIT10|somador|carry_out~combout\ & ((\ULA1|BIT11|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[11]~11_combout\))) # (\ULA1|BIT10|somador|carry_out~combout\ 
-- & (\Registradores|saidaA[11]~11_combout\ & \ULA1|BIT11|muxB|saida_MUX~0_combout\))) # (\Registradores|saidaA[12]~12_combout\) ) ) # ( !\ULA1|BIT12|muxB|saida_MUX~0_combout\ & ( (\Registradores|saidaA[12]~12_combout\ & 
-- ((!\ULA1|BIT10|somador|carry_out~combout\ & ((\ULA1|BIT11|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[11]~11_combout\))) # (\ULA1|BIT10|somador|carry_out~combout\ & (\Registradores|saidaA[11]~11_combout\ & \ULA1|BIT11|muxB|saida_MUX~0_combout\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT10|somador|ALT_INV_carry_out~combout\,
	datab => \Registradores|ALT_INV_saidaA[11]~11_combout\,
	datac => \ULA1|BIT11|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \Registradores|ALT_INV_saidaA[12]~12_combout\,
	datae => \ULA1|BIT12|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT12|somador|carry_out~combout\);

\Registradores|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT13|muxResultado|saida_MUX~1_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~307_q\);

\Registradores|registrador~1238\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1238_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (!\Registradores|registrador~51_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~51_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1238_combout\);

\Registradores|registrador~1128\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1128_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1238_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1238_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1238_combout\ & ( (\Registradores|registrador~307_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~307_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1238_combout\,
	combout => \Registradores|registrador~1128_combout\);

\Registradores|saidaB[13]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[13]~0_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1128_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1128_combout\,
	combout => \Registradores|saidaB[13]~0_combout\);

\ULA1|BIT13|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT13|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[13]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaB[13]~0_combout\,
	combout => \ULA1|BIT13|muxB|saida_MUX~0_combout\);

\ULA1|BIT13|muxResultado|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT13|muxResultado|saida_MUX~1_combout\ = ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT13|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[13]~13_combout\))) ) ) # ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (((\Registradores|saidaA[13]~13_combout\ & \ULA1|BIT13|muxB|saida_MUX~0_combout\)))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & 
-- (!\ULA1|BIT12|somador|carry_out~combout\ $ (!\Registradores|saidaA[13]~13_combout\ $ (\ULA1|BIT13|muxB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001001011000010101010101000010100010010110000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT12|somador|ALT_INV_carry_out~combout\,
	datac => \Registradores|ALT_INV_saidaA[13]~13_combout\,
	datad => \ULA1|BIT13|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT13|muxResultado|saida_MUX~1_combout\);

\Registradores|registrador~1263\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1263_combout\ = !\ULA1|BIT13|muxResultado|saida_MUX~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~1_combout\,
	combout => \Registradores|registrador~1263_combout\);

\Registradores|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Registradores|registrador~1263_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~51_q\);

\Registradores|registrador~1127\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1127_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~307_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~51_q\,
	datac => \Registradores|ALT_INV_registrador~307_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1127_combout\);

\Registradores|saidaA[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[13]~13_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1127_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1127_combout\,
	combout => \Registradores|saidaA[13]~13_combout\);

\ULA1|BIT13|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT13|somador|soma~0_combout\ = ( \Registradores|registrador~1128_combout\ & ( !\Registradores|saidaA[13]~13_combout\ $ (((!\Registradores|Equal0~0_combout\ $ (\UC_ULA|MUX|saida_MUX[2]~2_combout\)) # (\UC|mux_rt_ime~0_combout\))) ) ) # ( 
-- !\Registradores|registrador~1128_combout\ & ( !\Registradores|saidaA[13]~13_combout\ $ (((!\UC_ULA|MUX|saida_MUX[2]~2_combout\) # (\UC|mux_rt_ime~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011001111011000001001111100110000110011110110000010011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datad => \Registradores|ALT_INV_saidaA[13]~13_combout\,
	datae => \Registradores|ALT_INV_registrador~1128_combout\,
	combout => \ULA1|BIT13|somador|soma~0_combout\);

\ULA1|BIT13|somador|carry_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT13|somador|carry_out~0_combout\ = ( \ULA1|BIT12|muxB|saida_MUX~0_combout\ & ( \ULA1|BIT13|somador|soma~0_combout\ & ( ((!\ULA1|BIT10|somador|carry_out~combout\ & ((\ULA1|BIT11|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[11]~11_combout\))) 
-- # (\ULA1|BIT10|somador|carry_out~combout\ & (\Registradores|saidaA[11]~11_combout\ & \ULA1|BIT11|muxB|saida_MUX~0_combout\))) # (\Registradores|saidaA[12]~12_combout\) ) ) ) # ( !\ULA1|BIT12|muxB|saida_MUX~0_combout\ & ( 
-- \ULA1|BIT13|somador|soma~0_combout\ & ( (\Registradores|saidaA[12]~12_combout\ & ((!\ULA1|BIT10|somador|carry_out~combout\ & ((\ULA1|BIT11|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[11]~11_combout\))) # (\ULA1|BIT10|somador|carry_out~combout\ & 
-- (\Registradores|saidaA[11]~11_combout\ & \ULA1|BIT11|muxB|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT10|somador|ALT_INV_carry_out~combout\,
	datab => \Registradores|ALT_INV_saidaA[11]~11_combout\,
	datac => \ULA1|BIT11|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \Registradores|ALT_INV_saidaA[12]~12_combout\,
	datae => \ULA1|BIT12|muxB|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA1|BIT13|somador|ALT_INV_soma~0_combout\,
	combout => \ULA1|BIT13|somador|carry_out~0_combout\);

\ULA1|BIT13|somador|carry_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT13|somador|carry_out~1_combout\ = (!\UC|mux_rt_ime~0_combout\ & (\Registradores|saidaA[13]~13_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[13]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000000001000000100000000100000010000000010000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaA[13]~13_combout\,
	datad => \Registradores|ALT_INV_saidaB[13]~0_combout\,
	combout => \ULA1|BIT13|somador|carry_out~1_combout\);

\Registradores|registrador~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT14|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~308_q\);

\Registradores|registrador~1239\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1239_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (\Registradores|registrador~52_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~52_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1239_combout\);

\Registradores|registrador~1133\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1133_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1239_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1239_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1239_combout\ & ( (\Registradores|registrador~308_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~308_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1239_combout\,
	combout => \Registradores|registrador~1133_combout\);

\Registradores|saidaB[14]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[14]~1_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1133_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1133_combout\,
	combout => \Registradores|saidaB[14]~1_combout\);

\ULA1|BIT14|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT14|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & ((!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[14]~1_combout\)))) # (\UC|mux_rt_ime~0_combout\ & (\ROM1|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010111000101001101011100010100110101110001010011010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datad => \Registradores|ALT_INV_saidaB[14]~1_combout\,
	combout => \ULA1|BIT14|muxB|saida_MUX~0_combout\);

\ULA1|BIT14|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT14|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT14|muxB|saida_MUX~0_combout\ & ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( !\UC_ULA|MUX|saida_MUX[1]~3_combout\ ) ) ) # ( !\ULA1|BIT14|muxB|saida_MUX~0_combout\ & ( 
-- \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & \Registradores|saidaA[14]~14_combout\) ) ) ) # ( \ULA1|BIT14|muxB|saida_MUX~0_combout\ & ( !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( 
-- !\Registradores|saidaA[14]~14_combout\ $ (((!\UC_ULA|MUX|saida_MUX[1]~3_combout\) # ((\ULA1|BIT13|somador|carry_out~1_combout\) # (\ULA1|BIT13|somador|carry_out~0_combout\)))) ) ) ) # ( !\ULA1|BIT14|muxB|saida_MUX~0_combout\ & ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\Registradores|saidaA[14]~14_combout\ $ (((!\ULA1|BIT13|somador|carry_out~0_combout\ & !\ULA1|BIT13|somador|carry_out~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000000010000001011111100000000101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT13|somador|ALT_INV_carry_out~0_combout\,
	datac => \ULA1|BIT13|somador|ALT_INV_carry_out~1_combout\,
	datad => \Registradores|ALT_INV_saidaA[14]~14_combout\,
	datae => \ULA1|BIT14|muxB|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT14|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT14|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~52_q\);

\Registradores|registrador~1132\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1132_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~308_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~52_q\,
	datac => \Registradores|ALT_INV_registrador~308_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1132_combout\);

\Registradores|saidaA[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[14]~14_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1132_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1132_combout\,
	combout => \Registradores|saidaA[14]~14_combout\);

\ULA1|BIT14|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT14|somador|carry_out~combout\ = (!\Registradores|saidaA[14]~14_combout\ & ((!\ULA1|BIT14|muxB|saida_MUX~0_combout\) # ((!\ULA1|BIT13|somador|carry_out~0_combout\ & !\ULA1|BIT13|somador|carry_out~1_combout\)))) # 
-- (\Registradores|saidaA[14]~14_combout\ & (!\ULA1|BIT13|somador|carry_out~0_combout\ & (!\ULA1|BIT13|somador|carry_out~1_combout\ & !\ULA1|BIT14|muxB|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT13|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA1|BIT13|somador|ALT_INV_carry_out~1_combout\,
	datac => \Registradores|ALT_INV_saidaA[14]~14_combout\,
	datad => \ULA1|BIT14|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT14|somador|carry_out~combout\);

\Registradores|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT15|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~309_q\);

\Registradores|registrador~1240\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1240_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (!\Registradores|registrador~53_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~53_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1240_combout\);

\Registradores|registrador~1138\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1138_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1240_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1240_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1240_combout\ & ( (\Registradores|registrador~309_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~309_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1240_combout\,
	combout => \Registradores|registrador~1138_combout\);

\Registradores|saidaB[15]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[15]~2_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1138_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1138_combout\,
	combout => \Registradores|saidaB[15]~2_combout\);

\ULA1|BIT15|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT15|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[15]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaB[15]~2_combout\,
	combout => \ULA1|BIT15|muxB|saida_MUX~0_combout\);

\ULA1|BIT15|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT15|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT15|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[15]~15_combout\))) ) ) # ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (((\Registradores|saidaA[15]~15_combout\ & \ULA1|BIT15|muxB|saida_MUX~0_combout\)))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & 
-- (!\ULA1|BIT14|somador|carry_out~combout\ $ (!\Registradores|saidaA[15]~15_combout\ $ (!\ULA1|BIT15|muxB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100011110000010101010101001000001000111100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT14|somador|ALT_INV_carry_out~combout\,
	datac => \Registradores|ALT_INV_saidaA[15]~15_combout\,
	datad => \ULA1|BIT15|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT15|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~1264\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1264_combout\ = !\ULA1|BIT15|muxResultado|saida_MUX~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT15|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \Registradores|registrador~1264_combout\);

\Registradores|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Registradores|registrador~1264_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~53_q\);

\Registradores|registrador~1137\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1137_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~309_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~53_q\,
	datac => \Registradores|ALT_INV_registrador~309_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1137_combout\);

\Registradores|saidaA[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[15]~15_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1137_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1137_combout\,
	combout => \Registradores|saidaA[15]~15_combout\);

\ULA1|BIT15|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT15|somador|carry_out~combout\ = ( !\Registradores|saidaA[15]~15_combout\ & ( \ULA1|BIT15|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[14]~14_combout\ & ((!\ULA1|BIT14|muxB|saida_MUX~0_combout\) # 
-- ((!\ULA1|BIT13|somador|carry_out~0_combout\ & !\ULA1|BIT13|somador|carry_out~1_combout\)))) # (\Registradores|saidaA[14]~14_combout\ & (!\ULA1|BIT13|somador|carry_out~0_combout\ & (!\ULA1|BIT13|somador|carry_out~1_combout\ & 
-- !\ULA1|BIT14|muxB|saida_MUX~0_combout\))) ) ) ) # ( \Registradores|saidaA[15]~15_combout\ & ( !\ULA1|BIT15|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[14]~14_combout\ & ((!\ULA1|BIT14|muxB|saida_MUX~0_combout\) # 
-- ((!\ULA1|BIT13|somador|carry_out~0_combout\ & !\ULA1|BIT13|somador|carry_out~1_combout\)))) # (\Registradores|saidaA[14]~14_combout\ & (!\ULA1|BIT13|somador|carry_out~0_combout\ & (!\ULA1|BIT13|somador|carry_out~1_combout\ & 
-- !\ULA1|BIT14|muxB|saida_MUX~0_combout\))) ) ) ) # ( !\Registradores|saidaA[15]~15_combout\ & ( !\ULA1|BIT15|muxB|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT13|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA1|BIT13|somador|ALT_INV_carry_out~1_combout\,
	datac => \Registradores|ALT_INV_saidaA[14]~14_combout\,
	datad => \ULA1|BIT14|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \Registradores|ALT_INV_saidaA[15]~15_combout\,
	dataf => \ULA1|BIT15|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT15|somador|carry_out~combout\);

\Registradores|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT16|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~310_q\);

\Registradores|registrador~1241\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1241_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (\Registradores|registrador~54_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~54_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1241_combout\);

\Registradores|registrador~1143\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1143_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1241_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1241_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1241_combout\ & ( (\Registradores|registrador~310_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~310_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1241_combout\,
	combout => \Registradores|registrador~1143_combout\);

\Registradores|saidaB[16]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[16]~3_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1143_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1143_combout\,
	combout => \Registradores|saidaB[16]~3_combout\);

\ULA1|BIT16|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT16|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[16]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaB[16]~3_combout\,
	combout => \ULA1|BIT16|muxB|saida_MUX~0_combout\);

\ULA1|BIT16|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT16|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT16|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[16]~16_combout\))) ) ) # ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (((\Registradores|saidaA[16]~16_combout\ & \ULA1|BIT16|muxB|saida_MUX~0_combout\)))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & 
-- (!\ULA1|BIT15|somador|carry_out~combout\ $ (!\Registradores|saidaA[16]~16_combout\ $ (!\ULA1|BIT16|muxB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100011110000010101010101001000001000111100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT15|somador|ALT_INV_carry_out~combout\,
	datac => \Registradores|ALT_INV_saidaA[16]~16_combout\,
	datad => \ULA1|BIT16|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT16|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT16|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~54_q\);

\Registradores|registrador~1142\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1142_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~310_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~54_q\,
	datac => \Registradores|ALT_INV_registrador~310_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1142_combout\);

\Registradores|saidaA[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[16]~16_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1142_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1142_combout\,
	combout => \Registradores|saidaA[16]~16_combout\);

\Registradores|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT17|muxResultado|saida_MUX~1_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~311_q\);

\Registradores|registrador~1242\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1242_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (!\Registradores|registrador~55_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~55_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1242_combout\);

\Registradores|registrador~1148\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1148_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1242_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1242_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1242_combout\ & ( (\Registradores|registrador~311_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~311_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1242_combout\,
	combout => \Registradores|registrador~1148_combout\);

\Registradores|saidaB[17]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[17]~4_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1148_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1148_combout\,
	combout => \Registradores|saidaB[17]~4_combout\);

\ULA1|BIT17|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT17|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[17]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaB[17]~4_combout\,
	combout => \ULA1|BIT17|muxB|saida_MUX~0_combout\);

\ULA1|BIT17|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT17|somador|soma~0_combout\ = !\Registradores|saidaA[17]~17_combout\ $ (!\ULA1|BIT17|muxB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_saidaA[17]~17_combout\,
	datab => \ULA1|BIT17|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT17|somador|soma~0_combout\);

\ULA1|BIT17|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT17|muxResultado|saida_MUX~0_combout\ = (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((!\Registradores|saidaA[17]~17_combout\ & (\ULA1|BIT17|muxB|saida_MUX~0_combout\ & \ULA1|BIT13|muxResultado|saida_MUX~0_combout\)) # 
-- (\Registradores|saidaA[17]~17_combout\ & ((\ULA1|BIT13|muxResultado|saida_MUX~0_combout\) # (\ULA1|BIT17|muxB|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000000010001010100000001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \Registradores|ALT_INV_saidaA[17]~17_combout\,
	datac => \ULA1|BIT17|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT17|muxResultado|saida_MUX~0_combout\);

\ULA1|BIT17|muxResultado|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT17|muxResultado|saida_MUX~1_combout\ = ( \ULA1|BIT1|muxResultado|saida_MUX~1_combout\ & ( \ULA1|BIT17|muxResultado|saida_MUX~0_combout\ ) ) # ( !\ULA1|BIT1|muxResultado|saida_MUX~1_combout\ & ( \ULA1|BIT17|muxResultado|saida_MUX~0_combout\ ) ) # 
-- ( \ULA1|BIT1|muxResultado|saida_MUX~1_combout\ & ( !\ULA1|BIT17|muxResultado|saida_MUX~0_combout\ & ( !\ULA1|BIT17|somador|soma~0_combout\ $ (((!\ULA1|BIT15|somador|carry_out~combout\ & (!\Registradores|saidaA[16]~16_combout\ & 
-- !\ULA1|BIT16|muxB|saida_MUX~0_combout\)) # (\ULA1|BIT15|somador|carry_out~combout\ & ((!\Registradores|saidaA[16]~16_combout\) # (!\ULA1|BIT16|muxB|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT15|somador|ALT_INV_carry_out~combout\,
	datab => \Registradores|ALT_INV_saidaA[16]~16_combout\,
	datac => \ULA1|BIT16|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA1|BIT17|somador|ALT_INV_soma~0_combout\,
	datae => \ULA1|BIT1|muxResultado|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA1|BIT17|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT17|muxResultado|saida_MUX~1_combout\);

\Registradores|registrador~1265\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1265_combout\ = !\ULA1|BIT17|muxResultado|saida_MUX~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT17|muxResultado|ALT_INV_saida_MUX~1_combout\,
	combout => \Registradores|registrador~1265_combout\);

\Registradores|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Registradores|registrador~1265_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~55_q\);

\Registradores|registrador~1147\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1147_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~311_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~55_q\,
	datac => \Registradores|ALT_INV_registrador~311_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1147_combout\);

\Registradores|saidaA[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[17]~17_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1147_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1147_combout\,
	combout => \Registradores|saidaA[17]~17_combout\);

\ULA1|BIT17|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT17|somador|carry_out~combout\ = ( \ULA1|BIT17|muxB|saida_MUX~0_combout\ & ( ((!\ULA1|BIT15|somador|carry_out~combout\ & ((\ULA1|BIT16|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[16]~16_combout\))) # (\ULA1|BIT15|somador|carry_out~combout\ 
-- & (\Registradores|saidaA[16]~16_combout\ & \ULA1|BIT16|muxB|saida_MUX~0_combout\))) # (\Registradores|saidaA[17]~17_combout\) ) ) # ( !\ULA1|BIT17|muxB|saida_MUX~0_combout\ & ( (\Registradores|saidaA[17]~17_combout\ & 
-- ((!\ULA1|BIT15|somador|carry_out~combout\ & ((\ULA1|BIT16|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[16]~16_combout\))) # (\ULA1|BIT15|somador|carry_out~combout\ & (\Registradores|saidaA[16]~16_combout\ & \ULA1|BIT16|muxB|saida_MUX~0_combout\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT15|somador|ALT_INV_carry_out~combout\,
	datab => \Registradores|ALT_INV_saidaA[16]~16_combout\,
	datac => \ULA1|BIT16|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \Registradores|ALT_INV_saidaA[17]~17_combout\,
	datae => \ULA1|BIT17|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT17|somador|carry_out~combout\);

\Registradores|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT18|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~312_q\);

\Registradores|registrador~1243\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1243_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (\Registradores|registrador~56_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~56_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1243_combout\);

\Registradores|registrador~1153\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1153_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1243_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1243_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1243_combout\ & ( (\Registradores|registrador~312_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~312_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1243_combout\,
	combout => \Registradores|registrador~1153_combout\);

\Registradores|saidaB[18]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[18]~5_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1153_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1153_combout\,
	combout => \Registradores|saidaB[18]~5_combout\);

\ULA1|BIT18|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT18|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[18]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaB[18]~5_combout\,
	combout => \ULA1|BIT18|muxB|saida_MUX~0_combout\);

\ULA1|BIT18|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT18|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT18|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[18]~18_combout\))) ) ) # ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (((\Registradores|saidaA[18]~18_combout\ & \ULA1|BIT18|muxB|saida_MUX~0_combout\)))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & 
-- (!\ULA1|BIT17|somador|carry_out~combout\ $ (!\Registradores|saidaA[18]~18_combout\ $ (\ULA1|BIT18|muxB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001001011000010101010101000010100010010110000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT17|somador|ALT_INV_carry_out~combout\,
	datac => \Registradores|ALT_INV_saidaA[18]~18_combout\,
	datad => \ULA1|BIT18|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT18|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT18|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~56_q\);

\Registradores|registrador~1152\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1152_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~312_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~56_q\,
	datac => \Registradores|ALT_INV_registrador~312_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1152_combout\);

\Registradores|saidaA[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[18]~18_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1152_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1152_combout\,
	combout => \Registradores|saidaA[18]~18_combout\);

\ULA1|BIT18|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT18|somador|soma~0_combout\ = !\Registradores|saidaA[18]~18_combout\ $ (!\ULA1|BIT18|muxB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_saidaA[18]~18_combout\,
	datab => \ULA1|BIT18|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT18|somador|soma~0_combout\);

\ULA1|BIT18|somador|carry_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT18|somador|carry_out~0_combout\ = ( \ULA1|BIT17|muxB|saida_MUX~0_combout\ & ( \ULA1|BIT18|somador|soma~0_combout\ & ( ((!\ULA1|BIT15|somador|carry_out~combout\ & ((\ULA1|BIT16|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[16]~16_combout\))) 
-- # (\ULA1|BIT15|somador|carry_out~combout\ & (\Registradores|saidaA[16]~16_combout\ & \ULA1|BIT16|muxB|saida_MUX~0_combout\))) # (\Registradores|saidaA[17]~17_combout\) ) ) ) # ( !\ULA1|BIT17|muxB|saida_MUX~0_combout\ & ( 
-- \ULA1|BIT18|somador|soma~0_combout\ & ( (\Registradores|saidaA[17]~17_combout\ & ((!\ULA1|BIT15|somador|carry_out~combout\ & ((\ULA1|BIT16|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[16]~16_combout\))) # (\ULA1|BIT15|somador|carry_out~combout\ & 
-- (\Registradores|saidaA[16]~16_combout\ & \ULA1|BIT16|muxB|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT15|somador|ALT_INV_carry_out~combout\,
	datab => \Registradores|ALT_INV_saidaA[16]~16_combout\,
	datac => \ULA1|BIT16|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \Registradores|ALT_INV_saidaA[17]~17_combout\,
	datae => \ULA1|BIT17|muxB|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA1|BIT18|somador|ALT_INV_soma~0_combout\,
	combout => \ULA1|BIT18|somador|carry_out~0_combout\);

\ULA1|BIT18|somador|carry_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT18|somador|carry_out~1_combout\ = (\Registradores|saidaA[18]~18_combout\ & \ULA1|BIT18|muxB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_saidaA[18]~18_combout\,
	datab => \ULA1|BIT18|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT18|somador|carry_out~1_combout\);

\Registradores|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT19|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~313_q\);

\Registradores|registrador~1244\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1244_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (!\Registradores|registrador~57_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~57_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1244_combout\);

\Registradores|registrador~1158\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1158_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1244_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1244_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1244_combout\ & ( (\Registradores|registrador~313_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~313_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1244_combout\,
	combout => \Registradores|registrador~1158_combout\);

\Registradores|saidaB[19]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[19]~6_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1158_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1158_combout\,
	combout => \Registradores|saidaB[19]~6_combout\);

\ULA1|BIT19|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT19|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[19]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaB[19]~6_combout\,
	combout => \ULA1|BIT19|muxB|saida_MUX~0_combout\);

\ULA1|BIT19|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT19|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT19|muxB|saida_MUX~0_combout\ & ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( !\UC_ULA|MUX|saida_MUX[1]~3_combout\ ) ) ) # ( !\ULA1|BIT19|muxB|saida_MUX~0_combout\ & ( 
-- \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & \Registradores|saidaA[19]~19_combout\) ) ) ) # ( \ULA1|BIT19|muxB|saida_MUX~0_combout\ & ( !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( 
-- !\Registradores|saidaA[19]~19_combout\ $ (((!\UC_ULA|MUX|saida_MUX[1]~3_combout\) # ((\ULA1|BIT18|somador|carry_out~1_combout\) # (\ULA1|BIT18|somador|carry_out~0_combout\)))) ) ) ) # ( !\ULA1|BIT19|muxB|saida_MUX~0_combout\ & ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\Registradores|saidaA[19]~19_combout\ $ (((!\ULA1|BIT18|somador|carry_out~0_combout\ & !\ULA1|BIT18|somador|carry_out~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000000010000001011111100000000101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT18|somador|ALT_INV_carry_out~0_combout\,
	datac => \ULA1|BIT18|somador|ALT_INV_carry_out~1_combout\,
	datad => \Registradores|ALT_INV_saidaA[19]~19_combout\,
	datae => \ULA1|BIT19|muxB|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT19|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~1266\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1266_combout\ = !\ULA1|BIT19|muxResultado|saida_MUX~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT19|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \Registradores|registrador~1266_combout\);

\Registradores|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Registradores|registrador~1266_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~57_q\);

\Registradores|registrador~1157\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1157_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~313_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~57_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~57_q\,
	datac => \Registradores|ALT_INV_registrador~313_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1157_combout\);

\Registradores|saidaA[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[19]~19_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1157_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1157_combout\,
	combout => \Registradores|saidaA[19]~19_combout\);

\Registradores|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT20|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~314_q\);

\Registradores|registrador~1245\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1245_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (\Registradores|registrador~58_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~58_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1245_combout\);

\Registradores|registrador~1163\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1163_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1245_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1245_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1245_combout\ & ( (\Registradores|registrador~314_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~314_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1245_combout\,
	combout => \Registradores|registrador~1163_combout\);

\Registradores|saidaB[20]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[20]~7_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1163_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1163_combout\,
	combout => \Registradores|saidaB[20]~7_combout\);

\ULA1|BIT20|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT20|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[20]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaB[20]~7_combout\,
	combout => \ULA1|BIT20|muxB|saida_MUX~0_combout\);

\ULA1|BIT20|muxResultado|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT20|muxResultado|saida_MUX~1_combout\ = ( \Registradores|saidaA[19]~19_combout\ & ( \ULA1|BIT19|muxB|saida_MUX~0_combout\ & ( (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ((!\Registradores|saidaA[20]~20_combout\ & 
-- (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & !\ULA1|BIT20|muxB|saida_MUX~0_combout\)) # (\Registradores|saidaA[20]~20_combout\ & ((\ULA1|BIT20|muxB|saida_MUX~0_combout\))))) # (\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & 
-- (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT20|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[20]~20_combout\)))) ) ) ) # ( !\Registradores|saidaA[19]~19_combout\ & ( \ULA1|BIT19|muxB|saida_MUX~0_combout\ & ( 
-- (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ((!\Registradores|saidaA[20]~20_combout\ & (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & !\ULA1|BIT20|muxB|saida_MUX~0_combout\)) # (\Registradores|saidaA[20]~20_combout\ & 
-- ((\ULA1|BIT20|muxB|saida_MUX~0_combout\))))) # (\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT20|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[20]~20_combout\)))) ) ) ) # ( 
-- \Registradores|saidaA[19]~19_combout\ & ( !\ULA1|BIT19|muxB|saida_MUX~0_combout\ & ( (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ((!\Registradores|saidaA[20]~20_combout\ & (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & 
-- !\ULA1|BIT20|muxB|saida_MUX~0_combout\)) # (\Registradores|saidaA[20]~20_combout\ & ((\ULA1|BIT20|muxB|saida_MUX~0_combout\))))) # (\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & 
-- ((\ULA1|BIT20|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[20]~20_combout\)))) ) ) ) # ( !\Registradores|saidaA[19]~19_combout\ & ( !\ULA1|BIT19|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[20]~20_combout\ & 
-- (\ULA1|BIT20|muxB|saida_MUX~0_combout\ & (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ $ (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\)))) # (\Registradores|saidaA[20]~20_combout\ & (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ $ 
-- (((!\ULA1|BIT20|muxB|saida_MUX~0_combout\ & !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011000101010010000110010101001000011001010100100001100101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \Registradores|ALT_INV_saidaA[20]~20_combout\,
	datac => \ULA1|BIT20|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datae => \Registradores|ALT_INV_saidaA[19]~19_combout\,
	dataf => \ULA1|BIT19|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT20|muxResultado|saida_MUX~1_combout\);

\ULA1|BIT20|muxResultado|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT20|muxResultado|saida_MUX~2_combout\ = !\Registradores|saidaA[19]~19_combout\ $ (\ULA1|BIT19|muxB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_saidaA[19]~19_combout\,
	datab => \ULA1|BIT19|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT20|muxResultado|saida_MUX~2_combout\);

\ULA1|BIT20|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT20|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT20|muxResultado|saida_MUX~1_combout\ & ( \ULA1|BIT20|muxResultado|saida_MUX~2_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\) # (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\) ) ) ) # ( 
-- \ULA1|BIT20|muxResultado|saida_MUX~1_combout\ & ( !\ULA1|BIT20|muxResultado|saida_MUX~2_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\) # ((!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ((\ULA1|BIT18|somador|carry_out~1_combout\) # 
-- (\ULA1|BIT18|somador|carry_out~0_combout\)))) ) ) ) # ( !\ULA1|BIT20|muxResultado|saida_MUX~1_combout\ & ( !\ULA1|BIT20|muxResultado|saida_MUX~2_combout\ & ( (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & 
-- (!\ULA1|BIT18|somador|carry_out~0_combout\ & !\ULA1|BIT18|somador|carry_out~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000101011101110111000000000000000001110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1|BIT18|somador|ALT_INV_carry_out~0_combout\,
	datad => \ULA1|BIT18|somador|ALT_INV_carry_out~1_combout\,
	datae => \ULA1|BIT20|muxResultado|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA1|BIT20|muxResultado|ALT_INV_saida_MUX~2_combout\,
	combout => \ULA1|BIT20|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT20|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~58_q\);

\Registradores|registrador~1162\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1162_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~314_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~58_q\,
	datac => \Registradores|ALT_INV_registrador~314_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1162_combout\);

\Registradores|saidaA[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[20]~20_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1162_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1162_combout\,
	combout => \Registradores|saidaA[20]~20_combout\);

\ULA1|BIT20|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT20|somador|carry_out~combout\ = ( !\Registradores|saidaA[20]~20_combout\ & ( \ULA1|BIT20|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[19]~19_combout\ & ((!\ULA1|BIT19|muxB|saida_MUX~0_combout\) # 
-- ((!\ULA1|BIT18|somador|carry_out~0_combout\ & !\ULA1|BIT18|somador|carry_out~1_combout\)))) # (\Registradores|saidaA[19]~19_combout\ & (!\ULA1|BIT18|somador|carry_out~0_combout\ & (!\ULA1|BIT18|somador|carry_out~1_combout\ & 
-- !\ULA1|BIT19|muxB|saida_MUX~0_combout\))) ) ) ) # ( \Registradores|saidaA[20]~20_combout\ & ( !\ULA1|BIT20|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[19]~19_combout\ & ((!\ULA1|BIT19|muxB|saida_MUX~0_combout\) # 
-- ((!\ULA1|BIT18|somador|carry_out~0_combout\ & !\ULA1|BIT18|somador|carry_out~1_combout\)))) # (\Registradores|saidaA[19]~19_combout\ & (!\ULA1|BIT18|somador|carry_out~0_combout\ & (!\ULA1|BIT18|somador|carry_out~1_combout\ & 
-- !\ULA1|BIT19|muxB|saida_MUX~0_combout\))) ) ) ) # ( !\Registradores|saidaA[20]~20_combout\ & ( !\ULA1|BIT20|muxB|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT18|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA1|BIT18|somador|ALT_INV_carry_out~1_combout\,
	datac => \Registradores|ALT_INV_saidaA[19]~19_combout\,
	datad => \ULA1|BIT19|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \Registradores|ALT_INV_saidaA[20]~20_combout\,
	dataf => \ULA1|BIT20|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT20|somador|carry_out~combout\);

\Registradores|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT21|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~315_q\);

\Registradores|registrador~1246\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1246_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (!\Registradores|registrador~59_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~59_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1246_combout\);

\Registradores|registrador~1168\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1168_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1246_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1246_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1246_combout\ & ( (\Registradores|registrador~315_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~315_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1246_combout\,
	combout => \Registradores|registrador~1168_combout\);

\Registradores|saidaB[21]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[21]~8_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1168_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1168_combout\,
	combout => \Registradores|saidaB[21]~8_combout\);

\ULA1|BIT21|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT21|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[21]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaB[21]~8_combout\,
	combout => \ULA1|BIT21|muxB|saida_MUX~0_combout\);

\ULA1|BIT21|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT21|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT21|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[21]~21_combout\))) ) ) # ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (((\Registradores|saidaA[21]~21_combout\ & \ULA1|BIT21|muxB|saida_MUX~0_combout\)))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & 
-- (!\ULA1|BIT20|somador|carry_out~combout\ $ (!\Registradores|saidaA[21]~21_combout\ $ (!\ULA1|BIT21|muxB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100011110000010101010101001000001000111100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT20|somador|ALT_INV_carry_out~combout\,
	datac => \Registradores|ALT_INV_saidaA[21]~21_combout\,
	datad => \ULA1|BIT21|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT21|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~1267\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1267_combout\ = !\ULA1|BIT21|muxResultado|saida_MUX~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT21|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \Registradores|registrador~1267_combout\);

\Registradores|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Registradores|registrador~1267_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~59_q\);

\Registradores|registrador~1167\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1167_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~315_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~59_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~59_q\,
	datac => \Registradores|ALT_INV_registrador~315_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1167_combout\);

\Registradores|saidaA[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[21]~21_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1167_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1167_combout\,
	combout => \Registradores|saidaA[21]~21_combout\);

\Registradores|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT22|muxResultado|saida_MUX~1_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~316_q\);

\Registradores|registrador~1247\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1247_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (\Registradores|registrador~60_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~60_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1247_combout\);

\Registradores|registrador~1173\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1173_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1247_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1247_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1247_combout\ & ( (\Registradores|registrador~316_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~316_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1247_combout\,
	combout => \Registradores|registrador~1173_combout\);

\Registradores|saidaB[22]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[22]~9_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1173_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1173_combout\,
	combout => \Registradores|saidaB[22]~9_combout\);

\ULA1|BIT22|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT22|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[22]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaB[22]~9_combout\,
	combout => \ULA1|BIT22|muxB|saida_MUX~0_combout\);

\ULA1|BIT22|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT22|somador|soma~0_combout\ = !\Registradores|saidaA[22]~22_combout\ $ (!\ULA1|BIT22|muxB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_saidaA[22]~22_combout\,
	datab => \ULA1|BIT22|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT22|somador|soma~0_combout\);

\ULA1|BIT22|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT22|muxResultado|saida_MUX~0_combout\ = (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((!\Registradores|saidaA[22]~22_combout\ & (\ULA1|BIT22|muxB|saida_MUX~0_combout\ & \ULA1|BIT13|muxResultado|saida_MUX~0_combout\)) # 
-- (\Registradores|saidaA[22]~22_combout\ & ((\ULA1|BIT13|muxResultado|saida_MUX~0_combout\) # (\ULA1|BIT22|muxB|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000000010001010100000001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \Registradores|ALT_INV_saidaA[22]~22_combout\,
	datac => \ULA1|BIT22|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT22|muxResultado|saida_MUX~0_combout\);

\ULA1|BIT22|muxResultado|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT22|muxResultado|saida_MUX~1_combout\ = ( \ULA1|BIT1|muxResultado|saida_MUX~1_combout\ & ( \ULA1|BIT22|muxResultado|saida_MUX~0_combout\ ) ) # ( !\ULA1|BIT1|muxResultado|saida_MUX~1_combout\ & ( \ULA1|BIT22|muxResultado|saida_MUX~0_combout\ ) ) # 
-- ( \ULA1|BIT1|muxResultado|saida_MUX~1_combout\ & ( !\ULA1|BIT22|muxResultado|saida_MUX~0_combout\ & ( !\ULA1|BIT22|somador|soma~0_combout\ $ (((!\ULA1|BIT20|somador|carry_out~combout\ & (!\Registradores|saidaA[21]~21_combout\ & 
-- !\ULA1|BIT21|muxB|saida_MUX~0_combout\)) # (\ULA1|BIT20|somador|carry_out~combout\ & ((!\Registradores|saidaA[21]~21_combout\) # (!\ULA1|BIT21|muxB|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT20|somador|ALT_INV_carry_out~combout\,
	datab => \Registradores|ALT_INV_saidaA[21]~21_combout\,
	datac => \ULA1|BIT21|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA1|BIT22|somador|ALT_INV_soma~0_combout\,
	datae => \ULA1|BIT1|muxResultado|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA1|BIT22|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT22|muxResultado|saida_MUX~1_combout\);

\Registradores|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT22|muxResultado|saida_MUX~1_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~60_q\);

\Registradores|registrador~1172\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1172_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~316_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~60_q\,
	datac => \Registradores|ALT_INV_registrador~316_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1172_combout\);

\Registradores|saidaA[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[22]~22_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1172_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1172_combout\,
	combout => \Registradores|saidaA[22]~22_combout\);

\Registradores|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT23|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~317_q\);

\Registradores|registrador~1248\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1248_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (!\Registradores|registrador~61_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~61_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1248_combout\);

\Registradores|registrador~1178\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1178_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1248_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1248_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1248_combout\ & ( (\Registradores|registrador~317_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~317_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1248_combout\,
	combout => \Registradores|registrador~1178_combout\);

\Registradores|saidaB[23]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[23]~10_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1178_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1178_combout\,
	combout => \Registradores|saidaB[23]~10_combout\);

\ULA1|BIT23|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT23|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[23]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaB[23]~10_combout\,
	combout => \ULA1|BIT23|muxB|saida_MUX~0_combout\);

\ULA1|BIT23|muxResultado|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT23|muxResultado|saida_MUX~1_combout\ = ( \Registradores|saidaA[22]~22_combout\ & ( \ULA1|BIT22|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[23]~23_combout\ & (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & !\ULA1|BIT23|muxB|saida_MUX~0_combout\)) 
-- # (\Registradores|saidaA[23]~23_combout\ & ((\ULA1|BIT23|muxB|saida_MUX~0_combout\))) ) ) ) # ( !\Registradores|saidaA[22]~22_combout\ & ( \ULA1|BIT22|muxB|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & 
-- (\Registradores|saidaA[23]~23_combout\ & (\ULA1|BIT23|muxB|saida_MUX~0_combout\))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\Registradores|saidaA[23]~23_combout\ $ (!\ULA1|BIT23|muxB|saida_MUX~0_combout\ $ (\ULA1|BIT21|muxB|saida_MUX~0_combout\)))) ) ) 
-- ) # ( \Registradores|saidaA[22]~22_combout\ & ( !\ULA1|BIT22|muxB|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (\Registradores|saidaA[23]~23_combout\ & (\ULA1|BIT23|muxB|saida_MUX~0_combout\))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & 
-- (!\Registradores|saidaA[23]~23_combout\ $ (!\ULA1|BIT23|muxB|saida_MUX~0_combout\ $ (\ULA1|BIT21|muxB|saida_MUX~0_combout\)))) ) ) ) # ( !\Registradores|saidaA[22]~22_combout\ & ( !\ULA1|BIT22|muxB|saida_MUX~0_combout\ & ( 
-- (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (\Registradores|saidaA[23]~23_combout\ & \ULA1|BIT23|muxB|saida_MUX~0_combout\)) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\Registradores|saidaA[23]~23_combout\ $ (!\ULA1|BIT23|muxB|saida_MUX~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011000010110000101100100001100010110010000110100001101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \Registradores|ALT_INV_saidaA[23]~23_combout\,
	datac => \ULA1|BIT23|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA1|BIT21|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \Registradores|ALT_INV_saidaA[22]~22_combout\,
	dataf => \ULA1|BIT22|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT23|muxResultado|saida_MUX~1_combout\);

\ULA1|BIT23|muxResultado|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT23|muxResultado|saida_MUX~2_combout\ = ( \Registradores|saidaA[22]~22_combout\ & ( \ULA1|BIT22|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[23]~23_combout\ & (!\ULA1|BIT23|muxB|saida_MUX~0_combout\ $ 
-- (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\))) # (\Registradores|saidaA[23]~23_combout\ & (!\ULA1|BIT23|muxB|saida_MUX~0_combout\ & !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\)) ) ) ) # ( !\Registradores|saidaA[22]~22_combout\ & ( 
-- \ULA1|BIT22|muxB|saida_MUX~0_combout\ & ( (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & (!\Registradores|saidaA[23]~23_combout\ $ (!\ULA1|BIT23|muxB|saida_MUX~0_combout\ $ (!\Registradores|saidaA[21]~21_combout\)))) # 
-- (\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & (!\Registradores|saidaA[23]~23_combout\ & (!\ULA1|BIT23|muxB|saida_MUX~0_combout\))) ) ) ) # ( \Registradores|saidaA[22]~22_combout\ & ( !\ULA1|BIT22|muxB|saida_MUX~0_combout\ & ( 
-- (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & (!\Registradores|saidaA[23]~23_combout\ $ (!\ULA1|BIT23|muxB|saida_MUX~0_combout\ $ (!\Registradores|saidaA[21]~21_combout\)))) # (\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & 
-- (!\Registradores|saidaA[23]~23_combout\ & (!\ULA1|BIT23|muxB|saida_MUX~0_combout\))) ) ) ) # ( !\Registradores|saidaA[22]~22_combout\ & ( !\ULA1|BIT22|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[23]~23_combout\ & 
-- (!\ULA1|BIT23|muxB|saida_MUX~0_combout\)) # (\Registradores|saidaA[23]~23_combout\ & (\ULA1|BIT23|muxB|saida_MUX~0_combout\ & !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100010011000100110000110100010011000011010000110100001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_saidaA[23]~23_combout\,
	datab => \ULA1|BIT23|muxB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datad => \Registradores|ALT_INV_saidaA[21]~21_combout\,
	datae => \Registradores|ALT_INV_saidaA[22]~22_combout\,
	dataf => \ULA1|BIT22|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT23|muxResultado|saida_MUX~2_combout\);

\ULA1|BIT23|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT23|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT23|muxResultado|saida_MUX~1_combout\ & ( \ULA1|BIT23|muxResultado|saida_MUX~2_combout\ & ( (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ((!\UC_ULA|MUX|saida_MUX[1]~3_combout\) # 
-- (!\ULA1|BIT20|somador|carry_out~combout\ $ (\Registradores|saidaA[21]~21_combout\)))) ) ) ) # ( \ULA1|BIT23|muxResultado|saida_MUX~1_combout\ & ( !\ULA1|BIT23|muxResultado|saida_MUX~2_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\) # 
-- (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\) ) ) ) # ( !\ULA1|BIT23|muxResultado|saida_MUX~1_combout\ & ( !\ULA1|BIT23|muxResultado|saida_MUX~2_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (\ULA1|BIT13|muxResultado|saida_MUX~0_combout\)) # 
-- (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & (!\ULA1|BIT20|somador|carry_out~combout\ $ (!\Registradores|saidaA[21]~21_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011001100010111011101110111000000000000000001100100010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1|BIT20|somador|ALT_INV_carry_out~combout\,
	datad => \Registradores|ALT_INV_saidaA[21]~21_combout\,
	datae => \ULA1|BIT23|muxResultado|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA1|BIT23|muxResultado|ALT_INV_saida_MUX~2_combout\,
	combout => \ULA1|BIT23|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~1268\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1268_combout\ = !\ULA1|BIT23|muxResultado|saida_MUX~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT23|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \Registradores|registrador~1268_combout\);

\Registradores|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Registradores|registrador~1268_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~61_q\);

\Registradores|registrador~1177\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1177_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~317_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~61_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~61_q\,
	datac => \Registradores|ALT_INV_registrador~317_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1177_combout\);

\Registradores|saidaA[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[23]~23_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1177_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1177_combout\,
	combout => \Registradores|saidaA[23]~23_combout\);

\ULA1|BIT23|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT23|somador|soma~0_combout\ = !\Registradores|saidaA[23]~23_combout\ $ (!\ULA1|BIT23|muxB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_saidaA[23]~23_combout\,
	datab => \ULA1|BIT23|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT23|somador|soma~0_combout\);

\ULA1|BIT23|somador|carry_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT23|somador|carry_out~0_combout\ = ( \ULA1|BIT22|muxB|saida_MUX~0_combout\ & ( \ULA1|BIT23|somador|soma~0_combout\ & ( ((!\ULA1|BIT20|somador|carry_out~combout\ & ((\ULA1|BIT21|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[21]~21_combout\))) 
-- # (\ULA1|BIT20|somador|carry_out~combout\ & (\Registradores|saidaA[21]~21_combout\ & \ULA1|BIT21|muxB|saida_MUX~0_combout\))) # (\Registradores|saidaA[22]~22_combout\) ) ) ) # ( !\ULA1|BIT22|muxB|saida_MUX~0_combout\ & ( 
-- \ULA1|BIT23|somador|soma~0_combout\ & ( (\Registradores|saidaA[22]~22_combout\ & ((!\ULA1|BIT20|somador|carry_out~combout\ & ((\ULA1|BIT21|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[21]~21_combout\))) # (\ULA1|BIT20|somador|carry_out~combout\ & 
-- (\Registradores|saidaA[21]~21_combout\ & \ULA1|BIT21|muxB|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT20|somador|ALT_INV_carry_out~combout\,
	datab => \Registradores|ALT_INV_saidaA[21]~21_combout\,
	datac => \ULA1|BIT21|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \Registradores|ALT_INV_saidaA[22]~22_combout\,
	datae => \ULA1|BIT22|muxB|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA1|BIT23|somador|ALT_INV_soma~0_combout\,
	combout => \ULA1|BIT23|somador|carry_out~0_combout\);

\ULA1|BIT23|somador|carry_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT23|somador|carry_out~1_combout\ = (\Registradores|saidaA[23]~23_combout\ & \ULA1|BIT23|muxB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_saidaA[23]~23_combout\,
	datab => \ULA1|BIT23|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT23|somador|carry_out~1_combout\);

\Registradores|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT24|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~318_q\);

\Registradores|registrador~1249\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1249_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (\Registradores|registrador~62_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~62_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1249_combout\);

\Registradores|registrador~1183\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1183_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1249_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1249_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1249_combout\ & ( (\Registradores|registrador~318_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~318_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1249_combout\,
	combout => \Registradores|registrador~1183_combout\);

\Registradores|saidaB[24]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[24]~11_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1183_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1183_combout\,
	combout => \Registradores|saidaB[24]~11_combout\);

\ULA1|BIT24|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT24|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[24]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaB[24]~11_combout\,
	combout => \ULA1|BIT24|muxB|saida_MUX~0_combout\);

\ULA1|BIT24|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT24|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT24|muxB|saida_MUX~0_combout\ & ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( !\UC_ULA|MUX|saida_MUX[1]~3_combout\ ) ) ) # ( !\ULA1|BIT24|muxB|saida_MUX~0_combout\ & ( 
-- \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & \Registradores|saidaA[24]~24_combout\) ) ) ) # ( \ULA1|BIT24|muxB|saida_MUX~0_combout\ & ( !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( 
-- !\Registradores|saidaA[24]~24_combout\ $ (((!\UC_ULA|MUX|saida_MUX[1]~3_combout\) # ((\ULA1|BIT23|somador|carry_out~1_combout\) # (\ULA1|BIT23|somador|carry_out~0_combout\)))) ) ) ) # ( !\ULA1|BIT24|muxB|saida_MUX~0_combout\ & ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\Registradores|saidaA[24]~24_combout\ $ (((!\ULA1|BIT23|somador|carry_out~0_combout\ & !\ULA1|BIT23|somador|carry_out~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000000010000001011111100000000101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT23|somador|ALT_INV_carry_out~0_combout\,
	datac => \ULA1|BIT23|somador|ALT_INV_carry_out~1_combout\,
	datad => \Registradores|ALT_INV_saidaA[24]~24_combout\,
	datae => \ULA1|BIT24|muxB|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT24|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT24|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~62_q\);

\Registradores|registrador~1182\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1182_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~318_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~62_q\,
	datac => \Registradores|ALT_INV_registrador~318_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1182_combout\);

\Registradores|saidaA[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[24]~24_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1182_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1182_combout\,
	combout => \Registradores|saidaA[24]~24_combout\);

\Registradores|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT25|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~319_q\);

\Registradores|registrador~1250\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1250_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (!\Registradores|registrador~63_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~63_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1250_combout\);

\Registradores|registrador~1188\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1188_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1250_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1250_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1250_combout\ & ( (\Registradores|registrador~319_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~319_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1250_combout\,
	combout => \Registradores|registrador~1188_combout\);

\Registradores|saidaB[25]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[25]~12_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1188_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1188_combout\,
	combout => \Registradores|saidaB[25]~12_combout\);

\ULA1|BIT25|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT25|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[25]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaB[25]~12_combout\,
	combout => \ULA1|BIT25|muxB|saida_MUX~0_combout\);

\ULA1|BIT25|muxResultado|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT25|muxResultado|saida_MUX~1_combout\ = ( \Registradores|saidaA[24]~24_combout\ & ( \ULA1|BIT24|muxB|saida_MUX~0_combout\ & ( (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ((!\Registradores|saidaA[25]~25_combout\ & 
-- (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & !\ULA1|BIT25|muxB|saida_MUX~0_combout\)) # (\Registradores|saidaA[25]~25_combout\ & ((\ULA1|BIT25|muxB|saida_MUX~0_combout\))))) # (\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & 
-- (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT25|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[25]~25_combout\)))) ) ) ) # ( !\Registradores|saidaA[24]~24_combout\ & ( \ULA1|BIT24|muxB|saida_MUX~0_combout\ & ( 
-- (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ((!\Registradores|saidaA[25]~25_combout\ & (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & !\ULA1|BIT25|muxB|saida_MUX~0_combout\)) # (\Registradores|saidaA[25]~25_combout\ & 
-- ((\ULA1|BIT25|muxB|saida_MUX~0_combout\))))) # (\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT25|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[25]~25_combout\)))) ) ) ) # ( 
-- \Registradores|saidaA[24]~24_combout\ & ( !\ULA1|BIT24|muxB|saida_MUX~0_combout\ & ( (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ((!\Registradores|saidaA[25]~25_combout\ & (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & 
-- !\ULA1|BIT25|muxB|saida_MUX~0_combout\)) # (\Registradores|saidaA[25]~25_combout\ & ((\ULA1|BIT25|muxB|saida_MUX~0_combout\))))) # (\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & 
-- ((\ULA1|BIT25|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[25]~25_combout\)))) ) ) ) # ( !\Registradores|saidaA[24]~24_combout\ & ( !\ULA1|BIT24|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[25]~25_combout\ & 
-- (\ULA1|BIT25|muxB|saida_MUX~0_combout\ & (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ $ (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\)))) # (\Registradores|saidaA[25]~25_combout\ & (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ $ 
-- (((!\ULA1|BIT25|muxB|saida_MUX~0_combout\ & !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011000101010010000110010101001000011001010100100001100101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \Registradores|ALT_INV_saidaA[25]~25_combout\,
	datac => \ULA1|BIT25|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datae => \Registradores|ALT_INV_saidaA[24]~24_combout\,
	dataf => \ULA1|BIT24|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT25|muxResultado|saida_MUX~1_combout\);

\ULA1|BIT25|muxResultado|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT25|muxResultado|saida_MUX~2_combout\ = !\Registradores|saidaA[24]~24_combout\ $ (\ULA1|BIT24|muxB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_saidaA[24]~24_combout\,
	datab => \ULA1|BIT24|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT25|muxResultado|saida_MUX~2_combout\);

\ULA1|BIT25|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT25|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT25|muxResultado|saida_MUX~1_combout\ & ( \ULA1|BIT25|muxResultado|saida_MUX~2_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\) # (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\) ) ) ) # ( 
-- \ULA1|BIT25|muxResultado|saida_MUX~1_combout\ & ( !\ULA1|BIT25|muxResultado|saida_MUX~2_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\) # ((!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ((\ULA1|BIT23|somador|carry_out~1_combout\) # 
-- (\ULA1|BIT23|somador|carry_out~0_combout\)))) ) ) ) # ( !\ULA1|BIT25|muxResultado|saida_MUX~1_combout\ & ( !\ULA1|BIT25|muxResultado|saida_MUX~2_combout\ & ( (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & 
-- (!\ULA1|BIT23|somador|carry_out~0_combout\ & !\ULA1|BIT23|somador|carry_out~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000101011101110111000000000000000001110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1|BIT23|somador|ALT_INV_carry_out~0_combout\,
	datad => \ULA1|BIT23|somador|ALT_INV_carry_out~1_combout\,
	datae => \ULA1|BIT25|muxResultado|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA1|BIT25|muxResultado|ALT_INV_saida_MUX~2_combout\,
	combout => \ULA1|BIT25|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~1269\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1269_combout\ = !\ULA1|BIT25|muxResultado|saida_MUX~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT25|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \Registradores|registrador~1269_combout\);

\Registradores|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Registradores|registrador~1269_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~63_q\);

\Registradores|registrador~1187\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1187_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~319_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~63_q\,
	datac => \Registradores|ALT_INV_registrador~319_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1187_combout\);

\Registradores|saidaA[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[25]~25_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1187_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1187_combout\,
	combout => \Registradores|saidaA[25]~25_combout\);

\ULA1|BIT25|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT25|somador|carry_out~combout\ = ( !\Registradores|saidaA[25]~25_combout\ & ( \ULA1|BIT25|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[24]~24_combout\ & ((!\ULA1|BIT24|muxB|saida_MUX~0_combout\) # 
-- ((!\ULA1|BIT23|somador|carry_out~0_combout\ & !\ULA1|BIT23|somador|carry_out~1_combout\)))) # (\Registradores|saidaA[24]~24_combout\ & (!\ULA1|BIT23|somador|carry_out~0_combout\ & (!\ULA1|BIT23|somador|carry_out~1_combout\ & 
-- !\ULA1|BIT24|muxB|saida_MUX~0_combout\))) ) ) ) # ( \Registradores|saidaA[25]~25_combout\ & ( !\ULA1|BIT25|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[24]~24_combout\ & ((!\ULA1|BIT24|muxB|saida_MUX~0_combout\) # 
-- ((!\ULA1|BIT23|somador|carry_out~0_combout\ & !\ULA1|BIT23|somador|carry_out~1_combout\)))) # (\Registradores|saidaA[24]~24_combout\ & (!\ULA1|BIT23|somador|carry_out~0_combout\ & (!\ULA1|BIT23|somador|carry_out~1_combout\ & 
-- !\ULA1|BIT24|muxB|saida_MUX~0_combout\))) ) ) ) # ( !\Registradores|saidaA[25]~25_combout\ & ( !\ULA1|BIT25|muxB|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT23|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA1|BIT23|somador|ALT_INV_carry_out~1_combout\,
	datac => \Registradores|ALT_INV_saidaA[24]~24_combout\,
	datad => \ULA1|BIT24|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \Registradores|ALT_INV_saidaA[25]~25_combout\,
	dataf => \ULA1|BIT25|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT25|somador|carry_out~combout\);

\Registradores|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT26|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~320_q\);

\Registradores|registrador~1251\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1251_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (\Registradores|registrador~64_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~64_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1251_combout\);

\Registradores|registrador~1193\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1193_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1251_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1251_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1251_combout\ & ( (\Registradores|registrador~320_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~320_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1251_combout\,
	combout => \Registradores|registrador~1193_combout\);

\Registradores|saidaB[26]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[26]~13_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1193_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1193_combout\,
	combout => \Registradores|saidaB[26]~13_combout\);

\ULA1|BIT26|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT26|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[26]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaB[26]~13_combout\,
	combout => \ULA1|BIT26|muxB|saida_MUX~0_combout\);

\ULA1|BIT26|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT26|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((\ULA1|BIT26|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[26]~26_combout\))) ) ) # ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (((\Registradores|saidaA[26]~26_combout\ & \ULA1|BIT26|muxB|saida_MUX~0_combout\)))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & 
-- (!\ULA1|BIT25|somador|carry_out~combout\ $ (!\Registradores|saidaA[26]~26_combout\ $ (!\ULA1|BIT26|muxB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100011110000010101010101001000001000111100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT25|somador|ALT_INV_carry_out~combout\,
	datac => \Registradores|ALT_INV_saidaA[26]~26_combout\,
	datad => \ULA1|BIT26|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT26|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT26|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~64_q\);

\Registradores|registrador~1192\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1192_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~320_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~64_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~64_q\,
	datac => \Registradores|ALT_INV_registrador~320_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1192_combout\);

\Registradores|saidaA[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[26]~26_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1192_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1192_combout\,
	combout => \Registradores|saidaA[26]~26_combout\);

\Registradores|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT27|muxResultado|saida_MUX~1_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~321_q\);

\Registradores|registrador~1252\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1252_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (!\Registradores|registrador~65_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~65_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1252_combout\);

\Registradores|registrador~1198\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1198_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1252_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1252_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1252_combout\ & ( (\Registradores|registrador~321_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~321_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1252_combout\,
	combout => \Registradores|registrador~1198_combout\);

\Registradores|saidaB[27]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[27]~14_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1198_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1198_combout\,
	combout => \Registradores|saidaB[27]~14_combout\);

\ULA1|BIT27|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT27|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[27]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaB[27]~14_combout\,
	combout => \ULA1|BIT27|muxB|saida_MUX~0_combout\);

\ULA1|BIT27|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT27|somador|soma~0_combout\ = !\Registradores|saidaA[27]~27_combout\ $ (!\ULA1|BIT27|muxB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_saidaA[27]~27_combout\,
	datab => \ULA1|BIT27|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT27|somador|soma~0_combout\);

\ULA1|BIT27|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT27|muxResultado|saida_MUX~0_combout\ = (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((!\Registradores|saidaA[27]~27_combout\ & (\ULA1|BIT27|muxB|saida_MUX~0_combout\ & \ULA1|BIT13|muxResultado|saida_MUX~0_combout\)) # 
-- (\Registradores|saidaA[27]~27_combout\ & ((\ULA1|BIT13|muxResultado|saida_MUX~0_combout\) # (\ULA1|BIT27|muxB|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000000010001010100000001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \Registradores|ALT_INV_saidaA[27]~27_combout\,
	datac => \ULA1|BIT27|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT27|muxResultado|saida_MUX~0_combout\);

\ULA1|BIT27|muxResultado|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT27|muxResultado|saida_MUX~1_combout\ = ( \ULA1|BIT1|muxResultado|saida_MUX~1_combout\ & ( \ULA1|BIT27|muxResultado|saida_MUX~0_combout\ ) ) # ( !\ULA1|BIT1|muxResultado|saida_MUX~1_combout\ & ( \ULA1|BIT27|muxResultado|saida_MUX~0_combout\ ) ) # 
-- ( \ULA1|BIT1|muxResultado|saida_MUX~1_combout\ & ( !\ULA1|BIT27|muxResultado|saida_MUX~0_combout\ & ( !\ULA1|BIT27|somador|soma~0_combout\ $ (((!\ULA1|BIT25|somador|carry_out~combout\ & (!\Registradores|saidaA[26]~26_combout\ & 
-- !\ULA1|BIT26|muxB|saida_MUX~0_combout\)) # (\ULA1|BIT25|somador|carry_out~combout\ & ((!\Registradores|saidaA[26]~26_combout\) # (!\ULA1|BIT26|muxB|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT25|somador|ALT_INV_carry_out~combout\,
	datab => \Registradores|ALT_INV_saidaA[26]~26_combout\,
	datac => \ULA1|BIT26|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA1|BIT27|somador|ALT_INV_soma~0_combout\,
	datae => \ULA1|BIT1|muxResultado|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA1|BIT27|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT27|muxResultado|saida_MUX~1_combout\);

\Registradores|registrador~1270\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1270_combout\ = !\ULA1|BIT27|muxResultado|saida_MUX~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT27|muxResultado|ALT_INV_saida_MUX~1_combout\,
	combout => \Registradores|registrador~1270_combout\);

\Registradores|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Registradores|registrador~1270_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~65_q\);

\Registradores|registrador~1197\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1197_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~321_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~65_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~65_q\,
	datac => \Registradores|ALT_INV_registrador~321_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1197_combout\);

\Registradores|saidaA[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[27]~27_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1197_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1197_combout\,
	combout => \Registradores|saidaA[27]~27_combout\);

\Registradores|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT28|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~322_q\);

\Registradores|registrador~1253\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1253_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (\Registradores|registrador~66_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~66_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1253_combout\);

\Registradores|registrador~1203\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1203_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1253_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1253_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1253_combout\ & ( (\Registradores|registrador~322_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~322_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1253_combout\,
	combout => \Registradores|registrador~1203_combout\);

\Registradores|saidaB[28]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[28]~15_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1203_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1203_combout\,
	combout => \Registradores|saidaB[28]~15_combout\);

\ULA1|BIT28|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT28|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[28]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaB[28]~15_combout\,
	combout => \ULA1|BIT28|muxB|saida_MUX~0_combout\);

\ULA1|BIT28|muxResultado|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT28|muxResultado|saida_MUX~1_combout\ = ( \Registradores|saidaA[27]~27_combout\ & ( \ULA1|BIT27|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[28]~28_combout\ & (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & !\ULA1|BIT28|muxB|saida_MUX~0_combout\)) 
-- # (\Registradores|saidaA[28]~28_combout\ & ((\ULA1|BIT28|muxB|saida_MUX~0_combout\))) ) ) ) # ( !\Registradores|saidaA[27]~27_combout\ & ( \ULA1|BIT27|muxB|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & 
-- (\Registradores|saidaA[28]~28_combout\ & (\ULA1|BIT28|muxB|saida_MUX~0_combout\))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\Registradores|saidaA[28]~28_combout\ $ (!\ULA1|BIT28|muxB|saida_MUX~0_combout\ $ (\ULA1|BIT26|muxB|saida_MUX~0_combout\)))) ) ) 
-- ) # ( \Registradores|saidaA[27]~27_combout\ & ( !\ULA1|BIT27|muxB|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (\Registradores|saidaA[28]~28_combout\ & (\ULA1|BIT28|muxB|saida_MUX~0_combout\))) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & 
-- (!\Registradores|saidaA[28]~28_combout\ $ (!\ULA1|BIT28|muxB|saida_MUX~0_combout\ $ (\ULA1|BIT26|muxB|saida_MUX~0_combout\)))) ) ) ) # ( !\Registradores|saidaA[27]~27_combout\ & ( !\ULA1|BIT27|muxB|saida_MUX~0_combout\ & ( 
-- (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (\Registradores|saidaA[28]~28_combout\ & \ULA1|BIT28|muxB|saida_MUX~0_combout\)) # (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\Registradores|saidaA[28]~28_combout\ $ (!\ULA1|BIT28|muxB|saida_MUX~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011000010110000101100100001100010110010000110100001101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \Registradores|ALT_INV_saidaA[28]~28_combout\,
	datac => \ULA1|BIT28|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA1|BIT26|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \Registradores|ALT_INV_saidaA[27]~27_combout\,
	dataf => \ULA1|BIT27|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT28|muxResultado|saida_MUX~1_combout\);

\ULA1|BIT28|muxResultado|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT28|muxResultado|saida_MUX~2_combout\ = ( \Registradores|saidaA[27]~27_combout\ & ( \ULA1|BIT27|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[28]~28_combout\ & (!\ULA1|BIT28|muxB|saida_MUX~0_combout\ $ 
-- (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\))) # (\Registradores|saidaA[28]~28_combout\ & (!\ULA1|BIT28|muxB|saida_MUX~0_combout\ & !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\)) ) ) ) # ( !\Registradores|saidaA[27]~27_combout\ & ( 
-- \ULA1|BIT27|muxB|saida_MUX~0_combout\ & ( (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & (!\Registradores|saidaA[28]~28_combout\ $ (!\ULA1|BIT28|muxB|saida_MUX~0_combout\ $ (!\Registradores|saidaA[26]~26_combout\)))) # 
-- (\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & (!\Registradores|saidaA[28]~28_combout\ & (!\ULA1|BIT28|muxB|saida_MUX~0_combout\))) ) ) ) # ( \Registradores|saidaA[27]~27_combout\ & ( !\ULA1|BIT27|muxB|saida_MUX~0_combout\ & ( 
-- (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & (!\Registradores|saidaA[28]~28_combout\ $ (!\ULA1|BIT28|muxB|saida_MUX~0_combout\ $ (!\Registradores|saidaA[26]~26_combout\)))) # (\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & 
-- (!\Registradores|saidaA[28]~28_combout\ & (!\ULA1|BIT28|muxB|saida_MUX~0_combout\))) ) ) ) # ( !\Registradores|saidaA[27]~27_combout\ & ( !\ULA1|BIT27|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[28]~28_combout\ & 
-- (!\ULA1|BIT28|muxB|saida_MUX~0_combout\)) # (\Registradores|saidaA[28]~28_combout\ & (\ULA1|BIT28|muxB|saida_MUX~0_combout\ & !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100010011000100110000110100010011000011010000110100001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_saidaA[28]~28_combout\,
	datab => \ULA1|BIT28|muxB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datad => \Registradores|ALT_INV_saidaA[26]~26_combout\,
	datae => \Registradores|ALT_INV_saidaA[27]~27_combout\,
	dataf => \ULA1|BIT27|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT28|muxResultado|saida_MUX~2_combout\);

\ULA1|BIT28|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT28|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT28|muxResultado|saida_MUX~1_combout\ & ( \ULA1|BIT28|muxResultado|saida_MUX~2_combout\ & ( (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ((!\UC_ULA|MUX|saida_MUX[1]~3_combout\) # 
-- (!\ULA1|BIT25|somador|carry_out~combout\ $ (\Registradores|saidaA[26]~26_combout\)))) ) ) ) # ( \ULA1|BIT28|muxResultado|saida_MUX~1_combout\ & ( !\ULA1|BIT28|muxResultado|saida_MUX~2_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\) # 
-- (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\) ) ) ) # ( !\ULA1|BIT28|muxResultado|saida_MUX~1_combout\ & ( !\ULA1|BIT28|muxResultado|saida_MUX~2_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (\ULA1|BIT13|muxResultado|saida_MUX~0_combout\)) # 
-- (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & (!\ULA1|BIT25|somador|carry_out~combout\ $ (!\Registradores|saidaA[26]~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011001100010111011101110111000000000000000001100100010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1|BIT25|somador|ALT_INV_carry_out~combout\,
	datad => \Registradores|ALT_INV_saidaA[26]~26_combout\,
	datae => \ULA1|BIT28|muxResultado|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA1|BIT28|muxResultado|ALT_INV_saida_MUX~2_combout\,
	combout => \ULA1|BIT28|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT28|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~66_q\);

\Registradores|registrador~1202\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1202_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~322_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~66_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~66_q\,
	datac => \Registradores|ALT_INV_registrador~322_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1202_combout\);

\Registradores|saidaA[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[28]~28_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1202_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1202_combout\,
	combout => \Registradores|saidaA[28]~28_combout\);

\ULA1|BIT28|somador|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT28|somador|soma~0_combout\ = !\Registradores|saidaA[28]~28_combout\ $ (!\ULA1|BIT28|muxB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_saidaA[28]~28_combout\,
	datab => \ULA1|BIT28|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT28|somador|soma~0_combout\);

\ULA1|BIT28|somador|carry_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT28|somador|carry_out~0_combout\ = ( \ULA1|BIT27|muxB|saida_MUX~0_combout\ & ( \ULA1|BIT28|somador|soma~0_combout\ & ( ((!\ULA1|BIT25|somador|carry_out~combout\ & ((\ULA1|BIT26|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[26]~26_combout\))) 
-- # (\ULA1|BIT25|somador|carry_out~combout\ & (\Registradores|saidaA[26]~26_combout\ & \ULA1|BIT26|muxB|saida_MUX~0_combout\))) # (\Registradores|saidaA[27]~27_combout\) ) ) ) # ( !\ULA1|BIT27|muxB|saida_MUX~0_combout\ & ( 
-- \ULA1|BIT28|somador|soma~0_combout\ & ( (\Registradores|saidaA[27]~27_combout\ & ((!\ULA1|BIT25|somador|carry_out~combout\ & ((\ULA1|BIT26|muxB|saida_MUX~0_combout\) # (\Registradores|saidaA[26]~26_combout\))) # (\ULA1|BIT25|somador|carry_out~combout\ & 
-- (\Registradores|saidaA[26]~26_combout\ & \ULA1|BIT26|muxB|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT25|somador|ALT_INV_carry_out~combout\,
	datab => \Registradores|ALT_INV_saidaA[26]~26_combout\,
	datac => \ULA1|BIT26|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \Registradores|ALT_INV_saidaA[27]~27_combout\,
	datae => \ULA1|BIT27|muxB|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA1|BIT28|somador|ALT_INV_soma~0_combout\,
	combout => \ULA1|BIT28|somador|carry_out~0_combout\);

\ULA1|BIT28|somador|carry_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT28|somador|carry_out~1_combout\ = (\Registradores|saidaA[28]~28_combout\ & \ULA1|BIT28|muxB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_saidaA[28]~28_combout\,
	datab => \ULA1|BIT28|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT28|somador|carry_out~1_combout\);

\Registradores|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT29|muxResultado|saida_MUX~0_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~323_q\);

\Registradores|registrador~1254\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1254_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (!\Registradores|registrador~67_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~67_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1254_combout\);

\Registradores|registrador~1208\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1208_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1254_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1254_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1254_combout\ & ( (\Registradores|registrador~323_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~323_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1254_combout\,
	combout => \Registradores|registrador~1208_combout\);

\Registradores|saidaB[29]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[29]~16_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1208_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1208_combout\,
	combout => \Registradores|saidaB[29]~16_combout\);

\ULA1|BIT29|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT29|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[29]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaB[29]~16_combout\,
	combout => \ULA1|BIT29|muxB|saida_MUX~0_combout\);

\ULA1|BIT29|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT29|muxResultado|saida_MUX~0_combout\ = ( \ULA1|BIT29|muxB|saida_MUX~0_combout\ & ( \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( !\UC_ULA|MUX|saida_MUX[1]~3_combout\ ) ) ) # ( !\ULA1|BIT29|muxB|saida_MUX~0_combout\ & ( 
-- \ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & \Registradores|saidaA[29]~29_combout\) ) ) ) # ( \ULA1|BIT29|muxB|saida_MUX~0_combout\ & ( !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( 
-- !\Registradores|saidaA[29]~29_combout\ $ (((!\UC_ULA|MUX|saida_MUX[1]~3_combout\) # ((\ULA1|BIT28|somador|carry_out~1_combout\) # (\ULA1|BIT28|somador|carry_out~0_combout\)))) ) ) ) # ( !\ULA1|BIT29|muxB|saida_MUX~0_combout\ & ( 
-- !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\ & ( (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & (!\Registradores|saidaA[29]~29_combout\ $ (((!\ULA1|BIT28|somador|carry_out~0_combout\ & !\ULA1|BIT28|somador|carry_out~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000000010000001011111100000000101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT28|somador|ALT_INV_carry_out~0_combout\,
	datac => \ULA1|BIT28|somador|ALT_INV_carry_out~1_combout\,
	datad => \Registradores|ALT_INV_saidaA[29]~29_combout\,
	datae => \ULA1|BIT29|muxB|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT29|muxResultado|saida_MUX~0_combout\);

\Registradores|registrador~1271\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1271_combout\ = !\ULA1|BIT29|muxResultado|saida_MUX~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT29|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \Registradores|registrador~1271_combout\);

\Registradores|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Registradores|registrador~1271_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~67_q\);

\Registradores|registrador~1207\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1207_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~323_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~67_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~67_q\,
	datac => \Registradores|ALT_INV_registrador~323_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1207_combout\);

\Registradores|saidaA[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[29]~29_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1207_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1207_combout\,
	combout => \Registradores|saidaA[29]~29_combout\);

\Registradores|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT30|muxResultado|saida_MUX~1_combout\,
	ena => \Registradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~324_q\);

\Registradores|registrador~1255\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1255_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ 
-- & ( !\ROM1|memROM~17_combout\ & ( (\Registradores|registrador~68_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~68_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \Registradores|registrador~1255_combout\);

\Registradores|registrador~1213\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1213_combout\ = ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~1255_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~1255_combout\ & ( !\ROM1|memROM~17_combout\ ) 
-- ) ) # ( !\ROM1|memROM~9_combout\ & ( !\Registradores|registrador~1255_combout\ & ( (\Registradores|registrador~324_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registradores|ALT_INV_registrador~324_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Registradores|ALT_INV_registrador~1255_combout\,
	combout => \Registradores|registrador~1213_combout\);

\Registradores|saidaB[30]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[30]~17_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1213_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1213_combout\,
	combout => \Registradores|saidaB[30]~17_combout\);

\ULA1|BIT30|muxB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT30|muxB|saida_MUX~0_combout\ = (!\UC|mux_rt_ime~0_combout\ & (!\UC_ULA|MUX|saida_MUX[2]~2_combout\ $ (!\Registradores|saidaB[30]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \UC|ALT_INV_mux_rt_ime~0_combout\,
	datac => \Registradores|ALT_INV_saidaB[30]~17_combout\,
	combout => \ULA1|BIT30|muxB|saida_MUX~0_combout\);

\ULA1|BIT30|somador|soma\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT30|somador|soma~combout\ = ( \Registradores|saidaA[30]~30_combout\ & ( \ULA1|BIT30|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[29]~29_combout\ & (\ULA1|BIT29|muxB|saida_MUX~0_combout\ & ((\ULA1|BIT28|somador|carry_out~1_combout\) # 
-- (\ULA1|BIT28|somador|carry_out~0_combout\)))) # (\Registradores|saidaA[29]~29_combout\ & (((\ULA1|BIT29|muxB|saida_MUX~0_combout\) # (\ULA1|BIT28|somador|carry_out~1_combout\)) # (\ULA1|BIT28|somador|carry_out~0_combout\))) ) ) ) # ( 
-- !\Registradores|saidaA[30]~30_combout\ & ( \ULA1|BIT30|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[29]~29_combout\ & ((!\ULA1|BIT29|muxB|saida_MUX~0_combout\) # ((!\ULA1|BIT28|somador|carry_out~0_combout\ & 
-- !\ULA1|BIT28|somador|carry_out~1_combout\)))) # (\Registradores|saidaA[29]~29_combout\ & (!\ULA1|BIT28|somador|carry_out~0_combout\ & (!\ULA1|BIT28|somador|carry_out~1_combout\ & !\ULA1|BIT29|muxB|saida_MUX~0_combout\))) ) ) ) # ( 
-- \Registradores|saidaA[30]~30_combout\ & ( !\ULA1|BIT30|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[29]~29_combout\ & ((!\ULA1|BIT29|muxB|saida_MUX~0_combout\) # ((!\ULA1|BIT28|somador|carry_out~0_combout\ & 
-- !\ULA1|BIT28|somador|carry_out~1_combout\)))) # (\Registradores|saidaA[29]~29_combout\ & (!\ULA1|BIT28|somador|carry_out~0_combout\ & (!\ULA1|BIT28|somador|carry_out~1_combout\ & !\ULA1|BIT29|muxB|saida_MUX~0_combout\))) ) ) ) # ( 
-- !\Registradores|saidaA[30]~30_combout\ & ( !\ULA1|BIT30|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[29]~29_combout\ & (\ULA1|BIT29|muxB|saida_MUX~0_combout\ & ((\ULA1|BIT28|somador|carry_out~1_combout\) # 
-- (\ULA1|BIT28|somador|carry_out~0_combout\)))) # (\Registradores|saidaA[29]~29_combout\ & (((\ULA1|BIT29|muxB|saida_MUX~0_combout\) # (\ULA1|BIT28|somador|carry_out~1_combout\)) # (\ULA1|BIT28|somador|carry_out~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111111110001000000011111000100000000000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT28|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA1|BIT28|somador|ALT_INV_carry_out~1_combout\,
	datac => \Registradores|ALT_INV_saidaA[29]~29_combout\,
	datad => \ULA1|BIT29|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \Registradores|ALT_INV_saidaA[30]~30_combout\,
	dataf => \ULA1|BIT30|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT30|somador|soma~combout\);

\ULA1|BIT30|muxResultado|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT30|muxResultado|saida_MUX~0_combout\ = (!\UC_ULA|MUX|saida_MUX[1]~3_combout\ & ((!\Registradores|saidaA[30]~30_combout\ & (\ULA1|BIT30|muxB|saida_MUX~0_combout\ & \ULA1|BIT13|muxResultado|saida_MUX~0_combout\)) # 
-- (\Registradores|saidaA[30]~30_combout\ & ((\ULA1|BIT13|muxResultado|saida_MUX~0_combout\) # (\ULA1|BIT30|muxB|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000000010001010100000001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \Registradores|ALT_INV_saidaA[30]~30_combout\,
	datac => \ULA1|BIT30|muxB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT30|muxResultado|saida_MUX~0_combout\);

\ULA1|BIT30|muxResultado|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT30|muxResultado|saida_MUX~1_combout\ = ((\ULA1|BIT1|muxResultado|saida_MUX~1_combout\ & \ULA1|BIT30|somador|soma~combout\)) # (\ULA1|BIT30|muxResultado|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT1|muxResultado|ALT_INV_saida_MUX~1_combout\,
	datab => \ULA1|BIT30|somador|ALT_INV_soma~combout\,
	datac => \ULA1|BIT30|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT30|muxResultado|saida_MUX~1_combout\);

\Registradores|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|BIT30|muxResultado|saida_MUX~1_combout\,
	ena => \Registradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registrador~68_q\);

\Registradores|registrador~1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registrador~1212_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \Registradores|registrador~324_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \Registradores|registrador~68_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registrador~68_q\,
	datac => \Registradores|ALT_INV_registrador~324_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \Registradores|registrador~1212_combout\);

\Registradores|saidaA[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaA[30]~30_combout\ = (!\PC|DOUT\(7) & (\Registradores|registrador~1212_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \Registradores|ALT_INV_registrador~1212_combout\,
	combout => \Registradores|saidaA[30]~30_combout\);

\ULA1|BIT30|somador|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT30|somador|carry_out~combout\ = ( !\Registradores|saidaA[30]~30_combout\ & ( \ULA1|BIT30|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[29]~29_combout\ & ((!\ULA1|BIT29|muxB|saida_MUX~0_combout\) # 
-- ((!\ULA1|BIT28|somador|carry_out~0_combout\ & !\ULA1|BIT28|somador|carry_out~1_combout\)))) # (\Registradores|saidaA[29]~29_combout\ & (!\ULA1|BIT28|somador|carry_out~0_combout\ & (!\ULA1|BIT28|somador|carry_out~1_combout\ & 
-- !\ULA1|BIT29|muxB|saida_MUX~0_combout\))) ) ) ) # ( \Registradores|saidaA[30]~30_combout\ & ( !\ULA1|BIT30|muxB|saida_MUX~0_combout\ & ( (!\Registradores|saidaA[29]~29_combout\ & ((!\ULA1|BIT29|muxB|saida_MUX~0_combout\) # 
-- ((!\ULA1|BIT28|somador|carry_out~0_combout\ & !\ULA1|BIT28|somador|carry_out~1_combout\)))) # (\Registradores|saidaA[29]~29_combout\ & (!\ULA1|BIT28|somador|carry_out~0_combout\ & (!\ULA1|BIT28|somador|carry_out~1_combout\ & 
-- !\ULA1|BIT29|muxB|saida_MUX~0_combout\))) ) ) ) # ( !\Registradores|saidaA[30]~30_combout\ & ( !\ULA1|BIT30|muxB|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT28|somador|ALT_INV_carry_out~0_combout\,
	datab => \ULA1|BIT28|somador|ALT_INV_carry_out~1_combout\,
	datac => \Registradores|ALT_INV_saidaA[29]~29_combout\,
	datad => \ULA1|BIT29|muxB|ALT_INV_saida_MUX~0_combout\,
	datae => \Registradores|ALT_INV_saidaA[30]~30_combout\,
	dataf => \ULA1|BIT30|muxB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT30|somador|carry_out~combout\);

\sel_beq~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \sel_beq~10_combout\ = ( \ULA1|BIT0|muxResultado|saida_MUX~0_combout\ & ( !\ULA1|BIT0|muxResultado|saida_MUX~2_combout\ & ( (!\ULA1|BIT30|somador|carry_out~combout\ & (!\ULA1|BIT31|muxResultado|saida_MUX~0_combout\ & 
-- ((!\ULA1|BIT1|muxResultado|saida_MUX~1_combout\) # (\ULA1|BIT31|somador|soma~0_combout\)))) ) ) ) # ( !\ULA1|BIT0|muxResultado|saida_MUX~0_combout\ & ( !\ULA1|BIT0|muxResultado|saida_MUX~2_combout\ & ( (!\ULA1|BIT31|muxResultado|saida_MUX~0_combout\ & 
-- ((!\ULA1|BIT1|muxResultado|saida_MUX~1_combout\) # (!\ULA1|BIT30|somador|carry_out~combout\ $ (!\ULA1|BIT31|somador|soma~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111000000000100010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT30|somador|ALT_INV_carry_out~combout\,
	datab => \ULA1|BIT1|muxResultado|ALT_INV_saida_MUX~1_combout\,
	datac => \ULA1|BIT31|somador|ALT_INV_soma~0_combout\,
	datad => \ULA1|BIT31|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|BIT0|muxResultado|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA1|BIT0|muxResultado|ALT_INV_saida_MUX~2_combout\,
	combout => \sel_beq~10_combout\);

\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

\incrementaImediato|Add0~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~118_cout\ = CARRY(( \ROM1|memROM~0_combout\ ) + ( \incrementaPC|Add0~5_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~5_sumout\,
	cin => GND,
	cout => \incrementaImediato|Add0~118_cout\);

\incrementaImediato|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~1_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM1|memROM~1_combout\)) ) + ( \incrementaPC|Add0~1_sumout\ ) + ( \incrementaImediato|Add0~118_cout\ ))
-- \incrementaImediato|Add0~2\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM1|memROM~1_combout\)) ) + ( \incrementaPC|Add0~1_sumout\ ) + ( \incrementaImediato|Add0~118_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~1_sumout\,
	cin => \incrementaImediato|Add0~118_cout\,
	sumout => \incrementaImediato|Add0~1_sumout\,
	cout => \incrementaImediato|Add0~2\);

\incrementaImediato|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~5_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM1|memROM~3_combout\)) ) + ( \incrementaPC|Add0~9_sumout\ ) + ( \incrementaImediato|Add0~2\ ))
-- \incrementaImediato|Add0~6\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM1|memROM~3_combout\)) ) + ( \incrementaPC|Add0~9_sumout\ ) + ( \incrementaImediato|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~9_sumout\,
	cin => \incrementaImediato|Add0~2\,
	sumout => \incrementaImediato|Add0~5_sumout\,
	cout => \incrementaImediato|Add0~6\);

\incrementaImediato|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~9_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~5_combout\)) ) + ( \incrementaPC|Add0~13_sumout\ ) + ( \incrementaImediato|Add0~6\ ))
-- \incrementaImediato|Add0~10\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM1|memROM~5_combout\)) ) + ( \incrementaPC|Add0~13_sumout\ ) + ( \incrementaImediato|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~13_sumout\,
	cin => \incrementaImediato|Add0~6\,
	sumout => \incrementaImediato|Add0~9_sumout\,
	cout => \incrementaImediato|Add0~10\);

\muxPC_BEQ_JMP|saida_MUX[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[5]~3_combout\ = ( \incrementaPC|Add0~13_sumout\ & ( \incrementaImediato|Add0~9_sumout\ & ( (!\UC|Equal5~0_combout\) # (\ROM1|memROM~6_combout\) ) ) ) # ( !\incrementaPC|Add0~13_sumout\ & ( \incrementaImediato|Add0~9_sumout\ & ( 
-- (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~6_combout\)) ) ) ) # ( \incrementaPC|Add0~13_sumout\ & ( !\incrementaImediato|Add0~9_sumout\ & ( (!\UC|Equal5~0_combout\ & 
-- (((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~6_combout\)) ) ) ) # ( !\incrementaPC|Add0~13_sumout\ & ( !\incrementaImediato|Add0~9_sumout\ & ( (\ROM1|memROM~6_combout\ & \UC|Equal5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101000100010001000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \UC|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_sel_beq~9_combout\,
	datad => \ALT_INV_sel_beq~10_combout\,
	datae => \incrementaPC|ALT_INV_Add0~13_sumout\,
	dataf => \incrementaImediato|ALT_INV_Add0~9_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[5]~3_combout\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\UC|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal0~0_combout\ = ( !\PC|DOUT\(4) & ( \PC|DOUT\(5) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(3)))) ) ) ) # ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (\PC|DOUT\(2) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \PC|DOUT\(3)))) ) ) ) # ( 
-- !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000100000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \UC|Equal0~0_combout\);

\UC_ULA|MUX|saida_MUX[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC_ULA|MUX|saida_MUX[1]~3_combout\ = ( \UC_ULA|MUX|saida_MUX[1]~0_combout\ & ( \UC_ULA|MUX|saida_MUX[1]~1_combout\ & ( (((!\UC_ULA|decFUNCT|Equal3~0_combout\ & !\UC_ULA|decFUNCT|Equal4~0_combout\)) # (\sel_beq~0_combout\)) # (\UC|Equal0~0_combout\) ) ) ) 
-- # ( !\UC_ULA|MUX|saida_MUX[1]~0_combout\ & ( \UC_ULA|MUX|saida_MUX[1]~1_combout\ & ( (((!\UC_ULA|decFUNCT|Equal3~0_combout\ & !\UC_ULA|decFUNCT|Equal4~0_combout\)) # (\sel_beq~0_combout\)) # (\UC|Equal0~0_combout\) ) ) ) # ( 
-- \UC_ULA|MUX|saida_MUX[1]~0_combout\ & ( !\UC_ULA|MUX|saida_MUX[1]~1_combout\ & ( (((!\UC_ULA|decFUNCT|Equal3~0_combout\ & !\UC_ULA|decFUNCT|Equal4~0_combout\)) # (\sel_beq~0_combout\)) # (\UC|Equal0~0_combout\) ) ) ) # ( 
-- !\UC_ULA|MUX|saida_MUX[1]~0_combout\ & ( !\UC_ULA|MUX|saida_MUX[1]~1_combout\ & ( \sel_beq~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111110101011111111111010101111111111101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal0~0_combout\,
	datab => \UC_ULA|decFUNCT|ALT_INV_Equal3~0_combout\,
	datac => \UC_ULA|decFUNCT|ALT_INV_Equal4~0_combout\,
	datad => \ALT_INV_sel_beq~0_combout\,
	datae => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~0_combout\,
	dataf => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \UC_ULA|MUX|saida_MUX[1]~3_combout\);

\ULA1|BIT1|muxResultado|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|BIT1|muxResultado|saida_MUX~1_combout\ = (\UC_ULA|MUX|saida_MUX[1]~3_combout\ & !\ULA1|BIT13|muxResultado|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|MUX|ALT_INV_saida_MUX[1]~3_combout\,
	datab => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1|BIT1|muxResultado|saida_MUX~1_combout\);

\sel_beq~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sel_beq~1_combout\ = ( !\ULA1|BIT4|muxResultado|saida_MUX~0_combout\ & ( (\sel_beq~0_combout\ & (!\ULA1|BIT1|muxResultado|saida_MUX~0_combout\ & (!\ULA1|BIT2|muxResultado|saida_MUX~0_combout\ & !\ULA1|BIT3|muxResultado|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_beq~0_combout\,
	datab => \ULA1|BIT1|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1|BIT2|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA1|BIT3|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|BIT4|muxResultado|ALT_INV_saida_MUX~0_combout\,
	combout => \sel_beq~1_combout\);

\sel_beq~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sel_beq~2_combout\ = (!\ULA1|BIT5|muxResultado|saida_MUX~0_combout\ & (!\ULA1|BIT6|muxResultado|saida_MUX~0_combout\ & (!\ULA1|BIT7|muxResultado|saida_MUX~0_combout\ & \sel_beq~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT5|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA1|BIT6|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1|BIT7|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_sel_beq~1_combout\,
	combout => \sel_beq~2_combout\);

\sel_beq~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sel_beq~3_combout\ = (!\ULA1|BIT8|muxResultado|saida_MUX~0_combout\ & (!\ULA1|BIT9|muxResultado|saida_MUX~0_combout\ & (!\ULA1|BIT10|muxResultado|saida_MUX~0_combout\ & \sel_beq~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT8|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA1|BIT9|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1|BIT10|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_sel_beq~2_combout\,
	combout => \sel_beq~3_combout\);

\sel_beq~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sel_beq~4_combout\ = (!\ULA1|BIT11|muxResultado|saida_MUX~0_combout\ & (!\ULA1|BIT12|muxResultado|saida_MUX~0_combout\ & (!\ULA1|BIT13|muxResultado|saida_MUX~1_combout\ & \sel_beq~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT11|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA1|BIT12|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1|BIT13|muxResultado|ALT_INV_saida_MUX~1_combout\,
	datad => \ALT_INV_sel_beq~3_combout\,
	combout => \sel_beq~4_combout\);

\sel_beq~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sel_beq~5_combout\ = ( \sel_beq~4_combout\ & ( (!\ULA1|BIT14|muxResultado|saida_MUX~0_combout\ & (!\ULA1|BIT15|muxResultado|saida_MUX~0_combout\ & (!\ULA1|BIT16|muxResultado|saida_MUX~0_combout\ & !\ULA1|BIT17|muxResultado|saida_MUX~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT14|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA1|BIT15|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1|BIT16|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA1|BIT17|muxResultado|ALT_INV_saida_MUX~1_combout\,
	datae => \ALT_INV_sel_beq~4_combout\,
	combout => \sel_beq~5_combout\);

\sel_beq~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \sel_beq~6_combout\ = ( \sel_beq~5_combout\ & ( (!\ULA1|BIT18|muxResultado|saida_MUX~0_combout\ & (!\ULA1|BIT19|muxResultado|saida_MUX~0_combout\ & (!\ULA1|BIT20|muxResultado|saida_MUX~0_combout\ & !\ULA1|BIT21|muxResultado|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT18|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA1|BIT19|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1|BIT20|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA1|BIT21|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_sel_beq~5_combout\,
	combout => \sel_beq~6_combout\);

\sel_beq~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \sel_beq~7_combout\ = (!\ULA1|BIT22|muxResultado|saida_MUX~1_combout\ & (!\ULA1|BIT23|muxResultado|saida_MUX~0_combout\ & (!\ULA1|BIT24|muxResultado|saida_MUX~0_combout\ & \sel_beq~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT22|muxResultado|ALT_INV_saida_MUX~1_combout\,
	datab => \ULA1|BIT23|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1|BIT24|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_sel_beq~6_combout\,
	combout => \sel_beq~7_combout\);

\sel_beq~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \sel_beq~8_combout\ = (!\ULA1|BIT25|muxResultado|saida_MUX~0_combout\ & (!\ULA1|BIT26|muxResultado|saida_MUX~0_combout\ & (!\ULA1|BIT27|muxResultado|saida_MUX~1_combout\ & \sel_beq~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT25|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA1|BIT26|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1|BIT27|muxResultado|ALT_INV_saida_MUX~1_combout\,
	datad => \ALT_INV_sel_beq~7_combout\,
	combout => \sel_beq~8_combout\);

\sel_beq~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \sel_beq~9_combout\ = ( !\ULA1|BIT30|muxResultado|saida_MUX~0_combout\ & ( \sel_beq~8_combout\ & ( (!\ULA1|BIT28|muxResultado|saida_MUX~0_combout\ & (!\ULA1|BIT29|muxResultado|saida_MUX~0_combout\ & ((!\ULA1|BIT1|muxResultado|saida_MUX~1_combout\) # 
-- (!\ULA1|BIT30|somador|soma~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|BIT1|muxResultado|ALT_INV_saida_MUX~1_combout\,
	datab => \ULA1|BIT28|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1|BIT29|muxResultado|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA1|BIT30|somador|ALT_INV_soma~combout\,
	datae => \ULA1|BIT30|muxResultado|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_sel_beq~8_combout\,
	combout => \sel_beq~9_combout\);

\muxPC_BEQ_JMP|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[2]~1_combout\ = ( \sel_beq~10_combout\ & ( (!\UC|Equal5~0_combout\ & (((\incrementaPC|Add0~5_sumout\ & !\sel_beq~9_combout\)))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~0_combout\)) ) ) # ( !\sel_beq~10_combout\ & ( 
-- (!\UC|Equal5~0_combout\ & ((\incrementaPC|Add0~5_sumout\))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001000100011101000111010001110100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \UC|ALT_INV_Equal5~0_combout\,
	datac => \incrementaPC|ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_sel_beq~9_combout\,
	datae => \ALT_INV_sel_beq~10_combout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[2]~1_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & ((!\PC|DOUT\(2)) # (!\PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001000000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~11_combout\);

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ((!\ROM1|memROM~11_combout\) # (\PC|DOUT\(6))) # (\PC|DOUT\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011111110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~12_combout\);

\UC|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal5~0_combout\ = (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \UC|Equal5~0_combout\);

\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

\incrementaImediato|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~17_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~21_sumout\ ) + ( \incrementaImediato|Add0~10\ ))
-- \incrementaImediato|Add0~18\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~21_sumout\ ) + ( \incrementaImediato|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~21_sumout\,
	cin => \incrementaImediato|Add0~10\,
	sumout => \incrementaImediato|Add0~17_sumout\,
	cout => \incrementaImediato|Add0~18\);

\muxPC_BEQ_JMP|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[6]~5_combout\ = ( \incrementaImediato|Add0~17_sumout\ & ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)) # (\incrementaPC|Add0~21_sumout\))) ) ) # ( !\incrementaImediato|Add0~17_sumout\ & ( 
-- (!\UC|Equal5~0_combout\ & (\incrementaPC|Add0~21_sumout\ & ((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_sel_beq~9_combout\,
	datac => \ALT_INV_sel_beq~10_combout\,
	datad => \incrementaPC|ALT_INV_Add0~21_sumout\,
	datae => \incrementaImediato|ALT_INV_Add0~17_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[6]~5_combout\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(2) $ (\PC|DOUT\(3))))) ) ) ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (\PC|DOUT\(2) & \PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000100000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~4_combout\);

\muxPC_BEQ_JMP|saida_MUX[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[4]~2_combout\ = ( \incrementaPC|Add0~9_sumout\ & ( \incrementaImediato|Add0~5_sumout\ & ( (!\UC|Equal5~0_combout\) # (\ROM1|memROM~4_combout\) ) ) ) # ( !\incrementaPC|Add0~9_sumout\ & ( \incrementaImediato|Add0~5_sumout\ & ( 
-- (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~4_combout\)) ) ) ) # ( \incrementaPC|Add0~9_sumout\ & ( !\incrementaImediato|Add0~5_sumout\ & ( (!\UC|Equal5~0_combout\ & 
-- (((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~4_combout\)) ) ) ) # ( !\incrementaPC|Add0~9_sumout\ & ( !\incrementaImediato|Add0~5_sumout\ & ( (\ROM1|memROM~4_combout\ & \UC|Equal5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101000100010001000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \UC|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_sel_beq~9_combout\,
	datad => \ALT_INV_sel_beq~10_combout\,
	datae => \incrementaPC|ALT_INV_Add0~9_sumout\,
	dataf => \incrementaImediato|ALT_INV_Add0~5_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[4]~2_combout\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(5) & ((\PC|DOUT\(4)) # (\PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000000000000000000000000101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~9_combout\);

\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

\incrementaImediato|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~13_sumout\ = SUM(( (!\PC|DOUT\(7) & \ROM1|memROM~8_combout\) ) + ( \incrementaPC|Add0~17_sumout\ ) + ( \incrementaImediato|Add0~18\ ))
-- \incrementaImediato|Add0~14\ = CARRY(( (!\PC|DOUT\(7) & \ROM1|memROM~8_combout\) ) + ( \incrementaPC|Add0~17_sumout\ ) + ( \incrementaImediato|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~17_sumout\,
	cin => \incrementaImediato|Add0~18\,
	sumout => \incrementaImediato|Add0~13_sumout\,
	cout => \incrementaImediato|Add0~14\);

\muxPC_BEQ_JMP|saida_MUX[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[7]~4_combout\ = ( \incrementaPC|Add0~17_sumout\ & ( \incrementaImediato|Add0~13_sumout\ & ( (!\UC|Equal5~0_combout\) # (\ROM1|memROM~9_combout\) ) ) ) # ( !\incrementaPC|Add0~17_sumout\ & ( \incrementaImediato|Add0~13_sumout\ & ( 
-- (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~9_combout\)) ) ) ) # ( \incrementaPC|Add0~17_sumout\ & ( !\incrementaImediato|Add0~13_sumout\ & ( (!\UC|Equal5~0_combout\ & 
-- (((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~9_combout\)) ) ) ) # ( !\incrementaPC|Add0~17_sumout\ & ( !\incrementaImediato|Add0~13_sumout\ & ( (\ROM1|memROM~9_combout\ & \UC|Equal5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101000100010001000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \UC|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_sel_beq~9_combout\,
	datad => \ALT_INV_sel_beq~10_combout\,
	datae => \incrementaPC|ALT_INV_Add0~17_sumout\,
	dataf => \incrementaImediato|ALT_INV_Add0~13_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[7]~4_combout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \PC|DOUT\(2))) ) ) ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(2) & \PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~2_combout\);

\muxPC_BEQ_JMP|saida_MUX[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[3]~0_combout\ = ( \sel_beq~9_combout\ & ( \sel_beq~10_combout\ & ( (!\UC|Equal5~0_combout\ & ((\incrementaImediato|Add0~1_sumout\))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~2_combout\)) ) ) ) # ( !\sel_beq~9_combout\ & ( 
-- \sel_beq~10_combout\ & ( (!\UC|Equal5~0_combout\ & ((\incrementaPC|Add0~1_sumout\))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~2_combout\)) ) ) ) # ( \sel_beq~9_combout\ & ( !\sel_beq~10_combout\ & ( (!\UC|Equal5~0_combout\ & 
-- ((\incrementaPC|Add0~1_sumout\))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~2_combout\)) ) ) ) # ( !\sel_beq~9_combout\ & ( !\sel_beq~10_combout\ & ( (!\UC|Equal5~0_combout\ & ((\incrementaPC|Add0~1_sumout\))) # (\UC|Equal5~0_combout\ & 
-- (\ROM1|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \UC|ALT_INV_Equal5~0_combout\,
	datac => \incrementaPC|ALT_INV_Add0~1_sumout\,
	datad => \incrementaImediato|ALT_INV_Add0~1_sumout\,
	datae => \ALT_INV_sel_beq~9_combout\,
	dataf => \ALT_INV_sel_beq~10_combout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[3]~0_combout\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & (\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~0_combout\);

\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

\incrementaImediato|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~21_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~25_sumout\ ) + ( \incrementaImediato|Add0~14\ ))
-- \incrementaImediato|Add0~22\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~25_sumout\ ) + ( \incrementaImediato|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~25_sumout\,
	cin => \incrementaImediato|Add0~14\,
	sumout => \incrementaImediato|Add0~21_sumout\,
	cout => \incrementaImediato|Add0~22\);

\muxPC_BEQ_JMP|saida_MUX[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[8]~6_combout\ = ( \incrementaImediato|Add0~21_sumout\ & ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)) # (\incrementaPC|Add0~25_sumout\))) ) ) # ( !\incrementaImediato|Add0~21_sumout\ & ( 
-- (!\UC|Equal5~0_combout\ & (\incrementaPC|Add0~25_sumout\ & ((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_sel_beq~9_combout\,
	datac => \ALT_INV_sel_beq~10_combout\,
	datad => \incrementaPC|ALT_INV_Add0~25_sumout\,
	datae => \incrementaImediato|ALT_INV_Add0~21_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[8]~6_combout\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(9),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

\incrementaImediato|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~25_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~29_sumout\ ) + ( \incrementaImediato|Add0~22\ ))
-- \incrementaImediato|Add0~26\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~29_sumout\ ) + ( \incrementaImediato|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~29_sumout\,
	cin => \incrementaImediato|Add0~22\,
	sumout => \incrementaImediato|Add0~25_sumout\,
	cout => \incrementaImediato|Add0~26\);

\muxPC_BEQ_JMP|saida_MUX[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[9]~7_combout\ = ( \incrementaImediato|Add0~25_sumout\ & ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)) # (\incrementaPC|Add0~29_sumout\))) ) ) # ( !\incrementaImediato|Add0~25_sumout\ & ( 
-- (!\UC|Equal5~0_combout\ & (\incrementaPC|Add0~29_sumout\ & ((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_sel_beq~9_combout\,
	datac => \ALT_INV_sel_beq~10_combout\,
	datad => \incrementaPC|ALT_INV_Add0~29_sumout\,
	datae => \incrementaImediato|ALT_INV_Add0~25_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[9]~7_combout\);

\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(10) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))
-- \incrementaPC|Add0~34\ = CARRY(( \PC|DOUT\(10) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(10),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\,
	cout => \incrementaPC|Add0~34\);

\incrementaImediato|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~29_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~33_sumout\ ) + ( \incrementaImediato|Add0~26\ ))
-- \incrementaImediato|Add0~30\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~33_sumout\ ) + ( \incrementaImediato|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~33_sumout\,
	cin => \incrementaImediato|Add0~26\,
	sumout => \incrementaImediato|Add0~29_sumout\,
	cout => \incrementaImediato|Add0~30\);

\muxPC_BEQ_JMP|saida_MUX[10]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[10]~8_combout\ = ( \incrementaImediato|Add0~29_sumout\ & ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)) # (\incrementaPC|Add0~33_sumout\))) ) ) # ( !\incrementaImediato|Add0~29_sumout\ & ( 
-- (!\UC|Equal5~0_combout\ & (\incrementaPC|Add0~33_sumout\ & ((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_sel_beq~9_combout\,
	datac => \ALT_INV_sel_beq~10_combout\,
	datad => \incrementaPC|ALT_INV_Add0~33_sumout\,
	datae => \incrementaImediato|ALT_INV_Add0~29_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[10]~8_combout\);

\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[10]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

\incrementaPC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~37_sumout\ = SUM(( \PC|DOUT\(11) ) + ( GND ) + ( \incrementaPC|Add0~34\ ))
-- \incrementaPC|Add0~38\ = CARRY(( \PC|DOUT\(11) ) + ( GND ) + ( \incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(11),
	cin => \incrementaPC|Add0~34\,
	sumout => \incrementaPC|Add0~37_sumout\,
	cout => \incrementaPC|Add0~38\);

\incrementaImediato|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~33_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~37_sumout\ ) + ( \incrementaImediato|Add0~30\ ))
-- \incrementaImediato|Add0~34\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~37_sumout\ ) + ( \incrementaImediato|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~37_sumout\,
	cin => \incrementaImediato|Add0~30\,
	sumout => \incrementaImediato|Add0~33_sumout\,
	cout => \incrementaImediato|Add0~34\);

\muxPC_BEQ_JMP|saida_MUX[11]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[11]~9_combout\ = ( \incrementaImediato|Add0~33_sumout\ & ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)) # (\incrementaPC|Add0~37_sumout\))) ) ) # ( !\incrementaImediato|Add0~33_sumout\ & ( 
-- (!\UC|Equal5~0_combout\ & (\incrementaPC|Add0~37_sumout\ & ((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_sel_beq~9_combout\,
	datac => \ALT_INV_sel_beq~10_combout\,
	datad => \incrementaPC|ALT_INV_Add0~37_sumout\,
	datae => \incrementaImediato|ALT_INV_Add0~33_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[11]~9_combout\);

\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

\incrementaPC|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~41_sumout\ = SUM(( \PC|DOUT\(12) ) + ( GND ) + ( \incrementaPC|Add0~38\ ))
-- \incrementaPC|Add0~42\ = CARRY(( \PC|DOUT\(12) ) + ( GND ) + ( \incrementaPC|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(12),
	cin => \incrementaPC|Add0~38\,
	sumout => \incrementaPC|Add0~41_sumout\,
	cout => \incrementaPC|Add0~42\);

\incrementaImediato|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~37_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~41_sumout\ ) + ( \incrementaImediato|Add0~34\ ))
-- \incrementaImediato|Add0~38\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~41_sumout\ ) + ( \incrementaImediato|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~41_sumout\,
	cin => \incrementaImediato|Add0~34\,
	sumout => \incrementaImediato|Add0~37_sumout\,
	cout => \incrementaImediato|Add0~38\);

\muxPC_BEQ_JMP|saida_MUX[12]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[12]~10_combout\ = ( \incrementaImediato|Add0~37_sumout\ & ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)) # (\incrementaPC|Add0~41_sumout\))) ) ) # ( !\incrementaImediato|Add0~37_sumout\ & ( 
-- (!\UC|Equal5~0_combout\ & (\incrementaPC|Add0~41_sumout\ & ((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_sel_beq~9_combout\,
	datac => \ALT_INV_sel_beq~10_combout\,
	datad => \incrementaPC|ALT_INV_Add0~41_sumout\,
	datae => \incrementaImediato|ALT_INV_Add0~37_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[12]~10_combout\);

\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

\incrementaPC|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~45_sumout\ = SUM(( \PC|DOUT\(13) ) + ( GND ) + ( \incrementaPC|Add0~42\ ))
-- \incrementaPC|Add0~46\ = CARRY(( \PC|DOUT\(13) ) + ( GND ) + ( \incrementaPC|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(13),
	cin => \incrementaPC|Add0~42\,
	sumout => \incrementaPC|Add0~45_sumout\,
	cout => \incrementaPC|Add0~46\);

\incrementaImediato|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~41_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~45_sumout\ ) + ( \incrementaImediato|Add0~38\ ))
-- \incrementaImediato|Add0~42\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~45_sumout\ ) + ( \incrementaImediato|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~45_sumout\,
	cin => \incrementaImediato|Add0~38\,
	sumout => \incrementaImediato|Add0~41_sumout\,
	cout => \incrementaImediato|Add0~42\);

\muxPC_BEQ_JMP|saida_MUX[13]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[13]~11_combout\ = ( \incrementaImediato|Add0~41_sumout\ & ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)) # (\incrementaPC|Add0~45_sumout\))) ) ) # ( !\incrementaImediato|Add0~41_sumout\ & ( 
-- (!\UC|Equal5~0_combout\ & (\incrementaPC|Add0~45_sumout\ & ((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_sel_beq~9_combout\,
	datac => \ALT_INV_sel_beq~10_combout\,
	datad => \incrementaPC|ALT_INV_Add0~45_sumout\,
	datae => \incrementaImediato|ALT_INV_Add0~41_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[13]~11_combout\);

\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[13]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

\incrementaPC|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~49_sumout\ = SUM(( \PC|DOUT\(14) ) + ( GND ) + ( \incrementaPC|Add0~46\ ))
-- \incrementaPC|Add0~50\ = CARRY(( \PC|DOUT\(14) ) + ( GND ) + ( \incrementaPC|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(14),
	cin => \incrementaPC|Add0~46\,
	sumout => \incrementaPC|Add0~49_sumout\,
	cout => \incrementaPC|Add0~50\);

\incrementaImediato|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~45_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~49_sumout\ ) + ( \incrementaImediato|Add0~42\ ))
-- \incrementaImediato|Add0~46\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~49_sumout\ ) + ( \incrementaImediato|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~49_sumout\,
	cin => \incrementaImediato|Add0~42\,
	sumout => \incrementaImediato|Add0~45_sumout\,
	cout => \incrementaImediato|Add0~46\);

\muxPC_BEQ_JMP|saida_MUX[14]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[14]~12_combout\ = ( \incrementaImediato|Add0~45_sumout\ & ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)) # (\incrementaPC|Add0~49_sumout\))) ) ) # ( !\incrementaImediato|Add0~45_sumout\ & ( 
-- (!\UC|Equal5~0_combout\ & (\incrementaPC|Add0~49_sumout\ & ((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_sel_beq~9_combout\,
	datac => \ALT_INV_sel_beq~10_combout\,
	datad => \incrementaPC|ALT_INV_Add0~49_sumout\,
	datae => \incrementaImediato|ALT_INV_Add0~45_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[14]~12_combout\);

\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[14]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

\incrementaPC|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~53_sumout\ = SUM(( \PC|DOUT\(15) ) + ( GND ) + ( \incrementaPC|Add0~50\ ))
-- \incrementaPC|Add0~54\ = CARRY(( \PC|DOUT\(15) ) + ( GND ) + ( \incrementaPC|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(15),
	cin => \incrementaPC|Add0~50\,
	sumout => \incrementaPC|Add0~53_sumout\,
	cout => \incrementaPC|Add0~54\);

\incrementaImediato|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~49_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~53_sumout\ ) + ( \incrementaImediato|Add0~46\ ))
-- \incrementaImediato|Add0~50\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~53_sumout\ ) + ( \incrementaImediato|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~53_sumout\,
	cin => \incrementaImediato|Add0~46\,
	sumout => \incrementaImediato|Add0~49_sumout\,
	cout => \incrementaImediato|Add0~50\);

\muxPC_BEQ_JMP|saida_MUX[15]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[15]~13_combout\ = ( \incrementaImediato|Add0~49_sumout\ & ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)) # (\incrementaPC|Add0~53_sumout\))) ) ) # ( !\incrementaImediato|Add0~49_sumout\ & ( 
-- (!\UC|Equal5~0_combout\ & (\incrementaPC|Add0~53_sumout\ & ((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_sel_beq~9_combout\,
	datac => \ALT_INV_sel_beq~10_combout\,
	datad => \incrementaPC|ALT_INV_Add0~53_sumout\,
	datae => \incrementaImediato|ALT_INV_Add0~49_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[15]~13_combout\);

\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[15]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

\incrementaPC|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~57_sumout\ = SUM(( \PC|DOUT\(16) ) + ( GND ) + ( \incrementaPC|Add0~54\ ))
-- \incrementaPC|Add0~58\ = CARRY(( \PC|DOUT\(16) ) + ( GND ) + ( \incrementaPC|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(16),
	cin => \incrementaPC|Add0~54\,
	sumout => \incrementaPC|Add0~57_sumout\,
	cout => \incrementaPC|Add0~58\);

\incrementaImediato|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~53_sumout\ = SUM(( (!\PC|DOUT\(7) & \ROM1|memROM~8_combout\) ) + ( \incrementaPC|Add0~57_sumout\ ) + ( \incrementaImediato|Add0~50\ ))
-- \incrementaImediato|Add0~54\ = CARRY(( (!\PC|DOUT\(7) & \ROM1|memROM~8_combout\) ) + ( \incrementaPC|Add0~57_sumout\ ) + ( \incrementaImediato|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~57_sumout\,
	cin => \incrementaImediato|Add0~50\,
	sumout => \incrementaImediato|Add0~53_sumout\,
	cout => \incrementaImediato|Add0~54\);

\muxPC_BEQ_JMP|saida_MUX[16]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[16]~14_combout\ = ( \incrementaPC|Add0~57_sumout\ & ( \incrementaImediato|Add0~53_sumout\ & ( (!\UC|Equal5~0_combout\) # (\ROM1|memROM~9_combout\) ) ) ) # ( !\incrementaPC|Add0~57_sumout\ & ( \incrementaImediato|Add0~53_sumout\ & 
-- ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~9_combout\)) ) ) ) # ( \incrementaPC|Add0~57_sumout\ & ( !\incrementaImediato|Add0~53_sumout\ & ( (!\UC|Equal5~0_combout\ & 
-- (((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~9_combout\)) ) ) ) # ( !\incrementaPC|Add0~57_sumout\ & ( !\incrementaImediato|Add0~53_sumout\ & ( (\ROM1|memROM~9_combout\ & \UC|Equal5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101000100010001000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \UC|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_sel_beq~9_combout\,
	datad => \ALT_INV_sel_beq~10_combout\,
	datae => \incrementaPC|ALT_INV_Add0~57_sumout\,
	dataf => \incrementaImediato|ALT_INV_Add0~53_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[16]~14_combout\);

\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[16]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

\incrementaPC|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~61_sumout\ = SUM(( \PC|DOUT\(17) ) + ( GND ) + ( \incrementaPC|Add0~58\ ))
-- \incrementaPC|Add0~62\ = CARRY(( \PC|DOUT\(17) ) + ( GND ) + ( \incrementaPC|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(17),
	cin => \incrementaPC|Add0~58\,
	sumout => \incrementaPC|Add0~61_sumout\,
	cout => \incrementaPC|Add0~62\);

\incrementaImediato|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~57_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~61_sumout\ ) + ( \incrementaImediato|Add0~54\ ))
-- \incrementaImediato|Add0~58\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~61_sumout\ ) + ( \incrementaImediato|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~61_sumout\,
	cin => \incrementaImediato|Add0~54\,
	sumout => \incrementaImediato|Add0~57_sumout\,
	cout => \incrementaImediato|Add0~58\);

\muxPC_BEQ_JMP|saida_MUX[17]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[17]~15_combout\ = ( \incrementaImediato|Add0~57_sumout\ & ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)) # (\incrementaPC|Add0~61_sumout\))) ) ) # ( !\incrementaImediato|Add0~57_sumout\ & ( 
-- (!\UC|Equal5~0_combout\ & (\incrementaPC|Add0~61_sumout\ & ((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_sel_beq~9_combout\,
	datac => \ALT_INV_sel_beq~10_combout\,
	datad => \incrementaPC|ALT_INV_Add0~61_sumout\,
	datae => \incrementaImediato|ALT_INV_Add0~57_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[17]~15_combout\);

\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[17]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

\incrementaPC|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~65_sumout\ = SUM(( \PC|DOUT\(18) ) + ( GND ) + ( \incrementaPC|Add0~62\ ))
-- \incrementaPC|Add0~66\ = CARRY(( \PC|DOUT\(18) ) + ( GND ) + ( \incrementaPC|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(18),
	cin => \incrementaPC|Add0~62\,
	sumout => \incrementaPC|Add0~65_sumout\,
	cout => \incrementaPC|Add0~66\);

\incrementaImediato|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~61_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~65_sumout\ ) + ( \incrementaImediato|Add0~58\ ))
-- \incrementaImediato|Add0~62\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~65_sumout\ ) + ( \incrementaImediato|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~65_sumout\,
	cin => \incrementaImediato|Add0~58\,
	sumout => \incrementaImediato|Add0~61_sumout\,
	cout => \incrementaImediato|Add0~62\);

\muxPC_BEQ_JMP|saida_MUX[18]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[18]~16_combout\ = ( \incrementaPC|Add0~65_sumout\ & ( \incrementaImediato|Add0~61_sumout\ & ( (!\UC|Equal5~0_combout\) # (\ROM1|memROM~16_combout\) ) ) ) # ( !\incrementaPC|Add0~65_sumout\ & ( \incrementaImediato|Add0~61_sumout\ & 
-- ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~16_combout\)) ) ) ) # ( \incrementaPC|Add0~65_sumout\ & ( !\incrementaImediato|Add0~61_sumout\ & ( (!\UC|Equal5~0_combout\ & 
-- (((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~16_combout\)) ) ) ) # ( !\incrementaPC|Add0~65_sumout\ & ( !\incrementaImediato|Add0~61_sumout\ & ( (\ROM1|memROM~16_combout\ & \UC|Equal5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101000100010001000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \UC|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_sel_beq~9_combout\,
	datad => \ALT_INV_sel_beq~10_combout\,
	datae => \incrementaPC|ALT_INV_Add0~65_sumout\,
	dataf => \incrementaImediato|ALT_INV_Add0~61_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[18]~16_combout\);

\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[18]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

\incrementaPC|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~69_sumout\ = SUM(( \PC|DOUT\(19) ) + ( GND ) + ( \incrementaPC|Add0~66\ ))
-- \incrementaPC|Add0~70\ = CARRY(( \PC|DOUT\(19) ) + ( GND ) + ( \incrementaPC|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(19),
	cin => \incrementaPC|Add0~66\,
	sumout => \incrementaPC|Add0~69_sumout\,
	cout => \incrementaPC|Add0~70\);

\incrementaImediato|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~65_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~69_sumout\ ) + ( \incrementaImediato|Add0~62\ ))
-- \incrementaImediato|Add0~66\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~69_sumout\ ) + ( \incrementaImediato|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~69_sumout\,
	cin => \incrementaImediato|Add0~62\,
	sumout => \incrementaImediato|Add0~65_sumout\,
	cout => \incrementaImediato|Add0~66\);

\muxPC_BEQ_JMP|saida_MUX[19]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[19]~17_combout\ = ( \incrementaPC|Add0~69_sumout\ & ( \incrementaImediato|Add0~65_sumout\ & ( (!\UC|Equal5~0_combout\) # (\ROM1|memROM~9_combout\) ) ) ) # ( !\incrementaPC|Add0~69_sumout\ & ( \incrementaImediato|Add0~65_sumout\ & 
-- ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~9_combout\)) ) ) ) # ( \incrementaPC|Add0~69_sumout\ & ( !\incrementaImediato|Add0~65_sumout\ & ( (!\UC|Equal5~0_combout\ & 
-- (((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~9_combout\)) ) ) ) # ( !\incrementaPC|Add0~69_sumout\ & ( !\incrementaImediato|Add0~65_sumout\ & ( (\ROM1|memROM~9_combout\ & \UC|Equal5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101000100010001000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \UC|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_sel_beq~9_combout\,
	datad => \ALT_INV_sel_beq~10_combout\,
	datae => \incrementaPC|ALT_INV_Add0~69_sumout\,
	dataf => \incrementaImediato|ALT_INV_Add0~65_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[19]~17_combout\);

\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[19]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

\incrementaPC|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~73_sumout\ = SUM(( \PC|DOUT\(20) ) + ( GND ) + ( \incrementaPC|Add0~70\ ))
-- \incrementaPC|Add0~74\ = CARRY(( \PC|DOUT\(20) ) + ( GND ) + ( \incrementaPC|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(20),
	cin => \incrementaPC|Add0~70\,
	sumout => \incrementaPC|Add0~73_sumout\,
	cout => \incrementaPC|Add0~74\);

\incrementaImediato|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~69_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~73_sumout\ ) + ( \incrementaImediato|Add0~66\ ))
-- \incrementaImediato|Add0~70\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~73_sumout\ ) + ( \incrementaImediato|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~73_sumout\,
	cin => \incrementaImediato|Add0~66\,
	sumout => \incrementaImediato|Add0~69_sumout\,
	cout => \incrementaImediato|Add0~70\);

\muxPC_BEQ_JMP|saida_MUX[20]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[20]~18_combout\ = ( \incrementaImediato|Add0~69_sumout\ & ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)) # (\incrementaPC|Add0~73_sumout\))) ) ) # ( !\incrementaImediato|Add0~69_sumout\ & ( 
-- (!\UC|Equal5~0_combout\ & (\incrementaPC|Add0~73_sumout\ & ((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_sel_beq~9_combout\,
	datac => \ALT_INV_sel_beq~10_combout\,
	datad => \incrementaPC|ALT_INV_Add0~73_sumout\,
	datae => \incrementaImediato|ALT_INV_Add0~69_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[20]~18_combout\);

\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[20]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

\incrementaPC|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~77_sumout\ = SUM(( \PC|DOUT\(21) ) + ( GND ) + ( \incrementaPC|Add0~74\ ))
-- \incrementaPC|Add0~78\ = CARRY(( \PC|DOUT\(21) ) + ( GND ) + ( \incrementaPC|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(21),
	cin => \incrementaPC|Add0~74\,
	sumout => \incrementaPC|Add0~77_sumout\,
	cout => \incrementaPC|Add0~78\);

\incrementaImediato|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~73_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~77_sumout\ ) + ( \incrementaImediato|Add0~70\ ))
-- \incrementaImediato|Add0~74\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~77_sumout\ ) + ( \incrementaImediato|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~77_sumout\,
	cin => \incrementaImediato|Add0~70\,
	sumout => \incrementaImediato|Add0~73_sumout\,
	cout => \incrementaImediato|Add0~74\);

\muxPC_BEQ_JMP|saida_MUX[21]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[21]~19_combout\ = ( \incrementaPC|Add0~77_sumout\ & ( \incrementaImediato|Add0~73_sumout\ & ( (!\UC|Equal5~0_combout\) # (\ROM1|memROM~17_combout\) ) ) ) # ( !\incrementaPC|Add0~77_sumout\ & ( \incrementaImediato|Add0~73_sumout\ & 
-- ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~17_combout\)) ) ) ) # ( \incrementaPC|Add0~77_sumout\ & ( !\incrementaImediato|Add0~73_sumout\ & ( (!\UC|Equal5~0_combout\ & 
-- (((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~17_combout\)) ) ) ) # ( !\incrementaPC|Add0~77_sumout\ & ( !\incrementaImediato|Add0~73_sumout\ & ( (\ROM1|memROM~17_combout\ & \UC|Equal5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101000100010001000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \UC|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_sel_beq~9_combout\,
	datad => \ALT_INV_sel_beq~10_combout\,
	datae => \incrementaPC|ALT_INV_Add0~77_sumout\,
	dataf => \incrementaImediato|ALT_INV_Add0~73_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[21]~19_combout\);

\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[21]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

\incrementaPC|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~81_sumout\ = SUM(( \PC|DOUT\(22) ) + ( GND ) + ( \incrementaPC|Add0~78\ ))
-- \incrementaPC|Add0~82\ = CARRY(( \PC|DOUT\(22) ) + ( GND ) + ( \incrementaPC|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(22),
	cin => \incrementaPC|Add0~78\,
	sumout => \incrementaPC|Add0~81_sumout\,
	cout => \incrementaPC|Add0~82\);

\incrementaImediato|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~77_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~81_sumout\ ) + ( \incrementaImediato|Add0~74\ ))
-- \incrementaImediato|Add0~78\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~81_sumout\ ) + ( \incrementaImediato|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~81_sumout\,
	cin => \incrementaImediato|Add0~74\,
	sumout => \incrementaImediato|Add0~77_sumout\,
	cout => \incrementaImediato|Add0~78\);

\muxPC_BEQ_JMP|saida_MUX[22]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[22]~20_combout\ = ( \incrementaImediato|Add0~77_sumout\ & ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)) # (\incrementaPC|Add0~81_sumout\))) ) ) # ( !\incrementaImediato|Add0~77_sumout\ & ( 
-- (!\UC|Equal5~0_combout\ & (\incrementaPC|Add0~81_sumout\ & ((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_sel_beq~9_combout\,
	datac => \ALT_INV_sel_beq~10_combout\,
	datad => \incrementaPC|ALT_INV_Add0~81_sumout\,
	datae => \incrementaImediato|ALT_INV_Add0~77_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[22]~20_combout\);

\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[22]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

\incrementaPC|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~85_sumout\ = SUM(( \PC|DOUT\(23) ) + ( GND ) + ( \incrementaPC|Add0~82\ ))
-- \incrementaPC|Add0~86\ = CARRY(( \PC|DOUT\(23) ) + ( GND ) + ( \incrementaPC|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(23),
	cin => \incrementaPC|Add0~82\,
	sumout => \incrementaPC|Add0~85_sumout\,
	cout => \incrementaPC|Add0~86\);

\incrementaImediato|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~81_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~85_sumout\ ) + ( \incrementaImediato|Add0~78\ ))
-- \incrementaImediato|Add0~82\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~85_sumout\ ) + ( \incrementaImediato|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~85_sumout\,
	cin => \incrementaImediato|Add0~78\,
	sumout => \incrementaImediato|Add0~81_sumout\,
	cout => \incrementaImediato|Add0~82\);

\muxPC_BEQ_JMP|saida_MUX[23]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[23]~21_combout\ = ( \incrementaPC|Add0~85_sumout\ & ( \incrementaImediato|Add0~81_sumout\ & ( (!\UC|Equal5~0_combout\) # (\ROM1|memROM~15_combout\) ) ) ) # ( !\incrementaPC|Add0~85_sumout\ & ( \incrementaImediato|Add0~81_sumout\ & 
-- ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~15_combout\)) ) ) ) # ( \incrementaPC|Add0~85_sumout\ & ( !\incrementaImediato|Add0~81_sumout\ & ( (!\UC|Equal5~0_combout\ & 
-- (((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~15_combout\)) ) ) ) # ( !\incrementaPC|Add0~85_sumout\ & ( !\incrementaImediato|Add0~81_sumout\ & ( (\ROM1|memROM~15_combout\ & \UC|Equal5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101000100010001000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \UC|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_sel_beq~9_combout\,
	datad => \ALT_INV_sel_beq~10_combout\,
	datae => \incrementaPC|ALT_INV_Add0~85_sumout\,
	dataf => \incrementaImediato|ALT_INV_Add0~81_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[23]~21_combout\);

\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[23]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

\incrementaPC|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~89_sumout\ = SUM(( \PC|DOUT\(24) ) + ( GND ) + ( \incrementaPC|Add0~86\ ))
-- \incrementaPC|Add0~90\ = CARRY(( \PC|DOUT\(24) ) + ( GND ) + ( \incrementaPC|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(24),
	cin => \incrementaPC|Add0~86\,
	sumout => \incrementaPC|Add0~89_sumout\,
	cout => \incrementaPC|Add0~90\);

\incrementaImediato|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~85_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~89_sumout\ ) + ( \incrementaImediato|Add0~82\ ))
-- \incrementaImediato|Add0~86\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~89_sumout\ ) + ( \incrementaImediato|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~89_sumout\,
	cin => \incrementaImediato|Add0~82\,
	sumout => \incrementaImediato|Add0~85_sumout\,
	cout => \incrementaImediato|Add0~86\);

\muxPC_BEQ_JMP|saida_MUX[24]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[24]~22_combout\ = ( \incrementaImediato|Add0~85_sumout\ & ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)) # (\incrementaPC|Add0~89_sumout\))) ) ) # ( !\incrementaImediato|Add0~85_sumout\ & ( 
-- (!\UC|Equal5~0_combout\ & (\incrementaPC|Add0~89_sumout\ & ((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_sel_beq~9_combout\,
	datac => \ALT_INV_sel_beq~10_combout\,
	datad => \incrementaPC|ALT_INV_Add0~89_sumout\,
	datae => \incrementaImediato|ALT_INV_Add0~85_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[24]~22_combout\);

\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[24]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

\incrementaPC|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~93_sumout\ = SUM(( \PC|DOUT\(25) ) + ( GND ) + ( \incrementaPC|Add0~90\ ))
-- \incrementaPC|Add0~94\ = CARRY(( \PC|DOUT\(25) ) + ( GND ) + ( \incrementaPC|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(25),
	cin => \incrementaPC|Add0~90\,
	sumout => \incrementaPC|Add0~93_sumout\,
	cout => \incrementaPC|Add0~94\);

\incrementaImediato|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~89_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~93_sumout\ ) + ( \incrementaImediato|Add0~86\ ))
-- \incrementaImediato|Add0~90\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~93_sumout\ ) + ( \incrementaImediato|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~93_sumout\,
	cin => \incrementaImediato|Add0~86\,
	sumout => \incrementaImediato|Add0~89_sumout\,
	cout => \incrementaImediato|Add0~90\);

\muxPC_BEQ_JMP|saida_MUX[25]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[25]~23_combout\ = ( \incrementaImediato|Add0~89_sumout\ & ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)) # (\incrementaPC|Add0~93_sumout\))) ) ) # ( !\incrementaImediato|Add0~89_sumout\ & ( 
-- (!\UC|Equal5~0_combout\ & (\incrementaPC|Add0~93_sumout\ & ((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_sel_beq~9_combout\,
	datac => \ALT_INV_sel_beq~10_combout\,
	datad => \incrementaPC|ALT_INV_Add0~93_sumout\,
	datae => \incrementaImediato|ALT_INV_Add0~89_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[25]~23_combout\);

\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[25]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

\incrementaPC|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~97_sumout\ = SUM(( \PC|DOUT\(26) ) + ( GND ) + ( \incrementaPC|Add0~94\ ))
-- \incrementaPC|Add0~98\ = CARRY(( \PC|DOUT\(26) ) + ( GND ) + ( \incrementaPC|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(26),
	cin => \incrementaPC|Add0~94\,
	sumout => \incrementaPC|Add0~97_sumout\,
	cout => \incrementaPC|Add0~98\);

\incrementaImediato|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~93_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~97_sumout\ ) + ( \incrementaImediato|Add0~90\ ))
-- \incrementaImediato|Add0~94\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~97_sumout\ ) + ( \incrementaImediato|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~97_sumout\,
	cin => \incrementaImediato|Add0~90\,
	sumout => \incrementaImediato|Add0~93_sumout\,
	cout => \incrementaImediato|Add0~94\);

\muxPC_BEQ_JMP|saida_MUX[26]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[26]~24_combout\ = ( \incrementaPC|Add0~97_sumout\ & ( \incrementaImediato|Add0~93_sumout\ & ( (!\UC|Equal5~0_combout\) # (\ROM1|memROM~9_combout\) ) ) ) # ( !\incrementaPC|Add0~97_sumout\ & ( \incrementaImediato|Add0~93_sumout\ & 
-- ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~9_combout\)) ) ) ) # ( \incrementaPC|Add0~97_sumout\ & ( !\incrementaImediato|Add0~93_sumout\ & ( (!\UC|Equal5~0_combout\ & 
-- (((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) # (\UC|Equal5~0_combout\ & (\ROM1|memROM~9_combout\)) ) ) ) # ( !\incrementaPC|Add0~97_sumout\ & ( !\incrementaImediato|Add0~93_sumout\ & ( (\ROM1|memROM~9_combout\ & \UC|Equal5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101000100010001000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \UC|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_sel_beq~9_combout\,
	datad => \ALT_INV_sel_beq~10_combout\,
	datae => \incrementaPC|ALT_INV_Add0~97_sumout\,
	dataf => \incrementaImediato|ALT_INV_Add0~93_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[26]~24_combout\);

\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[26]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

\incrementaPC|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~101_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \incrementaPC|Add0~98\ ))
-- \incrementaPC|Add0~102\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \incrementaPC|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(27),
	cin => \incrementaPC|Add0~98\,
	sumout => \incrementaPC|Add0~101_sumout\,
	cout => \incrementaPC|Add0~102\);

\incrementaImediato|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~97_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~101_sumout\ ) + ( \incrementaImediato|Add0~94\ ))
-- \incrementaImediato|Add0~98\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~101_sumout\ ) + ( \incrementaImediato|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~101_sumout\,
	cin => \incrementaImediato|Add0~94\,
	sumout => \incrementaImediato|Add0~97_sumout\,
	cout => \incrementaImediato|Add0~98\);

\muxPC_BEQ_JMP|saida_MUX[27]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[27]~25_combout\ = ( \incrementaImediato|Add0~97_sumout\ & ( (!\UC|Equal5~0_combout\ & (((\sel_beq~9_combout\ & \sel_beq~10_combout\)) # (\incrementaPC|Add0~101_sumout\))) ) ) # ( !\incrementaImediato|Add0~97_sumout\ & ( 
-- (!\UC|Equal5~0_combout\ & (\incrementaPC|Add0~101_sumout\ & ((!\sel_beq~9_combout\) # (!\sel_beq~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_sel_beq~9_combout\,
	datac => \ALT_INV_sel_beq~10_combout\,
	datad => \incrementaPC|ALT_INV_Add0~101_sumout\,
	datae => \incrementaImediato|ALT_INV_Add0~97_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[27]~25_combout\);

\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[27]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

\incrementaPC|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~105_sumout\ = SUM(( \PC|DOUT\(28) ) + ( GND ) + ( \incrementaPC|Add0~102\ ))
-- \incrementaPC|Add0~106\ = CARRY(( \PC|DOUT\(28) ) + ( GND ) + ( \incrementaPC|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(28),
	cin => \incrementaPC|Add0~102\,
	sumout => \incrementaPC|Add0~105_sumout\,
	cout => \incrementaPC|Add0~106\);

\incrementaImediato|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~101_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~105_sumout\ ) + ( \incrementaImediato|Add0~98\ ))
-- \incrementaImediato|Add0~102\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~105_sumout\ ) + ( \incrementaImediato|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~105_sumout\,
	cin => \incrementaImediato|Add0~98\,
	sumout => \incrementaImediato|Add0~101_sumout\,
	cout => \incrementaImediato|Add0~102\);

\muxPC_BEQ_JMP|saida_MUX[28]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[28]~26_combout\ = (!\sel_beq~9_combout\ & (((\incrementaPC|Add0~105_sumout\)))) # (\sel_beq~9_combout\ & ((!\sel_beq~10_combout\ & (\incrementaPC|Add0~105_sumout\)) # (\sel_beq~10_combout\ & 
-- ((\incrementaImediato|Add0~101_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_beq~9_combout\,
	datab => \ALT_INV_sel_beq~10_combout\,
	datac => \incrementaPC|ALT_INV_Add0~105_sumout\,
	datad => \incrementaImediato|ALT_INV_Add0~101_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[28]~26_combout\);

\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[28]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

\incrementaPC|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~109_sumout\ = SUM(( \PC|DOUT\(29) ) + ( GND ) + ( \incrementaPC|Add0~106\ ))
-- \incrementaPC|Add0~110\ = CARRY(( \PC|DOUT\(29) ) + ( GND ) + ( \incrementaPC|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(29),
	cin => \incrementaPC|Add0~106\,
	sumout => \incrementaPC|Add0~109_sumout\,
	cout => \incrementaPC|Add0~110\);

\incrementaImediato|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~105_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~109_sumout\ ) + ( \incrementaImediato|Add0~102\ ))
-- \incrementaImediato|Add0~106\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~109_sumout\ ) + ( \incrementaImediato|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~109_sumout\,
	cin => \incrementaImediato|Add0~102\,
	sumout => \incrementaImediato|Add0~105_sumout\,
	cout => \incrementaImediato|Add0~106\);

\muxPC_BEQ_JMP|saida_MUX[29]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[29]~27_combout\ = (!\sel_beq~9_combout\ & (((\incrementaPC|Add0~109_sumout\)))) # (\sel_beq~9_combout\ & ((!\sel_beq~10_combout\ & (\incrementaPC|Add0~109_sumout\)) # (\sel_beq~10_combout\ & 
-- ((\incrementaImediato|Add0~105_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_beq~9_combout\,
	datab => \ALT_INV_sel_beq~10_combout\,
	datac => \incrementaPC|ALT_INV_Add0~109_sumout\,
	datad => \incrementaImediato|ALT_INV_Add0~105_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[29]~27_combout\);

\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[29]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

\incrementaPC|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~113_sumout\ = SUM(( \PC|DOUT\(30) ) + ( GND ) + ( \incrementaPC|Add0~110\ ))
-- \incrementaPC|Add0~114\ = CARRY(( \PC|DOUT\(30) ) + ( GND ) + ( \incrementaPC|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(30),
	cin => \incrementaPC|Add0~110\,
	sumout => \incrementaPC|Add0~113_sumout\,
	cout => \incrementaPC|Add0~114\);

\incrementaImediato|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~109_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~113_sumout\ ) + ( \incrementaImediato|Add0~106\ ))
-- \incrementaImediato|Add0~110\ = CARRY(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~113_sumout\ ) + ( \incrementaImediato|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~113_sumout\,
	cin => \incrementaImediato|Add0~106\,
	sumout => \incrementaImediato|Add0~109_sumout\,
	cout => \incrementaImediato|Add0~110\);

\muxPC_BEQ_JMP|saida_MUX[30]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[30]~28_combout\ = (!\sel_beq~9_combout\ & (((\incrementaPC|Add0~113_sumout\)))) # (\sel_beq~9_combout\ & ((!\sel_beq~10_combout\ & (\incrementaPC|Add0~113_sumout\)) # (\sel_beq~10_combout\ & 
-- ((\incrementaImediato|Add0~109_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_beq~9_combout\,
	datab => \ALT_INV_sel_beq~10_combout\,
	datac => \incrementaPC|ALT_INV_Add0~113_sumout\,
	datad => \incrementaImediato|ALT_INV_Add0~109_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[30]~28_combout\);

\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[30]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

\incrementaPC|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~117_sumout\ = SUM(( \PC|DOUT\(31) ) + ( GND ) + ( \incrementaPC|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(31),
	cin => \incrementaPC|Add0~114\,
	sumout => \incrementaPC|Add0~117_sumout\);

\incrementaImediato|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaImediato|Add0~113_sumout\ = SUM(( \ROM1|memROM~7_combout\ ) + ( \incrementaPC|Add0~117_sumout\ ) + ( \incrementaImediato|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~117_sumout\,
	cin => \incrementaImediato|Add0~110\,
	sumout => \incrementaImediato|Add0~113_sumout\);

\muxPC_BEQ_JMP|saida_MUX[31]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPC_BEQ_JMP|saida_MUX[31]~29_combout\ = (!\sel_beq~9_combout\ & (((\incrementaPC|Add0~117_sumout\)))) # (\sel_beq~9_combout\ & ((!\sel_beq~10_combout\ & (\incrementaPC|Add0~117_sumout\)) # (\sel_beq~10_combout\ & 
-- ((\incrementaImediato|Add0~113_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel_beq~9_combout\,
	datab => \ALT_INV_sel_beq~10_combout\,
	datac => \incrementaPC|ALT_INV_Add0~117_sumout\,
	datad => \incrementaImediato|ALT_INV_Add0~113_sumout\,
	combout => \muxPC_BEQ_JMP|saida_MUX[31]~29_combout\);

\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \muxPC_BEQ_JMP|saida_MUX[31]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( !\PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & (!\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~13_combout\);

\Registradores|saidaB[1]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[1]~22_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1068_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1068_combout\,
	combout => \Registradores|saidaB[1]~22_combout\);

\Registradores|saidaB[2]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[2]~23_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1073_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1073_combout\,
	combout => \Registradores|saidaB[2]~23_combout\);

\Registradores|saidaB[4]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[4]~24_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1083_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1083_combout\,
	combout => \Registradores|saidaB[4]~24_combout\);

\Registradores|saidaB[5]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[5]~25_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1088_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1088_combout\,
	combout => \Registradores|saidaB[5]~25_combout\);

\Registradores|saidaB[6]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[6]~26_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1093_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1093_combout\,
	combout => \Registradores|saidaB[6]~26_combout\);

\Registradores|saidaB[7]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[7]~27_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1098_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1098_combout\,
	combout => \Registradores|saidaB[7]~27_combout\);

\Registradores|saidaB[9]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[9]~28_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1108_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1108_combout\,
	combout => \Registradores|saidaB[9]~28_combout\);

\Registradores|saidaB[10]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[10]~29_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1113_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1113_combout\,
	combout => \Registradores|saidaB[10]~29_combout\);

\Registradores|saidaB[11]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[11]~30_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1118_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1118_combout\,
	combout => \Registradores|saidaB[11]~30_combout\);

\Registradores|saidaB[12]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|saidaB[12]~31_combout\ = (\Registradores|Equal0~0_combout\ & \Registradores|registrador~1123_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_Equal0~0_combout\,
	datab => \Registradores|ALT_INV_registrador~1123_combout\,
	combout => \Registradores|saidaB[12]~31_combout\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_func(0) <= \func[0]~output_o\;

ww_func(1) <= \func[1]~output_o\;

ww_func(2) <= \func[2]~output_o\;

ww_func(3) <= \func[3]~output_o\;

ww_func(4) <= \func[4]~output_o\;

ww_func(5) <= \func[5]~output_o\;

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_PC_OUT(9) <= \PC_OUT[9]~output_o\;

ww_PC_OUT(10) <= \PC_OUT[10]~output_o\;

ww_PC_OUT(11) <= \PC_OUT[11]~output_o\;

ww_PC_OUT(12) <= \PC_OUT[12]~output_o\;

ww_PC_OUT(13) <= \PC_OUT[13]~output_o\;

ww_PC_OUT(14) <= \PC_OUT[14]~output_o\;

ww_PC_OUT(15) <= \PC_OUT[15]~output_o\;

ww_PC_OUT(16) <= \PC_OUT[16]~output_o\;

ww_PC_OUT(17) <= \PC_OUT[17]~output_o\;

ww_PC_OUT(18) <= \PC_OUT[18]~output_o\;

ww_PC_OUT(19) <= \PC_OUT[19]~output_o\;

ww_PC_OUT(20) <= \PC_OUT[20]~output_o\;

ww_PC_OUT(21) <= \PC_OUT[21]~output_o\;

ww_PC_OUT(22) <= \PC_OUT[22]~output_o\;

ww_PC_OUT(23) <= \PC_OUT[23]~output_o\;

ww_PC_OUT(24) <= \PC_OUT[24]~output_o\;

ww_PC_OUT(25) <= \PC_OUT[25]~output_o\;

ww_PC_OUT(26) <= \PC_OUT[26]~output_o\;

ww_PC_OUT(27) <= \PC_OUT[27]~output_o\;

ww_PC_OUT(28) <= \PC_OUT[28]~output_o\;

ww_PC_OUT(29) <= \PC_OUT[29]~output_o\;

ww_PC_OUT(30) <= \PC_OUT[30]~output_o\;

ww_PC_OUT(31) <= \PC_OUT[31]~output_o\;

ww_opc(0) <= \opc[0]~output_o\;

ww_opc(1) <= \opc[1]~output_o\;

ww_opc(2) <= \opc[2]~output_o\;

ww_opc(3) <= \opc[3]~output_o\;

ww_opc(4) <= \opc[4]~output_o\;

ww_opc(5) <= \opc[5]~output_o\;

ww_imedia(0) <= \imedia[0]~output_o\;

ww_imedia(1) <= \imedia[1]~output_o\;

ww_imedia(2) <= \imedia[2]~output_o\;

ww_imedia(3) <= \imedia[3]~output_o\;

ww_imedia(4) <= \imedia[4]~output_o\;

ww_imedia(5) <= \imedia[5]~output_o\;

ww_imedia(6) <= \imedia[6]~output_o\;

ww_imedia(7) <= \imedia[7]~output_o\;

ww_imedia(8) <= \imedia[8]~output_o\;

ww_imedia(9) <= \imedia[9]~output_o\;

ww_imedia(10) <= \imedia[10]~output_o\;

ww_imedia(11) <= \imedia[11]~output_o\;

ww_imedia(12) <= \imedia[12]~output_o\;

ww_imedia(13) <= \imedia[13]~output_o\;

ww_imedia(14) <= \imedia[14]~output_o\;

ww_imedia(15) <= \imedia[15]~output_o\;

ww_ula_saida(0) <= \ula_saida[0]~output_o\;

ww_ula_saida(1) <= \ula_saida[1]~output_o\;

ww_ula_saida(2) <= \ula_saida[2]~output_o\;

ww_ula_saida(3) <= \ula_saida[3]~output_o\;

ww_ula_saida(4) <= \ula_saida[4]~output_o\;

ww_ula_saida(5) <= \ula_saida[5]~output_o\;

ww_ula_saida(6) <= \ula_saida[6]~output_o\;

ww_ula_saida(7) <= \ula_saida[7]~output_o\;

ww_ula_saida(8) <= \ula_saida[8]~output_o\;

ww_ula_saida(9) <= \ula_saida[9]~output_o\;

ww_ula_saida(10) <= \ula_saida[10]~output_o\;

ww_ula_saida(11) <= \ula_saida[11]~output_o\;

ww_ula_saida(12) <= \ula_saida[12]~output_o\;

ww_ula_saida(13) <= \ula_saida[13]~output_o\;

ww_ula_saida(14) <= \ula_saida[14]~output_o\;

ww_ula_saida(15) <= \ula_saida[15]~output_o\;

ww_ula_saida(16) <= \ula_saida[16]~output_o\;

ww_ula_saida(17) <= \ula_saida[17]~output_o\;

ww_ula_saida(18) <= \ula_saida[18]~output_o\;

ww_ula_saida(19) <= \ula_saida[19]~output_o\;

ww_ula_saida(20) <= \ula_saida[20]~output_o\;

ww_ula_saida(21) <= \ula_saida[21]~output_o\;

ww_ula_saida(22) <= \ula_saida[22]~output_o\;

ww_ula_saida(23) <= \ula_saida[23]~output_o\;

ww_ula_saida(24) <= \ula_saida[24]~output_o\;

ww_ula_saida(25) <= \ula_saida[25]~output_o\;

ww_ula_saida(26) <= \ula_saida[26]~output_o\;

ww_ula_saida(27) <= \ula_saida[27]~output_o\;

ww_ula_saida(28) <= \ula_saida[28]~output_o\;

ww_ula_saida(29) <= \ula_saida[29]~output_o\;

ww_ula_saida(30) <= \ula_saida[30]~output_o\;

ww_ula_saida(31) <= \ula_saida[31]~output_o\;

ww_RS_OUT(0) <= \RS_OUT[0]~output_o\;

ww_RS_OUT(1) <= \RS_OUT[1]~output_o\;

ww_RS_OUT(2) <= \RS_OUT[2]~output_o\;

ww_RS_OUT(3) <= \RS_OUT[3]~output_o\;

ww_RS_OUT(4) <= \RS_OUT[4]~output_o\;

ww_RS_OUT(5) <= \RS_OUT[5]~output_o\;

ww_RS_OUT(6) <= \RS_OUT[6]~output_o\;

ww_RS_OUT(7) <= \RS_OUT[7]~output_o\;

ww_RS_OUT(8) <= \RS_OUT[8]~output_o\;

ww_RS_OUT(9) <= \RS_OUT[9]~output_o\;

ww_RS_OUT(10) <= \RS_OUT[10]~output_o\;

ww_RS_OUT(11) <= \RS_OUT[11]~output_o\;

ww_RS_OUT(12) <= \RS_OUT[12]~output_o\;

ww_RS_OUT(13) <= \RS_OUT[13]~output_o\;

ww_RS_OUT(14) <= \RS_OUT[14]~output_o\;

ww_RS_OUT(15) <= \RS_OUT[15]~output_o\;

ww_RS_OUT(16) <= \RS_OUT[16]~output_o\;

ww_RS_OUT(17) <= \RS_OUT[17]~output_o\;

ww_RS_OUT(18) <= \RS_OUT[18]~output_o\;

ww_RS_OUT(19) <= \RS_OUT[19]~output_o\;

ww_RS_OUT(20) <= \RS_OUT[20]~output_o\;

ww_RS_OUT(21) <= \RS_OUT[21]~output_o\;

ww_RS_OUT(22) <= \RS_OUT[22]~output_o\;

ww_RS_OUT(23) <= \RS_OUT[23]~output_o\;

ww_RS_OUT(24) <= \RS_OUT[24]~output_o\;

ww_RS_OUT(25) <= \RS_OUT[25]~output_o\;

ww_RS_OUT(26) <= \RS_OUT[26]~output_o\;

ww_RS_OUT(27) <= \RS_OUT[27]~output_o\;

ww_RS_OUT(28) <= \RS_OUT[28]~output_o\;

ww_RS_OUT(29) <= \RS_OUT[29]~output_o\;

ww_RS_OUT(30) <= \RS_OUT[30]~output_o\;

ww_RS_OUT(31) <= \RS_OUT[31]~output_o\;

ww_RT_OUT(0) <= \RT_OUT[0]~output_o\;

ww_RT_OUT(1) <= \RT_OUT[1]~output_o\;

ww_RT_OUT(2) <= \RT_OUT[2]~output_o\;

ww_RT_OUT(3) <= \RT_OUT[3]~output_o\;

ww_RT_OUT(4) <= \RT_OUT[4]~output_o\;

ww_RT_OUT(5) <= \RT_OUT[5]~output_o\;

ww_RT_OUT(6) <= \RT_OUT[6]~output_o\;

ww_RT_OUT(7) <= \RT_OUT[7]~output_o\;

ww_RT_OUT(8) <= \RT_OUT[8]~output_o\;

ww_RT_OUT(9) <= \RT_OUT[9]~output_o\;

ww_RT_OUT(10) <= \RT_OUT[10]~output_o\;

ww_RT_OUT(11) <= \RT_OUT[11]~output_o\;

ww_RT_OUT(12) <= \RT_OUT[12]~output_o\;

ww_RT_OUT(13) <= \RT_OUT[13]~output_o\;

ww_RT_OUT(14) <= \RT_OUT[14]~output_o\;

ww_RT_OUT(15) <= \RT_OUT[15]~output_o\;

ww_RT_OUT(16) <= \RT_OUT[16]~output_o\;

ww_RT_OUT(17) <= \RT_OUT[17]~output_o\;

ww_RT_OUT(18) <= \RT_OUT[18]~output_o\;

ww_RT_OUT(19) <= \RT_OUT[19]~output_o\;

ww_RT_OUT(20) <= \RT_OUT[20]~output_o\;

ww_RT_OUT(21) <= \RT_OUT[21]~output_o\;

ww_RT_OUT(22) <= \RT_OUT[22]~output_o\;

ww_RT_OUT(23) <= \RT_OUT[23]~output_o\;

ww_RT_OUT(24) <= \RT_OUT[24]~output_o\;

ww_RT_OUT(25) <= \RT_OUT[25]~output_o\;

ww_RT_OUT(26) <= \RT_OUT[26]~output_o\;

ww_RT_OUT(27) <= \RT_OUT[27]~output_o\;

ww_RT_OUT(28) <= \RT_OUT[28]~output_o\;

ww_RT_OUT(29) <= \RT_OUT[29]~output_o\;

ww_RT_OUT(30) <= \RT_OUT[30]~output_o\;

ww_RT_OUT(31) <= \RT_OUT[31]~output_o\;
END structure;


