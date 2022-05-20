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
L Connector:Raspberry_Pi_2_3 J6
U 1 1 61B2BF42
P 6000 4350
F 0 "J6" H 6000 5831 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 6000 5740 50  0000 C CNN
F 2 "20211104-Library:Raspberry_Pi_GPIO_ScrewAttachment" H 6000 4350 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 6000 4350 50  0001 C CNN
	1    6000 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:DB15_Female_HighDensity_MountingHoles J4
U 1 1 61B2D9A8
P 2800 2400
F 0 "J4" H 2800 3175 50  0000 C CNN
F 1 "External" H 2800 3266 50  0000 C CNN
F 2 "20211104-Library:DSUB-15-HD-Female-Horixonal_P2.29x2.54mm_EdgePinOffset8.35mm_Mouting10.89mm" H 1850 2800 50  0001 C CNN
F 3 " ~" H 1850 2800 50  0001 C CNN
	1    2800 2400
	-1   0    0    1   
$EndComp
$Comp
L Connector:DB15_Female_HighDensity_MountingHoles J5
U 1 1 61B2F84D
P 2800 4450
F 0 "J5" H 2800 5225 50  0000 C CNN
F 1 "Central" H 2800 5316 50  0000 C CNN
F 2 "20211104-Library:DSUB-15-HD-Female-Horixonal_P2.29x2.54mm_EdgePinOffset8.35mm_Mouting10.89mm" H 1850 4850 50  0001 C CNN
F 3 " ~" H 1850 4850 50  0001 C CNN
	1    2800 4450
	-1   0    0    1   
$EndComp
$Comp
L Connector:DB15_Female_HighDensity_MountingHoles J8
U 1 1 61B3090B
P 9200 4750
F 0 "J8" H 9200 5617 50  0000 C CNN
F 1 "Supplimental" H 9200 5526 50  0000 C CNN
F 2 "20211104-Library:DSUB-15-HD-Female-Horixonal_P2.29x2.54mm_EdgePinOffset8.35mm_Mouting10.89mm" H 8250 5150 50  0001 C CNN
F 3 " ~" H 8250 5150 50  0001 C CNN
	1    9200 4750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack_MountingPin J3
U 1 1 61B38D07
P 2100 1200
F 0 "J3" H 2157 1517 50  0000 C CNN
F 1 "Barrel_Jack_MountingPin" H 2157 1426 50  0000 C CNN
F 2 "20211104-Library:BarrelJack_Horizontal_w_MP" H 2150 1160 50  0001 C CNN
F 3 "~" H 2150 1160 50  0001 C CNN
	1    2100 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C1
U 1 1 61B395CE
P 2800 1200
F 0 "C1" H 2888 1246 50  0000 L CNN
F 1 "0.1 uF" H 2888 1155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 2800 1200 50  0001 C CNN
F 3 "~" H 2800 1200 50  0001 C CNN
	1    2800 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C2
U 1 1 61B3A369
P 4150 1200
F 0 "C2" H 4238 1246 50  0000 L CNN
F 1 "10 uF" H 4238 1155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 4150 1200 50  0001 C CNN
F 3 "~" H 4150 1200 50  0001 C CNN
	1    4150 1200
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U1
U 1 1 61B3ABCA
P 3500 1100
F 0 "U1" H 3500 1342 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 3500 1251 50  0000 C CNN
F 2 "20211104-Library:3.3V_Regulator" H 3500 1300 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 3600 850 50  0001 C CNN
	1    3500 1100
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan M4
U 1 1 61B3CD50
P 7450 1600
F 0 "M4" H 7608 1696 50  0000 L CNN
F 1 "RPI Fan - GPIO Control" H 7608 1605 50  0000 L CNN
F 2 "20211104-Library:RPi_Fan_30mm_24mm" H 7450 1610 50  0001 C CNN
F 3 "~" H 7450 1610 50  0001 C CNN
	1    7450 1600
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan M3
U 1 1 61B3F20F
P 6800 1150
F 0 "M3" H 6958 1246 50  0000 L CNN
F 1 "Screen Fan - 5 V" H 6958 1155 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical (2)" H 6800 1160 50  0001 C CNN
F 3 "~" H 6800 1160 50  0001 C CNN
	1    6800 1150
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan M2
U 1 1 61B3FA08
P 6250 1600
F 0 "M2" H 6408 1696 50  0000 L CNN
F 1 "Fan Out - 3V" H 6408 1605 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical (2)" H 6250 1610 50  0001 C CNN
F 3 "~" H 6250 1610 50  0001 C CNN
	1    6250 1600
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan M1
U 1 1 61B3FE0D
P 5700 1150
F 0 "M1" H 5858 1246 50  0000 L CNN
F 1 "Fan In - 5 V" H 5858 1155 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical (2)" H 5700 1160 50  0001 C CNN
F 3 "~" H 5700 1160 50  0001 C CNN
	1    5700 1150
	1    0    0    -1  
