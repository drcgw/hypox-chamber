EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:CP_Small 0.1uF_1
U 1 1 61BB53E8
P 2150 2400
F 0 "0.1uF_1" H 2238 2446 50  0000 L CNN
F 1 "CP_Small" H 2238 2355 50  0000 L CNN
F 2 "20211104-Library:C_Disc_0.1uF_D3.8mm_W2.6mm_P2.50mm" H 2150 2400 50  0001 C CNN
F 3 "~" H 2150 2400 50  0001 C CNN
	1    2150 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small 10uF_1
U 1 1 61BB572D
P 2950 2400
F 0 "10uF_1" H 3038 2446 50  0000 L CNN
F 1 "CP_Small" H 3038 2355 50  0000 L CNN
F 2 "20211104-Library:CP_10uF_Radial_D6.3mm_P2.50mm" H 2950 2400 50  0001 C CNN
F 3 "~" H 2950 2400 50  0001 C CNN
	1    2950 2400
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 3.3VoltReg_1
U 1 1 61BB5A26
P 2550 2300
F 0 "3.3VoltReg_1" H 2550 2542 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 2550 2451 50  0000 C CNN
F 2 "20211104-Library:3.3V_Regulator" H 2550 2500 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 2650 2050 50  0001 C CNN
	1    2550 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack_MountingPin PowerIn_1
U 1 1 61BB61AE
P 1750 2400
F 0 "PowerIn_1" H 1807 2717 50  0000 C CNN
F 1 "Barrel_Jack_MountingPin" H 1807 2626 50  0000 C CNN
F 2 "20211104-Library:BarrelJack_Horizontal_w_MP" H 1800 2360 50  0001 C CNN
F 3 "~" H 1800 2360 50  0001 C CNN
	1    1750 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector:DB15_Female_HighDensity_MountingHoles VGA_Central1
U 1 1 61BB6486
P 1750 4000
F 0 "VGA_Central1" H 1750 4775 50  0000 C CNN
F 1 "DB15_Female_HighDensity_MountingHoles" H 1750 4866 50  0000 C CNN
F 2 "20211104-Library:DSUB-15-HD-Female-Horixonal_P2.29x2.54mm_EdgePinOffset8.35mm_Mouting10.89mm" H 800 4400 50  0001 C CNN
F 3 " ~" H 800 4400 50  0001 C CNN
	1    1750 4000
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x07 BME280
U 1 1 61BB68C2
P 5000 3900
F 0 "BME280" H 5080 3942 50  0000 L CNN
F 1 "Conn_01x07" H 5080 3851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 5000 3900 50  0001 C CNN
F 3 "~" H 5000 3900 50  0001 C CNN
	1    5000 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 MCP9808
U 1 1 61BB6A8A
P 5000 4550
F 0 "MCP9808" H 5080 4542 50  0000 L CNN
F 1 "Conn_01x06" H 5080 4451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 5000 4550 50  0001 C CNN
F 3 "~" H 5000 4550 50  0001 C CNN
	1    5000 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 BH1750
U 1 1 61BB72E9
P 5000 5200
F 0 "BH1750" H 5080 5192 50  0000 L CNN
F 1 "Conn_01x06" H 5080 5101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 5000 5200 50  0001 C CNN
F 3 "~" H 5000 5200 50  0001 C CNN
	1    5000 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 A1
U 1 1 61BB8F72
P 6200 6500
F 0 "A1" H 5920 6433 50  0000 R CNN
F 1 "AudioJack3" H 5920 6524 50  0000 R CNN
F 2 "20211104-Library:20220314-UniversalAux" H 6200 6500 50  0001 C CNN
F 3 "~" H 6200 6500 50  0001 C CNN
	1    6200 6500
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x10 ADS1115
U 1 1 61BB9716
P 5000 6050
F 0 "ADS1115" H 5080 6042 50  0000 L CNN
F 1 "Conn_01x10" H 5080 5951 50  0000 L CNN
F 2 "20211104-Library:ADS1115" H 5000 6050 50  0001 C CNN
F 3 "~" H 5000 6050 50  0001 C CNN
	1    5000 6050
	1    0    0    -1  
