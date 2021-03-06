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
U 1 1 61B69240
P 3350 2500
F 0 "0.1uF_1" H 3438 2546 50  0000 L CNN
F 1 "CP_Small" H 3438 2455 50  0000 L CNN
F 2 "20211104-Library:C_Disc_0.1uF_D3.8mm_W2.6mm_P2.50mm" H 3350 2500 50  0001 C CNN
F 3 "~" H 3350 2500 50  0001 C CNN
	1    3350 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small 10uF_1
U 1 1 61B699B0
P 4250 2500
F 0 "10uF_1" H 4338 2546 50  0000 L CNN
F 1 "CP_Small" H 4338 2455 50  0000 L CNN
F 2 "20211104-Library:CP_10uF_Radial_D6.3mm_P2.50mm" H 4250 2500 50  0001 C CNN
F 3 "~" H 4250 2500 50  0001 C CNN
	1    4250 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack_MountingPin 5V_PWRIN_1
U 1 1 61B69C69
P 2900 2500
F 0 "5V_PWRIN_1" H 2957 2817 50  0000 C CNN
F 1 "Barrel_Jack_MountingPin" H 2957 2726 50  0000 C CNN
F 2 "20211104-Library:BarrelJack_Horizontal_w_MP" H 2950 2460 50  0001 C CNN
F 3 "~" H 2950 2460 50  0001 C CNN
	1    2900 2500
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 3.3VoltReg_1
U 1 1 61B6A886
P 3800 2400
F 0 "3.3VoltReg_1" H 3800 2642 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 3800 2551 50  0000 C CNN
F 2 "20211104-Library:3.3V_Regulator" H 3800 2600 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 3900 2150 50  0001 C CNN
	1    3800 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x07 BME280/680
U 1 1 61B6C63D
P 6650 3050
F 0 "BME280/680" H 6730 3092 50  0000 L CNN
F 1 "Conn_01x07" H 6730 3001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 6650 3050 50  0001 C CNN
F 3 "~" H 6650 3050 50  0001 C CNN
	1    6650 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 MCP9808
U 1 1 61B6CA96
P 6650 3700
F 0 "MCP9808" H 6730 3692 50  0000 L CNN
F 1 "Conn_01x06" H 6730 3601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6650 3700 50  0001 C CNN
F 3 "~" H 6650 3700 50  0001 C CNN
	1    6650 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 CCS811
U 1 1 61B6CFD1
P 6650 4500
F 0 "CCS811" H 6730 4492 50  0000 L CNN
F 1 "Conn_01x08" H 6730 4401 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6650 4500 50  0001 C CNN
F 3 "~" H 6650 4500 50  0001 C CNN
	1    6650 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 BH1750
U 1 1 61B6D998
P 6650 5300
F 0 "BH1750" H 6730 5292 50  0000 L CNN
F 1 "Conn_01x06" H 6730 5201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6650 5300 50  0001 C CNN
F 3 "~" H 6650 5300 50  0001 C CNN
	1    6650 5300
	1    0    0    -1  
$EndComp
Text Label 3200 2400 0    50   ~ 0
5V
Text Label 3500 2400 0    50   ~ 0
5V
Text Label 4100 2400 0    50   ~ 0
3.3V
Text Label 4250 2400 0    50   ~ 0
3.3V
Text Label 4250 2600 0    50   ~ 0
GND
Text Label 3350 2600 0    50   ~ 0
GND
Text Label 3800 2700 0    50   ~ 0
GND
Text Label 3900 3150 0    50   ~ 0
GND
$Comp
L Connector:DB15_Female_HighDensity_MountingHoles J1
U 1 1 61B7A646
P 3900 3850
F 0 "J1" H 3900 4625 50  0000 C CNN
F 1 "DB15_Female_HighDensity_MountingHoles" H 3900 4716 50  0000 C CNN
F 2 "20211104-Library:DSUB-15-HD-Female-Horixonal_P2.29x2.54mm_EdgePinOffset8.35mm_Mouting10.89mm" H 2950 4250 50  0001 C CNN
F 3 " ~" H 2950 4250 50  0001 C CNN
	1    3900 3850
	-1   0    0    1   
