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
P 5650 3600
F 0 "U?" H 5650 2411 50  0000 C CNN
F 1 "AD6645" H 5650 2320 50  0000 C CNN
F 2 "Package_QFP:TQFP-52-1EP_10x10mm_P0.65mm_EP6.5x6.5mm" H 5650 2300 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD6645.pdf" H 5550 2350 50  0001 C CNN
	1    5650 3600
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LMV7219M5 U?
U 1 1 62AC1BCD
P 2850 4500
F 0 "U?" H 3194 4546 50  0000 L CNN
F 1 "LMV7219M5" H 3194 4455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2750 4300 50  0001 L CNN
F 3 "https://www.ti.com/lit/ds/symlink/lmv7219.pdf" H 2850 4700 50  0001 C CNN
	1    2850 4500
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:AD8001AR U?
U 1 1 62AC27A1
P 1700 3500
F 0 "U?" H 2044 3546 50  0000 L CNN
F 1 "AD8001AR" H 2044 3455 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1600 3300 50  0001 L CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ad8001.pdf" H 1850 3650 50  0001 C CNN
	1    1700 3500
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:AD8001AR U?
U 1 1 62AC3D9E
P 3750 3500
F 0 "U?" H 4094 3546 50  0000 L CNN
F 1 "AD8001AR" H 4094 3455 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3650 3300 50  0001 L CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ad8001.pdf" H 3900 3650 50  0001 C CNN
	1    3750 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 62ACCFEB
P 2250 5150
F 0 "RV?" H 2181 5196 50  0000 R CNN
F 1 "R_POT" H 2181 5105 50  0000 R CNN
F 2 "" H 2250 5150 50  0001 C CNN
F 3 "~" H 2250 5150 50  0001 C CNN
	1    2250 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 62ACDA88
P 1800 2900
F 0 "R?" V 1595 2900 50  0000 C CNN
F 1 "R_US" V 1686 2900 50  0000 C CNN
F 2 "" V 1840 2890 50  0001 C CNN
F 3 "~" H 1800 2900 50  0001 C CNN
	1    1800 2900
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 62ACFB48
P 3700 2900
F 0 "C?" V 3448 2900 50  0000 C CNN
F 1 "C" V 3539 2900 50  0000 C CNN
F 2 "" H 3738 2750 50  0001 C CNN
F 3 "~" H 3700 2900 50  0001 C CNN
	1    3700 2900
	0    1    1    0   
$EndComp
Text Notes 900  2800 0    50   ~ 10
Preamplifier
Text Notes 2850 4250 0    50   ~ 10
Comparator
Text Notes 3800 3200 0    50   ~ 10
Integrator
Text Notes 5850 2500 0    50   ~ 10
ADC
$Comp
L power:Earth #PWR?
U 1 1 62AE04F4
P 1250 3650
F 0 "#PWR?" H 1250 3400 50  0001 C CNN
F 1 "Earth" H 1250 3500 50  0001 C CNN
F 2 "" H 1250 3650 50  0001 C CNN
F 3 "~" H 1250 3650 50  0001 C CNN
	1    1250 3650
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 62AE10E7
P 2750 4950
F 0 "#PWR?" H 2750 4700 50  0001 C CNN
F 1 "Earth" H 2750 4800 50  0001 C CNN
F 2 "" H 2750 4950 50  0001 C CNN
F 3 "~" H 2750 4950 50  0001 C CNN
	1    2750 4950
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 62AE1D65
P 3650 3850
F 0 "#PWR?" H 3650 3600 50  0001 C CNN
F 1 "Earth" H 3650 3700 50  0001 C CNN
F 2 "" H 3650 3850 50  0001 C CNN
F 3 "~" H 3650 3850 50  0001 C CNN
	1    3650 3850
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 62AE2363
P 5650 5000
F 0 "#PWR?" H 5650 4750 50  0001 C CNN
F 1 "Earth" H 5650 4850 50  0001 C CNN
F 2 "" H 5650 5000 50  0001 C CNN
F 3 "~" H 5650 5000 50  0001 C CNN
	1    5650 5000
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 62AE289B
P 2250 5350
F 0 "#PWR?" H 2250 5100 50  0001 C CNN
F 1 "Earth" H 2250 5200 50  0001 C CNN
F 2 "" H 2250 5350 50  0001 C CNN
F 3 "~" H 2250 5350 50  0001 C CNN
	1    2250 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5000 5650 4800