$EndComp
Text Label 3100 2600 0    50   ~ 0
SDA
Text Label 3100 2400 0    50   ~ 0
SCL
Text Label 3100 2900 0    50   ~ 0
GND
Text Label 3100 2700 0    50   ~ 0
GND
Text Label 3100 2500 0    50   ~ 0
GND
Text Label 3100 2300 0    50   ~ 0
GND
Text Label 3100 2800 0    50   ~ 0
GPIO17
Text Label 3100 2200 0    50   ~ 0
GPIO
Text Label 3100 2100 0    50   ~ 0
GND
Text Label 2800 1700 0    50   ~ 0
GND
Text Label 3100 4650 0    50   ~ 0
SDA
Text Label 3100 4450 0    50   ~ 0
SCL
Text Label 3100 4950 0    50   ~ 0
GND
Text Label 3100 4750 0    50   ~ 0
GND
Text Label 3100 4550 0    50   ~ 0
GND
Text Label 3100 4350 0    50   ~ 0
GND
Text Label 3100 4850 0    50   ~ 0
GPIO22
Text Label 3100 4250 0    50   ~ 0
GPIO27
Text Label 3100 4150 0    50   ~ 0
GND
Text Label 2800 3750 0    50   ~ 0
GND
Text Label 10050 2650 2    50   ~ 0
SDA
Text Label 10050 2850 2    50   ~ 0
SCL
Text Label 10050 2350 2    50   ~ 0
GND
Text Label 10050 2550 2    50   ~ 0
GND
Text Label 10050 2750 2    50   ~ 0
GND
Text Label 10050 2950 2    50   ~ 0
GND
Text Label 10050 2450 2    50   ~ 0
GPIO05
Text Label 10050 3050 2    50   ~ 0
GPIO
Text Label 10050 3150 2    50   ~ 0
GND
Text Label 10350 3550 2    50   ~ 0
GND
Text Label 8900 4550 2    50   ~ 0
SDA
Text Label 8900 4750 2    50   ~ 0
SCL
Text Label 8900 4250 2    50   ~ 0
GND
Text Label 8900 4450 2    50   ~ 0
GND
Text Label 8900 4650 2    50   ~ 0
GND
Text Label 8900 4850 2    50   ~ 0
GND
Text Label 8900 4350 2    50   ~ 0
GPIO26
Text Label 8900 4950 2    50   ~ 0
GPIO
Text Label 8900 5050 2    50   ~ 0
GND
Text Label 9200 5450 2    50   ~ 0
GND
Text Label 2400 1100 0    50   ~ 0
5V
Text Label 2400 1300 0    50   ~ 0
GND
Text Label 3200 1100 0    50   ~ 0
5V-In
Text Label 3800 1100 0    50   ~ 0
3V-Out
Text Label 3500 1400 0    50   ~ 0
GND
Wire Wire Line
	2400 1100 2800 1100
Connection ~ 2800 1100
Wire Wire Line
	2800 1100 3050 1100
Wire Wire Line
	2400 1300 2800 1300
Wire Wire Line
	3200 1300 3200 1400
Wire Wire Line
	3200 1400 3500 1400
Connection ~ 2800 1300
Wire Wire Line
	2800 1300 3200 1300
Wire Wire Line
	3500 1400 3800 1400
Wire Wire Line
	3800 1400 3800 1300
Wire Wire Line
	3800 1300 4150 1300
Connection ~ 3500 1400
Wire Wire Line
	3800 1100 4150 1100
Wire Wire Line
	3050 1100 3050 700 
Connection ~ 3050 1100
Wire Wire Line
	3050 1100 3200 1100
