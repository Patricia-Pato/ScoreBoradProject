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
L Regulator_Linear:LM2931-3.3_TO220 U?
U 1 1 5F54C2D4
P 10150 1250
F 0 "U?" H 10150 1492 50  0000 C CNN
F 1 "LM2931-3.3_TO220" H 10150 1401 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 10150 1475 50  0001 C CIN
F 3 "https://www.ti.com/lit/ds/symlink/lm2931-n.pdf" H 10150 1200 50  0001 C CNN
	1    10150 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5F54DF09
P 1250 1300
F 0 "J?" H 1358 1581 50  0000 C CNN
F 1 "Conn_01x04_Male" H 1358 1490 50  0000 C CNN
F 2 "" H 1250 1300 50  0001 C CNN
F 3 "~" H 1250 1300 50  0001 C CNN
	1    1250 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5F54E796
P 3500 1300
F 0 "J?" H 3472 1274 50  0000 R CNN
F 1 "Conn_01x04_Male" H 3472 1183 50  0000 R CNN
F 2 "" H 3500 1300 50  0001 C CNN
F 3 "~" H 3500 1300 50  0001 C CNN
	1    3500 1300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3300 1200 2000 1200
Wire Wire Line
	1450 1300 2250 1300
Wire Wire Line
	3300 1400 2500 1400
Wire Wire Line
	1450 1500 2800 1500
$Comp
L power:GND #PWR?
U 1 1 5F54F68A
P 2800 1600
F 0 "#PWR?" H 2800 1350 50  0001 C CNN
F 1 "GND" H 2805 1427 50  0000 C CNN
F 2 "" H 2800 1600 50  0001 C CNN
F 3 "" H 2800 1600 50  0001 C CNN
	1    2800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1600 2800 1500
Connection ~ 2800 1500
Wire Wire Line
	2800 1500 3300 1500
$Comp
L power:+5V #PWR?
U 1 1 5F54FBF0
P 2250 1100
F 0 "#PWR?" H 2250 950 50  0001 C CNN
F 1 "+5V" H 2265 1273 50  0000 C CNN
F 2 "" H 2250 1100 50  0001 C CNN
F 3 "" H 2250 1100 50  0001 C CNN
	1    2250 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1100 2250 1300
Connection ~ 2250 1300
Wire Wire Line
	2250 1300 3300 1300
$Comp
L power:+48V #PWR?
U 1 1 5F550294
P 2000 1100
F 0 "#PWR?" H 2000 950 50  0001 C CNN
F 1 "+48V" H 2015 1273 50  0000 C CNN
F 2 "" H 2000 1100 50  0001 C CNN
F 3 "" H 2000 1100 50  0001 C CNN
	1    2000 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1100 2000 1200
Connection ~ 2000 1200
Wire Wire Line
	2000 1200 1450 1200
$Comp
L power:+12V #PWR?
U 1 1 5F550B0A
P 2500 1100
F 0 "#PWR?" H 2500 950 50  0001 C CNN
F 1 "+12V" H 2515 1273 50  0000 C CNN
F 2 "" H 2500 1100 50  0001 C CNN
F 3 "" H 2500 1100 50  0001 C CNN
	1    2500 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1100 2500 1400
Connection ~ 2500 1400
Wire Wire Line
	2500 1400 1450 1400
$Comp
L power:+5V #PWR?
U 1 1 5F554C6E
P 9600 1150
F 0 "#PWR?" H 9600 1000 50  0001 C CNN
F 1 "+5V" H 9615 1323 50  0000 C CNN
F 2 "" H 9600 1150 50  0001 C CNN
F 3 "" H 9600 1150 50  0001 C CNN
	1    9600 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1150 9600 1250
Wire Wire Line
	9600 1250 9850 1250
$Comp
L power:+3.3V #PWR?
U 1 1 5F555D4C
P 10700 1150
F 0 "#PWR?" H 10700 1000 50  0001 C CNN
F 1 "+3.3V" H 10715 1323 50  0000 C CNN
F 2 "" H 10700 1150 50  0001 C CNN
F 3 "" H 10700 1150 50  0001 C CNN
	1    10700 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 1150 10700 1250