$EndComp
Text Label 4200 3550 0    50   ~ 0
GND
Text Label 4200 3750 0    50   ~ 0
GND
Text Label 4200 3950 0    50   ~ 0
GND
Text Label 4200 4150 0    50   ~ 0
GND
Text Label 4200 4350 0    50   ~ 0
GND
Text Label 4200 3650 0    50   ~ 0
GPIO
Text Label 4200 3850 0    50   ~ 0
SCL
Text Label 4200 4050 0    50   ~ 0
SDA
Text Label 4200 4250 0    50   ~ 0
GPIO05
NoConn ~ 4200 3450
NoConn ~ 3600 3450
NoConn ~ 3600 3650
NoConn ~ 3600 3850
NoConn ~ 3600 4050
NoConn ~ 3600 4250
Text Label 6450 2750 2    50   ~ 0
3.3V
Text Label 6450 2950 2    50   ~ 0
GND
Text Label 6450 3050 2    50   ~ 0
SCL
Text Label 6450 3250 2    50   ~ 0
SDA
Text Label 6450 3500 2    50   ~ 0
3.3V
Text Label 6450 3600 2    50   ~ 0
GND
Text Label 6450 3700 2    50   ~ 0
SCL
Text Label 6450 3800 2    50   ~ 0
SDA
Text Label 6450 4200 2    50   ~ 0
3.3V
Text Label 6450 4400 2    50   ~ 0
GND
Text Label 6450 4500 2    50   ~ 0
SCL
Text Label 6450 4600 2    50   ~ 0
SDA
NoConn ~ 6450 3150
NoConn ~ 6450 3350
NoConn ~ 6450 2850
NoConn ~ 6450 3900
NoConn ~ 6450 4700
NoConn ~ 6450 4800
NoConn ~ 6450 4900
Text Label 6450 5100 2    50   ~ 0
3.3V
Text Label 6450 5300 2    50   ~ 0
GND
Text Label 6450 5400 2    50   ~ 0
SCL
Text Label 6450 5500 2    50   ~ 0
SDA
Text Label 6450 5600 2    50   ~ 0
ADDR
NoConn ~ 6450 5200
Wire Wire Line
	4200 4050 4500 4050
Wire Wire Line
	4450 3150 4450 3850
Wire Wire Line
	4450 3850 4200 3850
Wire Wire Line
	4500 4050 4500 3200
Wire Wire Line
	3900 3150 3900 3050
Wire Wire Line
	3900 3050 4850 3050
Connection ~ 4850 3050
Wire Wire Line
	4850 3050 4850 2800
Wire Wire Line
	4200 3550 4850 3550
Connection ~ 4850 3550
Wire Wire Line
	4850 3550 4850 3050
Wire Wire Line
	4200 3750 4850 3750
Wire Wire Line
	4850 3750 4850 3950
Wire Wire Line
	4850 3950 4200 3950
Connection ~ 4850 3750
Wire Wire Line
	4200 4150 4850 4150
Wire Wire Line
	4850 4150 4850 3950
Connection ~ 4850 3950
Wire Wire Line
	4200 4350 4850 4350
Wire Wire Line
	4850 4350 4850 4150
Connection ~ 4850 4150
Wire Wire Line
	3200 2400 3350 2400
Connection ~ 3350 2400
Wire Wire Line
	3350 2400 3500 2400
Wire Wire Line
	3200 2600 3350 2600
Wire Wire Line
	3550 2600 3550 2700
Wire Wire Line
	3550 2700 3800 2700
Connection ~ 3350 2600
Wire Wire Line
	3350 2600 3550 2600
Wire Wire Line
	3800 2700 4050 2700
Wire Wire Line
	4050 2700 4050 2600
Wire Wire Line
	4050 2600 4250 2600
Connection ~ 3800 2700
Wire Wire Line
	4100 2400 4250 2400
Wire Wire Line
	4250 2600 4850 2600
Connection ~ 4250 2600
Wire Wire Line
	4900 2400 4250 2400
Wire Wire Line
	4900 2400 4900 2750