Wire Wire Line
	6800 700  6800 850 
Wire Wire Line
	4150 1100 4850 1100
Wire Wire Line
	4850 1100 4850 750 
Wire Wire Line
	4850 750  6250 750 
Wire Wire Line
	6250 750  6250 1250
Connection ~ 4150 1100
Connection ~ 6800 700 
Wire Wire Line
	4150 1300 4900 1300
Connection ~ 4150 1300
Connection ~ 5700 1350
Wire Wire Line
	5700 1350 6800 1350
Wire Wire Line
	5200 1350 5700 1350
Wire Wire Line
	5700 850  5700 700 
Connection ~ 5700 700 
Wire Wire Line
	5700 700  6800 700 
Wire Wire Line
	5700 1350 5700 1800
Wire Wire Line
	5700 1800 6250 1800
Connection ~ 6250 1800
Wire Wire Line
	6250 1800 7300 1800
Wire Wire Line
	4850 1100 4850 1550
Connection ~ 4850 1100
Wire Wire Line
	4900 1300 4900 1600
Wire Wire Line
	4900 1600 3450 1600
Connection ~ 4900 1300
Wire Wire Line
	4900 1300 5200 1300
Wire Wire Line
	2800 1700 2800 1600
Connection ~ 2800 1600
Wire Wire Line
	2800 1600 2350 1600
Wire Wire Line
	3100 2600 4200 2600
Wire Wire Line
	4200 4650 3100 4650
Wire Wire Line
	3100 2400 4150 2400
Wire Wire Line
	4150 4450 3100 4450
Wire Wire Line
	8200 4550 8900 4550
Wire Wire Line
	8250 4750 8900 4750
$Comp
L Device:R R1
U 1 1 61BD565F
P 5300 2450
F 0 "R1" H 5370 2496 50  0000 L CNN
F 1 "R" H 5370 2405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5230 2450 50  0001 C CNN
F 3 "~" H 5300 2450 50  0001 C CNN
	1    5300 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 61BD6A97
P 5450 2250
F 0 "R2" H 5520 2296 50  0000 L CNN
F 1 "R" H 5520 2205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5380 2250 50  0001 C CNN
F 3 "~" H 5450 2250 50  0001 C CNN
	1    5450 2250
	1    0    0    -1  
$EndComp
Connection ~ 4200 2600
Connection ~ 4150 2400
Wire Wire Line
	5200 1300 5200 1350
Connection ~ 5450 2400
Wire Wire Line
	5450 2400 7300 2400
Connection ~ 5300 2600
Wire Wire Line
	5300 2600 7250 2600
Wire Wire Line
	4200 2600 5300 2600
Wire Wire Line
	4150 2400 5450 2400
Wire Wire Line
	3100 2100 3450 2100
Wire Wire Line
	3450 2100 3450 1600
Connection ~ 3450 1600
Wire Wire Line
	3450 1600 2800 1600
Wire Wire Line
	3100 2300 3450 2300
Wire Wire Line
	3450 2300 3450 2100
Connection ~ 3450 2100
Wire Wire Line
	3100 2500 3450 2500
Connection ~ 3450 2300
Wire Wire Line
	3100 2700 3450 2700
Wire Wire Line
	3450 2300 3450 2500
Connection ~ 3450 2500
Wire Wire Line
	3450 2500 3450 2700
Wire Wire Line
	3100 2900 3450 2900
Wire Wire Line
	3450 2900 3450 2700
Connection ~ 3450 2700
Wire Wire Line
	2800 3750 2350 3750
Connection ~ 2350 3750
Wire Wire Line
	2350 5200 3350 5200
Wire Wire Line
	3350 5200 3350 4950
Wire Wire Line
	3350 4950 3100 4950
Wire Wire Line
	3100 4750 3350 4750
Wire Wire Line
	3350 4750 3350 4950
Connection ~ 3350 4950
Wire Wire Line
	3100 4550 3350 4550
Wire Wire Line
	3350 4550 3350 4750
Connection ~ 3350 4750
Wire Wire Line
	3100 4350 3350 4350
Wire Wire Line
	3350 4350 3350 4550
Connection ~ 3350 4550
Wire Wire Line
	3100 4150 3350 4150
Wire Wire Line
	3350 4150 3350 4350