Wire Wire Line
	10700 1250 10450 1250
$Comp
L power:GND #PWR?
U 1 1 5F556689
P 10150 1700
F 0 "#PWR?" H 10150 1450 50  0001 C CNN
F 1 "GND" H 10155 1527 50  0000 C CNN
F 2 "" H 10150 1700 50  0001 C CNN
F 3 "" H 10150 1700 50  0001 C CNN
	1    10150 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5F556EB0
P 9600 1500
F 0 "C?" H 9718 1546 50  0000 L CNN
F 1 "10u" H 9718 1455 50  0000 L CNN
F 2 "" H 9638 1350 50  0001 C CNN
F 3 "~" H 9600 1500 50  0001 C CNN
	1    9600 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5F5571B8
P 10700 1500
F 0 "C?" H 10818 1546 50  0000 L CNN
F 1 "10u" H 10818 1455 50  0000 L CNN
F 2 "" H 10738 1350 50  0001 C CNN
F 3 "~" H 10700 1500 50  0001 C CNN
	1    10700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 1350 10700 1250
Connection ~ 10700 1250
Wire Wire Line
	9600 1250 9600 1350
Connection ~ 9600 1250
$Comp
L power:GND #PWR?
U 1 1 5F557D59
P 9600 1700
F 0 "#PWR?" H 9600 1450 50  0001 C CNN
F 1 "GND" H 9605 1527 50  0000 C CNN
F 2 "" H 9600 1700 50  0001 C CNN
F 3 "" H 9600 1700 50  0001 C CNN
	1    9600 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F558667
P 10700 1700
F 0 "#PWR?" H 10700 1450 50  0001 C CNN
F 1 "GND" H 10705 1527 50  0000 C CNN
F 2 "" H 10700 1700 50  0001 C CNN
F 3 "" H 10700 1700 50  0001 C CNN
	1    10700 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 1700 10700 1650
Wire Wire Line
	10150 1550 10150 1700
Wire Wire Line
	9600 1700 9600 1650
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5F567B53
P 1250 2750
F 0 "J?" H 1358 2931 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1358 2840 50  0000 C CNN
F 2 "" H 1250 2750 50  0001 C CNN
F 3 "~" H 1250 2750 50  0001 C CNN
	1    1250 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5F568A02
P 3500 2750
F 0 "J?" H 3472 2724 50  0000 R CNN
F 1 "Conn_01x02_Male" H 3472 2633 50  0000 R CNN
F 2 "" H 3500 2750 50  0001 C CNN
F 3 "~" H 3500 2750 50  0001 C CNN
	1    3500 2750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1450 2850 2550 2850
Text Label 2250 2950 3    50   ~ 0
SDA_5V
Text Label 2550 2950 3    50   ~ 0
SCL_5V
Wire Wire Line
	2250 2950 2250 2750
Connection ~ 2250 2750
Wire Wire Line
	2250 2750 1450 2750
$Comp
L Device:R R?
U 1 1 5F56E133
P 2250 2450
F 0 "R?" H 2320 2496 50  0000 L CNN
F 1 "1k" H 2320 2405 50  0000 L CNN
F 2 "" V 2180 2450 50  0001 C CNN
F 3 "~" H 2250 2450 50  0001 C CNN
	1    2250 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4950 5700 5000
Text Label 5700 4950 2    50   ~ 0
stop_one
Wire Wire Line
	4550 4950 4550 5000
Wire Wire Line
	5100 4950 5100 5000
Text Label 5100 4950 2    50   ~ 0
stop_ten
Wire Wire Line
	5100 3900 5100 4000
Text Label 5100 3900 0    50   ~ 0
roll_start
Wire Wire Line
	5100 4500 5100 4400
Wire Wire Line
	4550 5500 4550 5400
Wire Wire Line
	5100 5500 5100 5400
