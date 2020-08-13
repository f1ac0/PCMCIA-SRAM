EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PCMCIA SRAM"
Date "2020-04-19"
Rev "v1.0"
Comp "FLACO 2019 - Creative Commons Attribution-ShareAlike 4.0 license"
Comment1 "Inspired by Sakura designs https://github.com/Sakura-IT/ppa-pcmcia-sram"
Comment2 "Simplified to use 5v parts available in 2020"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:SPX3819M5-L-3-3 U1
U 1 1 5E9862A7
P 3050 1200
F 0 "U1" H 3050 1542 50  0000 C CNN
F 1 "SPX3819M5-L-3-3" H 3050 1451 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3050 1525 50  0001 C CNN
F 3 "https://www.exar.com/content/document.ashx?id=22106&languageid=1033&type=Datasheet&partnumber=SPX3819&filename=SPX3819.pdf&part=SPX3819" H 3050 1200 50  0001 C CNN
	1    3050 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x34_Top_Bottom J1
U 1 1 5E988DBF
P 2250 3700
F 0 "J1" H 2300 5517 50  0000 C CNN
F 1 "PCMCIA" H 2300 5426 50  0000 C CNN
F 2 "Sassa:pcmcia" H 2250 3700 50  0001 C CNN
F 3 "~" H 2250 3700 50  0001 C CNN
	1    2250 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5E98DC5E
P 3050 1500
F 0 "#PWR010" H 3050 1250 50  0001 C CNN
F 1 "GND" H 3055 1327 50  0000 C CNN
F 2 "" H 3050 1500 50  0001 C CNN
F 3 "" H 3050 1500 50  0001 C CNN
	1    3050 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E98ED6A
P 2050 2100
F 0 "#PWR03" H 2050 1850 50  0001 C CNN
F 1 "GND" V 2055 1972 50  0000 R CNN
F 2 "" H 2050 2100 50  0001 C CNN
F 3 "" H 2050 2100 50  0001 C CNN
	1    2050 2100
	0    1    1    0   
$EndComp
Text Label 2050 2200 2    50   ~ 0
D3
Text Label 2050 2300 2    50   ~ 0
D4
Text Label 2050 2400 2    50   ~ 0
D5
Text Label 2050 2500 2    50   ~ 0
D6
Text Label 2050 2600 2    50   ~ 0
D7
Text Label 2050 2700 2    50   ~ 0
_CE1
Text Label 2050 2800 2    50   ~ 0
A10
Text Label 2050 2900 2    50   ~ 0
_OE
Text Label 2050 3000 2    50   ~ 0
A11
Text Label 2050 3100 2    50   ~ 0
A9
Text Label 2050 3200 2    50   ~ 0
A8
Text Label 2050 3300 2    50   ~ 0
A13
Text Label 2050 3400 2    50   ~ 0
A14
Text Label 2050 3500 2    50   ~ 0
_WE
Text Label 2050 3600 2    50   ~ 0
READY
$Comp
L power:+5V #PWR06
U 1 1 5E993A64
P 2350 1100
F 0 "#PWR06" H 2350 950 50  0001 C CNN
F 1 "+5V" H 2365 1273 50  0000 C CNN
F 2 "" H 2350 1100 50  0001 C CNN
F 3 "" H 2350 1100 50  0001 C CNN
	1    2350 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5E998922
P 2050 3700
F 0 "#PWR04" H 2050 3550 50  0001 C CNN
F 1 "+5V" V 2065 3828 50  0000 L CNN
F 2 "" H 2050 3700 50  0001 C CNN
F 3 "" H 2050 3700 50  0001 C CNN
	1    2050 3700
	0    -1   -1   0   
$EndComp
Text Label 2050 3900 2    50   ~ 0
A16
Text Label 2050 4000 2    50   ~ 0
A15
Text Label 2050 4100 2    50   ~ 0
A12
Text Label 2050 4200 2    50   ~ 0
A7
Text Label 2050 4300 2    50   ~ 0
A6
Text Label 2050 4400 2    50   ~ 0
A5
Text Label 2050 4500 2    50   ~ 0
A4
Text Label 2050 4600 2    50   ~ 0
A3
Text Label 2050 4700 2    50   ~ 0
A2
Text Label 2050 4800 2    50   ~ 0
A1
Text Label 2050 4900 2    50   ~ 0
A0
Text Label 2050 5000 2    50   ~ 0
D0
Text Label 2050 5100 2    50   ~ 0
D1
Text Label 2050 5200 2    50   ~ 0
D2
Text Label 2050 5300 2    50   ~ 0
WP
$Comp
L power:GND #PWR05
U 1 1 5E99EFF0
P 2050 5400
F 0 "#PWR05" H 2050 5150 50  0001 C CNN
F 1 "GND" V 2055 5272 50  0000 R CNN
F 2 "" H 2050 5400 50  0001 C CNN
F 3 "" H 2050 5400 50  0001 C CNN
	1    2050 5400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5E9A1305