Connection ~ 3350 4350
Wire Wire Line
	7300 1800 7300 1950
Wire Wire Line
	7300 1950 7950 1950
Wire Wire Line
	9100 2350 10050 2350
Connection ~ 7300 1800
Wire Wire Line
	7300 1800 7450 1800
Wire Wire Line
	10050 2550 9100 2550
Wire Wire Line
	10050 2750 9100 2750
Wire Wire Line
	9100 2950 10050 2950
Wire Wire Line
	10050 3150 9100 3150
Wire Wire Line
	10350 3550 9100 3550
Wire Wire Line
	7950 4250 8900 4250
Wire Wire Line
	8900 4450 7950 4450
Wire Wire Line
	7950 4450 7950 4250
Connection ~ 7950 4250
Wire Wire Line
	8900 4650 7950 4650
Connection ~ 7950 4450
Wire Wire Line
	8900 4850 7950 4850
Wire Wire Line
	7950 4450 7950 4650
Connection ~ 7950 4650
Wire Wire Line
	8900 5050 7950 5050
Wire Wire Line
	7950 4650 7950 4850
Connection ~ 7950 4850
Wire Wire Line
	7950 4850 7950 5050
Wire Wire Line
	9200 5450 7950 5450
Wire Wire Line
	7950 5450 7950 5050
Connection ~ 7950 5050
Wire Wire Line
	6800 3750 7250 3750
Wire Wire Line
	7250 3750 7250 2600
Connection ~ 7250 2600
Wire Wire Line
	7250 2600 8200 2600
Wire Wire Line
	7300 2400 7300 3850
Wire Wire Line
	7300 3850 6800 3850
Connection ~ 7300 2400
Wire Wire Line
	7300 2400 8250 2400
Text Label 7800 1150 0    50   ~ 0
GPIO04
Wire Wire Line
	5200 4950 4250 4950
Wire Wire Line
	4250 4950 4250 6150
Wire Wire Line
	4250 6150 8000 6150
Wire Wire Line
	8000 6150 8000 4350
Wire Wire Line
	8000 4350 8900 4350
Wire Wire Line
	5200 3850 4250 3850
Wire Wire Line
	4250 2800 3100 2800
Wire Wire Line
	5200 4550 4250 4550
Wire Wire Line
	4250 4550 4250 4850
Wire Wire Line
	5200 5050 4300 5050
Wire Wire Line
	4300 5050 4300 4250
Wire Wire Line
	4300 4250 3100 4250
NoConn ~ 3100 4050
NoConn ~ 2500 4050
NoConn ~ 2500 4250
NoConn ~ 2500 4450
NoConn ~ 2500 4650
NoConn ~ 2500 4850
NoConn ~ 2500 2800
NoConn ~ 2500 2600
NoConn ~ 2500 2400
NoConn ~ 2500 2200
NoConn ~ 2500 2000
NoConn ~ 3100 2000
NoConn ~ 10650 2450
NoConn ~ 10650 2650
NoConn ~ 10650 2850
NoConn ~ 10650 3050
NoConn ~ 10650 3250
NoConn ~ 10050 3250
NoConn ~ 9500 4350
NoConn ~ 9500 4550
NoConn ~ 9500 4750
NoConn ~ 9500 4950
NoConn ~ 9500 5150
NoConn ~ 8900 5150
NoConn ~ 5800 3050
NoConn ~ 5900 3050
NoConn ~ 6100 3050
NoConn ~ 6200 3050
NoConn ~ 5600 5650
NoConn ~ 5700 5650
NoConn ~ 5800 5650
NoConn ~ 5900 5650
NoConn ~ 6000 5650
NoConn ~ 6100 5650
NoConn ~ 6200 5650
NoConn ~ 6300 5650
NoConn ~ 5200 3450
NoConn ~ 5200 3550
NoConn ~ 5200 3750
NoConn ~ 5200 3950
NoConn ~ 5200 4150
NoConn ~ 5200 4250
NoConn ~ 5200 4350
NoConn ~ 5200 4650
NoConn ~ 5200 4750
NoConn ~ 5200 4850
NoConn ~ 6800 5150
NoConn ~ 6800 5050
NoConn ~ 6800 4850
NoConn ~ 6800 4750
NoConn ~ 6800 4650
NoConn ~ 6800 4550
NoConn ~ 6800 4450
NoConn ~ 6800 4250
NoConn ~ 6800 3550
NoConn ~ 6800 3450
$Comp
L 20211209-HAT-VGAo-rescue:MAX4658-2021-12-KiCadLibrary U2
U 1 1 61CA5818
P 7300 700
F 0 "U2" H 7450 765 50  0000 C CNN
F 1 "MAX4658" H 7450 674 50  0000 C CNN
F 2 "20211104-Library:MAX4658" H 7450 750 50  0001 C CNN
F 3 "" H 7450 750 50  0001 C CNN
	1    7300 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 700  7100 700 