$EndComp
Text Label 4800 3600 2    50   ~ 0
3.3VIn
Text Label 4800 3800 2    50   ~ 0
GND
Text Label 4800 3900 2    50   ~ 0
SCL
Text Label 4800 4100 2    50   ~ 0
SDA
Text Label 4800 4350 2    50   ~ 0
3.3VIn
Text Label 4800 4450 2    50   ~ 0
GND
Text Label 4800 4550 2    50   ~ 0
SCL
Text Label 4800 4650 2    50   ~ 0
SDA
Text Label 4800 4850 2    50   ~ 0
Ad0
Text Label 4800 5000 2    50   ~ 0
3.3VIn
Text Label 4800 5200 2    50   ~ 0
GND
Text Label 4800 5300 2    50   ~ 0
SCL
Text Label 4800 5400 2    50   ~ 0
SDA
Text Label 4800 5500 2    50   ~ 0
ADDR
Text Label 4800 5650 2    50   ~ 0
3.3VIn
Text Label 4800 5750 2    50   ~ 0
GND
Text Label 4800 5850 2    50   ~ 0
SCL
Text Label 4800 5950 2    50   ~ 0
SDA
Text Label 4800 6050 2    50   ~ 0
ADDR
Text Label 4800 6250 2    50   ~ 0
A0
Text Label 4800 6350 2    50   ~ 0
A1
NoConn ~ 4800 6150
NoConn ~ 4800 6450
NoConn ~ 4800 6550
NoConn ~ 4800 5100
NoConn ~ 4800 4750
NoConn ~ 4800 4200
NoConn ~ 4800 4000
NoConn ~ 4800 3700
Text Label 5800 6200 2    50   ~ 0
A0
Text Label 5800 6000 2    50   ~ 0
GND
Text Label 5800 6600 2    50   ~ 0
A1
Text Label 5800 6400 2    50   ~ 0
GND
Wire Wire Line
	2050 2300 2150 2300
Connection ~ 2150 2300
Wire Wire Line
	2150 2300 2250 2300
Wire Wire Line
	2050 2500 2150 2500
Wire Wire Line
	2300 2500 2300 2600
Wire Wire Line
	2300 2600 2550 2600
Connection ~ 2150 2500
Wire Wire Line
	2150 2500 2300 2500
Wire Wire Line
	2550 2600 2800 2600
Wire Wire Line
	2800 2600 2800 2500
Wire Wire Line
	2800 2500 2950 2500
Connection ~ 2550 2600
Wire Wire Line
	2850 2300 2950 2300
Text Label 2900 2300 2    50   ~ 0
3.3v
Text Label 2200 2300 2    50   ~ 0
5v
Text Label 2550 2600 2    50   ~ 0
GND
Text Label 2050 3700 0    50   ~ 0
GND
Text Label 2050 3800 0    50   ~ 0
GPIO27
Text Label 2050 3900 0    50   ~ 0
GND
Text Label 2050 4000 0    50   ~ 0
SCL
Text Label 2050 4100 0    50   ~ 0
GND
Text Label 2050 4200 0    50   ~ 0
SDA
Text Label 2050 4300 0    50   ~ 0
GND
Text Label 2050 4400 0    50   ~ 0
GPIO22
Text Label 2050 4500 0    50   ~ 0
GND
NoConn ~ 2050 3600
NoConn ~ 1450 3600
NoConn ~ 1450 3800
NoConn ~ 1450 4000
NoConn ~ 1450 4200
NoConn ~ 1450 4400
Text Label 1750 3300 0    50   ~ 0
GND
Wire Wire Line
	2950 2500 3500 2500
Wire Wire Line
	3500 2500 3500 3100