P 2550 2100
F 0 "#PWR07" H 2550 1850 50  0001 C CNN
F 1 "GND" V 2555 1972 50  0000 R CNN
F 2 "" H 2550 2100 50  0001 C CNN
F 3 "" H 2550 2100 50  0001 C CNN
	1    2550 2100
	0    -1   -1   0   
$EndComp
Text Label 2550 2200 0    50   ~ 0
_CD1
Text Label 2550 2300 0    50   ~ 0
D11
Text Label 2550 2400 0    50   ~ 0
D12
Text Label 2550 2500 0    50   ~ 0
D13
Text Label 2550 2600 0    50   ~ 0
D14
Text Label 2550 2700 0    50   ~ 0
D15
Text Label 2550 2800 0    50   ~ 0
_CE2
Text Label 2550 2900 0    50   ~ 0
_VS1
Text Label 2550 3200 0    50   ~ 0
A17
Text Label 2550 3300 0    50   ~ 0
A18
Text Label 2550 3400 0    50   ~ 0
A19
Text Label 2550 3500 0    50   ~ 0
A20
Text Label 2550 3600 0    50   ~ 0
A21
Text Label 2550 3900 0    50   ~ 0
A22
Text Label 2550 4000 0    50   ~ 0
A23
Text Label 2550 4100 0    50   ~ 0
A24
Text Label 2550 4200 0    50   ~ 0
A25
Text Label 2550 4300 0    50   ~ 0
_VS2
Text Label 2550 4400 0    50   ~ 0
RESET
Text Label 2550 4500 0    50   ~ 0
_WAIT
Text Label 2550 4700 0    50   ~ 0
_REG
Text Label 2550 4800 0    50   ~ 0
BVD2
Text Label 2550 4900 0    50   ~ 0
BVD1
Text Label 2550 5000 0    50   ~ 0
D8
Text Label 2550 5100 0    50   ~ 0
D9
Text Label 2550 5200 0    50   ~ 0
D10
Text Label 2550 5300 0    50   ~ 0
_CD2
$Comp
L power:GND #PWR09
U 1 1 5E9A8E4D
P 2550 5400
F 0 "#PWR09" H 2550 5150 50  0001 C CNN
F 1 "GND" V 2555 5272 50  0000 R CNN
F 2 "" H 2550 5400 50  0001 C CNN
F 3 "" H 2550 5400 50  0001 C CNN
	1    2550 5400
	0    -1   -1   0   
$EndComp
NoConn ~ 2550 3000
NoConn ~ 2550 3100
NoConn ~ 2550 4600
NoConn ~ 2550 3800
NoConn ~ 2050 3800
$Comp
L Device:C_Small C1
U 1 1 5E9AFD92
P 2400 1200
F 0 "C1" H 2492 1246 50  0000 L CNN
F 1 "10u" H 2492 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2400 1200 50  0001 C CNN
F 3 "~" H 2400 1200 50  0001 C CNN
	1    2400 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5E9B05E1
P 3600 1200
F 0 "C2" H 3692 1246 50  0000 L CNN
F 1 "10u" H 3692 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3600 1200 50  0001 C CNN
F 3 "~" H 3600 1200 50  0001 C CNN
	1    3600 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR011
U 1 1 5E9B12B7
P 3700 1100
F 0 "#PWR011" H 3700 950 50  0001 C CNN
F 1 "+3.3V" H 3715 1273 50  0000 C CNN
F 2 "" H 3700 1100 50  0001 C CNN
F 3 "" H 3700 1100 50  0001 C CNN
	1    3700 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1100 2750 1200
Wire Wire Line
	2750 1100 2400 1100
Connection ~ 2750 1100
Connection ~ 2400 1100
Wire Wire Line
	2400 1100 2350 1100
Wire Wire Line
	2400 1300 2400 1500
Wire Wire Line
	2400 1500 3050 1500
Connection ~ 3050 1500
Wire Wire Line
	3050 1500 3600 1500
Wire Wire Line
	3600 1500 3600 1300
Wire Wire Line
	3700 1100 3600 1100
Connection ~ 3600 1100
Wire Wire Line
	3600 1100 3350 1100
NoConn ~ 3350 1200
$Comp
L Device:C_Small C3
U 1 1 5E9B3B63
P 4050 1200
F 0 "C3" H 4142 1246 50  0000 L CNN
F 1 "100n" H 4142 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4050 1200 50  0001 C CNN
F 3 "~" H 4050 1200 50  0001 C CNN
	1    4050 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5E9B4077
