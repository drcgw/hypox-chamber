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
L 2021-12-KiCadLibrary:BME280 B1
U 1 1 61C1985E
P 6100 2300
F 0 "B1" H 6100 2375 50  0000 C CNN
F 1 "BME280" H 6100 2284 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 6100 2300 50  0001 C CNN
F 3 "" H 6100 2300 50  0001 C CNN
	1    6100 2300
	1    0    0    -1  
$EndComp
$Comp
L 2021-12-KiCadLibrary:MCP9808-B M-B1
U 1 1 61C1A656
P 6100 2950
F 0 "M-B1" H 6100 3031 50  0000 C CNN
F 1 "MCP9808-B" H 6100 2940 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6100 2950 50  0001 C CNN
F 3 "" H 6100 2950 50  0001 C CNN
	1    6100 2950
	1    0    0    -1  
$EndComp
$Comp
L 2021-12-KiCadLibrary:BH1750 BH1
U 1 1 61C1AD7C
P 6100 3600
F 0 "BH1" H 6100 3681 50  0000 C CNN
F 1 "BH1750" H 6100 3590 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6100 3600 50  0001 C CNN
F 3 "" H 6100 3600 50  0001 C CNN
	1    6100 3600
	1    0    0    -1  
$EndComp
$Comp
L 2021-12-KiCadLibrary:CCS811 C3
U 1 1 61C1B273
P 6100 4250
F 0 "C3" H 6075 4381 50  0000 C CNN
F 1 "CCS811" H 6075 4290 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6100 4250 50  0001 C CNN
F 3 "" H 6100 4250 50  0001 C CNN
	1    6100 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:DB15_Female_HighDensity_MountingHoles J2
U 1 1 61C1BD68
P 3700 3500
F 0 "J2" H 3700 4367 50  0000 C CNN
F 1 "DB15_Female_HighDensity_MountingHoles" H 3700 4276 50  0000 C CNN
F 2 "20211104-Library:DSUB-15-HD-Female-Horixonal_P2.29x2.54mm_EdgePinOffset8.35mm_Mouting10.89mm" H 2750 3900 50  0001 C CNN
F 3 " ~" H 2750 3900 50  0001 C CNN
	1    3700 3500
	-1   0    0    1   
$EndComp
$Comp
L Connector:Barrel_Jack_MountingPin J1
U 1 1 61C1C8B8
P 3000 2150
F 0 "J1" H 3057 2467 50  0000 C CNN
F 1 "Barrel_Jack_MountingPin" H 3057 2376 50  0000 C CNN
F 2 "20211104-Library:BarrelJack_Horizontal_w_MP" H 3050 2110 50  0001 C CNN
F 3 "~" H 3050 2110 50  0001 C CNN
	1    3000 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C1
U 1 1 61C1CF76
P 3500 2150
F 0 "C1" H 3588 2196 50  0000 L CNN
F 1 "0.1uF" H 3588 2105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 3500 2150 50  0001 C CNN
F 3 "~" H 3500 2150 50  0001 C CNN
	1    3500 2150
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U1
U 1 1 61C1D8F8
P 4000 2050
F 0 "U1" H 4000 2292 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 4000 2201 50  0000 C CNN
F 2 "20211104-Library:3.3V_Regulator" H 4000 2250 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 4100 1800 50  0001 C CNN
	1    4000 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C2
U 1 1 61C1EE67
P 4500 2150
F 0 "C2" H 4588 2196 50  0000 L CNN
F 1 "10uF" H 4588 2105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 4500 2150 50  0001 C CNN
F 3 "~" H 4500 2150 50  0001 C CNN
	1    4500 2150
	1    0    0    -1  
