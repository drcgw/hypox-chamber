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
L Connector:DB15_Female_HighDensity_MountingHoles J2
U 1 1 61C9D369
P 5450 4050
F 0 "J2" H 5450 4917 50  0000 C CNN
F 1 "DB15_Female_HighDensity_MountingHoles" H 5450 4826 50  0000 C CNN
F 2 "20211104-Library:DSUB-15-HD-Female-Horixonal_P2.29x2.54mm_EdgePinOffset8.35mm_Mouting10.89mm" H 4500 4450 50  0001 C CNN
F 3 " ~" H 4500 4450 50  0001 C CNN
	1    5450 4050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Barrel_Jack_MountingPin J1
U 1 1 61C9D9A2
P 4100 3150
F 0 "J1" H 4157 3467 50  0000 C CNN
F 1 "Barrel_Jack_MountingPin" H 4157 3376 50  0000 C CNN
F 2 "20211104-Library:BarrelJack_Horizontal_w_MP" H 4150 3110 50  0001 C CNN
F 3 "~" H 4150 3110 50  0001 C CNN
	1    4100 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C1
U 1 1 61C9DF9E
P 4450 3150
F 0 "C1" H 4538 3196 50  0000 L CNN
F 1 "CP_Small" H 4538 3105 50  0000 L CNN
F 2 "20211104-Library:C_Disc_0.1uF_D3.8mm_W2.6mm_P2.50mm" H 4450 3150 50  0001 C CNN
F 3 "~" H 4450 3150 50  0001 C CNN
	1    4450 3150
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U1
U 1 1 61C9E158
P 4800 3050
F 0 "U1" H 4800 3292 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 4800 3201 50  0000 C CNN
F 2 "20211104-Library:3.3V_Regulator" H 4800 3250 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 4900 2800 50  0001 C CNN
	1    4800 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C2
U 1 1 61C9E5B6
P 5150 3150
F 0 "C2" H 5238 3196 50  0000 L CNN
F 1 "CP_Small" H 5238 3105 50  0000 L CNN
F 2 "20211104-Library:CP_10uF_Radial_D6.3mm_P2.50mm" H 5150 3150 50  0001 C CNN
F 3 "~" H 5150 3150 50  0001 C CNN
	1    5150 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J3
U 1 1 61C9E8CD
P 6750 3950
F 0 "J3" H 6830 3942 50  0000 L CNN
F 1 "Conn_01x08" H 6830 3851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6750 3950 50  0001 C CNN
F 3 "~" H 6750 3950 50  0001 C CNN
	1    6750 3950
	1    0    0    -1  
$EndComp
Text Label 6550 3650 2    50   ~ 0
3.3V
Text Label 6550 3750 2    50   ~ 0
GND
Text Label 6550 3850 2    50   ~ 0
SCL
Text Label 6550 3950 2    50   ~ 0
SDA
Text Label 6550 4150 2    50   ~ 0
A0
Text Label 6550 4250 2    50   ~ 0
A1
Text Label 6550 4350 2    50   ~ 0
A2
Text Label 4450 3050 2    50   ~ 0
5V
Text Label 5200 3050 2    50   ~ 0
3V
Text Label 5200 3250 2    50   ~ 0
GND
Text Label 4450 3250 2    50   ~ 0
GND
Text Label 5450 3350 2    50   ~ 0
GND
Text Label 5750 4250 0    50   ~ 0
SDA
Text Label 5750 4050 0    50   ~ 0
SCL
Text Label 5750 3950 0    50   ~ 0
GND
Text Label 5750 4150 0    50   ~ 0
GND
Text Label 5750 4350 0    50   ~ 0
GND
Text Label 5750 4550 0    50   ~ 0
GND
Text Label 5750 3750 0    50   ~ 0
GND
NoConn ~ 5750 3650
NoConn ~ 5750 3850
NoConn ~ 5750 4450
NoConn ~ 5150 4450
NoConn ~ 5150 4250
NoConn ~ 5150 4050
NoConn ~ 5150 3850
NoConn ~ 5150 3650
NoConn ~ 4050 3450
NoConn ~ 6550 4050
Wire Wire Line
	5100 3050 5150 3050