P 4850 1200
F 0 "C5" H 4942 1246 50  0000 L CNN
F 1 "100n" H 4942 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4850 1200 50  0001 C CNN
F 3 "~" H 4850 1200 50  0001 C CNN
	1    4850 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 5E9B4616
P 4050 1100
F 0 "#PWR012" H 4050 950 50  0001 C CNN
F 1 "+5V" H 4065 1273 50  0000 C CNN
F 2 "" H 4050 1100 50  0001 C CNN
F 3 "" H 4050 1100 50  0001 C CNN
	1    4050 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5E9B8FEF
P 4400 1200
F 0 "C4" H 4492 1246 50  0000 L CNN
F 1 "100n" H 4492 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4400 1200 50  0001 C CNN
F 3 "~" H 4400 1200 50  0001 C CNN
	1    4400 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5E9B9AEF
P 4050 1300
F 0 "#PWR013" H 4050 1050 50  0001 C CNN
F 1 "GND" H 4055 1127 50  0000 C CNN
F 2 "" H 4050 1300 50  0001 C CNN
F 3 "" H 4050 1300 50  0001 C CNN
	1    4050 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1100 4050 1100
Connection ~ 4050 1100
Wire Wire Line
	4400 1300 4050 1300
Connection ~ 4050 1300
$Comp
L power:+3.3V #PWR016
U 1 1 5E9BB2E8
P 4850 1100
F 0 "#PWR016" H 4850 950 50  0001 C CNN
F 1 "+3.3V" H 4865 1273 50  0000 C CNN
F 2 "" H 4850 1100 50  0001 C CNN
F 3 "" H 4850 1100 50  0001 C CNN
	1    4850 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5E9BB97B
P 4850 1300
F 0 "#PWR017" H 4850 1050 50  0001 C CNN
F 1 "GND" H 4855 1127 50  0000 C CNN
F 2 "" H 4850 1300 50  0001 C CNN
F 3 "" H 4850 1300 50  0001 C CNN
	1    4850 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5E9BBD76
P 5200 1200
F 0 "C6" H 5292 1246 50  0000 L CNN
F 1 "100n" H 5292 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5200 1200 50  0001 C CNN
F 3 "~" H 5200 1200 50  0001 C CNN
	1    5200 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1100 4850 1100
Connection ~ 4850 1100
Wire Wire Line
	5200 1300 4850 1300
Connection ~ 4850 1300
Text Notes 4000 850  0    50   ~ 0
RAM decoupling
Text Notes 4800 850  0    50   ~ 0
CPLD decoupling
$Comp
L power:+3.3V #PWR014
U 1 1 5E9C2351
P 4350 2200
F 0 "#PWR014" H 4350 2050 50  0001 C CNN
F 1 "+3.3V" H 4365 2373 50  0000 C CNN
F 2 "" H 4350 2200 50  0001 C CNN
F 3 "" H 4350 2200 50  0001 C CNN
	1    4350 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5E9C636B
P 4350 5000
F 0 "#PWR015" H 4350 4750 50  0001 C CNN
F 1 "GND" H 4355 4827 50  0000 C CNN
F 2 "" H 4350 5000 50  0001 C CNN
F 3 "" H 4350 5000 50  0001 C CNN
	1    4350 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5E9C95D1
P 7350 5000
F 0 "#PWR019" H 7350 4750 50  0001 C CNN
F 1 "GND" H 7355 4827 50  0000 C CNN
F 2 "" H 7350 5000 50  0001 C CNN
F 3 "" H 7350 5000 50  0001 C CNN
	1    7350 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 5000 7350 5000
$Comp
L power:+5V #PWR020
U 1 1 5E9CBACF
P 7450 2100
F 0 "#PWR020" H 7450 1950 50  0001 C CNN
F 1 "+5V" H 7465 2273 50  0000 C CNN
F 2 "" H 7450 2100 50  0001 C CNN
F 3 "" H 7450 2100 50  0001 C CNN
	1    7450 2100
	1    0    0    -1  
$EndComp
Text Label 1300 3600 2    50   ~ 0
READY
$Comp
L power:+5V #PWR01
U 1 1 5E9D98E9
P 1300 3600
F 0 "#PWR01" H 1300 3450 50  0001 C CNN
F 1 "+5V" V 1315 3728 50  0000 L CNN
F 2 "" H 1300 3600 50  0001 C CNN
F 3 "" H 1300 3600 50  0001 C CNN
	1    1300 3600
	0    1    1    0   
$EndComp
Text Label 1300 3750 2    50   ~ 0
WP
$Comp
L power:GND #PWR02
U 1 1 5E9DAA3F
P 1300 3750
F 0 "#PWR02" H 1300 3500 50  0001 C CNN
F 1 "GND" V 1305 3622 50  0000 R CNN
F 2 "" H 1300 3750 50  0001 C CNN
F 3 "" H 1300 3750 50  0001 C CNN
	1    1300 3750
	0    -1   -1   0   
