EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 11693 16535 portrait
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
L Analog_ADC:AD6645 U?
U 1 1 62AAF3E4
P 7300 4600
F 0 "U?" H 7300 3411 50  0000 C CNN
F 1 "AD6645" H 7300 3320 50  0000 C CNN
F 2 "Package_QFP:TQFP-52-1EP_10x10mm_P0.65mm_EP6.5x6.5mm" H 7300 3300 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD6645.pdf" H 7200 3350 50  0001 C CNN
	1    7300 4600
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LMV7219M5 U?
U 1 1 62AC1BCD
P 4500 5500
F 0 "U?" H 4844 5546 50  0000 L CNN
F 1 "LMV7219M5" H 4844 5455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4400 5300 50  0001 L CNN
F 3 "https://www.ti.com/lit/ds/symlink/lmv7219.pdf" H 4500 5700 50  0001 C CNN
	1    4500 5500
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:AD8001AR U?
U 1 1 62AC27A1
P 3350 4500
F 0 "U?" H 3694 4546 50  0000 L CNN
F 1 "AD8001AR" H 3694 4455 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3250 4300 50  0001 L CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ad8001.pdf" H 3500 4650 50  0001 C CNN
	1    3350 4500
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:AD8001AR U?
U 1 1 62AC3D9E
P 5400 4500
F 0 "U?" H 5744 4546 50  0000 L CNN
F 1 "AD8001AR" H 5744 4455 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5300 4300 50  0001 L CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ad8001.pdf" H 5550 4650 50  0001 C CNN
	1    5400 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 62ACCFEB
P 3900 6150
F 0 "RV?" H 3831 6196 50  0000 R CNN
F 1 "R_POT" H 3831 6105 50  0000 R CNN
F 2 "" H 3900 6150 50  0001 C CNN
F 3 "~" H 3900 6150 50  0001 C CNN
	1    3900 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 62ACDA88
P 3450 3900
F 0 "R?" V 3245 3900 50  0000 C CNN
F 1 "R_US" V 3336 3900 50  0000 C CNN
F 2 "" V 3490 3890 50  0001 C CNN
F 3 "~" H 3450 3900 50  0001 C CNN
	1    3450 3900
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 62ACFB48
P 5350 3900
F 0 "C?" V 5098 3900 50  0000 C CNN
F 1 "C" V 5189 3900 50  0000 C CNN
F 2 "" H 5388 3750 50  0001 C CNN
F 3 "~" H 5350 3900 50  0001 C CNN
	1    5350 3900
	0    1    1    0   
$EndComp
Text Notes 2550 3800 0    50   ~ 10
Preamplifier
Text Notes 4500 5250 0    50   ~ 10
Comparator
Text Notes 5450 4200 0    50   ~ 10
Integrator
Text Notes 7500 3500 0    50   ~ 10
ADC
$Comp
L power:Earth #PWR?
U 1 1 62AE04F4
P 2900 4650
F 0 "#PWR?" H 2900 4400 50  0001 C CNN
F 1 "Earth" H 2900 4500 50  0001 C CNN
F 2 "" H 2900 4650 50  0001 C CNN
F 3 "~" H 2900 4650 50  0001 C CNN
	1    2900 4650
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 62AE10E7
P 4400 5950
F 0 "#PWR?" H 4400 5700 50  0001 C CNN
F 1 "Earth" H 4400 5800 50  0001 C CNN
F 2 "" H 4400 5950 50  0001 C CNN
F 3 "~" H 4400 5950 50  0001 C CNN
	1    4400 5950
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 62AE1D65
P 5300 4850
F 0 "#PWR?" H 5300 4600 50  0001 C CNN
F 1 "Earth" H 5300 4700 50  0001 C CNN
F 2 "" H 5300 4850 50  0001 C CNN
F 3 "~" H 5300 4850 50  0001 C CNN
	1    5300 4850
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 62AE2363
P 7300 6000
F 0 "#PWR?" H 7300 5750 50  0001 C CNN
F 1 "Earth" H 7300 5850 50  0001 C CNN
F 2 "" H 7300 6000 50  0001 C CNN
F 3 "~" H 7300 6000 50  0001 C CNN
	1    7300 6000
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 62AE289B
P 3900 6350
F 0 "#PWR?" H 3900 6100 50  0001 C CNN
F 1 "Earth" H 3900 6200 50  0001 C CNN
F 2 "" H 3900 6350 50  0001 C CNN
F 3 "~" H 3900 6350 50  0001 C CNN
	1    3900 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 6000 7300 5800
Wire Wire Line
	3650 4500 3800 4500