$EndComp
Text Label 4000 4000 0    50   ~ 0
GND
Text Label 4000 3900 0    50   ~ 0
GPIO_22
Text Label 4000 3800 0    50   ~ 0
GND
Text Label 4000 3700 0    50   ~ 0
SDA
Text Label 4000 3600 0    50   ~ 0
GND
Text Label 4000 3500 0    50   ~ 0
SCL
Text Label 4000 3400 0    50   ~ 0
GND
Text Label 4000 3300 0    50   ~ 0
GPIO27
Text Label 4000 3200 0    50   ~ 0
GND
Text Label 3700 2800 0    50   ~ 0
GND
NoConn ~ 4000 3100
NoConn ~ 3400 3100
NoConn ~ 3400 3300
NoConn ~ 3400 3500
NoConn ~ 3400 3700
NoConn ~ 3400 3900
Wire Wire Line
	3300 2050 3500 2050
Connection ~ 3500 2050
Wire Wire Line
	3500 2050 3700 2050
Wire Wire Line
	4300 2050 4500 2050
Wire Wire Line
	3300 2250 3500 2250
Wire Wire Line
	3750 2250 3750 2350
Wire Wire Line
	3750 2350 4000 2350
Connection ~ 3500 2250
Wire Wire Line
	3500 2250 3750 2250
Wire Wire Line
	4000 2350 4250 2350
Wire Wire Line
	4250 2350 4250 2250
Wire Wire Line
	4250 2250 4500 2250
Connection ~ 4000 2350
Wire Wire Line
	4500 2050 5750 2050
Wire Wire Line
	5750 2050 5750 2450
Wire Wire Line
	5750 2450 5900 2450
Connection ~ 4500 2050
Wire Wire Line
	4500 2250 4600 2250
Wire Wire Line
	5700 2250 5700 2550
Wire Wire Line
	5700 2550 5900 2550
Connection ~ 4500 2250
Wire Wire Line
	5750 2450 5750 3100
Wire Wire Line
	5750 3100 5900 3100
Connection ~ 5750 2450
Wire Wire Line
	5750 3100 5750 3750
Wire Wire Line
	5750 3750 5900 3750
Connection ~ 5750 3100
Wire Wire Line
	5750 3750 5750 4150
Wire Wire Line
	5750 4350 5900 4350
Connection ~ 5750 3750
Wire Wire Line
	5700 2550 5700 3200
Wire Wire Line
	5700 3200 5900 3200
Connection ~ 5700 2550
Wire Wire Line
	5700 3200 5700 3850
Wire Wire Line
	5700 3850 5900 3850
Connection ~ 5700 3200
Wire Wire Line
	5700 3850 5700 4450
Wire Wire Line
	5700 4450 5900 4450
Connection ~ 5700 3850
Wire Wire Line
	4000 3700 5600 3700
Wire Wire Line
	5600 4650 5900 4650
Wire Wire Line
	6300 3900 6400 3900
Wire Wire Line
	6400 3900 6400 3650
Wire Wire Line
	6400 3650 5600 3650
Wire Wire Line
	5600 3650 5600 3700
Connection ~ 5600 3700
Wire Wire Line
	5600 3700 5600 4650
Wire Wire Line
	5900 3400 5600 3400
Wire Wire Line
	5600 3400 5600 3650
Connection ~ 5600 3650
Wire Wire Line
	5900 2750 5600 2750
Wire Wire Line
	5600 2750 5600 3400
Connection ~ 5600 3400
Wire Wire Line
	5900 2650 5650 2650
Wire Wire Line
	5650 2650 5650 3300
Wire Wire Line
	5650 3300 5900 3300
Wire Wire Line
	5650 3300 5650 3500
Wire Wire Line
	5650 3950 5900 3950
Connection ~ 5650 3300
Wire Wire Line
	5650 3950 5650 4550
Wire Wire Line
	5650 4550 5900 4550
Connection ~ 5650 3950
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 61C2F2D2
P 6450 3200
F 0 "JP1" H 6450 3333 20  0000 C CNN
F 1 "SolderJumper_2_Open" H 6450 3290 20  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 6450 3200 50  0001 C CNN
F 3 "~" H 6450 3200 50  0001 C CNN
	1    6450 3200
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 61C30411
P 6450 3300
F 0 "JP2" H 6450 3433 20  0000 C CNN
F 1 "SolderJumper_2_Open" H 6450 3390 20  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 6450 3300 50  0001 C CNN
F 3 "~" H 6450 3300 50  0001 C CNN
	1    6450 3300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 61C30F32