$EndComp
Text Label 1300 3850 2    50   ~ 0
_CD2
Text Label 1300 3950 2    50   ~ 0
_CD1
Wire Wire Line
	1300 3950 1300 3750
NoConn ~ 2550 2900
NoConn ~ 2550 3900
NoConn ~ 2550 4000
NoConn ~ 2550 4100
NoConn ~ 2550 4200
NoConn ~ 2550 4300
NoConn ~ 2550 4400
NoConn ~ 2550 4500
NoConn ~ 2550 4800
NoConn ~ 2550 4900
Text Label 6850 3700 2    50   ~ 0
D0
Text Label 6850 3800 2    50   ~ 0
D1
Text Label 6850 3900 2    50   ~ 0
D2
Text Label 6850 3300 2    50   ~ 0
D3
Text Label 6850 3400 2    50   ~ 0
D4
Text Label 6850 3500 2    50   ~ 0
D5
Text Label 6850 3600 2    50   ~ 0
D6
Text Label 6850 3200 2    50   ~ 0
D7
Text Label 6850 2900 2    50   ~ 0
D8
Text Label 6850 3000 2    50   ~ 0
D9
Text Label 6850 3100 2    50   ~ 0
D10
Text Label 6850 2500 2    50   ~ 0
D11
Text Label 6850 2600 2    50   ~ 0
D12
Text Label 6850 2700 2    50   ~ 0
D13
Text Label 6850 2800 2    50   ~ 0
D14
Text Label 6850 2400 2    50   ~ 0
D15_A0
Text Label 8050 4200 0    50   ~ 0
A1
Text Label 8050 4100 0    50   ~ 0
A2
Text Label 8050 4000 0    50   ~ 0
A3
Text Label 8050 3900 0    50   ~ 0
A4
Text Label 8050 3800 0    50   ~ 0
A5
Text Label 8050 4300 0    50   ~ 0
A6
Text Label 8050 3700 0    50   ~ 0
A7
Text Label 8050 3100 0    50   ~ 0
A8
Text Label 8050 2900 0    50   ~ 0
A9
Text Label 8050 2700 0    50   ~ 0
A10
Text Label 8050 2800 0    50   ~ 0
A11
Text Label 8050 3600 0    50   ~ 0
A12
Text Label 8050 3300 0    50   ~ 0
A13
Text Label 8050 3500 0    50   ~ 0
A14
Text Label 8050 2600 0    50   ~ 0
A15
Text Label 8050 2500 0    50   ~ 0
A16
Text Label 8050 3000 0    50   ~ 0
A17
Text Label 8050 3200 0    50   ~ 0
A18
Text Label 8050 3400 0    50   ~ 0
A19
$Comp
L power:GND #PWR018
U 1 1 5EA14D45
P 6850 4300
F 0 "#PWR018" H 6850 4050 50  0001 C CNN
F 1 "GND" V 6855 4172 50  0000 R CNN
F 2 "" H 6850 4300 50  0001 C CNN
F 3 "" H 6850 4300 50  0001 C CNN
	1    6850 4300
	0    1    1    0   
$EndComp
$Comp
L Sassa:XC9536XL-VQ44 U2
U 1 1 5EA1F4A1
P 4450 3600
F 0 "U2" H 3950 5000 50  0000 C CNN
F 1 "XC9536XL-VQ44" H 3950 4900 50  0000 C CNN
F 2 "Package_QFP:LQFP-44_10x10mm_P0.8mm" H 4450 3600 50  0001 C CNN
F 3 "xilinx/xc9536xl.pdf" H 4450 3600 50  0001 C CNN
	1    4450 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5000 4450 5000
Wire Wire Line
	4450 2200 4550 2200
Connection ~ 4350 5000
$Comp
L Sassa:CY62167ELL-45ZXI U4
U 1 1 5EA369B8
P 9400 3500
F 0 "U4" H 9050 4850 50  0000 C CNN
F 1 "CY62167ELL-45ZXI" H 8950 4750 50  0000 C CNN
F 2 "Package_SO:TSOP-I-48_18.4x12mm_P0.5mm" H 10450 2050 50  0001 C CNN
F 3 "https://www.cypress.com/part/cy62167ell-45zxi" H 9100 3950 50  0001 C CNN
	1    9400 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5EA369C2
P 9300 5000
F 0 "#PWR022" H 9300 4750 50  0001 C CNN
F 1 "GND" H 9305 4827 50  0000 C CNN
F 2 "" H 9300 5000 50  0001 C CNN
F 3 "" H 9300 5000 50  0001 C CNN
	1    9300 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5000 9300 5000