Wire Wire Line
	5700 5500 5700 5400
$Comp
L power:GND #PWR?
U 1 1 5F560EEC
P 5700 5500
F 0 "#PWR?" H 5700 5250 50  0001 C CNN
F 1 "GND" H 5705 5327 50  0000 C CNN
F 2 "" H 5700 5500 50  0001 C CNN
F 3 "" H 5700 5500 50  0001 C CNN
	1    5700 5500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F560D81
P 5100 5500
F 0 "#PWR?" H 5100 5250 50  0001 C CNN
F 1 "GND" H 5105 5327 50  0000 C CNN
F 2 "" H 5100 5500 50  0001 C CNN
F 3 "" H 5100 5500 50  0001 C CNN
	1    5100 5500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F55F8ED
P 4550 5500
F 0 "#PWR?" H 4550 5250 50  0001 C CNN
F 1 "GND" H 4555 5327 50  0000 C CNN
F 2 "" H 4550 5500 50  0001 C CNN
F 3 "" H 4550 5500 50  0001 C CNN
	1    4550 5500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F55F058
P 5100 4500
F 0 "#PWR?" H 5100 4250 50  0001 C CNN
F 1 "GND" H 5105 4327 50  0000 C CNN
F 2 "" H 5100 4500 50  0001 C CNN
F 3 "" H 5100 4500 50  0001 C CNN
	1    5100 4500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F55E8F8
P 5100 5200
F 0 "SW?" V 5054 5348 50  0000 L CNN
F 1 "SW_Push" V 5145 5348 50  0000 L CNN
F 2 "" H 5100 5400 50  0001 C CNN
F 3 "~" H 5100 5400 50  0001 C CNN
	1    5100 5200
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F55DF0B
P 4550 5200
F 0 "SW?" V 4504 5348 50  0000 L CNN
F 1 "SW_Push" V 4595 5348 50  0000 L CNN
F 2 "" H 4550 5400 50  0001 C CNN
F 3 "~" H 4550 5400 50  0001 C CNN
	1    4550 5200
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F55D8EB
P 5700 5200
F 0 "SW?" V 5654 5348 50  0000 L CNN
F 1 "SW_Push" V 5745 5348 50  0000 L CNN
F 2 "" H 5700 5400 50  0001 C CNN
F 3 "~" H 5700 5400 50  0001 C CNN
	1    5700 5200
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F55D0E3
P 5100 4200
F 0 "SW?" V 5054 4348 50  0000 L CNN
F 1 "SW_Push" V 5145 4348 50  0000 L CNN
F 2 "" H 5100 4400 50  0001 C CNN
F 3 "~" H 5100 4400 50  0001 C CNN
	1    5100 4200
	0    1    1    0   
$EndComp
Text Label 4550 4950 2    50   ~ 0
stop_hun
Wire Wire Line
	2850 5400 2700 5400
Text Label 2850 5400 0    50   ~ 0
SDA
Wire Wire Line
	2050 4600 2200 4600
Text Label 2050 4600 2    50   ~ 0
SCL
Wire Wire Line
	1700 4500 2200 4500
Wire Wire Line
	1700 4600 1700 4500
$Comp
L power:GND #PWR?
U 1 1 5F55A528
P 1700 4600
F 0 "#PWR?" H 1700 4350 50  0001 C CNN
F 1 "GND" H 1705 4427 50  0000 C CNN
F 2 "" H 1700 4600 50  0001 C CNN
F 3 "" H 1700 4600 50  0001 C CNN
	1    1700 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4500 2700 4500
Wire Wire Line
	3150 4400 3150 4500
$Comp
L power:+3.3V #PWR?
U 1 1 5F559457
P 3150 4400
F 0 "#PWR?" H 3150 4250 50  0001 C CNN
F 1 "+3.3V" H 3165 4573 50  0000 C CNN
F 2 "" H 3150 4400 50  0001 C CNN
F 3 "" H 3150 4400 50  0001 C CNN
	1    3150 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x14_Counter_Clockwise J?