Wire Wire Line
	6550 3050 6550 3650
Connection ~ 5150 3050
Wire Wire Line
	4400 3050 4450 3050
Connection ~ 4450 3050
Wire Wire Line
	4450 3050 4500 3050
Wire Wire Line
	4400 3250 4450 3250
Wire Wire Line
	4550 3250 4550 3350
Wire Wire Line
	4550 3350 4800 3350
Wire Wire Line
	5050 3350 5050 3250
Wire Wire Line
	5050 3250 5150 3250
Wire Wire Line
	5450 3250 5450 3350
Connection ~ 4450 3250
Wire Wire Line
	4450 3250 4550 3250
Connection ~ 4800 3350
Wire Wire Line
	4800 3350 5050 3350
Connection ~ 5150 3250
Wire Wire Line
	5150 3250 5450 3250
Wire Wire Line
	6100 3750 6100 3250
Wire Wire Line
	6100 3250 5450 3250
Connection ~ 5450 3250
Wire Wire Line
	5750 3750 6100 3750
Connection ~ 6100 3750
Wire Wire Line
	6100 3750 6100 3950
Wire Wire Line
	6100 4550 5750 4550
Wire Wire Line
	5750 4350 6100 4350
Connection ~ 6100 4350
Wire Wire Line
	6100 4350 6100 4550
Wire Wire Line
	5750 4150 6100 4150
Connection ~ 6100 4150
Wire Wire Line
	6100 4150 6100 4350
Wire Wire Line
	5750 3950 6100 3950
Connection ~ 6100 3950
Wire Wire Line
	6100 3950 6100 4150
Wire Wire Line
	6150 3850 6150 4050
Wire Wire Line
	6150 4050 5750 4050
Wire Wire Line
	6200 3950 6200 4250
Wire Wire Line
	6200 4250 5750 4250
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 61CABC22
P 6400 4150
F 0 "JP1" H 6400 4355 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6400 4264 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm (2)" H 6400 4150 50  0001 C CNN
F 3 "~" H 6400 4150 50  0001 C CNN
	1    6400 4150
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 61CAC592
P 6400 4250
F 0 "JP2" H 6400 4455 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6400 4364 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm (2)" H 6400 4250 50  0001 C CNN
F 3 "~" H 6400 4250 50  0001 C CNN
	1    6400 4250
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 61CACA6D
P 6400 4350
F 0 "JP3" H 6400 4555 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6400 4464 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm (2)" H 6400 4350 50  0001 C CNN
F 3 "~" H 6400 4350 50  0001 C CNN
	1    6400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3950 6550 3950
Wire Wire Line
	6150 3850 6550 3850
Wire Wire Line
	6100 3750 6550 3750
Wire Wire Line
	5150 3050 6250 3050
Wire Wire Line
	6250 4350 6250 4250
Connection ~ 6250 3050
Wire Wire Line
	6250 3050 6550 3050
Connection ~ 6250 4150
Wire Wire Line
	6250 4150 6250 3050
Connection ~ 6250 4250
Wire Wire Line
	6250 4250 6250 4150
$Comp
L Mechanical:MountingHole H1
U 1 1 61B94933
P 2750 3850
F 0 "H1" H 2850 3896 50  0000 L CNN
F 1 "MountingHole" H 2850 3805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad_TopBottom" H 2750 3850 50  0001 C CNN
F 3 "~" H 2750 3850 50  0001 C CNN
	1    2750 3850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 61B95399
P 2750 4200
F 0 "H2" H 2850 4246 50  0000 L CNN
F 1 "MountingHole" H 2850 4155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad_TopBottom" H 2750 4200 50  0001 C CNN
F 3 "~" H 2750 4200 50  0001 C CNN
	1    2750 4200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