Connection ~ 9300 5000
$Comp
L power:+5V #PWR023
U 1 1 5EA369CE
P 9400 2100
F 0 "#PWR023" H 9400 1950 50  0001 C CNN
F 1 "+5V" H 9415 2273 50  0000 C CNN
F 2 "" H 9400 2100 50  0001 C CNN
F 3 "" H 9400 2100 50  0001 C CNN
	1    9400 2100
	1    0    0    -1  
$EndComp
Text Label 8800 2400 2    50   ~ 0
D15_A0
$Comp
L power:GND #PWR021
U 1 1 5EA36A10
P 8800 4300
F 0 "#PWR021" H 8800 4050 50  0001 C CNN
F 1 "GND" V 8805 4172 50  0000 R CNN
F 2 "" H 8800 4300 50  0001 C CNN
F 3 "" H 8800 4300 50  0001 C CNN
	1    8800 4300
	0    1    1    0   
$EndComp
Text Notes 7400 1800 0    50   ~ 0
LOW
Text Notes 9350 1800 0    50   ~ 0
HIGH
Text Label 6850 4100 2    50   ~ 0
_OE
Text Label 8800 4100 2    50   ~ 0
_OE
Text Label 6850 4200 2    50   ~ 0
_WE
Text Label 8800 4200 2    50   ~ 0
_WE
Text Label 8050 2400 0    50   ~ 0
A20
Text Label 5150 2700 0    50   ~ 0
A21
Text Label 5150 3100 0    50   ~ 0
A0
Text Label 6300 4650 2    50   ~ 0
CE_LOW
Text Label 8800 4400 2    50   ~ 0
CE_HIGH
Text Label 3750 3000 2    50   ~ 0
CE_LOW
Text Label 3750 3600 2    50   ~ 0
CE_HIGH
Text Label 8800 4700 2    50   ~ 0
_BYTE
Text Label 6850 4700 2    50   ~ 0
_BYTE
Text Label 3750 3700 2    50   ~ 0
_BYTE_A
Text Label 5150 2600 0    50   ~ 0
D15_A0_A
Text Label 5150 2800 0    50   ~ 0
D15_A
Wire Wire Line
	4450 2200 4350 2200
Connection ~ 4450 2200
Connection ~ 4350 2200
Text Label 5150 3200 0    50   ~ 0
D0
Text Label 5150 3300 0    50   ~ 0
D1
Text Label 5150 3400 0    50   ~ 0
D2
Text Label 3750 3800 2    50   ~ 0
D3
Text Label 3750 3500 2    50   ~ 0
D4
Text Label 3750 3400 2    50   ~ 0
D5
Text Label 3750 3300 2    50   ~ 0
D6
Text Label 3750 3200 2    50   ~ 0
D7
Text Label 3750 2600 2    50   ~ 0
A1
Text Label 3750 2700 2    50   ~ 0
A2
Text Label 3750 2500 2    50   ~ 0
A3
Text Label 3750 2400 2    50   ~ 0
A4
Text Label 5150 2400 0    50   ~ 0
A5
Text Label 5150 3000 0    50   ~ 0
_REG
Text Label 8050 4400 0    50   ~ 0
A21
Text Label 3750 3100 2    50   ~ 0
_CE1
Text Label 6850 4500 2    50   ~ 0
_CE2
Text Label 6850 4600 2    50   ~ 0
_CE1
Text Label 8800 4600 2    50   ~ 0
_CE1
Text Label 3750 2900 2    50   ~ 0
_CE2
Text Label 8800 4500 2    50   ~ 0
_CE2
$Comp
L Device:C_Small C7
U 1 1 5E9C1307
P 5600 1200
F 0 "C7" H 5692 1246 50  0000 L CNN
F 1 "100n" H 5692 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5600 1200 50  0001 C CNN
F 3 "~" H 5600 1200 50  0001 C CNN
	1    5600 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1100 5600 1100
Connection ~ 5200 1100
Wire Wire Line
	5600 1300 5200 1300
Connection ~ 5200 1300
Text Label 5150 4500 0    50   ~ 0
TDI
Text Label 5150 4600 0    50   ~ 0
TMS
Text Label 5150 4700 0    50   ~ 0
TCK
Text Label 5150 4800 0    50   ~ 0
TDO
Wire Wire Line
	4550 5000 4450 5000
Connection ~ 4450 5000
Text Label 8050 1500 2    50   ~ 0
TDI
Text Label 8050 1200 2    50   ~ 0
TMS
Text Label 8050 1300 2    50   ~ 0
TCK
Text Label 8050 1400 2    50   ~ 0
TDO
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5E9CF95E
P 8250 1200
F 0 "J2" H 8330 1192 50  0000 L CNN
F 1 "JTAG" H 8330 1101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 8250 1200 50  0001 C CNN
F 3 "~" H 8250 1200 50  0001 C CNN
	1    8250 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5E9E2CF6