U 1 1 5F54A45A
P 2400 5100
F 0 "J?" H 2450 5917 50  0000 C CNN
F 1 "Conn_02x14_Counter_Clockwise" H 2450 5826 50  0000 C CNN
F 2 "" H 2400 5100 50  0001 C CNN
F 3 "~" H 2400 5100 50  0001 C CNN
	1    2400 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F57CB15
P 2550 2450
F 0 "R?" H 2620 2496 50  0000 L CNN
F 1 "1k" H 2620 2405 50  0000 L CNN
F 2 "" V 2480 2450 50  0001 C CNN
F 3 "~" H 2550 2450 50  0001 C CNN
	1    2550 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F57CFB0
P 2250 2200
F 0 "#PWR?" H 2250 2050 50  0001 C CNN
F 1 "+5V" H 2265 2373 50  0000 C CNN
F 2 "" H 2250 2200 50  0001 C CNN
F 3 "" H 2250 2200 50  0001 C CNN
	1    2250 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F57D742
P 2550 2200
F 0 "#PWR?" H 2550 2050 50  0001 C CNN
F 1 "+5V" H 2565 2373 50  0000 C CNN
F 2 "" H 2550 2200 50  0001 C CNN
F 3 "" H 2550 2200 50  0001 C CNN
	1    2550 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2300 2250 2200
Wire Wire Line
	2550 2300 2550 2200
Wire Wire Line
	2250 2750 3300 2750
Wire Wire Line
	2550 2950 2550 2850
Connection ~ 2550 2850
Wire Wire Line
	2550 2850 3300 2850
Wire Wire Line
	2550 2850 2550 2600
Wire Wire Line
	2250 2750 2250 2600
$Comp
L Connector_Generic:Conn_02x04_Counter_Clockwise J?
U 1 1 5F582741
P 5450 2700
F 0 "J?" H 5500 3017 50  0000 C CNN
F 1 "Conn_02x04_Counter_Clockwise" H 5500 2926 50  0000 C CNN
F 2 "" H 5450 2700 50  0001 C CNN
F 3 "~" H 5450 2700 50  0001 C CNN
	1    5450 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F586CA9
P 4600 2050
F 0 "#PWR?" H 4600 1900 50  0001 C CNN
F 1 "+3.3V" H 4615 2223 50  0000 C CNN
F 2 "" H 4600 2050 50  0001 C CNN
F 3 "" H 4600 2050 50  0001 C CNN
	1    4600 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2050 4600 2600
Wire Wire Line
	4600 2600 5250 2600
$Comp
L power:+5V #PWR?
U 1 1 5F58850D
P 6200 2450
F 0 "#PWR?" H 6200 2300 50  0001 C CNN
F 1 "+5V" H 6215 2623 50  0000 C CNN
F 2 "" H 6200 2450 50  0001 C CNN
F 3 "" H 6200 2450 50  0001 C CNN
	1    6200 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2450 6200 2600
Wire Wire Line
	6200 2600 5750 2600
Text Label 5950 2800 0    50   ~ 0
SDA_5V
Text Label 5950 2700 0    50   ~ 0
SCL_5V
Wire Wire Line
	5950 2700 5750 2700
Wire Wire Line
	5750 2800 5950 2800
$Comp
L power:GND #PWR?
U 1 1 5F58ED78
P 6200 3000
F 0 "#PWR?" H 6200 2750 50  0001 C CNN
F 1 "GND" H 6205 2827 50  0000 C CNN
F 2 "" H 6200 3000 50  0001 C CNN
F 3 "" H 6200 3000 50  0001 C CNN
	1    6200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3000 6200 2900
Wire Wire Line
	6200 2900 5750 2900
NoConn ~ 5250 2900
Wire Wire Line
	5250 2800 5100 2800
Wire Wire Line
	4600 2700 4850 2700