Connection ~ 4250 2400
NoConn ~ 4200 4250
NoConn ~ 4200 3650
$Comp
L Mechanical:MountingHole H1
U 1 1 61BA2E02
P 5700 1650
F 0 "H1" H 5800 1696 50  0000 L CNN
F 1 "MountingHole" H 5800 1605 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad_TopBottom" H 5700 1650 50  0001 C CNN
F 3 "~" H 5700 1650 50  0001 C CNN
	1    5700 1650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 61BA3542
P 5700 1900
F 0 "H2" H 5800 1946 50  0000 L CNN
F 1 "MountingHole" H 5800 1855 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad_TopBottom" H 5700 1900 50  0001 C CNN
F 3 "~" H 5700 1900 50  0001 C CNN
	1    5700 1900
	1    0    0    -1  
$EndComp
NoConn ~ 4550 800 
Wire Wire Line
	4850 3550 4850 3750
Wire Wire Line
	6450 2750 5850 2750
Wire Wire Line
	6450 3500 5850 3500
Wire Wire Line
	5850 3500 5850 2750
Connection ~ 5850 2750
Wire Wire Line
	5850 2750 4900 2750
Wire Wire Line
	6450 4200 5850 4200
Wire Wire Line
	5850 4200 5850 4000
Connection ~ 5850 3500
Wire Wire Line
	6450 5100 5850 5100
Wire Wire Line
	5850 5100 5850 4200
Connection ~ 5850 4200
Wire Wire Line
	4850 2800 5900 2800
Wire Wire Line
	5900 2800 5900 2950
Wire Wire Line
	5900 2950 6450 2950
Connection ~ 4850 2800
Wire Wire Line
	4850 2800 4850 2600
Wire Wire Line
	6450 3600 5900 3600
Wire Wire Line
	5900 3600 5900 2950
Connection ~ 5900 2950
Connection ~ 5900 3600
Wire Wire Line
	6450 5300 5900 5300
Wire Wire Line
	6450 3050 5800 3050
Wire Wire Line
	5800 3050 5800 3150
Wire Wire Line
	5800 5400 6450 5400
Wire Wire Line
	6450 3700 5800 3700
Connection ~ 5800 3700
Wire Wire Line
	6450 4500 5800 4500
Wire Wire Line
	6450 5500 5750 5500
Wire Wire Line
	5750 5500 5750 4600
Wire Wire Line
	5750 3250 6450 3250
Wire Wire Line
	6450 3800 5750 3800
Connection ~ 5750 3800
Wire Wire Line
	5750 3800 5750 3250
Wire Wire Line
	6450 4600 5750 4600
Wire Wire Line
	4500 3200 5750 3200
Wire Wire Line
	5750 3200 5750 3250
Connection ~ 5750 3250
Wire Wire Line
	4450 3150 5800 3150
Connection ~ 5800 3150
Wire Wire Line
	5800 3150 5800 3700
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 623D44A1
P 6300 4000
F 0 "JP1" H 6300 4205 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6300 4114 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 6300 4000 50  0001 C CNN
F 3 "~" H 6300 4000 50  0001 C CNN
	1    6300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3600 5900 4400
Connection ~ 5750 4600
Connection ~ 5800 4500
Wire Wire Line
	5800 4500 5800 5400
Wire Wire Line
	5800 3700 5800 4500
Wire Wire Line
	5750 3800 5750 4600
Wire Wire Line
	5900 4400 6450 4400
Connection ~ 5900 4400
Wire Wire Line
	5900 4400 5900 5300
NoConn ~ 6450 4300
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 623E0CF9
P 6300 5600
F 0 "JP2" H 6300 5805 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6300 5714 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 6300 5600 50  0001 C CNN
F 3 "~" H 6300 5600 50  0001 C CNN
	1    6300 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4000 5850 4000
Connection ~ 5850 4000
Wire Wire Line
	5850 4000 5850 3500
Wire Wire Line
	5850 5100 5850 5600
Wire Wire Line
	5850 5600 6150 5600
Connection ~ 5850 5100
$EndSCHEMATC