P 7900 800
F 0 "#PWR027" H 7900 550 50  0001 C CNN
F 1 "GND" H 7905 627 50  0000 C CNN
F 2 "" H 7900 800 50  0001 C CNN
F 3 "" H 7900 800 50  0001 C CNN
	1    7900 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR026
U 1 1 5E9E4160
P 7700 1100
F 0 "#PWR026" H 7700 950 50  0001 C CNN
F 1 "+3.3V" H 7715 1273 50  0000 C CNN
F 2 "" H 7700 1100 50  0001 C CNN
F 3 "" H 7700 1100 50  0001 C CNN
	1    7700 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 800  8050 800 
Wire Wire Line
	8050 800  8050 1000
Wire Wire Line
	8050 1100 7700 1100
Text Notes 7400 6250 0    50   ~ 0
RAM_SIZE :\n- 2MB with single CY62167ELL installed in LOW footprint\n- 4MB with two CY62167ELL or one CY62177ESL in LOW footprint\n\nCHIP SIZE :\n- With CY62167ELL connect CE_LOW. A21 is not used.\n- May use one single CY62177ESL in the LOW footprint :\nconnect CE_SINGLE to cover full expansion range. A21 is used here.\n\nDISK/RAM :\nChanges the way it is signaled to te host through CIS : see original Sakura CPLD code
Text Label 6300 4150 2    50   ~ 0
CE_SINGLE
Text Notes 6150 4800 0    50   ~ 0
2MB
Text Notes 6150 4050 0    50   ~ 0
4MB
Wire Wire Line
	6300 4150 6350 4150
Wire Wire Line
	6350 4150 6350 4200
Wire Wire Line
	6350 4600 6350 4650
Wire Wire Line
	6350 4650 6300 4650
Text Label 3750 2800 2    50   ~ 0
CE_SINGLE
Wire Wire Line
	6500 4400 6850 4400
Text Label 5150 3600 0    50   ~ 0
RAM_SIZE
Text Label 5950 5850 0    50   ~ 0
RAM_SIZE
$Comp
L power:GND #PWR025
U 1 1 5EA15ECB
P 5800 6050
F 0 "#PWR025" H 5800 5800 50  0001 C CNN
F 1 "GND" H 5805 5877 50  0000 C CNN
F 2 "" H 5800 6050 50  0001 C CNN
F 3 "" H 5800 6050 50  0001 C CNN
	1    5800 6050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR024
U 1 1 5EA164DC
P 5800 5650
F 0 "#PWR024" H 5800 5500 50  0001 C CNN
F 1 "+3.3V" H 5815 5823 50  0000 C CNN
F 2 "" H 5800 5650 50  0001 C CNN
F 3 "" H 5800 5650 50  0001 C CNN
	1    5800 5650
	1    0    0    -1  
$EndComp
Text Notes 5500 5650 0    50   ~ 0
2MB
Text Notes 5500 6100 0    50   ~ 0
4MB
$Comp
L Jumper:SolderJumper_2_Bridged JP2
U 1 1 5EA351D7
P 5450 7000
F 0 "JP2" H 5450 7205 50  0000 C CNN
F 1 "D15 direct" H 5450 7114 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 5450 7000 50  0001 C CNN
F 3 "~" H 5450 7000 50  0001 C CNN
	1    5450 7000
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 5EA362F2
P 5800 7250
F 0 "JP3" V 5754 7318 50  0000 L CNN
F 1 "D15 A0" V 5845 7318 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5800 7250 50  0001 C CNN
F 3 "~" H 5800 7250 50  0001 C CNN
	1    5800 7250
	0    1    1    0   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5EA3899D
P 5100 7250
F 0 "JP1" V 5054 7318 50  0000 L CNN
F 1 "D15 pcmcia" V 5145 7318 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5100 7250 50  0001 C CNN
F 3 "~" H 5100 7250 50  0001 C CNN
	1    5100 7250
	0    1    1    0   
$EndComp
Text Label 5100 7000 2    50   ~ 0
D15
Text Label 5800 7000 0    50   ~ 0
D15_A0
Text Label 5800 7500 0    50   ~ 0
D15_A0_A
Text Label 5100 7500 2    50   ~ 0
D15_A
Wire Wire Line
	5300 7000 5100 7000
Wire Wire Line
	5100 7000 5100 7100
Wire Wire Line
	5100 7400 5100 7500
Wire Wire Line
	5800 7000 5600 7000
Wire Wire Line
	5800 7000 5800 7100
