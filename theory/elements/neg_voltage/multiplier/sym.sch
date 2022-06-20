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
L pspice:DIODE D1
U 1 1 62B056A0
P 4200 3200
F 0 "D1" H 4200 3465 50  0000 C CNN
F 1 "DIODE" H 4200 3374 50  0000 C CNN
F 2 "" H 4200 3200 50  0001 C CNN
F 3 "~" H 4200 3200 50  0001 C CNN
F 4 "D" H 4200 3200 50  0001 C CNN "Spice_Primitive"
F 5 "D1N754" H 4200 3200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4200 3200 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/debian/embedded/electronic/KiCad-Spice-Library/Models/Diode/diode.lib" H 4200 3200 50  0001 C CNN "Spice_Lib_File"
	1    4200 3200
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V1
U 1 1 62B05C95
P 3450 3800
F 0 "V1" H 3678 3846 50  0000 L CNN
F 1 "dc 1" H 3678 3755 50  0000 L CNN
F 2 "" H 3450 3800 50  0001 C CNN
F 3 "~" H 3450 3800 50  0001 C CNN
	1    3450 3800
	1    0    0    -1  
$EndComp
$Comp
L pspice:R R1
U 1 1 62B06236
P 4700 3450
F 0 "R1" H 4768 3496 50  0000 L CNN
F 1 "1K" H 4768 3405 50  0000 L CNN
F 2 "" H 4700 3450 50  0001 C CNN
F 3 "~" H 4700 3450 50  0001 C CNN
	1    4700 3450
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND?
U 1 1 62B0672E
P 4700 4250
F 0 "#GND?" H 4700 4150 50  0001 C CNN
F 1 "0" H 4700 4339 50  0000 C CNN
F 2 "" H 4700 4250 50  0001 C CNN
F 3 "~" H 4700 4250 50  0001 C CNN
	1    4700 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3500 3450 3200
Wire Wire Line
	3450 3200 4000 3200
Wire Wire Line
	4400 3200 4700 3200
Wire Wire Line
	3450 4100 4700 4100
Wire Wire Line
	4700 3700 4700 4100
Connection ~ 4700 4100
Wire Wire Line
	4700 4100 4700 4250
Text Notes 2850 3400 0    50   ~ 0
.dc V1 0 10.5
$EndSCHEMATC