Wire Wire Line
	2000 3500 2150 3500
Wire Wire Line
	3300 3500 3300 3400
Wire Wire Line
	3300 3400 3450 3400
Wire Wire Line
	3450 3600 3450 3800
Wire Wire Line
	3450 3800 3650 3800
Wire Wire Line
	3650 3800 3650 3850
Connection ~ 3650 3800
Wire Wire Line
	3300 3400 3300 2900
Wire Wire Line
	3300 2900 3550 2900
Connection ~ 3300 3400
Wire Wire Line
	3850 2900 4300 2900
Wire Wire Line
	4300 2900 4300 3500
Wire Wire Line
	4050 3500 4300 3500
Connection ~ 4300 3500
Wire Wire Line
	4300 3500 5250 3500
Wire Wire Line
	1250 3650 1250 3600
Wire Wire Line
	1250 3600 1400 3600
Wire Wire Line
	1600 3200 1600 3400
Wire Wire Line
	1600 3400 1400 3400
Connection ~ 1600 3400
Wire Wire Line
	1400 3400 1400 2900
Wire Wire Line
	1400 2900 1650 2900
Connection ~ 1400 3400
Wire Wire Line
	1950 2900 2150 2900
Wire Wire Line
	2150 2900 2150 3500
Connection ~ 2150 3500
Wire Wire Line
	2550 4400 2450 4400
Wire Wire Line
	2450 4400 2450 3500
Wire Wire Line
	2150 3500 2450 3500
Connection ~ 2450 3500
Wire Wire Line
	2450 3500 3300 3500
Wire Wire Line
	2750 4950 2750 4800
Wire Wire Line
	2550 4600 2250 4600
Wire Wire Line
	2250 4600 2250 5000
Wire Wire Line
	2250 5350 2250 5300
Wire Wire Line
	5250 2900 5150 2900
Wire Wire Line
	5150 2900 5150 2300
$Comp
L Device:C C?
U 1 1 62AFC302
P 5200 4650
F 0 "C?" H 5315 4696 50  0000 L CNN
F 1 "C" H 5315 4605 50  0000 L CNN
F 2 "" H 5238 4500 50  0001 C CNN
F 3 "~" H 5200 4650 50  0001 C CNN
	1    5200 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 62AFD0A8
P 4900 4650
F 0 "C?" H 5015 4696 50  0000 L CNN
F 1 "C" H 5015 4605 50  0000 L CNN
F 2 "" H 4938 4500 50  0001 C CNN
F 3 "~" H 4900 4650 50  0001 C CNN
	1    4900 4650
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 62AFE24E
P 5250 3200
F 0 "#PWR?" H 5250 2950 50  0001 C CNN
F 1 "Earth" H 5250 3050 50  0001 C CNN
F 2 "" H 5250 3200 50  0001 C CNN
F 3 "~" H 5250 3200 50  0001 C CNN
	1    5250 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3800 4750 3800
Wire Wire Line
	4750 3800 4750 4800
Wire Wire Line
	4750 4800 4900 4800
Wire Wire Line
	5200 4800 4900 4800
Connection ~ 4900 4800
Wire Wire Line
	5200 4800 5650 4800
Connection ~ 5200 4800
Connection ~ 5650 4800
Wire Wire Line
	5650 4800 5650 4700
Wire Wire Line
	5250 4500 5200 4500
Wire Wire Line
	4900 4500 4900 4300
Wire Wire Line
	4900 4300 5250 4300
$Comp
L ep4ce06e22:EP4CE06E22 U_?
U 1 2 62B0320A
P 7950 8250
F 0 "U_?" H 10644 8228 60  0000 L CNN
F 1 "EP4CE06E22" H 10644 8122 60  0000 L CNN
F 2 "Package_QFP:EQFP-144-1EP_20x20mm_P0.5mm_EP5x5mm_ThermalVias" H 15950 7450 60  0001 C CNN
F 3 "" H 15950 7450 60  0001 C CNN
	1    7950 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 6500 5300 6500
Wire Wire Line
	4300 3500 4300 6500
Wire Wire Line
	3150 6600 5300 6600
Wire Wire Line
	3150 4500 3150 6600
Wire Wire Line
	10600 6700 11200 6700
Wire Wire Line
	11200 6700 11200 2300
Wire Wire Line
	5150 2300 11200 2300
$EndSCHEMATC