Wire Wire Line
	5800 7400 5800 7500
Text Label 5150 2900 0    50   ~ 0
_OE
Text Label 5150 2500 0    50   ~ 0
_WE
Text Label 6950 5850 0    50   ~ 0
DISK_RAM
$Comp
L power:GND #PWR029
U 1 1 5EA84DF8
P 6800 6050
F 0 "#PWR029" H 6800 5800 50  0001 C CNN
F 1 "GND" H 6805 5877 50  0000 C CNN
F 2 "" H 6800 6050 50  0001 C CNN
F 3 "" H 6800 6050 50  0001 C CNN
	1    6800 6050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR028
U 1 1 5EA84E02
P 6800 5650
F 0 "#PWR028" H 6800 5500 50  0001 C CNN
F 1 "+3.3V" H 6815 5823 50  0000 C CNN
F 2 "" H 6800 5650 50  0001 C CNN
F 3 "" H 6800 5650 50  0001 C CNN
	1    6800 5650
	1    0    0    -1  
$EndComp
Text Notes 6500 5650 0    50   ~ 0
RAM
Text Notes 6500 6100 0    50   ~ 0
DISK
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5EB6A91D
P 2550 5400
F 0 "#FLG0101" H 2550 5475 50  0001 C CNN
F 1 "PWR_FLAG" H 2550 5573 50  0000 C CNN
F 2 "" H 2550 5400 50  0001 C CNN
F 3 "~" H 2550 5400 50  0001 C CNN
	1    2550 5400
	-1   0    0    1   
$EndComp
Connection ~ 2550 5400
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5EB6B5EA
P 2800 3700
F 0 "#FLG0102" H 2800 3775 50  0001 C CNN
F 1 "PWR_FLAG" V 2800 3828 50  0000 L CNN
F 2 "" H 2800 3700 50  0001 C CNN
F 3 "~" H 2800 3700 50  0001 C CNN
	1    2800 3700
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5EB7A220
P 2800 3700
F 0 "#PWR0101" H 2800 3550 50  0001 C CNN
F 1 "+5V" H 2815 3873 50  0000 C CNN
F 2 "" H 2800 3700 50  0001 C CNN
F 3 "" H 2800 3700 50  0001 C CNN
	1    2800 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3700 2800 3700
Connection ~ 2800 3700
$Comp
L Sassa:CY62177ESL-55ZXI U3
U 1 1 5EB8A078
P 7450 3500
F 0 "U3" H 7100 4850 50  0000 C CNN
F 1 "CY62177ESL-55ZXI" H 7000 4750 50  0000 C CNN
F 2 "Package_SO:TSOP-I-48_18.4x12mm_P0.5mm" H 8500 2050 50  0001 C CNN
F 3 "https://www.cypress.com/part/cy62177esl-55zxi" H 7150 3950 50  0001 C CNN
	1    7450 3500
	1    0    0    -1  
$EndComp
Connection ~ 7350 5000
Text Label 5150 3700 0    50   ~ 0
DISK_RAM
Text Label 8800 3700 2    50   ~ 0
D0
Text Label 8800 3800 2    50   ~ 0
D1
Text Label 8800 3900 2    50   ~ 0
D2
Text Label 8800 3300 2    50   ~ 0
D3
Text Label 8800 3400 2    50   ~ 0
D4
Text Label 8800 3500 2    50   ~ 0
D5
Text Label 8800 3600 2    50   ~ 0
D6
Text Label 8800 3200 2    50   ~ 0
D7
Text Label 8800 2900 2    50   ~ 0
D8
Text Label 8800 3000 2    50   ~ 0
D9
Text Label 8800 3100 2    50   ~ 0
D10
Text Label 8800 2500 2    50   ~ 0
D11
Text Label 8800 2600 2    50   ~ 0
D12
Text Label 8800 2700 2    50   ~ 0
D13
Text Label 8800 2800 2    50   ~ 0
D14
Text Label 10000 4200 0    50   ~ 0
A1
Text Label 10000 4100 0    50   ~ 0
A2
Text Label 10000 4000 0    50   ~ 0
A3
Text Label 10000 3900 0    50   ~ 0
A4
Text Label 10000 3800 0    50   ~ 0
A5
Text Label 10000 4300 0    50   ~ 0
A6
Text Label 10000 3700 0    50   ~ 0
A7
Text Label 10000 3100 0    50   ~ 0
A8
Text Label 10000 2900 0    50   ~ 0
A9
Text Label 10000 2700 0    50   ~ 0
A10
Text Label 10000 2800 0    50   ~ 0
A11
Text Label 10000 3600 0    50   ~ 0
A12
Text Label 10000 3300 0    50   ~ 0
A13
Text Label 10000 3500 0    50   ~ 0
A14
Text Label 10000 2600 0    50   ~ 0
A15
Text Label 10000 2500 0    50   ~ 0
A16
Text Label 10000 3000 0    50   ~ 0
A17
Text Label 10000 3200 0    50   ~ 0
A18
Text Label 10000 3400 0    50   ~ 0
A19
Text Label 10000 2400 0    50   ~ 0
A20
Text Label 6500 7300 2    50   ~ 0
_BYTE
$Comp
L power:+5V #PWR08
U 1 1 5EAB85F0
P 6650 7100
F 0 "#PWR08" H 6650 6950 50  0001 C CNN
F 1 "+5V" H 6665 7273 50  0000 C CNN
F 2 "" H 6650 7100 50  0001 C CNN
F 3 "" H 6650 7100 50  0001 C CNN
	1    6650 7100
	1    0    0    -1  