Text Label 4600 2800 2    50   ~ 0
SDA
Text Label 4600 2700 2    50   ~ 0
SCL
$Comp
L Device:R R?
U 1 1 5F59601F
P 4850 2250
F 0 "R?" H 4920 2296 50  0000 L CNN
F 1 "1k" H 4920 2205 50  0000 L CNN
F 2 "" V 4780 2250 50  0001 C CNN
F 3 "~" H 4850 2250 50  0001 C CNN
	1    4850 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F5962D7
P 5100 2250
F 0 "R?" H 5170 2296 50  0000 L CNN
F 1 "1k" H 5170 2205 50  0000 L CNN
F 2 "" V 5030 2250 50  0001 C CNN
F 3 "~" H 5100 2250 50  0001 C CNN
	1    5100 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2700 4850 2400
Connection ~ 4850 2700
Wire Wire Line
	4850 2700 5250 2700
Wire Wire Line
	5100 2800 5100 2400
Connection ~ 5100 2800
Wire Wire Line
	5100 2800 4600 2800
$Comp
L power:+3.3V #PWR?
U 1 1 5F59F7B8
P 4850 2050
F 0 "#PWR?" H 4850 1900 50  0001 C CNN
F 1 "+3.3V" H 4865 2223 50  0000 C CNN
F 2 "" H 4850 2050 50  0001 C CNN
F 3 "" H 4850 2050 50  0001 C CNN
	1    4850 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F59FA04
P 5100 2050
F 0 "#PWR?" H 5100 1900 50  0001 C CNN
F 1 "+3.3V" H 5115 2223 50  0000 C CNN
F 2 "" H 5100 2050 50  0001 C CNN
F 3 "" H 5100 2050 50  0001 C CNN
	1    5100 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2050 4850 2100
Wire Wire Line
	5100 2100 5100 2050
Wire Wire Line
	7450 4950 7450 5000
Text Label 7450 4950 2    50   ~ 0
ShutDown
Wire Wire Line
	7450 5500 7450 5400
$Comp
L power:GND #PWR?
U 1 1 5F5B753C
P 7450 5500
F 0 "#PWR?" H 7450 5250 50  0001 C CNN
F 1 "GND" H 7455 5327 50  0000 C CNN
F 2 "" H 7450 5500 50  0001 C CNN
F 3 "" H 7450 5500 50  0001 C CNN
	1    7450 5500
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5B7542
P 7450 5200
F 0 "SW?" V 7404 5348 50  0000 L CNN
F 1 "SW_Push" V 7495 5348 50  0000 L CNN
F 2 "" H 7450 5400 50  0001 C CNN
F 3 "~" H 7450 5400 50  0001 C CNN
	1    7450 5200
	0    1    1    0   
$EndComp
Text Label 2100 5700 2    50   ~ 0
stop_hun
Text Label 2100 5600 2    50   ~ 0
stop_ten
Text Label 2100 5500 2    50   ~ 0
stop_one
Text Label 2100 5300 2    50   ~ 0
roll_start
Text Label 2100 5200 2    50   ~ 0
ShutDown
Wire Wire Line
	2200 5700 2100 5700
Wire Wire Line
	2100 5600 2200 5600
Wire Wire Line
	2200 5500 2100 5500
Wire Wire Line
	2100 5300 2200 5300
Wire Wire Line
	2200 5200 2100 5200
Wire Wire Line
	1700 5800 2200 5800
Wire Wire Line
	1700 5900 1700 5800
$Comp
L power:GND #PWR?
U 1 1 5F550DF4
P 1700 5900
F 0 "#PWR?" H 1700 5650 50  0001 C CNN
F 1 "GND" H 1705 5727 50  0000 C CNN
F 2 "" H 1700 5900 50  0001 C CNN
F 3 "" H 1700 5900 50  0001 C CNN
	1    1700 5900
	1    0    0    -1  
$EndComp
NoConn ~ 2200 5400
NoConn ~ 2200 5000
NoConn ~ 2200 5100
NoConn ~ 2200 4700
NoConn ~ 2700 5200
NoConn ~ 2700 5100
NoConn ~ 2700 4900
$EndSCHEMATC