P 6450 3400
F 0 "JP3" H 6450 3533 20  0000 C CNN
F 1 "SolderJumper_2_Open" H 6450 3490 20  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 6450 3400 50  0001 C CNN
F 3 "~" H 6450 3400 50  0001 C CNN
	1    6450 3400
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP4
U 1 1 61C31B53
P 6450 4000
F 0 "JP4" H 6450 4133 20  0000 C CNN
F 1 "SolderJumper_2_Open" H 6450 4090 20  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 6450 4000 50  0001 C CNN
F 3 "~" H 6450 4000 50  0001 C CNN
	1    6450 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3200 6600 3300
Wire Wire Line
	6600 4150 5750 4150
Connection ~ 6600 3300
Wire Wire Line
	6600 3300 6600 3400
Connection ~ 6600 3400
Wire Wire Line
	6600 3400 6600 4000
Connection ~ 6600 4000
Wire Wire Line
	6600 4000 6600 4150
Connection ~ 5750 4150
Wire Wire Line
	5750 4150 5750 4350
Wire Wire Line
	4000 3500 5650 3500
Connection ~ 5650 3500
Wire Wire Line
	5650 3500 5650 3950
Wire Wire Line
	4000 3200 4600 3200
Wire Wire Line
	4600 3200 4600 2650
Connection ~ 4600 2250
Wire Wire Line
	4600 2250 5700 2250
Wire Wire Line
	4000 3400 4600 3400
Wire Wire Line
	4600 3400 4600 3200
Connection ~ 4600 3200
Wire Wire Line
	4000 3600 4600 3600
Wire Wire Line
	4600 3600 4600 3400
Connection ~ 4600 3400
Wire Wire Line
	4000 3800 4600 3800
Wire Wire Line
	4600 3800 4600 3600
Connection ~ 4600 3600
Wire Wire Line
	4000 4000 4600 4000
Wire Wire Line
	4600 4000 4600 3800
Connection ~ 4600 3800
Wire Wire Line
	3700 2800 3700 2650
Wire Wire Line
	3700 2650 4600 2650
Connection ~ 4600 2650
Wire Wire Line
	4600 2650 4600 2250
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 61C3DE9A
P 5050 2900
F 0 "J3" H 5130 2892 50  0000 L CNN
F 1 "Conn_01x02" H 5130 2801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5050 2900 50  0001 C CNN
F 3 "~" H 5050 2900 50  0001 C CNN
	1    5050 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3300 4450 3300
Wire Wire Line
	4450 3300 4450 2900
Wire Wire Line
	4450 2900 4850 2900
Wire Wire Line
	4850 3000 4500 3000
Wire Wire Line
	4500 3000 4500 3900
Wire Wire Line
	4500 3900 4000 3900
Text Label 3600 2050 0    50   ~ 0
5V
Text Label 3350 2050 0    50   ~ 0
5V
Text Label 3350 2250 0    50   ~ 0
GND
Text Label 3600 2250 0    50   ~ 0
GND
Text Label 4300 2250 0    50   ~ 0
GND
Text Label 4350 2050 0    50   ~ 0
3.3V
Text Label 4600 2050 0    50   ~ 0
3.3V
$Comp
L Mechanical:MountingHole H1
U 1 1 61C43456
P 2200 2700
F 0 "H1" H 2300 2746 50  0000 L CNN
F 1 "MountingHole" H 2300 2655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad_TopBottom" H 2200 2700 50  0001 C CNN
F 3 "~" H 2200 2700 50  0001 C CNN
	1    2200 2700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 61C43A37
P 2200 2900
F 0 "H2" H 2300 2946 50  0000 L CNN
F 1 "MountingHole" H 2300 2855 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad_TopBottom" H 2200 2900 50  0001 C CNN
F 3 "~" H 2200 2900 50  0001 C CNN
	1    2200 2900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