$EndComp
Text Label 6650 7500 2    50   ~ 0
_BYTE_A
$Comp
L Jumper:SolderJumper_3_Bridged12 JP6
U 1 1 5EA8B6F4
P 6800 5850
F 0 "JP6" V 6754 5918 50  0000 L CNN
F 1 "DISK/RAM" V 6845 5918 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged12_RoundedPad1.0x1.5mm" H 6800 5850 50  0001 C CNN
F 3 "~" H 6800 5850 50  0001 C CNN
	1    6800 5850
	0    -1   1    0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Bridged12 JP4
U 1 1 5EA8C6FE
P 5800 5850
F 0 "JP4" V 5846 5918 50  0000 L CNN
F 1 "RAM SIZE" V 5755 5918 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged12_RoundedPad1.0x1.5mm" H 5800 5850 50  0001 C CNN
F 3 "~" H 5800 5850 50  0001 C CNN
	1    5800 5850
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Bridged12 JP5
U 1 1 5EACE8E3
P 6350 4400
F 0 "JP5" V 6396 4467 50  0000 L CNN
F 1 "CHIP SIZE" V 6305 4467 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged12_RoundedPad1.0x1.5mm" H 6350 4400 50  0001 C CNN
F 3 "~" H 6350 4400 50  0001 C CNN
	1    6350 4400
	0    -1   -1   0   
$EndComp
NoConn ~ 3750 3900
NoConn ~ 3750 4000
NoConn ~ 5150 3500
NoConn ~ 5150 3800
NoConn ~ 5150 3900
NoConn ~ 5150 4000
Wire Notes Line
	6950 6450 6950 7750
Wire Notes Line
	6950 7750 500  7750
Wire Notes Line
	500  7750 500  6450
Wire Notes Line
	500  6450 6950 6450
Text Notes 4250 1800 0    50   ~ 0
CPLD logic
Text Notes 8700 1250 0    50   ~ 0
CPLD programming
Text Notes 550  7650 0    50   ~ 0
Odd-byte-low feature:\nThe PCMCIA 8bit feature, which makes the "Odd byte" available on D7:D0, is not necessary for Amiga computers.\n- To bypass the 8bit feature, close "D15 direct", open the two other links, and tie _BYTE to 5V. This is the default.\n\nFor other systems:\nNot sure if dynamically changing the BYTE# signal will work, and if the IO15_Axx signal will effectively select\nthe correct bytes. According to Cypress this should not work : https://community.cypress.com/message/231471\n- To try the workaround, open "D15 direct" and close the other links, and connect _BYTE to the CPLD\nWhen processed by the CPLD :\n- In 8 bit mode (_CE1=0 & _CE2=1 & A0=1), _BYTE=0, D15_A0=1, and D15=Z\n- In 16 bit mode,\n    - _BYTE=1,\n    - D15 is output to D15_A0 when _WE=0,\n    - D15_A0 is output to D15 when _OE=0 & CE_SINGLE=1 & _CE2=0
$Comp
L Mechanical:Fiducial FID1
U 1 1 5EB454F8
P 10800 6400
F 0 "FID1" H 10885 6446 50  0000 L CNN
F 1 "License" H 10885 6355 50  0000 L CNN
F 2 "Sassa:CC_BY_SA_long_silkscreen_14x5.5mm" H 10800 6400 50  0001 C CNN
F 3 "~" H 10800 6400 50  0001 C CNN
	1    10800 6400
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Bridged12 JP7
U 1 1 5E9C4B12
P 6650 7300
F 0 "JP7" V 6696 7368 50  0000 L CNN
F 1 "_BYTE" V 6605 7368 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged12_RoundedPad1.0x1.5mm" H 6650 7300 50  0001 C CNN
F 3 "~" H 6650 7300 50  0001 C CNN
	1    6650 7300
	0    1    1    0   
$EndComp
$EndSCHEMATC