Wire Wire Line
	3500 3100 2150 3100
Wire Wire Line
	1750 3100 1750 3300
Connection ~ 2950 2500
Wire Wire Line
	2050 3700 2150 3700
Wire Wire Line
	2150 3700 2150 3100
Connection ~ 2150 3100
Wire Wire Line
	2150 3100 1750 3100
Wire Wire Line
	2050 3900 2150 3900
Wire Wire Line
	2150 3900 2150 3700
Connection ~ 2150 3700
Wire Wire Line
	2050 4100 2150 4100
Wire Wire Line
	2150 4100 2150 3900
Connection ~ 2150 3900
Wire Wire Line
	2050 4300 2150 4300
Connection ~ 2150 4100
Wire Wire Line
	2050 4500 2150 4500
Wire Wire Line
	2150 4100 2150 4300
Connection ~ 2150 4300
Wire Wire Line
	2150 4300 2150 4500
Wire Wire Line
	3500 3100 4450 3100
Wire Wire Line
	4450 3100 4450 3800
Wire Wire Line
	4450 3800 4800 3800
Connection ~ 3500 3100
Wire Wire Line
	4800 4450 4450 4450
Wire Wire Line
	4450 4450 4450 3800
Connection ~ 4450 3800
Wire Wire Line
	4800 5200 4450 5200
Wire Wire Line
	4450 5200 4450 4450
Connection ~ 4450 4450
Wire Wire Line
	4800 5750 4450 5750
Wire Wire Line
	4450 5750 4450 5550
Connection ~ 4450 5200
Wire Wire Line
	5450 5550 4450 5550
Connection ~ 4450 5550
Wire Wire Line
	4450 5550 4450 5200
Wire Wire Line
	2950 2300 3550 2300
Wire Wire Line
	3550 2300 3550 3150
Wire Wire Line
	3550 3150 4400 3150
Wire Wire Line
	4400 3150 4400 3600
Wire Wire Line
	4400 3600 4800 3600
Connection ~ 2950 2300
Wire Wire Line
	4400 3600 4400 4350
Wire Wire Line
	4400 4350 4800 4350
Connection ~ 4400 3600
Wire Wire Line
	4800 5000 4400 5000
Wire Wire Line
	4400 5000 4400 4850
Connection ~ 4400 4350
Wire Wire Line
	4800 5650 4400 5650
Wire Wire Line
	4400 5650 4400 5500
Connection ~ 4400 5000
Wire Wire Line
	2050 4000 2350 4000
Wire Wire Line
	2350 4000 2350 3200
Wire Wire Line
	2350 3200 4350 3200
Wire Wire Line
	4350 3200 4350 3900
Wire Wire Line
	4350 3900 4800 3900
Wire Wire Line
	4800 4550 4350 4550
Wire Wire Line
	4350 4550 4350 3900
Connection ~ 4350 3900
Wire Wire Line
	4800 5300 4350 5300
Wire Wire Line
	4350 5300 4350 4550
Connection ~ 4350 4550
Wire Wire Line
	4800 5850 4350 5850
Wire Wire Line
	4350 5850 4350 5300
Connection ~ 4350 5300
Wire Wire Line
	2050 4200 2400 4200
Wire Wire Line
	2400 4200 2400 3250
Wire Wire Line
	2400 3250 4300 3250
Wire Wire Line
	4300 3250 4300 4100
Wire Wire Line
	4300 4100 4800 4100
Wire Wire Line
	4300 4100 4300 4650
Wire Wire Line
	4300 4650 4800 4650
Connection ~ 4300 4100
Wire Wire Line
	4300 4650 4300 5400
Wire Wire Line
	4300 5400 4800 5400
Connection ~ 4300 4650
Wire Wire Line
	4300 5400 4300 5950
Wire Wire Line
	4300 5950 4800 5950