Wire Wire Line
	4950 4500 4950 4400
Wire Wire Line
	4950 4400 5100 4400
Wire Wire Line
	5100 4600 5100 4800
Wire Wire Line
	5100 4800 5300 4800
Wire Wire Line
	5300 4800 5300 4850
Connection ~ 5300 4800
Wire Wire Line
	4950 4400 4950 3900
Wire Wire Line
	4950 3900 5200 3900
Connection ~ 4950 4400
Wire Wire Line
	5500 3900 5950 3900
Wire Wire Line
	5950 3900 5950 4500
Wire Wire Line
	5700 4500 5950 4500
Connection ~ 5950 4500
Wire Wire Line
	5950 4500 6900 4500
Wire Wire Line
	2900 4650 2900 4600
Wire Wire Line
	2900 4600 3050 4600
Wire Wire Line
	3250 4200 3250 4400
Wire Wire Line
	3250 4400 3050 4400
Connection ~ 3250 4400
Wire Wire Line
	3050 4400 3050 3900
Wire Wire Line
	3050 3900 3300 3900
Connection ~ 3050 4400
Wire Wire Line
	3600 3900 3800 3900
Wire Wire Line
	3800 3900 3800 4500
Connection ~ 3800 4500
Wire Wire Line
	4200 5400 4100 5400
Wire Wire Line
	4100 5400 4100 4500
Wire Wire Line
	3800 4500 4100 4500
Connection ~ 4100 4500
Wire Wire Line
	4100 4500 4950 4500
Wire Wire Line
	4400 5950 4400 5800
Wire Wire Line
	4200 5600 3900 5600
Wire Wire Line
	3900 5600 3900 6000
Wire Wire Line
	3900 6350 3900 6300
Wire Wire Line
	5950 4500 5950 6200
Wire Wire Line
	5950 6200 7700 6200
Wire Wire Line
	7700 6200 7700 5700
Wire Wire Line
	7700 5700 8050 5700
Wire Wire Line
	4800 5500 4800 6350
Wire Wire Line
	4800 6350 7800 6350
Wire Wire Line
	7800 6350 7800 5800
Wire Wire Line
	7800 5800 8050 5800
Wire Wire Line
	6900 3900 6800 3900
Wire Wire Line
	6800 3900 6800 3300
Wire Wire Line
	6800 3300 7900 3300
Wire Wire Line
	7900 3300 7900 3700
Wire Wire Line
	7900 3700 8050 3700
$Comp
L Device:C C?
U 1 1 62AFC302
P 6850 5650
F 0 "C?" H 6965 5696 50  0000 L CNN
F 1 "C" H 6965 5605 50  0000 L CNN
F 2 "" H 6888 5500 50  0001 C CNN
F 3 "~" H 6850 5650 50  0001 C CNN
	1    6850 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 62AFD0A8
P 6550 5650
F 0 "C?" H 6665 5696 50  0000 L CNN
F 1 "C" H 6665 5605 50  0000 L CNN
F 2 "" H 6588 5500 50  0001 C CNN
F 3 "~" H 6550 5650 50  0001 C CNN
	1    6550 5650
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 62AFE24E
P 6900 4200
F 0 "#PWR?" H 6900 3950 50  0001 C CNN
F 1 "Earth" H 6900 4050 50  0001 C CNN
F 2 "" H 6900 4200 50  0001 C CNN
F 3 "~" H 6900 4200 50  0001 C CNN
	1    6900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4800 6400 4800
Wire Wire Line
	6400 4800 6400 5800
Wire Wire Line
	6400 5800 6550 5800
Wire Wire Line
	6850 5800 6550 5800
Connection ~ 6550 5800
Wire Wire Line
	6850 5800 7300 5800
Connection ~ 6850 5800
Connection ~ 7300 5800
Wire Wire Line
	7300 5800 7300 5700
Wire Wire Line
	6900 5500 6850 5500
Wire Wire Line
	6550 5500 6550 5300
Wire Wire Line
	6550 5300 6900 5300
$Comp
L ep4ce15:EP4CE15F23C8_tut1 U?
U 1 1 62B099FF
P 9050 13250
F 0 "U?" H 8722 6822 60  0000 R CNN
F 1 "EP4CE15F23C8_tut1" H 8722 6928 60  0000 R CNN
F 2 "Package_QFP:LQFP-144_20x20mm_P0.5mm" H 9050 13250 60  0001 C CNN
F 3 "" H 9050 13250 60  0001 C CNN
	1    9050 13250
	-1   0    0    1   
$EndComp
$EndSCHEMATC