Wire Wire Line
	7100 900  7100 700 
Connection ~ 7100 700 
Wire Wire Line
	7100 700  11000 700 
Wire Wire Line
	7800 900  8250 900 
Wire Wire Line
	8250 900  8250 1200
Wire Wire Line
	8250 1200 7450 1200
Wire Wire Line
	7450 1200 7450 1300
Wire Wire Line
	7100 1100 6900 1100
Wire Wire Line
	6900 1100 6900 1350
Wire Wire Line
	6900 1350 6800 1350
Connection ~ 6800 1350
Wire Wire Line
	6250 1250 6600 1250
Wire Wire Line
	6600 1250 6600 1400
Wire Wire Line
	6600 1400 7100 1400
Wire Wire Line
	7100 1400 7100 1200
Connection ~ 6250 1250
Wire Wire Line
	6250 1250 6250 1300
Wire Wire Line
	7900 4050 7900 1150
Wire Wire Line
	7900 1150 7800 1150
Wire Wire Line
	6800 4050 7900 4050
Wire Wire Line
	3050 700  5700 700 
Wire Wire Line
	4850 1100 5300 1100
Wire Wire Line
	5300 1100 5300 2300
Wire Wire Line
	5450 2100 5450 1100
Wire Wire Line
	5450 1100 5300 1100
Connection ~ 5300 1100
NoConn ~ 2100 1500
Wire Wire Line
	2350 3750 2350 5200
Wire Wire Line
	2350 1600 2350 3750
Wire Wire Line
	4150 2400 4150 4450
Wire Wire Line
	4200 2600 4200 4650
Wire Wire Line
	4250 2800 4250 3850
Wire Wire Line
	3100 4850 4250 4850
$Comp
L Connector:DB15_Female_HighDensity_MountingHoles J7
U 1 1 61B32B7A
P 10350 2850
F 0 "J7" H 10350 3717 50  0000 C CNN
F 1 "Top" H 10350 3626 50  0000 C CNN
F 2 "20211104-Library:DSUB-15-HD-Female-Horixonal_P2.29x2.54mm_EdgePinOffset8.35mm_Mouting10.89mm" H 9400 3250 50  0001 C CNN
F 3 " ~" H 9400 3250 50  0001 C CNN
	1    10350 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2600 8200 2650
Wire Wire Line
	8250 2400 8250 2850
Wire Wire Line
	7950 1950 7950 3250
Wire Wire Line
	8300 4150 8300 2450
Wire Wire Line
	6800 4150 8300 4150
Wire Wire Line
	8300 2450 10050 2450
Connection ~ 8200 2650
Wire Wire Line
	8200 2650 8200 4550
Wire Wire Line
	8200 2650 10050 2650
Wire Wire Line
	8250 2850 10050 2850
Connection ~ 8250 2850
Wire Wire Line
	8250 2850 8250 4750
NoConn ~ 10050 3050
NoConn ~ 8900 4950
Wire Wire Line
	9100 2350 9100 2550
Connection ~ 9100 2550
Wire Wire Line
	9100 2550 9100 2750
Connection ~ 9100 2750
Wire Wire Line
	9100 2750 9100 2950
Connection ~ 9100 2950
Wire Wire Line
	9100 2950 9100 3150
Connection ~ 9100 3150
Wire Wire Line
	9100 3150 9100 3250
Wire Wire Line
	7950 3250 9100 3250
Connection ~ 7950 3250
Wire Wire Line
	7950 3250 7950 4250
Connection ~ 9100 3250
Wire Wire Line
	9100 3250 9100 3550
$EndSCHEMATC