Connection ~ 4300 5400
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 61BDEC05
P 4650 4850
F 0 "JP1" H 4650 5055 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4650 4964 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4650 4850 50  0001 C CNN
F 3 "~" H 4650 4850 50  0001 C CNN
	1    4650 4850
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 61BE011F
P 4650 5500
F 0 "JP2" H 4650 5705 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4650 5614 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4650 5500 50  0001 C CNN
F 3 "~" H 4650 5500 50  0001 C CNN
	1    4650 5500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 61BE1CC0
P 4650 6050
F 0 "JP3" H 4650 6255 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4650 6164 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4650 6050 50  0001 C CNN
F 3 "~" H 4650 6050 50  0001 C CNN
	1    4650 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4850 4400 4850
Connection ~ 4400 4850
Wire Wire Line
	4400 4850 4400 4350
Wire Wire Line
	4500 5500 4400 5500
Connection ~ 4400 5500
Wire Wire Line
	4400 5500 4400 5000
Wire Wire Line
	4400 5650 4400 6050
Wire Wire Line
	4400 6050 4500 6050
Connection ~ 4400 5650
Wire Wire Line
	4800 6250 4400 6250
Wire Wire Line
	4400 6250 4400 6900
Wire Wire Line
	4400 6900 5500 6900
Wire Wire Line
	4800 6350 4450 6350
Wire Wire Line
	4450 6350 4450 6950
Wire Wire Line
	4450 6950 5550 6950
Wire Wire Line
	5550 6950 5550 6600
$Comp
L Mechanical:MountingHole H1
U 1 1 61C42834
P 6000 1750
F 0 "H1" H 6100 1796 50  0000 L CNN
F 1 "MountingHole" H 6100 1705 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad_TopBottom" H 6000 1750 50  0001 C CNN
F 3 "~" H 6000 1750 50  0001 C CNN
	1    6000 1750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 61C42D9C
P 6000 2000
F 0 "H2" H 6100 2046 50  0000 L CNN
F 1 "MountingHole" H 6100 1955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad_TopBottom" H 6000 2000 50  0001 C CNN
F 3 "~" H 6000 2000 50  0001 C CNN
	1    6000 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5550 5450 6000
Connection ~ 5450 6400
Wire Wire Line
	5450 6400 5450 6600
Connection ~ 5450 6000
Wire Wire Line
	5450 6000 5450 6400
$Comp
L Connector:AudioJack3 A0
U 1 1 61BB79CC
P 6200 6100
F 0 "A0" H 5920 6033 50  0000 R CNN
F 1 "AudioJack3" H 5920 6124 50  0000 R CNN
F 2 "20211104-Library:20220314-UniversalAux" H 6200 6100 50  0001 C CNN
F 3 "~" H 6200 6100 50  0001 C CNN
	1    6200 6100
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP4
U 1 1 62315226
P 5850 6100
F 0 "JP4" H 5850 6305 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 5850 6214 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 5850 6100 50  0001 C CNN
F 3 "~" H 5850 6100 50  0001 C CNN
	1    5850 6100
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP5
U 1 1 62317643
P 5850 6500
F 0 "JP5" H 5850 6705 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 5850 6614 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 5850 6500 50  0001 C CNN
F 3 "~" H 5850 6500 50  0001 C CNN
	1    5850 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6200 5500 6900
Wire Wire Line
	5450 6000 6000 6000
Wire Wire Line
	5500 6200 5600 6200
Wire Wire Line
	5600 6200 5600 6100
Wire Wire Line
	5600 6100 5700 6100
Connection ~ 5600 6200
Wire Wire Line
	5600 6200 6000 6200
Wire Wire Line
	5600 6600 5600 6500
Wire Wire Line
	5600 6500 5700 6500
Connection ~ 5600 6600
Wire Wire Line
	5600 6600 5550 6600
Wire Wire Line
	5600 6600 6000 6600
Wire Wire Line
	5450 6400 6000 6400
$EndSCHEMATC
